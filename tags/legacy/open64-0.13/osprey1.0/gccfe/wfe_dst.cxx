/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


/* ====================================================================
 * ====================================================================
 *
 * Module: dst.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/gccfe/wfe_dst.cxx,v $
 *
 * Revision history:
 *  01-May-93 - Original Version
 *
 * Description:
 *  Implements generation of dwarf debugging information be means of
 *  ../common/com/dwarf_DST_producer.h.  The information is generated
 *  by starting with the outermost scope (il_header.primary_scope) and
 *  handling nested scopes as they are encountered. 
 *
 *  Note how we mark nodes that have no DST_INFO_IDX associated with
 *  them as visited by means of a static file-scope variable 
 *  (e.g. void_is_visited).  This is necessary when we want to mark
 *  a type of edg node as visited, without a ASSOC_DST field.
 *
 * ====================================================================
 * ====================================================================
 */

#ifdef _KEEP_RCS_ID
static char *rcs_id = "$Source: /proj/osprey/CVS/open64/osprey1.0/gccfe/wfe_dst.cxx,v $ $Revision: 1.1.1.1 $";
#endif /* _KEEP_RCS_ID */

#include <values.h>

#include "defs.h"
#include "glob.h"
#include "config.h"
#include "dwarf_DST_producer.h"
#include "dwarf_DST_dump.h"
#include "file_util.h"  /* From common/util */
#include "srcpos.h"
#include "symtab.h"
#include "gnu_config.h"
#include "gnu/flags.h"
extern "C" {
#include "gnu/system.h"
#include "gnu/tree.h"
// #include "gnu/toplev.h"
}

#include "wfe_misc.h"
#include "wfe_dst.h"
#include "wfe_expr.h"
#include "tree_symtab.h"

#include <sys/types.h>
#include <sys/stat.h>   /* For accessing file statistics (stat()) */
#include <sys/param.h>  /* For MAXHOSTNAMELEN */
#include <unistd.h>     /* for gethostname() and getcwd() */
#include <string>
#include <vector>
#include <map>


extern FILE *tree_dump_file; //for debugging only

static BOOL dst_initialized = FALSE;

#define MAX_CWD_CHARS (256 - (MAXHOSTNAMELEN+1))
static char  cwd_buffer[MAX_CWD_CHARS+MAXHOSTNAMELEN+1];
static char *current_working_dir = &cwd_buffer[0];
static char *current_host_dir = &cwd_buffer[0];

// A file-global current scope is not useful, as with gcc we see
// declarations out of context and must derive right context.
//static DST_INFO_IDX current_scope_idx = DST_INVALID_INIT;

static DST_INFO_IDX comp_unit_idx = DST_INVALID_INIT;	// Compilation unit

static void DST_enter_file (char *, UINT);

static UINT last_dir_num = 0;
static UINT current_dir = 1;
static UINT last_file_num = 0;
UINT current_file = 1;

static DST_INFO_IDX DST_Create_var(ST *var_st, tree decl);
static DST_INFO_IDX DST_Create_Parmvar(ST *var_st, tree decl);
static DST_INFO_IDX DST_Create_type(ST *typ_decl, tree decl);
static int same_dst_idx(struct mongoose_gcc_DST_IDX s1, 
		struct mongoose_gcc_DST_IDX s2);



static std::vector< std::pair< char *, UINT > > dir_dst_list;
typedef std::map< std::string, DST_INFO_IDX > DST_Type_Map;
static DST_Type_Map basetypes;

// These two functions avoid ugly memcpys and
// they know the internal form of the two structs.
// (arguably ugly 'hidden' knowledge).
static inline void
cp_to_tree_from_dst(
        struct mongoose_gcc_DST_IDX * dest,
	DST_INFO_IDX *src)
{
	dest->block  = src->block_idx;
	dest->offset = src->byte_idx;
}
static inline void
cp_to_dst_from_tree(
	DST_INFO_IDX *dest,
        struct mongoose_gcc_DST_IDX * src)
{
	dest->block_idx  = src->block;
	dest->byte_idx = src->offset;
}

// Use DECL_CONTEXT or TYPE_CONTEXT to get
// the  index of the current applicable scope
// for the thing indicated.
// We already got to TYPE_CONTEXT/DECL_CONTEXT on the input
//   The TYPE_CONTEXT for any sort of type which could have a name or
//    which could have named members (e.g. tagged types in C/C++) will
//    point to the node which represents the scope of the given type, or
//    will be NULL_TREE if the type has "file scope".  For most types, this
//    will point to a BLOCK node or a FUNCTION_DECL node, but it could also
//    point to a FUNCTION_TYPE node (for types whose scope is limited to the
//    formal parameter list of some function type specification) or it
//    could point to a RECORD_TYPE, UNION_TYPE or QUAL_UNION_TYPE node
//    (for C++ "member" types).
//   DECL_CONTEXT points to the node representing the context in which
//    this declaration has its scope.  For FIELD_DECLs, this is the
//    RECORD_TYPE, UNION_TYPE, or QUAL_UNION_TYPE node that the field
//    is a member of.  For VAR_DECL, PARM_DECL, FUNCTION_DECL, LABEL_DECL,
//    and CONST_DECL nodes, this points to either the FUNCTION_DECL for the
//    containing function, the RECORD_TYPE or UNION_TYPE for the containing
//    type, or NULL_TREE if the given decl has "file scope".


static DST_INFO_IDX 
DST_get_context(tree intree)
{
    tree ltree = intree;
    struct mongoose_gcc_DST_IDX l_tree_idx;
    DST_INFO_IDX l_dst_idx;

    while(ltree) {
	switch(TREE_CODE(ltree)) {
	case BLOCK:
	    // unclear when this will happen, as yet
	    // FIX
            DevWarn("Unhandled BLOCK scope of decl/var");

	    break;
	case FUNCTION_DECL: {
		// This is a normal case!
		l_tree_idx = DECL_DST_IDX(ltree);
		cp_to_dst_from_tree(&l_dst_idx,&l_tree_idx);
		return l_dst_idx;

        }
	    break;
	case RECORD_TYPE:
            DevWarn("Unhandled RECORD_TYPE scope of decl/var/type");
	    break;
	case UNION_TYPE:
            DevWarn("Unhandled UNION_TYPE scope of decl/var/type");
	    break;
	case QUAL_UNION_TYPE:
            DevWarn("Unhandled QUAL_UNION_TYPE scope of decl/var/type");
	    break;
	case FUNCTION_TYPE:
            DevWarn("Unhandled FUNCTION_TYPE scope of decl/var/type");
	    break;
	default:
	    DevWarn("Unhandled scope of tree code %d",
			TREE_CODE(ltree));

	   // *is any of this right?
           if(TREE_CODE_CLASS(TREE_CODE(ltree)) == 'd') {
		ltree =  DECL_CONTEXT(ltree);
		continue;
	   } else if (TREE_CODE_CLASS(TREE_CODE(ltree)) == 't') {
		ltree =  TYPE_CONTEXT(ltree);
		continue;
           } else {
		// ??
           }
	   break;
	}

    }
    // This is  the normal case for most things.
    return comp_unit_idx;
}


