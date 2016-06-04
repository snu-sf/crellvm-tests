; ModuleID = 'tree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.realvaluetype = type { [3 x i64] }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.type_hash = type { i64, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.anon.0 = type { i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_vector = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_real_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.realvaluetype }
%struct.brfic_args = type { %union.tree_node*, %union.tree_node*, %struct.realvaluetype }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.tree_complex = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node*, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@tree_code_type = global [256 x i8] c"xxxxbttttttttttttttttttttcccccdddddddddrrrrrrreeeeeeeeeeexe22222222222221111112211222222221eeeeee<<<<<<<<<<<<<2<121111eeeeeee2111eeeeeeeessssseeeee\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@tree_code_length = global [256 x i32] [i32 0, i32 -1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 2, i32 2, i32 2, i32 4, i32 3, i32 3, i32 2, i32 4, i32 3, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 2, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [11 x i8] c"error_mark\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"identifier_node\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tree_list\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tree_vec\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"void_type\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"integer_type\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"real_type\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"complex_type\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"vector_type\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"enumeral_type\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"boolean_type\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"char_type\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"pointer_type\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"reference_type\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"method_type\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"file_type\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"array_type\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"set_type\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"record_type\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"union_type\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"qual_union_type\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"function_type\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"lang_type\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"integer_cst\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"real_cst\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"complex_cst\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"vector_cst\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"string_cst\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"function_decl\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"label_decl\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"const_decl\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"type_decl\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"var_decl\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"parm_decl\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"result_decl\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"field_decl\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"namespace_decl\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"component_ref\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"bit_field_ref\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"indirect_ref\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"buffer_ref\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"array_ref\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"array_range_ref\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"vtable_ref\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"compound_expr\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"modify_expr\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"init_expr\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"target_expr\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"cond_expr\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"bind_expr\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"call_expr\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"method_call_expr\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"with_cleanup_expr\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"cleanup_point_expr\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"placeholder_expr\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"with_record_expr\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"plus_expr\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"minus_expr\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"mult_expr\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"trunc_div_expr\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"ceil_div_expr\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"floor_div_expr\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"round_div_expr\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"trunc_mod_expr\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"ceil_mod_expr\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"floor_mod_expr\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"round_mod_expr\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"rdiv_expr\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"exact_div_expr\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"fix_trunc_expr\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"fix_ceil_expr\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"fix_floor_expr\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"fix_round_expr\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"float_expr\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"negate_expr\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"min_expr\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"max_expr\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"abs_expr\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"ffs_expr\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"lshift_expr\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"rshift_expr\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"lrotate_expr\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"rrotate_expr\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"bit_ior_expr\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"bit_xor_expr\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"bit_and_expr\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"bit_andtc_expr\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"bit_not_expr\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"truth_andif_expr\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"truth_orif_expr\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"truth_and_expr\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"truth_or_expr\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"truth_xor_expr\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"truth_not_expr\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"lt_expr\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"le_expr\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"gt_expr\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"ge_expr\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"eq_expr\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"ne_expr\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"unordered_expr\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"ordered_expr\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"unlt_expr\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"unle_expr\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"ungt_expr\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"unge_expr\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"uneq_expr\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"in_expr\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"set_le_expr\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"card_expr\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"range_expr\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"convert_expr\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"nop_expr\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"non_lvalue_expr\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"view_convert_expr\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"save_expr\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"unsave_expr\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"rtl_expr\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"addr_expr\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"reference_expr\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"entry_value_expr\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"fdesc_expr\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"complex_expr\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"conj_expr\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"realpart_expr\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"imagpart_expr\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"predecrement_expr\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"preincrement_expr\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"postdecrement_expr\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"postincrement_expr\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"va_arg_expr\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"try_catch_expr\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"try_finally\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"goto_subroutine\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"label_expr\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"goto_expr\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"return_expr\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"exit_expr\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"loop_expr\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"labeled_block_expr\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"exit_block_expr\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"expr_with_file_location\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"switch_expr\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"exc_ptr_expr\00", align 1
@tree_code_name = global [256 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null], align 16
@.str.147 = private unnamed_addr constant [7 x i8] c"tree.c\00", align 1
@__FUNCTION__.set_decl_assembler_name = private unnamed_addr constant [24 x i8] c"set_decl_assembler_name\00", align 1
@permanent_obstack = common global %struct.obstack zeroinitializer, align 8
@type_hash_table = common global %struct.htab* null, align 8
@global_trees = common global [51 x %union.tree_node*] zeroinitializer, align 16
@integer_types = common global [11 x %union.tree_node*] zeroinitializer, align 16
@lang_set_decl_assembler_name = common global void (%union.tree_node*)* null, align 8
@__FUNCTION__.tree_size = private unnamed_addr constant [10 x i8] c"tree_size\00", align 1
@__FUNCTION__.make_node = private unnamed_addr constant [10 x i8] c"make_node\00", align 1
@in_system_header = external global i32, align 4
@lineno = external global i32, align 4
@input_filename = external global i8*, align 8
@.str.148 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@next_decl_uid = internal global i32 0, align 4
@next_type_uid = internal global i32 1, align 4
@targetm = external global %struct.gcc_target, align 8
@make_lang_type_fn = global %union.tree_node* (i32)* @make_node, align 8
@dconst0 = external global %struct.realvaluetype, align 8
@mode_bitsize = external constant [59 x i16], align 16
@__FUNCTION__.integer_all_onesp = private unnamed_addr constant [18 x i8] c"integer_all_onesp\00", align 1
@target_flags = external global i32, align 4
@dconst1 = external global %struct.realvaluetype, align 8
@dconst2 = external global %struct.realvaluetype, align 8
@lang_hooks = external constant %struct.lang_hooks, align 8
@current_function_decl = external global %union.tree_node*, align 8
@__FUNCTION__.unsave_expr_1 = private unnamed_addr constant [14 x i8] c"unsave_expr_1\00", align 1
@lang_unsave_expr_now = common global void (%union.tree_node*)* null, align 8
@lang_unsave = common global void (%union.tree_node**)* null, align 8
@lang_unsafe_for_reeval = common global i32 (%union.tree_node*)* null, align 8
@__FUNCTION__.substitute_in_expr = private unnamed_addr constant [19 x i8] c"substitute_in_expr\00", align 1
@__FUNCTION__.stabilize_reference_1 = private unnamed_addr constant [22 x i8] c"stabilize_reference_1\00", align 1
@__FUNCTION__.build = private unnamed_addr constant [6 x i8] c"build\00", align 1
@build_expr_wfl.last_file = internal global i8* null, align 8
@build_expr_wfl.last_filenode = internal global %union.tree_node* null, align 8
@default_target_attribute_table = constant [1 x %struct.attribute_spec] zeroinitializer, align 16
@__FUNCTION__.is_attribute_p = private unnamed_addr constant [15 x i8] c"is_attribute_p\00", align 1
@__FUNCTION__.lookup_attribute = private unnamed_addr constant [17 x i8] c"lookup_attribute\00", align 1
@debug_no_type_hash = global i32 0, align 4
@__FUNCTION__.tree_low_cst = private unnamed_addr constant [13 x i8] c"tree_low_cst\00", align 1
@__FUNCTION__.simple_cst_equal = private unnamed_addr constant [17 x i8] c"simple_cst_equal\00", align 1
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@.str.149 = private unnamed_addr constant [39 x i8] c"arrays of functions are not meaningful\00", align 1
@.str.150 = private unnamed_addr constant [40 x i8] c"function return type cannot be function\00", align 1
@__FUNCTION__.build_method_type = private unnamed_addr constant [18 x i8] c"build_method_type\00", align 1
@write_symbols = external global i32, align 4
@.str.151 = private unnamed_addr constant [13 x i8] c"complex char\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"complex signed char\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"complex unsigned char\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"complex short int\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"complex short unsigned int\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"complex int\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"complex unsigned int\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"complex long int\00", align 1
@.str.159 = private unnamed_addr constant [26 x i8] c"complex long unsigned int\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"complex long long int\00", align 1
@.str.161 = private unnamed_addr constant [31 x i8] c"complex long long unsigned int\00", align 1
@__FUNCTION__.decl_type_context = private unnamed_addr constant [18 x i8] c"decl_type_context\00", align 1
@__FUNCTION__.get_callee_fndecl = private unnamed_addr constant [18 x i8] c"get_callee_fndecl\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.162 = private unnamed_addr constant [33 x i8] c"obstack %s: %u bytes, %d chunks\0A\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"\0A??? tree nodes created\0A\0A\00", align 1
@.str.164 = private unnamed_addr constant [26 x i8] c"(No per-node statistics)\0A\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"permanent_obstack\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@first_global_object_name = external global i8*, align 8
@weak_global_object_name = external global i8*, align 8
@main_input_filename = external global i8*, align 8
@.str.166 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"_GLOBAL__%s_%s\00", align 1
@__FUNCTION__.get_set_constructor_bits = private unnamed_addr constant [25 x i8] c"get_set_constructor_bits\00", align 1
@.str.169 = private unnamed_addr constant [35 x i8] c"invalid initializer for bit string\00", align 1
@tree_node_counts = common global [14 x i32] zeroinitializer, align 16
@tree_node_sizes = common global [14 x i32] zeroinitializer, align 16
@__FUNCTION__.unsave_expr_now_r = private unnamed_addr constant [18 x i8] c"unsave_expr_now_r\00", align 1
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8
@.str.170 = private unnamed_addr constant [50 x i8] c"Type hash: size %ld, %ld elements, %f collisions\0A\00", align 1
@append_random_chars.letters = internal constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16
@append_random_chars.value = internal global i64 0, align 8
@mode_unit_size = external constant [59 x i8], align 16
@mode_size = external constant [59 x i8], align 16
@.str.171 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: nounwind uwtable
define void @set_decl_assembler_name(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load7, 18
  %bf.clear8 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %4 = bitcast i48* %external_flag to i64*
  %bf.load11 = load i64, i64* %4, align 8
  %bf.lshr12 = lshr i64 %bf.load11, 8
  %bf.clear13 = and i64 %bf.lshr12, 1
  %bf.cast = trunc i64 %bf.clear13 to i32
  %tobool14 = icmp ne i32 %bf.cast, 0
  br i1 %tobool14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.9
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common16 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %public_flag, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 19
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.9, %land.lhs.true, %entry
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl21 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 8
  %7 = load %union.tree_node*, %union.tree_node** %name, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl22 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl22, i32 0, i32 14
  store %union.tree_node* %7, %union.tree_node** %assembler_name, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.set_decl_assembler_name, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @init_obstacks() #0 {
entry:
  call void @gcc_obstack_init(%struct.obstack* @permanent_obstack)
  %call = call %struct.htab* @htab_create(i64 1000, i32 (i8*)* @type_hash_hash, i32 (i8*, i8*)* @type_hash_eq, void (i8*)* null)
  store %struct.htab* %call, %struct.htab** @type_hash_table, align 8
  %0 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %1 = bitcast %struct.htab* %0 to i8*
  call void @ggc_add_deletable_htab(i8* %1, i32 (i8*)* @type_hash_marked_p, void (i8*)* @type_hash_mark)
  call void @ggc_add_tree_root(%union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i32 0), i32 51)
  call void @ggc_add_tree_root(%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i32 0), i32 11)
  store void (%union.tree_node*)* @set_decl_assembler_name, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  ret void
}

declare void @gcc_obstack_init(%struct.obstack*) #2

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type_hash_hash(i8* %item) #0 {
entry:
  %item.addr = alloca i8*, align 8
  store i8* %item, i8** %item.addr, align 8
  %0 = load i8*, i8** %item.addr, align 8
  %1 = bitcast i8* %0 to %struct.type_hash*
  %hash = getelementptr inbounds %struct.type_hash, %struct.type_hash* %1, i32 0, i32 0
  %2 = load i64, i64* %hash, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @type_hash_eq(i8* %va, i8* %vb) #0 {
entry:
  %retval = alloca i32, align 4
  %va.addr = alloca i8*, align 8
  %vb.addr = alloca i8*, align 8
  %a = alloca %struct.type_hash*, align 8
  %b = alloca %struct.type_hash*, align 8
  store i8* %va, i8** %va.addr, align 8
  store i8* %vb, i8** %vb.addr, align 8
  %0 = load i8*, i8** %va.addr, align 8
  %1 = bitcast i8* %0 to %struct.type_hash*
  store %struct.type_hash* %1, %struct.type_hash** %a, align 8
  %2 = load i8*, i8** %vb.addr, align 8
  %3 = bitcast i8* %2 to %struct.type_hash*
  store %struct.type_hash* %3, %struct.type_hash** %b, align 8
  %4 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %hash = getelementptr inbounds %struct.type_hash, %struct.type_hash* %4, i32 0, i32 0
  %5 = load i64, i64* %hash, align 8
  %6 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %hash1 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %6, i32 0, i32 0
  %7 = load i64, i64* %hash1, align 8
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type = getelementptr inbounds %struct.type_hash, %struct.type_hash* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %10 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type2 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %10, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type2, align 8
  %common3 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear, %bf.clear6
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %12 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type9 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %12, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %common10 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type11, align 8
  %15 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type12 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %15, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %common13 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %type14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %type14, align 8
  %cmp15 = icmp eq %union.tree_node* %14, %17
  br i1 %cmp15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.8
  %18 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type17 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %18, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type17, align 8
  %type18 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 4
  %20 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %21 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type19 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %21, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type19, align 8
  %type20 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %attributes21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 4
  %23 = load %union.tree_node*, %union.tree_node** %attributes21, align 8
  %call = call i32 @attribute_list_equal(%union.tree_node* %20, %union.tree_node* %23)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.16
  %24 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type23 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %24, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type23, align 8
  %type24 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i32 0, i32 7
  %26 = load i32, i32* %align, align 4
  %27 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type25 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %27, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %type26 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %align27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 7
  %29 = load i32, i32* %align27, align 4
  %cmp28 = icmp eq i32 %26, %29
  br i1 %cmp28, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %land.lhs.true.22
  %30 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type30 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %30, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type30, align 8
  %type31 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 13
  %32 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %33 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type32 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %33, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %type33 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %maxval34 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 13
  %35 = load %union.tree_node*, %union.tree_node** %maxval34, align 8
  %cmp35 = icmp eq %union.tree_node* %32, %35
  br i1 %cmp35, label %land.lhs.true.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.29
  %36 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type36 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %36, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type36, align 8
  %type37 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %maxval38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 13
  %38 = load %union.tree_node*, %union.tree_node** %maxval38, align 8
  %39 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type39 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %39, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type39, align 8
  %type40 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %maxval41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 13
  %41 = load %union.tree_node*, %union.tree_node** %maxval41, align 8
  %call42 = call i32 @tree_int_cst_equal(%union.tree_node* %38, %union.tree_node* %41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end

land.lhs.true.44:                                 ; preds = %lor.lhs.false, %land.lhs.true.29
  %42 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type45 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %42, i32 0, i32 1
  %43 = load %union.tree_node*, %union.tree_node** %type45, align 8
  %type46 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type46, i32 0, i32 12
  %44 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %45 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type47 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %45, i32 0, i32 1
  %46 = load %union.tree_node*, %union.tree_node** %type47, align 8
  %type48 = bitcast %union.tree_node* %46 to %struct.tree_type*
  %minval49 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i32 0, i32 12
  %47 = load %union.tree_node*, %union.tree_node** %minval49, align 8
  %cmp50 = icmp eq %union.tree_node* %44, %47
  br i1 %cmp50, label %land.lhs.true.60, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %land.lhs.true.44
  %48 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type52 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %48, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %type53 = bitcast %union.tree_node* %49 to %struct.tree_type*
  %minval54 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i32 0, i32 12
  %50 = load %union.tree_node*, %union.tree_node** %minval54, align 8
  %51 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type55 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %51, i32 0, i32 1
  %52 = load %union.tree_node*, %union.tree_node** %type55, align 8
  %type56 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %minval57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type56, i32 0, i32 12
  %53 = load %union.tree_node*, %union.tree_node** %minval57, align 8
  %call58 = call i32 @tree_int_cst_equal(%union.tree_node* %50, %union.tree_node* %53)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end

land.lhs.true.60:                                 ; preds = %lor.lhs.false.51, %land.lhs.true.44
  %54 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type61 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %54, i32 0, i32 1
  %55 = load %union.tree_node*, %union.tree_node** %type61, align 8
  %type62 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type62, i32 0, i32 1
  %56 = load %union.tree_node*, %union.tree_node** %values, align 8
  %57 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type63 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %57, i32 0, i32 1
  %58 = load %union.tree_node*, %union.tree_node** %type63, align 8
  %type64 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %values65 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type64, i32 0, i32 1
  %59 = load %union.tree_node*, %union.tree_node** %values65, align 8
  %cmp66 = icmp eq %union.tree_node* %56, %59
  br i1 %cmp66, label %if.then, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.60
  %60 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type68 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %60, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %type68, align 8
  %type69 = bitcast %union.tree_node* %61 to %struct.tree_type*
  %values70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %values70, align 8
  %tobool71 = icmp ne %union.tree_node* %62, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.end

land.lhs.true.72:                                 ; preds = %lor.lhs.false.67
  %63 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type73 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %63, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %type73, align 8
  %type74 = bitcast %union.tree_node* %64 to %struct.tree_type*
  %values75 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type74, i32 0, i32 1
  %65 = load %union.tree_node*, %union.tree_node** %values75, align 8
  %common76 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load78 = load i32, i32* %code77, align 8
  %bf.clear79 = and i32 %bf.load78, 255
  %cmp80 = icmp eq i32 %bf.clear79, 2
  br i1 %cmp80, label %land.lhs.true.81, label %if.end

land.lhs.true.81:                                 ; preds = %land.lhs.true.72
  %66 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type82 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %66, i32 0, i32 1
  %67 = load %union.tree_node*, %union.tree_node** %type82, align 8
  %type83 = bitcast %union.tree_node* %67 to %struct.tree_type*
  %values84 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type83, i32 0, i32 1
  %68 = load %union.tree_node*, %union.tree_node** %values84, align 8
  %tobool85 = icmp ne %union.tree_node* %68, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %69 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type87 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %69, i32 0, i32 1
  %70 = load %union.tree_node*, %union.tree_node** %type87, align 8
  %type88 = bitcast %union.tree_node* %70 to %struct.tree_type*
  %values89 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type88, i32 0, i32 1
  %71 = load %union.tree_node*, %union.tree_node** %values89, align 8
  %common90 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common90, i32 0, i32 2
  %bf.load92 = load i32, i32* %code91, align 8
  %bf.clear93 = and i32 %bf.load92, 255
  %cmp94 = icmp eq i32 %bf.clear93, 2
  br i1 %cmp94, label %land.lhs.true.95, label %if.end

land.lhs.true.95:                                 ; preds = %land.lhs.true.86
  %72 = load %struct.type_hash*, %struct.type_hash** %a, align 8
  %type96 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %72, i32 0, i32 1
  %73 = load %union.tree_node*, %union.tree_node** %type96, align 8
  %type97 = bitcast %union.tree_node* %73 to %struct.tree_type*
  %values98 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type97, i32 0, i32 1
  %74 = load %union.tree_node*, %union.tree_node** %values98, align 8
  %75 = load %struct.type_hash*, %struct.type_hash** %b, align 8
  %type99 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %75, i32 0, i32 1
  %76 = load %union.tree_node*, %union.tree_node** %type99, align 8
  %type100 = bitcast %union.tree_node* %76 to %struct.tree_type*
  %values101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type100, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %values101, align 8
  %call102 = call i32 @type_list_equal(%union.tree_node* %74, %union.tree_node* %77)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.95, %land.lhs.true.60
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.95, %land.lhs.true.86, %land.lhs.true.81, %land.lhs.true.72, %lor.lhs.false.67, %lor.lhs.false.51, %lor.lhs.false, %land.lhs.true.22, %land.lhs.true.16, %land.lhs.true.8, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare void @ggc_add_deletable_htab(i8*, i32 (i8*)*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @type_hash_marked_p(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.type_hash*
  %type1 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %2, %union.tree_node** %type, align 8
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %4 = bitcast %union.tree_node* %3 to i8*
  %call = call i32 @ggc_marked_p(i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 10
  %pointer = bitcast %union.anon.2* %symtab to i8**
  %6 = load i8*, i8** %pointer, align 8
  %tobool3 = icmp ne i8* %6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @type_hash_mark(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %a__ = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %a__, align 8
  %1 = load i8*, i8** %a__, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %a__, align 8
  %call = call i32 @ggc_set_mark(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load i8*, i8** %p.addr, align 8
  %4 = bitcast i8* %3 to %struct.type_hash*
  %type = getelementptr inbounds %struct.type_hash, %struct.type_hash* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  store %union.tree_node* %5, %union.tree_node** %t__, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp2 = icmp ne %union.tree_node* %6, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %do.body.1
  %7 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %8 = bitcast %union.tree_node* %7 to i8*
  %call3 = call i32 @ggc_set_mark(i8* %8)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.13, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %elements_used, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements, align 8
  %cmp6 = icmp uge i64 %10, %12
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %do.body.5
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 0
  %15 = load i64, i64* %num_elements8, align 8
  %mul = mul i64 2, %15
  %call9 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %13, i64 %mul)
  store %struct.varray_head_tag* %call9, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %do.body.5
  %16 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 1
  %18 = load i64, i64* %elements_used11, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %elements_used11, align 8
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %18
  store %union.tree_node* %16, %union.tree_node** %arrayidx, align 8
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.10
  br label %if.end.13

if.end.13:                                        ; preds = %do.end.12, %land.lhs.true, %do.body.1
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  ret void
}

declare void @ggc_add_tree_root(%union.tree_node**, i32) #2

; Function Attrs: nounwind uwtable
define i8* @permalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__h, align 8
  %0 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %0, %struct.obstack** %__o, align 8
  %1 = load i32, i32* %size.addr, align 4
  store i32 %1, i32* %__len, align 4
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 4
  %3 = load i8*, i8** %chunk_limit, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 3
  %5 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i32, i32* %__len, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %12, %struct.obstack** %__o1, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  %14 = load i8*, i8** %object_base, align 8
  store i8* %14, i8** %value, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free5, align 8
  %17 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %16, %17
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %20 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 6
  %22 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %24, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free18, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 1
  %29 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %30 = bitcast %struct._obstack_chunk* %29 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %30 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit22, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %35 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit30, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %37, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  store i8* %40, i8** %object_base34, align 8
  %42 = load i8*, i8** %value, align 8
  store i8* %42, i8** %tmp35
  %43 = load i8*, i8** %tmp35
  store i8* %43, i8** %tmp
  %44 = load i8*, i8** %tmp
  ret i8* %44
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @perm_calloc(i32 %nelem, i64 %size) #0 {
entry:
  %nelem.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %rval = alloca i8*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  store i32 %nelem, i32* %nelem.addr, align 4
  store i64 %size, i64* %size.addr, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__h, align 8
  %0 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %0, %struct.obstack** %__o, align 8
  %1 = load i32, i32* %nelem.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %size.addr, align 8
  %mul = mul nsw i64 %conv, %2
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %__len, align 4
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 3
  %6 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %__len, align 4
  %conv2 = sext i32 %7 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__len, align 4
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  %12 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o1, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  store i8* %15, i8** %value, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free7, align 8
  %18 = load i8*, i8** %value, align 8
  %cmp8 = icmp eq i8* %17, %18
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %21 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast13, 0
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask, align 4
  %conv15 = sext i32 %23 to i64
  %add = add nsw i64 %sub.ptr.sub14, %conv15
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %25, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free20, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 1
  %30 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %31 = bitcast %struct._obstack_chunk* %30 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %31 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 4
  %33 = load i8*, i8** %chunk_limit24, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 1
  %35 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %36 = bitcast %struct._obstack_chunk* %35 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %36 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.11
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit32, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %38, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.11
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free35, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  store i8* %41, i8** %object_base36, align 8
  %43 = load i8*, i8** %value, align 8
  store i8* %43, i8** %tmp37
  %44 = load i8*, i8** %tmp37
  store i8* %44, i8** %tmp
  %45 = load i8*, i8** %tmp
  store i8* %45, i8** %rval, align 8
  %46 = load i8*, i8** %rval, align 8
  %47 = load i32, i32* %nelem.addr, align 4
  %conv38 = sext i32 %47 to i64
  %48 = load i64, i64* %size.addr, align 8
  %mul39 = mul nsw i64 %conv38, %48
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 %mul39, i32 1, i1 false)
  %49 = load i8*, i8** %rval, align 8
  ret i8* %49
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @tree_size(%union.tree_node* %node) #0 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %length = alloca i64, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 100, label %sw.bb
    i32 116, label %sw.bb.2
    i32 98, label %sw.bb.3
    i32 114, label %sw.bb.4
    i32 101, label %sw.bb.4
    i32 115, label %sw.bb.4
    i32 60, label %sw.bb.4
    i32 49, label %sw.bb.4
    i32 50, label %sw.bb.4
    i32 99, label %sw.bb.8
    i32 120, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  store i64 208, i64* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i64 168, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i64 80, i64* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom5
  %4 = load i32, i32* %arrayidx6, align 4
  %sub = sub nsw i32 %4, 1
  %conv7 = sext i32 %sub to i64
  %mul = mul i64 %conv7, 8
  %add = add i64 40, %mul
  store i64 %add, i64* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %5, 25
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.8
  store i64 48, i64* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.8
  %6 = load i32, i32* %code, align 4
  %cmp10 = icmp eq i32 %6, 26
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 56, i64* %retval
  br label %return

if.else.13:                                       ; preds = %if.else
  %7 = load i32, i32* %code, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom14
  %8 = load i32, i32* %arrayidx15, align 4
  %conv16 = sext i32 %8 to i64
  %mul17 = mul i64 %conv16, 8
  %add18 = add i64 24, %mul17
  store i64 %add18, i64* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %9 = load i32, i32* %code, align 4
  %idxprom20 = sext i32 %9 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom20
  %10 = load i32, i32* %arrayidx21, align 4
  %conv22 = sext i32 %10 to i64
  %mul23 = mul i64 %conv22, 8
  %add24 = add i64 24, %mul23
  store i64 %add24, i64* %length, align 8
  %11 = load i32, i32* %code, align 4
  %cmp25 = icmp eq i32 %11, 3
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %sw.bb.19
  %12 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %vec = bitcast %union.tree_node* %12 to %struct.tree_vec*
  %length28 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %13 = load i32, i32* %length28, align 4
  %sub29 = sub nsw i32 %13, 1
  %conv30 = sext i32 %sub29 to i64
  %mul31 = mul i64 %conv30, 8
  %14 = load i64, i64* %length, align 8
  %add32 = add i64 %14, %mul31
  store i64 %add32, i64* %length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %sw.bb.19
  %15 = load i64, i64* %length, align 8
  store i64 %15, i64* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.tree_size, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.end, %if.else.13, %if.then.12, %if.then, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %16 = load i64, i64* %retval
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_node(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %type = alloca i32, align 4
  %length = alloca i64, align 8
  %ttmp = alloca %union.tree_node, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %type, align 4
  %2 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.make_node, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code.addr, align 4
  %common = bitcast %union.tree_node* %ttmp to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code2, align 8
  %bf.value = and i32 %3, 255
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %code2, align 8
  %call = call i64 @tree_size(%union.tree_node* %ttmp)
  store i64 %call, i64* %length, align 8
  %4 = load i64, i64* %length, align 8
  %call3 = call i8* @ggc_alloc(i64 %4)
  %5 = bitcast i8* %call3 to %union.tree_node*
  store %union.tree_node* %5, %union.tree_node** %t, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %7 = bitcast %union.tree_node* %6 to i8*
  %8 = load i64, i64* %length, align 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %8, i32 1, i1 false)
  %9 = load i32, i32* %code.addr, align 4
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common4 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.value7 = and i32 %9, 255
  %bf.clear8 = and i32 %bf.load6, -256
  %bf.set9 = or i32 %bf.clear8, %bf.value7
  store i32 %bf.set9, i32* %code5, align 8
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.epilog.67 [
    i32 115, label %sw.bb
    i32 100, label %sw.bb.16
    i32 116, label %sw.bb.36
    i32 99, label %sw.bb.55
    i32 101, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common10 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %side_effects_flag, align 8
  %bf.clear12 = and i32 %bf.load11, -257
  %bf.set13 = or i32 %bf.clear12, 256
  store i32 %bf.set13, i32* %side_effects_flag, align 8
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common14 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  store %union.tree_node* %13, %union.tree_node** %type15, align 8
  br label %sw.epilog.67

sw.bb.16:                                         ; preds = %if.end
  %15 = load i32, i32* %code.addr, align 4
  %cmp17 = icmp ne i32 %15, 30
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %sw.bb.16
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %17 = bitcast %struct.anon.0* %a to i32*
  %bf.load20 = load i32, i32* %17, align 4
  %bf.clear21 = and i32 %bf.load20, -16777216
  %bf.set22 = or i32 %bf.clear21, 1
  store i32 %bf.set22, i32* %17, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %sw.bb.16
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl24 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %user_align = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl24, i32 0, i32 5
  %19 = bitcast i48* %user_align to i64*
  %bf.load25 = load i64, i64* %19, align 8
  %bf.clear26 = and i64 %bf.load25, -34359738369
  store i64 %bf.clear26, i64* %19, align 8
  %20 = load i32, i32* @in_system_header, align 4
  %21 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl27 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %in_system_header_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl27, i32 0, i32 5
  %22 = bitcast i48* %in_system_header_flag to i64*
  %23 = zext i32 %20 to i64
  %bf.load28 = load i64, i64* %22, align 8
  %bf.value29 = and i64 %23, 1
  %bf.shl = shl i64 %bf.value29, 16
  %bf.clear30 = and i64 %bf.load28, -65537
  %bf.set31 = or i64 %bf.clear30, %bf.shl
  store i64 %bf.set31, i64* %22, align 8
  %bf.result.cast = trunc i64 %bf.value29 to i32
  %24 = load i32, i32* @lineno, align 4
  %25 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl32 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl32, i32 0, i32 2
  store i32 %24, i32* %linenum, align 4
  %26 = load i8*, i8** @input_filename, align 8
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %27 = load i8*, i8** @input_filename, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %27, %cond.true ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.148, i32 0, i32 0), %cond.false ]
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl33 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 1
  store i8* %cond, i8** %filename, align 8
  %29 = load i32, i32* @next_decl_uid, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* @next_decl_uid, align 4
  %30 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl34 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %uid = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 3
  store i32 %29, i32* %uid, align 4
  %31 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl35 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %pointer_alias_set = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl35, i32 0, i32 23
  store i64 -1, i64* %pointer_alias_set, align 8
  br label %sw.epilog.67

sw.bb.36:                                         ; preds = %if.end
  %32 = load i32, i32* @next_type_uid, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* @next_type_uid, align 4
  %33 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type38 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %uid39 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type38, i32 0, i32 5
  store i32 %32, i32* %uid39, align 4
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %tobool40 = icmp ne %union.tree_node* %34, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %sw.bb.36
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %type42 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type42, i32 0, i32 7
  %36 = load i32, i32* %align, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %sw.bb.36
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi i32 [ %36, %cond.true.41 ], [ 0, %cond.false.43 ]
  %37 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type46 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %align47 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type46, i32 0, i32 7
  store i32 %cond45, i32* %align47, align 4
  %38 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type48 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %user_align49 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i32 0, i32 6
  %bf.load50 = load i32, i32* %user_align49, align 4
  %bf.clear51 = and i32 %bf.load50, 2147483647
  store i32 %bf.clear51, i32* %user_align49, align 4
  %39 = load %union.tree_node*, %union.tree_node** %t, align 8
  %40 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type52 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type52, i32 0, i32 15
  store %union.tree_node* %39, %union.tree_node** %main_variant, align 8
  %41 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type53 = bitcast %union.tree_node* %41 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i32 0, i32 4
  store %union.tree_node* null, %union.tree_node** %attributes, align 8
  %42 = load void (%union.tree_node*)*, void (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 6), align 8
  %43 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void %42(%union.tree_node* %43)
  %44 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type54 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %alias_set = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type54, i32 0, i32 18
  store i64 -1, i64* %alias_set, align 8
  br label %sw.epilog.67

sw.bb.55:                                         ; preds = %if.end
  %45 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common56 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load57 = load i32, i32* %constant_flag, align 8
  %bf.clear58 = and i32 %bf.load57, -513
  %bf.set59 = or i32 %bf.clear58, 512
  store i32 %bf.set59, i32* %constant_flag, align 8
  br label %sw.epilog.67

sw.bb.60:                                         ; preds = %if.end
  %46 = load i32, i32* %code.addr, align 4
  switch i32 %46, label %sw.default [
    i32 49, label %sw.bb.61
    i32 48, label %sw.bb.61
    i32 133, label %sw.bb.61
    i32 120, label %sw.bb.61
    i32 129, label %sw.bb.61
    i32 130, label %sw.bb.61
    i32 131, label %sw.bb.61
    i32 132, label %sw.bb.61
  ]

sw.bb.61:                                         ; preds = %sw.bb.60, %sw.bb.60, %sw.bb.60, %sw.bb.60, %sw.bb.60, %sw.bb.60, %sw.bb.60, %sw.bb.60
  %47 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common62 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %side_effects_flag63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %side_effects_flag63, align 8
  %bf.clear65 = and i32 %bf.load64, -257
  %bf.set66 = or i32 %bf.clear65, 256
  store i32 %bf.set66, i32* %side_effects_flag63, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %if.end, %sw.epilog, %sw.bb.55, %cond.end.44, %cond.end, %sw.bb
  %48 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %48
}

declare i8* @ggc_alloc(i64) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_lang_type(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load %union.tree_node* (i32)*, %union.tree_node* (i32)** @make_lang_type_fn, align 8
  %1 = load i32, i32* %code.addr, align 4
  %call = call %union.tree_node* %0(i32 %1)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @copy_node(%union.tree_node* %node) #0 {
entry:
  %node.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %length = alloca i64, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %call = call i64 @tree_size(%union.tree_node* %1)
  store i64 %call, i64* %length, align 8
  %2 = load i64, i64* %length, align 8
  %call2 = call i8* @ggc_alloc(i64 %2)
  %3 = bitcast i8* %call2 to %union.tree_node*
  store %union.tree_node* %3, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %5 = bitcast %union.tree_node* %4 to i8*
  %6 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %7 = bitcast %union.tree_node* %6 to i8*
  %8 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %8, i32 8, i1 false)
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common3 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common4 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %asm_written_flag, align 8
  %bf.clear6 = and i32 %bf.load5, -16385
  store i32 %bf.clear6, i32* %asm_written_flag, align 8
  %11 = load i32, i32* %code, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, i32* @next_decl_uid, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @next_decl_uid, align 4
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %uid = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 3
  store i32 %13, i32* %uid, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom8
  %16 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 116
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %17 = load i32, i32* @next_type_uid, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* @next_type_uid, align 4
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type = bitcast %union.tree_node* %18 to %struct.tree_type*
  %uid15 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 5
  store i32 %17, i32* %uid15, align 4
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type16 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 10
  %pointer = bitcast %union.anon.2* %symtab to i8**
  store i8* null, i8** %pointer, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type17 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %symtab18 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type17, i32 0, i32 10
  %address = bitcast %union.anon.2* %symtab18 to i32*
  store i32 0, i32* %address, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %21 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %21
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %union.tree_node* @copy_list(%union.tree_node* %list) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  %head = alloca %union.tree_node*, align 8
  %prev = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node*, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %call = call %union.tree_node* @copy_node(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %prev, align 8
  store %union.tree_node* %call, %union.tree_node** %head, align 8
  %2 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %3, %union.tree_node** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %next, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %next, align 8
  %call1 = call %union.tree_node* @copy_node(%union.tree_node* %5)
  %6 = load %union.tree_node*, %union.tree_node** %prev, align 8
  %common2 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  store %union.tree_node* %call1, %union.tree_node** %chain3, align 8
  %7 = load %union.tree_node*, %union.tree_node** %prev, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain5, align 8
  store %union.tree_node* %8, %union.tree_node** %prev, align 8
  %9 = load %union.tree_node*, %union.tree_node** %next, align 8
  %common6 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain7, align 8
  store %union.tree_node* %10, %union.tree_node** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %union.tree_node*, %union.tree_node** %head, align 8
  store %union.tree_node* %11, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %12 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %12
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_int_2_wide(i64 %low, i64 %hi) #0 {
entry:
  %low.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %t = alloca %union.tree_node*, align 8
  store i64 %low, i64* %low.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  %call = call %union.tree_node* @make_node(i32 25)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load i64, i64* %low.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst = bitcast %union.tree_node* %1 to %struct.tree_int_cst*
  %int_cst1 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low2 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1, i32 0, i32 0
  store i64 %0, i64* %low2, align 8
  %2 = load i64, i64* %hi.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst3 = bitcast %union.tree_node* %3 to %struct.tree_int_cst*
  %int_cst4 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst3, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst4, i32 0, i32 1
  store i64 %2, i64* %high, align 8
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %4, %union.tree_node** %type, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %6
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_vector(%union.tree_node* %type, %union.tree_node* %vals) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %vals.addr = alloca %union.tree_node*, align 8
  %v = alloca %union.tree_node*, align 8
  %over1 = alloca i32, align 4
  %over2 = alloca i32, align 4
  %link = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %vals, %union.tree_node** %vals.addr, align 8
  %call = call %union.tree_node* @make_node(i32 28)
  store %union.tree_node* %call, %union.tree_node** %v, align 8
  store i32 0, i32* %over1, align 4
  store i32 0, i32* %over2, align 4
  %0 = load %union.tree_node*, %union.tree_node** %vals.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %v, align 8
  %vector = bitcast %union.tree_node* %1 to %struct.tree_vector*
  %elements = getelementptr inbounds %struct.tree_vector, %struct.tree_vector* %vector, i32 0, i32 2
  store %union.tree_node* %0, %union.tree_node** %elements, align 8
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %2, %union.tree_node** %type1, align 8
  %4 = load %union.tree_node*, %union.tree_node** %vals.addr, align 8
  store %union.tree_node* %4, %union.tree_node** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool = icmp ne %union.tree_node* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %7, %union.tree_node** %value, align 8
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common3 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %9 = load i32, i32* %over1, align 4
  %or = or i32 %9, %bf.clear
  store i32 %or, i32* %over1, align 4
  %10 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common4 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %static_flag, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 18
  %bf.clear7 = and i32 %bf.lshr6, 1
  %11 = load i32, i32* %over2, align 4
  %or8 = or i32 %11, %bf.clear7
  store i32 %or8, i32* %over2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common9 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %13, %union.tree_node** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %over1, align 4
  %15 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common10 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %public_flag11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %public_flag11, align 8
  %bf.value = and i32 %14, 1
  %bf.shl = shl i32 %bf.value, 19
  %bf.clear13 = and i32 %bf.load12, -524289
  %bf.set = or i32 %bf.clear13, %bf.shl
  store i32 %bf.set, i32* %public_flag11, align 8
  %16 = load i32, i32* %over2, align 4
  %17 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common14 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %static_flag15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %static_flag15, align 8
  %bf.value17 = and i32 %16, 1
  %bf.shl18 = shl i32 %bf.value17, 18
  %bf.clear19 = and i32 %bf.load16, -262145
  %bf.set20 = or i32 %bf.clear19, %bf.shl18
  store i32 %bf.set20, i32* %static_flag15, align 8
  %18 = load %union.tree_node*, %union.tree_node** %v, align 8
  ret %union.tree_node* %18
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_real(%union.tree_node* %type, %struct.realvaluetype* byval align 8 %d) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %v = alloca %union.tree_node*, align 8
  %overflow = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 0, i32* %overflow, align 4
  %call = call %union.tree_node* @make_node(i32 26)
  store %union.tree_node* %call, %union.tree_node** %v, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %type1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %v, align 8
  %real_cst = bitcast %union.tree_node* %2 to %struct.tree_real_cst*
  %real_cst2 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %3 = bitcast %struct.realvaluetype* %real_cst2 to i8*
  %4 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  %5 = load i32, i32* %overflow, align 4
  %6 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %static_flag, align 8
  %bf.value = and i32 %5, 1
  %bf.shl = shl i32 %bf.value, 18
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %static_flag, align 8
  %7 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %public_flag, align 8
  %bf.value6 = and i32 %bf.value, 1
  %bf.shl7 = shl i32 %bf.value6, 19
  %bf.clear8 = and i32 %bf.load5, -524289
  %bf.set9 = or i32 %bf.clear8, %bf.shl7
  store i32 %bf.set9, i32* %public_flag, align 8
  %8 = load %union.tree_node*, %union.tree_node** %v, align 8
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define void @real_value_from_int_cst(%struct.realvaluetype* noalias sret %agg.result, %union.tree_node* %type, %union.tree_node* %i) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %i.addr = alloca %union.tree_node*, align 8
  %d = alloca %struct.realvaluetype, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %i, %union.tree_node** %i.addr, align 8
  %0 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 1, i1 false)
  %1 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %int_cst = bitcast %union.tree_node* %3 to %struct.tree_int_cst*
  %int_cst3 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst3, i32 0, i32 0
  %4 = load i64, i64* %low, align 8
  %5 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %int_cst4 = bitcast %union.tree_node* %5 to %struct.tree_int_cst*
  %int_cst5 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst4, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst5, i32 0, i32 1
  %6 = load i64, i64* %high, align 8
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type6 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load7 = load i32, i32* %mode, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 9
  %bf.clear9 = and i32 %bf.lshr8, 127
  call void @ereal_from_int(%struct.realvaluetype* %d, i64 %4, i64 %6, i32 %bf.clear9)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %int_cst10 = bitcast %union.tree_node* %8 to %struct.tree_int_cst*
  %int_cst11 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst10, i32 0, i32 2
  %low12 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst11, i32 0, i32 0
  %9 = load i64, i64* %low12, align 8
  %10 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %int_cst13 = bitcast %union.tree_node* %10 to %struct.tree_int_cst*
  %int_cst14 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst13, i32 0, i32 2
  %high15 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst14, i32 0, i32 1
  %11 = load i64, i64* %high15, align 8
  %12 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type16 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %mode17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 6
  %bf.load18 = load i32, i32* %mode17, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 9
  %bf.clear20 = and i32 %bf.lshr19, 127
  call void @ereal_from_uint(%struct.realvaluetype* %d, i64 %9, i64 %11, i32 %bf.clear20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = bitcast %struct.realvaluetype* %agg.result to i8*
  %14 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 8, i1 false)
  ret void
}

declare void @ereal_from_int(%struct.realvaluetype*, i64, i64, i32) #2

declare void @ereal_from_uint(%struct.realvaluetype*, i64, i64, i32) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_real_from_int_cst(%union.tree_node* %type, %union.tree_node* %i) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %i.addr = alloca %union.tree_node*, align 8
  %v = alloca %union.tree_node*, align 8
  %overflow = alloca i32, align 4
  %d = alloca %struct.realvaluetype, align 8
  %args = alloca %struct.brfic_args, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %i, %union.tree_node** %i.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  store i32 %bf.clear, i32* %overflow, align 4
  %call = call %union.tree_node* @make_node(i32 26)
  store %union.tree_node* %call, %union.tree_node** %v, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common1 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  store %union.tree_node* %1, %union.tree_node** %type2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type3 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %args, i32 0, i32 0
  store %union.tree_node* %3, %union.tree_node** %type3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %i.addr, align 8
  %i4 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %args, i32 0, i32 1
  store %union.tree_node* %4, %union.tree_node** %i4, align 8
  %5 = bitcast %struct.brfic_args* %args to i8*
  %call5 = call i32 @do_float_handler(void (i8*)* @build_real_from_int_cst_1, i8* %5)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %d6 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %args, i32 0, i32 2
  %6 = bitcast %struct.realvaluetype* %d to i8*
  %7 = bitcast %struct.realvaluetype* %d6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.realvaluetype* @dconst0 to i8*), i64 24, i32 8, i1 false)
  store i32 1, i32* %overflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %union.tree_node*, %union.tree_node** %v, align 8
  %real_cst = bitcast %union.tree_node* %9 to %struct.tree_real_cst*
  %real_cst7 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %10 = bitcast %struct.realvaluetype* %real_cst7 to i8*
  %11 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  %12 = load i32, i32* %overflow, align 4
  %13 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common8 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load9 = load i32, i32* %static_flag, align 8
  %bf.value = and i32 %12, 1
  %bf.shl = shl i32 %bf.value, 18
  %bf.clear10 = and i32 %bf.load9, -262145
  %bf.set = or i32 %bf.clear10, %bf.shl
  store i32 %bf.set, i32* %static_flag, align 8
  %14 = load %union.tree_node*, %union.tree_node** %v, align 8
  %common11 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %public_flag12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %public_flag12, align 8
  %bf.value14 = and i32 %bf.value, 1
  %bf.shl15 = shl i32 %bf.value14, 19
  %bf.clear16 = and i32 %bf.load13, -524289
  %bf.set17 = or i32 %bf.clear16, %bf.shl15
  store i32 %bf.set17, i32* %public_flag12, align 8
  %15 = load %union.tree_node*, %union.tree_node** %v, align 8
  ret %union.tree_node* %15
}

declare i32 @do_float_handler(void (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @build_real_from_int_cst_1(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca %struct.brfic_args*, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.brfic_args*
  store %struct.brfic_args* %1, %struct.brfic_args** %args, align 8
  %2 = load %struct.brfic_args*, %struct.brfic_args** %args, align 8
  %d = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %2, i32 0, i32 2
  %3 = load %struct.brfic_args*, %struct.brfic_args** %args, align 8
  %type = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %3, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %5 = load %struct.brfic_args*, %struct.brfic_args** %args, align 8
  %i = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %5, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %i, align 8
  call void @real_value_from_int_cst(%struct.realvaluetype* sret %tmp, %union.tree_node* %4, %union.tree_node* %6)
  %7 = bitcast %struct.realvaluetype* %d to i8*
  %8 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_string(i32 %len, i8* %str) #0 {
entry:
  %len.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %s = alloca %union.tree_node*, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %call = call %union.tree_node* @make_node(i32 29)
  store %union.tree_node* %call, %union.tree_node** %s, align 8
  %0 = load i32, i32* %len.addr, align 4
  %1 = load %union.tree_node*, %union.tree_node** %s, align 8
  %string = bitcast %union.tree_node* %1 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  store i32 %0, i32* %length, align 4
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call1 = call i8* @ggc_alloc_string(i8* %2, i32 %3)
  %4 = load %union.tree_node*, %union.tree_node** %s, align 8
  %string2 = bitcast %union.tree_node* %4 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string2, i32 0, i32 3
  store i8* %call1, i8** %pointer, align 8
  %5 = load %union.tree_node*, %union.tree_node** %s, align 8
  ret %union.tree_node* %5
}

declare i8* @ggc_alloc_string(i8*, i32) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_complex(%union.tree_node* %type, %union.tree_node* %real, %union.tree_node* %imag) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %real.addr = alloca %union.tree_node*, align 8
  %imag.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %real, %union.tree_node** %real.addr, align 8
  store %union.tree_node* %imag, %union.tree_node** %imag.addr, align 8
  %call = call %union.tree_node* @make_node(i32 27)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %real.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %complex = bitcast %union.tree_node* %1 to %struct.tree_complex*
  %real1 = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  store %union.tree_node* %0, %union.tree_node** %real1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %imag.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %complex2 = bitcast %union.tree_node* %3 to %struct.tree_complex*
  %imag3 = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex2, i32 0, i32 3
  store %union.tree_node* %2, %union.tree_node** %imag3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %real.addr, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type4, align 8
  %call5 = call %union.tree_node* @build_complex_type(%union.tree_node* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %5, %cond.true ], [ %call5, %cond.false ]
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  store %union.tree_node* %cond, %union.tree_node** %type7, align 8
  %9 = load %union.tree_node*, %union.tree_node** %real.addr, align 8
  %common8 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %10 = load %union.tree_node*, %union.tree_node** %imag.addr, align 8
  %common9 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %public_flag10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %public_flag10, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 19
  %bf.clear13 = and i32 %bf.lshr12, 1
  %or = or i32 %bf.clear, %bf.clear13
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common14 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %public_flag15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %public_flag15, align 8
  %bf.value = and i32 %or, 1
  %bf.shl = shl i32 %bf.value, 19
  %bf.clear17 = and i32 %bf.load16, -524289
  %bf.set = or i32 %bf.clear17, %bf.shl
  store i32 %bf.set, i32* %public_flag15, align 8
  %12 = load %union.tree_node*, %union.tree_node** %real.addr, align 8
  %common18 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load19 = load i32, i32* %static_flag, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 18
  %bf.clear21 = and i32 %bf.lshr20, 1
  %13 = load %union.tree_node*, %union.tree_node** %imag.addr, align 8
  %common22 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %static_flag23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %static_flag23, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 18
  %bf.clear26 = and i32 %bf.lshr25, 1
  %or27 = or i32 %bf.clear21, %bf.clear26
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common28 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %static_flag29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %static_flag29, align 8
  %bf.value31 = and i32 %or27, 1
  %bf.shl32 = shl i32 %bf.value31, 18
  %bf.clear33 = and i32 %bf.load30, -262145
  %bf.set34 = or i32 %bf.clear33, %bf.shl32
  store i32 %bf.set34, i32* %static_flag29, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %15
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_complex_type(%union.tree_node* %component_type) #0 {
entry:
  %component_type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  %name32 = alloca i8*, align 8
  store %union.tree_node* %component_type, %union.tree_node** %component_type.addr, align 8
  %call = call %union.tree_node* @make_node(i32 8)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 15
  %1 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %1, %union.tree_node** %type1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %mul = mul nsw i32 %bf.clear, 1
  %5 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load4 = load i32, i32* %volatile_flag, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 11
  %bf.clear6 = and i32 %bf.lshr5, 1
  %mul7 = mul nsw i32 %bf.clear6, 2
  %or = or i32 %mul, %mul7
  %6 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %type8 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 6
  %bf.load9 = load i32, i32* %restrict_flag, align 4
  %bf.lshr10 = lshr i32 %bf.load9, 21
  %bf.clear11 = and i32 %bf.lshr10, 1
  %mul12 = mul nsw i32 %bf.clear11, 4
  %or13 = or i32 %or, %mul12
  %7 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %common14 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load15 = load i32, i32* %code, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp = icmp eq i32 %bf.clear16, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %common17 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type18, align 8
  %tobool = icmp ne %union.tree_node* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %mul19 = mul nsw i32 %land.ext, 8
  %or20 = or i32 %or13, %mul19
  call void @set_type_quals(%union.tree_node* %3, i32 %or20)
  %11 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %12 = ptrtoint %union.tree_node* %11 to i64
  %and = and i64 %12, 262143
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %hashcode, align 4
  %13 = load i32, i32* %hashcode, align 4
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call21 = call %union.tree_node* @type_hash_canon(i32 %13, %union.tree_node* %14)
  store %union.tree_node* %call21, %union.tree_node** %t, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type22 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp23 = icmp ne %union.tree_node* %16, null
  br i1 %cmp23, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %18 = load i32, i32* @write_symbols, align 4
  %cmp25 = icmp eq i32 %18, 4
  br i1 %cmp25, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, i32* @write_symbols, align 4
  %cmp27 = icmp eq i32 %19, 7
  br i1 %cmp27, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type29 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 11
  %21 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool30 = icmp ne %union.tree_node* %21, null
  br i1 %tobool30, label %if.end.94, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true
  %22 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp33 = icmp eq %union.tree_node* %22, %23
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.31
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.86

if.else:                                          ; preds = %if.then.31
  %24 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 1), align 8
  %cmp36 = icmp eq %union.tree_node* %24, %25
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.85

if.else.39:                                       ; preds = %if.else
  %26 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %cmp40 = icmp eq %union.tree_node* %26, %27
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.39
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.153, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.84

if.else.43:                                       ; preds = %if.else.39
  %28 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %29 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 3), align 8
  %cmp44 = icmp eq %union.tree_node* %28, %29
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.43
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.154, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.83

if.else.47:                                       ; preds = %if.else.43
  %30 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 4), align 8
  %cmp48 = icmp eq %union.tree_node* %30, %31
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.82

if.else.51:                                       ; preds = %if.else.47
  %32 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %cmp52 = icmp eq %union.tree_node* %32, %33
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.51
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.81

if.else.55:                                       ; preds = %if.else.51
  %34 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  %cmp56 = icmp eq %union.tree_node* %34, %35
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.55
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.80

if.else.59:                                       ; preds = %if.else.55
  %36 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  %cmp60 = icmp eq %union.tree_node* %36, %37
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.59
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.158, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.79

if.else.63:                                       ; preds = %if.else.59
  %38 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %39 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 8), align 8
  %cmp64 = icmp eq %union.tree_node* %38, %39
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.63
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.159, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.78

if.else.67:                                       ; preds = %if.else.63
  %40 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  %cmp68 = icmp eq %union.tree_node* %40, %41
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.67
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.77

if.else.71:                                       ; preds = %if.else.67
  %42 = load %union.tree_node*, %union.tree_node** %component_type.addr, align 8
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  %cmp72 = icmp eq %union.tree_node* %42, %43
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.else.71
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.161, i32 0, i32 0), i8** %name32, align 8
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.71
  store i8* null, i8** %name32, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.62
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.58
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.54
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.50
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.46
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.42
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.38
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.35
  %44 = load i8*, i8** %name32, align 8
  %cmp87 = icmp ne i8* %44, null
  br i1 %cmp87, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %if.end.86
  %45 = load i8*, i8** %name32, align 8
  %call90 = call %union.tree_node* @get_identifier(i8* %45)
  %46 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type91 = bitcast %union.tree_node* %46 to %struct.tree_type*
  %name92 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type91, i32 0, i32 11
  store %union.tree_node* %call90, %union.tree_node** %name92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %if.end.86
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true, %lor.lhs.false
  %47 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %47
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_tree_vec(i32 %len) #0 {
entry:
  %len.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %length = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %add = add i64 %mul, 40
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %conv2 = sext i32 %1 to i64
  %call = call i8* @ggc_alloc(i64 %conv2)
  %2 = bitcast i8* %call to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %t, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %4 = bitcast %union.tree_node* %3 to i8*
  %5 = load i32, i32* %length, align 4
  %conv3 = sext i32 %5 to i64
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %conv3, i32 1, i1 false)
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, 3
  store i32 %bf.set, i32* %code, align 8
  %7 = load i32, i32* %len.addr, align 4
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec = bitcast %union.tree_node* %8 to %struct.tree_vec*
  %length4 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  store i32 %7, i32* %length4, align 4
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %9
}

; Function Attrs: nounwind uwtable
define i32 @integer_zerop(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 25
  br i1 %cmp35, label %land.lhs.true.36, label %lor.rhs

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %static_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 18
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool = icmp ne i32 %bf.clear40, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %16 to %struct.tree_int_cst*
  %int_cst42 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst42, i32 0, i32 0
  %17 = load i64, i64* %low, align 8
  %cmp43 = icmp eq i64 %17, 0
  br i1 %cmp43, label %land.lhs.true.44, label %lor.rhs

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst45 = bitcast %union.tree_node* %18 to %struct.tree_int_cst*
  %int_cst46 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst45, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst46, i32 0, i32 1
  %19 = load i64, i64* %high, align 8
  %cmp47 = icmp eq i64 %19, 0
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.44, %land.lhs.true.41, %land.lhs.true.36, %while.end
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common48 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load50 = load i32, i32* %code49, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 27
  br i1 %cmp52, label %land.lhs.true.53, label %land.end.59

land.lhs.true.53:                                 ; preds = %lor.rhs
  %21 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %21 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %22 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %22)
  %tobool54 = icmp ne i32 %call, 0
  br i1 %tobool54, label %land.rhs.55, label %land.end.59

land.rhs.55:                                      ; preds = %land.lhs.true.53
  %23 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex56 = bitcast %union.tree_node* %23 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex56, i32 0, i32 3
  %24 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call57 = call i32 @integer_zerop(%union.tree_node* %24)
  %tobool58 = icmp ne i32 %call57, 0
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.55, %land.lhs.true.53, %lor.rhs
  %25 = phi i1 [ false, %land.lhs.true.53 ], [ false, %lor.rhs ], [ %tobool58, %land.rhs.55 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.59, %land.lhs.true.44
  %26 = phi i1 [ true, %land.lhs.true.44 ], [ %25, %land.end.59 ]
  %lor.ext = zext i1 %26 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @integer_onep(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 25
  br i1 %cmp35, label %land.lhs.true.36, label %lor.rhs

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %static_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 18
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool = icmp ne i32 %bf.clear40, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %16 to %struct.tree_int_cst*
  %int_cst42 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst42, i32 0, i32 0
  %17 = load i64, i64* %low, align 8
  %cmp43 = icmp eq i64 %17, 1
  br i1 %cmp43, label %land.lhs.true.44, label %lor.rhs

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst45 = bitcast %union.tree_node* %18 to %struct.tree_int_cst*
  %int_cst46 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst45, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst46, i32 0, i32 1
  %19 = load i64, i64* %high, align 8
  %cmp47 = icmp eq i64 %19, 0
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.44, %land.lhs.true.41, %land.lhs.true.36, %while.end
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common48 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load50 = load i32, i32* %code49, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 27
  br i1 %cmp52, label %land.lhs.true.53, label %land.end.59

land.lhs.true.53:                                 ; preds = %lor.rhs
  %21 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %21 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %22 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @integer_onep(%union.tree_node* %22)
  %tobool54 = icmp ne i32 %call, 0
  br i1 %tobool54, label %land.rhs.55, label %land.end.59

land.rhs.55:                                      ; preds = %land.lhs.true.53
  %23 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex56 = bitcast %union.tree_node* %23 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex56, i32 0, i32 3
  %24 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call57 = call i32 @integer_zerop(%union.tree_node* %24)
  %tobool58 = icmp ne i32 %call57, 0
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.55, %land.lhs.true.53, %lor.rhs
  %25 = phi i1 [ false, %land.lhs.true.53 ], [ false, %lor.rhs ], [ %tobool58, %land.rhs.55 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.59, %land.lhs.true.44
  %26 = phi i1 [ true, %land.lhs.true.44 ], [ %25, %land.end.59 ]
  %lor.ext = zext i1 %26 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @integer_all_onesp(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %prec = alloca i32, align 4
  %uns = alloca i32, align 4
  %high_value = alloca i64, align 8
  %shift_amount = alloca i32, align 4
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 27
  br i1 %cmp35, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %15 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @integer_all_onesp(%union.tree_node* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %land.lhs.true.36
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex38 = bitcast %union.tree_node* %17 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex38, i32 0, i32 3
  %18 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call39 = call i32 @integer_zerop(%union.tree_node* %18)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.36, %while.end
  %19 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common41 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 2
  %bf.load43 = load i32, i32* %code42, align 8
  %bf.clear44 = and i32 %bf.load43, 255
  %cmp45 = icmp ne i32 %bf.clear44, 25
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.else
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common47 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load48 = load i32, i32* %static_flag, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 18
  %bf.clear50 = and i32 %bf.lshr49, 1
  %tobool51 = icmp ne i32 %bf.clear50, 0
  br i1 %tobool51, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %lor.lhs.false.46, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end
  %21 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common54 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type55, align 8
  %common56 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load57 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 13
  %bf.clear59 = and i32 %bf.lshr58, 1
  store i32 %bf.clear59, i32* %uns, align 4
  %23 = load i32, i32* %uns, align 4
  %tobool60 = icmp ne i32 %23, 0
  br i1 %tobool60, label %if.end.69, label %if.then.61

if.then.61:                                       ; preds = %if.end.53
  %24 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst62 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst62, i32 0, i32 0
  %25 = load i64, i64* %low, align 8
  %cmp63 = icmp eq i64 %25, -1
  br i1 %cmp63, label %land.rhs.64, label %land.end.68

land.rhs.64:                                      ; preds = %if.then.61
  %26 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst65 = bitcast %union.tree_node* %26 to %struct.tree_int_cst*
  %int_cst66 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst65, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst66, i32 0, i32 1
  %27 = load i64, i64* %high, align 8
  %cmp67 = icmp eq i64 %27, -1
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.64, %if.then.61
  %28 = phi i1 [ false, %if.then.61 ], [ %cmp67, %land.rhs.64 ]
  %land.ext = zext i1 %28 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.53
  %29 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common70 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type71, align 8
  %type72 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %mode73 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type72, i32 0, i32 6
  %bf.load74 = load i32, i32* %mode73, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 9
  %bf.clear76 = and i32 %bf.lshr75, 127
  %idxprom = sext i32 %bf.clear76 to i64
  %arrayidx77 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %31 = load i16, i16* %arrayidx77, align 2
  %conv = zext i16 %31 to i32
  store i32 %conv, i32* %prec, align 4
  %32 = load i32, i32* %prec, align 4
  %cmp78 = icmp sge i32 %32, 64
  br i1 %cmp78, label %if.then.80, label %if.else.105

if.then.80:                                       ; preds = %if.end.69
  %33 = load i32, i32* %prec, align 4
  %sub = sub nsw i32 %33, 64
  store i32 %sub, i32* %shift_amount, align 4
  %34 = load i32, i32* %shift_amount, align 4
  %cmp81 = icmp sgt i32 %34, 64
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.then.80
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 877, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.integer_all_onesp, i32 0, i32 0)) #6
  unreachable

if.else.84:                                       ; preds = %if.then.80
  %35 = load i32, i32* %shift_amount, align 4
  %cmp85 = icmp eq i32 %35, 64
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.84
  store i64 -1, i64* %high_value, align 8
  br label %if.end.90

if.else.88:                                       ; preds = %if.else.84
  %36 = load i32, i32* %shift_amount, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 1, %sh_prom
  %sub89 = sub nsw i64 %shl, 1
  store i64 %sub89, i64* %high_value, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90
  %37 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst92 = bitcast %union.tree_node* %37 to %struct.tree_int_cst*
  %int_cst93 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst92, i32 0, i32 2
  %low94 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst93, i32 0, i32 0
  %38 = load i64, i64* %low94, align 8
  %cmp95 = icmp eq i64 %38, -1
  br i1 %cmp95, label %land.rhs.97, label %land.end.103

land.rhs.97:                                      ; preds = %if.end.91
  %39 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst98 = bitcast %union.tree_node* %39 to %struct.tree_int_cst*
  %int_cst99 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst98, i32 0, i32 2
  %high100 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst99, i32 0, i32 1
  %40 = load i64, i64* %high100, align 8
  %41 = load i64, i64* %high_value, align 8
  %cmp101 = icmp eq i64 %40, %41
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.97, %if.end.91
  %42 = phi i1 [ false, %if.end.91 ], [ %cmp101, %land.rhs.97 ]
  %land.ext104 = zext i1 %42 to i32
  store i32 %land.ext104, i32* %retval
  br label %return

if.else.105:                                      ; preds = %if.end.69
  %43 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst106 = bitcast %union.tree_node* %43 to %struct.tree_int_cst*
  %int_cst107 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst106, i32 0, i32 2
  %low108 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst107, i32 0, i32 0
  %44 = load i64, i64* %low108, align 8
  %45 = load i32, i32* %prec, align 4
  %sh_prom109 = zext i32 %45 to i64
  %shl110 = shl i64 1, %sh_prom109
  %sub111 = sub i64 %shl110, 1
  %cmp112 = icmp eq i64 %44, %sub111
  %conv113 = zext i1 %cmp112 to i32
  store i32 %conv113, i32* %retval
  br label %return

return:                                           ; preds = %if.else.105, %land.end.103, %land.end.68, %if.then.52, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @integer_pow2p(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %prec = alloca i32, align 4
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 27
  br i1 %cmp35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %15 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @integer_pow2p(%union.tree_node* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.37, label %if.end

land.lhs.true.37:                                 ; preds = %land.lhs.true.36
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex38 = bitcast %union.tree_node* %17 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex38, i32 0, i32 3
  %18 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call39 = call i32 @integer_zerop(%union.tree_node* %18)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.37, %land.lhs.true.36, %while.end
  %19 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common41 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 2
  %bf.load43 = load i32, i32* %code42, align 8
  %bf.clear44 = and i32 %bf.load43, 255
  %cmp45 = icmp ne i32 %bf.clear44, 25
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.end
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common47 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load48 = load i32, i32* %static_flag, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 18
  %bf.clear50 = and i32 %bf.lshr49, 1
  %tobool51 = icmp ne i32 %bf.clear50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.46, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.46
  %21 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common54 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type55, align 8
  %common56 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load58 = load i32, i32* %code57, align 8
  %bf.clear59 = and i32 %bf.load58, 255
  %cmp60 = icmp eq i32 %bf.clear59, 13
  br i1 %cmp60, label %cond.true, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.end.53
  %23 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common62 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type63, align 8
  %common64 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code65 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load66 = load i32, i32* %code65, align 8
  %bf.clear67 = and i32 %bf.load66, 255
  %cmp68 = icmp eq i32 %bf.clear67, 15
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.61, %if.end.53
  %25 = load i32, i32* @target_flags, align 4
  %and = and i32 %25, 33554432
  %tobool69 = icmp ne i32 %and, 0
  %cond = select i1 %tobool69, i32 64, i32 32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.61
  %26 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common70 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type71, align 8
  %type72 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type72, i32 0, i32 6
  %bf.load73 = load i32, i32* %precision, align 4
  %bf.clear74 = and i32 %bf.load73, 511
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond75 = phi i32 [ %cond, %cond.true ], [ %bf.clear74, %cond.false ]
  store i32 %cond75, i32* %prec, align 4
  %28 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %28 to %struct.tree_int_cst*
  %int_cst76 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high77 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst76, i32 0, i32 1
  %29 = load i64, i64* %high77, align 8
  store i64 %29, i64* %high, align 8
  %30 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst78 = bitcast %union.tree_node* %30 to %struct.tree_int_cst*
  %int_cst79 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst78, i32 0, i32 2
  %low80 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst79, i32 0, i32 0
  %31 = load i64, i64* %low80, align 8
  store i64 %31, i64* %low, align 8
  %32 = load i32, i32* %prec, align 4
  %cmp81 = icmp eq i32 %32, 128
  br i1 %cmp81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %cond.end
  br label %if.end.95

if.else:                                          ; preds = %cond.end
  %33 = load i32, i32* %prec, align 4
  %cmp83 = icmp sgt i32 %33, 64
  br i1 %cmp83, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %if.else
  %34 = load i32, i32* %prec, align 4
  %sub = sub nsw i32 %34, 64
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %35 = load i64, i64* %high, align 8
  %and85 = and i64 %35, %neg
  store i64 %and85, i64* %high, align 8
  br label %if.end.94

if.else.86:                                       ; preds = %if.else
  store i64 0, i64* %high, align 8
  %36 = load i32, i32* %prec, align 4
  %cmp87 = icmp slt i32 %36, 64
  br i1 %cmp87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.else.86
  %37 = load i32, i32* %prec, align 4
  %sh_prom89 = zext i32 %37 to i64
  %shl90 = shl i64 -1, %sh_prom89
  %neg91 = xor i64 %shl90, -1
  %38 = load i64, i64* %low, align 8
  %and92 = and i64 %38, %neg91
  store i64 %and92, i64* %low, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.else.86
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.84
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.82
  %39 = load i64, i64* %high, align 8
  %cmp96 = icmp eq i64 %39, 0
  br i1 %cmp96, label %land.lhs.true.97, label %if.end.100

land.lhs.true.97:                                 ; preds = %if.end.95
  %40 = load i64, i64* %low, align 8
  %cmp98 = icmp eq i64 %40, 0
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.97
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %land.lhs.true.97, %if.end.95
  %41 = load i64, i64* %high, align 8
  %cmp101 = icmp eq i64 %41, 0
  br i1 %cmp101, label %land.lhs.true.102, label %lor.rhs

land.lhs.true.102:                                ; preds = %if.end.100
  %42 = load i64, i64* %low, align 8
  %43 = load i64, i64* %low, align 8
  %sub103 = sub nsw i64 %43, 1
  %and104 = and i64 %42, %sub103
  %cmp105 = icmp eq i64 %and104, 0
  br i1 %cmp105, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.102, %if.end.100
  %44 = load i64, i64* %low, align 8
  %cmp106 = icmp eq i64 %44, 0
  br i1 %cmp106, label %land.rhs.107, label %land.end.111

land.rhs.107:                                     ; preds = %lor.rhs
  %45 = load i64, i64* %high, align 8
  %46 = load i64, i64* %high, align 8
  %sub108 = sub nsw i64 %46, 1
  %and109 = and i64 %45, %sub108
  %cmp110 = icmp eq i64 %and109, 0
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.107, %lor.rhs
  %47 = phi i1 [ false, %lor.rhs ], [ %cmp110, %land.rhs.107 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.111, %land.lhs.true.102
  %48 = phi i1 [ true, %land.lhs.true.102 ], [ %47, %land.end.111 ]
  %lor.ext = zext i1 %48 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.99, %if.then.52, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @tree_log2(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %prec = alloca i32, align 4
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 27
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %15 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @tree_log2(%union.tree_node* %16)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common36 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type37, align 8
  %common38 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %code39, align 8
  %bf.clear41 = and i32 %bf.load40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 13
  br i1 %cmp42, label %cond.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end
  %19 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common44 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %type45, align 8
  %common46 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load48 = load i32, i32* %code47, align 8
  %bf.clear49 = and i32 %bf.load48, 255
  %cmp50 = icmp eq i32 %bf.clear49, 15
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.43, %if.end
  %21 = load i32, i32* @target_flags, align 4
  %and = and i32 %21, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.43
  %22 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common51 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %type53 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i32 0, i32 6
  %bf.load54 = load i32, i32* %precision, align 4
  %bf.clear55 = and i32 %bf.load54, 511
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond56 = phi i32 [ %cond, %cond.true ], [ %bf.clear55, %cond.false ]
  store i32 %cond56, i32* %prec, align 4
  %24 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst57 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst57, i32 0, i32 1
  %25 = load i64, i64* %high58, align 8
  store i64 %25, i64* %high, align 8
  %26 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst59 = bitcast %union.tree_node* %26 to %struct.tree_int_cst*
  %int_cst60 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst59, i32 0, i32 2
  %low61 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst60, i32 0, i32 0
  %27 = load i64, i64* %low61, align 8
  store i64 %27, i64* %low, align 8
  %28 = load i32, i32* %prec, align 4
  %cmp62 = icmp eq i32 %28, 128
  br i1 %cmp62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %cond.end
  br label %if.end.76

if.else:                                          ; preds = %cond.end
  %29 = load i32, i32* %prec, align 4
  %cmp64 = icmp sgt i32 %29, 64
  br i1 %cmp64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.else
  %30 = load i32, i32* %prec, align 4
  %sub = sub nsw i32 %30, 64
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %31 = load i64, i64* %high, align 8
  %and66 = and i64 %31, %neg
  store i64 %and66, i64* %high, align 8
  br label %if.end.75

if.else.67:                                       ; preds = %if.else
  store i64 0, i64* %high, align 8
  %32 = load i32, i32* %prec, align 4
  %cmp68 = icmp slt i32 %32, 64
  br i1 %cmp68, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.else.67
  %33 = load i32, i32* %prec, align 4
  %sh_prom70 = zext i32 %33 to i64
  %shl71 = shl i64 -1, %sh_prom70
  %neg72 = xor i64 %shl71, -1
  %34 = load i64, i64* %low, align 8
  %and73 = and i64 %34, %neg72
  store i64 %and73, i64* %low, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.else.67
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.65
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.63
  %35 = load i64, i64* %high, align 8
  %cmp77 = icmp ne i64 %35, 0
  br i1 %cmp77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %if.end.76
  %36 = load i64, i64* %high, align 8
  %call79 = call i32 @exact_log2_wide(i64 %36)
  %add = add nsw i32 64, %call79
  br label %cond.end.82

cond.false.80:                                    ; preds = %if.end.76
  %37 = load i64, i64* %low, align 8
  %call81 = call i32 @exact_log2_wide(i64 %37)
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.78
  %cond83 = phi i32 [ %add, %cond.true.78 ], [ %call81, %cond.false.80 ]
  store i32 %cond83, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.82, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @exact_log2_wide(i64) #2

; Function Attrs: nounwind uwtable
define i32 @tree_floor_log2(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %prec = alloca i32, align 4
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 27
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %15 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @tree_log2(%union.tree_node* %16)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common36 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type37, align 8
  %common38 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %code39, align 8
  %bf.clear41 = and i32 %bf.load40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 13
  br i1 %cmp42, label %cond.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end
  %19 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common44 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %type45, align 8
  %common46 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load48 = load i32, i32* %code47, align 8
  %bf.clear49 = and i32 %bf.load48, 255
  %cmp50 = icmp eq i32 %bf.clear49, 15
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.43, %if.end
  %21 = load i32, i32* @target_flags, align 4
  %and = and i32 %21, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.43
  %22 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common51 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %type53 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i32 0, i32 6
  %bf.load54 = load i32, i32* %precision, align 4
  %bf.clear55 = and i32 %bf.load54, 511
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond56 = phi i32 [ %cond, %cond.true ], [ %bf.clear55, %cond.false ]
  store i32 %cond56, i32* %prec, align 4
  %24 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst57 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst57, i32 0, i32 1
  %25 = load i64, i64* %high58, align 8
  store i64 %25, i64* %high, align 8
  %26 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %int_cst59 = bitcast %union.tree_node* %26 to %struct.tree_int_cst*
  %int_cst60 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst59, i32 0, i32 2
  %low61 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst60, i32 0, i32 0
  %27 = load i64, i64* %low61, align 8
  store i64 %27, i64* %low, align 8
  %28 = load i32, i32* %prec, align 4
  %cmp62 = icmp eq i32 %28, 128
  br i1 %cmp62, label %if.then.65, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %cond.end
  %29 = load i32, i32* %prec, align 4
  %cmp64 = icmp eq i32 %29, 0
  br i1 %cmp64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %lor.lhs.false.63, %cond.end
  br label %if.end.78

if.else:                                          ; preds = %lor.lhs.false.63
  %30 = load i32, i32* %prec, align 4
  %cmp66 = icmp sgt i32 %30, 64
  br i1 %cmp66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.else
  %31 = load i32, i32* %prec, align 4
  %sub = sub nsw i32 %31, 64
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %32 = load i64, i64* %high, align 8
  %and68 = and i64 %32, %neg
  store i64 %and68, i64* %high, align 8
  br label %if.end.77

if.else.69:                                       ; preds = %if.else
  store i64 0, i64* %high, align 8
  %33 = load i32, i32* %prec, align 4
  %cmp70 = icmp slt i32 %33, 64
  br i1 %cmp70, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %if.else.69
  %34 = load i32, i32* %prec, align 4
  %sh_prom72 = zext i32 %34 to i64
  %shl73 = shl i64 -1, %sh_prom72
  %neg74 = xor i64 %shl73, -1
  %35 = load i64, i64* %low, align 8
  %and75 = and i64 %35, %neg74
  store i64 %and75, i64* %low, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.67
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.65
  %36 = load i64, i64* %high, align 8
  %cmp79 = icmp ne i64 %36, 0
  br i1 %cmp79, label %cond.true.80, label %cond.false.82

cond.true.80:                                     ; preds = %if.end.78
  %37 = load i64, i64* %high, align 8
  %call81 = call i32 @floor_log2_wide(i64 %37)
  %add = add nsw i32 64, %call81
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.end.78
  %38 = load i64, i64* %low, align 8
  %call83 = call i32 @floor_log2_wide(i64 %38)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.80
  %cond85 = phi i32 [ %add, %cond.true.80 ], [ %call83, %cond.false.82 ]
  store i32 %cond85, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.84, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @floor_log2_wide(i64) #2

; Function Attrs: nounwind uwtable
define i32 @real_zerop(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 26
  br i1 %cmp35, label %land.lhs.true.36, label %lor.rhs

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %static_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 18
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool = icmp ne i32 %bf.clear40, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %real_cst = bitcast %union.tree_node* %16 to %struct.tree_real_cst*
  %real_cst42 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %call = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %real_cst42, %struct.realvaluetype* byval align 8 @dconst0)
  %cmp43 = icmp eq i32 %call, 0
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.41, %land.lhs.true.36, %while.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common44 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 27
  br i1 %cmp48, label %land.lhs.true.49, label %land.end.56

land.lhs.true.49:                                 ; preds = %lor.rhs
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %18 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call50 = call i32 @real_zerop(%union.tree_node* %19)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.rhs.52, label %land.end.56

land.rhs.52:                                      ; preds = %land.lhs.true.49
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex53 = bitcast %union.tree_node* %20 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex53, i32 0, i32 3
  %21 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call54 = call i32 @real_zerop(%union.tree_node* %21)
  %tobool55 = icmp ne i32 %call54, 0
  br label %land.end.56

land.end.56:                                      ; preds = %land.rhs.52, %land.lhs.true.49, %lor.rhs
  %22 = phi i1 [ false, %land.lhs.true.49 ], [ false, %lor.rhs ], [ %tobool55, %land.rhs.52 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.56, %land.lhs.true.41
  %23 = phi i1 [ true, %land.lhs.true.41 ], [ %22, %land.end.56 ]
  %lor.ext = zext i1 %23 to i32
  ret i32 %lor.ext
}

declare i32 @ereal_cmp(%struct.realvaluetype* byval align 8, %struct.realvaluetype* byval align 8) #2

; Function Attrs: nounwind uwtable
define i32 @real_onep(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 26
  br i1 %cmp35, label %land.lhs.true.36, label %lor.rhs

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %static_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 18
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool = icmp ne i32 %bf.clear40, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %real_cst = bitcast %union.tree_node* %16 to %struct.tree_real_cst*
  %real_cst42 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %call = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %real_cst42, %struct.realvaluetype* byval align 8 @dconst1)
  %cmp43 = icmp eq i32 %call, 0
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.41, %land.lhs.true.36, %while.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common44 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 27
  br i1 %cmp48, label %land.lhs.true.49, label %land.end.56

land.lhs.true.49:                                 ; preds = %lor.rhs
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %18 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call50 = call i32 @real_onep(%union.tree_node* %19)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.rhs.52, label %land.end.56

land.rhs.52:                                      ; preds = %land.lhs.true.49
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex53 = bitcast %union.tree_node* %20 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex53, i32 0, i32 3
  %21 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call54 = call i32 @real_zerop(%union.tree_node* %21)
  %tobool55 = icmp ne i32 %call54, 0
  br label %land.end.56

land.end.56:                                      ; preds = %land.rhs.52, %land.lhs.true.49, %lor.rhs
  %22 = phi i1 [ false, %land.lhs.true.49 ], [ false, %lor.rhs ], [ %tobool55, %land.rhs.52 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.56, %land.lhs.true.41
  %23 = phi i1 [ true, %land.lhs.true.41 ], [ %22, %land.end.56 ]
  %lor.ext = zext i1 %23 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @real_twop(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 116
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp12 = icmp ne %union.tree_node* %4, %5
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load15, 9
  %bf.clear16 = and i32 %bf.lshr, 127
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  %cmp27 = icmp eq i32 %bf.clear16, %bf.clear26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.6
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.6 ], [ %cmp27, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp28 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  store %union.tree_node* %13, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common31 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 26
  br i1 %cmp35, label %land.lhs.true.36, label %lor.rhs

land.lhs.true.36:                                 ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common37 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %static_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 18
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool = icmp ne i32 %bf.clear40, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %real_cst = bitcast %union.tree_node* %16 to %struct.tree_real_cst*
  %real_cst42 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %call = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %real_cst42, %struct.realvaluetype* byval align 8 @dconst2)
  %cmp43 = icmp eq i32 %call, 0
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.41, %land.lhs.true.36, %while.end
  %17 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common44 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 27
  br i1 %cmp48, label %land.lhs.true.49, label %land.end.56

land.lhs.true.49:                                 ; preds = %lor.rhs
  %18 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex = bitcast %union.tree_node* %18 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call50 = call i32 @real_twop(%union.tree_node* %19)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.rhs.52, label %land.end.56

land.rhs.52:                                      ; preds = %land.lhs.true.49
  %20 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %complex53 = bitcast %union.tree_node* %20 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex53, i32 0, i32 3
  %21 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call54 = call i32 @real_zerop(%union.tree_node* %21)
  %tobool55 = icmp ne i32 %call54, 0
  br label %land.end.56

land.end.56:                                      ; preds = %land.rhs.52, %land.lhs.true.49, %lor.rhs
  %22 = phi i1 [ false, %land.lhs.true.49 ], [ false, %lor.rhs ], [ %tobool55, %land.rhs.52 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.56, %land.lhs.true.41
  %23 = phi i1 [ true, %land.lhs.true.41 ], [ %22, %land.end.56 ]
  %lor.ext = zext i1 %23 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @really_constant_p(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp11 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %exp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common12 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load13, 9
  %bf.clear14 = and i32 %bf.lshr, 1
  ret i32 %bf.clear14
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @value_member(%union.tree_node* %elem, %union.tree_node* %list) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %elem.addr = alloca %union.tree_node*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %list1 = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %cmp = icmp eq %union.tree_node* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %4, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @purpose_member(%union.tree_node* %elem, %union.tree_node* %list) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %elem.addr = alloca %union.tree_node*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %list1 = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp = icmp eq %union.tree_node* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %4, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @binfo_member(%union.tree_node* %elem, %union.tree_node* %list) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %elem.addr = alloca %union.tree_node*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp = icmp eq %union.tree_node* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %4, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define i32 @chain_member(%union.tree_node* %elem, %union.tree_node* %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %elem.addr = alloca %union.tree_node*, align 8
  %chain.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %cmp = icmp eq %union.tree_node* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %4, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @chain_member_value(%union.tree_node* %elem, %union.tree_node* %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %elem.addr = alloca %union.tree_node*, align 8
  %chain.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %cmp = icmp eq %union.tree_node* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %5, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @chain_member_purpose(%union.tree_node* %elem, %union.tree_node* %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %elem.addr = alloca %union.tree_node*, align 8
  %chain.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %elem, %union.tree_node** %elem.addr, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %elem.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp = icmp eq %union.tree_node* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %5, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @list_length(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %tail = alloca %union.tree_node*, align 8
  %len = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %4, %union.tree_node** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %len, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @fields_length(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %count = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %count, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @chainon(%union.tree_node* %op1, %union.tree_node* %op2) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %op1.addr = alloca %union.tree_node*, align 8
  %op2.addr = alloca %union.tree_node*, align 8
  %t1 = alloca %union.tree_node*, align 8
  store %union.tree_node* %op1, %union.tree_node** %op1.addr, align 8
  store %union.tree_node* %op2, %union.tree_node** %op2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %op1.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %op1.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %t1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %tobool1 = icmp ne %union.tree_node* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain3, align 8
  store %union.tree_node* %5, %union.tree_node** %t1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %op2.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  store %union.tree_node* %6, %union.tree_node** %chain5, align 8
  %8 = load %union.tree_node*, %union.tree_node** %op1.addr, align 8
  store %union.tree_node* %8, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %op2.addr, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else, %for.end
  %10 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @tree_last(%union.tree_node* %chain) #0 {
entry:
  %chain.addr = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node*, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %2, %union.tree_node** %next, align 8
  %tobool2 = icmp ne %union.tree_node* %2, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %next, align 8
  store %union.tree_node* %3, %union.tree_node** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %4 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  ret %union.tree_node* %4
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @nreverse(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %prev = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store %union.tree_node* null, %union.tree_node** %prev, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %decl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %3, %union.tree_node** %next, align 8
  %4 = load %union.tree_node*, %union.tree_node** %prev, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 0
  store %union.tree_node* %4, %union.tree_node** %chain2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  store %union.tree_node* %6, %union.tree_node** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %next, align 8
  store %union.tree_node* %7, %union.tree_node** %decl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %union.tree_node*, %union.tree_node** %prev, align 8
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @listify(%union.tree_node* %chain) #0 {
entry:
  %chain.addr = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  %in_tail = alloca %union.tree_node*, align 8
  %out_tail = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node*, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  store %union.tree_node* null, %union.tree_node** %result, align 8
  %0 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %in_tail, align 8
  store %union.tree_node* null, %union.tree_node** %out_tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %union.tree_node*, %union.tree_node** %in_tail, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %union.tree_node*, %union.tree_node** %in_tail, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %2, %union.tree_node* null)
  store %union.tree_node* %call, %union.tree_node** %next, align 8
  %3 = load %union.tree_node*, %union.tree_node** %out_tail, align 8
  %tobool1 = icmp ne %union.tree_node* %3, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %next, align 8
  %5 = load %union.tree_node*, %union.tree_node** %out_tail, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  store %union.tree_node* %4, %union.tree_node** %chain2, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %union.tree_node*, %union.tree_node** %next, align 8
  store %union.tree_node* %6, %union.tree_node** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %next, align 8
  store %union.tree_node* %7, %union.tree_node** %out_tail, align 8
  %8 = load %union.tree_node*, %union.tree_node** %in_tail, align 8
  %common3 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  store %union.tree_node* %9, %union.tree_node** %in_tail, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %union.tree_node*, %union.tree_node** %result, align 8
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @tree_cons(%union.tree_node* %purpose, %union.tree_node* %value, %union.tree_node* %chain) #0 {
entry:
  %purpose.addr = alloca %union.tree_node*, align 8
  %value.addr = alloca %union.tree_node*, align 8
  %chain.addr = alloca %union.tree_node*, align 8
  %node = alloca %union.tree_node*, align 8
  store %union.tree_node* %purpose, %union.tree_node** %purpose.addr, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  %call = call i8* @ggc_alloc(i64 40)
  %0 = bitcast i8* %call to %union.tree_node*
  store %union.tree_node* %0, %union.tree_node** %node, align 8
  %1 = load %union.tree_node*, %union.tree_node** %node, align 8
  %2 = bitcast %union.tree_node* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  %3 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, 2
  store i32 %bf.set, i32* %code, align 8
  %4 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 0
  store %union.tree_node* %4, %union.tree_node** %chain2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %purpose.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %node, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %purpose3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  store %union.tree_node* %6, %union.tree_node** %purpose3, align 8
  %8 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %node, align 8
  %list4 = bitcast %union.tree_node* %9 to %struct.tree_list*
  %value5 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4, i32 0, i32 2
  store %union.tree_node* %8, %union.tree_node** %value5, align 8
  %10 = load %union.tree_node*, %union.tree_node** %node, align 8
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_tree_list(%union.tree_node* %parm, %union.tree_node* %value) #0 {
entry:
  %parm.addr = alloca %union.tree_node*, align 8
  %value.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %parm, %union.tree_node** %parm.addr, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  %call = call %union.tree_node* @make_node(i32 2)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %parm.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %purpose, align 8
  %2 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list1 = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  store %union.tree_node* %2, %union.tree_node** %value2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %4
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @size_in_bytes(%union.tree_node* %type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %2, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %4 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %4, %union.tree_node** %type.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 3
  %6 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  store %union.tree_node* %6, %union.tree_node** %t, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %cmp3 = icmp eq %union.tree_node* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @incomplete_type_error(%union.tree_node* null, %union.tree_node* %8)
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp6 = icmp eq i32 %bf.clear, 25
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call = call i32 @force_fit_type(%union.tree_node* %11, i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %12, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4, %if.then
  %13 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %13
}

declare void @incomplete_type_error(%union.tree_node*, %union.tree_node*) #2

declare i32 @force_fit_type(%union.tree_node*, i32) #2

; Function Attrs: nounwind uwtable
define i64 @int_size_in_bytes(%union.tree_node* %type) #0 {
entry:
  %retval = alloca i64, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %3 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %3, %union.tree_node** %type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 3
  %5 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  store %union.tree_node* %5, %union.tree_node** %t, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %cmp3 = icmp eq %union.tree_node* %6, null
  br i1 %cmp3, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp ne i32 %bf.clear, 25
  br i1 %cmp4, label %if.then.16, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load7, 19
  %bf.clear8 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %if.then.16, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst = bitcast %union.tree_node* %9 to %struct.tree_int_cst*
  %int_cst10 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst10, i32 0, i32 1
  %10 = load i64, i64* %high, align 8
  %cmp11 = icmp ne i64 %10, 0
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst13 = bitcast %union.tree_node* %11 to %struct.tree_int_cst*
  %int_cst14 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst13, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst14, i32 0, i32 0
  %12 = load i64, i64* %low, align 8
  %cmp15 = icmp slt i64 %12, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.12
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst18 = bitcast %union.tree_node* %13 to %struct.tree_int_cst*
  %int_cst19 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst18, i32 0, i32 2
  %low20 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst19, i32 0, i32 0
  %14 = load i64, i64* %low20, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @bit_position(%union.tree_node* %field) #0 {
entry:
  %field.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %1 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %2 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 19
  %t = bitcast %union.anon.1* %u2 to %union.tree_node**
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call = call %union.tree_node* @bit_from_pos(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

declare %union.tree_node* @bit_from_pos(%union.tree_node*, %union.tree_node*) #2

; Function Attrs: nounwind uwtable
define i64 @int_bit_position(%union.tree_node* %field) #0 {
entry:
  %field.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %call = call %union.tree_node* @bit_position(%union.tree_node* %0)
  %call1 = call i64 @tree_low_cst(%union.tree_node* %call, i32 0)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i64 @tree_low_cst(%union.tree_node* %t, i32 %pos) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %pos.addr = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %call = call i32 @host_integerp(%union.tree_node* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst1 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1, i32 0, i32 0
  %3 = load i64, i64* %low, align 8
  ret i64 %3

if.else:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 3489, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.tree_low_cst, i32 0, i32 0)) #6
  unreachable
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @byte_position(%union.tree_node* %field) #0 {
entry:
  %field.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %1 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %2 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 19
  %t = bitcast %union.anon.1* %u2 to %union.tree_node**
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call = call %union.tree_node* @byte_from_pos(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

declare %union.tree_node* @byte_from_pos(%union.tree_node*, %union.tree_node*) #2

; Function Attrs: nounwind uwtable
define i64 @int_byte_position(%union.tree_node* %field) #0 {
entry:
  %field.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %call = call %union.tree_node* @byte_position(%union.tree_node* %0)
  %call1 = call i64 @tree_low_cst(%union.tree_node* %call, i32 0)
  ret i64 %call1
}

; Function Attrs: nounwind uwtable
define i32 @expr_align(%union.tree_node* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %union.tree_node*, align 8
  %align0 = alloca i32, align 4
  %align1 = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 115, label %sw.bb
    i32 114, label %sw.bb
    i32 116, label %sw.bb
    i32 118, label %sw.bb.3
    i32 47, label %sw.bb.3
    i32 48, label %sw.bb.3
    i32 49, label %sw.bb.3
    i32 50, label %sw.bb.3
    i32 55, label %sw.bb.3
    i32 58, label %sw.bb.3
    i32 56, label %sw.bb.3
    i32 119, label %sw.bb.3
    i32 51, label %sw.bb.8
    i32 31, label %sw.bb.22
    i32 32, label %sw.bb.22
    i32 34, label %sw.bb.22
    i32 35, label %sw.bb.22
    i32 36, label %sw.bb.22
    i32 30, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call = call i32 @expr_align(%union.tree_node* %2)
  store i32 %call, i32* %align0, align 4
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 7
  %5 = load i32, i32* %align, align 4
  store i32 %5, i32* %align1, align 4
  %6 = load i32, i32* %align0, align 4
  %7 = load i32, i32* %align1, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %8 = load i32, i32* %align0, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %9 = load i32, i32* %align1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp4 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands5 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands5, i32 0, i64 0
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8
  %call7 = call i32 @expr_align(%union.tree_node* %11)
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp9 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands10 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp9, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands10, i32 0, i64 1
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx11, align 8
  %call12 = call i32 @expr_align(%union.tree_node* %13)
  store i32 %call12, i32* %align0, align 4
  %14 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp13 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands14 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands14, i32 0, i64 2
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx15, align 8
  %call16 = call i32 @expr_align(%union.tree_node* %15)
  store i32 %call16, i32* %align1, align 4
  %16 = load i32, i32* %align0, align 4
  %17 = load i32, i32* %align1, align 4
  %cmp17 = icmp ult i32 %16, %17
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %sw.bb.8
  %18 = load i32, i32* %align0, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %sw.bb.8
  %19 = load i32, i32* %align1, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %18, %cond.true.18 ], [ %19, %cond.false.19 ]
  store i32 %cond21, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %20 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %21 = bitcast %struct.anon.0* %a to i32*
  %bf.load23 = load i32, i32* %21, align 4
  %bf.clear24 = and i32 %bf.load23, 16777215
  %cmp25 = icmp ne i32 %bf.clear24, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.22
  %22 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl26 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %u127 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 6
  %a28 = bitcast %union.anon* %u127 to %struct.anon.0*
  %23 = bitcast %struct.anon.0* %a28 to i32*
  %bf.load29 = load i32, i32* %23, align 4
  %bf.clear30 = and i32 %bf.load29, 16777215
  store i32 %bf.clear30, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.22
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  store i32 16, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %24 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common32 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type33, align 8
  %type34 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %align35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 7
  %26 = load i32, i32* %align35, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.31, %if.then, %cond.end.20, %sw.bb.3, %cond.end
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @array_type_nelts(%union.tree_node* %type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %index_type = alloca %union.tree_node*, align 8
  %min = alloca %union.tree_node*, align 8
  %max = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %values, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %2, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %values3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %values3, align 8
  store %union.tree_node* %4, %union.tree_node** %index_type, align 8
  %5 = load %union.tree_node*, %union.tree_node** %index_type, align 8
  %type4 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 12
  %6 = load %union.tree_node*, %union.tree_node** %minval, align 8
  store %union.tree_node* %6, %union.tree_node** %min, align 8
  %7 = load %union.tree_node*, %union.tree_node** %index_type, align 8
  %type5 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 13
  %8 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  store %union.tree_node* %8, %union.tree_node** %max, align 8
  %9 = load %union.tree_node*, %union.tree_node** %min, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %9)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %max, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %max, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %13 = load %union.tree_node*, %union.tree_node** %max, align 8
  %14 = load %union.tree_node*, %union.tree_node** %min, align 8
  %call8 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %12, %union.tree_node* %13, %union.tree_node* %14)
  %call9 = call %union.tree_node* @fold(%union.tree_node* %call8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %10, %cond.true ], [ %call9, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %15 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %15
}

declare %union.tree_node* @fold(%union.tree_node*) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build(i32 %code, %union.tree_node* %tt, ...) #0 {
entry:
  %code.addr = alloca i32, align 4
  %tt.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %fro = alloca i32, align 4
  %constant = alloca i32, align 4
  %p = alloca [1 x %struct.__va_list_tag], align 16
  %arg0 = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %arg0117 = alloca %union.tree_node*, align 8
  %operand = alloca %union.tree_node*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %union.tree_node* %tt, %union.tree_node** %tt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %code.addr, align 4
  %call = call %union.tree_node* @make_node(i32 %0)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %1 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %length, align 4
  %3 = load %union.tree_node*, %union.tree_node** %tt.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %3, %union.tree_node** %type, align 8
  %5 = load i32, i32* %code.addr, align 4
  %call2 = call i32 @first_rtl_op(i32 %5)
  store i32 %call2, i32* %fro, align 4
  %6 = load i32, i32* %code.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %code.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 49
  br i1 %cmp9, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %code.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 50
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.11
  %12 = load i32, i32* %code.addr, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom17
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv19, 99
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.11, %lor.lhs.false, %entry
  %14 = phi i1 [ true, %lor.lhs.false.11 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp20, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  store i32 %lor.ext, i32* %constant, align 4
  %15 = load i32, i32* %length, align 4
  %cmp22 = icmp eq i32 %15, 2
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay24, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay24, i32 0, i32 3
  %reg_save_area = load i8*, i8** %16
  %17 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %18 = bitcast i8* %17 to %union.tree_node**
  %19 = add i32 %gp_offset, 8
  store i32 %19, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay24, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %20 = bitcast i8* %overflow_arg_area to %union.tree_node**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %union.tree_node** [ %18, %vaarg.in_reg ], [ %20, %vaarg.in_mem ]
  %21 = load %union.tree_node*, %union.tree_node** %vaarg.addr
  store %union.tree_node* %21, %union.tree_node** %arg0, align 8
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay25, i32 0, i32 0
  %gp_offset27 = load i32, i32* %gp_offset_p26
  %fits_in_gp28 = icmp ule i32 %gp_offset27, 40
  br i1 %fits_in_gp28, label %vaarg.in_reg.29, label %vaarg.in_mem.31

vaarg.in_reg.29:                                  ; preds = %vaarg.end
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay25, i32 0, i32 3
  %reg_save_area30 = load i8*, i8** %22
  %23 = getelementptr i8, i8* %reg_save_area30, i32 %gp_offset27
  %24 = bitcast i8* %23 to %union.tree_node**
  %25 = add i32 %gp_offset27, 8
  store i32 %25, i32* %gp_offset_p26
  br label %vaarg.end.35

vaarg.in_mem.31:                                  ; preds = %vaarg.end
  %overflow_arg_area_p32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay25, i32 0, i32 2
  %overflow_arg_area33 = load i8*, i8** %overflow_arg_area_p32
  %26 = bitcast i8* %overflow_arg_area33 to %union.tree_node**
  %overflow_arg_area.next34 = getelementptr i8, i8* %overflow_arg_area33, i32 8
  store i8* %overflow_arg_area.next34, i8** %overflow_arg_area_p32
  br label %vaarg.end.35

vaarg.end.35:                                     ; preds = %vaarg.in_mem.31, %vaarg.in_reg.29
  %vaarg.addr36 = phi %union.tree_node** [ %24, %vaarg.in_reg.29 ], [ %26, %vaarg.in_mem.31 ]
  %27 = load %union.tree_node*, %union.tree_node** %vaarg.addr36
  store %union.tree_node* %27, %union.tree_node** %arg1, align 8
  %28 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %29 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* %28, %union.tree_node** %arrayidx37, align 8
  %30 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %31 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp38 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands39 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands39, i32 0, i64 1
  store %union.tree_node* %30, %union.tree_node** %arrayidx40, align 8
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common41 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.clear = and i32 %bf.load, -4097
  %bf.set = or i32 %bf.clear, 4096
  store i32 %bf.set, i32* %readonly_flag, align 8
  %33 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %tobool = icmp ne %union.tree_node* %33, null
  br i1 %tobool, label %land.lhs.true, label %if.end.74

land.lhs.true:                                    ; preds = %vaarg.end.35
  %34 = load i32, i32* %fro, align 4
  %cmp42 = icmp sgt i32 %34, 0
  br i1 %cmp42, label %if.then.44, label %if.end.74

if.then.44:                                       ; preds = %land.lhs.true
  %35 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common45 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 2
  %bf.load46 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load46, 8
  %bf.clear47 = and i32 %bf.lshr, 1
  %tobool48 = icmp ne i32 %bf.clear47, 0
  br i1 %tobool48, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %if.then.44
  %36 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common50 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %side_effects_flag51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %side_effects_flag51, align 8
  %bf.clear53 = and i32 %bf.load52, -257
  %bf.set54 = or i32 %bf.clear53, 256
  store i32 %bf.set54, i32* %side_effects_flag51, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.49, %if.then.44
  %37 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common55 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %readonly_flag56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common55, i32 0, i32 2
  %bf.load57 = load i32, i32* %readonly_flag56, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 12
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %if.end.66, label %if.then.61

if.then.61:                                       ; preds = %if.end
  %38 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common62 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %readonly_flag63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %readonly_flag63, align 8
  %bf.clear65 = and i32 %bf.load64, -4097
  store i32 %bf.clear65, i32* %readonly_flag63, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end
  %39 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common67 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load68 = load i32, i32* %constant_flag, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 9
  %bf.clear70 = and i32 %bf.lshr69, 1
  %tobool71 = icmp ne i32 %bf.clear70, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.66
  store i32 0, i32* %constant, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.66
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true, %vaarg.end.35
  %40 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %tobool75 = icmp ne %union.tree_node* %40, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.113

land.lhs.true.76:                                 ; preds = %if.end.74
  %41 = load i32, i32* %fro, align 4
  %cmp77 = icmp sgt i32 %41, 1
  br i1 %cmp77, label %if.then.79, label %if.end.113

if.then.79:                                       ; preds = %land.lhs.true.76
  %42 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common80 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %side_effects_flag81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %side_effects_flag81, align 8
  %bf.lshr83 = lshr i32 %bf.load82, 8
  %bf.clear84 = and i32 %bf.lshr83, 1
  %tobool85 = icmp ne i32 %bf.clear84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.then.79
  %43 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common87 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %side_effects_flag88 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common87, i32 0, i32 2
  %bf.load89 = load i32, i32* %side_effects_flag88, align 8
  %bf.clear90 = and i32 %bf.load89, -257
  %bf.set91 = or i32 %bf.clear90, 256
  store i32 %bf.set91, i32* %side_effects_flag88, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.86, %if.then.79
  %44 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common93 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %readonly_flag94 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common93, i32 0, i32 2
  %bf.load95 = load i32, i32* %readonly_flag94, align 8
  %bf.lshr96 = lshr i32 %bf.load95, 12
  %bf.clear97 = and i32 %bf.lshr96, 1
  %tobool98 = icmp ne i32 %bf.clear97, 0
  br i1 %tobool98, label %if.end.104, label %if.then.99

if.then.99:                                       ; preds = %if.end.92
  %45 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common100 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %readonly_flag101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 2
  %bf.load102 = load i32, i32* %readonly_flag101, align 8
  %bf.clear103 = and i32 %bf.load102, -4097
  store i32 %bf.clear103, i32* %readonly_flag101, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %if.end.92
  %46 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common105 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %constant_flag106 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common105, i32 0, i32 2
  %bf.load107 = load i32, i32* %constant_flag106, align 8
  %bf.lshr108 = lshr i32 %bf.load107, 9
  %bf.clear109 = and i32 %bf.lshr108, 1
  %tobool110 = icmp ne i32 %bf.clear109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.end.104
  store i32 0, i32* %constant, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.104
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %land.lhs.true.76, %if.end.74
  br label %if.end.187

if.else:                                          ; preds = %lor.end
  %47 = load i32, i32* %length, align 4
  %cmp114 = icmp eq i32 %47, 1
  br i1 %cmp114, label %if.then.116, label %if.else.140

if.then.116:                                      ; preds = %if.else
  %arraydecay118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 0
  %gp_offset120 = load i32, i32* %gp_offset_p119
  %fits_in_gp121 = icmp ule i32 %gp_offset120, 40
  br i1 %fits_in_gp121, label %vaarg.in_reg.122, label %vaarg.in_mem.124

vaarg.in_reg.122:                                 ; preds = %if.then.116
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 3
  %reg_save_area123 = load i8*, i8** %48
  %49 = getelementptr i8, i8* %reg_save_area123, i32 %gp_offset120
  %50 = bitcast i8* %49 to %union.tree_node**
  %51 = add i32 %gp_offset120, 8
  store i32 %51, i32* %gp_offset_p119
  br label %vaarg.end.128

vaarg.in_mem.124:                                 ; preds = %if.then.116
  %overflow_arg_area_p125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay118, i32 0, i32 2
  %overflow_arg_area126 = load i8*, i8** %overflow_arg_area_p125
  %52 = bitcast i8* %overflow_arg_area126 to %union.tree_node**
  %overflow_arg_area.next127 = getelementptr i8, i8* %overflow_arg_area126, i32 8
  store i8* %overflow_arg_area.next127, i8** %overflow_arg_area_p125
  br label %vaarg.end.128

vaarg.end.128:                                    ; preds = %vaarg.in_mem.124, %vaarg.in_reg.122
  %vaarg.addr129 = phi %union.tree_node** [ %50, %vaarg.in_reg.122 ], [ %52, %vaarg.in_mem.124 ]
  %53 = load %union.tree_node*, %union.tree_node** %vaarg.addr129
  store %union.tree_node* %53, %union.tree_node** %arg0117, align 8
  %54 = load i32, i32* %code.addr, align 4
  %idxprom130 = sext i32 %54 to i64
  %arrayidx131 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom130
  %55 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %55 to i32
  %cmp133 = icmp ne i32 %conv132, 115
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %vaarg.end.128
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2451, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__FUNCTION__.build, i32 0, i32 0)) #6
  unreachable

if.end.136:                                       ; preds = %vaarg.end.128
  %56 = load %union.tree_node*, %union.tree_node** %arg0117, align 8
  %57 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp137 = bitcast %union.tree_node* %57 to %struct.tree_exp*
  %operands138 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp137, i32 0, i32 2
  %arrayidx139 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands138, i32 0, i64 0
  store %union.tree_node* %56, %union.tree_node** %arrayidx139, align 8
  br label %if.end.186

if.else.140:                                      ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.140
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %length, align 4
  %cmp141 = icmp slt i32 %58, %59
  br i1 %cmp141, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay143 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 0
  %gp_offset145 = load i32, i32* %gp_offset_p144
  %fits_in_gp146 = icmp ule i32 %gp_offset145, 40
  br i1 %fits_in_gp146, label %vaarg.in_reg.147, label %vaarg.in_mem.149

vaarg.in_reg.147:                                 ; preds = %for.body
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 3
  %reg_save_area148 = load i8*, i8** %60
  %61 = getelementptr i8, i8* %reg_save_area148, i32 %gp_offset145
  %62 = bitcast i8* %61 to %union.tree_node**
  %63 = add i32 %gp_offset145, 8
  store i32 %63, i32* %gp_offset_p144
  br label %vaarg.end.153

vaarg.in_mem.149:                                 ; preds = %for.body
  %overflow_arg_area_p150 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 2
  %overflow_arg_area151 = load i8*, i8** %overflow_arg_area_p150
  %64 = bitcast i8* %overflow_arg_area151 to %union.tree_node**
  %overflow_arg_area.next152 = getelementptr i8, i8* %overflow_arg_area151, i32 8
  store i8* %overflow_arg_area.next152, i8** %overflow_arg_area_p150
  br label %vaarg.end.153

vaarg.end.153:                                    ; preds = %vaarg.in_mem.149, %vaarg.in_reg.147
  %vaarg.addr154 = phi %union.tree_node** [ %62, %vaarg.in_reg.147 ], [ %64, %vaarg.in_mem.149 ]
  %65 = load %union.tree_node*, %union.tree_node** %vaarg.addr154
  store %union.tree_node* %65, %union.tree_node** %operand, align 8
  %66 = load %union.tree_node*, %union.tree_node** %operand, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %67 to i64
  %68 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp156 = bitcast %union.tree_node* %68 to %struct.tree_exp*
  %operands157 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp156, i32 0, i32 2
  %arrayidx158 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands157, i32 0, i64 %idxprom155
  store %union.tree_node* %66, %union.tree_node** %arrayidx158, align 8
  %69 = load %union.tree_node*, %union.tree_node** %operand, align 8
  %tobool159 = icmp ne %union.tree_node* %69, null
  br i1 %tobool159, label %land.lhs.true.160, label %if.end.185

land.lhs.true.160:                                ; preds = %vaarg.end.153
  %70 = load i32, i32* %fro, align 4
  %71 = load i32, i32* %i, align 4
  %cmp161 = icmp sgt i32 %70, %71
  br i1 %cmp161, label %if.then.163, label %if.end.185

if.then.163:                                      ; preds = %land.lhs.true.160
  %72 = load %union.tree_node*, %union.tree_node** %operand, align 8
  %common164 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %side_effects_flag165 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common164, i32 0, i32 2
  %bf.load166 = load i32, i32* %side_effects_flag165, align 8
  %bf.lshr167 = lshr i32 %bf.load166, 8
  %bf.clear168 = and i32 %bf.lshr167, 1
  %tobool169 = icmp ne i32 %bf.clear168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.176

if.then.170:                                      ; preds = %if.then.163
  %73 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common171 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %side_effects_flag172 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common171, i32 0, i32 2
  %bf.load173 = load i32, i32* %side_effects_flag172, align 8
  %bf.clear174 = and i32 %bf.load173, -257
  %bf.set175 = or i32 %bf.clear174, 256
  store i32 %bf.set175, i32* %side_effects_flag172, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.170, %if.then.163
  %74 = load %union.tree_node*, %union.tree_node** %operand, align 8
  %common177 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %constant_flag178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common177, i32 0, i32 2
  %bf.load179 = load i32, i32* %constant_flag178, align 8
  %bf.lshr180 = lshr i32 %bf.load179, 9
  %bf.clear181 = and i32 %bf.lshr180, 1
  %tobool182 = icmp ne i32 %bf.clear181, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %if.end.176
  store i32 0, i32* %constant, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.183, %if.end.176
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.160, %vaarg.end.153
  br label %for.inc

for.inc:                                          ; preds = %if.end.185
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.186

if.end.186:                                       ; preds = %for.end, %if.end.136
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.113
  %arraydecay188 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay188189 = bitcast %struct.__va_list_tag* %arraydecay188 to i8*
  call void @llvm.va_end(i8* %arraydecay188189)
  %76 = load i32, i32* %constant, align 4
  %77 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common190 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %constant_flag191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common190, i32 0, i32 2
  %bf.load192 = load i32, i32* %constant_flag191, align 8
  %bf.value = and i32 %76, 1
  %bf.shl = shl i32 %bf.value, 9
  %bf.clear193 = and i32 %bf.load192, -513
  %bf.set194 = or i32 %bf.clear193, %bf.shl
  store i32 %bf.set194, i32* %constant_flag191, align 8
  %78 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %78
}

; Function Attrs: nounwind uwtable
define i32 @staticp(%union.tree_node* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arg, %union.tree_node** %arg.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 30, label %sw.bb
    i32 34, label %sw.bb.9
    i32 46, label %sw.bb.33
    i32 31, label %sw.bb.39
    i32 29, label %sw.bb.39
    i32 39, label %sw.bb.40
    i32 40, label %sw.bb.55
    i32 43, label %sw.bb.56
    i32 44, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %call = call %union.tree_node* @decl_function_context(%union.tree_node* %1)
  %cmp = icmp eq %union.tree_node* %call, null
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %2 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %3 = bitcast i48* %regdecl_flag to i64*
  %bf.load1 = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load1, 10
  %bf.clear2 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear2 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %sw.bb
  %4 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %decl3 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %non_addr_const_p = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 5
  %5 = bitcast i48* %non_addr_const_p to i64*
  %bf.load4 = load i64, i64* %5, align 8
  %bf.lshr5 = lshr i64 %bf.load4, 24
  %bf.clear6 = and i64 %bf.lshr5, 1
  %bf.cast7 = trunc i64 %bf.clear6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %6 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %common10 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %static_flag, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 18
  %bf.clear13 = and i32 %bf.lshr12, 1
  %tobool14 = icmp ne i32 %bf.clear13, 0
  br i1 %tobool14, label %land.rhs.22, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %sw.bb.9
  %8 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %decl16 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 5
  %9 = bitcast i48* %external_flag to i64*
  %bf.load17 = load i64, i64* %9, align 8
  %bf.lshr18 = lshr i64 %bf.load17, 8
  %bf.clear19 = and i64 %bf.lshr18, 1
  %bf.cast20 = trunc i64 %bf.clear19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.31

land.rhs.22:                                      ; preds = %lor.lhs.false.15, %sw.bb.9
  %10 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %decl23 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %non_addr_const_p24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 5
  %11 = bitcast i48* %non_addr_const_p24 to i64*
  %bf.load25 = load i64, i64* %11, align 8
  %bf.lshr26 = lshr i64 %bf.load25, 24
  %bf.clear27 = and i64 %bf.lshr26, 1
  %bf.cast28 = trunc i64 %bf.clear27 to i32
  %tobool29 = icmp ne i32 %bf.cast28, 0
  %lnot30 = xor i1 %tobool29, true
  br label %land.end.31

land.end.31:                                      ; preds = %land.rhs.22, %lor.lhs.false.15
  %12 = phi i1 [ false, %lor.lhs.false.15 ], [ %lnot30, %land.rhs.22 ]
  %land.ext32 = zext i1 %12 to i32
  store i32 %land.ext32, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %entry
  %13 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %common34 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %static_flag35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %static_flag35, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 18
  %bf.clear38 = and i32 %bf.lshr37, 1
  store i32 %bf.clear38, i32* %retval
  br label %return

sw.bb.39:                                         ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %entry
  %14 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %exp = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %decl41 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 5
  %16 = bitcast i48* %bit_field_flag to i64*
  %bf.load42 = load i64, i64* %16, align 8
  %bf.lshr43 = lshr i64 %bf.load42, 12
  %bf.clear44 = and i64 %bf.lshr43, 1
  %bf.cast45 = trunc i64 %bf.clear44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %land.end.53, label %land.rhs.47

land.rhs.47:                                      ; preds = %sw.bb.40
  %17 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %exp48 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %call51 = call i32 @staticp(%union.tree_node* %18)
  %tobool52 = icmp ne i32 %call51, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.47, %sw.bb.40
  %19 = phi i1 [ false, %sw.bb.40 ], [ %tobool52, %land.rhs.47 ]
  %land.ext54 = zext i1 %19 to i32
  store i32 %land.ext54, i32* %retval
  br label %return

sw.bb.55:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %entry, %entry
  %20 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %common57 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type58 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type58, i32 0, i32 2
  %22 = load %union.tree_node*, %union.tree_node** %size, align 8
  %common59 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load61 = load i32, i32* %code60, align 8
  %bf.clear62 = and i32 %bf.load61, 255
  %cmp63 = icmp eq i32 %bf.clear62, 25
  br i1 %cmp63, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.56
  %23 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %exp64 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands65 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp64, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands65, i32 0, i64 1
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  %common67 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load69 = load i32, i32* %code68, align 8
  %bf.clear70 = and i32 %bf.load69, 255
  %cmp71 = icmp eq i32 %bf.clear70, 25
  br i1 %cmp71, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %25 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %exp72 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands73 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp72, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands73, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx74, align 8
  %call75 = call i32 @staticp(%union.tree_node* %26)
  store i32 %call75, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.bb.56
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %27 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %common76 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load78 = load i32, i32* %code77, align 8
  %bf.clear79 = and i32 %bf.load78, 255
  %cmp80 = icmp uge i32 %bf.clear79, 147
  br i1 %cmp80, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %sw.default
  %28 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 11), align 8
  %29 = load %union.tree_node*, %union.tree_node** %arg.addr, align 8
  %call82 = call i32 %28(%union.tree_node* %29)
  store i32 %call82, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.81, %if.then, %sw.bb.55, %land.end.53, %sw.bb.39, %sw.bb.33, %land.end.31, %land.end
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @decl_function_context(%union.tree_node* %decl) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %context = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 118
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %3, %union.tree_node** %context, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common7 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 30
  br i1 %cmp11, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl12 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %vindex = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 22
  %6 = load %union.tree_node*, %union.tree_node** %vindex, align 8
  %tobool = icmp ne %union.tree_node* %6, null
  br i1 %tobool, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %land.lhs.true
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common14 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type15 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %values, align 8
  %list = bitcast %union.tree_node* %9 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %10 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common16 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type17, align 8
  %type18 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 15
  %12 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %12, %union.tree_node** %context, align 8
  br label %if.end.22

if.else.19:                                       ; preds = %land.lhs.true, %if.else
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %context21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 9
  %14 = load %union.tree_node*, %union.tree_node** %context21, align 8
  store %union.tree_node* %14, %union.tree_node** %context, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end.23
  %15 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool24 = icmp ne %union.tree_node* %15, null
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common25 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load27 = load i32, i32* %code26, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %cmp29 = icmp ne i32 %bf.clear28, 30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp29, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common30 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %code31, align 8
  %bf.clear33 = and i32 %bf.load32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 4
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %while.body
  %19 = load %union.tree_node*, %union.tree_node** %context, align 8
  %block = bitcast %union.tree_node* %19 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 4
  %20 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  store %union.tree_node* %20, %union.tree_node** %context, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %while.body
  %21 = load %union.tree_node*, %union.tree_node** %context, align 8
  %call = call %union.tree_node* @get_containing_scope(%union.tree_node* %21)
  store %union.tree_node* %call, %union.tree_node** %context, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load %union.tree_node*, %union.tree_node** %context, align 8
  store %union.tree_node* %22, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %23
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @save_expr(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %inner = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @fold(%union.tree_node* %0)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 116
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %3, %union.tree_node** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %4, %union.tree_node** %inner, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %5 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %idxprom = sext i32 %bf.clear4 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv, 49
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %7 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common8 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %idxprom12 = sext i32 %bf.clear11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv14, 50
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp17 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 1
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load21 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load21, 9
  %bf.clear22 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.cond
  %12 = phi i1 [ true, %for.cond ], [ %11, %land.end ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp23 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands24 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp23, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands24, i32 0, i64 0
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx25, align 8
  store %union.tree_node* %14, %union.tree_node** %inner, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %15 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common26 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %constant_flag27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %constant_flag27, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 9
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %16 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common32 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load33 = load i32, i32* %readonly_flag, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 12
  %bf.clear35 = and i32 %bf.lshr34, 1
  %tobool36 = icmp ne i32 %bf.clear35, 0
  br i1 %tobool36, label %land.lhs.true, label %lor.lhs.false.42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common37 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load38 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 8
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %lor.lhs.false.42, label %if.then

lor.lhs.false.42:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %18 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common43 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code44 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common43, i32 0, i32 2
  %bf.load45 = load i32, i32* %code44, align 8
  %bf.clear46 = and i32 %bf.load45, 255
  %cmp47 = icmp eq i32 %bf.clear46, 118
  br i1 %cmp47, label %if.then, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.42
  %19 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common50 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %code51, align 8
  %bf.clear53 = and i32 %bf.load52, 255
  %cmp54 = icmp eq i32 %bf.clear53, 0
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.49, %lor.lhs.false.42, %land.lhs.true, %for.end
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %20, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.49
  %21 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call56 = call i32 @contains_placeholder_p(%union.tree_node* %21)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end
  %22 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %22, %union.tree_node** %retval
  br label %return

if.end.59:                                        ; preds = %if.end
  %23 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common60 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type, align 8
  %25 = load %union.tree_node*, %union.tree_node** %t, align 8
  %26 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %call61 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 118, %union.tree_node* %24, %union.tree_node* %25, %union.tree_node* %26, %union.tree_node* null)
  store %union.tree_node* %call61, %union.tree_node** %t, align 8
  %27 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common62 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %side_effects_flag63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %side_effects_flag63, align 8
  %bf.clear65 = and i32 %bf.load64, -257
  %bf.set = or i32 %bf.clear65, 256
  store i32 %bf.set, i32* %side_effects_flag63, align 8
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common66 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %readonly_flag67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 2
  %bf.load68 = load i32, i32* %readonly_flag67, align 8
  %bf.clear69 = and i32 %bf.load68, -4097
  %bf.set70 = or i32 %bf.clear69, 4096
  store i32 %bf.set70, i32* %readonly_flag67, align 8
  %29 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %29, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58, %if.then
  %30 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %30
}

; Function Attrs: nounwind uwtable
define i32 @contains_placeholder_p(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %result = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 58
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %code, align 4
  %cmp3 = icmp eq i32 %3, 57
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5
  %4 = load i32, i32* %code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default.112 [
    i32 114, label %sw.bb
    i32 120, label %sw.bb.9
    i32 49, label %sw.bb.23
    i32 50, label %sw.bb.23
    i32 60, label %sw.bb.23
    i32 101, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.6
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp7 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8
  %call = call i32 @contains_placeholder_p(%union.tree_node* %7)
  store i32 %call, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end.6
  %8 = load i32, i32* %code, align 4
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %sw.bb.9
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list = bitcast %union.tree_node* %9 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %10 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call13 = call i32 @contains_placeholder_p(%union.tree_node* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.12
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common15 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp16 = icmp ne %union.tree_node* %12, null
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common18 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain19, align 8
  %call20 = call i32 @contains_placeholder_p(%union.tree_node* %14)
  %tobool21 = icmp ne i32 %call20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %tobool21, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then.12
  %16 = phi i1 [ true, %if.then.12 ], [ %15, %land.end ]
  %lor.ext = zext i1 %16 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb.9
  br label %sw.epilog.113

sw.bb.23:                                         ; preds = %if.end.6, %if.end.6, %if.end.6, %if.end.6
  %17 = load i32, i32* %code, align 4
  switch i32 %17, label %sw.default [
    i32 47, label %sw.bb.24
    i32 120, label %sw.bb.29
    i32 46, label %sw.bb.29
    i32 51, label %sw.bb.30
    i32 118, label %sw.bb.49
    i32 53, label %sw.bb.77
  ]

sw.bb.24:                                         ; preds = %sw.bb.23
  %18 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp25 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands26 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp25, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands26, i32 0, i64 1
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8
  %call28 = call i32 @contains_placeholder_p(%union.tree_node* %19)
  store i32 %call28, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %sw.bb.23, %sw.bb.23
  store i32 0, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %sw.bb.23
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp31 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands32 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands32, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8
  %call34 = call i32 @contains_placeholder_p(%union.tree_node* %21)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %lor.end.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.30
  %22 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp36 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 1
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  %call39 = call i32 @contains_placeholder_p(%union.tree_node* %23)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %lor.end.47, label %lor.rhs.41

lor.rhs.41:                                       ; preds = %lor.lhs.false
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp42 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands43 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands43, i32 0, i64 2
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx44, align 8
  %call45 = call i32 @contains_placeholder_p(%union.tree_node* %25)
  %tobool46 = icmp ne i32 %call45, 0
  br label %lor.end.47

lor.end.47:                                       ; preds = %lor.rhs.41, %lor.lhs.false, %sw.bb.30
  %26 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb.30 ], [ %tobool46, %lor.rhs.41 ]
  %lor.ext48 = zext i1 %26 to i32
  store i32 %lor.ext48, i32* %retval
  br label %return

sw.bb.49:                                         ; preds = %sw.bb.23
  %27 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common50 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load51 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load51, 13
  %bf.clear52 = and i32 %bf.lshr, 1
  %tobool53 = icmp ne i32 %bf.clear52, 0
  br i1 %tobool53, label %if.then.60, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %sw.bb.49
  %28 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp55 = bitcast %union.tree_node* %28 to %struct.tree_exp*
  %operands56 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp55, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands56, i32 0, i64 2
  %29 = bitcast %union.tree_node** %arrayidx57 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %cmp58 = icmp ne %struct.rtx_def* %30, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.54, %sw.bb.49
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %lor.lhs.false.54
  %31 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common62 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %unsigned_flag63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %unsigned_flag63, align 8
  %bf.clear65 = and i32 %bf.load64, -8193
  %bf.set = or i32 %bf.clear65, 8192
  store i32 %bf.set, i32* %unsigned_flag63, align 8
  %32 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp66 = bitcast %union.tree_node* %32 to %struct.tree_exp*
  %operands67 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp66, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands67, i32 0, i64 0
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx68, align 8
  %call69 = call i32 @contains_placeholder_p(%union.tree_node* %33)
  store i32 %call69, i32* %result, align 4
  %34 = load i32, i32* %result, align 4
  %tobool70 = icmp ne i32 %34, 0
  br i1 %tobool70, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %if.end.61
  %35 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common72 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %unsigned_flag73 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 2
  %bf.load74 = load i32, i32* %unsigned_flag73, align 8
  %bf.clear75 = and i32 %bf.load74, -8193
  store i32 %bf.clear75, i32* %unsigned_flag73, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %if.end.61
  %36 = load i32, i32* %result, align 4
  store i32 %36, i32* %retval
  br label %return

sw.bb.77:                                         ; preds = %sw.bb.23
  %37 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp78 = bitcast %union.tree_node* %37 to %struct.tree_exp*
  %operands79 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp78, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands79, i32 0, i64 1
  %38 = load %union.tree_node*, %union.tree_node** %arrayidx80, align 8
  %cmp81 = icmp ne %union.tree_node* %38, null
  br i1 %cmp81, label %land.rhs.83, label %land.end.89

land.rhs.83:                                      ; preds = %sw.bb.77
  %39 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp84 = bitcast %union.tree_node* %39 to %struct.tree_exp*
  %operands85 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp84, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands85, i32 0, i64 1
  %40 = load %union.tree_node*, %union.tree_node** %arrayidx86, align 8
  %call87 = call i32 @contains_placeholder_p(%union.tree_node* %40)
  %tobool88 = icmp ne i32 %call87, 0
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.83, %sw.bb.77
  %41 = phi i1 [ false, %sw.bb.77 ], [ %tobool88, %land.rhs.83 ]
  %land.ext = zext i1 %41 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %sw.bb.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %42 = load i32, i32* %code, align 4
  %idxprom90 = sext i32 %42 to i64
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom90
  %43 = load i32, i32* %arrayidx91, align 4
  switch i32 %43, label %sw.default.111 [
    i32 1, label %sw.bb.92
    i32 2, label %sw.bb.97
  ]

sw.bb.92:                                         ; preds = %sw.epilog
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp93 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands94 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp93, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands94, i32 0, i64 0
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx95, align 8
  %call96 = call i32 @contains_placeholder_p(%union.tree_node* %45)
  store i32 %call96, i32* %retval
  br label %return

sw.bb.97:                                         ; preds = %sw.epilog
  %46 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp98 = bitcast %union.tree_node* %46 to %struct.tree_exp*
  %operands99 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp98, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands99, i32 0, i64 0
  %47 = load %union.tree_node*, %union.tree_node** %arrayidx100, align 8
  %call101 = call i32 @contains_placeholder_p(%union.tree_node* %47)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %lor.end.109, label %lor.rhs.103

lor.rhs.103:                                      ; preds = %sw.bb.97
  %48 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp104 = bitcast %union.tree_node* %48 to %struct.tree_exp*
  %operands105 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp104, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands105, i32 0, i64 1
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx106, align 8
  %call107 = call i32 @contains_placeholder_p(%union.tree_node* %49)
  %tobool108 = icmp ne i32 %call107, 0
  br label %lor.end.109

lor.end.109:                                      ; preds = %lor.rhs.103, %sw.bb.97
  %50 = phi i1 [ true, %sw.bb.97 ], [ %tobool108, %lor.rhs.103 ]
  %lor.ext110 = zext i1 %50 to i32
  store i32 %lor.ext110, i32* %retval
  br label %return

sw.default.111:                                   ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

sw.default.112:                                   ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

sw.epilog.113:                                    ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.113, %sw.default.112, %sw.default.111, %lor.end.109, %sw.bb.92, %land.end.89, %if.end.76, %if.then.60, %lor.end.47, %sw.bb.29, %sw.bb.24, %lor.end, %sw.bb, %if.then.4, %if.then.2, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @unsave_expr(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 119
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* @build1(i32 119, %union.tree_node* %3, %union.tree_node* %4)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %5 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load3, 8
  %bf.clear4 = and i32 %bf.lshr, 1
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %side_effects_flag6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load7 = load i32, i32* %side_effects_flag6, align 8
  %bf.value = and i32 %bf.clear4, 1
  %bf.shl = shl i32 %bf.value, 8
  %bf.clear8 = and i32 %bf.load7, -257
  %bf.set = or i32 %bf.clear8, %bf.shl
  store i32 %bf.set, i32* %side_effects_flag6, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %7, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build1(i32 %code, %union.tree_node* %type, %union.tree_node* %node) #0 {
entry:
  %code.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %node.addr = alloca %union.tree_node*, align 8
  %length = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i32 40, i32* %length, align 4
  %0 = load i32, i32* %length, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @ggc_alloc(i64 %conv)
  %1 = bitcast i8* %call to %union.tree_node*
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %3 = bitcast %union.tree_node* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 1, i1 false)
  %4 = load i32, i32* %code.addr, align 4
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.value = and i32 %4, 255
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %code1, align 8
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common2 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  store %union.tree_node* %6, %union.tree_node** %type3, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  store i32 0, i32* %complexity, align 4
  %9 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp4 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* %9, %union.tree_node** %arrayidx, align 8
  %11 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %tobool = icmp ne %union.tree_node* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %code.addr, align 4
  %call5 = call i32 @first_rtl_op(i32 %12)
  %cmp = icmp ne i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common7 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load8 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load8, 8
  %bf.clear9 = and i32 %bf.lshr, 1
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common10 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %side_effects_flag11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %side_effects_flag11, align 8
  %bf.value13 = and i32 %bf.clear9, 1
  %bf.shl = shl i32 %bf.value13, 8
  %bf.clear14 = and i32 %bf.load12, -257
  %bf.set15 = or i32 %bf.clear14, %bf.shl
  store i32 %bf.set15, i32* %side_effects_flag11, align 8
  %15 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common16 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %readonly_flag, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 12
  %bf.clear19 = and i32 %bf.lshr18, 1
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common20 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %readonly_flag21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %readonly_flag21, align 8
  %bf.value23 = and i32 %bf.clear19, 1
  %bf.shl24 = shl i32 %bf.value23, 12
  %bf.clear25 = and i32 %bf.load22, -4097
  %bf.set26 = or i32 %bf.clear25, %bf.shl24
  store i32 %bf.set26, i32* %readonly_flag21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load i32, i32* %code.addr, align 4
  switch i32 %17, label %sw.default [
    i32 49, label %sw.bb
    i32 48, label %sw.bb
    i32 133, label %sw.bb
    i32 120, label %sw.bb
    i32 129, label %sw.bb
    i32 130, label %sw.bb
    i32 131, label %sw.bb
    i32 132, label %sw.bb
    i32 41, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common27 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %side_effects_flag28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load29 = load i32, i32* %side_effects_flag28, align 8
  %bf.clear30 = and i32 %bf.load29, -257
  %bf.set31 = or i32 %bf.clear30, 256
  store i32 %bf.set31, i32* %side_effects_flag28, align 8
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common32 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %readonly_flag33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load34 = load i32, i32* %readonly_flag33, align 8
  %bf.clear35 = and i32 %bf.load34, -4097
  store i32 %bf.clear35, i32* %readonly_flag33, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common37 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %readonly_flag38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load39 = load i32, i32* %readonly_flag38, align 8
  %bf.clear40 = and i32 %bf.load39, -4097
  store i32 %bf.clear40, i32* %readonly_flag38, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %21 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %22 to i32
  %cmp43 = icmp eq i32 %conv42, 49
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.59

land.lhs.true.45:                                 ; preds = %sw.default
  %23 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %tobool46 = icmp ne %union.tree_node* %23, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.59

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %24 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common48 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load49 = load i32, i32* %constant_flag, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 9
  %bf.clear51 = and i32 %bf.lshr50, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %land.lhs.true.47
  %25 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common54 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %constant_flag55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load56 = load i32, i32* %constant_flag55, align 8
  %bf.clear57 = and i32 %bf.load56, -513
  %bf.set58 = or i32 %bf.clear57, 512
  store i32 %bf.set58, i32* %constant_flag55, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %land.lhs.true.47, %land.lhs.true.45, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.59, %sw.bb.36, %sw.bb
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %26
}

; Function Attrs: nounwind uwtable
define i32 @first_rtl_op(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 118, label %sw.bb
    i32 136, label %sw.bb.1
    i32 120, label %sw.bb.1
    i32 55, label %sw.bb.2
    i32 54, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @unsave_expr_1(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 118, label %sw.bb
    i32 50, label %sw.bb.4
    i32 120, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr = lshr i32 %bf.load2, 14
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 2
  %3 = bitcast %union.tree_node** %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp5 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  %tobool8 = icmp ne %union.tree_node* %5, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.4
  br label %sw.epilog

if.end.10:                                        ; preds = %sw.bb.4
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp11 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 3
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp14 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands15 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp14, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands15, i32 0, i64 1
  store %union.tree_node* %7, %union.tree_node** %arrayidx16, align 8
  %9 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp17 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 3
  store %union.tree_node* null, %union.tree_node** %arrayidx19, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %10 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp21 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands22 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp21, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands22, i32 0, i64 0
  %11 = bitcast %union.tree_node** %arrayidx23 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %cmp = icmp ne %struct.rtx_def* %12, null
  br i1 %cmp, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.20
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 1712, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.unsave_expr_1, i32 0, i32 0)) #6
  unreachable

if.end.25:                                        ; preds = %sw.bb.20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_unsave_expr_now, align 8
  %cmp26 = icmp ne void (%union.tree_node*)* %13, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.default
  %14 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_unsave_expr_now, align 8
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  call void %14(%union.tree_node* %15)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %if.end.25, %if.end.10, %if.then.9, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @unsave_expr_now(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load void (%union.tree_node**)*, void (%union.tree_node**)** @lang_unsave, align 8
  %cmp = icmp ne void (%union.tree_node**)* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load void (%union.tree_node**)*, void (%union.tree_node**)** @lang_unsave, align 8
  call void %1(%union.tree_node** %expr.addr)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  call void @unsave_expr_now_r(%union.tree_node* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  ret %union.tree_node* %3
}

; Function Attrs: nounwind uwtable
define internal void @unsave_expr_now_r(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  call void @unsave_expr_1(%union.tree_node* %1)
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 99, label %sw.bb
    i32 116, label %sw.bb
    i32 100, label %sw.bb
    i32 98, label %sw.bb
    i32 120, label %sw.bb.2
    i32 101, label %sw.bb.8
    i32 114, label %sw.bb.8
    i32 115, label %sw.bb.8
    i32 60, label %sw.bb.8
    i32 50, label %sw.bb.8
    i32 49, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %sw.bb.2
  %6 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @unsave_expr_now_r(%union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain, align 8
  call void @unsave_expr_now_r(%union.tree_node* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %sw.bb.2
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %10 = load i32, i32* %code, align 4
  %call = call i32 @first_rtl_op(i32 %10)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.8
  %11 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %11, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 %idxprom11
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx12, align 8
  call void @unsave_expr_now_r(%union.tree_node* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 1768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.unsave_expr_now_r, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %if.then, %for.end, %if.end.7, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @unsafe_for_reeval(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %unsafeness = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %exp = alloca %union.tree_node*, align 8
  %first_rtl = alloca i32, align 4
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  store i32 0, i32* %unsafeness, align 4
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code3, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %call = call i32 @first_rtl_op(i32 %2)
  store i32 %call, i32* %first_rtl, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 118, label %sw.bb
    i32 120, label %sw.bb
    i32 2, label %sw.bb.4
    i32 53, label %sw.bb.9
    i32 50, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  store i32 2, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  store %union.tree_node* %4, %union.tree_node** %exp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.4
  %5 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %cmp5 = icmp ne %union.tree_node* %5, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call6 = call i32 @unsafe_for_reeval(%union.tree_node* %7)
  store i32 %call6, i32* %tmp, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32, i32* %unsafeness, align 4
  %cmp7 = icmp sgt i32 %8, %9
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %tmp, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %unsafeness, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %unsafeness, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %common8 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %13, %union.tree_node** %exp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %unsafeness, align 4
  store i32 %14, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp10 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call11 = call i32 @unsafe_for_reeval(%union.tree_node* %16)
  store i32 %call11, i32* %tmp, align 4
  %17 = load i32, i32* %tmp, align 4
  %cmp12 = icmp sgt i32 %17, 1
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %sw.bb.9
  %18 = load i32, i32* %tmp, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %sw.bb.9
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %18, %cond.true.13 ], [ 1, %cond.false.14 ]
  store i32 %cond16, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %if.end
  store i32 1, i32* %unsafeness, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %19 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** @lang_unsafe_for_reeval, align 8
  %cmp18 = icmp ne i32 (%union.tree_node*)* %19, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %sw.default
  %20 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** @lang_unsafe_for_reeval, align 8
  %21 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call20 = call i32 %20(%union.tree_node* %21)
  store i32 %call20, i32* %tmp, align 4
  %22 = load i32, i32* %tmp, align 4
  %cmp21 = icmp sge i32 %22, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  %23 = load i32, i32* %tmp, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.24, %sw.bb.17
  %24 = load i32, i32* %code, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx25, align 1
  %conv = sext i8 %25 to i32
  switch i32 %conv, label %sw.default.45 [
    i32 99, label %sw.bb.26
    i32 116, label %sw.bb.26
    i32 120, label %sw.bb.26
    i32 100, label %sw.bb.26
    i32 98, label %sw.bb.26
    i32 101, label %sw.bb.27
    i32 114, label %sw.bb.27
    i32 115, label %sw.bb.27
    i32 60, label %sw.bb.27
    i32 50, label %sw.bb.27
    i32 49, label %sw.bb.27
  ]

sw.bb.26:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  store i32 0, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %26 = load i32, i32* %first_rtl, align 4
  %sub = sub nsw i32 %26, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %sw.bb.27
  %27 = load i32, i32* %i, align 4
  %cmp29 = icmp sge i32 %27, 0
  br i1 %cmp29, label %for.body.31, label %for.end.44

for.body.31:                                      ; preds = %for.cond.28
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp33 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands34 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands34, i32 0, i64 %idxprom32
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx35, align 8
  %call36 = call i32 @unsafe_for_reeval(%union.tree_node* %30)
  store i32 %call36, i32* %tmp, align 4
  %31 = load i32, i32* %tmp, align 4
  %32 = load i32, i32* %unsafeness, align 4
  %cmp37 = icmp sgt i32 %31, %32
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %for.body.31
  %33 = load i32, i32* %tmp, align 4
  br label %cond.end.41

cond.false.40:                                    ; preds = %for.body.31
  %34 = load i32, i32* %unsafeness, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i32 [ %33, %cond.true.39 ], [ %34, %cond.false.40 ]
  store i32 %cond42, i32* %unsafeness, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %cond.end.41
  %35 = load i32, i32* %i, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.28

for.end.44:                                       ; preds = %for.cond.28
  %36 = load i32, i32* %unsafeness, align 4
  store i32 %36, i32* %retval
  br label %return

sw.default.45:                                    ; preds = %sw.epilog
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.45, %for.end.44, %sw.bb.26, %if.then.22, %cond.end.15, %for.end, %sw.bb, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @has_cleanups(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %nops = alloca i32, align 4
  %cmp = alloca i32, align 4
  %type = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  switch i32 %bf.clear3, label %sw.default [
    i32 50, label %sw.bb
    i32 136, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb.4
    i32 53, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp6 = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %3, %union.tree_node** %exp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.5
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %tobool7 = icmp ne %union.tree_node* %4, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call = call i32 @has_cleanups(%union.tree_node* %6)
  store i32 %call, i32* %cmp, align 4
  %7 = load i32, i32* %cmp, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  %8 = load i32, i32* %cmp, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common11 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %10, %union.tree_node** %exp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common12 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp sge i32 %bf.clear15, 147
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %sw.epilog
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common19 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %call23 = call i32 @first_rtl_op(i32 %bf.clear22)
  store i32 %call23, i32* %nops, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.69, %if.end.18
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nops, align 4
  %cmp25 = icmp slt i32 %13, %14
  br i1 %cmp25, label %for.body.26, label %for.end.70

for.body.26:                                      ; preds = %for.cond.24
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp27 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands28 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp27, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands28, i32 0, i64 %idxprom
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx29, align 8
  %cmp30 = icmp ne %union.tree_node* %17, null
  br i1 %cmp30, label %if.then.31, label %if.end.68

if.then.31:                                       ; preds = %for.body.26
  %18 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %18 to i64
  %19 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp33 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands34 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands34, i32 0, i64 %idxprom32
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx35, align 8
  %common36 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load38 = load i32, i32* %code37, align 8
  %bf.clear39 = and i32 %bf.load38, 255
  %idxprom40 = sext i32 %bf.clear39 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom40
  %21 = load i8, i8* %arrayidx41, align 1
  %conv = sext i8 %21 to i32
  store i32 %conv, i32* %type, align 4
  %22 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %22, 101
  br i1 %cmp42, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.31
  %23 = load i32, i32* %type, align 4
  %cmp44 = icmp eq i32 %23, 60
  br i1 %cmp44, label %if.then.58, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false
  %24 = load i32, i32* %type, align 4
  %cmp47 = icmp eq i32 %24, 49
  br i1 %cmp47, label %if.then.58, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.46
  %25 = load i32, i32* %type, align 4
  %cmp50 = icmp eq i32 %25, 50
  br i1 %cmp50, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.49
  %26 = load i32, i32* %type, align 4
  %cmp53 = icmp eq i32 %26, 114
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.52
  %27 = load i32, i32* %type, align 4
  %cmp56 = icmp eq i32 %27, 115
  br i1 %cmp56, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false.52, %lor.lhs.false.49, %lor.lhs.false.46, %lor.lhs.false, %if.then.31
  %28 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %28 to i64
  %29 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp60 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands61 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp60, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands61, i32 0, i64 %idxprom59
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx62, align 8
  %call63 = call i32 @has_cleanups(%union.tree_node* %30)
  store i32 %call63, i32* %cmp, align 4
  %31 = load i32, i32* %cmp, align 4
  %tobool64 = icmp ne i32 %31, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.58
  %32 = load i32, i32* %cmp, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false.55
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.26
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.24

for.end.70:                                       ; preds = %for.cond.24
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.70, %if.then.65, %if.then.17, %for.end, %if.then.9, %sw.bb.4, %sw.bb, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @substitute_in_expr(%union.tree_node* %exp, %union.tree_node* %f, %union.tree_node* %r) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %f.addr = alloca %union.tree_node*, align 8
  %r.addr = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %op0 = alloca %union.tree_node*, align 8
  %op1 = alloca %union.tree_node*, align 8
  %op2 = alloca %union.tree_node*, align 8
  %new = alloca %union.tree_node*, align 8
  %inner = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %f, %union.tree_node** %f.addr, align 8
  store %union.tree_node* %r, %union.tree_node** %r.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default.265 [
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 120, label %sw.bb.2
    i32 49, label %sw.bb.26
    i32 50, label %sw.bb.26
    i32 60, label %sw.bb.26
    i32 101, label %sw.bb.26
    i32 114, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %4, 57
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %5, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %sw.bb.2
  %6 = load i32, i32* %code, align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common7 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp8 = icmp eq %union.tree_node* %8, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common10 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain11, align 8
  %11 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call = call %union.tree_node* @substitute_in_expr(%union.tree_node* %10, %union.tree_node* %11, %union.tree_node* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ null, %cond.true ], [ %call, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %op0, align 8
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list = bitcast %union.tree_node* %13 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %value, align 8
  %15 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call12 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %14, %union.tree_node* %15, %union.tree_node* %16)
  store %union.tree_node* %call12, %union.tree_node** %op1, align 8
  %17 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %18 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common13 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 0
  %19 = load %union.tree_node*, %union.tree_node** %chain14, align 8
  %cmp15 = icmp eq %union.tree_node* %17, %19
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %20 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %21 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list17 = bitcast %union.tree_node* %21 to %struct.tree_list*
  %value18 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list17, i32 0, i32 2
  %22 = load %union.tree_node*, %union.tree_node** %value18, align 8
  %cmp19 = icmp eq %union.tree_node* %20, %22
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true
  %23 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %23, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list22 = bitcast %union.tree_node* %24 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list22, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %26 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %27 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %call23 = call %union.tree_node* @tree_cons(%union.tree_node* %25, %union.tree_node* %26, %union.tree_node* %27)
  store %union.tree_node* %call23, %union.tree_node** %retval
  br label %return

if.end.24:                                        ; preds = %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2069, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

sw.bb.26:                                         ; preds = %entry, %entry, %entry, %entry
  %28 = load i32, i32* %code, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom27
  %29 = load i32, i32* %arrayidx28, align 4
  switch i32 %29, label %sw.default [
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.47
    i32 3, label %sw.bb.82
  ]

sw.bb.29:                                         ; preds = %sw.bb.26
  %30 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp30 = bitcast %union.tree_node* %30 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp30, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx31, align 8
  %32 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %33 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call32 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %31, %union.tree_node* %32, %union.tree_node* %33)
  store %union.tree_node* %call32, %union.tree_node** %op0, align 8
  %34 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %35 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp33 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %operands34 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands34, i32 0, i64 0
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx35, align 8
  %cmp36 = icmp eq %union.tree_node* %34, %36
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.29
  %37 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %37, %union.tree_node** %retval
  br label %return

if.end.39:                                        ; preds = %sw.bb.29
  %38 = load i32, i32* %code, align 4
  %cmp40 = icmp eq i32 %38, 116
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %39 = load %union.tree_node*, %union.tree_node** %op0, align 8
  store %union.tree_node* %39, %union.tree_node** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %40 = load i32, i32* %code, align 4
  %41 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common44 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type, align 8
  %43 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %call45 = call %union.tree_node* @build1(i32 %40, %union.tree_node* %42, %union.tree_node* %43)
  %call46 = call %union.tree_node* @fold(%union.tree_node* %call45)
  store %union.tree_node* %call46, %union.tree_node** %new, align 8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %sw.bb.26
  %44 = load i32, i32* %code, align 4
  %cmp48 = icmp eq i32 %44, 120
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.bb.47
  %45 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %45, %union.tree_node** %retval
  br label %return

if.else.51:                                       ; preds = %sw.bb.47
  %46 = load i32, i32* %code, align 4
  %cmp52 = icmp eq i32 %46, 46
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else.51
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2094, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

if.end.55:                                        ; preds = %if.else.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55
  %47 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp57 = bitcast %union.tree_node* %47 to %struct.tree_exp*
  %operands58 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands58, i32 0, i64 0
  %48 = load %union.tree_node*, %union.tree_node** %arrayidx59, align 8
  %49 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %50 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call60 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %48, %union.tree_node* %49, %union.tree_node* %50)
  store %union.tree_node* %call60, %union.tree_node** %op0, align 8
  %51 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp61 = bitcast %union.tree_node* %51 to %struct.tree_exp*
  %operands62 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands62, i32 0, i64 1
  %52 = load %union.tree_node*, %union.tree_node** %arrayidx63, align 8
  %53 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %54 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call64 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %52, %union.tree_node* %53, %union.tree_node* %54)
  store %union.tree_node* %call64, %union.tree_node** %op1, align 8
  %55 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %56 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp65 = bitcast %union.tree_node* %56 to %struct.tree_exp*
  %operands66 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands66, i32 0, i64 0
  %57 = load %union.tree_node*, %union.tree_node** %arrayidx67, align 8
  %cmp68 = icmp eq %union.tree_node* %55, %57
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %if.end.56
  %58 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %59 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp71 = bitcast %union.tree_node* %59 to %struct.tree_exp*
  %operands72 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp71, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands72, i32 0, i64 1
  %60 = load %union.tree_node*, %union.tree_node** %arrayidx73, align 8
  %cmp74 = icmp eq %union.tree_node* %58, %60
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.70
  %61 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %61, %union.tree_node** %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.70, %if.end.56
  %62 = load i32, i32* %code, align 4
  %63 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common78 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %type79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %type79, align 8
  %65 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %66 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %call80 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %62, %union.tree_node* %64, %union.tree_node* %65, %union.tree_node* %66)
  %call81 = call %union.tree_node* @fold(%union.tree_node* %call80)
  store %union.tree_node* %call81, %union.tree_node** %new, align 8
  br label %sw.epilog

sw.bb.82:                                         ; preds = %sw.bb.26
  %67 = load i32, i32* %code, align 4
  %cmp83 = icmp eq i32 %67, 118
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %sw.bb.82
  %68 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %68, %union.tree_node** %retval
  br label %return

if.else.86:                                       ; preds = %sw.bb.82
  %69 = load i32, i32* %code, align 4
  %cmp87 = icmp eq i32 %69, 53
  br i1 %cmp87, label %if.then.89, label %if.else.107

if.then.89:                                       ; preds = %if.else.86
  %70 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp90 = bitcast %union.tree_node* %70 to %struct.tree_exp*
  %operands91 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp90, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands91, i32 0, i64 1
  %71 = load %union.tree_node*, %union.tree_node** %arrayidx92, align 8
  %72 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %73 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call93 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %71, %union.tree_node* %72, %union.tree_node* %73)
  store %union.tree_node* %call93, %union.tree_node** %op1, align 8
  %74 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %75 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp94 = bitcast %union.tree_node* %75 to %struct.tree_exp*
  %operands95 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp94, i32 0, i32 2
  %arrayidx96 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands95, i32 0, i64 1
  %76 = load %union.tree_node*, %union.tree_node** %arrayidx96, align 8
  %cmp97 = icmp eq %union.tree_node* %74, %76
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.89
  %77 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %77, %union.tree_node** %retval
  br label %return

if.end.100:                                       ; preds = %if.then.89
  %78 = load i32, i32* %code, align 4
  %79 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common101 = bitcast %union.tree_node* %79 to %struct.tree_common*
  %type102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common101, i32 0, i32 1
  %80 = load %union.tree_node*, %union.tree_node** %type102, align 8
  %81 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp103 = bitcast %union.tree_node* %81 to %struct.tree_exp*
  %operands104 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp103, i32 0, i32 2
  %arrayidx105 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands104, i32 0, i64 0
  %82 = load %union.tree_node*, %union.tree_node** %arrayidx105, align 8
  %83 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %call106 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %78, %union.tree_node* %80, %union.tree_node* %82, %union.tree_node* %83, %union.tree_node* null)
  store %union.tree_node* %call106, %union.tree_node** %retval
  br label %return

if.else.107:                                      ; preds = %if.else.86
  %84 = load i32, i32* %code, align 4
  %cmp108 = icmp ne i32 %84, 51
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.else.107
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

if.end.111:                                       ; preds = %if.else.107
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112
  %85 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp114 = bitcast %union.tree_node* %85 to %struct.tree_exp*
  %operands115 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp114, i32 0, i32 2
  %arrayidx116 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands115, i32 0, i64 0
  %86 = load %union.tree_node*, %union.tree_node** %arrayidx116, align 8
  %87 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %88 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call117 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %86, %union.tree_node* %87, %union.tree_node* %88)
  store %union.tree_node* %call117, %union.tree_node** %op0, align 8
  %89 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp118 = bitcast %union.tree_node* %89 to %struct.tree_exp*
  %operands119 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp118, i32 0, i32 2
  %arrayidx120 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands119, i32 0, i64 1
  %90 = load %union.tree_node*, %union.tree_node** %arrayidx120, align 8
  %91 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %92 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call121 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %90, %union.tree_node* %91, %union.tree_node* %92)
  store %union.tree_node* %call121, %union.tree_node** %op1, align 8
  %93 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp122 = bitcast %union.tree_node* %93 to %struct.tree_exp*
  %operands123 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp122, i32 0, i32 2
  %arrayidx124 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands123, i32 0, i64 2
  %94 = load %union.tree_node*, %union.tree_node** %arrayidx124, align 8
  %95 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %96 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call125 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %94, %union.tree_node* %95, %union.tree_node* %96)
  store %union.tree_node* %call125, %union.tree_node** %op2, align 8
  %97 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %98 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp126 = bitcast %union.tree_node* %98 to %struct.tree_exp*
  %operands127 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp126, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands127, i32 0, i64 0
  %99 = load %union.tree_node*, %union.tree_node** %arrayidx128, align 8
  %cmp129 = icmp eq %union.tree_node* %97, %99
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.144

land.lhs.true.131:                                ; preds = %if.end.113
  %100 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %101 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp132 = bitcast %union.tree_node* %101 to %struct.tree_exp*
  %operands133 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp132, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands133, i32 0, i64 1
  %102 = load %union.tree_node*, %union.tree_node** %arrayidx134, align 8
  %cmp135 = icmp eq %union.tree_node* %100, %102
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.144

land.lhs.true.137:                                ; preds = %land.lhs.true.131
  %103 = load %union.tree_node*, %union.tree_node** %op2, align 8
  %104 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp138 = bitcast %union.tree_node* %104 to %struct.tree_exp*
  %operands139 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp138, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands139, i32 0, i64 2
  %105 = load %union.tree_node*, %union.tree_node** %arrayidx140, align 8
  %cmp141 = icmp eq %union.tree_node* %103, %105
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %land.lhs.true.137
  %106 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %106, %union.tree_node** %retval
  br label %return

if.end.144:                                       ; preds = %land.lhs.true.137, %land.lhs.true.131, %if.end.113
  %107 = load i32, i32* %code, align 4
  %108 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common145 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %type146 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common145, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %type146, align 8
  %110 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %111 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %112 = load %union.tree_node*, %union.tree_node** %op2, align 8
  %call147 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %107, %union.tree_node* %109, %union.tree_node* %110, %union.tree_node* %111, %union.tree_node* %112)
  %call148 = call %union.tree_node* @fold(%union.tree_node* %call147)
  store %union.tree_node* %call148, %union.tree_node** %new, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.26
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %if.end.144, %if.end.77, %if.end.43
  br label %sw.epilog.266

sw.bb.149:                                        ; preds = %entry
  %113 = load i32, i32* %code, align 4
  switch i32 %113, label %sw.default.263 [
    i32 39, label %sw.bb.150
    i32 40, label %sw.bb.211
    i32 41, label %sw.bb.247
    i32 42, label %sw.bb.247
  ]

sw.bb.150:                                        ; preds = %sw.bb.149
  %114 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp151 = bitcast %union.tree_node* %114 to %struct.tree_exp*
  %operands152 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp151, i32 0, i32 2
  %arrayidx153 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands152, i32 0, i64 0
  %115 = load %union.tree_node*, %union.tree_node** %arrayidx153, align 8
  store %union.tree_node* %115, %union.tree_node** %inner, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.150
  %116 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common154 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %code155 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common154, i32 0, i32 2
  %bf.load156 = load i32, i32* %code155, align 8
  %bf.clear157 = and i32 %bf.load156, 255
  %idxprom158 = sext i32 %bf.clear157 to i64
  %arrayidx159 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom158
  %117 = load i8, i8* %arrayidx159, align 1
  %conv160 = sext i8 %117 to i32
  %cmp161 = icmp eq i32 %conv160, 114
  br i1 %cmp161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %118 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp163 = bitcast %union.tree_node* %118 to %struct.tree_exp*
  %operands164 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp163, i32 0, i32 2
  %arrayidx165 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands164, i32 0, i64 0
  %119 = load %union.tree_node*, %union.tree_node** %arrayidx165, align 8
  store %union.tree_node* %119, %union.tree_node** %inner, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %120 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common166 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %code167 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common166, i32 0, i32 2
  %bf.load168 = load i32, i32* %code167, align 8
  %bf.clear169 = and i32 %bf.load168, 255
  %cmp170 = icmp eq i32 %bf.clear169, 57
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.179

land.lhs.true.172:                                ; preds = %for.end
  %121 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp173 = bitcast %union.tree_node* %121 to %struct.tree_exp*
  %operands174 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp173, i32 0, i32 2
  %arrayidx175 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands174, i32 0, i64 1
  %122 = load %union.tree_node*, %union.tree_node** %arrayidx175, align 8
  %123 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %cmp176 = icmp eq %union.tree_node* %122, %123
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %land.lhs.true.172
  %124 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  store %union.tree_node* %124, %union.tree_node** %retval
  br label %return

if.end.179:                                       ; preds = %land.lhs.true.172, %for.end
  %125 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common180 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %code181 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common180, i32 0, i32 2
  %bf.load182 = load i32, i32* %code181, align 8
  %bf.clear183 = and i32 %bf.load182, 255
  %cmp184 = icmp eq i32 %bf.clear183, 57
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.192

land.lhs.true.186:                                ; preds = %if.end.179
  %126 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common187 = bitcast %union.tree_node* %126 to %struct.tree_common*
  %type188 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common187, i32 0, i32 1
  %127 = load %union.tree_node*, %union.tree_node** %type188, align 8
  %cmp189 = icmp eq %union.tree_node* %127, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.186
  %128 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %128, %union.tree_node** %retval
  br label %return

if.end.192:                                       ; preds = %land.lhs.true.186, %if.end.179
  %129 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp193 = bitcast %union.tree_node* %129 to %struct.tree_exp*
  %operands194 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp193, i32 0, i32 2
  %arrayidx195 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands194, i32 0, i64 0
  %130 = load %union.tree_node*, %union.tree_node** %arrayidx195, align 8
  %131 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %132 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call196 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %130, %union.tree_node* %131, %union.tree_node* %132)
  store %union.tree_node* %call196, %union.tree_node** %op0, align 8
  %133 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %134 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp197 = bitcast %union.tree_node* %134 to %struct.tree_exp*
  %operands198 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp197, i32 0, i32 2
  %arrayidx199 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands198, i32 0, i64 0
  %135 = load %union.tree_node*, %union.tree_node** %arrayidx199, align 8
  %cmp200 = icmp eq %union.tree_node* %133, %135
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.192
  %136 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %136, %union.tree_node** %retval
  br label %return

if.end.203:                                       ; preds = %if.end.192
  %137 = load i32, i32* %code, align 4
  %138 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common204 = bitcast %union.tree_node* %138 to %struct.tree_common*
  %type205 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common204, i32 0, i32 1
  %139 = load %union.tree_node*, %union.tree_node** %type205, align 8
  %140 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %141 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp206 = bitcast %union.tree_node* %141 to %struct.tree_exp*
  %operands207 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp206, i32 0, i32 2
  %arrayidx208 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands207, i32 0, i64 1
  %142 = load %union.tree_node*, %union.tree_node** %arrayidx208, align 8
  %call209 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %137, %union.tree_node* %139, %union.tree_node* %140, %union.tree_node* %142)
  %call210 = call %union.tree_node* @fold(%union.tree_node* %call209)
  store %union.tree_node* %call210, %union.tree_node** %new, align 8
  br label %sw.epilog.264

sw.bb.211:                                        ; preds = %sw.bb.149
  %143 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp212 = bitcast %union.tree_node* %143 to %struct.tree_exp*
  %operands213 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp212, i32 0, i32 2
  %arrayidx214 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands213, i32 0, i64 0
  %144 = load %union.tree_node*, %union.tree_node** %arrayidx214, align 8
  %145 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %146 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call215 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %144, %union.tree_node* %145, %union.tree_node* %146)
  store %union.tree_node* %call215, %union.tree_node** %op0, align 8
  %147 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp216 = bitcast %union.tree_node* %147 to %struct.tree_exp*
  %operands217 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp216, i32 0, i32 2
  %arrayidx218 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands217, i32 0, i64 1
  %148 = load %union.tree_node*, %union.tree_node** %arrayidx218, align 8
  %149 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %150 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call219 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %148, %union.tree_node* %149, %union.tree_node* %150)
  store %union.tree_node* %call219, %union.tree_node** %op1, align 8
  %151 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp220 = bitcast %union.tree_node* %151 to %struct.tree_exp*
  %operands221 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp220, i32 0, i32 2
  %arrayidx222 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands221, i32 0, i64 2
  %152 = load %union.tree_node*, %union.tree_node** %arrayidx222, align 8
  %153 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %154 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call223 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %152, %union.tree_node* %153, %union.tree_node* %154)
  store %union.tree_node* %call223, %union.tree_node** %op2, align 8
  %155 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %156 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp224 = bitcast %union.tree_node* %156 to %struct.tree_exp*
  %operands225 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp224, i32 0, i32 2
  %arrayidx226 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands225, i32 0, i64 0
  %157 = load %union.tree_node*, %union.tree_node** %arrayidx226, align 8
  %cmp227 = icmp eq %union.tree_node* %155, %157
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.242

land.lhs.true.229:                                ; preds = %sw.bb.211
  %158 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %159 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp230 = bitcast %union.tree_node* %159 to %struct.tree_exp*
  %operands231 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp230, i32 0, i32 2
  %arrayidx232 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands231, i32 0, i64 1
  %160 = load %union.tree_node*, %union.tree_node** %arrayidx232, align 8
  %cmp233 = icmp eq %union.tree_node* %158, %160
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.242

land.lhs.true.235:                                ; preds = %land.lhs.true.229
  %161 = load %union.tree_node*, %union.tree_node** %op2, align 8
  %162 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp236 = bitcast %union.tree_node* %162 to %struct.tree_exp*
  %operands237 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp236, i32 0, i32 2
  %arrayidx238 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands237, i32 0, i64 2
  %163 = load %union.tree_node*, %union.tree_node** %arrayidx238, align 8
  %cmp239 = icmp eq %union.tree_node* %161, %163
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %land.lhs.true.235
  %164 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %164, %union.tree_node** %retval
  br label %return

if.end.242:                                       ; preds = %land.lhs.true.235, %land.lhs.true.229, %sw.bb.211
  %165 = load i32, i32* %code, align 4
  %166 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common243 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %type244 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common243, i32 0, i32 1
  %167 = load %union.tree_node*, %union.tree_node** %type244, align 8
  %168 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %169 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %170 = load %union.tree_node*, %union.tree_node** %op2, align 8
  %call245 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %165, %union.tree_node* %167, %union.tree_node* %168, %union.tree_node* %169, %union.tree_node* %170)
  %call246 = call %union.tree_node* @fold(%union.tree_node* %call245)
  store %union.tree_node* %call246, %union.tree_node** %new, align 8
  br label %sw.epilog.264

sw.bb.247:                                        ; preds = %sw.bb.149, %sw.bb.149
  %171 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp248 = bitcast %union.tree_node* %171 to %struct.tree_exp*
  %operands249 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp248, i32 0, i32 2
  %arrayidx250 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands249, i32 0, i64 0
  %172 = load %union.tree_node*, %union.tree_node** %arrayidx250, align 8
  %173 = load %union.tree_node*, %union.tree_node** %f.addr, align 8
  %174 = load %union.tree_node*, %union.tree_node** %r.addr, align 8
  %call251 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %172, %union.tree_node* %173, %union.tree_node* %174)
  store %union.tree_node* %call251, %union.tree_node** %op0, align 8
  %175 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %176 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp252 = bitcast %union.tree_node* %176 to %struct.tree_exp*
  %operands253 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp252, i32 0, i32 2
  %arrayidx254 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands253, i32 0, i64 0
  %177 = load %union.tree_node*, %union.tree_node** %arrayidx254, align 8
  %cmp255 = icmp eq %union.tree_node* %175, %177
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %sw.bb.247
  %178 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %178, %union.tree_node** %retval
  br label %return

if.end.258:                                       ; preds = %sw.bb.247
  %179 = load i32, i32* %code, align 4
  %180 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common259 = bitcast %union.tree_node* %180 to %struct.tree_common*
  %type260 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common259, i32 0, i32 1
  %181 = load %union.tree_node*, %union.tree_node** %type260, align 8
  %182 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %call261 = call %union.tree_node* @build1(i32 %179, %union.tree_node* %181, %union.tree_node* %182)
  %call262 = call %union.tree_node* @fold(%union.tree_node* %call261)
  store %union.tree_node* %call262, %union.tree_node** %new, align 8
  br label %sw.epilog.264

sw.default.263:                                   ; preds = %sw.bb.149
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

sw.epilog.264:                                    ; preds = %if.end.258, %if.end.242, %if.end.203
  br label %sw.epilog.266

sw.default.265:                                   ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.substitute_in_expr, i32 0, i32 0)) #6
  unreachable

sw.epilog.266:                                    ; preds = %sw.epilog.264, %sw.epilog
  %183 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common267 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common267, i32 0, i32 2
  %bf.load268 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load268, 12
  %bf.clear269 = and i32 %bf.lshr, 1
  %184 = load %union.tree_node*, %union.tree_node** %new, align 8
  %common270 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %readonly_flag271 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common270, i32 0, i32 2
  %bf.load272 = load i32, i32* %readonly_flag271, align 8
  %bf.value = and i32 %bf.clear269, 1
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear273 = and i32 %bf.load272, -4097
  %bf.set = or i32 %bf.clear273, %bf.shl
  store i32 %bf.set, i32* %readonly_flag271, align 8
  %185 = load %union.tree_node*, %union.tree_node** %new, align 8
  store %union.tree_node* %185, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog.266, %if.then.257, %if.then.241, %if.then.202, %if.then.191, %if.then.178, %if.then.143, %if.end.100, %if.then.99, %if.then.85, %if.then.76, %if.then.50, %if.then.42, %if.then.38, %if.end, %if.then.21, %if.then, %sw.bb
  %186 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %186
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @stabilize_reference(%union.tree_node* %ref) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %ref.addr = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  store %union.tree_node* %ref, %union.tree_node** %ref.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  switch i32 %1, label %sw.default [
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 115, label %sw.bb.2
    i32 114, label %sw.bb.2
    i32 76, label %sw.bb.2
    i32 72, label %sw.bb.2
    i32 74, label %sw.bb.2
    i32 75, label %sw.bb.2
    i32 73, label %sw.bb.2
    i32 41, label %sw.bb.4
    i32 39, label %sw.bb.10
    i32 40, label %sw.bb.19
    i32 43, label %sw.bb.33
    i32 44, label %sw.bb.43
    i32 47, label %sw.bb.53
    i32 120, label %sw.bb.55
    i32 0, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  store %union.tree_node* %2, %union.tree_node** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load i32, i32* %code, align 4
  %4 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call = call %union.tree_node* @stabilize_reference(%union.tree_node* %5)
  %call3 = call %union.tree_node* (i32, ...) @build_nt(i32 %3, %union.tree_node* %call)
  store %union.tree_node* %call3, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp5 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  %call8 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %7)
  %call9 = call %union.tree_node* (i32, ...) @build_nt(i32 41, %union.tree_node* %call8)
  store %union.tree_node* %call9, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp11 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  %call14 = call %union.tree_node* @stabilize_reference(%union.tree_node* %9)
  %10 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp15 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands16 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp15, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands16, i32 0, i64 1
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx17, align 8
  %call18 = call %union.tree_node* (i32, ...) @build_nt(i32 39, %union.tree_node* %call14, %union.tree_node* %11)
  store %union.tree_node* %call18, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %12 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp20 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands21 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands21, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx22, align 8
  %call23 = call %union.tree_node* @stabilize_reference(%union.tree_node* %13)
  %14 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp24 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands25 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp24, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands25, i32 0, i64 1
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8
  %call27 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %15)
  %16 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp28 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands29 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp28, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands29, i32 0, i64 2
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx30, align 8
  %call31 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %17)
  %call32 = call %union.tree_node* (i32, ...) @build_nt(i32 40, %union.tree_node* %call23, %union.tree_node* %call27, %union.tree_node* %call31)
  store %union.tree_node* %call32, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %18 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp34 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands35 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp34, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands35, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8
  %call37 = call %union.tree_node* @stabilize_reference(%union.tree_node* %19)
  %20 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp38 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands39 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands39, i32 0, i64 1
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx40, align 8
  %call41 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %21)
  %call42 = call %union.tree_node* (i32, ...) @build_nt(i32 43, %union.tree_node* %call37, %union.tree_node* %call41)
  store %union.tree_node* %call42, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %22 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp44 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands45 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp44, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands45, i32 0, i64 0
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx46, align 8
  %call47 = call %union.tree_node* @stabilize_reference(%union.tree_node* %23)
  %24 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp48 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 1
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %call51 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %25)
  %call52 = call %union.tree_node* (i32, ...) @build_nt(i32 44, %union.tree_node* %call47, %union.tree_node* %call51)
  store %union.tree_node* %call52, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %26 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %call54 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %26)
  store %union.tree_node* %call54, %union.tree_node** %retval
  br label %return

sw.bb.55:                                         ; preds = %entry
  %27 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common56 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type, align 8
  %29 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common57 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type58, align 8
  %call59 = call %union.tree_node* @build_pointer_type(%union.tree_node* %30)
  %31 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %call60 = call %union.tree_node* @build1(i32 121, %union.tree_node* %call59, %union.tree_node* %31)
  %call61 = call %union.tree_node* @save_expr(%union.tree_node* %call60)
  %call62 = call %union.tree_node* @build1(i32 41, %union.tree_node* %28, %union.tree_node* %call61)
  store %union.tree_node* %call62, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %32 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  store %union.tree_node* %32, %union.tree_node** %retval
  br label %return

sw.bb.63:                                         ; preds = %entry
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %33, %union.tree_node** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.55, %sw.bb.43, %sw.bb.33, %sw.bb.19, %sw.bb.10, %sw.bb.4, %sw.bb.2
  %34 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common64 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type65 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type65, align 8
  %36 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common66 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 1
  store %union.tree_node* %35, %union.tree_node** %type67, align 8
  %37 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common68 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 2
  %bf.load69 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load69, 12
  %bf.clear70 = and i32 %bf.lshr, 1
  %38 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common71 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %readonly_flag72 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 2
  %bf.load73 = load i32, i32* %readonly_flag72, align 8
  %bf.value = and i32 %bf.clear70, 1
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear74 = and i32 %bf.load73, -4097
  %bf.set = or i32 %bf.clear74, %bf.shl
  store i32 %bf.set, i32* %readonly_flag72, align 8
  %39 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common75 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common75, i32 0, i32 2
  %bf.load76 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr77 = lshr i32 %bf.load76, 8
  %bf.clear78 = and i32 %bf.lshr77, 1
  %40 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common79 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %side_effects_flag80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load81 = load i32, i32* %side_effects_flag80, align 8
  %bf.value82 = and i32 %bf.clear78, 1
  %bf.shl83 = shl i32 %bf.value82, 8
  %bf.clear84 = and i32 %bf.load81, -257
  %bf.set85 = or i32 %bf.clear84, %bf.shl83
  store i32 %bf.set85, i32* %side_effects_flag80, align 8
  %41 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common86 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 2
  %bf.load87 = load i32, i32* %volatile_flag, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 11
  %bf.clear89 = and i32 %bf.lshr88, 1
  %42 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common90 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %volatile_flag91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common90, i32 0, i32 2
  %bf.load92 = load i32, i32* %volatile_flag91, align 8
  %bf.value93 = and i32 %bf.clear89, 1
  %bf.shl94 = shl i32 %bf.value93, 11
  %bf.clear95 = and i32 %bf.load92, -2049
  %bf.set96 = or i32 %bf.clear95, %bf.shl94
  store i32 %bf.set96, i32* %volatile_flag91, align 8
  %43 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %43, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.63, %sw.default, %sw.bb.53, %sw.bb
  %44 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %44
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_nt(i32 %code, ...) #0 {
entry:
  %code.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %code, i32* %code.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %code.addr, align 4
  %call = call %union.tree_node* @make_node(i32 %0)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %1 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %5
  %6 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %7 = bitcast i8* %6 to %union.tree_node**
  %8 = add i32 %gp_offset, 8
  store i32 %8, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %9 = bitcast i8* %overflow_arg_area to %union.tree_node**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %union.tree_node** [ %7, %vaarg.in_reg ], [ %9, %vaarg.in_mem ]
  %10 = load %union.tree_node*, %union.tree_node** %vaarg.addr
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 %idxprom3
  store %union.tree_node* %10, %union.tree_node** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %14
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @stabilize_reference_1(%union.tree_node* %e) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %e.addr = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  store %union.tree_node* %e, %union.tree_node** %e.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common2 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load3, 9
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 118
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 120, label %sw.bb
    i32 116, label %sw.bb
    i32 100, label %sw.bb
    i32 98, label %sw.bb
    i32 60, label %sw.bb
    i32 115, label %sw.bb
    i32 101, label %sw.bb
    i32 114, label %sw.bb
    i32 99, label %sw.bb.12
    i32 50, label %sw.bb.13
    i32 49, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %6 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load6 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 8
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb
  %7 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %call = call %union.tree_node* @save_expr(%union.tree_node* %7)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb
  %8 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  store %union.tree_node* %8, %union.tree_node** %retval
  br label %return

sw.bb.12:                                         ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

sw.bb.13:                                         ; preds = %if.end
  %10 = load i32, i32* %code, align 4
  %cmp14 = icmp eq i32 %10, 62
  br i1 %cmp14, label %if.then.37, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %sw.bb.13
  %11 = load i32, i32* %code, align 4
  %cmp17 = icmp eq i32 %11, 66
  br i1 %cmp17, label %if.then.37, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %12 = load i32, i32* %code, align 4
  %cmp20 = icmp eq i32 %12, 64
  br i1 %cmp20, label %if.then.37, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %13 = load i32, i32* %code, align 4
  %cmp23 = icmp eq i32 %13, 68
  br i1 %cmp23, label %if.then.37, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.22
  %14 = load i32, i32* %code, align 4
  %cmp26 = icmp eq i32 %14, 63
  br i1 %cmp26, label %if.then.37, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %15 = load i32, i32* %code, align 4
  %cmp29 = icmp eq i32 %15, 67
  br i1 %cmp29, label %if.then.37, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %16 = load i32, i32* %code, align 4
  %cmp32 = icmp eq i32 %16, 65
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %17 = load i32, i32* %code, align 4
  %cmp35 = icmp eq i32 %17, 69
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.31, %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false.16, %sw.bb.13
  %18 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %call38 = call %union.tree_node* @save_expr(%union.tree_node* %18)
  store %union.tree_node* %call38, %union.tree_node** %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false.34
  %19 = load i32, i32* %code, align 4
  %20 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %exp = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx40, align 8
  %call41 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %21)
  %22 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %exp42 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands43 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands43, i32 0, i64 1
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx44, align 8
  %call45 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %23)
  %call46 = call %union.tree_node* (i32, ...) @build_nt(i32 %19, %union.tree_node* %call41, %union.tree_node* %call45)
  store %union.tree_node* %call46, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end
  %24 = load i32, i32* %code, align 4
  %25 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %exp48 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %call51 = call %union.tree_node* @stabilize_reference_1(%union.tree_node* %26)
  %call52 = call %union.tree_node* (i32, ...) @build_nt(i32 %24, %union.tree_node* %call51)
  store %union.tree_node* %call52, %union.tree_node** %result, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2364, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.stabilize_reference_1, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.47, %if.end.39
  %27 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common53 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type, align 8
  %29 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common54 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  store %union.tree_node* %28, %union.tree_node** %type55, align 8
  %30 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common56 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load57 = load i32, i32* %readonly_flag, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 12
  %bf.clear59 = and i32 %bf.lshr58, 1
  %31 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common60 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %readonly_flag61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 2
  %bf.load62 = load i32, i32* %readonly_flag61, align 8
  %bf.value = and i32 %bf.clear59, 1
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear63 = and i32 %bf.load62, -4097
  %bf.set = or i32 %bf.clear63, %bf.shl
  store i32 %bf.set, i32* %readonly_flag61, align 8
  %32 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common64 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %side_effects_flag65 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load66 = load i32, i32* %side_effects_flag65, align 8
  %bf.lshr67 = lshr i32 %bf.load66, 8
  %bf.clear68 = and i32 %bf.lshr67, 1
  %33 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common69 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %side_effects_flag70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 2
  %bf.load71 = load i32, i32* %side_effects_flag70, align 8
  %bf.value72 = and i32 %bf.clear68, 1
  %bf.shl73 = shl i32 %bf.value72, 8
  %bf.clear74 = and i32 %bf.load71, -257
  %bf.set75 = or i32 %bf.clear74, %bf.shl73
  store i32 %bf.set75, i32* %side_effects_flag70, align 8
  %34 = load %union.tree_node*, %union.tree_node** %e.addr, align 8
  %common76 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load77 = load i32, i32* %volatile_flag, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 11
  %bf.clear79 = and i32 %bf.lshr78, 1
  %35 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common80 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %volatile_flag81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %volatile_flag81, align 8
  %bf.value83 = and i32 %bf.clear79, 1
  %bf.shl84 = shl i32 %bf.value83, 11
  %bf.clear85 = and i32 %bf.load82, -2049
  %bf.set86 = or i32 %bf.clear85, %bf.shl84
  store i32 %bf.set86, i32* %volatile_flag81, align 8
  %36 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %36, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.37, %sw.bb.12, %if.end.11, %if.then.10, %if.then
  %37 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %37
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_pointer_type(%union.tree_node* %to_type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %to_type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %to_type, %union.tree_node** %to_type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 8
  %1 = load %union.tree_node*, %union.tree_node** %pointer_to, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %union.tree_node* @make_node(i32 13)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %4, %union.tree_node** %type1, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %7 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %type2 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %pointer_to3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 8
  store %union.tree_node* %6, %union.tree_node** %pointer_to3, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %8)
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %10
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_decl(i32 %code, %union.tree_node* %name, %union.tree_node* %type) #0 {
entry:
  %code.addr = alloca i32, align 4
  %name.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %call = call %union.tree_node* @make_node(i32 %0)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %1 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  store %union.tree_node* %1, %union.tree_node** %name1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %3, %union.tree_node** %type2, align 8
  %5 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %5, 34
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %code.addr, align 4
  %cmp3 = icmp eq i32 %6, 35
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %code.addr, align 4
  %cmp5 = icmp eq i32 %7, 36
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_decl(%union.tree_node* %8, i32 0)
  br label %if.end.9

if.else:                                          ; preds = %lor.lhs.false.4
  %9 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %9, 30
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl8 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %11 = bitcast i48* %mode to i64*
  %bf.load = load i64, i64* %11, align 8
  %bf.clear = and i64 %bf.load, -256
  %bf.set = or i64 %bf.clear, 2
  store i64 %bf.set, i64* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %12
}

declare void @layout_decl(%union.tree_node*, i32) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_block(%union.tree_node* %vars, %union.tree_node* %tags, %union.tree_node* %subblocks, %union.tree_node* %supercontext, %union.tree_node* %chain) #0 {
entry:
  %vars.addr = alloca %union.tree_node*, align 8
  %tags.addr = alloca %union.tree_node*, align 8
  %subblocks.addr = alloca %union.tree_node*, align 8
  %supercontext.addr = alloca %union.tree_node*, align 8
  %chain.addr = alloca %union.tree_node*, align 8
  %block = alloca %union.tree_node*, align 8
  store %union.tree_node* %vars, %union.tree_node** %vars.addr, align 8
  store %union.tree_node* %tags, %union.tree_node** %tags.addr, align 8
  store %union.tree_node* %subblocks, %union.tree_node** %subblocks.addr, align 8
  store %union.tree_node* %supercontext, %union.tree_node** %supercontext.addr, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  %call = call %union.tree_node* @make_node(i32 4)
  store %union.tree_node* %call, %union.tree_node** %block, align 8
  %0 = load %union.tree_node*, %union.tree_node** %vars.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block1 = bitcast %union.tree_node* %1 to %struct.tree_block*
  %vars2 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1, i32 0, i32 2
  store %union.tree_node* %0, %union.tree_node** %vars2, align 8
  %2 = load %union.tree_node*, %union.tree_node** %subblocks.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block3 = bitcast %union.tree_node* %3 to %struct.tree_block*
  %subblocks4 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block3, i32 0, i32 3
  store %union.tree_node* %2, %union.tree_node** %subblocks4, align 8
  %4 = load %union.tree_node*, %union.tree_node** %supercontext.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block5 = bitcast %union.tree_node* %5 to %struct.tree_block*
  %supercontext6 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block5, i32 0, i32 4
  store %union.tree_node* %4, %union.tree_node** %supercontext6, align 8
  %6 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %block, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  store %union.tree_node* %6, %union.tree_node** %chain7, align 8
  %8 = load %union.tree_node*, %union.tree_node** %block, align 8
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_expr_wfl(%union.tree_node* %node, i8* %file, i32 %line, i32 %col) #0 {
entry:
  %node.addr = alloca %union.tree_node*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %wfl = alloca %union.tree_node*, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %call = call %union.tree_node* @make_node(i32 144)
  store %union.tree_node* %call, %union.tree_node** %wfl, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* %0, %union.tree_node** %arrayidx, align 8
  %2 = load i32, i32* %line.addr, align 4
  %shl = shl i32 %2, 12
  %3 = load i32, i32* %col.addr, align 4
  %and = and i32 %3, 4095
  %or = or i32 %shl, %and
  %4 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  %exp1 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 1
  store i32 %or, i32* %complexity, align 4
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load i8*, i8** @build_expr_wfl.last_file, align 8
  %cmp = icmp ne i8* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %file.addr, align 8
  store i8* %7, i8** @build_expr_wfl.last_file, align 8
  %8 = load i8*, i8** %file.addr, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i8*, i8** %file.addr, align 8
  %call2 = call %union.tree_node* @get_identifier(i8* %9)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %call2, %cond.true ], [ null, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** @build_expr_wfl.last_filenode, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %10 = load %union.tree_node*, %union.tree_node** @build_expr_wfl.last_filenode, align 8
  %11 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  %exp3 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 1
  store %union.tree_node* %10, %union.tree_node** %arrayidx5, align 8
  %12 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %tobool6 = icmp ne %union.tree_node* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %13 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %14 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  %common8 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %side_effects_flag9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %side_effects_flag9, align 8
  %bf.value = and i32 %bf.clear, 1
  %bf.shl = shl i32 %bf.value, 8
  %bf.clear11 = and i32 %bf.load10, -257
  %bf.set = or i32 %bf.clear11, %bf.shl
  store i32 %bf.set, i32* %side_effects_flag9, align 8
  %15 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common12 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %17 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  %common13 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  store %union.tree_node* %16, %union.tree_node** %type14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.7, %if.end
  %18 = load %union.tree_node*, %union.tree_node** %wfl, align 8
  ret %union.tree_node* %18
}

declare %union.tree_node* @get_identifier(i8*) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_decl_attribute_variant(%union.tree_node* %ddecl, %union.tree_node* %attribute) #0 {
entry:
  %ddecl.addr = alloca %union.tree_node*, align 8
  %attribute.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %ddecl, %union.tree_node** %ddecl.addr, align 8
  store %union.tree_node* %attribute, %union.tree_node** %attribute.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %attribute.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %ddecl.addr, align 8
  %decl = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  store %union.tree_node* %0, %union.tree_node** %attributes, align 8
  %2 = load %union.tree_node*, %union.tree_node** %ddecl.addr, align 8
  ret %union.tree_node* %2
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_type_attribute_variant(%union.tree_node* %ttype, %union.tree_node* %attribute) #0 {
entry:
  %ttype.addr = alloca %union.tree_node*, align 8
  %attribute.addr = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  %ntype = alloca %union.tree_node*, align 8
  store %union.tree_node* %ttype, %union.tree_node** %ttype.addr, align 8
  store %union.tree_node* %attribute, %union.tree_node** %attribute.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 4
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %2 = load %union.tree_node*, %union.tree_node** %attribute.addr, align 8
  %call = call i32 @attribute_list_equal(%union.tree_node* %1, %union.tree_node* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %call1 = call %union.tree_node* @copy_node(%union.tree_node* %3)
  store %union.tree_node* %call1, %union.tree_node** %ntype, align 8
  %4 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type2 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %pointer_to, align 8
  %5 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type3 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 9
  store %union.tree_node* null, %union.tree_node** %reference_to, align 8
  %6 = load %union.tree_node*, %union.tree_node** %attribute.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type4 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %attributes5 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 4
  store %union.tree_node* %6, %union.tree_node** %attributes5, align 8
  %8 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %9 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type6 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 15
  store %union.tree_node* %8, %union.tree_node** %main_variant, align 8
  %10 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type7 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 14
  store %union.tree_node* null, %union.tree_node** %next_variant, align 8
  %11 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  call void @set_type_quals(%union.tree_node* %11, i32 0)
  %12 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %conv = zext i32 %bf.clear to i64
  %and = and i64 %conv, 262143
  %13 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %common8 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %15 = ptrtoint %union.tree_node* %14 to i64
  %and10 = and i64 %15, 262143
  %add = add i64 %and, %and10
  %16 = load %union.tree_node*, %union.tree_node** %attribute.addr, align 8
  %call11 = call i32 @attribute_hash_list(%union.tree_node* %16)
  %conv12 = zext i32 %call11 to i64
  %add13 = add i64 %add, %conv12
  %conv14 = trunc i64 %add13 to i32
  store i32 %conv14, i32* %hashcode, align 4
  %17 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %common15 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  switch i32 %bf.clear18, label %sw.default [
    i32 23, label %sw.bb
    i32 18, label %sw.bb.24
    i32 6, label %sw.bb.31
    i32 7, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.then
  %18 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type19 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %values, align 8
  %20 = ptrtoint %union.tree_node* %19 to i64
  %and20 = and i64 %20, 262143
  %21 = load i32, i32* %hashcode, align 4
  %conv21 = zext i32 %21 to i64
  %add22 = add i64 %conv21, %and20
  %conv23 = trunc i64 %add22 to i32
  store i32 %conv23, i32* %hashcode, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then
  %22 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type25 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %values26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %values26, align 8
  %24 = ptrtoint %union.tree_node* %23 to i64
  %and27 = and i64 %24, 262143
  %25 = load i32, i32* %hashcode, align 4
  %conv28 = zext i32 %25 to i64
  %add29 = add i64 %conv28, %and27
  %conv30 = trunc i64 %add29 to i32
  store i32 %conv30, i32* %hashcode, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then
  %26 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type32 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i32 0, i32 13
  %27 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %28 = ptrtoint %union.tree_node* %27 to i64
  %and33 = and i64 %28, 262143
  %29 = load i32, i32* %hashcode, align 4
  %conv34 = zext i32 %29 to i64
  %add35 = add i64 %conv34, %and33
  %conv36 = trunc i64 %add35 to i32
  store i32 %conv36, i32* %hashcode, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then
  %30 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %type38 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type38, i32 0, i32 6
  %bf.load39 = load i32, i32* %precision, align 4
  %bf.clear40 = and i32 %bf.load39, 511
  %conv41 = zext i32 %bf.clear40 to i64
  %and42 = and i64 %conv41, 262143
  %31 = load i32, i32* %hashcode, align 4
  %conv43 = zext i32 %31 to i64
  %add44 = add i64 %conv43, %and42
  %conv45 = trunc i64 %add44 to i32
  store i32 %conv45, i32* %hashcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.37, %sw.bb.31, %sw.bb.24, %sw.bb
  %32 = load i32, i32* %hashcode, align 4
  %33 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %call46 = call %union.tree_node* @type_hash_canon(i32 %32, %union.tree_node* %33)
  store %union.tree_node* %call46, %union.tree_node** %ntype, align 8
  %34 = load %union.tree_node*, %union.tree_node** %ntype, align 8
  %35 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %common47 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load48 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load48, 12
  %bf.clear49 = and i32 %bf.lshr, 1
  %mul = mul nsw i32 %bf.clear49, 1
  %36 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %common50 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load51 = load i32, i32* %volatile_flag, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 11
  %bf.clear53 = and i32 %bf.lshr52, 1
  %mul54 = mul nsw i32 %bf.clear53, 2
  %or = or i32 %mul, %mul54
  %37 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %type55 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type55, i32 0, i32 6
  %bf.load56 = load i32, i32* %restrict_flag, align 4
  %bf.lshr57 = lshr i32 %bf.load56, 21
  %bf.clear58 = and i32 %bf.lshr57, 1
  %mul59 = mul nsw i32 %bf.clear58, 4
  %or60 = or i32 %or, %mul59
  %38 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %common61 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 2
  %bf.load63 = load i32, i32* %code62, align 8
  %bf.clear64 = and i32 %bf.load63, 255
  %cmp = icmp eq i32 %bf.clear64, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.epilog
  %39 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  %common66 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type67, align 8
  %tobool68 = icmp ne %union.tree_node* %40, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %41 = phi i1 [ false, %sw.epilog ], [ %tobool68, %land.rhs ]
  %land.ext = zext i1 %41 to i32
  %mul69 = mul nsw i32 %land.ext, 8
  %or70 = or i32 %or60, %mul69
  %call71 = call %union.tree_node* @build_qualified_type(%union.tree_node* %34, i32 %or70)
  store %union.tree_node* %call71, %union.tree_node** %ttype.addr, align 8
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %42 = load %union.tree_node*, %union.tree_node** %ttype.addr, align 8
  ret %union.tree_node* %42
}

; Function Attrs: nounwind uwtable
define i32 @attribute_list_equal(%union.tree_node* %l1, %union.tree_node* %l2) #0 {
entry:
  %l1.addr = alloca %union.tree_node*, align 8
  %l2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %l1, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %l2, %union.tree_node** %l2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %call = call i32 @attribute_list_contained(%union.tree_node* %0, %union.tree_node* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %call1 = call i32 @attribute_list_contained(%union.tree_node* %2, %union.tree_node* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @set_type_quals(%union.tree_node* %type, i32 %type_quals) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %type_quals.addr = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %type_quals, i32* %type_quals.addr, align 4
  %0 = load i32, i32* %type_quals.addr, align 4
  %and = and i32 %0, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.value = and i32 %conv, 1
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -4097
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %readonly_flag, align 8
  %2 = load i32, i32* %type_quals.addr, align 4
  %and1 = and i32 %2, 2
  %cmp2 = icmp ne i32 %and1, 0
  %conv3 = zext i1 %cmp2 to i32
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %volatile_flag, align 8
  %bf.value6 = and i32 %conv3, 1
  %bf.shl7 = shl i32 %bf.value6, 11
  %bf.clear8 = and i32 %bf.load5, -2049
  %bf.set9 = or i32 %bf.clear8, %bf.shl7
  store i32 %bf.set9, i32* %volatile_flag, align 8
  %4 = load i32, i32* %type_quals.addr, align 4
  %and10 = and i32 %4, 4
  %cmp11 = icmp ne i32 %and10, 0
  %conv12 = zext i1 %cmp11 to i32
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type13 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 6
  %bf.load14 = load i32, i32* %restrict_flag, align 4
  %bf.value15 = and i32 %conv12, 1
  %bf.shl16 = shl i32 %bf.value15, 21
  %bf.clear17 = and i32 %bf.load14, -2097153
  %bf.set18 = or i32 %bf.clear17, %bf.shl16
  store i32 %bf.set18, i32* %restrict_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @attribute_hash_list(%union.tree_node* %list) #0 {
entry:
  %list.addr = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  %tail = alloca %union.tree_node*, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  store i32 0, i32* %hashcode, align 4
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list1 = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %5 = load i32, i32* %hashcode, align 4
  %conv = zext i32 %5 to i64
  %add = add i64 %conv, %and
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %hashcode, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %7, %union.tree_node** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %hashcode, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @type_hash_canon(i32 %hashcode, %union.tree_node* %type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %hashcode.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %t1 = alloca %union.tree_node*, align 8
  store i32 %hashcode, i32* %hashcode.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load i32, i32* @debug_no_type_hash, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hashcode.addr, align 4
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* @type_hash_lookup(i32 %2, %union.tree_node* %3)
  store %union.tree_node* %call, %union.tree_node** %t1, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %cmp = icmp ne %union.tree_node* %4, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %t1, align 8
  store %union.tree_node* %5, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %hashcode.addr, align 4
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @type_hash_add(i32 %6, %union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %8, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.1, %if.then
  %9 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %9
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_qualified_type(%union.tree_node* %type, i32 %type_quals) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %type_quals.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %type_quals, i32* %type_quals.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %1 = load i32, i32* %type_quals.addr, align 4
  %call = call %union.tree_node* @get_qualified_type(%union.tree_node* %0, i32 %1)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call1 = call %union.tree_node* @build_type_copy(%union.tree_node* %3)
  store %union.tree_node* %call1, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %5 = load i32, i32* %type_quals.addr, align 4
  call void @set_type_quals(%union.tree_node* %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %6
}

; Function Attrs: nounwind uwtable
define i32 @default_comp_type_attributes(%union.tree_node* %type1, %union.tree_node* %type2) #0 {
entry:
  %type1.addr = alloca %union.tree_node*, align 8
  %type2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type1, %union.tree_node** %type1.addr, align 8
  store %union.tree_node* %type2, %union.tree_node** %type2.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @default_set_default_type_attributes(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_insert_attributes(%union.tree_node* %decl, %union.tree_node** %attr_ptr) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %attr_ptr.addr = alloca %union.tree_node**, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node** %attr_ptr, %union.tree_node*** %attr_ptr.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @default_function_attribute_inlinable_p(%union.tree_node* %fndecl) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  ret i1 false
}

; Function Attrs: nounwind uwtable
define zeroext i1 @default_ms_bitfield_layout_p(%union.tree_node* %record) #0 {
entry:
  %record.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %record, %union.tree_node** %record.addr, align 8
  ret i1 false
}

; Function Attrs: nounwind uwtable
define i32 @is_attribute_p(i8* %attr, %union.tree_node* %ident) #0 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca i8*, align 8
  %ident.addr = alloca %union.tree_node*, align 8
  %ident_len = alloca i32, align 4
  %attr_len = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %attr, i8** %attr.addr, align 8
  store %union.tree_node* %ident, %union.tree_node** %ident.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %ident.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %attr.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %ident.addr, align 8
  %identifier = bitcast %union.tree_node* %2 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %ident.addr, align 8
  %identifier4 = bitcast %union.tree_node* %4 to %struct.tree_identifier*
  %id5 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier4, i32 0, i32 1
  %str6 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id5, i32 0, i32 1
  %5 = load i8*, i8** %str6, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %call7 = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %ident_len, align 4
  %7 = load i8*, i8** %attr.addr, align 8
  %call8 = call i64 @strlen(i8* %7) #7
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, i32* %attr_len, align 4
  %8 = load i8*, i8** %attr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv10, 95
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.3
  %10 = load i8*, i8** %attr.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp ne i32 %conv15, 95
  br i1 %cmp16, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %12 = load i32, i32* %attr_len, align 4
  %sub = sub nsw i32 %12, 2
  %idxprom = sext i32 %sub to i64
  %13 = load i8*, i8** %attr.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %cmp20 = icmp ne i32 %conv19, 95
  br i1 %cmp20, label %if.then.29, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %attr_len, align 4
  %sub23 = sub nsw i32 %15, 1
  %idxprom24 = sext i32 %sub23 to i64
  %16 = load i8*, i8** %attr.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 %idxprom24
  %17 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %17 to i32
  %cmp27 = icmp ne i32 %conv26, 95
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false, %if.then.13
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2815, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.is_attribute_p, i32 0, i32 0)) #6
  unreachable

if.end.30:                                        ; preds = %lor.lhs.false.22
  %18 = load i32, i32* %ident_len, align 4
  %19 = load i32, i32* %attr_len, align 4
  %sub31 = sub nsw i32 %19, 4
  %cmp32 = icmp eq i32 %18, %sub31
  br i1 %cmp32, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.30
  %20 = load i8*, i8** %attr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 2
  %21 = load i8*, i8** %p, align 8
  %22 = load i32, i32* %attr_len, align 4
  %sub34 = sub nsw i32 %22, 4
  %conv35 = sext i32 %sub34 to i64
  %call36 = call i32 @strncmp(i8* %add.ptr, i8* %21, i64 %conv35) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true, %if.end.30
  br label %if.end.75

if.else:                                          ; preds = %if.end.3
  %23 = load i32, i32* %ident_len, align 4
  %24 = load i32, i32* %attr_len, align 4
  %add = add nsw i32 %24, 4
  %cmp41 = icmp eq i32 %23, %add
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.74

land.lhs.true.43:                                 ; preds = %if.else
  %25 = load i8*, i8** %p, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %26 to i32
  %cmp46 = icmp eq i32 %conv45, 95
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.74

land.lhs.true.48:                                 ; preds = %land.lhs.true.43
  %27 = load i8*, i8** %p, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %28 to i32
  %cmp51 = icmp eq i32 %conv50, 95
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.74

land.lhs.true.53:                                 ; preds = %land.lhs.true.48
  %29 = load i32, i32* %ident_len, align 4
  %sub54 = sub nsw i32 %29, 2
  %idxprom55 = sext i32 %sub54 to i64
  %30 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %30, i64 %idxprom55
  %31 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %31 to i32
  %cmp58 = icmp eq i32 %conv57, 95
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.74

land.lhs.true.60:                                 ; preds = %land.lhs.true.53
  %32 = load i32, i32* %ident_len, align 4
  %sub61 = sub nsw i32 %32, 1
  %idxprom62 = sext i32 %sub61 to i64
  %33 = load i8*, i8** %p, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %33, i64 %idxprom62
  %34 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %34 to i32
  %cmp65 = icmp eq i32 %conv64, 95
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.74

land.lhs.true.67:                                 ; preds = %land.lhs.true.60
  %35 = load i8*, i8** %attr.addr, align 8
  %36 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %36, i64 2
  %37 = load i32, i32* %attr_len, align 4
  %conv69 = sext i32 %37 to i64
  %call70 = call i32 @strncmp(i8* %35, i8* %add.ptr68, i64 %conv69) #7
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.67, %land.lhs.true.60, %land.lhs.true.53, %land.lhs.true.48, %land.lhs.true.43, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.73, %if.then.39, %if.then.2, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define %union.tree_node* @lookup_attribute(i8* %attr_name, %union.tree_node* %list) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %attr_name.addr = alloca i8*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  %l = alloca %union.tree_node*, align 8
  store i8* %attr_name, i8** %attr_name.addr, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %l, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %l, align 8
  %list1 = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 2848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.lookup_attribute, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %for.body
  %4 = load i8*, i8** %attr_name.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %l, align 8
  %list2 = bitcast %union.tree_node* %5 to %struct.tree_list*
  %purpose3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %purpose3, align 8
  %call = call i32 @is_attribute_p(i8* %4, %union.tree_node* %6)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %l, align 8
  store %union.tree_node* %7, %union.tree_node** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %8 = load %union.tree_node*, %union.tree_node** %l, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %9, %union.tree_node** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5
  %10 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @merge_attributes(%union.tree_node* %a1, %union.tree_node* %a2) #0 {
entry:
  %a1.addr = alloca %union.tree_node*, align 8
  %a2.addr = alloca %union.tree_node*, align 8
  %attributes = alloca %union.tree_node*, align 8
  %a = alloca %union.tree_node*, align 8
  store %union.tree_node* %a1, %union.tree_node** %a1.addr, align 8
  store %union.tree_node* %a2, %union.tree_node** %a2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %attributes, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %attributes, align 8
  br label %if.end.41

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %cmp1 = icmp ne %union.tree_node* %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.else
  %3 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %call = call i32 @attribute_list_contained(%union.tree_node* %3, %union.tree_node* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.40, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  %call3 = call i32 @attribute_list_contained(%union.tree_node* %5, %union.tree_node* %6)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.then.2
  %7 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  store %union.tree_node* %7, %union.tree_node** %attributes, align 8
  br label %if.end.39

if.else.6:                                        ; preds = %if.then.2
  %8 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  %call7 = call i32 @list_length(%union.tree_node* %8)
  %9 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %call8 = call i32 @list_length(%union.tree_node* %9)
  %cmp9 = icmp slt i32 %call7, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.6
  %10 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  store %union.tree_node* %10, %union.tree_node** %attributes, align 8
  %11 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  store %union.tree_node* %11, %union.tree_node** %a2.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end
  %12 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %cmp11 = icmp ne %union.tree_node* %12, null
  br i1 %cmp11, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %13 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %list = bitcast %union.tree_node* %13 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %identifier = bitcast %union.tree_node* %14 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %15 = load i8*, i8** %str, align 8
  %16 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call12 = call %union.tree_node* @lookup_attribute(i8* %15, %union.tree_node* %16)
  store %union.tree_node* %call12, %union.tree_node** %a, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %17 = load %union.tree_node*, %union.tree_node** %a, align 8
  %cmp14 = icmp ne %union.tree_node* %17, null
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %18 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list16 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list16, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  %20 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %list17 = bitcast %union.tree_node* %20 to %struct.tree_list*
  %value18 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list17, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %value18, align 8
  %call19 = call i32 @simple_cst_equal(%union.tree_node* %19, %union.tree_node* %21)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.15
  br label %for.end

if.end.22:                                        ; preds = %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %22 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %list23 = bitcast %union.tree_node* %22 to %struct.tree_list*
  %purpose24 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list23, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %purpose24, align 8
  %identifier25 = bitcast %union.tree_node* %23 to %struct.tree_identifier*
  %id26 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier25, i32 0, i32 1
  %str27 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id26, i32 0, i32 1
  %24 = load i8*, i8** %str27, align 8
  %25 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common = bitcast %union.tree_node* %25 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %26 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %call28 = call %union.tree_node* @lookup_attribute(i8* %24, %union.tree_node* %26)
  store %union.tree_node* %call28, %union.tree_node** %a, align 8
  br label %for.cond.13

for.end:                                          ; preds = %if.then.21, %for.cond.13
  %27 = load %union.tree_node*, %union.tree_node** %a, align 8
  %cmp29 = icmp eq %union.tree_node* %27, null
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.end
  %28 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %call31 = call %union.tree_node* @copy_node(%union.tree_node* %28)
  store %union.tree_node* %call31, %union.tree_node** %a1.addr, align 8
  %29 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %30 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  %common32 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %chain33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 0
  store %union.tree_node* %29, %union.tree_node** %chain33, align 8
  %31 = load %union.tree_node*, %union.tree_node** %a1.addr, align 8
  store %union.tree_node* %31, %union.tree_node** %attributes, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %for.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %32 = load %union.tree_node*, %union.tree_node** %a2.addr, align 8
  %common36 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %chain37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %chain37, align 8
  store %union.tree_node* %33, %union.tree_node** %a2.addr, align 8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %if.then.5
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  %34 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  ret %union.tree_node* %34
}

; Function Attrs: nounwind uwtable
define i32 @attribute_list_contained(%union.tree_node* %l1, %union.tree_node* %l2) #0 {
entry:
  %retval = alloca i32, align 4
  %l1.addr = alloca %union.tree_node*, align 8
  %l2.addr = alloca %union.tree_node*, align 8
  %t1 = alloca %union.tree_node*, align 8
  %t2 = alloca %union.tree_node*, align 8
  %attr = alloca %union.tree_node*, align 8
  store %union.tree_node* %l1, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %l2, %union.tree_node** %l2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %2, %union.tree_node** %t1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %t2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %cmp1 = icmp ne %union.tree_node* %4, null
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %cmp2 = icmp ne %union.tree_node* %5, null
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list4 = bitcast %union.tree_node* %8 to %struct.tree_list*
  %purpose5 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %purpose5, align 8
  %cmp6 = icmp eq %union.tree_node* %7, %9
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %10 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list7 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list7, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list8 = bitcast %union.tree_node* %12 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %13 = load %union.tree_node*, %union.tree_node** %value9, align 8
  %cmp10 = icmp eq %union.tree_node* %11, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %for.cond
  %14 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp10, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %16, %union.tree_node** %t1, align 8
  %17 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %common11 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %chain12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 0
  %18 = load %union.tree_node*, %union.tree_node** %chain12, align 8
  store %union.tree_node* %18, %union.tree_node** %t2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %cmp13 = icmp eq %union.tree_node* %19, null
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.17

land.lhs.true.14:                                 ; preds = %for.end
  %20 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %cmp15 = icmp eq %union.tree_node* %20, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.14, %for.end
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.55, %if.end.17
  %21 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %cmp19 = icmp ne %union.tree_node* %21, null
  br i1 %cmp19, label %for.body.20, label %for.end.58

for.body.20:                                      ; preds = %for.cond.18
  %22 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list21 = bitcast %union.tree_node* %22 to %struct.tree_list*
  %purpose22 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list21, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %purpose22, align 8
  %identifier = bitcast %union.tree_node* %23 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %24 = load i8*, i8** %str, align 8
  %25 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* %24, %union.tree_node* %25)
  store %union.tree_node* %call, %union.tree_node** %attr, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.34, %for.body.20
  %26 = load %union.tree_node*, %union.tree_node** %attr, align 8
  %cmp24 = icmp ne %union.tree_node* %26, null
  br i1 %cmp24, label %for.body.25, label %for.end.43

for.body.25:                                      ; preds = %for.cond.23
  %27 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list26 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value27 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list26, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value27, align 8
  %29 = load %union.tree_node*, %union.tree_node** %attr, align 8
  %list28 = bitcast %union.tree_node* %29 to %struct.tree_list*
  %value29 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list28, i32 0, i32 2
  %30 = load %union.tree_node*, %union.tree_node** %value29, align 8
  %call30 = call i32 @simple_cst_equal(%union.tree_node* %28, %union.tree_node* %30)
  %cmp31 = icmp eq i32 %call30, 1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.25
  br label %for.end.43

if.end.33:                                        ; preds = %for.body.25
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %31 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list35 = bitcast %union.tree_node* %31 to %struct.tree_list*
  %purpose36 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list35, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %purpose36, align 8
  %identifier37 = bitcast %union.tree_node* %32 to %struct.tree_identifier*
  %id38 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier37, i32 0, i32 1
  %str39 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id38, i32 0, i32 1
  %33 = load i8*, i8** %str39, align 8
  %34 = load %union.tree_node*, %union.tree_node** %attr, align 8
  %common40 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %chain41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 0
  %35 = load %union.tree_node*, %union.tree_node** %chain41, align 8
  %call42 = call %union.tree_node* @lookup_attribute(i8* %33, %union.tree_node* %35)
  store %union.tree_node* %call42, %union.tree_node** %attr, align 8
  br label %for.cond.23

for.end.43:                                       ; preds = %if.then.32, %for.cond.23
  %36 = load %union.tree_node*, %union.tree_node** %attr, align 8
  %cmp44 = icmp eq %union.tree_node* %36, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end.43
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.end.43
  %37 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list47 = bitcast %union.tree_node* %37 to %struct.tree_list*
  %value48 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list47, i32 0, i32 2
  %38 = load %union.tree_node*, %union.tree_node** %value48, align 8
  %39 = load %union.tree_node*, %union.tree_node** %attr, align 8
  %list49 = bitcast %union.tree_node* %39 to %struct.tree_list*
  %value50 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list49, i32 0, i32 2
  %40 = load %union.tree_node*, %union.tree_node** %value50, align 8
  %call51 = call i32 @simple_cst_equal(%union.tree_node* %38, %union.tree_node* %40)
  %cmp52 = icmp ne i32 %call51, 1
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.46
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %41 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %common56 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %chain57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 0
  %42 = load %union.tree_node*, %union.tree_node** %chain57, align 8
  store %union.tree_node* %42, %union.tree_node** %t2, align 8
  br label %for.cond.18

for.end.58:                                       ; preds = %for.cond.18
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.58, %if.then.53, %if.then.45, %if.then.16, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @simple_cst_equal(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %cmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp1 = icmp eq %union.tree_node* %0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp2 = icmp eq %union.tree_node* %2, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp3 = icmp eq %union.tree_node* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code1, align 4
  %5 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  store i32 %bf.clear9, i32* %code2, align 4
  %6 = load i32, i32* %code1, align 4
  %cmp10 = icmp eq i32 %6, 115
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.5
  %7 = load i32, i32* %code1, align 4
  %cmp12 = icmp eq i32 %7, 114
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %8 = load i32, i32* %code1, align 4
  %cmp14 = icmp eq i32 %8, 116
  br i1 %cmp14, label %if.then.15, label %if.else.29

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %if.end.5
  %9 = load i32, i32* %code2, align 4
  %cmp16 = icmp eq i32 %9, 115
  br i1 %cmp16, label %if.then.21, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.then.15
  %10 = load i32, i32* %code2, align 4
  %cmp18 = icmp eq i32 %10, 114
  br i1 %cmp18, label %if.then.21, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %11 = load i32, i32* %code2, align 4
  %cmp20 = icmp eq i32 %11, 116
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.17, %if.then.15
  %12 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %14 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp22 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands23 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp22, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands23, i32 0, i64 0
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx24, align 8
  %call = call i32 @simple_cst_equal(%union.tree_node* %13, %union.tree_node* %15)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.19
  %16 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp25 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands26 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp25, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands26, i32 0, i64 0
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8
  %18 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %call28 = call i32 @simple_cst_equal(%union.tree_node* %17, %union.tree_node* %18)
  store i32 %call28, i32* %retval
  br label %return

if.else.29:                                       ; preds = %lor.lhs.false.13
  %19 = load i32, i32* %code2, align 4
  %cmp30 = icmp eq i32 %19, 115
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.else.29
  %20 = load i32, i32* %code2, align 4
  %cmp32 = icmp eq i32 %20, 114
  br i1 %cmp32, label %if.then.35, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %21 = load i32, i32* %code2, align 4
  %cmp34 = icmp eq i32 %21, 116
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.31, %if.else.29
  %22 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %23 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp36 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 0
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  %call39 = call i32 @simple_cst_equal(%union.tree_node* %22, %union.tree_node* %24)
  store i32 %call39, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  %25 = load i32, i32* %code1, align 4
  %26 = load i32, i32* %code2, align 4
  %cmp42 = icmp ne i32 %25, %26
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.41
  %27 = load i32, i32* %code1, align 4
  switch i32 %27, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb.56
    i32 29, label %sw.bb.61
    i32 46, label %sw.bb.77
    i32 118, label %sw.bb.88
    i32 53, label %sw.bb.96
    i32 50, label %sw.bb.115
    i32 55, label %sw.bb.184
    i32 39, label %sw.bb.203
    i32 34, label %sw.bb.221
    i32 35, label %sw.bb.221
    i32 32, label %sw.bb.221
    i32 30, label %sw.bb.221
  ]

sw.bb:                                            ; preds = %if.end.44
  %28 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst = bitcast %union.tree_node* %28 to %struct.tree_int_cst*
  %int_cst45 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst45, i32 0, i32 0
  %29 = load i64, i64* %low, align 8
  %30 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst46 = bitcast %union.tree_node* %30 to %struct.tree_int_cst*
  %int_cst47 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst46, i32 0, i32 2
  %low48 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst47, i32 0, i32 0
  %31 = load i64, i64* %low48, align 8
  %cmp49 = icmp eq i64 %29, %31
  br i1 %cmp49, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %32 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst50 = bitcast %union.tree_node* %32 to %struct.tree_int_cst*
  %int_cst51 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst50, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst51, i32 0, i32 1
  %33 = load i64, i64* %high, align 8
  %34 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst52 = bitcast %union.tree_node* %34 to %struct.tree_int_cst*
  %int_cst53 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst52, i32 0, i32 2
  %high54 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst53, i32 0, i32 1
  %35 = load i64, i64* %high54, align 8
  %cmp55 = icmp eq i64 %33, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %36 = phi i1 [ false, %sw.bb ], [ %cmp55, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %if.end.44
  %37 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %real_cst = bitcast %union.tree_node* %37 to %struct.tree_real_cst*
  %real_cst57 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %38 = bitcast %struct.realvaluetype* %real_cst57 to i8*
  %39 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %real_cst58 = bitcast %union.tree_node* %39 to %struct.tree_real_cst*
  %real_cst59 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst58, i32 0, i32 2
  %40 = bitcast %struct.realvaluetype* %real_cst59 to i8*
  %call60 = call i32 @memcmp(i8* %38, i8* %40, i64 24) #7
  %tobool = icmp ne i32 %call60, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %if.end.44
  %41 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %string = bitcast %union.tree_node* %41 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %42 = load i32, i32* %length, align 4
  %43 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %string62 = bitcast %union.tree_node* %43 to %struct.tree_string*
  %length63 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string62, i32 0, i32 2
  %44 = load i32, i32* %length63, align 4
  %cmp64 = icmp eq i32 %42, %44
  br i1 %cmp64, label %land.rhs.65, label %land.end.75

land.rhs.65:                                      ; preds = %sw.bb.61
  %45 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %string66 = bitcast %union.tree_node* %45 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string66, i32 0, i32 3
  %46 = load i8*, i8** %pointer, align 8
  %47 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %string67 = bitcast %union.tree_node* %47 to %struct.tree_string*
  %pointer68 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string67, i32 0, i32 3
  %48 = load i8*, i8** %pointer68, align 8
  %49 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %string69 = bitcast %union.tree_node* %49 to %struct.tree_string*
  %length70 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string69, i32 0, i32 2
  %50 = load i32, i32* %length70, align 4
  %conv = sext i32 %50 to i64
  %call71 = call i32 @memcmp(i8* %46, i8* %48, i64 %conv) #7
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.65, %sw.bb.61
  %51 = phi i1 [ false, %sw.bb.61 ], [ %lnot73, %land.rhs.65 ]
  %land.ext76 = zext i1 %51 to i32
  store i32 %land.ext76, i32* %retval
  br label %return

sw.bb.77:                                         ; preds = %if.end.44
  %52 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp78 = bitcast %union.tree_node* %52 to %struct.tree_exp*
  %operands79 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp78, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands79, i32 0, i64 1
  %53 = load %union.tree_node*, %union.tree_node** %arrayidx80, align 8
  %54 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp81 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands82 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp81, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands82, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx83, align 8
  %cmp84 = icmp eq %union.tree_node* %53, %55
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %sw.bb.77
  store i32 1, i32* %retval
  br label %return

if.else.87:                                       ; preds = %sw.bb.77
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 3603, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.simple_cst_equal, i32 0, i32 0)) #6
  unreachable

sw.bb.88:                                         ; preds = %if.end.44
  %56 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp89 = bitcast %union.tree_node* %56 to %struct.tree_exp*
  %operands90 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp89, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands90, i32 0, i64 0
  %57 = load %union.tree_node*, %union.tree_node** %arrayidx91, align 8
  %58 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp92 = bitcast %union.tree_node* %58 to %struct.tree_exp*
  %operands93 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp92, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands93, i32 0, i64 0
  %59 = load %union.tree_node*, %union.tree_node** %arrayidx94, align 8
  %call95 = call i32 @simple_cst_equal(%union.tree_node* %57, %union.tree_node* %59)
  store i32 %call95, i32* %retval
  br label %return

sw.bb.96:                                         ; preds = %if.end.44
  %60 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp97 = bitcast %union.tree_node* %60 to %struct.tree_exp*
  %operands98 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp97, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands98, i32 0, i64 0
  %61 = load %union.tree_node*, %union.tree_node** %arrayidx99, align 8
  %62 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp100 = bitcast %union.tree_node* %62 to %struct.tree_exp*
  %operands101 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp100, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands101, i32 0, i64 0
  %63 = load %union.tree_node*, %union.tree_node** %arrayidx102, align 8
  %call103 = call i32 @simple_cst_equal(%union.tree_node* %61, %union.tree_node* %63)
  store i32 %call103, i32* %cmp, align 4
  %64 = load i32, i32* %cmp, align 4
  %cmp104 = icmp sle i32 %64, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %sw.bb.96
  %65 = load i32, i32* %cmp, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.107:                                       ; preds = %sw.bb.96
  %66 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp108 = bitcast %union.tree_node* %66 to %struct.tree_exp*
  %operands109 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp108, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands109, i32 0, i64 1
  %67 = load %union.tree_node*, %union.tree_node** %arrayidx110, align 8
  %68 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp111 = bitcast %union.tree_node* %68 to %struct.tree_exp*
  %operands112 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp111, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands112, i32 0, i64 1
  %69 = load %union.tree_node*, %union.tree_node** %arrayidx113, align 8
  %call114 = call i32 @simple_cst_list_equal(%union.tree_node* %67, %union.tree_node* %69)
  store i32 %call114, i32* %retval
  br label %return

sw.bb.115:                                        ; preds = %if.end.44
  %70 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp116 = bitcast %union.tree_node* %70 to %struct.tree_exp*
  %operands117 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp116, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands117, i32 0, i64 0
  %71 = load %union.tree_node*, %union.tree_node** %arrayidx118, align 8
  %common119 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code120 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common119, i32 0, i32 2
  %bf.load121 = load i32, i32* %code120, align 8
  %bf.clear122 = and i32 %bf.load121, 255
  %cmp123 = icmp eq i32 %bf.clear122, 34
  br i1 %cmp123, label %land.lhs.true, label %lor.lhs.false.137

land.lhs.true:                                    ; preds = %sw.bb.115
  %72 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp125 = bitcast %union.tree_node* %72 to %struct.tree_exp*
  %operands126 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp125, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands126, i32 0, i64 0
  %73 = load %union.tree_node*, %union.tree_node** %arrayidx127, align 8
  %decl = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %74 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp128 = icmp eq %union.tree_node* %74, null
  br i1 %cmp128, label %land.lhs.true.130, label %lor.lhs.false.137

land.lhs.true.130:                                ; preds = %land.lhs.true
  %75 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp131 = bitcast %union.tree_node* %75 to %struct.tree_exp*
  %operands132 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp131, i32 0, i32 2
  %arrayidx133 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands132, i32 0, i64 0
  %76 = load %union.tree_node*, %union.tree_node** %arrayidx133, align 8
  %decl134 = bitcast %union.tree_node* %76 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl134, i32 0, i32 17
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp135 = icmp ne %struct.rtx_def* %77, null
  br i1 %cmp135, label %lor.lhs.false.137, label %if.then.163

lor.lhs.false.137:                                ; preds = %land.lhs.true.130, %land.lhs.true, %sw.bb.115
  %78 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp138 = bitcast %union.tree_node* %78 to %struct.tree_exp*
  %operands139 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp138, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands139, i32 0, i64 0
  %79 = load %union.tree_node*, %union.tree_node** %arrayidx140, align 8
  %common141 = bitcast %union.tree_node* %79 to %struct.tree_common*
  %code142 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common141, i32 0, i32 2
  %bf.load143 = load i32, i32* %code142, align 8
  %bf.clear144 = and i32 %bf.load143, 255
  %cmp145 = icmp eq i32 %bf.clear144, 34
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.164

land.lhs.true.147:                                ; preds = %lor.lhs.false.137
  %80 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp148 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %operands149 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp148, i32 0, i32 2
  %arrayidx150 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands149, i32 0, i64 0
  %81 = load %union.tree_node*, %union.tree_node** %arrayidx150, align 8
  %decl151 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %name152 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl151, i32 0, i32 8
  %82 = load %union.tree_node*, %union.tree_node** %name152, align 8
  %cmp153 = icmp eq %union.tree_node* %82, null
  br i1 %cmp153, label %land.lhs.true.155, label %if.else.164

land.lhs.true.155:                                ; preds = %land.lhs.true.147
  %83 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp156 = bitcast %union.tree_node* %83 to %struct.tree_exp*
  %operands157 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp156, i32 0, i32 2
  %arrayidx158 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands157, i32 0, i64 0
  %84 = load %union.tree_node*, %union.tree_node** %arrayidx158, align 8
  %decl159 = bitcast %union.tree_node* %84 to %struct.tree_decl*
  %rtl160 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl159, i32 0, i32 17
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtl160, align 8
  %cmp161 = icmp ne %struct.rtx_def* %85, null
  br i1 %cmp161, label %if.else.164, label %if.then.163

if.then.163:                                      ; preds = %land.lhs.true.155, %land.lhs.true.130
  store i32 1, i32* %cmp, align 4
  br label %if.end.172

if.else.164:                                      ; preds = %land.lhs.true.155, %land.lhs.true.147, %lor.lhs.false.137
  %86 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp165 = bitcast %union.tree_node* %86 to %struct.tree_exp*
  %operands166 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp165, i32 0, i32 2
  %arrayidx167 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands166, i32 0, i64 0
  %87 = load %union.tree_node*, %union.tree_node** %arrayidx167, align 8
  %88 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp168 = bitcast %union.tree_node* %88 to %struct.tree_exp*
  %operands169 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp168, i32 0, i32 2
  %arrayidx170 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands169, i32 0, i64 0
  %89 = load %union.tree_node*, %union.tree_node** %arrayidx170, align 8
  %call171 = call i32 @simple_cst_equal(%union.tree_node* %87, %union.tree_node* %89)
  store i32 %call171, i32* %cmp, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.164, %if.then.163
  %90 = load i32, i32* %cmp, align 4
  %cmp173 = icmp sle i32 %90, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.172
  %91 = load i32, i32* %cmp, align 4
  store i32 %91, i32* %retval
  br label %return

if.end.176:                                       ; preds = %if.end.172
  %92 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp177 = bitcast %union.tree_node* %92 to %struct.tree_exp*
  %operands178 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp177, i32 0, i32 2
  %arrayidx179 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands178, i32 0, i64 1
  %93 = load %union.tree_node*, %union.tree_node** %arrayidx179, align 8
  %94 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp180 = bitcast %union.tree_node* %94 to %struct.tree_exp*
  %operands181 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp180, i32 0, i32 2
  %arrayidx182 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands181, i32 0, i64 1
  %95 = load %union.tree_node*, %union.tree_node** %arrayidx182, align 8
  %call183 = call i32 @simple_cst_equal(%union.tree_node* %93, %union.tree_node* %95)
  store i32 %call183, i32* %retval
  br label %return

sw.bb.184:                                        ; preds = %if.end.44
  %96 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp185 = bitcast %union.tree_node* %96 to %struct.tree_exp*
  %operands186 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp185, i32 0, i32 2
  %arrayidx187 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands186, i32 0, i64 0
  %97 = load %union.tree_node*, %union.tree_node** %arrayidx187, align 8
  %98 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp188 = bitcast %union.tree_node* %98 to %struct.tree_exp*
  %operands189 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp188, i32 0, i32 2
  %arrayidx190 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands189, i32 0, i64 0
  %99 = load %union.tree_node*, %union.tree_node** %arrayidx190, align 8
  %call191 = call i32 @simple_cst_equal(%union.tree_node* %97, %union.tree_node* %99)
  store i32 %call191, i32* %cmp, align 4
  %100 = load i32, i32* %cmp, align 4
  %cmp192 = icmp sle i32 %100, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %sw.bb.184
  %101 = load i32, i32* %cmp, align 4
  store i32 %101, i32* %retval
  br label %return

if.end.195:                                       ; preds = %sw.bb.184
  %102 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp196 = bitcast %union.tree_node* %102 to %struct.tree_exp*
  %operands197 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp196, i32 0, i32 2
  %arrayidx198 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands197, i32 0, i64 1
  %103 = load %union.tree_node*, %union.tree_node** %arrayidx198, align 8
  %104 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp199 = bitcast %union.tree_node* %104 to %struct.tree_exp*
  %operands200 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp199, i32 0, i32 2
  %arrayidx201 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands200, i32 0, i64 1
  %105 = load %union.tree_node*, %union.tree_node** %arrayidx201, align 8
  %call202 = call i32 @simple_cst_equal(%union.tree_node* %103, %union.tree_node* %105)
  store i32 %call202, i32* %retval
  br label %return

sw.bb.203:                                        ; preds = %if.end.44
  %106 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp204 = bitcast %union.tree_node* %106 to %struct.tree_exp*
  %operands205 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp204, i32 0, i32 2
  %arrayidx206 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands205, i32 0, i64 1
  %107 = load %union.tree_node*, %union.tree_node** %arrayidx206, align 8
  %108 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp207 = bitcast %union.tree_node* %108 to %struct.tree_exp*
  %operands208 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp207, i32 0, i32 2
  %arrayidx209 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands208, i32 0, i64 1
  %109 = load %union.tree_node*, %union.tree_node** %arrayidx209, align 8
  %cmp210 = icmp eq %union.tree_node* %107, %109
  br i1 %cmp210, label %if.then.212, label %if.end.220

if.then.212:                                      ; preds = %sw.bb.203
  %110 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp213 = bitcast %union.tree_node* %110 to %struct.tree_exp*
  %operands214 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp213, i32 0, i32 2
  %arrayidx215 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands214, i32 0, i64 0
  %111 = load %union.tree_node*, %union.tree_node** %arrayidx215, align 8
  %112 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp216 = bitcast %union.tree_node* %112 to %struct.tree_exp*
  %operands217 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp216, i32 0, i32 2
  %arrayidx218 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands217, i32 0, i64 0
  %113 = load %union.tree_node*, %union.tree_node** %arrayidx218, align 8
  %call219 = call i32 @simple_cst_equal(%union.tree_node* %111, %union.tree_node* %113)
  store i32 %call219, i32* %retval
  br label %return

if.end.220:                                       ; preds = %sw.bb.203
  store i32 0, i32* %retval
  br label %return

sw.bb.221:                                        ; preds = %if.end.44, %if.end.44, %if.end.44, %if.end.44
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.44
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %114 = load i32, i32* %code1, align 4
  %cmp222 = icmp sge i32 %114, 147
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

if.end.225:                                       ; preds = %sw.epilog
  %115 = load i32, i32* %code1, align 4
  %idxprom = sext i32 %115 to i64
  %arrayidx226 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %116 = load i8, i8* %arrayidx226, align 1
  %conv227 = sext i8 %116 to i32
  switch i32 %conv227, label %sw.default.246 [
    i32 49, label %sw.bb.228
    i32 50, label %sw.bb.228
    i32 60, label %sw.bb.228
    i32 101, label %sw.bb.228
    i32 114, label %sw.bb.228
    i32 115, label %sw.bb.228
  ]

sw.bb.228:                                        ; preds = %if.end.225, %if.end.225, %if.end.225, %if.end.225, %if.end.225, %if.end.225
  store i32 1, i32* %cmp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.228
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %code1, align 4
  %idxprom229 = sext i32 %118 to i64
  %arrayidx230 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom229
  %119 = load i32, i32* %arrayidx230, align 4
  %cmp231 = icmp slt i32 %117, %119
  br i1 %cmp231, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %120 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %120 to i64
  %121 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %exp234 = bitcast %union.tree_node* %121 to %struct.tree_exp*
  %operands235 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp234, i32 0, i32 2
  %arrayidx236 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands235, i32 0, i64 %idxprom233
  %122 = load %union.tree_node*, %union.tree_node** %arrayidx236, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %123 to i64
  %124 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %exp238 = bitcast %union.tree_node* %124 to %struct.tree_exp*
  %operands239 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp238, i32 0, i32 2
  %arrayidx240 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands239, i32 0, i64 %idxprom237
  %125 = load %union.tree_node*, %union.tree_node** %arrayidx240, align 8
  %call241 = call i32 @simple_cst_equal(%union.tree_node* %122, %union.tree_node* %125)
  store i32 %call241, i32* %cmp, align 4
  %126 = load i32, i32* %cmp, align 4
  %cmp242 = icmp sle i32 %126, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %for.body
  %127 = load i32, i32* %cmp, align 4
  store i32 %127, i32* %retval
  br label %return

if.end.245:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.245
  %128 = load i32, i32* %i, align 4
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = load i32, i32* %cmp, align 4
  store i32 %129, i32* %retval
  br label %return

sw.default.246:                                   ; preds = %if.end.225
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.246, %for.end, %if.then.244, %if.then.224, %sw.bb.221, %if.end.220, %if.then.212, %if.end.195, %if.then.194, %if.end.176, %if.then.175, %if.end.107, %if.then.106, %sw.bb.88, %if.then.86, %land.end.75, %sw.bb.56, %land.end, %if.then.43, %if.then.35, %if.else, %if.then.21, %if.then.4, %if.then
  %130 = load i32, i32* %retval
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @merge_type_attributes(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 4
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %type1 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %attributes2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 4
  %3 = load %union.tree_node*, %union.tree_node** %attributes2, align 8
  %call = call %union.tree_node* @merge_attributes(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @merge_decl_attributes(%union.tree_node* %olddecl, %union.tree_node* %newdecl) #0 {
entry:
  %olddecl.addr = alloca %union.tree_node*, align 8
  %newdecl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %olddecl, %union.tree_node** %olddecl.addr, align 8
  store %union.tree_node* %newdecl, %union.tree_node** %newdecl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %2 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %attributes2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 16
  %3 = load %union.tree_node*, %union.tree_node** %attributes2, align 8
  %call = call %union.tree_node* @merge_attributes(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_qualified_type(%union.tree_node* %type, i32 %type_quals) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %type_quals.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %type_quals, i32* %type_quals.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %1 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %mul = mul nsw i32 %bf.clear, 1
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %volatile_flag, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 11
  %bf.clear5 = and i32 %bf.lshr4, 1
  %mul6 = mul nsw i32 %bf.clear5, 2
  %or = or i32 %mul, %mul6
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type7 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 6
  %bf.load8 = load i32, i32* %restrict_flag, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 21
  %bf.clear10 = and i32 %bf.lshr9, 1
  %mul11 = mul nsw i32 %bf.clear10, 4
  %or12 = or i32 %or, %mul11
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common13 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load14 = load i32, i32* %code, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp = icmp eq i32 %bf.clear15, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common16 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type17, align 8
  %tobool18 = icmp ne %union.tree_node* %8, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %9 = phi i1 [ false, %for.body ], [ %tobool18, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  %mul19 = mul nsw i32 %land.ext, 8
  %or20 = or i32 %or12, %mul19
  %10 = load i32, i32* %type_quals.addr, align 4
  %cmp21 = icmp eq i32 %or20, %10
  br i1 %cmp21, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type22 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 11
  %12 = load %union.tree_node*, %union.tree_node** %name, align 8
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type23 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %name24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 11
  %14 = load %union.tree_node*, %union.tree_node** %name24, align 8
  %cmp25 = icmp eq %union.tree_node* %12, %14
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %15, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type26 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 14
  %17 = load %union.tree_node*, %union.tree_node** %next_variant, align 8
  store %union.tree_node* %17, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %18
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_type_copy(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %m = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %1 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %1, %union.tree_node** %m, align 8
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* @copy_node(%union.tree_node* %2)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %pointer_to, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type3 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 9
  store %union.tree_node* null, %union.tree_node** %reference_to, align 8
  %5 = load %union.tree_node*, %union.tree_node** %m, align 8
  %type4 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %next_variant, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type5 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %next_variant6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 14
  store %union.tree_node* %6, %union.tree_node** %next_variant6, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %9 = load %union.tree_node*, %union.tree_node** %m, align 8
  %type7 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %next_variant8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 14
  store %union.tree_node* %8, %union.tree_node** %next_variant8, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define i32 @type_hash_list(%union.tree_node* %list) #0 {
entry:
  %list.addr = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  %tail = alloca %union.tree_node*, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  store i32 0, i32* %hashcode, align 4
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list1 = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %5 = load i32, i32* %hashcode, align 4
  %conv = zext i32 %5 to i64
  %add = add i64 %conv, %and
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %hashcode, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %7, %union.tree_node** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %hashcode, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @type_hash_lookup(i32 %hashcode, %union.tree_node* %type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %hashcode.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %h = alloca %struct.type_hash*, align 8
  %in = alloca %struct.type_hash, align 8
  store i32 %hashcode, i32* %hashcode.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @layout_type(%union.tree_node* %0)
  %1 = load i32, i32* %hashcode.addr, align 4
  %conv = zext i32 %1 to i64
  %hash = getelementptr inbounds %struct.type_hash, %struct.type_hash* %in, i32 0, i32 0
  store i64 %conv, i64* %hash, align 8
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %in, i32 0, i32 1
  store %union.tree_node* %2, %union.tree_node** %type1, align 8
  %3 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %4 = bitcast %struct.type_hash* %in to i8*
  %5 = load i32, i32* %hashcode.addr, align 4
  %call = call i8* @htab_find_with_hash(%struct.htab* %3, i8* %4, i32 %5)
  %6 = bitcast i8* %call to %struct.type_hash*
  store %struct.type_hash* %6, %struct.type_hash** %h, align 8
  %7 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %tobool = icmp ne %struct.type_hash* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %type2 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type2, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %10
}

declare void @layout_type(%union.tree_node*) #2

declare i8* @htab_find_with_hash(%struct.htab*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @type_hash_add(i32 %hashcode, %union.tree_node* %type) #0 {
entry:
  %hashcode.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %h = alloca %struct.type_hash*, align 8
  %loc = alloca i8**, align 8
  store i32 %hashcode, i32* %hashcode.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %call = call i8* @ggc_alloc(i64 16)
  %0 = bitcast i8* %call to %struct.type_hash*
  store %struct.type_hash* %0, %struct.type_hash** %h, align 8
  %1 = load i32, i32* %hashcode.addr, align 4
  %conv = zext i32 %1 to i64
  %2 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %hash = getelementptr inbounds %struct.type_hash, %struct.type_hash* %2, i32 0, i32 0
  store i64 %conv, i64* %hash, align 8
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %type1 = getelementptr inbounds %struct.type_hash, %struct.type_hash* %4, i32 0, i32 1
  store %union.tree_node* %3, %union.tree_node** %type1, align 8
  %5 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %6 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %7 = bitcast %struct.type_hash* %6 to i8*
  %8 = load i32, i32* %hashcode.addr, align 4
  %call2 = call i8** @htab_find_slot_with_hash(%struct.htab* %5, i8* %7, i32 %8, i32 1)
  store i8** %call2, i8*** %loc, align 8
  %9 = load %struct.type_hash*, %struct.type_hash** %h, align 8
  %10 = load i8**, i8*** %loc, align 8
  %11 = bitcast i8** %10 to %struct.type_hash**
  store %struct.type_hash* %9, %struct.type_hash** %11, align 8
  ret void
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @mark_tree_hashtable(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %t = alloca %struct.htab*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.htab**
  %2 = load %struct.htab*, %struct.htab** %1, align 8
  store %struct.htab* %2, %struct.htab** %t, align 8
  %3 = load %struct.htab*, %struct.htab** %t, align 8
  call void @htab_traverse(%struct.htab* %3, i32 (i8**, i8*)* @mark_tree_hashtable_entry, i8* null)
  ret void
}

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mark_tree_hashtable_entry(i8** %entry1, i8* %data) #0 {
entry:
  %entry.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store i8** %entry1, i8*** %entry.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %entry.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %t__, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.body
  %4 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %5 = bitcast %union.tree_node* %4 to i8*
  %call = call i32 @ggc_set_mark(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 0
  %9 = load i64, i64* %num_elements, align 8
  %cmp3 = icmp uge i64 %7, %9
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body.2
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements5, align 8
  %mul = mul i64 2, %12
  %call6 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %10, i64 %mul)
  store %struct.varray_head_tag* %call6, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %do.body.2
  %13 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 1
  %15 = load i64, i64* %elements_used7, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %elements_used7, align 8
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data8 to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %15
  store %union.tree_node* %13, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @type_list_equal(%union.tree_node* %l1, %union.tree_node* %l2) #0 {
entry:
  %retval = alloca i32, align 4
  %l1.addr = alloca %union.tree_node*, align 8
  %l2.addr = alloca %union.tree_node*, align 8
  %t1 = alloca %union.tree_node*, align 8
  %t2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %l1, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %l2, %union.tree_node** %l2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %t1, align 8
  %1 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %t2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %tobool1 = icmp ne %union.tree_node* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list2 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value3, align 8
  %cmp = icmp ne %union.tree_node* %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list4 = bitcast %union.tree_node* %9 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list5 = bitcast %union.tree_node* %11 to %struct.tree_list*
  %purpose6 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %purpose6, align 8
  %cmp7 = icmp ne %union.tree_node* %10, %12
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list8 = bitcast %union.tree_node* %13 to %struct.tree_list*
  %purpose9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %purpose9, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list10 = bitcast %union.tree_node* %15 to %struct.tree_list*
  %purpose11 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list10, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %purpose11, align 8
  %call = call i32 @simple_cst_equal(%union.tree_node* %14, %union.tree_node* %16)
  %cmp12 = icmp eq i32 1, %call
  br i1 %cmp12, label %land.lhs.true.13, label %if.then

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %17 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %list14 = bitcast %union.tree_node* %17 to %struct.tree_list*
  %purpose15 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list14, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %purpose15, align 8
  %common = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %list16 = bitcast %union.tree_node* %20 to %struct.tree_list*
  %purpose17 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list16, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %purpose17, align 8
  %common18 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type19, align 8
  %cmp20 = icmp eq %union.tree_node* %19, %22
  br i1 %cmp20, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %common21 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 0
  %24 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %24, %union.tree_node** %t1, align 8
  %25 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %common22 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %chain23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 0
  %26 = load %union.tree_node*, %union.tree_node** %chain23, align 8
  store %union.tree_node* %26, %union.tree_node** %t2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %28 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %cmp24 = icmp eq %union.tree_node* %27, %28
  %conv = zext i1 %cmp24 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @type_num_arguments(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common2 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %7, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @tree_int_cst_equal(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp1 = icmp eq %union.tree_node* %2, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp2 = icmp eq %union.tree_node* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp5 = icmp eq i32 %bf.clear, 25
  br i1 %cmp5, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 25
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.25

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst = bitcast %union.tree_node* %6 to %struct.tree_int_cst*
  %int_cst12 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst12, i32 0, i32 0
  %7 = load i64, i64* %low, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst13 = bitcast %union.tree_node* %8 to %struct.tree_int_cst*
  %int_cst14 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst13, i32 0, i32 2
  %low15 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst14, i32 0, i32 0
  %9 = load i64, i64* %low15, align 8
  %cmp16 = icmp eq i64 %7, %9
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.25

land.lhs.true.17:                                 ; preds = %land.lhs.true.11
  %10 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst18 = bitcast %union.tree_node* %10 to %struct.tree_int_cst*
  %int_cst19 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst18, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst19, i32 0, i32 1
  %11 = load i64, i64* %high, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst20 = bitcast %union.tree_node* %12 to %struct.tree_int_cst*
  %int_cst21 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst20, i32 0, i32 2
  %high22 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst21, i32 0, i32 1
  %13 = load i64, i64* %high22, align 8
  %cmp23 = icmp eq i64 %11, %13
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.17
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.17, %land.lhs.true.11, %land.lhs.true, %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.3, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @tree_int_cst_lt(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  %t1_sgn = alloca i32, align 4
  %t2_sgn = alloca i32, align 4
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %4 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %unsigned_flag5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %unsigned_flag5, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 13
  %bf.clear8 = and i32 %bf.lshr7, 1
  %cmp9 = icmp ne i32 %bf.clear, %bf.clear8
  br i1 %cmp9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %call = call i32 @tree_int_cst_sgn(%union.tree_node* %6)
  store i32 %call, i32* %t1_sgn, align 4
  %7 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %call11 = call i32 @tree_int_cst_sgn(%union.tree_node* %7)
  store i32 %call11, i32* %t2_sgn, align 4
  %8 = load i32, i32* %t1_sgn, align 4
  %9 = load i32, i32* %t2_sgn, align 4
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.10
  %10 = load i32, i32* %t1_sgn, align 4
  %11 = load i32, i32* %t2_sgn, align 4
  %cmp14 = icmp sgt i32 %10, %11
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %if.end.46

if.else.18:                                       ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common19 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type20, align 8
  %common21 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %unsigned_flag22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %unsigned_flag22, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 13
  %bf.clear25 = and i32 %bf.lshr24, 1
  %tobool = icmp ne i32 %bf.clear25, 0
  br i1 %tobool, label %if.end.45, label %if.then.26

if.then.26:                                       ; preds = %if.else.18
  %14 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst = bitcast %union.tree_node* %14 to %struct.tree_int_cst*
  %int_cst27 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst27, i32 0, i32 1
  %15 = load i64, i64* %high, align 8
  %16 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst28 = bitcast %union.tree_node* %16 to %struct.tree_int_cst*
  %int_cst29 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst28, i32 0, i32 2
  %high30 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst29, i32 0, i32 1
  %17 = load i64, i64* %high30, align 8
  %cmp31 = icmp slt i64 %15, %17
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.26
  %18 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst32 = bitcast %union.tree_node* %18 to %struct.tree_int_cst*
  %int_cst33 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst32, i32 0, i32 2
  %high34 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst33, i32 0, i32 1
  %19 = load i64, i64* %high34, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst35 = bitcast %union.tree_node* %20 to %struct.tree_int_cst*
  %int_cst36 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst35, i32 0, i32 2
  %high37 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst36, i32 0, i32 1
  %21 = load i64, i64* %high37, align 8
  %cmp38 = icmp eq i64 %19, %21
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst39 = bitcast %union.tree_node* %22 to %struct.tree_int_cst*
  %int_cst40 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst39, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst40, i32 0, i32 0
  %23 = load i64, i64* %low, align 8
  %24 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst41 = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst42 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst41, i32 0, i32 2
  %low43 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst42, i32 0, i32 0
  %25 = load i64, i64* %low43, align 8
  %cmp44 = icmp ult i64 %23, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %26 = phi i1 [ false, %lor.rhs ], [ %cmp44, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then.26
  %27 = phi i1 [ true, %if.then.26 ], [ %26, %land.end ]
  %lor.ext = zext i1 %27 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.else.18
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.17
  %28 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst47 = bitcast %union.tree_node* %28 to %struct.tree_int_cst*
  %int_cst48 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst47, i32 0, i32 2
  %high49 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst48, i32 0, i32 1
  %29 = load i64, i64* %high49, align 8
  %30 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst50 = bitcast %union.tree_node* %30 to %struct.tree_int_cst*
  %int_cst51 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst50, i32 0, i32 2
  %high52 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst51, i32 0, i32 1
  %31 = load i64, i64* %high52, align 8
  %cmp53 = icmp ult i64 %29, %31
  br i1 %cmp53, label %lor.end.71, label %lor.rhs.54

lor.rhs.54:                                       ; preds = %if.end.46
  %32 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst55 = bitcast %union.tree_node* %32 to %struct.tree_int_cst*
  %int_cst56 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst55, i32 0, i32 2
  %high57 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst56, i32 0, i32 1
  %33 = load i64, i64* %high57, align 8
  %34 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst58 = bitcast %union.tree_node* %34 to %struct.tree_int_cst*
  %int_cst59 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst58, i32 0, i32 2
  %high60 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst59, i32 0, i32 1
  %35 = load i64, i64* %high60, align 8
  %cmp61 = icmp eq i64 %33, %35
  br i1 %cmp61, label %land.rhs.62, label %land.end.70

land.rhs.62:                                      ; preds = %lor.rhs.54
  %36 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %int_cst63 = bitcast %union.tree_node* %36 to %struct.tree_int_cst*
  %int_cst64 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst63, i32 0, i32 2
  %low65 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst64, i32 0, i32 0
  %37 = load i64, i64* %low65, align 8
  %38 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %int_cst66 = bitcast %union.tree_node* %38 to %struct.tree_int_cst*
  %int_cst67 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst66, i32 0, i32 2
  %low68 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst67, i32 0, i32 0
  %39 = load i64, i64* %low68, align 8
  %cmp69 = icmp ult i64 %37, %39
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.62, %lor.rhs.54
  %40 = phi i1 [ false, %lor.rhs.54 ], [ %cmp69, %land.rhs.62 ]
  br label %lor.end.71

lor.end.71:                                       ; preds = %land.end.70, %if.end.46
  %41 = phi i1 [ true, %if.end.46 ], [ %40, %land.end.70 ]
  %lor.ext72 = zext i1 %41 to i32
  store i32 %lor.ext72, i32* %retval
  br label %return

return:                                           ; preds = %lor.end.71, %lor.end, %if.then.15, %if.then.13, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define i32 @tree_int_cst_sgn(%union.tree_node* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst = bitcast %union.tree_node* %0 to %struct.tree_int_cst*
  %int_cst1 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1, i32 0, i32 0
  %1 = load i64, i64* %low, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst2 = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst3 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst2, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst3, i32 0, i32 1
  %3 = load i64, i64* %high, align 8
  %cmp4 = icmp eq i64 %3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common5 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst8 = bitcast %union.tree_node* %6 to %struct.tree_int_cst*
  %int_cst9 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst8, i32 0, i32 2
  %high10 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst9, i32 0, i32 1
  %7 = load i64, i64* %high10, align 8
  %cmp11 = icmp slt i64 %7, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.7
  store i32 -1, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.else.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.12, %if.then.6, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @tree_int_cst_compare(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %call = call i32 @tree_int_cst_lt(%union.tree_node* %0, %union.tree_node* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %call1 = call i32 @tree_int_cst_lt(%union.tree_node* %2, %union.tree_node* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.4, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @host_integerp(%union.tree_node* %t, i32 %pos) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %pos.addr = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 25
  br i1 %cmp, label %land.lhs.true, label %land.end.34

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load2, 19
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %land.end.34, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst4 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst4, i32 0, i32 1
  %3 = load i64, i64* %high, align 8
  %cmp5 = icmp eq i64 %3, 0
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false

land.lhs.true.6:                                  ; preds = %land.rhs
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst7 = bitcast %union.tree_node* %4 to %struct.tree_int_cst*
  %int_cst8 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst7, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst8, i32 0, i32 0
  %5 = load i64, i64* %low, align 8
  %cmp9 = icmp sge i64 %5, 0
  br i1 %cmp9, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6, %land.rhs
  %6 = load i32, i32* %pos.addr, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %lor.rhs, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst12 = bitcast %union.tree_node* %7 to %struct.tree_int_cst*
  %int_cst13 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst12, i32 0, i32 2
  %high14 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst13, i32 0, i32 1
  %8 = load i64, i64* %high14, align 8
  %cmp15 = icmp eq i64 %8, -1
  br i1 %cmp15, label %land.lhs.true.16, label %lor.rhs

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst17 = bitcast %union.tree_node* %9 to %struct.tree_int_cst*
  %int_cst18 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst17, i32 0, i32 2
  %low19 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst18, i32 0, i32 0
  %10 = load i64, i64* %low19, align 8
  %cmp20 = icmp slt i64 %10, 0
  br i1 %cmp20, label %land.lhs.true.21, label %lor.rhs

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common22 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common23 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load24 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 13
  %bf.clear26 = and i32 %bf.lshr25, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true.21, %land.lhs.true.16, %land.lhs.true.11, %lor.lhs.false
  %13 = load i32, i32* %pos.addr, align 4
  %tobool28 = icmp ne i32 %13, 0
  br i1 %tobool28, label %land.rhs.29, label %land.end

land.rhs.29:                                      ; preds = %lor.rhs
  %14 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst30 = bitcast %union.tree_node* %14 to %struct.tree_int_cst*
  %int_cst31 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst30, i32 0, i32 2
  %high32 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst31, i32 0, i32 1
  %15 = load i64, i64* %high32, align 8
  %cmp33 = icmp eq i64 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.29, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %cmp33, %land.rhs.29 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.21, %land.lhs.true.6
  %17 = phi i1 [ true, %land.lhs.true.21 ], [ true, %land.lhs.true.6 ], [ %16, %land.end ]
  br label %land.end.34

land.end.34:                                      ; preds = %lor.end, %land.lhs.true, %entry
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %17, %lor.end ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @tree_int_cst_msb(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %prec = alloca i32, align 4
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %prec, align 4
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst = bitcast %union.tree_node* %3 to %struct.tree_int_cst*
  %int_cst2 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst2, i32 0, i32 0
  %4 = load i64, i64* %low, align 8
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst3 = bitcast %union.tree_node* %5 to %struct.tree_int_cst*
  %int_cst4 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst3, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst4, i32 0, i32 1
  %6 = load i64, i64* %high, align 8
  %7 = load i32, i32* %prec, align 4
  %conv5 = sext i32 %7 to i64
  call void @rshift_double(i64 %4, i64 %6, i64 %conv5, i32 128, i64* %l, i64* %h, i32 0)
  %8 = load i64, i64* %l, align 8
  %and = and i64 %8, 1
  %cmp = icmp eq i64 %and, 1
  %conv6 = zext i1 %cmp to i32
  ret i32 %conv6
}

declare void @rshift_double(i64, i64, i64, i32, i64*, i64*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @simple_cst_list_equal(%union.tree_node* %l1, %union.tree_node* %l2) #0 {
entry:
  %retval = alloca i32, align 4
  %l1.addr = alloca %union.tree_node*, align 8
  %l2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %l1, %union.tree_node** %l1.addr, align 8
  store %union.tree_node* %l2, %union.tree_node** %l2.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %cmp1 = icmp ne %union.tree_node* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %5 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %list2 = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value3, align 8
  %call = call i32 @simple_cst_equal(%union.tree_node* %4, %union.tree_node* %6)
  %cmp4 = icmp ne i32 %call, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %7 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %8, %union.tree_node** %l1.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %common5 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  store %union.tree_node* %10, %union.tree_node** %l2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %union.tree_node*, %union.tree_node** %l1.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %l2.addr, align 8
  %cmp7 = icmp eq %union.tree_node* %11, %12
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @compare_tree_int(%union.tree_node* %t, i64 %u) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %union.tree_node*, align 8
  %u.addr = alloca i64, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i64 %u, i64* %u.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call = call i32 @tree_int_cst_sgn(%union.tree_node* %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst = bitcast %union.tree_node* %1 to %struct.tree_int_cst*
  %int_cst1 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1, i32 0, i32 1
  %2 = load i64, i64* %high, align 8
  %cmp2 = icmp ne i64 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst5 = bitcast %union.tree_node* %3 to %struct.tree_int_cst*
  %int_cst6 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst5, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst6, i32 0, i32 0
  %4 = load i64, i64* %low, align 8
  %5 = load i64, i64* %u.addr, align 8
  %cmp7 = icmp eq i64 %4, %5
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.4
  store i32 0, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.else.4
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %int_cst10 = bitcast %union.tree_node* %6 to %struct.tree_int_cst*
  %int_cst11 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst10, i32 0, i32 2
  %low12 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst11, i32 0, i32 0
  %7 = load i64, i64* %low12, align 8
  %8 = load i64, i64* %u.addr, align 8
  %cmp13 = icmp ult i64 %7, %8
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.9
  store i32 -1, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.14, %if.then.8, %if.then.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_reference_type(%union.tree_node* %to_type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %to_type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %to_type, %union.tree_node** %to_type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 9
  %1 = load %union.tree_node*, %union.tree_node** %reference_to, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %union.tree_node* @make_node(i32 15)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %4, %union.tree_node** %type1, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %7 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8
  %type2 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %reference_to3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 9
  store %union.tree_node* %6, %union.tree_node** %reference_to3, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %8)
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %10
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_type_no_quals(%union.tree_node* %t) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 13, label %sw.bb
    i32 15, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @build_type_no_quals(%union.tree_node* %2)
  %call2 = call %union.tree_node* @build_pointer_type(%union.tree_node* %call)
  store %union.tree_node* %call2, %union.tree_node** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8
  %call6 = call %union.tree_node* @build_type_no_quals(%union.tree_node* %4)
  %call7 = call %union.tree_node* @build_reference_type(%union.tree_node* %call6)
  store %union.tree_node* %call7, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type8 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 15
  %6 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_index_type(%union.tree_node* %maxval) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %maxval.addr = alloca %union.tree_node*, align 8
  %itype = alloca %union.tree_node*, align 8
  store %union.tree_node* %maxval, %union.tree_node** %maxval.addr, align 8
  %call = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call, %union.tree_node** %itype, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %1 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type1 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  %3 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %precision3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load4 = load i32, i32* %precision3, align 4
  %bf.value = and i32 %bf.clear, 511
  %bf.clear5 = and i32 %bf.load4, -512
  %bf.set = or i32 %bf.clear5, %bf.value
  store i32 %bf.set, i32* %precision3, align 4
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  %5 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type6 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 12
  store %union.tree_node* %4, %union.tree_node** %minval, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %7 = load %union.tree_node*, %union.tree_node** %maxval.addr, align 8
  %call7 = call %union.tree_node* @convert(%union.tree_node* %6, %union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type8 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %maxval9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 13
  store %union.tree_node* %call7, %union.tree_node** %maxval9, align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type10 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 6
  %bf.load11 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load11, 9
  %bf.clear12 = and i32 %bf.lshr, 127
  %10 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type13 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 6
  %bf.load15 = load i32, i32* %mode14, align 4
  %bf.value16 = and i32 %bf.clear12, 127
  %bf.shl = shl i32 %bf.value16, 9
  %bf.clear17 = and i32 %bf.load15, -65025
  %bf.set18 = or i32 %bf.clear17, %bf.shl
  store i32 %bf.set18, i32* %mode14, align 4
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type19 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %size, align 8
  %13 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type20 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %size21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 2
  store %union.tree_node* %12, %union.tree_node** %size21, align 8
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type22 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 3
  %15 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %16 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type23 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %size_unit24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 3
  store %union.tree_node* %15, %union.tree_node** %size_unit24, align 8
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type25 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 7
  %18 = load i32, i32* %align, align 4
  %19 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type26 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %align27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 7
  store i32 %18, i32* %align27, align 4
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type28 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 6
  %bf.load29 = load i32, i32* %user_align, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 31
  %21 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type31 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %user_align32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 6
  %bf.load33 = load i32, i32* %user_align32, align 4
  %bf.value34 = and i32 %bf.lshr30, 1
  %bf.shl35 = shl i32 %bf.value34, 31
  %bf.clear36 = and i32 %bf.load33, 2147483647
  %bf.set37 = or i32 %bf.clear36, %bf.shl35
  store i32 %bf.set37, i32* %user_align32, align 4
  %22 = load %union.tree_node*, %union.tree_node** %maxval.addr, align 8
  %call38 = call i32 @host_integerp(%union.tree_node* %22, i32 1)
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load %union.tree_node*, %union.tree_node** %maxval.addr, align 8
  %call39 = call i64 @tree_low_cst(%union.tree_node* %23, i32 1)
  %conv = trunc i64 %call39 to i32
  %24 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %call40 = call %union.tree_node* @type_hash_canon(i32 %conv, %union.tree_node* %24)
  store %union.tree_node* %call40, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %entry
  %25 = load %union.tree_node*, %union.tree_node** %itype, align 8
  store %union.tree_node* %25, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %26 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %26
}

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_range_type(%union.tree_node* %type, %union.tree_node* %lowval, %union.tree_node* %highval) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %lowval.addr = alloca %union.tree_node*, align 8
  %highval.addr = alloca %union.tree_node*, align 8
  %itype = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %lowval, %union.tree_node** %lowval.addr, align 8
  store %union.tree_node* %highval, %union.tree_node** %highval.addr, align 8
  %call = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call, %union.tree_node** %itype, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %type1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %cmp = icmp eq %union.tree_node* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  store %union.tree_node* %3, %union.tree_node** %type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %lowval.addr, align 8
  %call2 = call %union.tree_node* @convert(%union.tree_node* %4, %union.tree_node* %5)
  %6 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type3 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 12
  store %union.tree_node* %call2, %union.tree_node** %minval, align 8
  %7 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %tobool = icmp ne %union.tree_node* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %call4 = call %union.tree_node* @convert(%union.tree_node* %8, %union.tree_node* %9)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %call4, %cond.true ], [ null, %cond.false ]
  %10 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type5 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 13
  store %union.tree_node* %cond, %union.tree_node** %maxval, align 8
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type6 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  %12 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type7 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %precision8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 6
  %bf.load9 = load i32, i32* %precision8, align 4
  %bf.value = and i32 %bf.clear, 511
  %bf.clear10 = and i32 %bf.load9, -512
  %bf.set = or i32 %bf.clear10, %bf.value
  store i32 %bf.set, i32* %precision8, align 4
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type11 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type11, i32 0, i32 6
  %bf.load12 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load12, 9
  %bf.clear13 = and i32 %bf.lshr, 127
  %14 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type14 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %mode15 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load16 = load i32, i32* %mode15, align 4
  %bf.value17 = and i32 %bf.clear13, 127
  %bf.shl = shl i32 %bf.value17, 9
  %bf.clear18 = and i32 %bf.load16, -65025
  %bf.set19 = or i32 %bf.clear18, %bf.shl
  store i32 %bf.set19, i32* %mode15, align 4
  %15 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type20 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %size, align 8
  %17 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type21 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %size22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 2
  store %union.tree_node* %16, %union.tree_node** %size22, align 8
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type23 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 3
  %19 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %20 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type24 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %size_unit25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i32 0, i32 3
  store %union.tree_node* %19, %union.tree_node** %size_unit25, align 8
  %21 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type26 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 7
  %22 = load i32, i32* %align, align 4
  %23 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type27 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %align28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 7
  store i32 %22, i32* %align28, align 4
  %24 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type29 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 6
  %bf.load30 = load i32, i32* %user_align, align 4
  %bf.lshr31 = lshr i32 %bf.load30, 31
  %25 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %type32 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %user_align33 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i32 0, i32 6
  %bf.load34 = load i32, i32* %user_align33, align 4
  %bf.value35 = and i32 %bf.lshr31, 1
  %bf.shl36 = shl i32 %bf.value35, 31
  %bf.clear37 = and i32 %bf.load34, 2147483647
  %bf.set38 = or i32 %bf.clear37, %bf.shl36
  store i32 %bf.set38, i32* %user_align33, align 4
  %26 = load %union.tree_node*, %union.tree_node** %lowval.addr, align 8
  %call39 = call i32 @host_integerp(%union.tree_node* %26, i32 0)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %27 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %cmp41 = icmp ne %union.tree_node* %27, null
  br i1 %cmp41, label %land.lhs.true.42, label %if.else

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %28 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %call43 = call i32 @host_integerp(%union.tree_node* %28, i32 0)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true.42
  %29 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %call46 = call i64 @tree_low_cst(%union.tree_node* %29, i32 0)
  %30 = load %union.tree_node*, %union.tree_node** %lowval.addr, align 8
  %call47 = call i64 @tree_low_cst(%union.tree_node* %30, i32 0)
  %sub = sub nsw i64 %call46, %call47
  %conv = trunc i64 %sub to i32
  %31 = load %union.tree_node*, %union.tree_node** %itype, align 8
  %call48 = call %union.tree_node* @type_hash_canon(i32 %conv, %union.tree_node* %31)
  store %union.tree_node* %call48, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.42, %land.lhs.true, %cond.end
  %32 = load %union.tree_node*, %union.tree_node** %itype, align 8
  store %union.tree_node* %32, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.45
  %33 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %33
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_index_2_type(%union.tree_node* %lowval, %union.tree_node* %highval) #0 {
entry:
  %lowval.addr = alloca %union.tree_node*, align 8
  %highval.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %lowval, %union.tree_node** %lowval.addr, align 8
  store %union.tree_node* %highval, %union.tree_node** %highval.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %1 = load %union.tree_node*, %union.tree_node** %lowval.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %highval.addr, align 8
  %call = call %union.tree_node* @build_range_type(%union.tree_node* %0, %union.tree_node* %1, %union.tree_node* %2)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define i32 @index_type_equal(%union.tree_node* %itype1, %union.tree_node* %itype2) #0 {
entry:
  %retval = alloca i32, align 4
  %itype1.addr = alloca %union.tree_node*, align 8
  %itype2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %itype1, %union.tree_node** %itype1.addr, align 8
  store %union.tree_node* %itype2, %union.tree_node** %itype2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %1 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp = icmp ne i32 %bf.clear, %bf.clear4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %common5 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load7 = load i32, i32* %code6, align 8
  %bf.clear8 = and i32 %bf.load7, 255
  %cmp9 = icmp eq i32 %bf.clear8, 6
  br i1 %cmp9, label %if.then.10, label %if.end.51

if.then.10:                                       ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type = bitcast %union.tree_node* %3 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load11 = load i32, i32* %precision, align 4
  %bf.clear12 = and i32 %bf.load11, 511
  %4 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type13 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %precision14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 6
  %bf.load15 = load i32, i32* %precision14, align 4
  %bf.clear16 = and i32 %bf.load15, 511
  %cmp17 = icmp ne i32 %bf.clear12, %bf.clear16
  br i1 %cmp17, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %5 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type18 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 6
  %bf.load19 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load19, 9
  %bf.clear20 = and i32 %bf.lshr, 127
  %6 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type21 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 6
  %bf.load23 = load i32, i32* %mode22, align 4
  %bf.lshr24 = lshr i32 %bf.load23, 9
  %bf.clear25 = and i32 %bf.lshr24, 127
  %cmp26 = icmp ne i32 %bf.clear20, %bf.clear25
  br i1 %cmp26, label %if.then.37, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type28 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %size, align 8
  %9 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type29 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %size30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 2
  %10 = load %union.tree_node*, %union.tree_node** %size30, align 8
  %call = call i32 @simple_cst_equal(%union.tree_node* %8, %union.tree_node* %10)
  %cmp31 = icmp ne i32 %call, 1
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.27
  %11 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type33 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 7
  %12 = load i32, i32* %align, align 4
  %13 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type34 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %align35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 7
  %14 = load i32, i32* %align35, align 4
  %cmp36 = icmp ne i32 %12, %14
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.27, %lor.lhs.false, %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %lor.lhs.false.32
  %15 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type39 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type39, i32 0, i32 12
  %16 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %17 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type40 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %minval41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 12
  %18 = load %union.tree_node*, %union.tree_node** %minval41, align 8
  %call42 = call i32 @simple_cst_equal(%union.tree_node* %16, %union.tree_node* %18)
  %cmp43 = icmp eq i32 1, %call42
  br i1 %cmp43, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.38
  %19 = load %union.tree_node*, %union.tree_node** %itype1.addr, align 8
  %type44 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type44, i32 0, i32 13
  %20 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %21 = load %union.tree_node*, %union.tree_node** %itype2.addr, align 8
  %type45 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %maxval46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i32 0, i32 13
  %22 = load %union.tree_node*, %union.tree_node** %maxval46, align 8
  %call47 = call i32 @simple_cst_equal(%union.tree_node* %20, %union.tree_node* %22)
  %cmp48 = icmp eq i32 1, %call47
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true, %if.end.38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.49, %if.then.37, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_array_type(%union.tree_node* %elt_type, %union.tree_node* %index_type) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %elt_type.addr = alloca %union.tree_node*, align 8
  %index_type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  store %union.tree_node* %elt_type, %union.tree_node** %elt_type.addr, align 8
  store %union.tree_node* %index_type, %union.tree_node** %index_type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %elt_type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.149, i32 0, i32 0))
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %1, %union.tree_node** %elt_type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %union.tree_node*, %union.tree_node** %elt_type.addr, align 8
  %call = call %union.tree_node* @build_pointer_type(%union.tree_node* %2)
  %call1 = call %union.tree_node* @make_node(i32 18)
  store %union.tree_node* %call1, %union.tree_node** %t, align 8
  %3 = load %union.tree_node*, %union.tree_node** %elt_type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  store %union.tree_node* %3, %union.tree_node** %type, align 8
  %5 = load %union.tree_node*, %union.tree_node** %index_type.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type3 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 1
  store %union.tree_node* %5, %union.tree_node** %values, align 8
  %7 = load %union.tree_node*, %union.tree_node** %index_type.addr, align 8
  %cmp4 = icmp eq %union.tree_node* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %8, %union.tree_node** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %elt_type.addr, align 8
  %10 = ptrtoint %union.tree_node* %9 to i64
  %and = and i64 %10, 262143
  %11 = load %union.tree_node*, %union.tree_node** %index_type.addr, align 8
  %12 = ptrtoint %union.tree_node* %11 to i64
  %and7 = and i64 %12, 262143
  %add = add i64 %and, %and7
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %hashcode, align 4
  %13 = load i32, i32* %hashcode, align 4
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call8 = call %union.tree_node* @type_hash_canon(i32 %13, %union.tree_node* %14)
  store %union.tree_node* %call8, %union.tree_node** %t, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type9 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp10 = icmp ne %union.tree_node* %16, null
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.6
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %18, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.5
  %19 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %19
}

declare void @error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_inner_array_type(%union.tree_node* %array) #0 {
entry:
  %array.addr = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node* %array, %union.tree_node** %array.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %array.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 18
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type4, align 8
  store %union.tree_node* %4, %union.tree_node** %type, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  ret %union.tree_node* %5
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_function_type(%union.tree_node* %value_type, %union.tree_node* %arg_types) #0 {
entry:
  %value_type.addr = alloca %union.tree_node*, align 8
  %arg_types.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  store %union.tree_node* %value_type, %union.tree_node** %value_type.addr, align 8
  store %union.tree_node* %arg_types, %union.tree_node** %arg_types.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %value_type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.150, i32 0, i32 0))
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %1, %union.tree_node** %value_type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %union.tree_node* @make_node(i32 23)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %2 = load %union.tree_node*, %union.tree_node** %value_type.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  store %union.tree_node* %2, %union.tree_node** %type, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arg_types.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type2 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 1
  store %union.tree_node* %4, %union.tree_node** %values, align 8
  %6 = load %union.tree_node*, %union.tree_node** %value_type.addr, align 8
  %7 = ptrtoint %union.tree_node* %6 to i64
  %and = and i64 %7, 262143
  %8 = load %union.tree_node*, %union.tree_node** %arg_types.addr, align 8
  %call3 = call i32 @type_hash_list(%union.tree_node* %8)
  %conv = zext i32 %call3 to i64
  %add = add i64 %and, %conv
  %conv4 = trunc i64 %add to i32
  store i32 %conv4, i32* %hashcode, align 4
  %9 = load i32, i32* %hashcode, align 4
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call5 = call %union.tree_node* @type_hash_canon(i32 %9, %union.tree_node* %10)
  store %union.tree_node* %call5, %union.tree_node** %t, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type6 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp7 = icmp ne %union.tree_node* %12, null
  br i1 %cmp7, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %14
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_method_type(%union.tree_node* %basetype, %union.tree_node* %type) #0 {
entry:
  %basetype.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  store %union.tree_node* %basetype, %union.tree_node** %basetype.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* @make_node(i32 16)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 4009, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.build_method_type, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %basetype.addr, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %2 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 13
  store %union.tree_node* %2, %union.tree_node** %maxval, align 8
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type4, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  store %union.tree_node* %5, %union.tree_node** %type6, align 8
  %7 = load %union.tree_node*, %union.tree_node** %basetype.addr, align 8
  %call7 = call %union.tree_node* @build_pointer_type(%union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type8 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %values, align 8
  %call9 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %call7, %union.tree_node* %9)
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type10 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %values11 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 1
  store %union.tree_node* %call9, %union.tree_node** %values11, align 8
  %11 = load %union.tree_node*, %union.tree_node** %basetype.addr, align 8
  %12 = ptrtoint %union.tree_node* %11 to i64
  %and = and i64 %12, 262143
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %14 = ptrtoint %union.tree_node* %13 to i64
  %and12 = and i64 %14, 262143
  %add = add i64 %and, %and12
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %hashcode, align 4
  %15 = load i32, i32* %hashcode, align 4
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call13 = call %union.tree_node* @type_hash_canon(i32 %15, %union.tree_node* %16)
  store %union.tree_node* %call13, %union.tree_node** %t, align 8
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type14 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp15 = icmp ne %union.tree_node* %18, null
  br i1 %cmp15, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %20
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_offset_type(%union.tree_node* %basetype, %union.tree_node* %type) #0 {
entry:
  %basetype.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %hashcode = alloca i32, align 4
  store %union.tree_node* %basetype, %union.tree_node** %basetype.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* @make_node(i32 14)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %basetype.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 15
  %1 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 13
  store %union.tree_node* %1, %union.tree_node** %maxval, align 8
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %3, %union.tree_node** %type3, align 8
  %5 = load %union.tree_node*, %union.tree_node** %basetype.addr, align 8
  %6 = ptrtoint %union.tree_node* %5 to i64
  %and = and i64 %6, 262143
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %8 = ptrtoint %union.tree_node* %7 to i64
  %and4 = and i64 %8, 262143
  %add = add i64 %and, %and4
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %hashcode, align 4
  %9 = load i32, i32* %hashcode, align 4
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call5 = call %union.tree_node* @type_hash_canon(i32 %9, %union.tree_node* %10)
  store %union.tree_node* %call5, %union.tree_node** %t, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type6 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp = icmp ne %union.tree_node* %12, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @layout_type(%union.tree_node* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %14
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_unwidened(%union.tree_node* %op, %union.tree_node* %for_type) #0 {
entry:
  %op.addr = alloca %union.tree_node*, align 8
  %for_type.addr = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  %final_prec = alloca i32, align 4
  %uns = alloca i32, align 4
  %win = alloca %union.tree_node*, align 8
  %bitschange = alloca i32, align 4
  %innerprec = alloca i32, align 4
  store %union.tree_node* %op, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %for_type, %union.tree_node** %for_type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** %for_type.addr, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %for_type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %3, %cond.true ], [ %4, %cond.false ]
  %type2 = bitcast %union.tree_node* %cond to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  store i32 %bf.clear, i32* %final_prec, align 4
  %5 = load %union.tree_node*, %union.tree_node** %for_type.addr, align 8
  %cmp3 = icmp ne %union.tree_node* %5, null
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.end
  %6 = load %union.tree_node*, %union.tree_node** %for_type.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp4 = icmp ne %union.tree_node* %6, %7
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %final_prec, align 4
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type6 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %precision7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load8 = load i32, i32* %precision7, align 4
  %bf.clear9 = and i32 %bf.load8, 511
  %cmp10 = icmp ugt i32 %8, %bf.clear9
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load12 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load12, 13
  %bf.clear13 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %cond.end
  %11 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %cond.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %uns, align 4
  %12 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %12, %union.tree_node** %win, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.72, %land.end
  %13 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common14 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load15 = load i32, i32* %code, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 115
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common18 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type19, align 8
  %type20 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %precision21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 6
  %bf.load22 = load i32, i32* %precision21, align 4
  %bf.clear23 = and i32 %bf.load22, 511
  %16 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common24 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %type26 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %precision27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 6
  %bf.load28 = load i32, i32* %precision27, align 4
  %bf.clear29 = and i32 %bf.load28, 511
  %sub = sub nsw i32 %bf.clear23, %bf.clear29
  store i32 %sub, i32* %bitschange, align 4
  %19 = load i32, i32* %bitschange, align 4
  %cmp30 = icmp slt i32 %19, 0
  br i1 %cmp30, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %while.body
  %20 = load i32, i32* %final_prec, align 4
  %21 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common32 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type33, align 8
  %type34 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %precision35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 6
  %bf.load36 = load i32, i32* %precision35, align 4
  %bf.clear37 = and i32 %bf.load36, 511
  %cmp38 = icmp ugt i32 %20, %bf.clear37
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.31
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.31, %while.body
  %23 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp39 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands40 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp39, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands40, i32 0, i64 0
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx41, align 8
  store %union.tree_node* %24, %union.tree_node** %op.addr, align 8
  %25 = load i32, i32* %bitschange, align 4
  %cmp42 = icmp sgt i32 %25, 0
  br i1 %cmp42, label %if.then.43, label %if.end.72

if.then.43:                                       ; preds = %if.end
  %26 = load i32, i32* %uns, align 4
  %tobool44 = icmp ne i32 %26, 0
  br i1 %tobool44, label %lor.lhs.false, label %if.then.52

lor.lhs.false:                                    ; preds = %if.then.43
  %27 = load i32, i32* %final_prec, align 4
  %28 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common45 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %type46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 1
  %29 = load %union.tree_node*, %union.tree_node** %type46, align 8
  %type47 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %precision48 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type47, i32 0, i32 6
  %bf.load49 = load i32, i32* %precision48, align 4
  %bf.clear50 = and i32 %bf.load49, 511
  %cmp51 = icmp ule i32 %27, %bf.clear50
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false, %if.then.43
  %30 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %30, %union.tree_node** %win, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %lor.lhs.false
  %31 = load i32, i32* %uns, align 4
  %tobool54 = icmp ne i32 %31, 0
  br i1 %tobool54, label %land.lhs.true.61, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %if.end.53
  %32 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common56 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load58 = load i32, i32* %code57, align 8
  %bf.clear59 = and i32 %bf.load58, 255
  %cmp60 = icmp eq i32 %bf.clear59, 115
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.71

land.lhs.true.61:                                 ; preds = %lor.lhs.false.55, %if.end.53
  %33 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common62 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type63, align 8
  %common64 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %unsigned_flag65 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load66 = load i32, i32* %unsigned_flag65, align 8
  %bf.lshr67 = lshr i32 %bf.load66, 13
  %bf.clear68 = and i32 %bf.lshr67, 1
  %tobool69 = icmp ne i32 %bf.clear68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %uns, align 4
  %35 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %35, %union.tree_node** %win, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.61, %lor.lhs.false.55
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %36 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common73 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %code74, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 39
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.177

land.lhs.true.78:                                 ; preds = %while.end
  %37 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common79 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %code80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load81 = load i32, i32* %code80, align 8
  %bf.clear82 = and i32 %bf.load81, 255
  %cmp83 = icmp ne i32 %bf.clear82, 7
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.177

land.lhs.true.84:                                 ; preds = %land.lhs.true.78
  %38 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp85 = bitcast %union.tree_node* %38 to %struct.tree_exp*
  %operands86 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp85, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands86, i32 0, i64 1
  %39 = load %union.tree_node*, %union.tree_node** %arrayidx87, align 8
  %decl = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 4
  %40 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp88 = icmp ne %union.tree_node* %40, null
  br i1 %cmp88, label %land.lhs.true.89, label %if.end.177

land.lhs.true.89:                                 ; preds = %land.lhs.true.84
  %41 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp90 = bitcast %union.tree_node* %41 to %struct.tree_exp*
  %operands91 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp90, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands91, i32 0, i64 1
  %42 = load %union.tree_node*, %union.tree_node** %arrayidx92, align 8
  %decl93 = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %size94 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl93, i32 0, i32 4
  %43 = load %union.tree_node*, %union.tree_node** %size94, align 8
  %call = call i32 @host_integerp(%union.tree_node* %43, i32 1)
  %tobool95 = icmp ne i32 %call, 0
  br i1 %tobool95, label %if.then.96, label %if.end.177

if.then.96:                                       ; preds = %land.lhs.true.89
  %44 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp97 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands98 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp97, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands98, i32 0, i64 1
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx99, align 8
  %decl100 = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %size101 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl100, i32 0, i32 4
  %46 = load %union.tree_node*, %union.tree_node** %size101, align 8
  %call102 = call i64 @tree_low_cst(%union.tree_node* %46, i32 1)
  %conv = trunc i64 %call102 to i32
  store i32 %conv, i32* %innerprec, align 4
  %47 = load i32, i32* %innerprec, align 4
  %48 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp103 = bitcast %union.tree_node* %48 to %struct.tree_exp*
  %operands104 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp103, i32 0, i32 2
  %arrayidx105 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands104, i32 0, i64 1
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx105, align 8
  %common106 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %unsigned_flag107 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common106, i32 0, i32 2
  %bf.load108 = load i32, i32* %unsigned_flag107, align 8
  %bf.lshr109 = lshr i32 %bf.load108, 13
  %bf.clear110 = and i32 %bf.lshr109, 1
  %call111 = call %union.tree_node* @type_for_size(i32 %47, i32 %bf.clear110)
  store %union.tree_node* %call111, %union.tree_node** %type, align 8
  %50 = load i32, i32* %innerprec, align 4
  %51 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common112 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %type113 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common112, i32 0, i32 1
  %52 = load %union.tree_node*, %union.tree_node** %type113, align 8
  %type114 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %precision115 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type114, i32 0, i32 6
  %bf.load116 = load i32, i32* %precision115, align 4
  %bf.clear117 = and i32 %bf.load116, 511
  %cmp118 = icmp ult i32 %50, %bf.clear117
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.176

land.lhs.true.120:                                ; preds = %if.then.96
  %53 = load %union.tree_node*, %union.tree_node** %for_type.addr, align 8
  %tobool121 = icmp ne %union.tree_node* %53, null
  br i1 %tobool121, label %land.lhs.true.131, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.120
  %54 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp123 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands124 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp123, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands124, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx125, align 8
  %decl126 = bitcast %union.tree_node* %55 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl126, i32 0, i32 5
  %56 = bitcast i48* %bit_field_flag to i64*
  %bf.load127 = load i64, i64* %56, align 8
  %bf.lshr128 = lshr i64 %bf.load127, 12
  %bf.clear129 = and i64 %bf.lshr128, 1
  %bf.cast = trunc i64 %bf.clear129 to i32
  %tobool130 = icmp ne i32 %bf.cast, 0
  br i1 %tobool130, label %if.end.176, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %lor.lhs.false.122, %land.lhs.true.120
  %57 = load i32, i32* %uns, align 4
  %tobool132 = icmp ne i32 %57, 0
  br i1 %tobool132, label %lor.lhs.false.133, label %land.lhs.true.146

lor.lhs.false.133:                                ; preds = %land.lhs.true.131
  %58 = load i32, i32* %final_prec, align 4
  %59 = load i32, i32* %innerprec, align 4
  %cmp134 = icmp ule i32 %58, %59
  br i1 %cmp134, label %land.lhs.true.146, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.133
  %60 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp137 = bitcast %union.tree_node* %60 to %struct.tree_exp*
  %operands138 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp137, i32 0, i32 2
  %arrayidx139 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands138, i32 0, i64 1
  %61 = load %union.tree_node*, %union.tree_node** %arrayidx139, align 8
  %common140 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %unsigned_flag141 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common140, i32 0, i32 2
  %bf.load142 = load i32, i32* %unsigned_flag141, align 8
  %bf.lshr143 = lshr i32 %bf.load142, 13
  %bf.clear144 = and i32 %bf.lshr143, 1
  %tobool145 = icmp ne i32 %bf.clear144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.176

land.lhs.true.146:                                ; preds = %lor.lhs.false.136, %lor.lhs.false.133, %land.lhs.true.131
  %62 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp147 = icmp ne %union.tree_node* %62, null
  br i1 %cmp147, label %if.then.149, label %if.end.176

if.then.149:                                      ; preds = %land.lhs.true.146
  %63 = load %union.tree_node*, %union.tree_node** %type, align 8
  %64 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp150 = bitcast %union.tree_node* %64 to %struct.tree_exp*
  %operands151 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp150, i32 0, i32 2
  %arrayidx152 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands151, i32 0, i64 0
  %65 = load %union.tree_node*, %union.tree_node** %arrayidx152, align 8
  %66 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp153 = bitcast %union.tree_node* %66 to %struct.tree_exp*
  %operands154 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp153, i32 0, i32 2
  %arrayidx155 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands154, i32 0, i64 1
  %67 = load %union.tree_node*, %union.tree_node** %arrayidx155, align 8
  %call156 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 39, %union.tree_node* %63, %union.tree_node* %65, %union.tree_node* %67)
  store %union.tree_node* %call156, %union.tree_node** %win, align 8
  %68 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common157 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 2
  %bf.load158 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr159 = lshr i32 %bf.load158, 8
  %bf.clear160 = and i32 %bf.lshr159, 1
  %69 = load %union.tree_node*, %union.tree_node** %win, align 8
  %common161 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %side_effects_flag162 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common161, i32 0, i32 2
  %bf.load163 = load i32, i32* %side_effects_flag162, align 8
  %bf.value = and i32 %bf.clear160, 1
  %bf.shl = shl i32 %bf.value, 8
  %bf.clear164 = and i32 %bf.load163, -257
  %bf.set = or i32 %bf.clear164, %bf.shl
  store i32 %bf.set, i32* %side_effects_flag162, align 8
  %70 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common165 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common165, i32 0, i32 2
  %bf.load166 = load i32, i32* %volatile_flag, align 8
  %bf.lshr167 = lshr i32 %bf.load166, 11
  %bf.clear168 = and i32 %bf.lshr167, 1
  %71 = load %union.tree_node*, %union.tree_node** %win, align 8
  %common169 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %volatile_flag170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common169, i32 0, i32 2
  %bf.load171 = load i32, i32* %volatile_flag170, align 8
  %bf.value172 = and i32 %bf.clear168, 1
  %bf.shl173 = shl i32 %bf.value172, 11
  %bf.clear174 = and i32 %bf.load171, -2049
  %bf.set175 = or i32 %bf.clear174, %bf.shl173
  store i32 %bf.set175, i32* %volatile_flag170, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.149, %land.lhs.true.146, %lor.lhs.false.136, %lor.lhs.false.122, %if.then.96
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %land.lhs.true.89, %land.lhs.true.84, %land.lhs.true.78, %while.end
  %72 = load %union.tree_node*, %union.tree_node** %win, align 8
  ret %union.tree_node* %72
}

declare %union.tree_node* @type_for_size(i32, i32) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_narrower(%union.tree_node* %op, i32* %unsignedp_ptr) #0 {
entry:
  %op.addr = alloca %union.tree_node*, align 8
  %unsignedp_ptr.addr = alloca i32*, align 8
  %uns = alloca i32, align 4
  %first = alloca i32, align 4
  %win = alloca %union.tree_node*, align 8
  %bitschange = alloca i32, align 4
  %innerprec = alloca i64, align 8
  %type69 = alloca %union.tree_node*, align 8
  store %union.tree_node* %op, %union.tree_node** %op.addr, align 8
  store i32* %unsignedp_ptr, i32** %unsignedp_ptr.addr, align 8
  store i32 0, i32* %uns, align 4
  store i32 1, i32* %first, align 4
  %0 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %win, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %entry
  %1 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common1 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load3 = load i32, i32* %precision, align 4
  %bf.clear4 = and i32 %bf.load3, 511
  %4 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common5 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type6, align 8
  %type7 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %precision8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 6
  %bf.load9 = load i32, i32* %precision8, align 4
  %bf.clear10 = and i32 %bf.load9, 511
  %sub = sub nsw i32 %bf.clear4, %bf.clear10
  store i32 %sub, i32* %bitschange, align 4
  %7 = load i32, i32* %bitschange, align 4
  %cmp11 = icmp slt i32 %7, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp12 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  store %union.tree_node* %9, %union.tree_node** %op.addr, align 8
  %10 = load i32, i32* %bitschange, align 4
  %cmp15 = icmp sgt i32 %10, 0
  br i1 %cmp15, label %if.then.16, label %if.else.34

if.then.16:                                       ; preds = %if.end
  %11 = load i32, i32* %first, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.16
  %12 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common18 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type19, align 8
  %common20 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load21 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load21, 13
  %bf.clear22 = and i32 %bf.lshr, 1
  store i32 %bf.clear22, i32* %uns, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.then.16
  %14 = load i32, i32* %uns, align 4
  %15 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common23 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %type24, align 8
  %common25 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %unsigned_flag26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load27 = load i32, i32* %unsigned_flag26, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 13
  %bf.clear29 = and i32 %bf.lshr28, 1
  %cmp30 = icmp ne i32 %14, %bf.clear29
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  br label %while.end

if.end.32:                                        ; preds = %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.17
  store i32 0, i32* %first, align 4
  br label %if.end.45

if.else.34:                                       ; preds = %if.end
  %17 = load i32, i32* %first, align 4
  %tobool35 = icmp ne i32 %17, 0
  br i1 %tobool35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.else.34
  %18 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common37 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type38, align 8
  %common39 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %unsigned_flag40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %unsigned_flag40, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 13
  %bf.clear43 = and i32 %bf.lshr42, 1
  store i32 %bf.clear43, i32* %uns, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.36, %if.else.34
  store i32 0, i32* %first, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.33
  %20 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  store %union.tree_node* %20, %union.tree_node** %win, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.31, %if.then, %while.cond
  %21 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common46 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load48 = load i32, i32* %code47, align 8
  %bf.clear49 = and i32 %bf.load48, 255
  %cmp50 = icmp eq i32 %bf.clear49, 39
  br i1 %cmp50, label %land.lhs.true, label %if.end.148

land.lhs.true:                                    ; preds = %while.end
  %22 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common51 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %common53 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code54 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 2
  %bf.load55 = load i32, i32* %code54, align 8
  %bf.clear56 = and i32 %bf.load55, 255
  %cmp57 = icmp ne i32 %bf.clear56, 7
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.148

land.lhs.true.58:                                 ; preds = %land.lhs.true
  %24 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp59 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands60 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp59, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands60, i32 0, i64 1
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx61, align 8
  %decl = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 4
  %26 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp62 = icmp ne %union.tree_node* %26, null
  br i1 %cmp62, label %if.then.63, label %if.end.148

if.then.63:                                       ; preds = %land.lhs.true.58
  %27 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp64 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands65 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp64, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands65, i32 0, i64 1
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  %decl67 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %size68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 4
  %29 = load %union.tree_node*, %union.tree_node** %size68, align 8
  %call = call i64 @tree_low_cst(%union.tree_node* %29, i32 1)
  store i64 %call, i64* %innerprec, align 8
  %30 = load i64, i64* %innerprec, align 8
  %conv = trunc i64 %30 to i32
  %31 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common70 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %unsigned_flag71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load72 = load i32, i32* %unsigned_flag71, align 8
  %bf.lshr73 = lshr i32 %bf.load72, 13
  %bf.clear74 = and i32 %bf.lshr73, 1
  %call75 = call %union.tree_node* @type_for_size(i32 %conv, i32 %bf.clear74)
  store %union.tree_node* %call75, %union.tree_node** %type69, align 8
  %32 = load i64, i64* %innerprec, align 8
  %33 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common76 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type77, align 8
  %type78 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %precision79 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type78, i32 0, i32 6
  %bf.load80 = load i32, i32* %precision79, align 4
  %bf.clear81 = and i32 %bf.load80, 511
  %conv82 = zext i32 %bf.clear81 to i64
  %cmp83 = icmp ult i64 %32, %conv82
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.147

land.lhs.true.85:                                 ; preds = %if.then.63
  %35 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp86 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %operands87 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp86, i32 0, i32 2
  %arrayidx88 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands87, i32 0, i64 1
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx88, align 8
  %decl89 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl89, i32 0, i32 5
  %37 = bitcast i48* %bit_field_flag to i64*
  %bf.load90 = load i64, i64* %37, align 8
  %bf.lshr91 = lshr i64 %bf.load90, 12
  %bf.clear92 = and i64 %bf.lshr91, 1
  %bf.cast = trunc i64 %bf.clear92 to i32
  %tobool93 = icmp ne i32 %bf.cast, 0
  br i1 %tobool93, label %if.end.147, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %land.lhs.true.85
  %38 = load i32, i32* %first, align 4
  %tobool95 = icmp ne i32 %38, 0
  br i1 %tobool95, label %land.lhs.true.106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %39 = load i32, i32* %uns, align 4
  %40 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp96 = bitcast %union.tree_node* %40 to %struct.tree_exp*
  %operands97 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp96, i32 0, i32 2
  %arrayidx98 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands97, i32 0, i64 1
  %41 = load %union.tree_node*, %union.tree_node** %arrayidx98, align 8
  %common99 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %unsigned_flag100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 2
  %bf.load101 = load i32, i32* %unsigned_flag100, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 13
  %bf.clear103 = and i32 %bf.lshr102, 1
  %cmp104 = icmp eq i32 %39, %bf.clear103
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.147

land.lhs.true.106:                                ; preds = %lor.lhs.false, %land.lhs.true.94
  %42 = load %union.tree_node*, %union.tree_node** %type69, align 8
  %cmp107 = icmp ne %union.tree_node* %42, null
  br i1 %cmp107, label %if.then.109, label %if.end.147

if.then.109:                                      ; preds = %land.lhs.true.106
  %43 = load i32, i32* %first, align 4
  %tobool110 = icmp ne i32 %43, 0
  br i1 %tobool110, label %if.then.111, label %if.end.120

if.then.111:                                      ; preds = %if.then.109
  %44 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp112 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands113 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp112, i32 0, i32 2
  %arrayidx114 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands113, i32 0, i64 1
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx114, align 8
  %common115 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %unsigned_flag116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %unsigned_flag116, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 13
  %bf.clear119 = and i32 %bf.lshr118, 1
  store i32 %bf.clear119, i32* %uns, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.111, %if.then.109
  %46 = load %union.tree_node*, %union.tree_node** %type69, align 8
  %47 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp121 = bitcast %union.tree_node* %47 to %struct.tree_exp*
  %operands122 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp121, i32 0, i32 2
  %arrayidx123 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands122, i32 0, i64 0
  %48 = load %union.tree_node*, %union.tree_node** %arrayidx123, align 8
  %49 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %exp124 = bitcast %union.tree_node* %49 to %struct.tree_exp*
  %operands125 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp124, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands125, i32 0, i64 1
  %50 = load %union.tree_node*, %union.tree_node** %arrayidx126, align 8
  %call127 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 39, %union.tree_node* %46, %union.tree_node* %48, %union.tree_node* %50)
  store %union.tree_node* %call127, %union.tree_node** %win, align 8
  %51 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common128 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common128, i32 0, i32 2
  %bf.load129 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr130 = lshr i32 %bf.load129, 8
  %bf.clear131 = and i32 %bf.lshr130, 1
  %52 = load %union.tree_node*, %union.tree_node** %win, align 8
  %common132 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %side_effects_flag133 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common132, i32 0, i32 2
  %bf.load134 = load i32, i32* %side_effects_flag133, align 8
  %bf.value = and i32 %bf.clear131, 1
  %bf.shl = shl i32 %bf.value, 8
  %bf.clear135 = and i32 %bf.load134, -257
  %bf.set = or i32 %bf.clear135, %bf.shl
  store i32 %bf.set, i32* %side_effects_flag133, align 8
  %53 = load %union.tree_node*, %union.tree_node** %op.addr, align 8
  %common136 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common136, i32 0, i32 2
  %bf.load137 = load i32, i32* %volatile_flag, align 8
  %bf.lshr138 = lshr i32 %bf.load137, 11
  %bf.clear139 = and i32 %bf.lshr138, 1
  %54 = load %union.tree_node*, %union.tree_node** %win, align 8
  %common140 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %volatile_flag141 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common140, i32 0, i32 2
  %bf.load142 = load i32, i32* %volatile_flag141, align 8
  %bf.value143 = and i32 %bf.clear139, 1
  %bf.shl144 = shl i32 %bf.value143, 11
  %bf.clear145 = and i32 %bf.load142, -2049
  %bf.set146 = or i32 %bf.clear145, %bf.shl144
  store i32 %bf.set146, i32* %volatile_flag141, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.120, %land.lhs.true.106, %lor.lhs.false, %land.lhs.true.85, %if.then.63
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.58, %land.lhs.true, %while.end
  %55 = load i32, i32* %uns, align 4
  %56 = load i32*, i32** %unsignedp_ptr.addr, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %union.tree_node*, %union.tree_node** %win, align 8
  ret %union.tree_node* %57
}

; Function Attrs: nounwind uwtable
define i32 @int_fits_type_p(%union.tree_node* %c, %union.tree_node* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %c, %union.tree_node** %c.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 13
  %1 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %cmp = icmp ne %union.tree_node* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.else.168

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 12
  %3 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %cmp3 = icmp ne %union.tree_node* %3, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.168

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %maxval6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 13
  %5 = load %union.tree_node*, %union.tree_node** %maxval6, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp7 = icmp eq i32 %bf.clear, 25
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.168

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type9 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %minval10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 12
  %7 = load %union.tree_node*, %union.tree_node** %minval10, align 8
  %common11 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp eq i32 %bf.clear14, 25
  br i1 %cmp15, label %if.then, label %if.else.168

if.then:                                          ; preds = %land.lhs.true.8
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common16 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load17, 13
  %bf.clear18 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear18, 0
  br i1 %tobool, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type20 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %maxval21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 13
  %10 = load %union.tree_node*, %union.tree_node** %maxval21, align 8
  %int_cst = bitcast %union.tree_node* %10 to %struct.tree_int_cst*
  %int_cst22 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst22, i32 0, i32 1
  %11 = load i64, i64* %high, align 8
  %12 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst23 = bitcast %union.tree_node* %12 to %struct.tree_int_cst*
  %int_cst24 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst23, i32 0, i32 2
  %high25 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst24, i32 0, i32 1
  %13 = load i64, i64* %high25, align 8
  %cmp26 = icmp ult i64 %11, %13
  br i1 %cmp26, label %land.end.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type27 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %maxval28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 13
  %15 = load %union.tree_node*, %union.tree_node** %maxval28, align 8
  %int_cst29 = bitcast %union.tree_node* %15 to %struct.tree_int_cst*
  %int_cst30 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst29, i32 0, i32 2
  %high31 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst30, i32 0, i32 1
  %16 = load i64, i64* %high31, align 8
  %17 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst32 = bitcast %union.tree_node* %17 to %struct.tree_int_cst*
  %int_cst33 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst32, i32 0, i32 2
  %high34 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst33, i32 0, i32 1
  %18 = load i64, i64* %high34, align 8
  %cmp35 = icmp eq i64 %16, %18
  br i1 %cmp35, label %land.lhs.true.36, label %land.lhs.true.45

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %19 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type37 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %maxval38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 13
  %20 = load %union.tree_node*, %union.tree_node** %maxval38, align 8
  %int_cst39 = bitcast %union.tree_node* %20 to %struct.tree_int_cst*
  %int_cst40 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst39, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst40, i32 0, i32 0
  %21 = load i64, i64* %low, align 8
  %22 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst41 = bitcast %union.tree_node* %22 to %struct.tree_int_cst*
  %int_cst42 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst41, i32 0, i32 2
  %low43 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst42, i32 0, i32 0
  %23 = load i64, i64* %low43, align 8
  %cmp44 = icmp ult i64 %21, %23
  br i1 %cmp44, label %land.end.89, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %land.lhs.true.36, %lor.lhs.false
  %24 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst46 = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst47 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst46, i32 0, i32 2
  %high48 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst47, i32 0, i32 1
  %25 = load i64, i64* %high48, align 8
  %26 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type49 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %minval50 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i32 0, i32 12
  %27 = load %union.tree_node*, %union.tree_node** %minval50, align 8
  %int_cst51 = bitcast %union.tree_node* %27 to %struct.tree_int_cst*
  %int_cst52 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst51, i32 0, i32 2
  %high53 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst52, i32 0, i32 1
  %28 = load i64, i64* %high53, align 8
  %cmp54 = icmp ult i64 %25, %28
  br i1 %cmp54, label %land.end.89, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.45
  %29 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst56 = bitcast %union.tree_node* %29 to %struct.tree_int_cst*
  %int_cst57 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst56, i32 0, i32 2
  %high58 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst57, i32 0, i32 1
  %30 = load i64, i64* %high58, align 8
  %31 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type59 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %minval60 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type59, i32 0, i32 12
  %32 = load %union.tree_node*, %union.tree_node** %minval60, align 8
  %int_cst61 = bitcast %union.tree_node* %32 to %struct.tree_int_cst*
  %int_cst62 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst61, i32 0, i32 2
  %high63 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst62, i32 0, i32 1
  %33 = load i64, i64* %high63, align 8
  %cmp64 = icmp eq i64 %30, %33
  br i1 %cmp64, label %land.lhs.true.65, label %land.rhs

land.lhs.true.65:                                 ; preds = %lor.lhs.false.55
  %34 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst66 = bitcast %union.tree_node* %34 to %struct.tree_int_cst*
  %int_cst67 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst66, i32 0, i32 2
  %low68 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst67, i32 0, i32 0
  %35 = load i64, i64* %low68, align 8
  %36 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type69 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %minval70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 12
  %37 = load %union.tree_node*, %union.tree_node** %minval70, align 8
  %int_cst71 = bitcast %union.tree_node* %37 to %struct.tree_int_cst*
  %int_cst72 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst71, i32 0, i32 2
  %low73 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst72, i32 0, i32 0
  %38 = load i64, i64* %low73, align 8
  %cmp74 = icmp ult i64 %35, %38
  br i1 %cmp74, label %land.end.89, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.65, %lor.lhs.false.55
  %39 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst75 = bitcast %union.tree_node* %39 to %struct.tree_int_cst*
  %int_cst76 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst75, i32 0, i32 2
  %high77 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst76, i32 0, i32 1
  %40 = load i64, i64* %high77, align 8
  %cmp78 = icmp slt i64 %40, 0
  br i1 %cmp78, label %land.rhs.79, label %land.end

land.rhs.79:                                      ; preds = %land.rhs
  %41 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %common80 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type81, align 8
  %common82 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %unsigned_flag83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 2
  %bf.load84 = load i32, i32* %unsigned_flag83, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 13
  %bf.clear86 = and i32 %bf.lshr85, 1
  %tobool87 = icmp ne i32 %bf.clear86, 0
  %lnot = xor i1 %tobool87, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.79, %land.rhs
  %43 = phi i1 [ false, %land.rhs ], [ %lnot, %land.rhs.79 ]
  %lnot88 = xor i1 %43, true
  br label %land.end.89

land.end.89:                                      ; preds = %land.end, %land.lhs.true.65, %land.lhs.true.45, %land.lhs.true.36, %if.then.19
  %44 = phi i1 [ false, %land.lhs.true.65 ], [ false, %land.lhs.true.45 ], [ false, %land.lhs.true.36 ], [ false, %if.then.19 ], [ %lnot88, %land.end ]
  %land.ext = zext i1 %44 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %45 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type90 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %maxval91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type90, i32 0, i32 13
  %46 = load %union.tree_node*, %union.tree_node** %maxval91, align 8
  %int_cst92 = bitcast %union.tree_node* %46 to %struct.tree_int_cst*
  %int_cst93 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst92, i32 0, i32 2
  %high94 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst93, i32 0, i32 1
  %47 = load i64, i64* %high94, align 8
  %48 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst95 = bitcast %union.tree_node* %48 to %struct.tree_int_cst*
  %int_cst96 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst95, i32 0, i32 2
  %high97 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst96, i32 0, i32 1
  %49 = load i64, i64* %high97, align 8
  %cmp98 = icmp slt i64 %47, %49
  br i1 %cmp98, label %land.end.166, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.else
  %50 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type100 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %maxval101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type100, i32 0, i32 13
  %51 = load %union.tree_node*, %union.tree_node** %maxval101, align 8
  %int_cst102 = bitcast %union.tree_node* %51 to %struct.tree_int_cst*
  %int_cst103 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst102, i32 0, i32 2
  %high104 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst103, i32 0, i32 1
  %52 = load i64, i64* %high104, align 8
  %53 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst105 = bitcast %union.tree_node* %53 to %struct.tree_int_cst*
  %int_cst106 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst105, i32 0, i32 2
  %high107 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst106, i32 0, i32 1
  %54 = load i64, i64* %high107, align 8
  %cmp108 = icmp eq i64 %52, %54
  br i1 %cmp108, label %land.lhs.true.109, label %land.lhs.true.119

land.lhs.true.109:                                ; preds = %lor.lhs.false.99
  %55 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type110 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %maxval111 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type110, i32 0, i32 13
  %56 = load %union.tree_node*, %union.tree_node** %maxval111, align 8
  %int_cst112 = bitcast %union.tree_node* %56 to %struct.tree_int_cst*
  %int_cst113 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst112, i32 0, i32 2
  %low114 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst113, i32 0, i32 0
  %57 = load i64, i64* %low114, align 8
  %58 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst115 = bitcast %union.tree_node* %58 to %struct.tree_int_cst*
  %int_cst116 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst115, i32 0, i32 2
  %low117 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst116, i32 0, i32 0
  %59 = load i64, i64* %low117, align 8
  %cmp118 = icmp ult i64 %57, %59
  br i1 %cmp118, label %land.end.166, label %land.lhs.true.119

land.lhs.true.119:                                ; preds = %land.lhs.true.109, %lor.lhs.false.99
  %60 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst120 = bitcast %union.tree_node* %60 to %struct.tree_int_cst*
  %int_cst121 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst120, i32 0, i32 2
  %high122 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst121, i32 0, i32 1
  %61 = load i64, i64* %high122, align 8
  %62 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type123 = bitcast %union.tree_node* %62 to %struct.tree_type*
  %minval124 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type123, i32 0, i32 12
  %63 = load %union.tree_node*, %union.tree_node** %minval124, align 8
  %int_cst125 = bitcast %union.tree_node* %63 to %struct.tree_int_cst*
  %int_cst126 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst125, i32 0, i32 2
  %high127 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst126, i32 0, i32 1
  %64 = load i64, i64* %high127, align 8
  %cmp128 = icmp slt i64 %61, %64
  br i1 %cmp128, label %land.end.166, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.119
  %65 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst130 = bitcast %union.tree_node* %65 to %struct.tree_int_cst*
  %int_cst131 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst130, i32 0, i32 2
  %high132 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst131, i32 0, i32 1
  %66 = load i64, i64* %high132, align 8
  %67 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type133 = bitcast %union.tree_node* %67 to %struct.tree_type*
  %minval134 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type133, i32 0, i32 12
  %68 = load %union.tree_node*, %union.tree_node** %minval134, align 8
  %int_cst135 = bitcast %union.tree_node* %68 to %struct.tree_int_cst*
  %int_cst136 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst135, i32 0, i32 2
  %high137 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst136, i32 0, i32 1
  %69 = load i64, i64* %high137, align 8
  %cmp138 = icmp eq i64 %66, %69
  br i1 %cmp138, label %land.lhs.true.139, label %land.rhs.149

land.lhs.true.139:                                ; preds = %lor.lhs.false.129
  %70 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst140 = bitcast %union.tree_node* %70 to %struct.tree_int_cst*
  %int_cst141 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst140, i32 0, i32 2
  %low142 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst141, i32 0, i32 0
  %71 = load i64, i64* %low142, align 8
  %72 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type143 = bitcast %union.tree_node* %72 to %struct.tree_type*
  %minval144 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type143, i32 0, i32 12
  %73 = load %union.tree_node*, %union.tree_node** %minval144, align 8
  %int_cst145 = bitcast %union.tree_node* %73 to %struct.tree_int_cst*
  %int_cst146 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst145, i32 0, i32 2
  %low147 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst146, i32 0, i32 0
  %74 = load i64, i64* %low147, align 8
  %cmp148 = icmp ult i64 %71, %74
  br i1 %cmp148, label %land.end.166, label %land.rhs.149

land.rhs.149:                                     ; preds = %land.lhs.true.139, %lor.lhs.false.129
  %75 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst150 = bitcast %union.tree_node* %75 to %struct.tree_int_cst*
  %int_cst151 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst150, i32 0, i32 2
  %high152 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst151, i32 0, i32 1
  %76 = load i64, i64* %high152, align 8
  %cmp153 = icmp slt i64 %76, 0
  br i1 %cmp153, label %land.rhs.154, label %land.end.163

land.rhs.154:                                     ; preds = %land.rhs.149
  %77 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %common155 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %type156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common155, i32 0, i32 1
  %78 = load %union.tree_node*, %union.tree_node** %type156, align 8
  %common157 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %unsigned_flag158 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 2
  %bf.load159 = load i32, i32* %unsigned_flag158, align 8
  %bf.lshr160 = lshr i32 %bf.load159, 13
  %bf.clear161 = and i32 %bf.lshr160, 1
  %tobool162 = icmp ne i32 %bf.clear161, 0
  br label %land.end.163

land.end.163:                                     ; preds = %land.rhs.154, %land.rhs.149
  %79 = phi i1 [ false, %land.rhs.149 ], [ %tobool162, %land.rhs.154 ]
  %lnot165 = xor i1 %79, true
  br label %land.end.166

land.end.166:                                     ; preds = %land.end.163, %land.lhs.true.139, %land.lhs.true.119, %land.lhs.true.109, %if.else
  %80 = phi i1 [ false, %land.lhs.true.139 ], [ false, %land.lhs.true.119 ], [ false, %land.lhs.true.109 ], [ false, %if.else ], [ %lnot165, %land.end.163 ]
  %land.ext167 = zext i1 %80 to i32
  store i32 %land.ext167, i32* %retval
  br label %return

if.else.168:                                      ; preds = %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true, %entry
  %81 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common169 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %code170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common169, i32 0, i32 2
  %bf.load171 = load i32, i32* %code170, align 8
  %bf.clear172 = and i32 %bf.load171, 255
  %cmp173 = icmp eq i32 %bf.clear172, 6
  br i1 %cmp173, label %land.lhs.true.174, label %if.else.181

land.lhs.true.174:                                ; preds = %if.else.168
  %82 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common175 = bitcast %union.tree_node* %82 to %struct.tree_common*
  %type176 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common175, i32 0, i32 1
  %83 = load %union.tree_node*, %union.tree_node** %type176, align 8
  %cmp177 = icmp ne %union.tree_node* %83, null
  br i1 %cmp177, label %if.then.178, label %if.else.181

if.then.178:                                      ; preds = %land.lhs.true.174
  %84 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %85 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common179 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %type180 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common179, i32 0, i32 1
  %86 = load %union.tree_node*, %union.tree_node** %type180, align 8
  %call = call i32 @int_fits_type_p(%union.tree_node* %84, %union.tree_node* %86)
  store i32 %call, i32* %retval
  br label %return

if.else.181:                                      ; preds = %land.lhs.true.174, %if.else.168
  %87 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %call182 = call %union.tree_node* @copy_node(%union.tree_node* %87)
  store %union.tree_node* %call182, %union.tree_node** %c.addr, align 8
  %88 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %89 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %common183 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %type184 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common183, i32 0, i32 1
  store %union.tree_node* %88, %union.tree_node** %type184, align 8
  %90 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %call185 = call i32 @force_fit_type(%union.tree_node* %90, i32 0)
  %tobool186 = icmp ne i32 %call185, 0
  %lnot187 = xor i1 %tobool186, true
  %lnot.ext = zext i1 %lnot187 to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.else.181, %if.then.178, %land.end.166, %land.end.89
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_containing_scope(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 116
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type = bitcast %union.tree_node* %2 to %struct.tree_type*
  %context = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 17
  %3 = load %union.tree_node*, %union.tree_node** %context, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %context2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 9
  %5 = load %union.tree_node*, %union.tree_node** %context2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %3, %cond.true ], [ %5, %cond.false ]
  ret %union.tree_node* %cond
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @decl_type_context(%union.tree_node* %decl) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %context = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %context2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 9
  %1 = load %union.tree_node*, %union.tree_node** %context2, align 8
  store %union.tree_node* %1, %union.tree_node** %context, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %entry
  %2 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 20
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 21
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common9 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 22
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %while.body
  %6 = load %union.tree_node*, %union.tree_node** %context, align 8
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %7 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common14 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %code15, align 8
  %bf.clear17 = and i32 %bf.load16, 255
  %cmp18 = icmp eq i32 %bf.clear17, 33
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common20 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 30
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %lor.lhs.false.19, %if.end
  %9 = load %union.tree_node*, %union.tree_node** %context, align 8
  %decl26 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %context27 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 9
  %10 = load %union.tree_node*, %union.tree_node** %context27, align 8
  store %union.tree_node* %10, %union.tree_node** %context, align 8
  br label %if.end.36

if.else:                                          ; preds = %lor.lhs.false.19
  %11 = load %union.tree_node*, %union.tree_node** %context, align 8
  %common28 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %code29, align 8
  %bf.clear31 = and i32 %bf.load30, 255
  %cmp32 = icmp eq i32 %bf.clear31, 4
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else
  %12 = load %union.tree_node*, %union.tree_node** %context, align 8
  %block = bitcast %union.tree_node* %12 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 4
  %13 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  store %union.tree_node* %13, %union.tree_node** %context, align 8
  br label %if.end.35

if.else.34:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 4430, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.decl_type_context, i32 0, i32 0)) #6
  unreachable

if.end.35:                                        ; preds = %if.then.33
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %14 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %14
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_callee_fndecl(%union.tree_node* %call) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %call.addr = alloca %union.tree_node*, align 8
  %addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %call, %union.tree_node** %call.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %call.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 4448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.get_callee_fndecl, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %call.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %2, %union.tree_node** %addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 115
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common6 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 114
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common12 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 116
  br i1 %cmp16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.11, %lor.lhs.false, %while.cond
  %6 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %exp17 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp20 = icmp ne %union.tree_node* %7, %8
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common21 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type22 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load23 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load23, 9
  %bf.clear24 = and i32 %bf.lshr, 127
  %11 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %exp25 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands26 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp25, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands26, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8
  %common28 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %type30 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %mode31 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 6
  %bf.load32 = load i32, i32* %mode31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 9
  %bf.clear34 = and i32 %bf.lshr33, 127
  %cmp35 = icmp eq i32 %bf.clear24, %bf.clear34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.11
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.11 ], [ %cmp35, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %exp36 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 0
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  store %union.tree_node* %16, %union.tree_node** %addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common39 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %idxprom = sext i32 %bf.clear42 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx43, align 1
  %conv = sext i8 %18 to i32
  %cmp44 = icmp eq i32 %conv, 100
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.69

land.lhs.true.46:                                 ; preds = %while.end
  %19 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common47 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load49 = load i32, i32* %code48, align 8
  %bf.clear50 = and i32 %bf.load49, 255
  %cmp51 = icmp ne i32 %bf.clear50, 30
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.69

land.lhs.true.53:                                 ; preds = %land.lhs.true.46
  %20 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common54 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load55 = load i32, i32* %readonly_flag, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 12
  %bf.clear57 = and i32 %bf.lshr56, 1
  %tobool = icmp ne i32 %bf.clear57, 0
  br i1 %tobool, label %land.lhs.true.58, label %if.end.69

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %21 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common59 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load60 = load i32, i32* %volatile_flag, align 8
  %bf.lshr61 = lshr i32 %bf.load60, 11
  %bf.clear62 = and i32 %bf.lshr61, 1
  %tobool63 = icmp ne i32 %bf.clear62, 0
  br i1 %tobool63, label %if.end.69, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %land.lhs.true.58
  %22 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %decl = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %23 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool65 = icmp ne %union.tree_node* %23, null
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true.64
  %24 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %decl67 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %initial68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 12
  %25 = load %union.tree_node*, %union.tree_node** %initial68, align 8
  store %union.tree_node* %25, %union.tree_node** %addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.64, %land.lhs.true.58, %land.lhs.true.53, %land.lhs.true.46, %while.end
  %26 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %common70 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load72 = load i32, i32* %code71, align 8
  %bf.clear73 = and i32 %bf.load72, 255
  %cmp74 = icmp eq i32 %bf.clear73, 121
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.90

land.lhs.true.76:                                 ; preds = %if.end.69
  %27 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %exp77 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands78 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp77, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands78, i32 0, i64 0
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx79, align 8
  %common80 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %cmp84 = icmp eq i32 %bf.clear83, 30
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %land.lhs.true.76
  %29 = load %union.tree_node*, %union.tree_node** %addr, align 8
  %exp87 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands88 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp87, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands88, i32 0, i64 0
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx89, align 8
  store %union.tree_node* %30, %union.tree_node** %retval
  br label %return

if.end.90:                                        ; preds = %land.lhs.true.76, %if.end.69
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.86
  %31 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %31
}

; Function Attrs: nounwind uwtable
define void @print_obstack_statistics(i8* %str, %struct.obstack* %o) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %o.addr = alloca %struct.obstack*, align 8
  %chunk = alloca %struct._obstack_chunk*, align 8
  %n_chunks = alloca i32, align 4
  %n_alloc = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.obstack* %o, %struct.obstack** %o.addr, align 8
  %0 = load %struct.obstack*, %struct.obstack** %o.addr, align 8
  %chunk1 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i32 0, i32 1
  %1 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk1, align 8
  store %struct._obstack_chunk* %1, %struct._obstack_chunk** %chunk, align 8
  store i32 1, i32* %n_chunks, align 4
  store i32 0, i32* %n_alloc, align 4
  %2 = load %struct.obstack*, %struct.obstack** %o.addr, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 3
  %3 = load i8*, i8** %next_free, align 8
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %contents = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %contents, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load i32, i32* %n_alloc, align 4
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %conv, %sub.ptr.sub
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %n_alloc, align 4
  %6 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %prev = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i32 0, i32 1
  %7 = load %struct._obstack_chunk*, %struct._obstack_chunk** %prev, align 8
  store %struct._obstack_chunk* %7, %struct._obstack_chunk** %chunk, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %tobool = icmp ne %struct._obstack_chunk* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %n_chunks, align 4
  %add3 = add nsw i32 %9, 1
  store i32 %add3, i32* %n_chunks, align 4
  %10 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %limit = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %10, i32 0, i32 0
  %11 = load i8*, i8** %limit, align 8
  %12 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %contents4 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %contents4, i32 0, i64 0
  %sub.ptr.lhs.cast5 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %arrayidx to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %13 = load i32, i32* %n_alloc, align 4
  %conv8 = sext i32 %13 to i64
  %add9 = add nsw i64 %conv8, %sub.ptr.sub7
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, i32* %n_alloc, align 4
  %14 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %prev11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %14, i32 0, i32 1
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %prev11, align 8
  store %struct._obstack_chunk* %15, %struct._obstack_chunk** %chunk, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %str.addr, align 8
  %18 = load i32, i32* %n_alloc, align 4
  %19 = load i32, i32* %n_chunks, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i32 0, i32 0), i8* %17, i32 %18, i32 %19)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @dump_tree_statistics() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.163, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.164, i32 0, i32 0))
  call void @print_obstack_statistics(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i32 0, i32 0), %struct.obstack* @permanent_obstack)
  call void @print_type_hash_statistics()
  %2 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 13), align 8
  call void %2()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_type_hash_statistics() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %call = call i64 @htab_size(%struct.htab* %1)
  %2 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %call1 = call i64 @htab_elements(%struct.htab* %2)
  %3 = load %struct.htab*, %struct.htab** @type_hash_table, align 8
  %call2 = call double @htab_collisions(%struct.htab* %3)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.170, i32 0, i32 0), i64 %call, i64 %call1, double %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clean_symbol_name(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and2 = and i32 %conv1, 140
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv4, 46
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %p.addr, align 8
  store i8 95, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_file_function_name_long(i8* %type) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %name = alloca i8*, align 8
  %file = alloca i8*, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8*, i8** @first_global_object_name, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @first_global_object_name, align 8
  store i8* %1, i8** %p, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** @weak_global_object_name, align 8
  store i8* %2, i8** %name, align 8
  %3 = load i8*, i8** @main_input_filename, align 8
  store i8* %3, i8** %file, align 8
  %4 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.166, i32 0, i32 0), i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %5 = load i8*, i8** %file, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** @input_filename, align 8
  store i8* %6, i8** %file, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %7 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %7) #7
  %add = add i64 7, %call
  %8 = load i8*, i8** %file, align 8
  %call6 = call i64 @strlen(i8* %8) #7
  %add7 = add i64 %add, %call6
  %9 = alloca i8, i64 %add7
  store i8* %9, i8** %q, align 8
  %10 = load i8*, i8** %q, align 8
  %11 = load i8*, i8** %name, align 8
  %12 = load i8*, i8** %file, align 8
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i32 0, i32 0), i8* %11, i8* %12) #3
  %13 = load i8*, i8** %q, align 8
  call void @append_random_chars(i8* %13)
  %14 = load i8*, i8** %q, align 8
  store i8* %14, i8** %p, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.5, %if.then
  %15 = load i8*, i8** %p, align 8
  %call10 = call i64 @strlen(i8* %15) #7
  %add11 = add i64 15, %call10
  %16 = load i8*, i8** %type.addr, align 8
  %call12 = call i64 @strlen(i8* %16) #7
  %add13 = add i64 %add11, %call12
  %17 = alloca i8, i64 %add13
  store i8* %17, i8** %buf, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i8*, i8** %type.addr, align 8
  %20 = load i8*, i8** %p, align 8
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i8* %19, i8* %20) #3
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** @first_global_object_name, align 8
  %cmp = icmp ne i8* %21, %22
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  %23 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 11
  call void @clean_symbol_name(i8* %add.ptr)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.9
  %24 = load i8*, i8** %buf, align 8
  %call17 = call %union.tree_node* @get_identifier(i8* %24)
  ret %union.tree_node* %call17
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal void @append_random_chars(i8* %template) #0 {
entry:
  %template.addr = alloca i8*, align 8
  %v = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  store i8* %template, i8** %template.addr, align 8
  %0 = load i64, i64* @append_random_chars.value, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @main_input_filename, align 8
  %call = call i32 @stat(i8* %1, %struct.stat* %st) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i64 1, i64* @append_random_chars.value, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 0
  %2 = load i64, i64* %st_dev, align 8
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1
  %3 = load i64, i64* %st_ino, align 8
  %xor = xor i64 %2, %3
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %xor2 = xor i64 %xor, %4
  store i64 %xor2, i64* @append_random_chars.value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load i8*, i8** %template.addr, align 8
  %call4 = call i64 @strlen(i8* %5) #7
  %6 = load i8*, i8** %template.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call4
  store i8* %add.ptr, i8** %template.addr, align 8
  %7 = load i64, i64* @append_random_chars.value, align 8
  store i64 %7, i64* %v, align 8
  %8 = load i64, i64* %v, align 8
  %rem = urem i64 %8, 62
  %arrayidx = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i8*, i8** %template.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %arrayidx5, align 1
  %11 = load i64, i64* %v, align 8
  %div = udiv i64 %11, 62
  store i64 %div, i64* %v, align 8
  %12 = load i64, i64* %v, align 8
  %rem6 = urem i64 %12, 62
  %arrayidx7 = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem6
  %13 = load i8, i8* %arrayidx7, align 1
  %14 = load i8*, i8** %template.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %13, i8* %arrayidx8, align 1
  %15 = load i64, i64* %v, align 8
  %div9 = udiv i64 %15, 62
  store i64 %div9, i64* %v, align 8
  %16 = load i64, i64* %v, align 8
  %rem10 = urem i64 %16, 62
  %arrayidx11 = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem10
  %17 = load i8, i8* %arrayidx11, align 1
  %18 = load i8*, i8** %template.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %17, i8* %arrayidx12, align 1
  %19 = load i64, i64* %v, align 8
  %div13 = udiv i64 %19, 62
  store i64 %div13, i64* %v, align 8
  %20 = load i64, i64* %v, align 8
  %rem14 = urem i64 %20, 62
  %arrayidx15 = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem14
  %21 = load i8, i8* %arrayidx15, align 1
  %22 = load i8*, i8** %template.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %21, i8* %arrayidx16, align 1
  %23 = load i64, i64* %v, align 8
  %div17 = udiv i64 %23, 62
  store i64 %div17, i64* %v, align 8
  %24 = load i64, i64* %v, align 8
  %rem18 = urem i64 %24, 62
  %arrayidx19 = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem18
  %25 = load i8, i8* %arrayidx19, align 1
  %26 = load i8*, i8** %template.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 4
  store i8 %25, i8* %arrayidx20, align 1
  %27 = load i64, i64* %v, align 8
  %div21 = udiv i64 %27, 62
  store i64 %div21, i64* %v, align 8
  %28 = load i64, i64* %v, align 8
  %rem22 = urem i64 %28, 62
  %arrayidx23 = getelementptr inbounds [63 x i8], [63 x i8]* @append_random_chars.letters, i32 0, i64 %rem22
  %29 = load i8, i8* %arrayidx23, align 1
  %30 = load i8*, i8** %template.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 5
  store i8 %29, i8* %arrayidx24, align 1
  %31 = load i8*, i8** %template.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %31, i64 6
  store i8 0, i8* %arrayidx25, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_file_function_name(i32 %kind) #0 {
entry:
  %kind.addr = alloca i32, align 4
  %p = alloca [2 x i8], align 1
  store i32 %kind, i32* %kind.addr, align 4
  %0 = load i32, i32* %kind.addr, align 4
  %conv = trunc i32 %0 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %p, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %p, i32 0, i64 1
  store i8 0, i8* %arrayidx1, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %p, i32 0, i32 0
  %call = call %union.tree_node* @get_file_function_name_long(i8* %arraydecay)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_set_constructor_bits(%union.tree_node* %init, i8* %buffer, i32 %bit_size) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %init.addr = alloca %union.tree_node*, align 8
  %buffer.addr = alloca i8*, align 8
  %bit_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vals = alloca %union.tree_node*, align 8
  %domain_min = alloca i64, align 8
  %non_const_bits = alloca %union.tree_node*, align 8
  %lo_index = alloca i64, align 8
  %hi_index = alloca i64, align 8
  %index = alloca i64, align 8
  store %union.tree_node* %init, %union.tree_node** %init.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bit_size, i32* %bit_size.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %init.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 12
  %3 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %call = call i64 @tree_low_cst(%union.tree_node* %3, i32 0)
  store i64 %call, i64* %domain_min, align 8
  store %union.tree_node* null, %union.tree_node** %non_const_bits, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %bit_size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %union.tree_node*, %union.tree_node** %init.addr, align 8
  %exp = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8
  store %union.tree_node* %10, %union.tree_node** %vals, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.66, %for.end
  %11 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %cmp5 = icmp ne %union.tree_node* %11, null
  br i1 %cmp5, label %for.body.6, label %for.end.68

for.body.6:                                       ; preds = %for.cond.4
  %12 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list = bitcast %union.tree_node* %12 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %13 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call7 = call i32 @host_integerp(%union.tree_node* %13, i32 0)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.6
  %14 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list8 = bitcast %union.tree_node* %14 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp9 = icmp ne %union.tree_node* %15, null
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list10 = bitcast %union.tree_node* %16 to %struct.tree_list*
  %purpose11 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list10, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %purpose11, align 8
  %call12 = call i32 @host_integerp(%union.tree_node* %17, i32 0)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true, %for.body.6
  %18 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list14 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %purpose15 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list14, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %purpose15, align 8
  %20 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list16 = bitcast %union.tree_node* %20 to %struct.tree_list*
  %value17 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list16, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %value17, align 8
  %22 = load %union.tree_node*, %union.tree_node** %non_const_bits, align 8
  %call18 = call %union.tree_node* @tree_cons(%union.tree_node* %19, %union.tree_node* %21, %union.tree_node* %22)
  store %union.tree_node* %call18, %union.tree_node** %non_const_bits, align 8
  br label %if.end.65

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %23 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list19 = bitcast %union.tree_node* %23 to %struct.tree_list*
  %purpose20 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list19, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %purpose20, align 8
  %cmp21 = icmp ne %union.tree_node* %24, null
  br i1 %cmp21, label %if.then.22, label %if.else.50

if.then.22:                                       ; preds = %if.else
  %25 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list23 = bitcast %union.tree_node* %25 to %struct.tree_list*
  %purpose24 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list23, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %purpose24, align 8
  %call25 = call i64 @tree_low_cst(%union.tree_node* %26, i32 0)
  %27 = load i64, i64* %domain_min, align 8
  %sub = sub nsw i64 %call25, %27
  store i64 %sub, i64* %lo_index, align 8
  %28 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list26 = bitcast %union.tree_node* %28 to %struct.tree_list*
  %value27 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list26, i32 0, i32 2
  %29 = load %union.tree_node*, %union.tree_node** %value27, align 8
  %call28 = call i64 @tree_low_cst(%union.tree_node* %29, i32 0)
  %30 = load i64, i64* %domain_min, align 8
  %sub29 = sub nsw i64 %call28, %30
  store i64 %sub29, i64* %hi_index, align 8
  %31 = load i64, i64* %lo_index, align 8
  %cmp30 = icmp slt i64 %31, 0
  br i1 %cmp30, label %if.then.41, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.22
  %32 = load i64, i64* %lo_index, align 8
  %33 = load i32, i32* %bit_size.addr, align 4
  %conv = sext i32 %33 to i64
  %cmp32 = icmp sge i64 %32, %conv
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.31
  %34 = load i64, i64* %hi_index, align 8
  %cmp35 = icmp slt i64 %34, 0
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %35 = load i64, i64* %hi_index, align 8
  %36 = load i32, i32* %bit_size.addr, align 4
  %conv38 = sext i32 %36 to i64
  %cmp39 = icmp sge i64 %35, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.34, %lor.lhs.false.31, %if.then.22
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 4718, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.get_set_constructor_bits, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.37
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.47, %if.end
  %37 = load i64, i64* %lo_index, align 8
  %38 = load i64, i64* %hi_index, align 8
  %cmp43 = icmp sle i64 %37, %38
  br i1 %cmp43, label %for.body.45, label %for.end.49

for.body.45:                                      ; preds = %for.cond.42
  %39 = load i64, i64* %lo_index, align 8
  %40 = load i8*, i8** %buffer.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 1, i8* %arrayidx46, align 1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.45
  %41 = load i64, i64* %lo_index, align 8
  %inc48 = add nsw i64 %41, 1
  store i64 %inc48, i64* %lo_index, align 8
  br label %for.cond.42

for.end.49:                                       ; preds = %for.cond.42
  br label %if.end.64

if.else.50:                                       ; preds = %if.else
  %42 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %list51 = bitcast %union.tree_node* %42 to %struct.tree_list*
  %value52 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list51, i32 0, i32 2
  %43 = load %union.tree_node*, %union.tree_node** %value52, align 8
  %call53 = call i64 @tree_low_cst(%union.tree_node* %43, i32 0)
  %44 = load i64, i64* %domain_min, align 8
  %sub54 = sub nsw i64 %call53, %44
  store i64 %sub54, i64* %index, align 8
  %45 = load i64, i64* %index, align 8
  %cmp55 = icmp slt i64 %45, 0
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.else.50
  %46 = load i64, i64* %index, align 8
  %47 = load i32, i32* %bit_size.addr, align 4
  %conv58 = sext i32 %47 to i64
  %cmp59 = icmp sge i64 %46, %conv58
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.else.50
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.169, i32 0, i32 0))
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.62:                                        ; preds = %lor.lhs.false.57
  %48 = load i64, i64* %index, align 8
  %49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8 1, i8* %arrayidx63, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %for.end.49
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %50 = load %union.tree_node*, %union.tree_node** %vals, align 8
  %common67 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 0
  %51 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %51, %union.tree_node** %vals, align 8
  br label %for.cond.4

for.end.68:                                       ; preds = %for.cond.4
  %52 = load %union.tree_node*, %union.tree_node** %non_const_bits, align 8
  store %union.tree_node* %52, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %for.end.68, %if.then.61
  %53 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %53
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_set_constructor_bytes(%union.tree_node* %init, i8* %buffer, i32 %wd_size) #0 {
entry:
  %init.addr = alloca %union.tree_node*, align 8
  %buffer.addr = alloca i8*, align 8
  %wd_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %set_word_size = alloca i32, align 4
  %bit_size = alloca i32, align 4
  %bit_pos = alloca i32, align 4
  %bytep = alloca i8*, align 8
  %bit_buffer = alloca i8*, align 8
  %non_const_bits = alloca %union.tree_node*, align 8
  store %union.tree_node* %init, %union.tree_node** %init.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %wd_size, i32* %wd_size.addr, align 4
  store i32 8, i32* %set_word_size, align 4
  %0 = load i32, i32* %wd_size.addr, align 4
  %1 = load i32, i32* %set_word_size, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %bit_size, align 4
  store i32 0, i32* %bit_pos, align 4
  %2 = load i8*, i8** %buffer.addr, align 8
  store i8* %2, i8** %bytep, align 8
  %3 = load i32, i32* %bit_size, align 4
  %conv = sext i32 %3 to i64
  %4 = alloca i8, i64 %conv
  store i8* %4, i8** %bit_buffer, align 8
  %5 = load %union.tree_node*, %union.tree_node** %init.addr, align 8
  %6 = load i8*, i8** %bit_buffer, align 8
  %7 = load i32, i32* %bit_size, align 4
  %call = call %union.tree_node* @get_set_constructor_bits(%union.tree_node* %5, i8* %6, i32 %7)
  store %union.tree_node* %call, %union.tree_node** %non_const_bits, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %wd_size.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.15, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %bit_size, align 4
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body.5, label %for.end.17

for.body.5:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load i8*, i8** %bit_buffer, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 %idxprom6
  %17 = load i8, i8* %arrayidx7, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %18 = load i32, i32* %bit_pos, align 4
  %shl = shl i32 1, %18
  %19 = load i8*, i8** %bytep, align 8
  %20 = load i8, i8* %19, align 1
  %conv8 = zext i8 %20 to i32
  %or = or i32 %conv8, %shl
  %conv9 = trunc i32 %or to i8
  store i8 %conv9, i8* %19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %21 = load i32, i32* %bit_pos, align 4
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, i32* %bit_pos, align 4
  %22 = load i32, i32* %bit_pos, align 4
  %23 = load i32, i32* %set_word_size, align 4
  %cmp11 = icmp sge i32 %22, %23
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  store i32 0, i32* %bit_pos, align 4
  %24 = load i8*, i8** %bytep, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %bytep, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %25, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.2

for.end.17:                                       ; preds = %for.cond.2
  %26 = load %union.tree_node*, %union.tree_node** %non_const_bits, align 8
  ret %union.tree_node* %26
}

; Function Attrs: nounwind uwtable
define void @build_common_tree_nodes(i32 %signed_char) #0 {
entry:
  %signed_char.addr = alloca i32, align 4
  store i32 %signed_char, i32* %signed_char.addr, align 4
  %call = call %union.tree_node* @make_node(i32 0)
  store %union.tree_node* %call, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %type, align 8
  call void @initialize_sizetypes()
  %call1 = call %union.tree_node* @make_signed_type(i32 8)
  store %union.tree_node* %call1, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 1), align 8
  %call2 = call %union.tree_node* @make_unsigned_type(i32 8)
  store %union.tree_node* %call2, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %2 = load i32, i32* %signed_char.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call3 = call %union.tree_node* @make_signed_type(i32 8)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call %union.tree_node* @make_unsigned_type(i32 8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %call3, %cond.true ], [ %call4, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %call5 = call %union.tree_node* @make_signed_type(i32 16)
  store %union.tree_node* %call5, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 3), align 8
  %call6 = call %union.tree_node* @make_unsigned_type(i32 16)
  store %union.tree_node* %call6, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 4), align 8
  %call7 = call %union.tree_node* @make_signed_type(i32 32)
  store %union.tree_node* %call7, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %call8 = call %union.tree_node* @make_unsigned_type(i32 32)
  store %union.tree_node* %call8, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool9 = icmp ne i32 %and, 0
  %cond10 = select i1 %tobool9, i32 64, i32 32
  %call11 = call %union.tree_node* @make_signed_type(i32 %cond10)
  store %union.tree_node* %call11, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  %4 = load i32, i32* @target_flags, align 4
  %and12 = and i32 %4, 33554432
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 64, i32 32
  %call15 = call %union.tree_node* @make_unsigned_type(i32 %cond14)
  store %union.tree_node* %call15, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 8), align 8
  %call16 = call %union.tree_node* @make_signed_type(i32 64)
  store %union.tree_node* %call16, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  %call17 = call %union.tree_node* @make_unsigned_type(i32 64)
  store %union.tree_node* %call17, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  %5 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 2), align 2
  %conv = zext i16 %5 to i32
  %call18 = call %union.tree_node* @make_signed_type(i32 %conv)
  store %union.tree_node* %call18, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 1), align 8
  %6 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 3), align 2
  %conv19 = zext i16 %6 to i32
  %call20 = call %union.tree_node* @make_signed_type(i32 %conv19)
  store %union.tree_node* %call20, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 2), align 8
  %7 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 4), align 2
  %conv21 = zext i16 %7 to i32
  %call22 = call %union.tree_node* @make_signed_type(i32 %conv21)
  store %union.tree_node* %call22, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 3), align 8
  %8 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 5), align 2
  %conv23 = zext i16 %8 to i32
  %call24 = call %union.tree_node* @make_signed_type(i32 %conv23)
  store %union.tree_node* %call24, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 4), align 8
  %9 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 6), align 2
  %conv25 = zext i16 %9 to i32
  %call26 = call %union.tree_node* @make_signed_type(i32 %conv25)
  store %union.tree_node* %call26, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 5), align 8
  %10 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 2), align 2
  %conv27 = zext i16 %10 to i32
  %call28 = call %union.tree_node* @make_unsigned_type(i32 %conv27)
  store %union.tree_node* %call28, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 6), align 8
  %11 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 3), align 2
  %conv29 = zext i16 %11 to i32
  %call30 = call %union.tree_node* @make_unsigned_type(i32 %conv29)
  store %union.tree_node* %call30, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 7), align 8
  %12 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 4), align 2
  %conv31 = zext i16 %12 to i32
  %call32 = call %union.tree_node* @make_unsigned_type(i32 %conv31)
  store %union.tree_node* %call32, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 8), align 8
  %13 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 5), align 2
  %conv33 = zext i16 %13 to i32
  %call34 = call %union.tree_node* @make_unsigned_type(i32 %conv33)
  store %union.tree_node* %call34, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 9), align 8
  %14 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 6), align 2
  %conv35 = zext i16 %14 to i32
  %call36 = call %union.tree_node* @make_unsigned_type(i32 %conv35)
  store %union.tree_node* %call36, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 10), align 8
  ret void
}

declare void @initialize_sizetypes() #2

declare %union.tree_node* @make_signed_type(i32) #2

declare %union.tree_node* @make_unsigned_type(i32) #2

; Function Attrs: nounwind uwtable
define void @build_common_tree_nodes_2(i32 %short_double) #0 {
entry:
  %short_double.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store i32 %short_double, i32* %short_double.addr, align 4
  %call = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  store %union.tree_node* %call, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call1 = call %union.tree_node* @build_int_2_wide(i64 1, i64 0)
  store %union.tree_node* %call1, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  %call2 = call %union.tree_node* @build_int_2_wide(i64 -1, i64 -1)
  store %union.tree_node* %call2, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 13), align 8
  %call3 = call %union.tree_node* @size_int_wide(i64 0, i32 0)
  store %union.tree_node* %call3, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  %call4 = call %union.tree_node* @size_int_wide(i64 1, i32 0)
  store %union.tree_node* %call4, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 16), align 8
  %call5 = call %union.tree_node* @size_int_wide(i64 0, i32 3)
  store %union.tree_node* %call5, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 17), align 8
  %call6 = call %union.tree_node* @size_int_wide(i64 1, i32 3)
  store %union.tree_node* %call6, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 18), align 8
  %call7 = call %union.tree_node* @size_int_wide(i64 8, i32 3)
  store %union.tree_node* %call7, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call8 = call %union.tree_node* @make_node(i32 5)
  store %union.tree_node* %call8, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  call void @layout_type(%union.tree_node* %0)
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %type = bitcast %union.tree_node* %1 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 7
  store i32 8, i32* %align, align 4
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %type9 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 6
  %bf.load = load i32, i32* %user_align, align 4
  %bf.clear = and i32 %bf.load, 2147483647
  store i32 %bf.clear, i32* %user_align, align 4
  %call10 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  store %union.tree_node* %call10, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call11 = call %union.tree_node* @build_pointer_type(%union.tree_node* %3)
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %call11, %union.tree_node** %type12, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %common13 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type14, align 8
  call void @layout_type(%union.tree_node* %6)
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call15 = call %union.tree_node* @build_pointer_type(%union.tree_node* %7)
  store %union.tree_node* %call15, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 28), align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call16 = call %union.tree_node* @build_qualified_type(%union.tree_node* %8, i32 1)
  %call17 = call %union.tree_node* @build_pointer_type(%union.tree_node* %call16)
  store %union.tree_node* %call17, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 29), align 8
  %call18 = call %union.tree_node* @make_node(i32 7)
  store %union.tree_node* %call18, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %type19 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load20 = load i32, i32* %precision, align 4
  %bf.clear21 = and i32 %bf.load20, -512
  %bf.set = or i32 %bf.clear21, 32
  store i32 %bf.set, i32* %precision, align 4
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  call void @layout_type(%union.tree_node* %10)
  %call22 = call %union.tree_node* @make_node(i32 7)
  store %union.tree_node* %call22, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  %11 = load i32, i32* %short_double.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  %type23 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %precision24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 6
  %bf.load25 = load i32, i32* %precision24, align 4
  %bf.clear26 = and i32 %bf.load25, -512
  %bf.set27 = or i32 %bf.clear26, 32
  store i32 %bf.set27, i32* %precision24, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  %type28 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %precision29 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 6
  %bf.load30 = load i32, i32* %precision29, align 4
  %bf.clear31 = and i32 %bf.load30, -512
  %bf.set32 = or i32 %bf.clear31, 64
  store i32 %bf.set32, i32* %precision29, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  call void @layout_type(%union.tree_node* %14)
  %call33 = call %union.tree_node* @make_node(i32 7)
  store %union.tree_node* %call33, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 26), align 8
  %15 = load i32, i32* @target_flags, align 4
  %and = and i32 %15, 16777216
  %tobool34 = icmp ne i32 %and, 0
  %cond = select i1 %tobool34, i32 128, i32 96
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 26), align 8
  %type35 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %precision36 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i32 0, i32 6
  %bf.load37 = load i32, i32* %precision36, align 4
  %bf.value = and i32 %cond, 511
  %bf.clear38 = and i32 %bf.load37, -512
  %bf.set39 = or i32 %bf.clear38, %bf.value
  store i32 %bf.set39, i32* %precision36, align 4
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 26), align 8
  call void @layout_type(%union.tree_node* %17)
  %call40 = call %union.tree_node* @make_node(i32 8)
  store %union.tree_node* %call40, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 20), align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 20), align 8
  %common41 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 1
  store %union.tree_node* %18, %union.tree_node** %type42, align 8
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 20), align 8
  call void @layout_type(%union.tree_node* %20)
  %call43 = call %union.tree_node* @make_node(i32 8)
  store %union.tree_node* %call43, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 21), align 8
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 21), align 8
  %common44 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 1
  store %union.tree_node* %21, %union.tree_node** %type45, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 21), align 8
  call void @layout_type(%union.tree_node* %23)
  %call46 = call %union.tree_node* @make_node(i32 8)
  store %union.tree_node* %call46, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 22), align 8
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 22), align 8
  %common47 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 1
  store %union.tree_node* %24, %union.tree_node** %type48, align 8
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 22), align 8
  call void @layout_type(%union.tree_node* %26)
  %call49 = call %union.tree_node* @make_node(i32 8)
  store %union.tree_node* %call49, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 23), align 8
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 26), align 8
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 23), align 8
  %common50 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %type51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 1
  store %union.tree_node* %27, %union.tree_node** %type51, align 8
  %29 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 23), align 8
  call void @layout_type(%union.tree_node* %29)
  %call52 = call %union.tree_node* @ix86_build_va_list()
  store %union.tree_node* %call52, %union.tree_node** %t, align 8
  %30 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common53 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 2
  %bf.load54 = load i32, i32* %code, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp = icmp ne i32 %bf.clear55, 20
  br i1 %cmp, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end
  %31 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call57 = call %union.tree_node* @build_type_copy(%union.tree_node* %31)
  store %union.tree_node* %call57, %union.tree_node** %t, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %32, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 31), align 8
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 8), align 8
  %call59 = call %union.tree_node* @make_vector(i32 37, %union.tree_node* %33, i32 1)
  store %union.tree_node* %call59, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 34), align 8
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 8), align 8
  %call60 = call %union.tree_node* @make_vector(i32 33, %union.tree_node* %34, i32 1)
  store %union.tree_node* %call60, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 38), align 8
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 7), align 8
  %call61 = call %union.tree_node* @make_vector(i32 36, %union.tree_node* %35, i32 1)
  store %union.tree_node* %call61, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 37), align 8
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 6), align 8
  %call62 = call %union.tree_node* @make_vector(i32 39, %union.tree_node* %36, i32 1)
  store %union.tree_node* %call62, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 36), align 8
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 7), align 8
  %call63 = call %union.tree_node* @make_vector(i32 40, %union.tree_node* %37, i32 1)
  store %union.tree_node* %call63, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 35), align 8
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 6), align 8
  %call64 = call %union.tree_node* @make_vector(i32 43, %union.tree_node* %38, i32 1)
  store %union.tree_node* %call64, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 40), align 8
  %39 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %call65 = call %union.tree_node* @make_vector(i32 50, %union.tree_node* %39, i32 0)
  store %union.tree_node* %call65, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 42), align 8
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %call66 = call %union.tree_node* @make_vector(i32 46, %union.tree_node* %40, i32 0)
  store %union.tree_node* %call66, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 41), align 8
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 3), align 8
  %call67 = call %union.tree_node* @make_vector(i32 37, %union.tree_node* %41, i32 0)
  store %union.tree_node* %call67, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 43), align 8
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 3), align 8
  %call68 = call %union.tree_node* @make_vector(i32 33, %union.tree_node* %42, i32 0)
  store %union.tree_node* %call68, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 47), align 8
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 2), align 8
  %call69 = call %union.tree_node* @make_vector(i32 36, %union.tree_node* %43, i32 0)
  store %union.tree_node* %call69, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 46), align 8
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 1), align 8
  %call70 = call %union.tree_node* @make_vector(i32 39, %union.tree_node* %44, i32 0)
  store %union.tree_node* %call70, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 45), align 8
  %45 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 2), align 8
  %call71 = call %union.tree_node* @make_vector(i32 40, %union.tree_node* %45, i32 0)
  store %union.tree_node* %call71, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 44), align 8
  %46 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %call72 = call %union.tree_node* @make_vector(i32 44, %union.tree_node* %46, i32 0)
  store %union.tree_node* %call72, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 48), align 8
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 1), align 8
  %call73 = call %union.tree_node* @make_vector(i32 43, %union.tree_node* %47, i32 0)
  store %union.tree_node* %call73, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 49), align 8
  ret void
}

declare %union.tree_node* @size_int_wide(i64, i32) #2

declare %union.tree_node* @ix86_build_va_list() #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @make_vector(i32 %mode, %union.tree_node* %innertype, i32 %unsignedp) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %innertype.addr = alloca %union.tree_node*, align 8
  %unsignedp.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %union.tree_node* %innertype, %union.tree_node** %innertype.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %call = call %union.tree_node* @make_node(i32 9)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %innertype.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %0, %union.tree_node** %type, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type1 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %mode2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %mode2, align 4
  %bf.value = and i32 %2, 127
  %bf.shl = shl i32 %bf.value, 9
  %bf.clear = and i32 %bf.load, -65025
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %mode2, align 4
  %4 = load i32, i32* %unsignedp.addr, align 4
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type4, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load6 = load i32, i32* %unsigned_flag, align 8
  %bf.value7 = and i32 %4, 1
  %bf.shl8 = shl i32 %bf.value7, 13
  %bf.clear9 = and i32 %bf.load6, -8193
  %bf.set10 = or i32 %bf.clear9, %bf.shl8
  store i32 %bf.set10, i32* %unsigned_flag, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @finish_vector_type(%union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %8
}

declare i32 @ggc_marked_p(i8*) #2

declare i32 @ggc_set_mark(i8*) #2

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #2

declare i64 @htab_size(%struct.htab*) #2

declare i64 @htab_elements(%struct.htab*) #2

declare double @htab_collisions(%struct.htab*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define internal void @finish_vector_type(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %index = alloca %union.tree_node*, align 8
  %array = alloca %union.tree_node*, align 8
  %rt = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @layout_type(%union.tree_node* %0)
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type = bitcast %union.tree_node* %1 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %mode3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load4 = load i32, i32* %mode3, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 9
  %bf.clear6 = and i32 %bf.lshr5, 127
  %idxprom7 = sext i32 %bf.clear6 to i64
  %arrayidx8 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom7
  %4 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type10 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %mode11 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 6
  %bf.load12 = load i32, i32* %mode11, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 9
  %bf.clear14 = and i32 %bf.lshr13, 127
  %idxprom15 = sext i32 %bf.clear14 to i64
  %arrayidx16 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom15
  %6 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %6 to i32
  %div = sdiv i32 %conv9, %conv17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ]
  %sub = sub nsw i32 %cond, 1
  %conv18 = sext i32 %sub to i64
  %call = call %union.tree_node* @build_int_2_wide(i64 %conv18, i64 0)
  store %union.tree_node* %call, %union.tree_node** %index, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type19, align 8
  %9 = load %union.tree_node*, %union.tree_node** %index, align 8
  %call20 = call %union.tree_node* @build_index_type(%union.tree_node* %9)
  %call21 = call %union.tree_node* @build_array_type(%union.tree_node* %8, %union.tree_node* %call20)
  store %union.tree_node* %call21, %union.tree_node** %array, align 8
  %call22 = call %union.tree_node* @make_node(i32 20)
  store %union.tree_node* %call22, %union.tree_node** %rt, align 8
  %call23 = call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0))
  %10 = load %union.tree_node*, %union.tree_node** %array, align 8
  %call24 = call %union.tree_node* @build_decl(i32 37, %union.tree_node* %call23, %union.tree_node* %10)
  %11 = load %union.tree_node*, %union.tree_node** %rt, align 8
  %type25 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 1
  store %union.tree_node* %call24, %union.tree_node** %values, align 8
  %12 = load %union.tree_node*, %union.tree_node** %rt, align 8
  %13 = load %union.tree_node*, %union.tree_node** %rt, align 8
  %type26 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %values27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %values27, align 8
  %decl = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 9
  store %union.tree_node* %12, %union.tree_node** %context, align 8
  %15 = load %union.tree_node*, %union.tree_node** %rt, align 8
  call void @layout_type(%union.tree_node* %15)
  %16 = load %union.tree_node*, %union.tree_node** %rt, align 8
  %17 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type28 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %values29 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 1
  store %union.tree_node* %16, %union.tree_node** %values29, align 8
  %18 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type30 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %uid = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 5
  %19 = load i32, i32* %uid, align 4
  %20 = load %union.tree_node*, %union.tree_node** %rt, align 8
  %type31 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %uid32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 5
  store i32 %19, i32* %uid32, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
