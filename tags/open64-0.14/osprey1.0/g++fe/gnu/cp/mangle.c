/* Name mangling for the new standard C++ ABI.
   Copyright (C) 2000 Free Software Foundation, Inc.
   Written by Alex Samuel <sameul@codesourcery.com>

   This file is part of GNU CC.

   GNU CC is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   GNU CC is distributed in the hope that it will be useful, but
   WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GNU CC; see the file COPYING.  If not, write to the Free
   Software Foundation, 59 Temple Place - Suite 330, Boston, MA
   02111-1307, USA.  */

/* This file implements mangling of C++ names according to the IA64
   C++ ABI specification.  A mangled name encodes a function or
   variable's name, scope, type, and/or template arguments into a text
   identifier.  This identifier is used as the function's or
   variable's linkage name, to preserve compatibility between C++'s
   language features (templates, scoping, and overloading) and C
   linkers.

   Additionally, g++ uses mangled names internally.  To support this,
   mangling of types is allowed, even though the mangled name of a
   type should not appear by itself as an exported name.  Ditto for
   uninstantiated templates.

   The primary entry point for this module is mangle_decl, which
   returns an identifier containing the mangled name for a decl.
   Additional entry points are provided to build mangled names of
   particular constructs when the appropriate decl for that construct
   is not available.  These are:

     mangle_typeinfo_for_type:        typeinfo data
     mangle_typeinfo_string_for_type: typeinfo type name
     mangle_vtbl_for_type:            virtual table data
     mangle_vtt_for_type:             VTT data
     mangle_ctor_vtbl_for_type:       `C-in-B' constructor virtual table data
     mangle_thunk:                    thunk function or entry

*/

#include "config.h"
#include "system.h"
#include "tree.h"
#include "cp-tree.h"
#include "obstack.h"
#include "toplev.h"
#include "varray.h"

/* Debugging support.  */

/* Define DEBUG_MANGLE to enable very verbose trace messages.  */
#ifndef DEBUG_MANGLE
#define DEBUG_MANGLE 0
#endif

/* Macros for tracing the write_* functions.  */
#if DEBUG_MANGLE
# define MANGLE_TRACE(FN, INPUT) \
  fprintf (stderr, "  %-24s: %-24s\n", FN, INPUT)
# define MANGLE_TRACE_TREE(FN, NODE) \
  fprintf (stderr, "  %-24s: %-24s (%p)\n", \
           FN, tree_code_name[TREE_CODE (NODE)], (void *) NODE)
#else
# define MANGLE_TRACE(FN, INPUT)
# define MANGLE_TRACE_TREE(FN, NODE)
#endif

/* Non-zero if NODE is a template-id.  */
#define DECL_TEMPLATE_ID_P(NODE)				\
  (DECL_LANG_SPECIFIC (NODE) != NULL 				\
   && DECL_USE_TEMPLATE (NODE)					\
   && PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (NODE)))

/* Non-zero if NODE is a class template-id.  */
#define CLASSTYPE_TEMPLATE_ID_P(NODE)				\
  (TYPE_LANG_SPECIFIC (NODE) != NULL 				\
   && CLASSTYPE_USE_TEMPLATE (NODE)				\
   && PRIMARY_TEMPLATE_P (CLASSTYPE_TI_TEMPLATE (NODE)))

/* Things we only need one of.  This module is not reentrant.  */
static struct globals
{
  /* The name in which we're building the mangled name.  */
  struct obstack name_obstack;

  /* The current innermost template args.  */
  tree template_args;

  /* An array of the current substitution candidates, in the order
     we've seen them.  */
  varray_type substitutions;
} G;

/* Indices into subst_identifiers.  These are identifiers used in
   special substitution rules.  */
typedef enum
{
  SUBID_ALLOCATOR,
  SUBID_BASIC_STRING,
  SUBID_CHAR_TRAITS,
  SUBID_BASIC_ISTREAM,
  SUBID_BASIC_OSTREAM,
  SUBID_BASIC_IOSTREAM,
  SUBID_MAX
}
substitution_identifier_index_t;

/* For quick substitution checks, look up these common identifiers
   once only.  */
static tree subst_identifiers[SUBID_MAX];

/* Single-letter codes for builtin integer types, defined in
   <builtin-type>.  These are indexed by integer_type_kind values.  */
static char
integer_type_codes[itk_none] =
{
  'c',  /* itk_char */
  'a',  /* itk_signed_char */
  'h',  /* itk_unsigned_char */
  's',  /* itk_short */
  't',  /* itk_unsigned_short */
  'i',  /* itk_int */
  'j',  /* itk_unsigned_int */
  'l',  /* itk_long */
  'm',  /* itk_unsigned_long */
  'x',  /* itk_long_long */
  'y'   /* itk_unsigned_long_long */
};

/* Functions for handling substitutions.  */

static inline tree canonicalize_for_substitution PARAMS ((tree));
static void add_substitution PARAMS ((tree));
static inline int is_std_substitution PARAMS ((tree, substitution_identifier_index_t));
static inline int is_std_substitution_char PARAMS ((tree, substitution_identifier_index_t));
static int find_substitution PARAMS ((tree));

/* Functions for emitting mangled representations of things.  */

static void write_mangled_name PARAMS ((tree));
static void write_encoding PARAMS ((tree));
static void write_name PARAMS ((tree));
static void write_unscoped_name PARAMS ((tree));
static void write_unscoped_template_name PARAMS ((tree));
static void write_nested_name PARAMS ((tree));
static void write_prefix PARAMS ((tree));
static void write_template_prefix PARAMS ((tree));
static void write_component PARAMS ((tree));
static void write_unqualified_name PARAMS ((tree));
static void write_source_name PARAMS ((tree));
static void write_number PARAMS ((int, int));
static void write_integer_cst PARAMS ((tree));
static void write_identifier PARAMS ((char *));
static void write_special_name_constructor PARAMS ((tree));
static void write_special_name_destructor PARAMS ((tree));
static void write_type PARAMS ((tree));
static int write_CV_qualifiers_for_type PARAMS ((tree));
static void write_builtin_type PARAMS ((tree));
static void write_function_type PARAMS ((tree, int));
static void write_bare_function_type PARAMS ((tree, int));
static void write_method_parms PARAMS ((tree, int));
static void write_class_enum_type PARAMS ((tree));
static void write_template_args PARAMS ((tree));
static void write_expression PARAMS ((tree));
static void write_template_arg_literal PARAMS ((tree));
static void write_template_arg PARAMS ((tree));
static void write_template_template_arg PARAMS ((tree));
static void write_array_type PARAMS ((tree));
static void write_pointer_to_member_type PARAMS ((tree));
static void write_template_param PARAMS ((tree));
static void write_template_template_param PARAMS ((tree));
static void write_substitution PARAMS ((int));
static int discriminator_for_local_entity PARAMS ((tree));
static int discriminator_for_string_literal PARAMS ((tree, tree));
static void write_discriminator PARAMS ((int));
static void write_local_name PARAMS ((tree, tree));
static void dump_substitution_candidates PARAMS ((void));
static const char *mangle_decl_string PARAMS ((tree));

/* Control functions.  */

static inline void start_mangling PARAMS ((void));
static inline const char *finish_mangling PARAMS ((void));
static tree mangle_special_for_type PARAMS ((tree, const char *));

/* Append a single character to the end of the mangled
   representation.  */
#define write_char(CHAR)                                              \
  obstack_1grow (&G.name_obstack, (CHAR))

/* Append a NUL-terminated string to the end of the mangled
   representation.  */
#define write_string(STRING)                                          \
  obstack_grow (&G.name_obstack, (STRING), strlen (STRING))

/* Return the position at which the next character will be appended to
   the mangled representation.  */
#define mangled_position()                                              \
  obstack_object_size (&G.name_obstack)