// get the directory path dst info.
// if already exists, return existing info, else append to list.
static UINT
Get_Dir_Dst_Info (char *name)
{
        std::vector< std::pair < char*, UINT > >::iterator found;
	// assume linear search is okay cause list will be small?
        for (found = dir_dst_list.begin(); 
		found != dir_dst_list.end(); 
		++found)
        {
		if (strcmp ((*found).first, name) == 0) {
			return (*found).second;
		}
	}
	// not found, so append path to dst list
	dir_dst_list.push_back (std::make_pair (name, ++last_dir_num));
	DST_mk_include_dir (name);
	return last_dir_num;
}

static std::vector< std::pair< char *, UINT > > file_dst_list;

// get the file dst info.
// if already exists, return existing info, else append to list.
static UINT
Get_File_Dst_Info (char *name, UINT dir)
{
        std::vector< std::pair < char*, UINT > >::iterator found;
	// assume linear search is okay cause list will be small?
        for (found = file_dst_list.begin(); 
		found != file_dst_list.end(); 
		++found)
        {
		if (strcmp ((*found).first, name) == 0) {
			return (*found).second;
		}
	}
	// not found, so append file to dst list
	file_dst_list.push_back (std::make_pair (name, ++last_file_num));
	DST_enter_file (name, dir);
	return last_file_num;
}


/* drops path prefix in string */
static char *
drop_path (char *s)
{
        char *tail;
        tail = strrchr (s, '/');
        if (tail == NULL) {
                return s;       /* no path prefix */
        } else {
                tail++;         /* skip the slash */
                return tail;    /* points inside s, not new string! */
        }
}

static void
DST_enter_file (char *file_name, UINT dir)
{
        UINT64 file_size = 0;
        UINT64 fmod_time = 0;
        struct stat fstat;
        if (stat(file_name, &fstat) == 0) {
                /* File was found, so set to non-zero values */
                file_size = (UINT64)fstat.st_size;
                fmod_time = (UINT64)fstat.st_mtime;
        }
        DST_mk_file_name(
                file_name,
                dir,
                file_size,
                fmod_time);
}

/* Given the set of options passed into the front-end, string
 * together the ones of interest for debugging and return
 * the resultant string.  The options of interest depends on 
 * the level of debugging.  The caller should free the malloced
 * string once it is no longer needed.
 */
static char *
DST_get_command_line_options(INT32 num_copts, 
			     char *copts[])
{
  INT32	    i, 
            strlength = 0;
  INT32     num_opts = 0;
  char    **selected_opt;
  INT32    *opt_size;
  char     *rtrn, *cp;
  char      ch;
  INT32     record_option;

  selected_opt = (char **)malloc(sizeof(char*) * num_copts);
  opt_size = (INT32 *)malloc(sizeof(INT32) * num_copts);
  
  for (i = 1; i <= num_copts; i++)
  {
     if (copts[i] != NULL && copts[i][0] == '-')
     {
	ch = copts[i][1];  /* Next flag character */
	if (Debug_Level <= 0)
	   /* No debugging */
	   record_option = (ch == 'g' || /* Debugging option */
			    ch == 'O');  /* Optimization level */
	else
	   /* Full debugging */
	   record_option = (ch == 'D' || /* Macro symbol definition */
			    ch == 'g' || /* Debugging option */
			    ch == 'I' || /* Search path for #include files */
			    ch == 'O' || /* Optimization level */
			    ch == 'U');  /* Macro symbol undefined */
	if (record_option)
	{
	   opt_size[num_opts] = strlen(copts[i]) + 1; /* Arg + space/null */
	   selected_opt[num_opts] = copts[i];
	   strlength += opt_size[num_opts];
	   num_opts += 1;
	}
     }
  }
  
  if (strlength == 0)
  {
     rtrn = (char *)calloc(1, 1); /* An empty string */
  }
  else
  {
     rtrn = (char *)malloc(strlength);
     cp = rtrn;

     /* Append the selected options to the string (rtrn) */
     for (i = 0; i < num_opts; i++)
	if (opt_size[i] > 0)
	{
	   cp = strcpy(cp, selected_opt[i]) + opt_size[i];
	   cp[-1] = ' '; /* Space character */
	}
     cp[-1] = '\0'; /* Terminating null character */
  }
  
  free(selected_opt);
  free(opt_size);
  return rtrn;
} /* DST_get_command_line_options */

static char *
Get_Name (tree node)
{
  static char buf[64];


  if (node == NULL) {
		buf[0] = 0;
                return buf;
  }
  char *name = buf;
  buf[0] = 0;

#define DANAME(d) ((TREE_CODE_CLASS(TREE_CODE(d)) =='d')? \
((DECL_NAME(d))?IDENTIFIER_POINTER(DECL_NAME(d)):"?"):\
 "?2")


  int tc_class = (int)TREE_CODE_CLASS(TREE_CODE(node));

  if (tc_class == 'd')
  {
      if (DECL_NAME (node)) {
        name = IDENTIFIER_POINTER (DECL_NAME (node));
      }
  }
  else if (tc_class == 't')
  {
      if (TYPE_NAME (node))
        {
          if (TREE_CODE (TYPE_NAME (node)) == IDENTIFIER_NODE)
            name =  IDENTIFIER_POINTER (TYPE_NAME (node));
          else if (TREE_CODE (TYPE_NAME (node)) == TYPE_DECL
                   && DECL_NAME (TYPE_NAME (node)))
            name = IDENTIFIER_POINTER (DECL_NAME (TYPE_NAME (node)));
	  
        } 
  } else {
  }
  return name;
}

