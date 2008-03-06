#include "globals.h"

#include "makename.h"

/* ARGSUSED */
extern string
get_TAG_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_TAG_array_type:
		if (ellipsis)
			return "array_type";
		else
			return "DW_TAG_array_type";
	case DW_TAG_class_type:
		if (ellipsis)
			return "class_type";
		else
			return "DW_TAG_class_type";
	case DW_TAG_entry_point:
		if (ellipsis)
			return "entry_point";
		else
			return "DW_TAG_entry_point";
	case DW_TAG_enumeration_type:
		if (ellipsis)
			return "enumeration_type";
		else
			return "DW_TAG_enumeration_type";
	case DW_TAG_formal_parameter:
		if (ellipsis)
			return "formal_parameter";
		else
			return "DW_TAG_formal_parameter";
	case DW_TAG_imported_declaration:
		if (ellipsis)
			return "imported_declaration";
		else
			return "DW_TAG_imported_declaration";
	case DW_TAG_label:
		if (ellipsis)
			return "label";
		else
			return "DW_TAG_label";
	case DW_TAG_lexical_block:
		if (ellipsis)
			return "lexical_block";
		else
			return "DW_TAG_lexical_block";
	case DW_TAG_member:
		if (ellipsis)
			return "member";
		else
			return "DW_TAG_member";
	case DW_TAG_pointer_type:
		if (ellipsis)
			return "pointer_type";
		else
			return "DW_TAG_pointer_type";
	case DW_TAG_reference_type:
		if (ellipsis)
			return "reference_type";
		else
			return "DW_TAG_reference_type";
	case DW_TAG_compile_unit:
		if (ellipsis)
			return "compile_unit";
		else
			return "DW_TAG_compile_unit";
	case DW_TAG_string_type:
		if (ellipsis)
			return "string_type";
		else
			return "DW_TAG_string_type";
	case DW_TAG_structure_type:
		if (ellipsis)
			return "structure_type";
		else
			return "DW_TAG_structure_type";
	case DW_TAG_subroutine_type:
		if (ellipsis)
			return "subroutine_type";
		else
			return "DW_TAG_subroutine_type";
	case DW_TAG_typedef:
		if (ellipsis)
			return "typedef";
		else
			return "DW_TAG_typedef";
	case DW_TAG_union_type:
		if (ellipsis)
			return "union_type";
		else
			return "DW_TAG_union_type";
	case DW_TAG_unspecified_parameters:
		if (ellipsis)
			return "unspecified_parameters";
		else
			return "DW_TAG_unspecified_parameters";
	case DW_TAG_variant:
		if (ellipsis)
			return "variant";
		else
			return "DW_TAG_variant";
	case DW_TAG_common_block:
		if (ellipsis)
			return "common_block";
		else
			return "DW_TAG_common_block";
	case DW_TAG_common_inclusion:
		if (ellipsis)
			return "common_inclusion";
		else
			return "DW_TAG_common_inclusion";
	case DW_TAG_inheritance:
		if (ellipsis)
			return "inheritance";
		else
			return "DW_TAG_inheritance";
	case DW_TAG_inlined_subroutine:
		if (ellipsis)
			return "inlined_subroutine";
		else
			return "DW_TAG_inlined_subroutine";
	case DW_TAG_module:
		if (ellipsis)
			return "module";
		else
			return "DW_TAG_module";
	case DW_TAG_ptr_to_member_type:
		if (ellipsis)
			return "ptr_to_member_type";
		else
			return "DW_TAG_ptr_to_member_type";
	case DW_TAG_set_type:
		if (ellipsis)
			return "set_type";
		else
			return "DW_TAG_set_type";
	case DW_TAG_subrange_type:
		if (ellipsis)
			return "subrange_type";
		else
			return "DW_TAG_subrange_type";
	case DW_TAG_with_stmt:
		if (ellipsis)
			return "with_stmt";
		else
			return "DW_TAG_with_stmt";
	case DW_TAG_access_declaration:
		if (ellipsis)
			return "access_declaration";
		else
			return "DW_TAG_access_declaration";
	case DW_TAG_base_type:
		if (ellipsis)
			return "base_type";
		else
			return "DW_TAG_base_type";
	case DW_TAG_catch_block:
		if (ellipsis)
			return "catch_block";
		else
			return "DW_TAG_catch_block";
	case DW_TAG_const_type:
		if (ellipsis)
			return "const_type";
		else
			return "DW_TAG_const_type";
	case DW_TAG_constant:
		if (ellipsis)
			return "constant";
		else
			return "DW_TAG_constant";
	case DW_TAG_enumerator:
		if (ellipsis)
			return "enumerator";
		else
			return "DW_TAG_enumerator";
	case DW_TAG_file_type:
		if (ellipsis)
			return "file_type";
		else
			return "DW_TAG_file_type";
	case DW_TAG_friend:
		if (ellipsis)
			return "friend";
		else
			return "DW_TAG_friend";
	case DW_TAG_namelist:
		if (ellipsis)
			return "namelist";
		else
			return "DW_TAG_namelist";
	case DW_TAG_namelist_item:
		if (ellipsis)
			return "namelist_item";
		else
			return "DW_TAG_namelist_item";
	case DW_TAG_packed_type:
		if (ellipsis)
			return "packed_type";
		else
			return "DW_TAG_packed_type";
	case DW_TAG_subprogram:
		if (ellipsis)
			return "subprogram";
		else
			return "DW_TAG_subprogram";
	case DW_TAG_template_type_parameter:
		if (ellipsis)
			return "template_type_parameter";
		else
			return "DW_TAG_template_type_parameter";
	case DW_TAG_template_value_parameter:
		if (ellipsis)
			return "template_value_parameter";
		else
			return "DW_TAG_template_value_parameter";
	case DW_TAG_thrown_type:
		if (ellipsis)
			return "thrown_type";
		else
			return "DW_TAG_thrown_type";
	case DW_TAG_try_block:
		if (ellipsis)
			return "try_block";
		else
			return "DW_TAG_try_block";
	case DW_TAG_variant_part:
		if (ellipsis)
			return "variant_part";
		else
			return "DW_TAG_variant_part";
	case DW_TAG_variable:
		if (ellipsis)
			return "variable";
		else
			return "DW_TAG_variable";
	case DW_TAG_volatile_type:
		if (ellipsis)
			return "volatile_type";
		else
			return "DW_TAG_volatile_type";
	case DW_TAG_dwarf_procedure:
		if (ellipsis)
			return "dwarf_procedure";
		else
			return "DW_TAG_dwarf_procedure";
	case DW_TAG_restrict_type:
		if (ellipsis)
			return "restrict_type";
		else
			return "DW_TAG_restrict_type";
	case DW_TAG_interface_type:
		if (ellipsis)
			return "interface_type";
		else
			return "DW_TAG_interface_type";
	case DW_TAG_namespace:
		if (ellipsis)
			return "namespace";
		else
			return "DW_TAG_namespace";
	case DW_TAG_imported_module:
		if (ellipsis)
			return "imported_module";
		else
			return "DW_TAG_imported_module";
	case DW_TAG_unspecified_type:
		if (ellipsis)
			return "unspecified_type";
		else
			return "DW_TAG_unspecified_type";
	case DW_TAG_partial_unit:
		if (ellipsis)
			return "partial_unit";
		else
			return "DW_TAG_partial_unit";
	case DW_TAG_imported_unit:
		if (ellipsis)
			return "imported_unit";
		else
			return "DW_TAG_imported_unit";
	case DW_TAG_mutable_type:
		if (ellipsis)
			return "mutable_type";
		else
			return "DW_TAG_mutable_type";
	case DW_TAG_lo_user:
		if (ellipsis)
			return "lo_user";
		else
			return "DW_TAG_lo_user";
	case DW_TAG_MIPS_loop:
		if (ellipsis)
			return "MIPS_loop";
		else
			return "DW_TAG_MIPS_loop";
	case DW_TAG_HP_array_descriptor:
		if (ellipsis)
			return "HP_array_descriptor";
		else
			return "DW_TAG_HP_array_descriptor";
	case DW_TAG_format_label:
		if (ellipsis)
			return "format_label";
		else
			return "DW_TAG_format_label";
	case DW_TAG_function_template:
		if (ellipsis)
			return "function_template";
		else
			return "DW_TAG_function_template";
	case DW_TAG_class_template:
		if (ellipsis)
			return "class_template";
		else
			return "DW_TAG_class_template";
	case DW_TAG_GNU_BINCL:
		if (ellipsis)
			return "GNU_BINCL";
		else
			return "DW_TAG_GNU_BINCL";
	case DW_TAG_GNU_EINCL:
		if (ellipsis)
			return "GNU_EINCL";
		else
			return "DW_TAG_GNU_EINCL";
	case DW_TAG_upc_shared_type:
		if (ellipsis)
			return "upc_shared_type";
		else
			return "DW_TAG_upc_shared_type";
	case DW_TAG_upc_strict_type:
		if (ellipsis)
			return "upc_strict_type";
		else
			return "DW_TAG_upc_strict_type";
	case DW_TAG_upc_relaxed_type:
		if (ellipsis)
			return "upc_relaxed_type";
		else
			return "DW_TAG_upc_relaxed_type";
	case DW_TAG_PGI_kanji_type:
		if (ellipsis)
			return "PGI_kanji_type";
		else
			return "DW_TAG_PGI_kanji_type";
	case DW_TAG_PGI_interface_block:
		if (ellipsis)
			return "PGI_interface_block";
		else
			return "DW_TAG_PGI_interface_block";
	case DW_TAG_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_TAG_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown TAG value 0x%x>",(int)val);
		 fprintf(stderr,"TAG of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_children_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_children_no:
		if (ellipsis)
			return "children_no";
		else
			return "DW_children_no";
	case DW_children_yes:
		if (ellipsis)
			return "children_yes";
		else
			return "DW_children_yes";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown children value 0x%x>",(int)val);
		 fprintf(stderr,"children of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_FORM_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_FORM_addr:
		if (ellipsis)
			return "addr";
		else
			return "DW_FORM_addr";
	case DW_FORM_block2:
		if (ellipsis)
			return "block2";
		else
			return "DW_FORM_block2";
	case DW_FORM_block4:
		if (ellipsis)
			return "block4";
		else
			return "DW_FORM_block4";
	case DW_FORM_data2:
		if (ellipsis)
			return "data2";
		else
			return "DW_FORM_data2";
	case DW_FORM_data4:
		if (ellipsis)
			return "data4";
		else
			return "DW_FORM_data4";
	case DW_FORM_data8:
		if (ellipsis)
			return "data8";
		else
			return "DW_FORM_data8";
	case DW_FORM_string:
		if (ellipsis)
			return "string";
		else
			return "DW_FORM_string";
	case DW_FORM_block:
		if (ellipsis)
			return "block";
		else
			return "DW_FORM_block";
	case DW_FORM_block1:
		if (ellipsis)
			return "block1";
		else
			return "DW_FORM_block1";
	case DW_FORM_data1:
		if (ellipsis)
			return "data1";
		else
			return "DW_FORM_data1";
	case DW_FORM_flag:
		if (ellipsis)
			return "flag";
		else
			return "DW_FORM_flag";
	case DW_FORM_sdata:
		if (ellipsis)
			return "sdata";
		else
			return "DW_FORM_sdata";
	case DW_FORM_strp:
		if (ellipsis)
			return "strp";
		else
			return "DW_FORM_strp";
	case DW_FORM_udata:
		if (ellipsis)
			return "udata";
		else
			return "DW_FORM_udata";
	case DW_FORM_ref_addr:
		if (ellipsis)
			return "ref_addr";
		else
			return "DW_FORM_ref_addr";
	case DW_FORM_ref1:
		if (ellipsis)
			return "ref1";
		else
			return "DW_FORM_ref1";
	case DW_FORM_ref2:
		if (ellipsis)
			return "ref2";
		else
			return "DW_FORM_ref2";
	case DW_FORM_ref4:
		if (ellipsis)
			return "ref4";
		else
			return "DW_FORM_ref4";
	case DW_FORM_ref8:
		if (ellipsis)
			return "ref8";
		else
			return "DW_FORM_ref8";
	case DW_FORM_ref_udata:
		if (ellipsis)
			return "ref_udata";
		else
			return "DW_FORM_ref_udata";
	case DW_FORM_indirect:
		if (ellipsis)
			return "indirect";
		else
			return "DW_FORM_indirect";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown FORM value 0x%x>",(int)val);
		 fprintf(stderr,"FORM of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_AT_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_AT_sibling:
		if (ellipsis)
			return "sibling";
		else
			return "DW_AT_sibling";
	case DW_AT_location:
		if (ellipsis)
			return "location";
		else
			return "DW_AT_location";
	case DW_AT_name:
		if (ellipsis)
			return "name";
		else
			return "DW_AT_name";
	case DW_AT_ordering:
		if (ellipsis)
			return "ordering";
		else
			return "DW_AT_ordering";
	case DW_AT_subscr_data:
		if (ellipsis)
			return "subscr_data";
		else
			return "DW_AT_subscr_data";
	case DW_AT_byte_size:
		if (ellipsis)
			return "byte_size";
		else
			return "DW_AT_byte_size";
	case DW_AT_bit_offset:
		if (ellipsis)
			return "bit_offset";
		else
			return "DW_AT_bit_offset";
	case DW_AT_bit_size:
		if (ellipsis)
			return "bit_size";
		else
			return "DW_AT_bit_size";
	case DW_AT_element_list:
		if (ellipsis)
			return "element_list";
		else
			return "DW_AT_element_list";
	case DW_AT_stmt_list:
		if (ellipsis)
			return "stmt_list";
		else
			return "DW_AT_stmt_list";
	case DW_AT_low_pc:
		if (ellipsis)
			return "low_pc";
		else
			return "DW_AT_low_pc";
	case DW_AT_high_pc:
		if (ellipsis)
			return "high_pc";
		else
			return "DW_AT_high_pc";
	case DW_AT_language:
		if (ellipsis)
			return "language";
		else
			return "DW_AT_language";
	case DW_AT_member:
		if (ellipsis)
			return "member";
		else
			return "DW_AT_member";
	case DW_AT_discr:
		if (ellipsis)
			return "discr";
		else
			return "DW_AT_discr";
	case DW_AT_discr_value:
		if (ellipsis)
			return "discr_value";
		else
			return "DW_AT_discr_value";
	case DW_AT_visibility:
		if (ellipsis)
			return "visibility";
		else
			return "DW_AT_visibility";
	case DW_AT_import:
		if (ellipsis)
			return "import";
		else
			return "DW_AT_import";
	case DW_AT_string_length:
		if (ellipsis)
			return "string_length";
		else
			return "DW_AT_string_length";
	case DW_AT_common_reference:
		if (ellipsis)
			return "common_reference";
		else
			return "DW_AT_common_reference";
	case DW_AT_comp_dir:
		if (ellipsis)
			return "comp_dir";
		else
			return "DW_AT_comp_dir";
	case DW_AT_const_value:
		if (ellipsis)
			return "const_value";
		else
			return "DW_AT_const_value";
	case DW_AT_containing_type:
		if (ellipsis)
			return "containing_type";
		else
			return "DW_AT_containing_type";
	case DW_AT_default_value:
		if (ellipsis)
			return "default_value";
		else
			return "DW_AT_default_value";
	case DW_AT_inline:
		if (ellipsis)
			return "inline";
		else
			return "DW_AT_inline";
	case DW_AT_is_optional:
		if (ellipsis)
			return "is_optional";
		else
			return "DW_AT_is_optional";
	case DW_AT_lower_bound:
		if (ellipsis)
			return "lower_bound";
		else
			return "DW_AT_lower_bound";
	case DW_AT_producer:
		if (ellipsis)
			return "producer";
		else
			return "DW_AT_producer";
	case DW_AT_prototyped:
		if (ellipsis)
			return "prototyped";
		else
			return "DW_AT_prototyped";
	case DW_AT_return_addr:
		if (ellipsis)
			return "return_addr";
		else
			return "DW_AT_return_addr";
	case DW_AT_start_scope:
		if (ellipsis)
			return "start_scope";
		else
			return "DW_AT_start_scope";
	case DW_AT_stride_size:
		if (ellipsis)
			return "stride_size";
		else
			return "DW_AT_stride_size";
	case DW_AT_upper_bound:
		if (ellipsis)
			return "upper_bound";
		else
			return "DW_AT_upper_bound";
	case DW_AT_abstract_origin:
		if (ellipsis)
			return "abstract_origin";
		else
			return "DW_AT_abstract_origin";
	case DW_AT_accessibility:
		if (ellipsis)
			return "accessibility";
		else
			return "DW_AT_accessibility";
	case DW_AT_address_class:
		if (ellipsis)
			return "address_class";
		else
			return "DW_AT_address_class";
	case DW_AT_artificial:
		if (ellipsis)
			return "artificial";
		else
			return "DW_AT_artificial";
	case DW_AT_base_types:
		if (ellipsis)
			return "base_types";
		else
			return "DW_AT_base_types";
	case DW_AT_calling_convention:
		if (ellipsis)
			return "calling_convention";
		else
			return "DW_AT_calling_convention";
	case DW_AT_count:
		if (ellipsis)
			return "count";
		else
			return "DW_AT_count";
	case DW_AT_data_member_location:
		if (ellipsis)
			return "data_member_location";
		else
			return "DW_AT_data_member_location";
	case DW_AT_decl_column:
		if (ellipsis)
			return "decl_column";
		else
			return "DW_AT_decl_column";
	case DW_AT_decl_file:
		if (ellipsis)
			return "decl_file";
		else
			return "DW_AT_decl_file";
	case DW_AT_decl_line:
		if (ellipsis)
			return "decl_line";
		else
			return "DW_AT_decl_line";
	case DW_AT_declaration:
		if (ellipsis)
			return "declaration";
		else
			return "DW_AT_declaration";
	case DW_AT_discr_list:
		if (ellipsis)
			return "discr_list";
		else
			return "DW_AT_discr_list";
	case DW_AT_encoding:
		if (ellipsis)
			return "encoding";
		else
			return "DW_AT_encoding";
	case DW_AT_external:
		if (ellipsis)
			return "external";
		else
			return "DW_AT_external";
	case DW_AT_frame_base:
		if (ellipsis)
			return "frame_base";
		else
			return "DW_AT_frame_base";
	case DW_AT_friend:
		if (ellipsis)
			return "friend";
		else
			return "DW_AT_friend";
	case DW_AT_identifier_case:
		if (ellipsis)
			return "identifier_case";
		else
			return "DW_AT_identifier_case";
	case DW_AT_macro_info:
		if (ellipsis)
			return "macro_info";
		else
			return "DW_AT_macro_info";
	case DW_AT_namelist_item:
		if (ellipsis)
			return "namelist_item";
		else
			return "DW_AT_namelist_item";
	case DW_AT_priority:
		if (ellipsis)
			return "priority";
		else
			return "DW_AT_priority";
	case DW_AT_segment:
		if (ellipsis)
			return "segment";
		else
			return "DW_AT_segment";
	case DW_AT_specification:
		if (ellipsis)
			return "specification";
		else
			return "DW_AT_specification";
	case DW_AT_static_link:
		if (ellipsis)
			return "static_link";
		else
			return "DW_AT_static_link";
	case DW_AT_type:
		if (ellipsis)
			return "type";
		else
			return "DW_AT_type";
	case DW_AT_use_location:
		if (ellipsis)
			return "use_location";
		else
			return "DW_AT_use_location";
	case DW_AT_variable_parameter:
		if (ellipsis)
			return "variable_parameter";
		else
			return "DW_AT_variable_parameter";
	case DW_AT_virtuality:
		if (ellipsis)
			return "virtuality";
		else
			return "DW_AT_virtuality";
	case DW_AT_vtable_elem_location:
		if (ellipsis)
			return "vtable_elem_location";
		else
			return "DW_AT_vtable_elem_location";
	case DW_AT_allocated:
		if (ellipsis)
			return "allocated";
		else
			return "DW_AT_allocated";
	case DW_AT_associated:
		if (ellipsis)
			return "associated";
		else
			return "DW_AT_associated";
	case DW_AT_data_location:
		if (ellipsis)
			return "data_location";
		else
			return "DW_AT_data_location";
	case DW_AT_stride:
		if (ellipsis)
			return "stride";
		else
			return "DW_AT_stride";
	case DW_AT_entry_pc:
		if (ellipsis)
			return "entry_pc";
		else
			return "DW_AT_entry_pc";
	case DW_AT_use_UTF8:
		if (ellipsis)
			return "use_UTF8";
		else
			return "DW_AT_use_UTF8";
	case DW_AT_extension:
		if (ellipsis)
			return "extension";
		else
			return "DW_AT_extension";
	case DW_AT_ranges:
		if (ellipsis)
			return "ranges";
		else
			return "DW_AT_ranges";
	case DW_AT_trampoline:
		if (ellipsis)
			return "trampoline";
		else
			return "DW_AT_trampoline";
	case DW_AT_call_column:
		if (ellipsis)
			return "call_column";
		else
			return "DW_AT_call_column";
	case DW_AT_call_file:
		if (ellipsis)
			return "call_file";
		else
			return "DW_AT_call_file";
	case DW_AT_call_line:
		if (ellipsis)
			return "call_line";
		else
			return "DW_AT_call_line";
	case DW_AT_description:
		if (ellipsis)
			return "description";
		else
			return "DW_AT_description";
	case DW_AT_HP_block_index:
		if (ellipsis)
			return "HP_block_index";
		else
			return "DW_AT_HP_block_index";
	case DW_AT_MIPS_fde:
		if (ellipsis)
			return "MIPS_fde";
		else
			return "DW_AT_MIPS_fde";
	case DW_AT_MIPS_loop_begin:
		if (ellipsis)
			return "MIPS_loop_begin";
		else
			return "DW_AT_MIPS_loop_begin";
	case DW_AT_MIPS_tail_loop_begin:
		if (ellipsis)
			return "MIPS_tail_loop_begin";
		else
			return "DW_AT_MIPS_tail_loop_begin";
	case DW_AT_MIPS_epilog_begin:
		if (ellipsis)
			return "MIPS_epilog_begin";
		else
			return "DW_AT_MIPS_epilog_begin";
	case DW_AT_MIPS_loop_unroll_factor:
		if (ellipsis)
			return "MIPS_loop_unroll_factor";
		else
			return "DW_AT_MIPS_loop_unroll_factor";
	case DW_AT_MIPS_software_pipeline_depth:
		if (ellipsis)
			return "MIPS_software_pipeline_depth";
		else
			return "DW_AT_MIPS_software_pipeline_depth";
	case DW_AT_MIPS_linkage_name:
		if (ellipsis)
			return "MIPS_linkage_name";
		else
			return "DW_AT_MIPS_linkage_name";
	case DW_AT_MIPS_stride:
		if (ellipsis)
			return "MIPS_stride";
		else
			return "DW_AT_MIPS_stride";
	case DW_AT_MIPS_abstract_name:
		if (ellipsis)
			return "MIPS_abstract_name";
		else
			return "DW_AT_MIPS_abstract_name";
	case DW_AT_MIPS_clone_origin:
		if (ellipsis)
			return "MIPS_clone_origin";
		else
			return "DW_AT_MIPS_clone_origin";
	case DW_AT_MIPS_has_inlines:
		if (ellipsis)
			return "MIPS_has_inlines";
		else
			return "DW_AT_MIPS_has_inlines";
	case DW_AT_MIPS_stride_byte:
		if (ellipsis)
			return "MIPS_stride_byte";
		else
			return "DW_AT_MIPS_stride_byte";
	case DW_AT_MIPS_stride_elem:
		if (ellipsis)
			return "MIPS_stride_elem";
		else
			return "DW_AT_MIPS_stride_elem";
	case DW_AT_MIPS_ptr_dopetype:
		if (ellipsis)
			return "MIPS_ptr_dopetype";
		else
			return "DW_AT_MIPS_ptr_dopetype";
	case DW_AT_MIPS_allocatable_dopetype:
		if (ellipsis)
			return "MIPS_allocatable_dopetype";
		else
			return "DW_AT_MIPS_allocatable_dopetype";
	case DW_AT_MIPS_assumed_shape_dopetype:
		if (ellipsis)
			return "MIPS_assumed_shape_dopetype";
		else
			return "DW_AT_MIPS_assumed_shape_dopetype";
	case DW_AT_MIPS_assumed_size:
		if (ellipsis)
			return "MIPS_assumed_size";
		else
			return "DW_AT_MIPS_assumed_size";
	case DW_AT_HP_raw_data_ptr:
		if (ellipsis)
			return "HP_raw_data_ptr";
		else
			return "DW_AT_HP_raw_data_ptr";
	case DW_AT_HP_pass_by_reference:
		if (ellipsis)
			return "HP_pass_by_reference";
		else
			return "DW_AT_HP_pass_by_reference";
	case DW_AT_HP_opt_level:
		if (ellipsis)
			return "HP_opt_level";
		else
			return "DW_AT_HP_opt_level";
	case DW_AT_HP_prof_version_id:
		if (ellipsis)
			return "HP_prof_version_id";
		else
			return "DW_AT_HP_prof_version_id";
	case DW_AT_HP_opt_flags:
		if (ellipsis)
			return "HP_opt_flags";
		else
			return "DW_AT_HP_opt_flags";
	case DW_AT_HP_cold_region_low_pc:
		if (ellipsis)
			return "HP_cold_region_low_pc";
		else
			return "DW_AT_HP_cold_region_low_pc";
	case DW_AT_HP_cold_region_high_pc:
		if (ellipsis)
			return "HP_cold_region_high_pc";
		else
			return "DW_AT_HP_cold_region_high_pc";
	case DW_AT_HP_all_variables_modifiable:
		if (ellipsis)
			return "HP_all_variables_modifiable";
		else
			return "DW_AT_HP_all_variables_modifiable";
	case DW_AT_HP_linkage_name:
		if (ellipsis)
			return "HP_linkage_name";
		else
			return "DW_AT_HP_linkage_name";
	case DW_AT_HP_prof_flags:
		if (ellipsis)
			return "HP_prof_flags";
		else
			return "DW_AT_HP_prof_flags";
	case DW_AT_sf_names:
		if (ellipsis)
			return "sf_names";
		else
			return "DW_AT_sf_names";
	case DW_AT_src_info:
		if (ellipsis)
			return "src_info";
		else
			return "DW_AT_src_info";
	case DW_AT_mac_info:
		if (ellipsis)
			return "mac_info";
		else
			return "DW_AT_mac_info";
	case DW_AT_src_coords:
		if (ellipsis)
			return "src_coords";
		else
			return "DW_AT_src_coords";
	case DW_AT_body_begin:
		if (ellipsis)
			return "body_begin";
		else
			return "DW_AT_body_begin";
	case DW_AT_body_end:
		if (ellipsis)
			return "body_end";
		else
			return "DW_AT_body_end";
	case DW_AT_GNU_vector:
		if (ellipsis)
			return "GNU_vector";
		else
			return "DW_AT_GNU_vector";
	case DW_AT_VMS_rtnbeg_pd_address:
		if (ellipsis)
			return "VMS_rtnbeg_pd_address";
		else
			return "DW_AT_VMS_rtnbeg_pd_address";
	case DW_AT_PGI_lbase:
		if (ellipsis)
			return "PGI_lbase";
		else
			return "DW_AT_PGI_lbase";
	case DW_AT_PGI_soffset:
		if (ellipsis)
			return "PGI_soffset";
		else
			return "DW_AT_PGI_soffset";
	case DW_AT_PGI_lstride:
		if (ellipsis)
			return "PGI_lstride";
		else
			return "DW_AT_PGI_lstride";
	case DW_AT_upc_threads_scaled:
		if (ellipsis)
			return "upc_threads_scaled";
		else
			return "DW_AT_upc_threads_scaled";
	case DW_AT_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_AT_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown AT value 0x%x>",(int)val);
		 fprintf(stderr,"AT of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_OP_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_OP_addr:
		if (ellipsis)
			return "addr";
		else
			return "DW_OP_addr";
	case DW_OP_deref:
		if (ellipsis)
			return "deref";
		else
			return "DW_OP_deref";
	case DW_OP_const1u:
		if (ellipsis)
			return "const1u";
		else
			return "DW_OP_const1u";
	case DW_OP_const1s:
		if (ellipsis)
			return "const1s";
		else
			return "DW_OP_const1s";
	case DW_OP_const2u:
		if (ellipsis)
			return "const2u";
		else
			return "DW_OP_const2u";
	case DW_OP_const2s:
		if (ellipsis)
			return "const2s";
		else
			return "DW_OP_const2s";
	case DW_OP_const4u:
		if (ellipsis)
			return "const4u";
		else
			return "DW_OP_const4u";
	case DW_OP_const4s:
		if (ellipsis)
			return "const4s";
		else
			return "DW_OP_const4s";
	case DW_OP_const8u:
		if (ellipsis)
			return "const8u";
		else
			return "DW_OP_const8u";
	case DW_OP_const8s:
		if (ellipsis)
			return "const8s";
		else
			return "DW_OP_const8s";
	case DW_OP_constu:
		if (ellipsis)
			return "constu";
		else
			return "DW_OP_constu";
	case DW_OP_consts:
		if (ellipsis)
			return "consts";
		else
			return "DW_OP_consts";
	case DW_OP_dup:
		if (ellipsis)
			return "dup";
		else
			return "DW_OP_dup";
	case DW_OP_drop:
		if (ellipsis)
			return "drop";
		else
			return "DW_OP_drop";
	case DW_OP_over:
		if (ellipsis)
			return "over";
		else
			return "DW_OP_over";
	case DW_OP_pick:
		if (ellipsis)
			return "pick";
		else
			return "DW_OP_pick";
	case DW_OP_swap:
		if (ellipsis)
			return "swap";
		else
			return "DW_OP_swap";
	case DW_OP_rot:
		if (ellipsis)
			return "rot";
		else
			return "DW_OP_rot";
	case DW_OP_xderef:
		if (ellipsis)
			return "xderef";
		else
			return "DW_OP_xderef";
	case DW_OP_abs:
		if (ellipsis)
			return "abs";
		else
			return "DW_OP_abs";
	case DW_OP_and:
		if (ellipsis)
			return "and";
		else
			return "DW_OP_and";
	case DW_OP_div:
		if (ellipsis)
			return "div";
		else
			return "DW_OP_div";
	case DW_OP_minus:
		if (ellipsis)
			return "minus";
		else
			return "DW_OP_minus";
	case DW_OP_mod:
		if (ellipsis)
			return "mod";
		else
			return "DW_OP_mod";
	case DW_OP_mul:
		if (ellipsis)
			return "mul";
		else
			return "DW_OP_mul";
	case DW_OP_neg:
		if (ellipsis)
			return "neg";
		else
			return "DW_OP_neg";
	case DW_OP_not:
		if (ellipsis)
			return "not";
		else
			return "DW_OP_not";
	case DW_OP_or:
		if (ellipsis)
			return "or";
		else
			return "DW_OP_or";
	case DW_OP_plus:
		if (ellipsis)
			return "plus";
		else
			return "DW_OP_plus";
	case DW_OP_plus_uconst:
		if (ellipsis)
			return "plus_uconst";
		else
			return "DW_OP_plus_uconst";
	case DW_OP_shl:
		if (ellipsis)
			return "shl";
		else
			return "DW_OP_shl";
	case DW_OP_shr:
		if (ellipsis)
			return "shr";
		else
			return "DW_OP_shr";
	case DW_OP_shra:
		if (ellipsis)
			return "shra";
		else
			return "DW_OP_shra";
	case DW_OP_xor:
		if (ellipsis)
			return "xor";
		else
			return "DW_OP_xor";
	case DW_OP_bra:
		if (ellipsis)
			return "bra";
		else
			return "DW_OP_bra";
	case DW_OP_eq:
		if (ellipsis)
			return "eq";
		else
			return "DW_OP_eq";
	case DW_OP_ge:
		if (ellipsis)
			return "ge";
		else
			return "DW_OP_ge";
	case DW_OP_gt:
		if (ellipsis)
			return "gt";
		else
			return "DW_OP_gt";
	case DW_OP_le:
		if (ellipsis)
			return "le";
		else
			return "DW_OP_le";
	case DW_OP_lt:
		if (ellipsis)
			return "lt";
		else
			return "DW_OP_lt";
	case DW_OP_ne:
		if (ellipsis)
			return "ne";
		else
			return "DW_OP_ne";
	case DW_OP_skip:
		if (ellipsis)
			return "skip";
		else
			return "DW_OP_skip";
	case DW_OP_lit0:
		if (ellipsis)
			return "lit0";
		else
			return "DW_OP_lit0";
	case DW_OP_lit1:
		if (ellipsis)
			return "lit1";
		else
			return "DW_OP_lit1";
	case DW_OP_lit2:
		if (ellipsis)
			return "lit2";
		else
			return "DW_OP_lit2";
	case DW_OP_lit3:
		if (ellipsis)
			return "lit3";
		else
			return "DW_OP_lit3";
	case DW_OP_lit4:
		if (ellipsis)
			return "lit4";
		else
			return "DW_OP_lit4";
	case DW_OP_lit5:
		if (ellipsis)
			return "lit5";
		else
			return "DW_OP_lit5";
	case DW_OP_lit6:
		if (ellipsis)
			return "lit6";
		else
			return "DW_OP_lit6";
	case DW_OP_lit7:
		if (ellipsis)
			return "lit7";
		else
			return "DW_OP_lit7";
	case DW_OP_lit8:
		if (ellipsis)
			return "lit8";
		else
			return "DW_OP_lit8";
	case DW_OP_lit9:
		if (ellipsis)
			return "lit9";
		else
			return "DW_OP_lit9";
	case DW_OP_lit10:
		if (ellipsis)
			return "lit10";
		else
			return "DW_OP_lit10";
	case DW_OP_lit11:
		if (ellipsis)
			return "lit11";
		else
			return "DW_OP_lit11";
	case DW_OP_lit12:
		if (ellipsis)
			return "lit12";
		else
			return "DW_OP_lit12";
	case DW_OP_lit13:
		if (ellipsis)
			return "lit13";
		else
			return "DW_OP_lit13";
	case DW_OP_lit14:
		if (ellipsis)
			return "lit14";
		else
			return "DW_OP_lit14";
	case DW_OP_lit15:
		if (ellipsis)
			return "lit15";
		else
			return "DW_OP_lit15";
	case DW_OP_lit16:
		if (ellipsis)
			return "lit16";
		else
			return "DW_OP_lit16";
	case DW_OP_lit17:
		if (ellipsis)
			return "lit17";
		else
			return "DW_OP_lit17";
	case DW_OP_lit18:
		if (ellipsis)
			return "lit18";
		else
			return "DW_OP_lit18";
	case DW_OP_lit19:
		if (ellipsis)
			return "lit19";
		else
			return "DW_OP_lit19";
	case DW_OP_lit20:
		if (ellipsis)
			return "lit20";
		else
			return "DW_OP_lit20";
	case DW_OP_lit21:
		if (ellipsis)
			return "lit21";
		else
			return "DW_OP_lit21";
	case DW_OP_lit22:
		if (ellipsis)
			return "lit22";
		else
			return "DW_OP_lit22";
	case DW_OP_lit23:
		if (ellipsis)
			return "lit23";
		else
			return "DW_OP_lit23";
	case DW_OP_lit24:
		if (ellipsis)
			return "lit24";
		else
			return "DW_OP_lit24";
	case DW_OP_lit25:
		if (ellipsis)
			return "lit25";
		else
			return "DW_OP_lit25";
	case DW_OP_lit26:
		if (ellipsis)
			return "lit26";
		else
			return "DW_OP_lit26";
	case DW_OP_lit27:
		if (ellipsis)
			return "lit27";
		else
			return "DW_OP_lit27";
	case DW_OP_lit28:
		if (ellipsis)
			return "lit28";
		else
			return "DW_OP_lit28";
	case DW_OP_lit29:
		if (ellipsis)
			return "lit29";
		else
			return "DW_OP_lit29";
	case DW_OP_lit30:
		if (ellipsis)
			return "lit30";
		else
			return "DW_OP_lit30";
	case DW_OP_lit31:
		if (ellipsis)
			return "lit31";
		else
			return "DW_OP_lit31";
	case DW_OP_reg0:
		if (ellipsis)
			return "reg0";
		else
			return "DW_OP_reg0";
	case DW_OP_reg1:
		if (ellipsis)
			return "reg1";
		else
			return "DW_OP_reg1";
	case DW_OP_reg2:
		if (ellipsis)
			return "reg2";
		else
			return "DW_OP_reg2";
	case DW_OP_reg3:
		if (ellipsis)
			return "reg3";
		else
			return "DW_OP_reg3";
	case DW_OP_reg4:
		if (ellipsis)
			return "reg4";
		else
			return "DW_OP_reg4";
	case DW_OP_reg5:
		if (ellipsis)
			return "reg5";
		else
			return "DW_OP_reg5";
	case DW_OP_reg6:
		if (ellipsis)
			return "reg6";
		else
			return "DW_OP_reg6";
	case DW_OP_reg7:
		if (ellipsis)
			return "reg7";
		else
			return "DW_OP_reg7";
	case DW_OP_reg8:
		if (ellipsis)
			return "reg8";
		else
			return "DW_OP_reg8";
	case DW_OP_reg9:
		if (ellipsis)
			return "reg9";
		else
			return "DW_OP_reg9";
	case DW_OP_reg10:
		if (ellipsis)
			return "reg10";
		else
			return "DW_OP_reg10";
	case DW_OP_reg11:
		if (ellipsis)
			return "reg11";
		else
			return "DW_OP_reg11";
	case DW_OP_reg12:
		if (ellipsis)
			return "reg12";
		else
			return "DW_OP_reg12";
	case DW_OP_reg13:
		if (ellipsis)
			return "reg13";
		else
			return "DW_OP_reg13";
	case DW_OP_reg14:
		if (ellipsis)
			return "reg14";
		else
			return "DW_OP_reg14";
	case DW_OP_reg15:
		if (ellipsis)
			return "reg15";
		else
			return "DW_OP_reg15";
	case DW_OP_reg16:
		if (ellipsis)
			return "reg16";
		else
			return "DW_OP_reg16";
	case DW_OP_reg17:
		if (ellipsis)
			return "reg17";
		else
			return "DW_OP_reg17";
	case DW_OP_reg18:
		if (ellipsis)
			return "reg18";
		else
			return "DW_OP_reg18";
	case DW_OP_reg19:
		if (ellipsis)
			return "reg19";
		else
			return "DW_OP_reg19";
	case DW_OP_reg20:
		if (ellipsis)
			return "reg20";
		else
			return "DW_OP_reg20";
	case DW_OP_reg21:
		if (ellipsis)
			return "reg21";
		else
			return "DW_OP_reg21";
	case DW_OP_reg22:
		if (ellipsis)
			return "reg22";
		else
			return "DW_OP_reg22";
	case DW_OP_reg23:
		if (ellipsis)
			return "reg23";
		else
			return "DW_OP_reg23";
	case DW_OP_reg24:
		if (ellipsis)
			return "reg24";
		else
			return "DW_OP_reg24";
	case DW_OP_reg25:
		if (ellipsis)
			return "reg25";
		else
			return "DW_OP_reg25";
	case DW_OP_reg26:
		if (ellipsis)
			return "reg26";
		else
			return "DW_OP_reg26";
	case DW_OP_reg27:
		if (ellipsis)
			return "reg27";
		else
			return "DW_OP_reg27";
	case DW_OP_reg28:
		if (ellipsis)
			return "reg28";
		else
			return "DW_OP_reg28";
	case DW_OP_reg29:
		if (ellipsis)
			return "reg29";
		else
			return "DW_OP_reg29";
	case DW_OP_reg30:
		if (ellipsis)
			return "reg30";
		else
			return "DW_OP_reg30";
	case DW_OP_reg31:
		if (ellipsis)
			return "reg31";
		else
			return "DW_OP_reg31";
	case DW_OP_breg0:
		if (ellipsis)
			return "breg0";
		else
			return "DW_OP_breg0";
	case DW_OP_breg1:
		if (ellipsis)
			return "breg1";
		else
			return "DW_OP_breg1";
	case DW_OP_breg2:
		if (ellipsis)
			return "breg2";
		else
			return "DW_OP_breg2";
	case DW_OP_breg3:
		if (ellipsis)
			return "breg3";
		else
			return "DW_OP_breg3";
	case DW_OP_breg4:
		if (ellipsis)
			return "breg4";
		else
			return "DW_OP_breg4";
	case DW_OP_breg5:
		if (ellipsis)
			return "breg5";
		else
			return "DW_OP_breg5";
	case DW_OP_breg6:
		if (ellipsis)
			return "breg6";
		else
			return "DW_OP_breg6";
	case DW_OP_breg7:
		if (ellipsis)
			return "breg7";
		else
			return "DW_OP_breg7";
	case DW_OP_breg8:
		if (ellipsis)
			return "breg8";
		else
			return "DW_OP_breg8";
	case DW_OP_breg9:
		if (ellipsis)
			return "breg9";
		else
			return "DW_OP_breg9";
	case DW_OP_breg10:
		if (ellipsis)
			return "breg10";
		else
			return "DW_OP_breg10";
	case DW_OP_breg11:
		if (ellipsis)
			return "breg11";
		else
			return "DW_OP_breg11";
	case DW_OP_breg12:
		if (ellipsis)
			return "breg12";
		else
			return "DW_OP_breg12";
	case DW_OP_breg13:
		if (ellipsis)
			return "breg13";
		else
			return "DW_OP_breg13";
	case DW_OP_breg14:
		if (ellipsis)
			return "breg14";
		else
			return "DW_OP_breg14";
	case DW_OP_breg15:
		if (ellipsis)
			return "breg15";
		else
			return "DW_OP_breg15";
	case DW_OP_breg16:
		if (ellipsis)
			return "breg16";
		else
			return "DW_OP_breg16";
	case DW_OP_breg17:
		if (ellipsis)
			return "breg17";
		else
			return "DW_OP_breg17";
	case DW_OP_breg18:
		if (ellipsis)
			return "breg18";
		else
			return "DW_OP_breg18";
	case DW_OP_breg19:
		if (ellipsis)
			return "breg19";
		else
			return "DW_OP_breg19";
	case DW_OP_breg20:
		if (ellipsis)
			return "breg20";
		else
			return "DW_OP_breg20";
	case DW_OP_breg21:
		if (ellipsis)
			return "breg21";
		else
			return "DW_OP_breg21";
	case DW_OP_breg22:
		if (ellipsis)
			return "breg22";
		else
			return "DW_OP_breg22";
	case DW_OP_breg23:
		if (ellipsis)
			return "breg23";
		else
			return "DW_OP_breg23";
	case DW_OP_breg24:
		if (ellipsis)
			return "breg24";
		else
			return "DW_OP_breg24";
	case DW_OP_breg25:
		if (ellipsis)
			return "breg25";
		else
			return "DW_OP_breg25";
	case DW_OP_breg26:
		if (ellipsis)
			return "breg26";
		else
			return "DW_OP_breg26";
	case DW_OP_breg27:
		if (ellipsis)
			return "breg27";
		else
			return "DW_OP_breg27";
	case DW_OP_breg28:
		if (ellipsis)
			return "breg28";
		else
			return "DW_OP_breg28";
	case DW_OP_breg29:
		if (ellipsis)
			return "breg29";
		else
			return "DW_OP_breg29";
	case DW_OP_breg30:
		if (ellipsis)
			return "breg30";
		else
			return "DW_OP_breg30";
	case DW_OP_breg31:
		if (ellipsis)
			return "breg31";
		else
			return "DW_OP_breg31";
	case DW_OP_regx:
		if (ellipsis)
			return "regx";
		else
			return "DW_OP_regx";
	case DW_OP_fbreg:
		if (ellipsis)
			return "fbreg";
		else
			return "DW_OP_fbreg";
	case DW_OP_bregx:
		if (ellipsis)
			return "bregx";
		else
			return "DW_OP_bregx";
	case DW_OP_piece:
		if (ellipsis)
			return "piece";
		else
			return "DW_OP_piece";
	case DW_OP_deref_size:
		if (ellipsis)
			return "deref_size";
		else
			return "DW_OP_deref_size";
	case DW_OP_xderef_size:
		if (ellipsis)
			return "xderef_size";
		else
			return "DW_OP_xderef_size";
	case DW_OP_nop:
		if (ellipsis)
			return "nop";
		else
			return "DW_OP_nop";
	case DW_OP_push_object_address:
		if (ellipsis)
			return "push_object_address";
		else
			return "DW_OP_push_object_address";
	case DW_OP_call2:
		if (ellipsis)
			return "call2";
		else
			return "DW_OP_call2";
	case DW_OP_call4:
		if (ellipsis)
			return "call4";
		else
			return "DW_OP_call4";
	case DW_OP_call_ref:
		if (ellipsis)
			return "call_ref";
		else
			return "DW_OP_call_ref";
	case DW_OP_GNU_push_tls_address:
		if (ellipsis)
			return "GNU_push_tls_address";
		else
			return "DW_OP_GNU_push_tls_address";
	case DW_OP_HP_is_value:
		if (ellipsis)
			return "HP_is_value";
		else
			return "DW_OP_HP_is_value";
	case DW_OP_HP_fltconst4:
		if (ellipsis)
			return "HP_fltconst4";
		else
			return "DW_OP_HP_fltconst4";
	case DW_OP_HP_fltconst8:
		if (ellipsis)
			return "HP_fltconst8";
		else
			return "DW_OP_HP_fltconst8";
	case DW_OP_HP_mod_range:
		if (ellipsis)
			return "HP_mod_range";
		else
			return "DW_OP_HP_mod_range";
	case DW_OP_HP_unmod_range:
		if (ellipsis)
			return "HP_unmod_range";
		else
			return "DW_OP_HP_unmod_range";
	case DW_OP_HP_tls:
		if (ellipsis)
			return "HP_tls";
		else
			return "DW_OP_HP_tls";
	case DW_OP_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_OP_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown OP value 0x%x>",(int)val);
		 fprintf(stderr,"OP of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_ATE_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_ATE_address:
		if (ellipsis)
			return "address";
		else
			return "DW_ATE_address";
	case DW_ATE_boolean:
		if (ellipsis)
			return "boolean";
		else
			return "DW_ATE_boolean";
	case DW_ATE_complex_float:
		if (ellipsis)
			return "complex_float";
		else
			return "DW_ATE_complex_float";
	case DW_ATE_float:
		if (ellipsis)
			return "float";
		else
			return "DW_ATE_float";
	case DW_ATE_signed:
		if (ellipsis)
			return "signed";
		else
			return "DW_ATE_signed";
	case DW_ATE_signed_char:
		if (ellipsis)
			return "signed_char";
		else
			return "DW_ATE_signed_char";
	case DW_ATE_unsigned:
		if (ellipsis)
			return "unsigned";
		else
			return "DW_ATE_unsigned";
	case DW_ATE_unsigned_char:
		if (ellipsis)
			return "unsigned_char";
		else
			return "DW_ATE_unsigned_char";
	case DW_ATE_imaginary_float:
		if (ellipsis)
			return "imaginary_float";
		else
			return "DW_ATE_imaginary_float";
	case DW_ATE_HP_float80:
		if (ellipsis)
			return "HP_float80";
		else
			return "DW_ATE_HP_float80";
	case DW_ATE_HP_complex_float80:
		if (ellipsis)
			return "HP_complex_float80";
		else
			return "DW_ATE_HP_complex_float80";
	case DW_ATE_HP_float128:
		if (ellipsis)
			return "HP_float128";
		else
			return "DW_ATE_HP_float128";
	case DW_ATE_HP_complex_float128:
		if (ellipsis)
			return "HP_complex_float128";
		else
			return "DW_ATE_HP_complex_float128";
	case DW_ATE_HP_floathpintel:
		if (ellipsis)
			return "HP_floathpintel";
		else
			return "DW_ATE_HP_floathpintel";
	case DW_ATE_HP_imaginary_float80:
		if (ellipsis)
			return "HP_imaginary_float80";
		else
			return "DW_ATE_HP_imaginary_float80";
	case DW_ATE_HP_imaginary_float128:
		if (ellipsis)
			return "HP_imaginary_float128";
		else
			return "DW_ATE_HP_imaginary_float128";
	case DW_ATE_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_ATE_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown ATE value 0x%x>",(int)val);
		 fprintf(stderr,"ATE of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_ACCESS_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_ACCESS_public:
		if (ellipsis)
			return "public";
		else
			return "DW_ACCESS_public";
	case DW_ACCESS_protected:
		if (ellipsis)
			return "protected";
		else
			return "DW_ACCESS_protected";
	case DW_ACCESS_private:
		if (ellipsis)
			return "private";
		else
			return "DW_ACCESS_private";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown ACCESS value 0x%x>",(int)val);
		 fprintf(stderr,"ACCESS of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_VIS_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_VIS_local:
		if (ellipsis)
			return "local";
		else
			return "DW_VIS_local";
	case DW_VIS_exported:
		if (ellipsis)
			return "exported";
		else
			return "DW_VIS_exported";
	case DW_VIS_qualified:
		if (ellipsis)
			return "qualified";
		else
			return "DW_VIS_qualified";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown VIS value 0x%x>",(int)val);
		 fprintf(stderr,"VIS of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_VIRTUALITY_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_VIRTUALITY_none:
		if (ellipsis)
			return "none";
		else
			return "DW_VIRTUALITY_none";
	case DW_VIRTUALITY_virtual:
		if (ellipsis)
			return "virtual";
		else
			return "DW_VIRTUALITY_virtual";
	case DW_VIRTUALITY_pure_virtual:
		if (ellipsis)
			return "pure_virtual";
		else
			return "DW_VIRTUALITY_pure_virtual";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown VIRTUALITY value 0x%x>",(int)val);
		 fprintf(stderr,"VIRTUALITY of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_LANG_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_LANG_C89:
		if (ellipsis)
			return "C89";
		else
			return "DW_LANG_C89";
	case DW_LANG_C:
		if (ellipsis)
			return "C";
		else
			return "DW_LANG_C";
	case DW_LANG_Ada83:
		if (ellipsis)
			return "Ada83";
		else
			return "DW_LANG_Ada83";
	case DW_LANG_C_plus_plus:
		if (ellipsis)
			return "C_plus_plus";
		else
			return "DW_LANG_C_plus_plus";
	case DW_LANG_Cobol74:
		if (ellipsis)
			return "Cobol74";
		else
			return "DW_LANG_Cobol74";
	case DW_LANG_Cobol85:
		if (ellipsis)
			return "Cobol85";
		else
			return "DW_LANG_Cobol85";
	case DW_LANG_Fortran77:
		if (ellipsis)
			return "Fortran77";
		else
			return "DW_LANG_Fortran77";
	case DW_LANG_Fortran90:
		if (ellipsis)
			return "Fortran90";
		else
			return "DW_LANG_Fortran90";
	case DW_LANG_Pascal83:
		if (ellipsis)
			return "Pascal83";
		else
			return "DW_LANG_Pascal83";
	case DW_LANG_Modula2:
		if (ellipsis)
			return "Modula2";
		else
			return "DW_LANG_Modula2";
	case DW_LANG_Java:
		if (ellipsis)
			return "Java";
		else
			return "DW_LANG_Java";
	case DW_LANG_C99:
		if (ellipsis)
			return "C99";
		else
			return "DW_LANG_C99";
	case DW_LANG_Ada95:
		if (ellipsis)
			return "Ada95";
		else
			return "DW_LANG_Ada95";
	case DW_LANG_Fortran95:
		if (ellipsis)
			return "Fortran95";
		else
			return "DW_LANG_Fortran95";
	case DW_LANG_PLI:
		if (ellipsis)
			return "PLI";
		else
			return "DW_LANG_PLI";
	case DW_LANG_lo_user:
		if (ellipsis)
			return "lo_user";
		else
			return "DW_LANG_lo_user";
	case DW_LANG_Mips_Assembler:
		if (ellipsis)
			return "Mips_Assembler";
		else
			return "DW_LANG_Mips_Assembler";
	case DW_LANG_Upc:
		if (ellipsis)
			return "Upc";
		else
			return "DW_LANG_Upc";
	case DW_LANG_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_LANG_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown LANG value 0x%x>",(int)val);
		 fprintf(stderr,"LANG of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_ID_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_ID_case_sensitive:
		if (ellipsis)
			return "case_sensitive";
		else
			return "DW_ID_case_sensitive";
	case DW_ID_up_case:
		if (ellipsis)
			return "up_case";
		else
			return "DW_ID_up_case";
	case DW_ID_down_case:
		if (ellipsis)
			return "down_case";
		else
			return "DW_ID_down_case";
	case DW_ID_case_insensitive:
		if (ellipsis)
			return "case_insensitive";
		else
			return "DW_ID_case_insensitive";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown ID value 0x%x>",(int)val);
		 fprintf(stderr,"ID of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_CC_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_CC_normal:
		if (ellipsis)
			return "normal";
		else
			return "DW_CC_normal";
	case DW_CC_program:
		if (ellipsis)
			return "program";
		else
			return "DW_CC_program";
	case DW_CC_nocall:
		if (ellipsis)
			return "nocall";
		else
			return "DW_CC_nocall";
	case DW_CC_lo_user:
		if (ellipsis)
			return "lo_user";
		else
			return "DW_CC_lo_user";
	case DW_CC_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_CC_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown CC value 0x%x>",(int)val);
		 fprintf(stderr,"CC of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_INL_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_INL_not_inlined:
		if (ellipsis)
			return "not_inlined";
		else
			return "DW_INL_not_inlined";
	case DW_INL_inlined:
		if (ellipsis)
			return "inlined";
		else
			return "DW_INL_inlined";
	case DW_INL_declared_not_inlined:
		if (ellipsis)
			return "declared_not_inlined";
		else
			return "DW_INL_declared_not_inlined";
	case DW_INL_declared_inlined:
		if (ellipsis)
			return "declared_inlined";
		else
			return "DW_INL_declared_inlined";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown INL value 0x%x>",(int)val);
		 fprintf(stderr,"INL of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_ORD_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_ORD_row_major:
		if (ellipsis)
			return "row_major";
		else
			return "DW_ORD_row_major";
	case DW_ORD_col_major:
		if (ellipsis)
			return "col_major";
		else
			return "DW_ORD_col_major";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown ORD value 0x%x>",(int)val);
		 fprintf(stderr,"ORD of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_DSC_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_DSC_label:
		if (ellipsis)
			return "label";
		else
			return "DW_DSC_label";
	case DW_DSC_range:
		if (ellipsis)
			return "range";
		else
			return "DW_DSC_range";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown DSC value 0x%x>",(int)val);
		 fprintf(stderr,"DSC of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_LNS_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_LNS_copy:
		if (ellipsis)
			return "copy";
		else
			return "DW_LNS_copy";
	case DW_LNS_advance_pc:
		if (ellipsis)
			return "advance_pc";
		else
			return "DW_LNS_advance_pc";
	case DW_LNS_advance_line:
		if (ellipsis)
			return "advance_line";
		else
			return "DW_LNS_advance_line";
	case DW_LNS_set_file:
		if (ellipsis)
			return "set_file";
		else
			return "DW_LNS_set_file";
	case DW_LNS_set_column:
		if (ellipsis)
			return "set_column";
		else
			return "DW_LNS_set_column";
	case DW_LNS_negate_stmt:
		if (ellipsis)
			return "negate_stmt";
		else
			return "DW_LNS_negate_stmt";
	case DW_LNS_set_basic_block:
		if (ellipsis)
			return "set_basic_block";
		else
			return "DW_LNS_set_basic_block";
	case DW_LNS_const_add_pc:
		if (ellipsis)
			return "const_add_pc";
		else
			return "DW_LNS_const_add_pc";
	case DW_LNS_fixed_advance_pc:
		if (ellipsis)
			return "fixed_advance_pc";
		else
			return "DW_LNS_fixed_advance_pc";
	case DW_LNS_set_prologue_end:
		if (ellipsis)
			return "set_prologue_end";
		else
			return "DW_LNS_set_prologue_end";
	case DW_LNS_set_epilogue_begin:
		if (ellipsis)
			return "set_epilogue_begin";
		else
			return "DW_LNS_set_epilogue_begin";
	case DW_LNS_set_isa:
		if (ellipsis)
			return "set_isa";
		else
			return "DW_LNS_set_isa";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown LNS value 0x%x>",(int)val);
		 fprintf(stderr,"LNS of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_LNE_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_LNE_end_sequence:
		if (ellipsis)
			return "end_sequence";
		else
			return "DW_LNE_end_sequence";
	case DW_LNE_set_address:
		if (ellipsis)
			return "set_address";
		else
			return "DW_LNE_set_address";
	case DW_LNE_define_file:
		if (ellipsis)
			return "define_file";
		else
			return "DW_LNE_define_file";
	case DW_LNE_HP_negate_is_UV_update:
		if (ellipsis)
			return "HP_negate_is_UV_update";
		else
			return "DW_LNE_HP_negate_is_UV_update";
	case DW_LNE_HP_push_context:
		if (ellipsis)
			return "HP_push_context";
		else
			return "DW_LNE_HP_push_context";
	case DW_LNE_HP_pop_context:
		if (ellipsis)
			return "HP_pop_context";
		else
			return "DW_LNE_HP_pop_context";
	case DW_LNE_HP_set_file_line_column:
		if (ellipsis)
			return "HP_set_file_line_column";
		else
			return "DW_LNE_HP_set_file_line_column";
	case DW_LNE_HP_set_routine_name:
		if (ellipsis)
			return "HP_set_routine_name";
		else
			return "DW_LNE_HP_set_routine_name";
	case DW_LNE_HP_set_sequence:
		if (ellipsis)
			return "HP_set_sequence";
		else
			return "DW_LNE_HP_set_sequence";
	case DW_LNE_HP_negate_post_semantics:
		if (ellipsis)
			return "HP_negate_post_semantics";
		else
			return "DW_LNE_HP_negate_post_semantics";
	case DW_LNE_HP_negate_function_exit:
		if (ellipsis)
			return "HP_negate_function_exit";
		else
			return "DW_LNE_HP_negate_function_exit";
	case DW_LNE_HP_negate_front_end_logical:
		if (ellipsis)
			return "HP_negate_front_end_logical";
		else
			return "DW_LNE_HP_negate_front_end_logical";
	case DW_LNE_HP_define_proc:
		if (ellipsis)
			return "HP_define_proc";
		else
			return "DW_LNE_HP_define_proc";
	case DW_LNE_lo_user:
		if (ellipsis)
			return "lo_user";
		else
			return "DW_LNE_lo_user";
	case DW_LNE_hi_user:
		if (ellipsis)
			return "hi_user";
		else
			return "DW_LNE_hi_user";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown LNE value 0x%x>",(int)val);
		 fprintf(stderr,"LNE of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_MACINFO_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_MACINFO_define:
		if (ellipsis)
			return "define";
		else
			return "DW_MACINFO_define";
	case DW_MACINFO_undef:
		if (ellipsis)
			return "undef";
		else
			return "DW_MACINFO_undef";
	case DW_MACINFO_start_file:
		if (ellipsis)
			return "start_file";
		else
			return "DW_MACINFO_start_file";
	case DW_MACINFO_end_file:
		if (ellipsis)
			return "end_file";
		else
			return "DW_MACINFO_end_file";
	case DW_MACINFO_vendor_ext:
		if (ellipsis)
			return "vendor_ext";
		else
			return "DW_MACINFO_vendor_ext";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown MACINFO value 0x%x>",(int)val);
		 fprintf(stderr,"MACINFO of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_FRAME_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_FRAME_CFA_COL:
		if (ellipsis)
			return "CFA_COL";
		else
			return "DW_FRAME_CFA_COL";
	case DW_FRAME_REG1:
		if (ellipsis)
			return "REG1";
		else
			return "DW_FRAME_REG1";
	case DW_FRAME_REG2:
		if (ellipsis)
			return "REG2";
		else
			return "DW_FRAME_REG2";
	case DW_FRAME_REG3:
		if (ellipsis)
			return "REG3";
		else
			return "DW_FRAME_REG3";
	case DW_FRAME_REG4:
		if (ellipsis)
			return "REG4";
		else
			return "DW_FRAME_REG4";
	case DW_FRAME_REG5:
		if (ellipsis)
			return "REG5";
		else
			return "DW_FRAME_REG5";
	case DW_FRAME_REG6:
		if (ellipsis)
			return "REG6";
		else
			return "DW_FRAME_REG6";
	case DW_FRAME_REG7:
		if (ellipsis)
			return "REG7";
		else
			return "DW_FRAME_REG7";
	case DW_FRAME_REG8:
		if (ellipsis)
			return "REG8";
		else
			return "DW_FRAME_REG8";
	case DW_FRAME_REG9:
		if (ellipsis)
			return "REG9";
		else
			return "DW_FRAME_REG9";
	case DW_FRAME_REG10:
		if (ellipsis)
			return "REG10";
		else
			return "DW_FRAME_REG10";
	case DW_FRAME_REG11:
		if (ellipsis)
			return "REG11";
		else
			return "DW_FRAME_REG11";
	case DW_FRAME_REG12:
		if (ellipsis)
			return "REG12";
		else
			return "DW_FRAME_REG12";
	case DW_FRAME_REG13:
		if (ellipsis)
			return "REG13";
		else
			return "DW_FRAME_REG13";
	case DW_FRAME_REG14:
		if (ellipsis)
			return "REG14";
		else
			return "DW_FRAME_REG14";
	case DW_FRAME_REG15:
		if (ellipsis)
			return "REG15";
		else
			return "DW_FRAME_REG15";
	case DW_FRAME_REG16:
		if (ellipsis)
			return "REG16";
		else
			return "DW_FRAME_REG16";
	case DW_FRAME_REG17:
		if (ellipsis)
			return "REG17";
		else
			return "DW_FRAME_REG17";
	case DW_FRAME_REG18:
		if (ellipsis)
			return "REG18";
		else
			return "DW_FRAME_REG18";
	case DW_FRAME_REG19:
		if (ellipsis)
			return "REG19";
		else
			return "DW_FRAME_REG19";
	case DW_FRAME_REG20:
		if (ellipsis)
			return "REG20";
		else
			return "DW_FRAME_REG20";
	case DW_FRAME_REG21:
		if (ellipsis)
			return "REG21";
		else
			return "DW_FRAME_REG21";
	case DW_FRAME_REG22:
		if (ellipsis)
			return "REG22";
		else
			return "DW_FRAME_REG22";
	case DW_FRAME_REG23:
		if (ellipsis)
			return "REG23";
		else
			return "DW_FRAME_REG23";
	case DW_FRAME_REG24:
		if (ellipsis)
			return "REG24";
		else
			return "DW_FRAME_REG24";
	case DW_FRAME_REG25:
		if (ellipsis)
			return "REG25";
		else
			return "DW_FRAME_REG25";
	case DW_FRAME_REG26:
		if (ellipsis)
			return "REG26";
		else
			return "DW_FRAME_REG26";
	case DW_FRAME_REG27:
		if (ellipsis)
			return "REG27";
		else
			return "DW_FRAME_REG27";
	case DW_FRAME_REG28:
		if (ellipsis)
			return "REG28";
		else
			return "DW_FRAME_REG28";
	case DW_FRAME_REG29:
		if (ellipsis)
			return "REG29";
		else
			return "DW_FRAME_REG29";
	case DW_FRAME_REG30:
		if (ellipsis)
			return "REG30";
		else
			return "DW_FRAME_REG30";
	case DW_FRAME_REG31:
		if (ellipsis)
			return "REG31";
		else
			return "DW_FRAME_REG31";
	case DW_FRAME_FREG0:
		if (ellipsis)
			return "FREG0";
		else
			return "DW_FRAME_FREG0";
	case DW_FRAME_FREG1:
		if (ellipsis)
			return "FREG1";
		else
			return "DW_FRAME_FREG1";
	case DW_FRAME_FREG2:
		if (ellipsis)
			return "FREG2";
		else
			return "DW_FRAME_FREG2";
	case DW_FRAME_FREG3:
		if (ellipsis)
			return "FREG3";
		else
			return "DW_FRAME_FREG3";
	case DW_FRAME_FREG4:
		if (ellipsis)
			return "FREG4";
		else
			return "DW_FRAME_FREG4";
	case DW_FRAME_FREG5:
		if (ellipsis)
			return "FREG5";
		else
			return "DW_FRAME_FREG5";
	case DW_FRAME_FREG6:
		if (ellipsis)
			return "FREG6";
		else
			return "DW_FRAME_FREG6";
	case DW_FRAME_FREG7:
		if (ellipsis)
			return "FREG7";
		else
			return "DW_FRAME_FREG7";
	case DW_FRAME_FREG8:
		if (ellipsis)
			return "FREG8";
		else
			return "DW_FRAME_FREG8";
	case DW_FRAME_FREG9:
		if (ellipsis)
			return "FREG9";
		else
			return "DW_FRAME_FREG9";
	case DW_FRAME_FREG10:
		if (ellipsis)
			return "FREG10";
		else
			return "DW_FRAME_FREG10";
	case DW_FRAME_FREG11:
		if (ellipsis)
			return "FREG11";
		else
			return "DW_FRAME_FREG11";
	case DW_FRAME_FREG12:
		if (ellipsis)
			return "FREG12";
		else
			return "DW_FRAME_FREG12";
	case DW_FRAME_FREG13:
		if (ellipsis)
			return "FREG13";
		else
			return "DW_FRAME_FREG13";
	case DW_FRAME_FREG14:
		if (ellipsis)
			return "FREG14";
		else
			return "DW_FRAME_FREG14";
	case DW_FRAME_FREG15:
		if (ellipsis)
			return "FREG15";
		else
			return "DW_FRAME_FREG15";
	case DW_FRAME_FREG16:
		if (ellipsis)
			return "FREG16";
		else
			return "DW_FRAME_FREG16";
	case DW_FRAME_FREG17:
		if (ellipsis)
			return "FREG17";
		else
			return "DW_FRAME_FREG17";
	case DW_FRAME_FREG18:
		if (ellipsis)
			return "FREG18";
		else
			return "DW_FRAME_FREG18";
	case DW_FRAME_FREG19:
		if (ellipsis)
			return "FREG19";
		else
			return "DW_FRAME_FREG19";
	case DW_FRAME_FREG20:
		if (ellipsis)
			return "FREG20";
		else
			return "DW_FRAME_FREG20";
	case DW_FRAME_FREG21:
		if (ellipsis)
			return "FREG21";
		else
			return "DW_FRAME_FREG21";
	case DW_FRAME_FREG22:
		if (ellipsis)
			return "FREG22";
		else
			return "DW_FRAME_FREG22";
	case DW_FRAME_FREG23:
		if (ellipsis)
			return "FREG23";
		else
			return "DW_FRAME_FREG23";
	case DW_FRAME_FREG24:
		if (ellipsis)
			return "FREG24";
		else
			return "DW_FRAME_FREG24";
	case DW_FRAME_FREG25:
		if (ellipsis)
			return "FREG25";
		else
			return "DW_FRAME_FREG25";
	case DW_FRAME_FREG26:
		if (ellipsis)
			return "FREG26";
		else
			return "DW_FRAME_FREG26";
	case DW_FRAME_FREG27:
		if (ellipsis)
			return "FREG27";
		else
			return "DW_FRAME_FREG27";
	case DW_FRAME_FREG28:
		if (ellipsis)
			return "FREG28";
		else
			return "DW_FRAME_FREG28";
	case DW_FRAME_FREG29:
		if (ellipsis)
			return "FREG29";
		else
			return "DW_FRAME_FREG29";
	case DW_FRAME_FREG30:
		if (ellipsis)
			return "FREG30";
		else
			return "DW_FRAME_FREG30";
	case DW_FRAME_FREG31:
		if (ellipsis)
			return "FREG31";
		else
			return "DW_FRAME_FREG31";
	case DW_FRAME_RA_COL:
		if (ellipsis)
			return "RA_COL";
		else
			return "DW_FRAME_RA_COL";
	case DW_FRAME_STATIC_LINK:
		if (ellipsis)
			return "STATIC_LINK";
		else
			return "DW_FRAME_STATIC_LINK";
	case DW_FRAME_LAST_REG_NUM:
		if (ellipsis)
			return "LAST_REG_NUM";
		else
			return "DW_FRAME_LAST_REG_NUM";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown FRAME value 0x%x>",(int)val);
		 fprintf(stderr,"FRAME of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_CHILDREN_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_CHILDREN_no:
		if (ellipsis)
			return "CHILDREN_no";
		else
			return "DW_CHILDREN_no";
	case DW_CHILDREN_yes:
		if (ellipsis)
			return "CHILDREN_yes";
		else
			return "DW_CHILDREN_yes";
	default:
		{ 
		    char buf[100]; 
		    char *n; 
		    sprintf(buf,"<Unknown CHILDREN value 0x%x>",(int)val);
		 fprintf(stderr,"CHILDREN of %d (0x%x) is unknown to dwarfdump. " 
 		 "Continuing. \n",(int)val,(int)val );  
		    n = makename(buf);
		    return n; 
		} 
	}
/*NOTREACHED*/
}

/* ARGSUSED */
extern string
get_ADDR_name (Dwarf_Debug dbg, Dwarf_Half val)
{
	switch (val) {
	case DW_ADDR_none:
		if (ellipsis)
			return "ADDR_none";
		else
			return "DW_ADDR_none";
	default:
		print_error(dbg, "get_ADDR_name unexpected value",DW_DLV_OK, err);
	}
	 return "unknown-name-dwarf-error";
}