/* Non-zero if NODE1__ and NODE2__ are both TREE_LIST nodes and have
   the same purpose (context, which may be a type) and value (template
   decl).  See write_template_prefix for more information on what this
   is used for.  */
#define NESTED_TEMPLATE_MATCH(NODE1, NODE2)                         \
  (TREE_CODE (NODE1) == TREE_LIST                                     \
   && TREE_CODE (NODE2) == TREE_LIST                                  \
   && ((TYPE_P (TREE_PURPOSE (NODE1))                                 \
        && same_type_p (TREE_PURPOSE (NODE1), TREE_PURPOSE (NODE2)))\
       || TREE_PURPOSE (NODE1) == TREE_PURPOSE (NODE2))             \
   && TREE_VALUE (NODE1) == TREE_VALUE (NODE2))

/* Produce debugging output of current substitution candidates.  */

static void
dump_substitution_candidates ()
{
  unsigned i;

  fprintf (stderr, "  ++ substitutions  ");
  for (i = 0; i < VARRAY_ACTIVE_SIZE (G.substitutions); ++i)
    {
      tree el = VARRAY_TREE (G.substitutions, i);
      const char *name = "???";

      if (i > 0)
	fprintf (stderr, "                    ");
      if (DECL_P (el))
	name = IDENTIFIER_POINTER (DECL_NAME (el));
      else if (TREE_CODE (el) == TREE_LIST)
	name = IDENTIFIER_POINTER (DECL_NAME (TREE_VALUE (el)));
      else if (TYPE_NAME (el))
	name = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (el)));
      fprintf (stderr, " S%d_ = ", i - 1);
      if (TYPE_P (el) && 
	  (CP_TYPE_RESTRICT_P (el) 
	   || CP_TYPE_VOLATILE_P (el) 
	   || CP_TYPE_CONST_P (el)))
	fprintf (stderr, "CV-");
      fprintf (stderr, "%s (%s at %p)\n", 
	       name, tree_code_name[TREE_CODE (el)], (void *) el);
    }
}

/* Both decls and types can be substitution candidates, but sometimes
   they refer to the same thing.  For instance, a TYPE_DECL and
   RECORD_TYPE for the same class refer to the same thing, and should
   be treated accordinginly in substitutions.  This function returns a
   canonicalized tree node representing NODE that is used when adding
   and substitution candidates and finding matches.  */

static inline tree
canonicalize_for_substitution (node)
     tree node;
{
  /* For a TYPE_DECL, use the type instead.  */
  if (TREE_CODE (node) == TYPE_DECL)
    node = TREE_TYPE (node);

  return node;
}

/* Add NODE as a substitution candidate.  NODE must not already be on
   the list of candidates.  */

static void
add_substitution (node)
     tree node;
{
  tree c;

  if (DEBUG_MANGLE)
    fprintf (stderr, "  ++ add_substitution (%s at %10p)\n", 
	     tree_code_name[TREE_CODE (node)], (void *) node);

  /* Get the canonicalized substitution candidate for NODE.  */
  c = canonicalize_for_substitution (node);
  if (DEBUG_MANGLE && c != node)
    fprintf (stderr, "  ++ using candidate (%s at %10p)\n",
	     tree_code_name[TREE_CODE (node)], (void *) node);
  node = c;

#if ENABLE_CHECKING
  /* Make sure NODE isn't already a candidate.  */
  {
    int i;
    for (i = VARRAY_ACTIVE_SIZE (G.substitutions); --i >= 0; )
      {
	tree candidate = VARRAY_TREE (G.substitutions, i);
	if ((DECL_P (node) 
	     && node == candidate)
	    || (TYPE_P (node) 
		&& TYPE_P (candidate) 
		&& same_type_p (node, candidate)))
	  my_friendly_abort (20000524);
      }
  }
#endif /* ENABLE_CHECKING */

  /* Put the decl onto the varray of substitution candidates.  */
  VARRAY_PUSH_TREE (G.substitutions, node);

  if (DEBUG_MANGLE)
    dump_substitution_candidates ();
}

/* Helper function for find_substitution.  Returns non-zero if NODE,
   which may be a decl or a CLASS_TYPE, is a template-id with template
   name of substitution_index[INDEX] in the ::std namespace.  */

static inline int 
is_std_substitution (node, index)
     tree node;
     substitution_identifier_index_t index;
{
  tree type = NULL;
  tree decl = NULL;

  if (DECL_P (node))
    {
      type = TREE_TYPE (node);
      decl = node;
    }
  else if (CLASS_TYPE_P (node))
    {
      type = node;
      decl = TYPE_NAME (node);
    }
  else 
    /* These are not the droids you're looking for.  */
    return 0;

  return 
    DECL_NAMESPACE_STD_P (CP_DECL_CONTEXT (decl))
    && TYPE_LANG_SPECIFIC (type) 
    && CLASSTYPE_USE_TEMPLATE (type)
    && (DECL_NAME (CLASSTYPE_TI_TEMPLATE (type)) 
	== subst_identifiers[index]);
}

/* Helper function for find_substitution.  Returns non-zero if NODE,
   which may be a decl or a CLASS_TYPE, is the template-id
   ::std::identifier<char>, where identifier is
   substitution_index[INDEX].  */

static inline int
is_std_substitution_char (node, index)
     tree node;
     substitution_identifier_index_t index;
{
  tree args;
  /* Check NODE's name is ::std::identifier.  */
  if (!is_std_substitution (node, index))
    return 0;
  /* Figure out its template args.  */
  if (DECL_P (node))
    args = DECL_TI_ARGS (node);  
  else if (CLASS_TYPE_P (node))
    args = CLASSTYPE_TI_ARGS (node);
  else
    /* Oops, not a template.  */
    return 0;
  /* NODE's template arg list should be <char>.  */
  return 
    TREE_VEC_LENGTH (args) == 1
    && TREE_VEC_ELT (args, 0) == char_type_node;
}

/* Check whether a substitution should be used to represent NODE in
   the mangling.

   First, check standard special-case substitutions.

     <substitution> ::= St     
         # ::std

                    ::= Sa     
	 # ::std::allocator

                    ::= Sb     
         # ::std::basic_string

                    ::= Ss 
         # ::std::basic_string<char,
			       ::std::char_traits<char>,
			       ::std::allocator<char> >

                    ::= Si 
         # ::std::basic_istream<char, ::std::char_traits<char> >

                    ::= So 
         # ::std::basic_ostream<char, ::std::char_traits<char> >

                    ::= Sd 
         # ::std::basic_iostream<char, ::std::char_traits<char> >   

   Then examine the stack of currently available substitution
   candidates for entities appearing earlier in the same mangling

   If a substitution is found, write its mangled representation and
   return non-zero.  If none is found, just return zero.  */