static void
DST_enter_struct_union_members(tree parent_tree, 
	DST_INFO_IDX parent_idx  )
{ 
    DST_INFO_IDX dst_idx;
    TY_IDX parent_ty_idx = Get_TY(parent_tree);
    
    //if(TREE_CODE_CLASS(TREE_CODE(parent_tree)) != 'd') {
     //   DevWarn("DST_enter_struct_union_members input not 't' but %c",
      //          TREE_CODE_CLASS(TREE_CODE(parent_tree)));
   // }

    tree field = TREE_PURPOSE(parent_tree);
    for( ; field ; field = TREE_CHAIN(field) )
    { 
	if(TREE_CODE(field) != FIELD_DECL) {
		continue; //already warned ???? !
	}
	
	char isbit = 0; 
        if ( ! DECL_BIT_FIELD(field)
           && Get_Integer_Value(DECL_SIZE(field)) > 0
           && Get_Integer_Value(DECL_SIZE(field))
           != (TY_size(Get_TY(TREE_TYPE(field)))
                                        * BITSPERBYTE) )
        {
           // for some reason gnu doesn't set bit field
           // when have bit-field of standard size
           // (e.g. int f: 16;).  But we need it set
           // so we know how to pack it, because
           // otherwise the field type is wrong.
	   // already warned
           //DevWarn("field size %d doesn't match type size %d",
           //                            DECL_FIELD_SIZE(field),
           ////                           TY_size(Get_TY(TREE_TYPE(field)))
           //                                   * BITSPERBYTE );

	   isbit = 1;
        }
        if (DECL_BIT_FIELD(field)) {
	   isbit = 1;
        }
 	DST_INFO_IDX field_idx;
        char *field_name = (Get_Name((field)));

	tree ftype = TREE_TYPE(field);


        TY_IDX base = Get_TY(ftype);

        struct mongoose_gcc_DST_IDX g_idx;
        g_idx = Create_DST_type_For_Tree(ftype,base,parent_ty_idx);
        DST_INFO_IDX fidx; 

        USRCPOS src;
        // For now, the source location appears bogus
        // (or at least odd) for files other than the base
        // file, so lets leave it out. Temporarily.
        //USRCPOS_srcpos(src) = Get_Srcpos();
        USRCPOS_clear(src);

	cp_to_dst_from_tree(&fidx,&g_idx);

        INT bitoff = Get_Integer_Value(DECL_FIELD_BIT_OFFSET(field));
	INT fld_offset_bytes = // Get_Integer_Value(DECL_FIELD_OFFSET(field)) +
			       (bitoff / BITSPERBYTE);
 	tree type_size = TYPE_SIZE(ftype);
	UINT align = TYPE_ALIGN(ftype)/BITSPERBYTE;
        INT tsize;
        if (type_size == NULL) {
          // incomplete structs have 0 size
          Fail_FmtAssertion("DST_enter_struct_union_members: type_size NULL ");
          tsize = 0;
        }
        else {
          if (TREE_CODE(type_size) != INTEGER_CST) {
            if (TREE_CODE(type_size) == ARRAY_TYPE)
              Fail_FmtAssertion ("Encountered VLA at line %d", lineno);
            else
              Fail_FmtAssertion ("VLA at line %d not currently implemented", 
		lineno);
            tsize = 0;
          }
          else
            tsize = Get_Integer_Value(type_size) / BITSPERBYTE;
        }

	if(isbit == 0) {
	  field_idx = DST_mk_member(
		src,
		field_name,
		fidx, // field type	
		fld_offset_bytes, // field offset in bytes
			0, // no container (size zero)
			0, // no offset into container
		        0, // no bitfield size
	       FALSE, // not a bitfield
	       FALSE, // not a static member
	       FALSE, // Only TRUE for C++?
	       FALSE); // artificial (no)
			
	} else {
	  if(tsize == 0) {
	   Fail_FmtAssertion("bit field type size 0!");
	   continue;
	  }
	  UINT container_off = fld_offset_bytes - (fld_offset_bytes%align);
	  UINT into_cont_off = bitoff - (container_off*BITSPERBYTE);

	  field_idx = DST_mk_member(
			src,
			field_name,
			fidx	,      // field type	
			fld_offset_bytes,    // container offset in bytes
			tsize,         // container size, bytes
                        into_cont_off, // offset into 
					// container, bits

			 Get_Integer_Value(DECL_SIZE(field)), // bitfield size
			      TRUE, // a bitfield
			      FALSE, // not a static member
			      FALSE, // Only TRUE for C++?
			      FALSE); // artificial (no)
	}
	DST_append_child(parent_idx,field_idx);


        //struct mongoose_gcc_DST_IDX mdst;
        //cp_to_tree_from_dst(&mdst,&field_idx);
        //TYPE_DST_IDX(ftype) = mdst;

	

    }

    return ;
}

// We have a struct/union. Create a DST record
// and enter it.
static DST_INFO_IDX
DST_enter_struct_union(tree type_tree, TY_IDX ttidx  , TY_IDX idx, 
		INT tsize)
{ 
    DST_INFO_IDX dst_idx ;
    struct mongoose_gcc_DST_IDX tdst
      = TYPE_DST_IDX(type_tree);
    cp_to_dst_from_tree(&dst_idx,&tdst);

    DST_INFO_IDX current_scope_idx =
         DST_get_context(TYPE_CONTEXT(type_tree));

    if(DST_IS_NULL(dst_idx)) {

	// not yet created, so create it


	// Deal with scope here (FIX)
        // in case scope of decl is different from scope of ref
	//
        USRCPOS src;
        // For now, the source location appears bogus
        // (or at least odd) for files other than the base
        // file, so lets leave it out. Temporarily.
        //USRCPOS_srcpos(src) = Get_Srcpos();
        USRCPOS_clear(src);

	char *name = Get_Name(type_tree);
	
	if(TREE_CODE(type_tree) == RECORD_TYPE) {
	   dst_idx = DST_mk_structure_type(src,
		  name , // struct tag name
		  tsize,
		  DST_INVALID_IDX, // not inlined
		   TREE_PURPOSE(type_tree)== 0   // 1 if incomplete
		   );
	} else if (TREE_CODE(type_tree) == UNION_TYPE) {
	   dst_idx = DST_mk_union_type(src,
		  name  , // union tag name
		  tsize,
		  DST_INVALID_IDX, // not inlined
		   TREE_PURPOSE(type_tree)== 0   // arg 1 if incomplete
		   );
	} else {
	  DevWarn("DST_enter_struct_union type tree wrong code! %d",
		(int)TREE_CODE(type_tree));
	  return dst_idx;
	}
	DST_append_child(current_scope_idx,dst_idx);

	// set this now so we will not infinite loop
	// if this has ptr to itself inside.
        struct mongoose_gcc_DST_IDX mdst;
        cp_to_tree_from_dst(&mdst,&dst_idx);
        TYPE_DST_IDX(type_tree) = mdst;

	// now can do the members.
	DST_enter_struct_union_members(type_tree,dst_idx);

    }

    return  dst_idx;
}


