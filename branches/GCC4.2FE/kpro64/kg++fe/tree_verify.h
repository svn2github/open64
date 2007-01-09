#ifndef tree_verify_INCLUDED
#define tree_verify_INCLUDED

void verify_namespace(tree ns);

void verify_global_namespace(tree ns);

void verify_function(tree fn);

void verify_ctor_initializer(tree ctor);

void verify_overload(tree fn, tree ns);

void verify_const_decl(tree);

void verify_var_decl(tree);

void verify_parm_decl(tree);

void verify_field_decl(tree);

void verify_expr(tree expr);

void verify_integer_cst(tree);

void verify_string_cst(tree);

void verify_simple_string_cst(tree);

void verify_ptrmem_cst(tree);

void verify_negate_expr(tree);

void verify_bit_not_expr(tree);

void verify_truth_not_expr(tree);

void verify_incr_or_decr(tree);

void verify_addr_expr(tree);

void verify_indirect_ref(tree);

void verify_trunc_expr(tree);

void verify_float_expr(tree);

void verify_nop_expr(tree);

void verify_convert_expr(tree);

void verify_throw_expr(tree);

void verify_shift_expr(tree);

void verify_bitwise_binary_op(tree);

void verify_logical_binary_op(tree);

void verify_arithmetic_binary_op(tree);

void verify_comparison(tree);

void verify_modify_expr(tree);

void verify_component_ref(tree);

void verify_compound_expr(tree);

void verify_cond_expr(tree);

void verify_call_expr(tree);

void verify_bind_expr(tree);

void verify_constructor_expr(tree);

void verify_init_expr(tree);

void verify_save_expr(tree);

void verify_statement(tree stmt);

void verify_asm_statement(tree);

void verify_case_label(tree);

void verify_decl_statement(tree);

void verify_var_decl_statement(tree);

void verify_do_statement(tree);

void verify_for_statement(tree);

void verify_goto_statement(tree);

void verify_if_statement(tree);

void verify_return_statement(tree);

void verify_switch_statement(tree);

void verify_try_block(tree);

void verify_while_statement(tree);

void verify_compound_statement(tree stmt);

void verify_type(tree type);

void verify_integer_type(tree);

void verify_real_type(tree);

void verify_complex_type(tree);

void verify_enumeral_type(tree);

void verify_pointer_type(tree);

void verify_reference_type(tree);

void verify_function_type(tree);

void verify_method_type(tree);

void verify_function_arguments(tree);

void verify_array_type(tree);

void verify_class_type(tree);

void verify_parentless(tree);

#endif