static int
find_substitution (node)
     tree node;
{
  int i;
  int size = VARRAY_ACTIVE_SIZE (G.substitutions);
  tree decl;
  tree type;

  if (DEBUG_MANGLE)
    fprintf (stderr, "  ++ find_substitution (%s at %p)\n",
	     tree_code_name[TREE_CODE (node)], (void *) node);

  /* Obtain the canonicalized substitution representation for NODE.
     This is what we'll compare against.  */
  node = canonicalize_for_substitution (node);

  /* Check for builtin substitutions.  */

  decl = TYPE_P (node) ? TYPE_NAME (node) : node;
  type = TYPE_P (node) ? node : TREE_TYPE (node);

  /* Check for std::allocator.  */
  if (decl && is_std_substitution (decl, SUBID_ALLOCATOR))
    {
      write_string ("Sa");
      return 1;
    }

  /* Check for std::basic_string.  */
  if (decl && is_std_substitution (decl, SUBID_BASIC_STRING))
    {
      if (type)
	{
	  /* If this is a type (i.e. a fully-qualified template-id), 
	     check for 
  	         std::basic_string <char,
		 		    std::char_traits<char>,
				    std::allocator<char> > .  */
	  if (CP_TYPE_QUALS (type) == TYPE_UNQUALIFIED
	      && CLASSTYPE_USE_TEMPLATE (type))
	    {
	      tree args = CLASSTYPE_TI_ARGS (type);
	      if (TREE_VEC_LENGTH (args) == 3
		  && TREE_VEC_ELT (args, 0) == char_type_node
		  && is_std_substitution_char (TREE_VEC_ELT (args, 1),
					       SUBID_CHAR_TRAITS)
		  && is_std_substitution_char (TREE_VEC_ELT (args, 2),
					       SUBID_ALLOCATOR))
		{
		  write_string ("Ss");
		  return 1;
		}
	    }
	}
      else
	/* Substitute for the template name only if this isn't a type.  */
	{
	  write_string ("Sb");
	  return 1;
	}
    }

  /* Check for basic_{i,o,io}stream.  */
  if (type
      && CP_TYPE_QUALS (type) == TYPE_UNQUALIFIED
      && CLASS_TYPE_P (type)
      && CLASSTYPE_USE_TEMPLATE (type)
      && CLASSTYPE_TEMPLATE_INFO (type) != NULL)
    {
      /* First, check for the template 
	 args <char, std::char_traits<char> > .  */
      tree args = CLASSTYPE_TI_ARGS (type);
      if (TREE_VEC_LENGTH (args) == 2
	  && TREE_VEC_ELT (args, 0) == char_type_node
	  && is_std_substitution_char (TREE_VEC_ELT (args, 1),
				       SUBID_CHAR_TRAITS))
	{
	  /* Got them.  Is this basic_istream?  */
	  tree name = DECL_NAME (CLASSTYPE_TI_TEMPLATE (type));
	  if (name == subst_identifiers[SUBID_BASIC_ISTREAM])
	    {
	      write_string ("Si");
	      return 1;
	    }
	  /* Or basic_ostream?  */
	  else if (name == subst_identifiers[SUBID_BASIC_OSTREAM])
	    {
	      write_string ("So");
	      return 1;
	    }
	  /* Or basic_iostream?  */
	  else if (name == subst_identifiers[SUBID_BASIC_IOSTREAM])
	    {
	      write_string ("Sd");
	      return 1;
	    }
	}
    }

  /* Check for namespace std.  */
  if (decl&& DECL_NAMESPACE_STD_P (decl))
    {
      write_string ("St");
      return 1;
    }

  /* Now check the list of available substitutions for this mangling
     operation.    */

  for (i = 0; i < size; ++i)
    {
      tree candidate = VARRAY_TREE (G.substitutions, i);
      /* NODE is a matched to a candidate if it's the same decl node or
	 if it's the same type.  */
      if (decl == candidate
	  || (TYPE_P (candidate) && type && TYPE_P (type)
	      && same_type_p (type, candidate))
	  || NESTED_TEMPLATE_MATCH (node, candidate))
	{
	  write_substitution (i);
	  return 1;
	}
    }

  /* No substitution found.  */
  return 0;
}


/*  <mangled-name>      ::= _Z <encoding>  */

static inline void
write_mangled_name (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("mangled-name", decl);

  if (DECL_LANG_SPECIFIC (decl) && DECL_EXTERN_C_FUNCTION_P (decl))
    /* The standard notes:
         "The <encoding> of an extern "C" function is treated like
	 global-scope data, i.e. as its <source-name> without a type."  */
    write_source_name (DECL_NAME (decl));
  else
    /* C++ name; needs to be mangled.  */
    {
      write_string ("_Z");
      write_encoding (decl);
    }
}

/*   <encoding>		::= <function name> <bare-function-type>
			::= <data name>
			::= <substitution>  */

static void
write_encoding (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("encoding", decl);

  if (find_substitution (decl))
    return;

  if (DECL_LANG_SPECIFIC (decl) && DECL_EXTERN_C_FUNCTION_P (decl))
    {
      write_source_name (DECL_NAME (decl));
      return;
    }

  write_name (decl);
  if (TREE_CODE (decl) == FUNCTION_DECL)
    {
      tree fn_type;

      if (DECL_TEMPLATE_ID_P (decl))
	fn_type = get_mostly_instantiated_function_type (decl, NULL, NULL);
      else
	fn_type = TREE_TYPE (decl);

      write_bare_function_type (fn_type, DECL_TEMPLATE_ID_P (decl));
    }

  add_substitution (decl);
}

/* <name> ::= <unscoped-name>
          ::= <unscoped-template-name> <template-args>
	  ::= <nested-name>
	  ::= <local-name>  */

static void
write_name (decl)
     tree decl;
{
  tree context = CP_DECL_CONTEXT (decl);

  MANGLE_TRACE_TREE ("name", decl);

  /* Decls in :: or ::std scope are treated specially.  */
  if (context == global_namespace || DECL_NAMESPACE_STD_P (context))
    {
      if (decl && DECL_TEMPLATE_ID_P (decl))
	{
	  /* Templated decls get an <unqualified-template-name>.  */
	  write_unscoped_template_name (DECL_TI_TEMPLATE (decl));
	  write_template_args (DECL_TI_ARGS (decl));
	}
      else if (TREE_CODE (decl) == TYPE_DECL 
	       && CLASSTYPE_TEMPLATE_ID_P (TREE_TYPE (decl)))
	{
	  tree type;

	  /* Templated decls get an <unqualified-template-name>.  */
	  type = TREE_TYPE (decl);
	  write_unscoped_template_name (TYPE_TI_TEMPLATE (type));
	  write_template_args (TYPE_TI_ARGS (type));
	}
      else
	/* Everything else gets an <unqualified-name>.  */
	write_unscoped_name (decl);
    }
  /* Handle local names.  */
  else if (TREE_CODE (context) == FUNCTION_DECL)
    write_local_name (context, decl);
  /* Other decls get a <nested-name> to encode their scope.  */
  else
    write_nested_name (decl);
}

/* <unscoped-name> ::= <unqualified-name>
                   ::= St <unqualified-name>   # ::std::  */

static void
write_unscoped_name (decl)
     tree decl;
{
  tree context = CP_DECL_CONTEXT (decl);

  MANGLE_TRACE_TREE ("unscoped-name", decl);

  /* Is DECL in ::std?  */
  if (DECL_NAMESPACE_STD_P (context))
    {
      write_string ("St");
      write_unqualified_name (decl);
    }
  /* If not, it should be in the global namespace.  */
  else if (context == global_namespace || context == NULL)
    write_unqualified_name (decl);
  else 
    my_friendly_abort (20000521);
}

/* <unscoped-template-name> ::= <unscoped-name>
                            ::= <substitution>  */

static void
write_unscoped_template_name (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("unscoped-template-name", decl);

  if (find_substitution (decl))
    return;
  write_unscoped_name (decl);
  add_substitution (decl);
}

/* Write the nested name, including CV-qualifiers, of DECL.

   <nested-name> ::= N [<CV-qualifiers>] <prefix> <component> E  
                 ::= N [<CV-qualifiers>] <template-prefix> <template-args> E

   <CV-qualifiers> ::= [r] [V] [K]  */

static void
write_nested_name (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("nested-name", decl);

  write_char ('N');
  
  /* Write CV-qualifiers, if this is a member function.  */
  if (TREE_CODE (decl) == FUNCTION_DECL 
      && DECL_NONSTATIC_MEMBER_FUNCTION_P (decl))
    {
      if (DECL_VOLATILE_MEMFUNC_P (decl))
	write_char ('V');
      if (DECL_CONST_MEMFUNC_P (decl))
	write_char ('K');
    }

  if (DECL_TEMPLATE_ID_P (decl))
    {
      write_template_prefix (decl);
      write_template_args (DECL_TI_ARGS (decl));
    }
  else if (CLASSTYPE_TEMPLATE_ID_P (TREE_TYPE (decl)))
    {
      write_template_prefix (decl);
      write_template_args (CLASSTYPE_TI_ARGS (TREE_TYPE (decl)));
    }
  else
    {
      write_prefix (DECL_CONTEXT (decl));
      write_component (decl);
    }
  write_char ('E');
}