// We have a enum. 
// and enter it.
static DST_INFO_IDX
DST_enter_enum(tree type_tree, TY_IDX ttidx  , TY_IDX idx, 
		INT tsize)
{ 
   DST_INFO_IDX dst_idx;
   struct mongoose_gcc_DST_IDX tdst
      = TYPE_DST_IDX(type_tree);
   cp_to_dst_from_tree(&dst_idx,&tdst);

   if(TREE_CODE_CLASS(TREE_CODE(type_tree)) != 't') {
        DevWarn("DST_enter_enum input not 't' but %c",
                TREE_CODE_CLASS(TREE_CODE(type_tree)));
   }
   DST_INFO_IDX current_scope_idx =
        DST_get_context(TYPE_CONTEXT(type_tree));


   if(DST_IS_NULL(dst_idx)) {
      DST_INFO_IDX t_dst_idx;
      USRCPOS src;
      // For now, the source location appears bogus
      // (or at least odd) for files other than the base
      // file, so lets leave it out. Temporarily.
      //USRCPOS_srcpos(src) = Get_Srcpos();
      USRCPOS_clear(src);
      char *name1 = Get_Name(type_tree);
      tree enum_entry = TYPE_VALUES(type_tree);
      DST_size_t e_tsize =  tsize;
      t_dst_idx = DST_mk_enumeration_type( src,
                           name1,
                           e_tsize, // Type size.
                           DST_INVALID_IDX, // Not inlined.
                           (enum_entry==NULL_TREE)); // Pass non-zero 
						// if incomplete.
      DST_append_child(current_scope_idx,t_dst_idx);

      struct mongoose_gcc_DST_IDX mdst;
      cp_to_tree_from_dst(&mdst,&t_dst_idx);
      TYPE_DST_IDX(type_tree) = mdst;


      DST_CONST_VALUE enumerator;
      if(tsize == 8) {
	   DST_CONST_VALUE_form(enumerator) =  DST_FORM_DATA8;
      } else if (tsize == 4) {
	   DST_CONST_VALUE_form(enumerator) =  DST_FORM_DATA4;
      } else {
	   // ???
	   DST_CONST_VALUE_form(enumerator) =  DST_FORM_DATA4;
	   DevWarn("Unexpected type size  %d in enumerator",
		(int)tsize);
      }

      for( ; enum_entry; enum_entry = TREE_CHAIN(enum_entry) ) {
         USRCPOS src;
         // For now, the source location appears bogus
         // (or at least odd) for files other than the base
         // file, so lets leave it out. Temporarily.
         //USRCPOS_srcpos(src) = Get_Srcpos();
         USRCPOS_clear(src);
         char *name2 = IDENTIFIER_POINTER(TREE_PURPOSE(enum_entry));

         if (tsize == 8) {
	   DST_CONST_VALUE_form_data8(enumerator) = 
	      Get_Integer_Value(TREE_VALUE(enum_entry));
         } else {
	   DST_CONST_VALUE_form_data4(enumerator) = 
		Get_Integer_Value(TREE_VALUE(enum_entry));
         }

	 DST_INFO_IDX ed = DST_mk_enumerator(src,
				name2,
				enumerator);
	 DST_append_child(t_dst_idx,ed);
	
      }


    }
    return dst_idx;
}



// We have an array
// enter it.
static DST_INFO_IDX
DST_enter_array_type(tree type_tree, TY_IDX ttidx  , TY_IDX idx,INT tsize)
{ 
   DST_INFO_IDX dst_idx;
   struct mongoose_gcc_DST_IDX tdst
      = TYPE_DST_IDX(type_tree);
   cp_to_dst_from_tree(&dst_idx,&tdst);

   if(TREE_CODE_CLASS(TREE_CODE(type_tree)) != 't') {
        DevWarn("DST_enter_array_type input not 't' but %c",
                TREE_CODE_CLASS(TREE_CODE(type_tree)));
   }

   if(DST_IS_NULL(dst_idx)) {

      USRCPOS src;
      // For now, the source location appears bogus
      // (or at least odd) for files other than the base
      // file, so lets leave it out. Temporarily.
      //USRCPOS_srcpos(src) = Get_Srcpos();
      USRCPOS_clear(src);

      //if tsize == 0, is incomplete array

      tree elt_tree = TREE_TYPE(type_tree);
      TY_IDX itx = TYPE_TY_IDX(elt_tree);
      struct mongoose_gcc_DST_IDX amdst
                          = TYPE_DST_IDX(type_tree);
      cp_to_dst_from_tree(&dst_idx,&amdst);

      // not created yet, so create
      struct mongoose_gcc_DST_IDX inner =
                    Create_DST_type_For_Tree (elt_tree,itx, idx);

      DST_INFO_IDX inner_dst;
      cp_to_dst_from_tree(&inner_dst,&inner);

      dst_idx = DST_mk_array_type( src,
                            0, // name ?. Nope array types not named: no tag
				// in  C/C++
                           inner_dst, // element type DST_INFO_IDX
                           tsize, // type size
                           DST_INVALID_IDX, // not inlined
                           (tsize == 0)); // pass non-zero if incomplete.
      DST_append_child(comp_unit_idx,dst_idx);

      struct mongoose_gcc_DST_IDX mdst;
      cp_to_tree_from_dst(&mdst,&dst_idx);
      TYPE_DST_IDX(type_tree) = mdst;
    }
    return dst_idx;
}

      /*--------------------------------------------------
       * Visible routines for creating the DST information
       *--------------------------------------------------*/

// This is in parallel to Create_TY_For_Tree() in 
// tree_symtab.cxx  and must be kept so.
// We cannot use the TY tree as too much information
// is lost that debuggers depend on.
// type_tree_in is void * so 
//
// idx is non-zero only for RECORD and UNION, 
// when there is forward declaration.
//
// ttidx is the type tree Create_TY_For_Tree just created
// for type_tree

