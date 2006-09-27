#include <stdint.h>

#define IN_GCC
#include <config.h> 
#include <system.h>
#include <rtl.h>
#include <target.h> 
#include <tree.h> 
#include <cpplib.h>
#include <c-pragma.h>
#undef IN_GCC 

#define ST      void

static int omp_in_pragma;
static int omp_last_token_hash;

/* assign field ids (field numbers); because of forward declarations, needs to
   call itself recursively if a nested record has not yet been processed */
void
whirl_assign_field_ids (tree rec)
{
  register tree field;
  int next_field_id;
  int fields_in_field;

  if (TYPE_WHIRL_FIELD(rec) > 0)
    return; /* already done before */

  next_field_id = 1;
  for (field = TYPE_FIELDS (rec); field; field = TREE_CHAIN (field))
    {
      DECL_WHIRL_FIELD_SET(field, next_field_id);
      fields_in_field = TYPE_WHIRL_FIELD(TREE_TYPE(field));
      if (fields_in_field == 0 &&
          (TREE_CODE(TREE_TYPE(field)) == RECORD_TYPE ||
           TREE_CODE(TREE_TYPE(field)) == UNION_TYPE ||
           TREE_CODE(TREE_TYPE(field)) == QUAL_UNION_TYPE))
        {
          whirl_assign_field_ids(TREE_TYPE(field));
          fields_in_field = TYPE_WHIRL_FIELD(TREE_TYPE(field));
        }
      next_field_id += fields_in_field + 1;
    }
  /* set the total number of field ids used in this record */
  TYPE_WHIRL_FIELD(rec) = next_field_id - 1;
}

// Find all the SYMBOL_REF's in X and mark their symbols as being referenced.
void
whirl_mark_referenced_symbols (rtx x)
{
  int i, j;
  const char *fmt;

  if (!x)
    return;

  if (GET_CODE (x) == SYMBOL_REF) {
    const char *name = XSTR (x, 0);
    const char *real_name;
    tree id;

    if (!name)
      abort();

    // Code copied from assemble_name in varasm.c.
    //STRIP_NAME_ENCODING (real_name, name);
    // avoid poisoned STRIP_NAME_ENCODING
    real_name = (* targetm.strip_name_encoding) (name);

    id = maybe_get_identifier (real_name);
    if (id)
      TREE_SYMBOL_REFERENCED (id) = 1;
    return;

  } else if (GET_CODE (x) == CALL_PLACEHOLDER) {
    rtx tem;
    for (tem = XEXP (x, 0); tem != 0; tem = NEXT_INSN (tem))
      whirl_mark_referenced_symbols (tem);
    return;
  }

  fmt = GET_RTX_FORMAT (GET_CODE (x));
  for (i = 0; i < GET_RTX_LENGTH (GET_CODE (x)); i++)
    {
      if (fmt[i] == 'e')
        whirl_mark_referenced_symbols (XEXP (x, i));
      else if (fmt[i] == 'E')
        for (j = 0; j < XVECLEN (x, i); j++)
          whirl_mark_referenced_symbols (XVECEXP (x, i, j));
    }
}

void
whirl_omp_in_pragma(const cpp_token **tokp)
{
  if (omp_last_token_hash && (*tokp)->type == CPP_NAME)
    {
      omp_last_token_hash = FALSE;
      tree name = HT_IDENT_TO_GCC_IDENT (HT_NODE ((*tokp)->val.node));
      if (TREE_CODE (name) == IDENTIFIER_NODE &&
          !strcmp (IDENTIFIER_POINTER (name), "pragma"))
        {
          *tokp = cpp_get_token (parse_in);
          omp_in_pragma = TRUE;
        }
    }
}

void
whirl_emits_asm(const char *s)
{
}

void
whirl_emits_decl(tree decl)
{
  DECL_WHIRL_IS_EMITTED(decl) = 1;
}

void
whirl_mark_weak(tree t)
{
  WFE_Mark_Weak(t);
}

void
whirl_weak_finish(tree t)
{
  WFE_Weak_Finish(t);
}

void
whirl_erase_dups(tree t)
{
}

void
whirl_resolve_dups(tree old, tree new)
{
  WFE_Resolve_Duplicate_Decls(old, new);
}

void
whirl_start_function(tree t)
{
  WFE_Start_Function(t);
}

void
whirl_finish_function(tree t)
{
  WFE_Finish_Function();
}

void
whirl_set_line_and_file(int line, const char *file)
{
  WFE_Set_Line_And_File(line, file);
}

whirl_finish_aggregate_init()
{
  WFE_Finish_Aggregate_Init();
}

void
whirl_create_st_for_tree(tree t)
{
  extern ST* Create_ST_For_Tree(tree);
  ST *st = Create_ST_For_Tree(t);
  DECL_WHIRL_ST_SET(t, st);
}

void
whirl_init_decl(tree t)
{
  WFE_Initialize_Decl (t);
}

void
whirl_decl(tree t)
{
  WFE_Decl (t);
}