/* <prefix> ::= <prefix> <component>
            ::= <template-prefix> <template-args>
	    ::= # empty
	    ::= <substitution>  */

static void
write_prefix (node)
     tree node;
{
  tree decl;
  tree type;
  tree context;

  if (node == NULL
      || node == global_namespace)
    return;

  MANGLE_TRACE_TREE ("prefix", node);

  decl = DECL_P (node) ? node : TYPE_NAME (node);
  type = DECL_P (node) ? TREE_TYPE (node) : node;
  context = CP_DECL_CONTEXT (decl);

  if (find_substitution (node))
    return;

  /* Check if this is a template-id.  For a template member, the
     template info will be hanging off the decl.  */
  if (DECL_TEMPLATE_ID_P (decl))
    {
      write_template_prefix (decl);
      write_template_args (DECL_TI_ARGS (decl));
    }
  /* For a template class, the template info will be hanging off the
     type.  */
  else if (type && CLASSTYPE_TEMPLATE_ID_P (type))
    {
      write_template_prefix (type);
      write_template_args (CLASSTYPE_TI_ARGS (type));
    }
  else
    /* Not templated.  */
    {
      write_prefix (context);
      write_component (decl);
    }

  add_substitution (node);
}

/* <template-prefix> ::= <prefix> <template component>
                     ::= <substitution>  

   Names of templates are substitution candidates.  For a nested
   template, though, the template name for the innermost name must
   have all the outer template levels instantiated.  For instance,
   consider

     template<typename T> struct Outer
     {
       template<typename U> struct Inner {};
     };

   The template name for `Inner' in `Outer<int>::Inner<float>' is
   `Outer<int>::Inner<U>'.  In g++, we don't instantiate the template
   levels separately, so there's no TEMPLATE_DECL available for this
   (there's only `Outer<T>::Inner<U>').

   In order to get the substitutions right, we create a special
   TREE_LIST to represent the substitution candidate for a nested
   template.  The TREE_PURPOSE is the tempate's context, fully
   instantiated, and the TREE_VALUE is the TEMPLATE_DECL for the inner
   template.  

   So, for the example above, `Inner' is represented as a substitution
   candidate by a TREE_LIST whose purpose is `Outer<int>' and whose
   value is `Outer<T>::Inner<U>'.  */

static void
write_template_prefix (node)
     tree node;
{
  tree decl = DECL_P (node) ? node : TYPE_NAME (node);
  tree type = DECL_P (node) ? TREE_TYPE (node) : node;
  tree context = CP_DECL_CONTEXT (decl);
  tree template;
  tree substitution;

  MANGLE_TRACE_TREE ("template-prefix", node);

  /* Find the template decl.  */
  if (DECL_TEMPLATE_ID_P (decl))
    template = DECL_TI_TEMPLATE (decl);
  else if (CLASSTYPE_TEMPLATE_ID_P (type))
    template = CLASSTYPE_TI_TEMPLATE (type);
  else
    /* Oops, not a template.  */
    my_friendly_abort (20000524);

  /* Build the substitution candidate TREE_LIST.  */
  substitution = build_tree_list (context, template);

  if (find_substitution (substitution))
    return;

  write_prefix (context);
  write_component (decl);

  add_substitution (substitution);
}

/* <component> ::= <unqualified-name>
               ::= <local-name> */

static void
write_component (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("component", decl);

  switch (TREE_CODE (decl))
    {
    case TEMPLATE_DECL:
    case NAMESPACE_DECL:
    case VAR_DECL:
    case TYPE_DECL:
    case FUNCTION_DECL:
    case FIELD_DECL:
      if (TREE_CODE (CP_DECL_CONTEXT (decl)) == FUNCTION_DECL)
	write_local_name (CP_DECL_CONTEXT (decl), decl);
      else
	write_unqualified_name (decl);
      break;

    default:
      my_friendly_abort (2000509);
    }
}

/* We don't need to handle thunks, vtables, or VTTs here.  Those are
   mangled through special entry points.  

    <unqualified-name>  ::= <operator-name>
			::= <special-name>  
			::= <source-name>  */

static void
write_unqualified_name (decl)
     tree decl;
{
  MANGLE_TRACE_TREE ("unqualified-name", decl);

  if (DECL_LANG_SPECIFIC (decl) != NULL && DECL_CONSTRUCTOR_P (decl))
    write_special_name_constructor (decl);
  else if (DECL_LANG_SPECIFIC (decl) != NULL && DECL_DESTRUCTOR_P (decl))
    write_special_name_destructor (decl);
  else if (DECL_CONV_FN_P (decl)) 
    {
      /* Conversion operator. Handle it right here.  
           <operator> ::= cv <type>  */
      write_string ("cv");
      write_type (TREE_TYPE (DECL_NAME (decl)));
    }
  else if (DECL_OVERLOADED_OPERATOR_P (decl))
    {
      operator_name_info_t *oni;
      if (DECL_ASSIGNMENT_OPERATOR_P (decl))
	oni = assignment_operator_name_info;
      else
	oni = operator_name_info;
      
      write_string (oni[DECL_OVERLOADED_OPERATOR_P (decl)].mangled_name);
    }
  else
    write_source_name (DECL_NAME (decl));
}

/* Non-termial <source-name>.  IDENTIFIER is an IDENTIFIER_NODE.  

     <source-name> ::= </length/ number> <identifier>  */

static void
write_source_name (identifier)
     tree identifier;
{
  MANGLE_TRACE_TREE ("source-name", identifier);

  /* Never write the whole template-id name including the template
     arguments; we only want the template name.  */
  if (IDENTIFIER_TEMPLATE (identifier))
    identifier = IDENTIFIER_TEMPLATE (identifier);

  write_number (IDENTIFIER_LENGTH (identifier), 10);
  write_identifier (IDENTIFIER_POINTER (identifier));
}

/* Non-terminal <number>.

     <number> ::= [n] </decimal integer/>  */