extern struct mongoose_gcc_DST_IDX
Create_DST_type_For_Tree (tree type_tree, TY_IDX ttidx  , TY_IDX idx)
{
    
    struct mongoose_gcc_DST_IDX actual_retval;
    

    if(TREE_CODE_CLASS(TREE_CODE(type_tree)) != 't') {
	DevWarn("Create_DST_type_For_Tree input not 't' but %c",
		TREE_CODE_CLASS(TREE_CODE(type_tree)));
    }
	 
    DST_INFO_IDX dst_idx = DST_INVALID_INIT;

    DST_INFO_IDX current_scope_idx = comp_unit_idx;
    if(TYPE_CONTEXT(type_tree)) {
	current_scope_idx = DST_get_context(TYPE_CONTEXT(type_tree));
    }

    // for typedefs get the information from the base type
    if (TYPE_NAME(type_tree)) {
	    
	if(  idx == 0  &&
	    (TREE_CODE(type_tree) == RECORD_TYPE ||
	     TREE_CODE(type_tree) == UNION_TYPE) &&
	    TREE_CODE(TYPE_NAME(type_tree)) == TYPE_DECL &&
	    TYPE_MAIN_VARIANT(type_tree) != type_tree) {
		idx = Get_TY (TYPE_MAIN_VARIANT(type_tree));

		//if (TYPE_READONLY(type_tree))
		//	Set_TY_is_const (idx);
		//if (TYPE_VOLATILE(type_tree))
		//	Set_TY_is_volatile (idx);
		// restrict qualifier not supported by gcc
		//TYPE_TY_IDX(type_tree) = idx;
		//return idx;
		// FIX	      
		//hack so rest of gnu need know nothing of DST 

		cp_to_tree_from_dst(&actual_retval,&dst_idx);
		return actual_retval;
       } else {
//
       }
    }

    char *name1 = Get_Name(type_tree);

    TYPE_ID mtype;
    INT tsize;
    BOOL variable_size = FALSE;
    tree type_size = TYPE_SIZE(type_tree);
    UINT align = TYPE_ALIGN(type_tree) / BITSPERBYTE;
    if (type_size == NULL) {
		// In a typedef'd type 
		// incomplete structs have 0 size
		FmtAssert(TREE_CODE(type_tree) == ARRAY_TYPE 
			|| TREE_CODE(type_tree) == UNION_TYPE
			|| TREE_CODE(type_tree) == RECORD_TYPE
			|| TREE_CODE(type_tree) == ENUMERAL_TYPE
			|| TREE_CODE(type_tree) == VOID_TYPE
			|| TREE_CODE(type_tree) == LANG_TYPE,
			  ("Create_DST_type_For_Tree: type_size NULL for non ARRAY/RECORD"));
		tsize = 0;
   }
   else {
		if (TREE_CODE(type_size) != INTEGER_CST) {
			if (TREE_CODE(type_tree) == ARRAY_TYPE)
				DevWarn ("Encountered VLA at line %d", lineno);
			else
				Fail_FmtAssertion ("VLA at line %d not currently implemented", lineno);
			variable_size = TRUE;
			tsize = 0;
		}
		else
			tsize = Get_Integer_Value(type_size) / BITSPERBYTE;
   }
   int encoding = 0;
   switch (TREE_CODE(type_tree)) {
   case VOID_TYPE:
		
		//idx = MTYPE_To_TY (MTYPE_V);	// use predefined type
		break;
   case BOOLEAN_TYPE:
		{
		encoding = DW_ATE_boolean;
		goto common_basetypes;
		}
   case INTEGER_TYPE:
		{
		// enter base type
		if (TREE_UNSIGNED(type_tree)) {
		 encoding = DW_ATE_unsigned;
		} else {
		 encoding = DW_ATE_signed;
		}
		goto common_basetypes;
		}
     case CHAR_TYPE:
		{
		// enter base type
		if (TREE_UNSIGNED(type_tree)) {
		 encoding = DW_ATE_unsigned_char;
		} else {
		 encoding = DW_ATE_signed_char;
		}
		goto common_basetypes;
		}
     case ENUMERAL_TYPE:
		{
		dst_idx = DST_enter_enum(type_tree,ttidx,idx,
                        tsize);

		}
		break;
     case REAL_TYPE:
		{
		// enter base type
		encoding = DW_ATE_float;
		goto common_basetypes;
		}
    case COMPLEX_TYPE:
                // enter base type
                encoding = DW_ATE_complex_float;
    //============
    common_basetypes:
		{
		FmtAssert(name1 != 0,
		   ("name of base type empty, cannot make DST entry!"));

                std::string names(name1);
                DST_Type_Map::iterator p =
                        basetypes.find(names);
                if(p != basetypes.end()) {
                        DST_INFO_IDX t = (*p).second;
			cp_to_tree_from_dst(&actual_retval,&t);
                        return actual_retval;
                } else {
                       dst_idx = DST_mk_basetype(
                                name1,encoding,tsize);
                       basetypes[names] = dst_idx;
		       DST_append_child(comp_unit_idx,dst_idx);
                }

                }

		break;
    case REFERENCE_TYPE:
	       {
                struct mongoose_gcc_DST_IDX tdst
                  = TYPE_DST_IDX(type_tree);
                cp_to_dst_from_tree(&dst_idx,&tdst);
		if(DST_IS_NULL(dst_idx)) {

		  tree ttree = TREE_TYPE(type_tree);
	          TY_IDX itx = TYPE_TY_IDX(ttree);
                  struct mongoose_gcc_DST_IDX inner =
		    Create_DST_type_For_Tree (ttree,itx, idx);

	          DST_INFO_IDX inner_dst;

		  cp_to_dst_from_tree(&inner_dst,&inner);
		  // not created yet, so create
		  dst_idx = DST_mk_reference_type(
		       	inner_dst,    // type ptd to
			DW_ADDR_none, // no address class
			tsize);
                                
                  DST_append_child(current_scope_idx,dst_idx);

                  struct mongoose_gcc_DST_IDX ptr_dst_idx;
		  cp_to_tree_from_dst(&ptr_dst_idx,&dst_idx);
		  TYPE_DST_IDX(type_tree) = ptr_dst_idx;
		}
               }
		break;
    case POINTER_TYPE:
	       {
                struct mongoose_gcc_DST_IDX tdst
                  = TYPE_DST_IDX(type_tree);
                cp_to_dst_from_tree(&dst_idx,&tdst);
                if(DST_IS_NULL(dst_idx)) {

		  tree ttree = TREE_TYPE(type_tree);
	          TY_IDX itx = TYPE_TY_IDX(ttree);
                  struct mongoose_gcc_DST_IDX inner =
		  Create_DST_type_For_Tree (ttree,itx, idx);

                  // not created yet, so create

	          DST_INFO_IDX inner_dst;

		  cp_to_dst_from_tree(&inner_dst,&inner);
		  dst_idx = DST_mk_pointer_type(
		       	inner_dst,    // type ptd to
			DW_ADDR_none, // no address class
			tsize);
                                
                  DST_append_child(current_scope_idx,dst_idx);

                  struct mongoose_gcc_DST_IDX ptr_dst_idx;
		  cp_to_tree_from_dst(&ptr_dst_idx,&dst_idx);
		  TYPE_DST_IDX(type_tree) = ptr_dst_idx;
                 }
               }
	       break;

    case ARRAY_TYPE:
		
	       {
                dst_idx = DST_enter_array_type(type_tree, 
			ttidx, idx, tsize);
	       }
	       break;
    case RECORD_TYPE:
    case UNION_TYPE:
		{
		dst_idx = DST_enter_struct_union(type_tree,ttidx,idx,
			tsize);
		}
		break;
    case METHOD_TYPE:
		{
		//DevWarn ("Encountered METHOD_TYPE at line %d", lineno);
		}
		break;
    case FUNCTION_TYPE:
		{	// new scope for local vars
#if 0
		tree arg;
		INT32 num_args;
		TY &ty = New_TY (idx);
		TY_Init (ty, 0, KIND_FUNCTION, MTYPE_UNKNOWN, NULL); 
		Set_TY_align (idx, 1);
		TY_IDX ret_ty_idx;
		TY_IDX arg_ty_idx;
		TYLIST tylist_idx;

		// allocate TYs for return as well as parameters
		// this is needed to avoid mixing TYLISTs if one
		// of the parameters is a pointer to a function

		ret_ty_idx = Get_TY(TREE_TYPE(type_tree));
		for (arg = TYPE_ARG_TYPES(type_tree);
		     arg;
		     arg = TREE_CHAIN(arg))
			arg_ty_idx = Get_TY(TREE_VALUE(arg));

		// if return type is pointer to a zero length struct
		// convert it to void
		if (!WFE_Keep_Zero_Length_Structs    &&
		    TY_mtype (ret_ty_idx) == MTYPE_M &&
		    TY_size (ret_ty_idx) == 0) {
			// zero length struct being returned
		  	DevWarn ("function returning zero length struct at line %d", lineno);
			ret_ty_idx = Be_Type_Tbl (MTYPE_V);
		}

		Set_TYLIST_type (New_TYLIST (tylist_idx), ret_ty_idx);
		Set_TY_tylist (ty, tylist_idx);
		for (num_args = 0, arg = TYPE_ARG_TYPES(type_tree);
		     arg;
		     num_args++, arg = TREE_CHAIN(arg))
		{
			arg_ty_idx = Get_TY(TREE_VALUE(arg));
			if (!WFE_Keep_Zero_Length_Structs    &&
			    TY_mtype (arg_ty_idx) == MTYPE_M &&
			    TY_size (arg_ty_idx) == 0) {
				// zero length struct passed as parameter
				DevWarn ("zero length struct encountered in function prototype at line %d", lineno);
			}
			else
				Set_TYLIST_type (New_TYLIST (tylist_idx), arg_ty_idx);
		}
		if (num_args)
		{
			Set_TY_has_prototype(idx);
			if (arg_ty_idx != Be_Type_Tbl(MTYPE_V))
			{
				Set_TYLIST_type (New_TYLIST (tylist_idx), 0);
				Set_TY_is_varargs(idx);
			}
			else
				Set_TYLIST_type (Tylist_Table [tylist_idx], 0);
		}
		else
			Set_TYLIST_type (New_TYLIST (tylist_idx), 0);
#endif
		} // end FUNCTION_TYPE scope
		break;
    default:
		FmtAssert(FALSE, ("Get_TY unexpected tree_type"));
    }
    //if (TYPE_READONLY(type_tree))
//		Set_TY_is_const (idx);
 //   if (TYPE_VOLATILE(type_tree))
//		Set_TY_is_volatile (idx);
    // restrict qualifier not supported by gcc
 //   TYPE_TY_IDX(type_tree) = idx;
	
    
    // hack so rest of gnu need know nothing of DST 
    cp_to_tree_from_dst(&actual_retval,&dst_idx);
    return actual_retval;
}