static void
write_number (number, base)
     int number;
     int base;
{
  static const char digits[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  int n;
  int m = 1;

  if (number < 0)
    {
      write_char ('n');
      number = -number;
    }
  
  n = number;
  while (n >= base)
    {
      n /= base;
      m *= base;
    }

  while (m > 0)
    {
      int digit = number / m;
      write_char (digits[digit]);
      number -= digit * m;
      m /= base;
    }

  my_friendly_assert (number == 0, 20000407);
}

/* Write out an integeral CST in decimal.  */

static inline void
write_integer_cst (cst)
     tree cst;
{
  write_number (tree_low_cst (cst, TREE_UNSIGNED (TREE_TYPE (cst))), 10);
}

/* Non-terminal <identifier>.

     <identifier> ::= </unqualified source code identifier>  */

static void
write_identifier (identifier)
     char *identifier;
{
  MANGLE_TRACE ("identifier", identifier);
  write_string (identifier);
}

/* Handle constructor productions of non-terminal <special-name>.
   CTOR is a constructor FUNCTION_DECL. 

     <special-name> ::= C1   # complete object constructor
                    ::= C2   # base object constructor
                    ::= C3   # complete object allocating constructor
                    ::= C4   # base object allocating constructor  

   Currently, allocating constructors are never used. 

   We also need to provide unique mangled names (which should never be
   exported) for the constructor that takes an in-charge parameter,
   and for a constructor whose name is the same as its class's name.
   We use "C*INTERNAL*" for these.  */

static void
write_special_name_constructor (ctor)
     tree ctor;
{
  if (DECL_COMPLETE_CONSTRUCTOR_P (ctor))
    write_string ("C1");
  else if (DECL_BASE_CONSTRUCTOR_P (ctor))
    write_string ("C2");
  else
    write_string ("C*INTERNAL*");
}

/* Handle destructor productions of non-terminal <special-name>.
   DTOR is a denstructor FUNCTION_DECL. 

     <special-name> ::= D0 # deleting (in-charge) destructor
                    ::= D1 # complete object (in-charge) destructor
                    ::= D2 # base object (not-in-charge) destructor 

   We also need to provide unique mngled names for old-ABI
   destructors, sometimes.  These should only be used internally.  We
   use "D*INTERNAL*" for these.  */

static void
write_special_name_destructor (dtor)
     tree dtor;
{
  if (DECL_DELETING_DESTRUCTOR_P (dtor))
    write_string ("D0");
  else if (DECL_COMPLETE_DESTRUCTOR_P (dtor))
    write_string ("D1");
  else if (DECL_BASE_DESTRUCTOR_P (dtor))
    write_string ("D2");
  else
    /* Old-ABI destructor.   */
    write_string ("D*INTERNAL*");
}

/* Return the discriminator for ENTITY appearing inside
   FUNCTION.  The discriminator is the lexical ordinal of VAR among
   entities with the same name in the same FUNCTION.  */

static int
discriminator_for_local_entity (entity)
     tree entity;
{
  tree *type;
  int discriminator;

  /* Assume this is the only local entity with this name.  */
  discriminator = 0;

  /* For now, we don't discriminate amongst local variables.  */
  if (TREE_CODE (entity) != TYPE_DECL)
    return 0;

  /* Scan the list of local classes.  */
  entity = TREE_TYPE (entity);
  for (type = &VARRAY_TREE (local_classes, 0); *type != entity; ++type)
    if (TYPE_IDENTIFIER (*type) == TYPE_IDENTIFIER (entity)
	&& TYPE_CONTEXT (*type) == TYPE_CONTEXT (entity))
      ++discriminator;

  return discriminator;
}

/* Return the discriminator for STRING, a string literal used inside
   FUNCTION.  The disciminator is the lexical ordinal of STRING among
   string literals used in FUNCTION.  */

static int
discriminator_for_string_literal (function, string)
     tree function ATTRIBUTE_UNUSED;
     tree string ATTRIBUTE_UNUSED;
{
  /* For now, we don't discriminate amongst string literals.  */
  return 0;
}

/*   <discriminator> := _ <number>   

   The discriminator is used only for the second and later occurrences
   of the same name within a single function. In this case <number> is
   n - 2, if this is the nth occurrence, in lexical order.  */

static void
write_discriminator (discriminator)
     int discriminator;
{
  /* If discriminator is zero, don't write anything.  Otherwise... */
  if (discriminator > 0)
    {
      write_char ('_');
      /* The number is omitted for discriminator == 1.  Beyond 1, the
	 numbering starts at 0.  */
      if (discriminator > 1)
	write_number (discriminator - 2, 10);
    }
}

/* Mangle the name of a function-scope entity.  FUNCTION is the
   FUNCTION_DECL for the enclosing function.  ENTITY is the decl for
   the entity itself.

     <local-name> := Z <function encoding> E <entity name> [<discriminator>]
                  := Z <function encoding> E s [<discriminator>]  */

static void
write_local_name (function, entity)
     tree function;
     tree entity;
{
  MANGLE_TRACE_TREE ("local-name", entity);

  write_char ('Z');
  write_encoding (function);
  write_char ('E');
  if (TREE_CODE (entity) == STRING_CST)
    {
      write_char ('s');
      write_discriminator (discriminator_for_string_literal (function, 
							     entity));
    }
  else
    {
      write_unqualified_name (entity);
      write_discriminator (discriminator_for_local_entity (entity));
    }
}

/* Non-terminals <type> and <CV-qualifier>.  

     <type> ::= <builtin-type>
            ::= <function-type>
            ::= <class-enum-type>
            ::= <array-type>
            ::= <pointer-to-member-type>
            ::= <template-param>
            ::= <substitution>
            ::= <CV-qualifier>
            ::= P <type>    # pointer-to
            ::= R <type>    # reference-to
            ::= C <type>    # complex pair (C 2000)  [not supported]
            ::= G <type>    # imaginary (C 2000)     [not supported]
            ::= U <source-name> <type>   # vendor extended type qualifier 
                                                     [not supported]

   TYPE is a type node.  */

static void 
write_type (type)
     tree type;
{
  /* This gets set to non-zero if TYPE turns out to be a (possibly
     CV-qualified) builtin type.  */
  int is_builtin_type = 0;

  MANGLE_TRACE_TREE ("type", type);

  if (find_substitution (type))
    return;

  if (write_CV_qualifiers_for_type (type) > 0)
    /* If TYPE was CV-qualified, we just wrote the qualifiers; now
       mangle the unqualified type.  The recursive call is needed here
       since both the qualified and uqualified types are substitution
       candidates.  */
    write_type (TYPE_MAIN_VARIANT (type));
  else
    switch (TREE_CODE (type))
      {
      case VOID_TYPE:
      case BOOLEAN_TYPE:
      case INTEGER_TYPE:  /* Includes wchar_t.  */
      case REAL_TYPE:
	/* If this is a typedef, TYPE may not be one of
	   the standard builtin type nodes, but an alias of one.  Use
	   TYPE_MAIN_VARIANT to get to the underlying builtin type.  */
	write_builtin_type (TYPE_MAIN_VARIANT (type));
	++is_builtin_type;
	break;

      case COMPLEX_TYPE:
	write_char ('C');
	write_type (TREE_TYPE (type));
	break;

      case FUNCTION_TYPE:
      case METHOD_TYPE:
	write_function_type (type, 1);
	break;

      case UNION_TYPE:
      case RECORD_TYPE:
      case ENUMERAL_TYPE:
	/* A pointer-to-member function is represented as a special
	   RECORD_TYPE, so check for this first.  */
	if (TYPE_PTRMEMFUNC_P (type))
	  write_pointer_to_member_type (type);
	else
	  write_class_enum_type (type);
	break;

      case TYPENAME_TYPE:
	/* We handle TYPENAME_TYPEs like ordinary nested names.  */
	write_nested_name (TYPE_STUB_DECL (type));
	break;

      case ARRAY_TYPE:
	write_array_type (type);
	break;

      case POINTER_TYPE:
	/* A pointer-to-member variable is represented by a POINTER_TYPE
	   to an OFFSET_TYPE, so check for this first.  */
	if (TYPE_PTRMEM_P (type))
	  write_pointer_to_member_type (type);
	else
	  {
	    write_char ('P');
	    write_type (TREE_TYPE (type));
	  }
	break;

      case REFERENCE_TYPE:
	write_char ('R');
	write_type (TREE_TYPE (type));
	break;

      case TEMPLATE_TYPE_PARM:
      case TEMPLATE_PARM_INDEX:
	write_template_param (type);
	break;

      case TEMPLATE_TEMPLATE_PARM:
	write_template_template_param (type);
	if (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (type))
	  write_template_args 
	    (TI_ARGS (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (type)));
	break;

      case OFFSET_TYPE:
	write_pointer_to_member_type (build_pointer_type (type));
	break;

      default:
	my_friendly_abort (20000409);
      }

  /* Types other than builtin types are substitution candidates.  */
  if (!is_builtin_type)
    add_substitution (type);
}

/* Non-terminal <CV-qualifiers> for type nodes.  Returns the number of
   CV-qualifiers written for TYPE.

     <CV-qualifiers> ::= [r] [V] [K]  */

static int
write_CV_qualifiers_for_type (type)
     tree type;
{
  int num_qualifiers = 0;

  /* The order is specified by:

       "In cases where multiple order-insensitive qualifiers are
       present, they should be ordered 'K' (closest to the base type),
       'V', 'r', and 'U' (farthest from the base type) ..."  */

  if (CP_TYPE_RESTRICT_P (type))
    {
      write_char ('r');
      ++num_qualifiers;
    }
  if (CP_TYPE_VOLATILE_P (type))
    {
      write_char ('V');
      ++num_qualifiers;
    }
  if (CP_TYPE_CONST_P (type))
    {
      write_char ('K');
      ++num_qualifiers;
    }

  return num_qualifiers;
}

/* Non-terminal <builtin-type>. 

     <builtin-type> ::= v   # void 
                    ::= b   # bool
                    ::= w   # wchar_t
                    ::= c   # char
                    ::= a   # signed char
                    ::= h   # unsigned char
                    ::= s   # short
                    ::= t   # unsigned short
                    ::= i   # int
                    ::= j   # unsigned int
                    ::= l   # long
                    ::= m   # unsigned long
                    ::= x   # long long, __int64
                    ::= y   # unsigned long long, __int64  
                    ::= n   # __int128            [not supported]
                    ::= o   # unsigned __int128   [not supported] 
                    ::= f   # float
                    ::= d   # double
                    ::= e   # long double, __float80 
                    ::= g   # __float128          [not supported]  */

static void 
write_builtin_type (type)
     tree type;
{
  switch (TREE_CODE (type))
    {
    case VOID_TYPE:
      write_char ('v');
      break;

    case BOOLEAN_TYPE:
      write_char ('b');
      break;

    case INTEGER_TYPE:
      /* If this is size_t, get the underlying int type.  */
      if (TYPE_IS_SIZETYPE (type))
	type = TYPE_DOMAIN (type);

      /* TYPE may still be wchar_t, since that isn't in
	 integer_type_nodes.  */
      if (type == wchar_type_node)
	write_char ('w');
      else
	{
	  size_t itk;
	  /* Assume TYPE is one of the shared integer type nodes.  Find
	     it in the array of these nodes.  */
	  for (itk = 0; itk < itk_none; ++itk)
	    if (type == integer_types[itk])
	      {
		/* Print the corresponding single-letter code.  */
		write_char (integer_type_codes[itk]);
		break;
	      }
	  
	  if (itk == itk_none)
	    /* Couldn't find this type.  */
	    my_friendly_abort (20000408);
	}
      break;

    case REAL_TYPE:
      if (type == float_type_node)
	write_char ('f');
      else if (type == double_type_node)
	write_char ('d');
      else if (type == long_double_type_node)
	write_char ('e');
      else
	my_friendly_abort (20000409);
      break;

    default:
      my_friendly_abort (20000509);
    }
}

/* Non-terminal <function-type>.  NODE is a FUNCTION_TYPE or
   METHOD_TYPE.  If INCLUDE_RETURN_TYPE is non-zero, the return type
   is mangled before the parameter types.

     <function-type> ::= F [Y] <bare-function-type> E   */

static void
write_function_type (type, include_return_type)
     tree type;
     int include_return_type;
{
  MANGLE_TRACE_TREE ("function-type", type);

  write_char ('F');
  /* We don't track whether or not a type is `extern "C"'.  Note that
     you can have an `extern "C"' function that does not have
     `extern "C"' type, and vice versa:

       extern "C" typedef void function_t();
       function_t f; // f has C++ linkage, but its type is
                     // `extern "C"'

       typedef void function_t();
       extern "C" function_t f; // Vice versa.

     See [dcl.link].  */
  write_bare_function_type (type, include_return_type);
  write_char ('E');
}

/* Non-terminal <bare-function-type>.  NODE is a FUNCTION_DECL or a
   METHOD_TYPE.  If INCLUDE_RETURN_TYPE is non-zero, the return value
   is mangled before the parameter types.

     <bare-function-type> ::= </signature/ type>+  */

static void
write_bare_function_type (type, include_return_type_p)
     tree type;
     int include_return_type_p;
{
  MANGLE_TRACE_TREE ("bare-function-type", type);

  /* Mangle the return type, if requested.  */
  if (include_return_type_p)
    write_type (TREE_TYPE (type));

  /* Now mangle the types of the arguments.  */
  write_method_parms (TYPE_ARG_TYPES (type), 
		      TREE_CODE (type) == METHOD_TYPE);
}

/* Write the mangled representation of a method parameter list of
   types given in PARM_LIST.  If METHOD_P is non-zero, the function is 
   considered a non-static method, and the this parameter is omitted.
   If VARARGS_P is non-zero, an additional token designating varargs
   is appended.  */

static void
write_method_parms (parm_list, method_p)
     tree parm_list;
     int method_p;
{
  tree first_parm;
  /* Assume this parameter type list is variable-length.  If it ends
     with a void type, then it's not.  */
  int varargs_p = 1;

  /* If this is a member function, skip the first arg, which is the
     this pointer.  
       "Member functions do not encode the type of their implicit this
       parameter."  */
  if (method_p)
    parm_list = TREE_CHAIN (parm_list);

  for (first_parm = parm_list; 
       parm_list; 
       parm_list = TREE_CHAIN (parm_list))
    {
      tree parm = TREE_VALUE (parm_list);

      if (same_type_p (parm, void_type_node))
	{
	  /* "Empty parameter lists, whether declared as () or
	     conventionally as (void), are encoded with a void parameter
	     (v)."  */
	  if (parm_list == first_parm)
	    write_type (parm);
	  /* If the parm list is terminated with a void type, it's
	     fixed-length.  */
	  varargs_p = 0;
	  /* A void type better be the last one.  */
	  my_friendly_assert (TREE_CHAIN (parm_list) == NULL, 20000523);
	}
      else
	write_type (parm);
    }

  if (varargs_p)
    /* <builtin-type> ::= z  # ellipsis  */
    write_char ('z');
}

/* <class-enum-type> ::= <name>  */

static void 
write_class_enum_type (type)
     tree type;
{
  write_name (TYPE_NAME (type));
}

/* Non-terminal <template-args>.  ARGS is a TREE_VEC of template
   arguments.

     <template-args> ::= I <template-arg>+ E  */

static void
write_template_args (args)
     tree args;
{
  int i;
  int length = TREE_VEC_LENGTH (args);

  MANGLE_TRACE_TREE ("template-args", args);

  my_friendly_assert (length > 0, 20000422);

  if (TREE_CODE (TREE_VEC_ELT (args, 0)) == TREE_VEC)
    {
      /* We have nested template args.  We want the innermost template
	 argument list.  */
      args = TREE_VEC_ELT (args, length - 1);
      length = TREE_VEC_LENGTH (args);
    }

  write_char ('I');
  for (i = 0; i < length; ++i)
    write_template_arg (TREE_VEC_ELT (args, i));
  write_char ('E');
}

/* <expression> ::= <unary operator-name> <expression>
		::= <binary operator-name> <expression> <expression>
		::= <expr-primary>

   <expr-primary> ::= <template-param>
		  ::= L <type> <value number> E  # literal
		  ::= L <mangled-name> E         # external name  */

static void
write_expression (expr)
     tree expr;
{
  enum tree_code code;

  code = TREE_CODE (expr);

  /* Handle pointers-to-members by making them look like expression
     nodes.  */
  if (code == PTRMEM_CST)
    {
      expr = build_nt (ADDR_EXPR,
		       build_nt (SCOPE_REF,
				 PTRMEM_CST_CLASS (expr),
				 PTRMEM_CST_MEMBER (expr)));
      code = TREE_CODE (expr);
    }

  /* Handle template parameters. */
  if (code == TEMPLATE_TYPE_PARM 
      || code == TEMPLATE_TEMPLATE_PARM
      ||  code == TEMPLATE_PARM_INDEX)
    write_template_param (expr);
  /* Handle literals.  */
  else if (TREE_CODE_CLASS (code) == 'c')
    write_template_arg_literal (expr);
  else if (DECL_P (expr))
    {
      write_char ('L');
      write_mangled_name (expr);
      write_char ('E');
    }
  else
    {
      int i;

      /* Skip NOP_EXPRs.  They can occur when (say) a pointer argument
	 is converted (via qualification conversions) to another
	 type.  */
      while (TREE_CODE (expr) == NOP_EXPR)
	{
	  expr = TREE_OPERAND (expr, 0);
	  code = TREE_CODE (expr);
	}

      /* When we bind a variable or function to a non-type template
	 argument with reference type, we create an ADDR_EXPR to show
	 the fact that the entity's address has been taken.  But, we
	 don't actually want to output a mangling code for the `&'.  */
      if (TREE_CODE (expr) == ADDR_EXPR
	  && TREE_TYPE (expr)
	  && TREE_CODE (TREE_TYPE (expr)) == REFERENCE_TYPE)
	expr = TREE_OPERAND (expr, 0);

      /* If it wasn't any of those, recursively expand the expression.  */
      write_string (operator_name_info[(int) code].mangled_name);

      /* Handle pointers-to-members specially.  */
      if (code == SCOPE_REF)
	{
	  write_type (TREE_OPERAND (expr, 0));
	  if (TREE_CODE (TREE_OPERAND (expr, 1)) == IDENTIFIER_NODE)
	    write_source_name (TREE_OPERAND (expr, 1));
	  else
	    write_encoding (TREE_OPERAND (expr, 1));
	}
      else
	for (i = 0; i < TREE_CODE_LENGTH (code); ++i)
	  write_expression (TREE_OPERAND (expr, i));
    }
}

/* Literal subcase of non-terminal <template-arg>.  

     "Literal arguments, e.g. "A<42L>", are encoded with their type
     and value. Negative integer values are preceded with "n"; for
     example, "A<-42L>" becomes "1AILln42EE". The bool value false is
     encoded as 0, true as 1. If floating-point arguments are accepted
     as an extension, their values should be encoded using a
     fixed-length lowercase hexadecimal string corresponding to the
     internal representation (IEEE on IA-64), high-order bytes first,
     without leading zeroes. For example: "Lfbff000000E" is -1.0f."  */

static void
write_template_arg_literal (value)
     tree value;
{
  tree type = TREE_TYPE (value);
  write_char ('L');
  write_type (type);

  if (TREE_CODE (value) == CONST_DECL)
    write_integer_cst (DECL_INITIAL (value));
  else if (TREE_CODE (value) == INTEGER_CST)
    {
      if (same_type_p (type, boolean_type_node))
	{
	  if (value == boolean_false_node || integer_zerop (value))
	    write_number (0, 10);
	  else if (value == boolean_true_node)
	    write_number (1, 10);
	  else 
	    my_friendly_abort (20000412);
	}
      else
	write_integer_cst (value);
    }
  else if (TREE_CODE (value) == REAL_CST)
    {
#ifdef CROSS_COMPILE
      static int explained;

      if (!explained) 
	{
	  sorry ("real-valued template parameters when cross-compiling");
	  explained = 1;
	}
#else
      size_t i;
      for (i = 0; i < sizeof (TREE_REAL_CST (value)); ++i)
	write_number (((unsigned char *) 
		       &TREE_REAL_CST (value))[i], 16);
#endif
    }
  else
    my_friendly_abort (20000412);

  write_char ('E');
}

/* Non-terminal <tempalate-arg>.  

     <template-arg> ::= <type>                        # type
                    ::= L <type> </value/ number> E   # literal
                    ::= LZ <name> E                   # external name
                    ::= X <expression> E              # expression  */

static void
write_template_arg (node)
     tree node;
{
  enum tree_code code = TREE_CODE (node);

  MANGLE_TRACE_TREE ("template-arg", node);

  /* A template template paramter's argument list contains TREE_LIST
     nodes of which the value field is the the actual argument.  */
  if (code == TREE_LIST)
    {
      node = TREE_VALUE (node);
      /* If it's a decl, deal with its type instead.  */
      if (DECL_P (node))
	{
	  node = TREE_TYPE (node);
	  code = TREE_CODE (node);
	}
    }

  if (TYPE_P (node))
    write_type (node);
  else if (code == TEMPLATE_DECL)
    /* A template appearing as a template arg is a template template arg.  */
    write_template_template_arg (node);
  else if (DECL_P (node))
    {
      write_char ('L');
      write_char ('Z');
      write_encoding (node);
      write_char ('E');
    }
  else if (TREE_CODE_CLASS (code) == 'c' && code != PTRMEM_CST)
    write_template_arg_literal (node);
  else
    {
      /* Template arguments may be expressions.  */
      write_char ('X');
      write_expression (node);
      write_char ('E');
    }
}

/*  <template-template-arg>
			::= <name>
			::= <substitution>  */

void
write_template_template_arg (tree decl)
{
  MANGLE_TRACE_TREE ("template-template-arg", decl);

  if (find_substitution (decl))
    return;
  write_name (decl);
  add_substitution (decl);
}


/* Non-terminal <array-type>.  TYPE is an ARRAY_TYPE.  

     <array-type> ::= A [</dimension/ number>] _ </element/ type>  

     "Array types encode the dimension (number of elements) and the
     element type. For variable length arrays, the dimension (but not
     the '_' separator) is omitted."  */

static void 
write_array_type (type)
  tree type;
{
  write_char ('A');
  if (TYPE_DOMAIN (type))
    {
      tree index_type;
      tree max;

      index_type = TYPE_DOMAIN (type);
      /* The INDEX_TYPE gives the upper and lower bounds of the
	 array.  */
      max = TYPE_MAX_VALUE (index_type);
      if (TREE_CODE (max) == INTEGER_CST)
	write_number (TREE_INT_CST_LOW (max) + 1, 10);
      else
	write_expression (TREE_OPERAND (max, 0));
    }
  write_char ('_');
  write_type (TREE_TYPE (type));
}

/* Non-terminal <pointer-to-member-type> for pointer-to-member
   variables.  TYPE is a pointer-to-member POINTER_TYPE.

     <pointer-to-member-type> ::= M </class/ type> </member/ type>  */

static void
write_pointer_to_member_type (type)
     tree type;
{
  write_char ('M');
  write_type (TYPE_PTRMEM_CLASS_TYPE (type));
  write_type (TYPE_PTRMEM_POINTED_TO_TYPE (type));
}

/* Non-terminal <template-param>.  PARM is a TEMPLATE_TYPE_PARM,
   TEMPLATE_TEMPLATE_PARM, or a TEMPLATE_PARM_INDEX.

     <template-param> ::= T </parameter/ number> _  */

static void
write_template_param (parm)
     tree parm;
{
  int parm_index;

  MANGLE_TRACE_TREE ("template-parm", parm);

  switch (TREE_CODE (parm))
    {
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
      parm_index = TEMPLATE_TYPE_IDX (parm);
      break;

    case TEMPLATE_PARM_INDEX:
      parm_index = TEMPLATE_PARM_IDX (parm);
      break;

    default:
      my_friendly_abort (20000523);
    }

  write_char ('T');
  /* NUMBER as it appears in the mangling is (-1)-indexed, with the
     earliest template param denoted by `_'.  */
  if (parm_index > 0)
    write_number (parm_index - 1, 10);
  write_char ('_');
}

/*  <template-template-param>
                        ::= <template-param> 
			::= <substitution>  */

static void
write_template_template_param (parm)
     tree parm;
{
  tree template = NULL_TREE;

  /* PARM, a TEMPLATE_TEMPLATE_PARM, is an instantiation of the
     template template parameter.  The substitution candidate here is
     only the template.  */
  if (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (parm))
    {
      template 
	= TI_TEMPLATE (TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO (parm));
      if (find_substitution (template))
	return;
    }

  /* <template-param> encodes only the template parameter position,
     not its template arguments, which is fine here.  */
  write_template_param (parm);
  if (template)
    add_substitution (template);
}

/* Non-terminal <substitution>.  

      <substitution> ::= S <seq-id> _
                     ::= S_  */

static void
write_substitution (seq_id)
     int seq_id;
{
  MANGLE_TRACE ("substitution", "");

  write_char ('S');
  if (seq_id > 0)
    write_number (seq_id - 1, 36);
  write_char ('_');
}

/* Start mangling a new name or type.  */

static inline void
start_mangling ()
{
  obstack_free (&G.name_obstack, obstack_base (&G.name_obstack));
}

/* Done with mangling.  Return the generated mangled name.  */

static inline const char *
finish_mangling ()
{
  /* Clear all the substitutions.  */
  VARRAY_POP_ALL (G.substitutions);

  /* Null-terminate the string.  */
  write_char ('\0');

  return (const char *) obstack_base (&G.name_obstack);
}

/* Initialize data structures for mangling.  */

void
init_mangle ()
{
  gcc_obstack_init (&G.name_obstack);
  VARRAY_TREE_INIT (G.substitutions, 1, "mangling substitutions");

  /* Cache these identifiers for quick comparison when checking for
     standard substitutions.  */
  subst_identifiers[SUBID_ALLOCATOR] = get_identifier ("allocator");
  subst_identifiers[SUBID_BASIC_STRING] = get_identifier ("basic_string");
  subst_identifiers[SUBID_CHAR_TRAITS] = get_identifier ("char_traits");
  subst_identifiers[SUBID_BASIC_ISTREAM] = get_identifier ("basic_istream");
  subst_identifiers[SUBID_BASIC_OSTREAM] = get_identifier ("basic_ostream");
  subst_identifiers[SUBID_BASIC_IOSTREAM] = get_identifier ("basic_iostream");
}

/* Generate the mangled name of DECL.  */

static const char *
mangle_decl_string (decl)
     tree decl;
{
  const char *result;

  start_mangling ();

  if (TREE_CODE (decl) == TYPE_DECL)
    write_type (TREE_TYPE (decl));
  else
    write_mangled_name (decl);

  result = finish_mangling ();
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_decl_string = '%s'\n\n", result);
  return result;
}

/* Create an identifier for the external mangled name of DECL.  */

tree
mangle_decl (decl)
     tree decl;
{
  return get_identifier (mangle_decl_string (decl));
}

/* Generate the mangled representation of TYPE.  */

const char *
mangle_type_string (type)
     tree type;
{
  const char *result;

  start_mangling ();
  write_type (type);
  result = finish_mangling ();
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_type_string = '%s'\n\n", result);
  return result;
}

/* Create an identifier for the mangled representation of TYPE.  */

tree
mangle_type (type)
     tree type;
{
  return get_identifier (mangle_type_string (type));
}

/* Create an identifier for the mangled name of a special component
   for belonging to TYPE.  CODE is the ABI-specified code for this
   component.  */

static tree
mangle_special_for_type (type, code)
     tree type;
     const char *code;
{
  const char *result;

  /* We don't have an actual decl here for the special component, so
     we can't just process the <encoded-name>.  Instead, fake it.  */
  start_mangling ();

  /* Start the mangling.  */
  write_string ("_Z");
  write_string (code);

  /* Add the type.  */
  write_type (type);
  result = finish_mangling ();

  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_special_for_type = %s\n\n", result);

  return get_identifier (result);
}

/* Create an identifier for the mangled representation of the typeinfo
   structure for TYPE.  */

tree
mangle_typeinfo_for_type (type)
     tree type;
{
  return mangle_special_for_type (type, "TI");
}

/* Create an identifier for the mangled name of the NTBS containing
   the mangled name of TYPE.  */

tree
mangle_typeinfo_string_for_type (type)
     tree type;
{
  return mangle_special_for_type (type, "TS");
}

/* Create an identifier for the mangled name of the vtable for TYPE.  */

tree
mangle_vtbl_for_type (type)
     tree type;
{
  return mangle_special_for_type (type, "TV");
}

/* Returns an identifier for the mangled name of the VTT for TYPE.  */

tree
mangle_vtt_for_type (type)
     tree type;
{
  return mangle_special_for_type (type, "TT");
}

/* Return an identifier for a construction vtable group.  TYPE is
   the most derived class in the hierarchy; BINFO is the base
   subobject for which this construction vtable group will be used.  

   This mangling isn't part of the ABI specification; in the ABI
   specification, the vtable group is dumped in the same COMDAT as the
   main vtable, and is referenced only from that vtable, so it doesn't
   need an external name.  For binary formats without COMDAT sections,
   though, we need external names for the vtable groups.  

   We use the production

    <special-name> ::= CT <type> <offset number> _ <base type>  */

tree
mangle_ctor_vtbl_for_type (type, binfo)
     tree type;
     tree binfo;
{
  const char *result;

  start_mangling ();

  write_string ("_Z");
  write_string ("TC");
  write_type (type);
  write_integer_cst (BINFO_OFFSET (binfo));
  write_char ('_');
  write_type (BINFO_TYPE (binfo));

  result = finish_mangling ();
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_ctor_vtbl_for_type = %s\n\n", result);
  return get_identifier (result);
}

/* Return an identifier for the mangled name of a thunk to FN_DECL.
   OFFSET is the initial adjustment to this used to find the vptr.  If
   VCALL_OFFSET is non-zero, this is a virtual thunk, and it is the
   vtbl offset in bytes.  

    <special-name> ::= Th <offset number> _ <base encoding>
                   ::= Tv <offset number> _ <vcall offset number> _
		                                            <base encoding>
*/

tree
mangle_thunk (fn_decl, offset, vcall_offset)
     tree fn_decl;
     int offset;
     int vcall_offset;
{
  const char *result;
  
  start_mangling ();

  write_string ("_Z");
  /* The <special-name> for virtual thunks is Tv, for non-virtual
     thunks Th.  */
  write_char ('T');
  if (vcall_offset != 0)
    write_char ('v');
  else
    write_char ('h');

  /* For either flavor, write the offset to this.  */
  write_number (offset, 10);
  write_char ('_');

  /* For a virtual thunk, add the vcall offset.  */
  if (vcall_offset != 0)
    {
      /* Virtual thunk.  Write the vcall offset and base type name.  */
      write_number (vcall_offset, 10);
      write_char ('_');
    }

  /* Scoped name.  */
  write_encoding (fn_decl);

  result = finish_mangling ();
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_thunk = %s\n\n", result);
  return get_identifier (result);
}

/* Return an identifier for the mangled unqualified name for a
   conversion operator to TYPE.  This mangling is not specified by the
   ABI spec; it is only used internally.

   For compatibility with existing conversion operator mechanisms,
   the mangled form is `__op<type>' where <type> is the mangled
   representation of TYPE.  

   FIXME: Though identifiers with starting with __op are reserved for
   the implementation, it would eventually be nice to use inaccessible
   names for these operators.  */

tree
mangle_conv_op_name_for_type (type)
     tree type;
{
  tree identifier;

  /* Build the mangling for TYPE.  */
  const char *mangled_type = mangle_type_string (type);
  /* Allocate a temporary buffer for the complete name.  */
  char *op_name = (char *) xmalloc (strlen (OPERATOR_TYPENAME_FORMAT) 
				    + strlen (mangled_type) + 1);
  /* Assemble the mangling.  */
  strcpy (op_name, OPERATOR_TYPENAME_FORMAT);
  strcat (op_name, mangled_type);
  /* Find or create an identifier.  */
  identifier = get_identifier (op_name);
  /* Done with the temporary buffer.  */
  free (op_name);
  /* Set bits on the identifier so we know later it's a conversion.  */
  IDENTIFIER_OPNAME_P (identifier) = 1;
  IDENTIFIER_TYPENAME_P (identifier) = 1;
  /* Hang TYPE off the identifier so it can be found easily later when
     performing conversions.  */
  TREE_TYPE (identifier) = type;

  return identifier;
}

/* Return an identifier for the name of an initialization guard
   variable for indicated VARIABLE.  */

tree
mangle_guard_variable (variable)
     tree variable;
{
  start_mangling ();
  write_string ("_ZGV");
  write_name (variable);
  return get_identifier (finish_mangling ());
}