// if this idx is known, return non-zero.
static int
same_dst_idx(struct mongoose_gcc_DST_IDX s1, struct mongoose_gcc_DST_IDX s2)
{
	if( (s1.block == s2.block) &&
		(s1.offset == s2.offset) ) {
	  return 1;
	}
        return 0;
}

extern struct mongoose_gcc_DST_IDX 
Create_DST_decl_For_Tree(
        tree decl, ST* var_st)
{

  struct mongoose_gcc_DST_IDX var_idx;
  DST_INFO_IDX dst_idx = DST_INVALID_INIT;
  cp_to_tree_from_dst(&var_idx,&dst_idx);


  struct mongoose_gcc_DST_IDX cur_idx;

  // If we have already processed this, do not do it again...
  cur_idx = DECL_DST_IDX(decl);
  if(!same_dst_idx(cur_idx,var_idx)) {
	return cur_idx;
  }



  //if (TREE_CODE(decl) != VAR_DECL) return var_idx;

  if (DECL_IGNORED_P(decl))    {
  	return var_idx;
  }


  // if tests  for locals and returns if local 
  // if (DECL_CONTEXT(decl) != 0)  return var_idx;


  // If this is simply an extern decl (not an instance)
  // (and the context is not an inner lexical block,
  // where we could be hiding an outer decl with the same name so
  // need a decl here) 
  // then we can just do nothing. 
  // externs get debug info at the point of def.
  if (TREE_CODE(decl) == VAR_DECL && 
		 DECL_EXTERNAL(decl) && !DECL_COMMON(decl)) {
      return var_idx;
  }
  // For now ignore plain declarations?
  // till we get more working
  if (TREE_CODE(decl) == VAR_DECL && (!TREE_STATIC(decl)
		 && !DECL_COMMON(decl))) {
	return var_idx ;
  }

  // is something that we want to put in DST
  // (a var defined in this file, or a type).
  // The following eliminates locals 
  //if(!TREE_PERMANENT(decl)) {
  //	// !in permanent obstack 
  //	return var_idx ;
  // }

  int tcode = TREE_CODE(decl);
  switch(tcode) {
  case VAR_DECL: {
      //Get_ST(decl);
      dst_idx = DST_Create_var(var_st,decl);
      }
      break;
  case TYPE_DECL: {
      //Get_ST(decl);
      dst_idx = DST_Create_type(var_st,decl);
      }
      break;
  case PARM_DECL: {
      //Get_ST(decl);
      dst_idx = DST_Create_Parmvar(var_st,decl);
      }
      break;
  default: {
      }
      break;
  }
  cp_to_tree_from_dst(&var_idx,&dst_idx);
  return var_idx;
}



static DST_INFO_IDX
DST_Create_type(ST *typ_decl, tree decl)
{
    USRCPOS src;
    // For now, the source location appears bogus
    // (or at least odd) for files other than the base
    // file, so lets leave it out. Temporarily.
    //USRCPOS_srcpos(src) = Get_Srcpos();


    USRCPOS_clear(src);
    DST_INFO_IDX dst_idx;
    


    char *name1 = 0; 
    if(DECL_ORIGINAL_TYPE(decl)== 0) {
      // not a typedef type.
      name1 =  Get_Name(TREE_TYPE(decl));
    } else {
      // is a typedef type
      name1 = Get_Name(DECL_ORIGINAL_TYPE(decl));
    }
  
    // FIX look in various contexts to find known types ?
    // It is not true base types that are the problem, it
    // is typedefs creating 'new types'.
    std::string names(name1);
    DST_Type_Map::iterator p =
                        basetypes.find(names);
    if(p != basetypes.end()) {
                        //Yep, already known.
        DST_INFO_IDX t = (*p).second;
        // hack so rest of gnu need know nothing of DST
        return t;
    } 

    DST_INFO_IDX current_scope_idx =
         DST_get_context(DECL_CONTEXT(decl));

    // Nope, something new. make a typedef entry.
    // First, ensure underlying type is set up.
    tree undt = DECL_RESULT(decl);
    struct mongoose_gcc_DST_IDX dst;
    TY_IDX base;

    if(!undt) {
	DevWarn ("DST no result type for typedef decl: impossible");
	return DST_INVALID_IDX;
    } 
    // Do for side effect of creating DST for base type.
    // ie, in typedef int a, ensure int is there.
    base = Get_TY(undt);
    dst = Create_DST_type_For_Tree(undt,base,/*s/u fwd decl TY_IDX=*/ 0);

    DST_INFO_IDX sub_idx;
    cp_to_dst_from_tree(&sub_idx,&dst);

    dst_idx = DST_mk_typedef( src,
                          name1,
                          sub_idx,
                          DST_INVALID_IDX);
    DST_append_child(current_scope_idx,dst_idx);
    // and add the new type to our base types map
    basetypes[names] = dst_idx;
    struct mongoose_gcc_DST_IDX mdst;
    cp_to_tree_from_dst(&mdst,&dst_idx);
    TYPE_DST_IDX(undt) = mdst;

    return dst_idx;
}

static DST_INFO_IDX
DST_Create_Parmvar(ST *var_st, tree param)
{
    USRCPOS src;
    // For now, the source location appears bogus
    // (or at least odd) for files other than the base
    // file, so lets leave it out. Temporarily.
    //USRCPOS_srcpos(src) = Get_Srcpos();

    USRCPOS_clear(src);

    DST_INFO_IDX dtype;

    DST_INFO_IDX type_idx;

    ST * st = Get_ST(param); // As a side effect,
                //parameters and the types are set in ST.
		// and in the DST
    tree type = TREE_TYPE(param);

    TY_IDX ty_idx = Get_TY(type); 


    struct mongoose_gcc_DST_IDX type_gcc_dst =
                          DECL_DST_IDX(param);
    cp_to_dst_from_tree(&dtype,&type_gcc_dst);
    return dtype;
}

static DST_INFO_IDX
DST_Create_var(ST *var_st, tree decl)
{
    USRCPOS src;
    // For now, the source location appears bogus
    // (or at least odd) for files other than the base
    // file, so lets leave it out. Temporarily.
    //USRCPOS_srcpos(src) = Get_Srcpos();

    int is_external = TREE_PUBLIC(decl);

    USRCPOS_clear(src);
    DST_INFO_IDX dst;
    DST_INFO_IDX type;


    struct mongoose_gcc_DST_IDX type_gcc_dst = 
			TYPE_DST_IDX(TREE_TYPE(decl));
    cp_to_dst_from_tree(&type,&type_gcc_dst);
    dst = DST_mk_variable(
        src,                    // srcpos
        ST_name(var_st),
        type,    // user typed type name here (typedef type perhaps).
	0,  // offset (fortran uses non zero )
        (void*) ST_st_idx(var_st), // underlying type here, not typedef.
        DST_INVALID_IDX,        // abstract origin
        FALSE,                  // is_declaration
        FALSE,                  // is_automatic
        is_external,  // is_external
	FALSE  ); // is_artificial
    // producer routines thinks we will set pc to fe ptr initially
    //DST_RESET_assoc_fe (DST_INFO_flag(DST_INFO_IDX_TO_PTR(dst)));

    DST_INFO_IDX current_scope_idx =
         DST_get_context(DECL_CONTEXT(decl));

    DST_append_child (current_scope_idx, dst);
    return dst;

}

// For each parameter decl,
// create a record and attach to the function
// it belongs to.
// 
static void
DST_enter_param_vars(tree fndecl,tree parameter_list)
{
    USRCPOS src;
    USRCPOS_srcpos(src) = Get_Srcpos();

    struct mongoose_gcc_DST_IDX  tree_parent_idx =
                DECL_DST_IDX(fndecl);
    DST_INFO_IDX parent;
    cp_to_dst_from_tree(&parent,&tree_parent_idx);

 
    tree pdecl = parameter_list;

    for(  ; pdecl; pdecl = TREE_CHAIN(pdecl)) {
      if(TREE_CODE_CLASS(TREE_CODE(pdecl)) != 'd') {
	DevWarn("parameter node not decl! tree node code %d ",
		TREE_CODE(pdecl));
      } else {
        DST_INFO_IDX param_idx;
        DST_INFO_IDX type_idx;
        BOOL is_artificial = FALSE; // FIX get this right.

	ST * st = Get_ST(pdecl); // As a side effect,
		// parameters and the types are set in ST
		// and dst

	tree type = TREE_TYPE(pdecl);
        TY_IDX ty_idx = Get_TY(type);


	struct mongoose_gcc_DST_IDX ty_tree_idx
	    = TYPE_DST_IDX(type);

	cp_to_dst_from_tree(&type_idx,&ty_tree_idx);

	char *name = Get_Name(pdecl);

	param_idx = DST_mk_formal_parameter(
		src,
		name,
		type_idx,
		(void* )ST_st_idx(st), // so backend can get location
		DST_INVALID_IDX, // not inlined
		DST_INVALID_IDX, // only applies to C++ (value)
		FALSE, // true if C++ optional param
	        FALSE, // only for C++
		is_artificial,
		/* is_declaration = */ FALSE );

	struct mongoose_gcc_DST_IDX decl_gcc_dst;
	cp_to_tree_from_dst(&decl_gcc_dst,&param_idx);

	DECL_DST_IDX(pdecl) = decl_gcc_dst;

	DST_append_child(parent,param_idx);
      }
    }
}

//
// fndecl can be 0 if this is an asm stmt treated as a function, 
// rather than being a true function.
DST_INFO_IDX
DST_Create_Subprogram (ST *func_st,tree fndecl)
{
    USRCPOS src;
    USRCPOS_srcpos(src) = Get_Srcpos();
    DST_INFO_IDX dst;
    DST_INFO_IDX ret_dst = DST_INVALID_IDX;

    DST_INFO_IDX current_scope_idx = fndecl ? 
	(DST_get_context(DECL_CONTEXT(fndecl))): 
	comp_unit_idx;



    
    BOOL isprototyped = FALSE;

    
    if(Debug_Level >= 2 && fndecl) {

	tree resdecl = DECL_RESULT(fndecl);
	tree restype = 0;
	if( resdecl) {
	   restype = TREE_TYPE(resdecl);
	}
	if(restype) {
         struct mongoose_gcc_DST_IDX ret_g_idx;
	 TY_IDX itx = Get_TY(restype);
         //ret_g_idx = Create_DST_type_For_Tree( restype,
	 //	itx,
	 //	0 ); //FIX
	 ret_g_idx = TYPE_DST_IDX(restype);

         cp_to_dst_from_tree(&ret_dst,&ret_g_idx);
	}

        tree type = TREE_TYPE(fndecl);
	if(type) {
	  tree arg_types = TYPE_ARG_TYPES(type);
	  if(arg_types) {
		isprototyped = TRUE;
	  }
	}
    }


    dst = DST_mk_subprogram(
        src,			// srcpos
        ST_name(func_st),
        ret_dst,        	// return type
        DST_INVALID_IDX,        // Index to alias for weak is set later
        (void*) ST_st_idx(func_st),  // index to fe routine for st_idx
        DW_INL_not_inlined,     // applies to C++
        DW_VIRTUALITY_none,     // applies to C++
        0,                      // vtable_elem_location
        FALSE,                  // is_declaration
        isprototyped,           // 
        ! ST_is_export_local(func_st) );  // is_external
    // producer routines thinks we will set pc to fe ptr initially
    DST_RESET_assoc_fe (DST_INFO_flag(DST_INFO_IDX_TO_PTR(dst)));
    DST_append_child (current_scope_idx, dst);


    struct mongoose_gcc_DST_IDX fn_dst_idx;
    cp_to_tree_from_dst(&fn_dst_idx,&dst);
    
    if(fndecl) {
	DECL_DST_IDX(fndecl) =  fn_dst_idx;
    }

    // Now we create the argument info itself, relying
    // on the isprototyped flag above to let us know if
    // we really should do this.
    if(isprototyped) {
       tree parms = DECL_ARGUMENTS(fndecl);
       if(!parms) {
          DevWarn("impossible arg decls -- is empty?");
       } else {
	   DST_enter_param_vars(fndecl, parms);
       }

    }

    return dst;
}

DST_INFO_IDX
DST_Get_Comp_Unit (void)
{
	return comp_unit_idx;
}

/* Look in "lexical.h" at push_input_stack() to find out about directories
 * and search paths.
*/
void
DST_build(int num_copts, /* Number of options passed to fec(c) */
	  char *copts[]) /* The array of option strings passed to fec(c) */
{
   char         *src_path, *comp_info;

   dst_initialized = TRUE;

   /* Initiate the memory system */
   DST_Init (NULL, 0);

   /* Enter the file-name as the first one in the file_list 
    * (DW_AT_name => src_path).  In the case that src_path should not
    * be an absolute path, we only need to eliminate the call to 
    * Make_Absolute_Path and we will get a path relative to the cwd.
    */

   if (Orig_Src_File_Name != NULL)
   {
     src_path = Orig_Src_File_Name;
   }
/*
   else {
     (void)DST_FILE_NUMBER(il_header.primary_source_file);
     src_path = il_header.primary_source_file->file_name;
   }
*/

   /* Get the DW_AT_comp_dir attribute (current_host_dir) */
   if (Debug_Level > 0)
   {
      int host_name_length = 0;
      
      current_host_dir = &cwd_buffer[0];
      if (gethostname(current_host_dir, MAXHOSTNAMELEN) == 0)
      {
	 /* Host name is ok */
	 host_name_length = strlen(current_host_dir);
	 current_host_dir[host_name_length] = '.';
	 if (getdomainname(&current_host_dir[host_name_length+1], 
			   MAXHOSTNAMELEN-host_name_length) == 0)
	 {
	    /* Domain name is ok */
	    host_name_length += strlen(&current_host_dir[host_name_length]);
	 }
      }
      current_host_dir[host_name_length++] = ':';  /* Prefix cwd with ':' */
      current_working_dir = &cwd_buffer[host_name_length];
   }
   else /* No debugging */
   {
      current_host_dir = NULL;
      current_working_dir = &cwd_buffer[0];
   }
   strcpy(current_working_dir, Get_Current_Working_Directory());
   if (current_working_dir == NULL) {
      perror("getcwd");
      exit(2);
   }

   /* Get the AT_producer attribute! */
   comp_info = DST_get_command_line_options(num_copts, copts);

   {
      comp_unit_idx = DST_mk_compile_unit(src_path,
					  current_host_dir,
					  comp_info, 
					  DW_LANG_C89,
					  DW_ID_case_sensitive);
   }

   free(comp_info);

   WFE_Set_Line_And_File (0, Orig_Src_File_Name);
}

void
WFE_Set_Line_And_File (UINT line, char *file)
{
	if (!dst_initialized) return;

	// split file into directory path and file name
	char *dir;
	char *file_name = drop_path(file);;
	char buf[256];
	if (file_name == file) {
		// no path
		dir = current_working_dir;
	}
	else if (strncmp(file, "./", 2) == 0) {
		// current dir
		dir = current_working_dir;
	}
	else {
		// copy specified path
		strcpy (buf, file);
		dir = drop_path(buf);	// points inside string, after slash
		--dir;			// points before slash
		*dir = '\0';		// terminate path string
		dir = buf;
	}

	current_dir = Get_Dir_Dst_Info (dir);
	current_file = Get_File_Dst_Info (file_name, current_dir);
}

