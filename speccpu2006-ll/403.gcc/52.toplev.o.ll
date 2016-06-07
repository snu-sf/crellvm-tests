; ModuleID = 'toplev.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.file_stack = type { i8*, %struct.file_stack*, i32, i32 }
%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], i32 (%struct.output_buffer*)* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dump_file_info = type { i8*, i8, i8, i8, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.param_info = type { i8*, i32, i8* }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_opt = type { i8*, i8* }
%struct.anon.3 = type { i8*, i32, i8* }
%struct.anon.4 = type { i8*, i8**, i8* }
%struct.lang_independent_options = type { i8*, i32*, i32, i8* }
%struct.anon.5 = type { i8*, i32, i32, i8* }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.loops = type { i32, i32, %struct.loop*, %struct.loop*, %struct.cfg, %struct.simple_bitmap_def* }
%struct.loop = type { i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def**, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.simple_bitmap_def*, i32, %struct.edge_def**, i32, %struct.edge_def**, i32, %struct.simple_bitmap_def*, i32, i32, %struct.loop*, %struct.loop*, %struct.loop*, i32, i32, i8*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.cfg = type { %struct.simple_bitmap_def**, i32*, i32* }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }

@do_nothing_debug_hooks = external global %struct.gcc_debug_hooks, align 8
@debug_hooks = global %struct.gcc_debug_hooks* @do_nothing_debug_hooks, align 8
@write_symbols = global i32 0, align 4
@debug_info_level = global i32 0, align 4
@use_gnu_debug_info_extensions = global i32 0, align 4
@optimize = global i32 3, align 4
@optimize_size = global i32 0, align 4
@lang_expand_expr = global %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)* null, align 8
@incomplete_decl_finalize_hook = global void (%union.tree_node*)* null, align 8
@flag_eliminate_dwarf2_dups = global i32 0, align 4
@profile_flag = global i32 0, align 4
@profile_arc_flag = global i32 0, align 4
@flag_test_coverage = global i32 0, align 4
@flag_branch_probabilities = global i32 0, align 4
@flag_reorder_blocks = global i32 0, align 4
@flag_rename_registers = global i32 0, align 4
@flag_cprop_registers = global i32 0, align 4
@pedantic = global i32 0, align 4
@in_system_header = global i32 0, align 4
@quiet_flag = global i32 1, align 4
@time_report = global i32 0, align 4
@mem_report = global i32 0, align 4
@flag_detailed_statistics = global i32 0, align 4
@flag_caller_saves = global i32 0, align 4
@flag_pcc_struct_return = global i32 1, align 4
@flag_force_mem = global i32 0, align 4
@flag_force_addr = global i32 1, align 4
@flag_defer_pop = global i32 0, align 4
@flag_float_store = global i32 0, align 4
@flag_strength_reduce = global i32 0, align 4
@flag_move_all_movables = global i32 0, align 4
@flag_reduce_all_givs = global i32 0, align 4
@flag_regmove = global i32 0, align 4
@flag_writable_strings = global i32 0, align 4
@flag_no_function_cse = global i32 0, align 4
@flag_omit_frame_pointer = global i32 1, align 4
@flag_function_sections = global i32 0, align 4
@flag_data_sections = global i32 0, align 4
@flag_no_peephole = global i32 0, align 4
@flag_optimize_sibling_calls = global i32 0, align 4
@flag_errno_math = global i32 1, align 4
@flag_unsafe_math_optimizations = global i32 1, align 4
@flag_trapping_math = global i32 1, align 4
@flag_complex_divide_method = global i32 0, align 4
@flag_syntax_only = global i32 0, align 4
@flag_gcse_lm = global i32 1, align 4
@flag_gcse_sm = global i32 1, align 4
@flag_rerun_loop_opt = global i32 1, align 4
@flag_no_inline = global i32 2, align 4
@flag_really_no_inline = global i32 2, align 4
@flag_keep_static_consts = global i32 1, align 4
@flag_gen_aux_info = global i32 0, align 4
@flag_unwind_tables = global i32 0, align 4
@flag_asynchronous_unwind_tables = global i32 0, align 4
@flag_pedantic_errors = global i32 0, align 4
@flag_schedule_insns = global i32 0, align 4
@flag_schedule_insns_after_reload = global i32 0, align 4
@flag_schedule_interblock = global i32 1, align 4
@flag_schedule_speculative = global i32 1, align 4
@flag_schedule_speculative_load = global i32 0, align 4
@flag_schedule_speculative_load_dangerous = global i32 0, align 4
@flag_branch_on_count_reg = global i32 1, align 4
@flag_inhibit_size_directive = global i32 0, align 4
@flag_verbose_asm = global i32 0, align 4
@flag_debug_asm = global i32 0, align 4
@flag_dump_rtl_in_asm = global i32 0, align 4
@flag_gnu_linker = global i32 1, align 4
@flag_ssa = global i32 1, align 4
@flag_ssa_ccp = global i32 0, align 4
@flag_ssa_dce = global i32 1, align 4
@flag_pack_struct = global i32 0, align 4
@flag_argument_noalias = global i32 0, align 4
@flag_strict_aliasing = global i32 0, align 4
@flag_instrument_function_entry_exit = global i32 0, align 4
@flag_no_ident = global i32 0, align 4
@flag_peephole2 = global i32 0, align 4
@flag_guess_branch_prob = global i32 0, align 4
@flag_bounded_pointers = global i32 0, align 4
@flag_bounds_check = global i32 0, align 4
@flag_merge_constants = global i32 1, align 4
@flag_renumber_insns = global i32 1, align 4
@flag_trapv = global i32 0, align 4
@flag_leading_underscore = global i32 -1, align 4
@inhibit_warnings = global i32 0, align 4
@warn_system_headers = global i32 0, align 4
@extra_warnings = global i32 0, align 4
@warnings_are_errors = global i32 0, align 4
@warn_deprecated_decl = global i32 1, align 4
@warn_unused_function = common global i32 0, align 4
@warn_unused_label = common global i32 0, align 4
@warn_unused_parameter = common global i32 0, align 4
@warn_unused_variable = common global i32 0, align 4
@warn_unused_value = common global i32 0, align 4
@rtl_dump_file = global %struct._IO_FILE* null, align 8
@_sch_istable = external constant [256 x i16], align 16
@.str = private unnamed_addr constant [20 x i8] c"invalid option `%s'\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"toplev.c\00", align 1
@__FUNCTION__.do_abort = private unnamed_addr constant [9 x i8] c"do_abort\00", align 1
@__FUNCTION__.botch = private unnamed_addr constant [6 x i8] c"botch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\09.file\09\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@flag_keep_inline_functions = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"`%s' used but never defined\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"`%s' declared `static' but never defined\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"`%s' defined but not used\00", align 1
@input_file_stack = common global %struct.file_stack* null, align 8
@input_filename = common global i8* null, align 8
@lineno = common global i32 0, align 4
@input_file_stack_tick = common global i32 0, align 4
@__FUNCTION__.pop_srcloc = private unnamed_addr constant [11 x i8] c"pop_srcloc\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@last_assemble_variable_decl = external global %union.tree_node*, align 8
@global_trees = external global [51 x %union.tree_node*], align 16
@size_directive_output = external global i32, align 4
@asm_out_file = common global %struct._IO_FILE* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\09.size\09\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"invalid register name `%s' for register variable\00", align 1
@generating_concat_p = external global i32, align 4
@cse_not_expected = external global i32, align 4
@cfun = external global %struct.function*, align 8
@current_function_decl = common global %union.tree_node* null, align 8
@flag_inline_functions = common global i32 0, align 4
@warn_inline = common global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c";; (integrable)\0A\0A\00", align 1
@warn_return_type = common global i32 0, align 4
@current_function_nothrow = external global i32, align 4
@rtx_equal_function_value_matters = external global i32, align 4
@rtl_dump_and_exit = common global i32 0, align 4
@global_dc = external global %struct.diagnostic_context*, align 8
@flag_pic = common global i32 0, align 4
@flag_thread_jumps = common global i32 0, align 4
@flag_delete_null_pointer_checks = internal global i32 0, align 4
@flag_rerun_cse_after_loop = internal global i32 1, align 4
@flag_gcse = internal global i32 0, align 4
@flag_cse_skip_blocks = common global i32 0, align 4
@flag_cse_follow_jumps = common global i32 0, align 4
@flag_expensive_optimizations = common global i32 0, align 4
@flag_unroll_loops = common global i32 0, align 4
@flag_prefetch_loop_arrays = common global i32 0, align 4
@no_new_pseudos = common global i32 0, align 4
@warn_uninitialized = common global i32 0, align 4
@current_function_is_leaf = external global i32, align 4
@max_regno = external global i32, align 4
@reg_equiv_memory_loc = external global %struct.rtx_def**, align 8
@dump_file = internal global [32 x %struct.dump_file_info] [%struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8 114, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8 105, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8 104, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8 106, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8 101, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8 87, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8 88, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8 101, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8 115, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8 70, i8 0, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8 71, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8 76, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8 116, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8 102, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8 98, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8 102, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8 99, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8 67, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8 78, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8 83, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8 108, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8 103, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8 111, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8 119, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8 122, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8 110, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8 69, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8 82, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8 107, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8 66, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8 77, i8 1, i8 0, i8 0 }, %struct.dump_file_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8 100, i8 0, i8 0, i8 0 }], align 16
@n_basic_blocks = external global i32, align 4
@n_edges = external global i32, align 4
@warn_disabled_optimization = common global i32 0, align 4
@.str.13 = private unnamed_addr constant [74 x i8] c"crossjump disabled: %d > 1000 basic blocks and %d >= 20 edges/basic block\00", align 1
@flow2_completed = external global i32, align 4
@__FUNCTION__.rest_of_compilation = private unnamed_addr constant [20 x i8] c"rest_of_compilation\00", align 1
@reload_completed = external global i32, align 4
@exit_after_options = internal global i32 0, align 4
@progname = common global i8* null, align 8
@save_argc = common global i32 0, align 4
@save_argv = common global i8** null, align 8
@main_input_filename = common global i8* null, align 8
@dump_base_name = common global i8* null, align 8
@flag_print_asm_name = common global i32 0, align 4
@graph_dump_format = common global i32 0, align 4
@asm_file_name = common global i8* null, align 8
@g_switch_value = common global i32 0, align 4
@g_switch_set = common global i32 0, align 4
@current_function_func_begin_label = common global %union.tree_node* null, align 8
@decl_printable_name = common global i8* (%union.tree_node*, i32)* null, align 8
@flag_signed_char = common global i32 0, align 4
@flag_short_enums = common global i32 0, align 4
@flag_unroll_all_loops = common global i32 0, align 4
@flag_volatile = common global i32 0, align 4
@flag_volatile_global = common global i32 0, align 4
@flag_volatile_static = common global i32 0, align 4
@flag_shared_data = common global i32 0, align 4
@flag_delayed_branch = common global i32 0, align 4
@flag_exceptions = common global i32 0, align 4
@flag_no_common = common global i32 0, align 4
@flag_pretend_float = common global i32 0, align 4
@flag_single_precision_constant = common global i32 0, align 4
@flag_stack_check = common global i32 0, align 4
@stack_limit_rtx = common global %struct.rtx_def* null, align 8
@align_loops = common global i32 0, align 4
@align_loops_log = common global i32 0, align 4
@align_loops_max_skip = common global i32 0, align 4
@align_jumps = common global i32 0, align 4
@align_jumps_log = common global i32 0, align 4
@align_jumps_max_skip = common global i32 0, align 4
@align_labels = common global i32 0, align 4
@align_labels_log = common global i32 0, align 4
@align_labels_max_skip = common global i32 0, align 4
@align_functions = common global i32 0, align 4
@align_functions_log = common global i32 0, align 4
@user_label_prefix = common global i8* null, align 8
@warn_notreached = common global i32 0, align 4
@warn_shadow = common global i32 0, align 4
@warn_switch = common global i32 0, align 4
@warn_cast_align = common global i32 0, align 4
@warn_larger_than = common global i32 0, align 4
@larger_than_size = common global i64 0, align 8
@warn_aggregate_return = common global i32 0, align 4
@warn_packed = common global i32 0, align 4
@warn_padded = common global i32 0, align 4
@warn_missing_noreturn = common global i32 0, align 4
@aux_info_file = common global %struct._IO_FILE* null, align 8
@float_handled = common global i32 0, align 4
@float_handler = common global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@float_handler_set = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"internal error: %d\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c".%02d.\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\0A;; Function %s\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"sibling\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ssa\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ssaccp\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ssadce\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ussa\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"cse\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"addressof\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"gcse\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"cse2\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"life\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"combine\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"lreg\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"greg\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"postreload\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"flow2\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"peephole2\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"rnreg\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ce2\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"sched2\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"bbro\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"mach\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"dbr\00", align 1
@lang_independent_params = internal constant [7 x %struct.param_info] [%struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i32 5500, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.60, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.62, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), i32 333, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.64, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.66, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 314572800, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.68, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i32 0, i32 0) }, %struct.param_info zeroinitializer], align 16
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.52 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@target_flags = external global i32, align 4
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@documented_lang_options = internal constant [108 x %struct.lang_opt] [%struct.lang_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.509, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.510, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.511, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.512, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.513, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.514, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.515, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.516, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.517, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.518, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.519, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.520, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.521, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.522, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.523, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.524, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.525, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.526, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.527, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.528, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.529, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.530, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.531, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.532, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.533, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.534, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.535, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.536, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.537, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.538, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.539, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.540, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.541, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.542, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.543, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.544, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.545, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.546, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.547, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.548, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.549, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.550, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.551, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.552, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.553, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.554, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.555, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.556, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.557, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.558, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.559, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.560, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.561, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.562, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.563, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.564, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.565, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.566, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.567, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.568, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.569, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.570, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.571, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.572, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.573, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.574, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.575, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.576, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.577, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.578, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.576, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.579, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.580, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.581, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.582, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.583, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.584, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.585, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.586, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.587, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.588, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.589, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.590, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.591, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.592, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.593, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.594, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.595, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.596, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.597, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.598, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.599, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.600, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.601, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.602, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.603, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.604, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.605, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.606, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.607, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.608, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.609, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.610, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.611, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.612, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.613, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.614, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.615, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.616, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.617, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.618, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.619, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.620, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.621, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.622, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.623, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.624, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.625, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.626, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.627, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.628, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.629, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.630, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.631, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.632, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.633, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.634, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.635, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.636, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.637, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.638, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.639, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.640, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.641, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.642, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.643, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.644, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.645, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.646, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.647, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.648, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.649, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.650, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.651, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.652, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.653, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.654, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.655, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.656, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.657, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.658, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.659, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.660, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.661, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.662, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.663, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.664, i32 0, i32 0) }, %struct.lang_opt { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.665, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }], align 16
@.str.54 = private unnamed_addr constant [34 x i8] c"ignoring command line option '%s'\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"(it is valid for %s but not the selected language)\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"`%s': unknown or unsupported -g option\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"unrecognized option `%s'\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"-Wuninitialized is not supported without -O\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"max-inline-insns\00", align 1
@.str.60 = private unnamed_addr constant [79 x i8] c"The maximum number of instructions in a function that is eligible for inlining\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"max-delay-slot-insn-search\00", align 1
@.str.62 = private unnamed_addr constant [68 x i8] c"The maximum number of instructions to consider to fill a delay slot\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"max-delay-slot-live-search\00", align 1
@.str.64 = private unnamed_addr constant [90 x i8] c"The maximum number of instructions to consider to find accurate live register information\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"max-pending-list-length\00", align 1
@.str.66 = private unnamed_addr constant [59 x i8] c"The maximum length of scheduling's pending operations list\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"max-gcse-memory\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"The maximum amount of memory to be allocated by GCSE\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"max-gcse-passes\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"The maximum number of passes to make when doing GCSE\00", align 1
@target_switches = internal constant [56 x %struct.anon.3] [%struct.anon.3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 -2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i32 -4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.93, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i32 -8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i32 -16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.99, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.101, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.102, i32 0, i32 0), i32 -32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.103, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.105, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0), i32 -64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.107, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.110, i32 0, i32 0), i32 -128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.112, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0), i32 -256, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i32 0, i8* null }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i32 0, i8* null }, %struct.anon.3 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 -512, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.117, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.118, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.119, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), i32 1024, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0), i32 -1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.123, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i32 -2048, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 2048, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.127, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i32 0, i32 0), i32 12288, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.129, i32 0, i32 0), i32 8192, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.127, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i32 49152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.131, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 -16384, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 32768, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 3145728, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.135, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i32 0, i32 0), i32 -1048576, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i32 0, i32 0), i32 2097152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i32 196608, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.139, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i32 -65536, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), i32 131072, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.141, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 786432, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.143, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i32 -262144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i32 524288, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.145, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0), i32 16777216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.147, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.148, i32 0, i32 0), i32 -16777216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.150, i32 0, i32 0), i32 33554432, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.152, i32 0, i32 0), i32 -33554432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 -67108864, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i32 0, i32 0), i32 67108864, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i32 0, i32 0) }, %struct.anon.3 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i32 33554481, i8* null }], align 16
@target_options = internal constant [13 x %struct.anon.4] [%struct.anon.4 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0), i8** @ix86_cpu_string, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.159, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i32 0, i32 0), i8** @ix86_fpmath_string, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.161, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i8** @ix86_arch_string, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.163, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i8** @ix86_regparm_string, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.165, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i8** @ix86_align_loops_string, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.167, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i8** @ix86_align_jumps_string, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.169, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.170, i32 0, i32 0), i8** @ix86_align_funcs_string, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.171, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.172, i32 0, i32 0), i8** @ix86_preferred_stack_boundary_string, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.173, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i32 0, i32 0), i8** @ix86_branch_cost_string, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.175, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0), i8** @ix86_cmodel_string, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.177, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0), i8** @ix86_debug_arg_string, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0), i8** @ix86_debug_addr_string, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.4 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.180, i32 0, i32 0), i8** @ix86_asm_string, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.181, i32 0, i32 0) }], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"80387\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"Use hardware fp\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"no-80387\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"Do not use hardware fp\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"hard-float\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"soft-float\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"no-soft-float\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"386\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"486\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"pentium\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"pentiumpro\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"intel-syntax\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"no-intel-syntax\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"rtd\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"Alternate calling convention\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"no-rtd\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"Use normal calling convention\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"align-double\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"Align some doubles on dword boundary\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"no-align-double\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Align doubles on word boundary\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"svr3-shlib\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"Uninitialized locals in .bss\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"no-svr3-shlib\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Uninitialized locals in .data\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"ieee-fp\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"Use IEEE math for fp comparisons\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"no-ieee-fp\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"Do not use IEEE math for fp comparisons\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"fp-ret-in-387\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"Return values of functions in FPU registers\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"no-fp-ret-in-387\00", align 1
@.str.103 = private unnamed_addr constant [51 x i8] c"Do not return values of functions in FPU registers\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"no-fancy-math-387\00", align 1
@.str.105 = private unnamed_addr constant [39 x i8] c"Do not generate sin, cos, sqrt for FPU\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"fancy-math-387\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"Generate sin, cos, sqrt for FPU\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"omit-leaf-frame-pointer\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"Omit the frame pointer in leaf functions\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"no-omit-leaf-frame-pointer\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"stack-arg-probe\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"Enable stack probing\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"no-stack-arg-probe\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"dll\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"align-stringops\00", align 1
@.str.117 = private unnamed_addr constant [43 x i8] c"Align destination of the string operations\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"no-align-stringops\00", align 1
@.str.119 = private unnamed_addr constant [50 x i8] c"Do not align destination of the string operations\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"inline-all-stringops\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Inline all known string operations\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"no-inline-all-stringops\00", align 1
@.str.123 = private unnamed_addr constant [42 x i8] c"Do not inline all known string operations\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"push-args\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"Use push instructions to save outgoing arguments\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"no-push-args\00", align 1
@.str.127 = private unnamed_addr constant [56 x i8] c"Do not use push instructions to save outgoing arguments\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"accumulate-outgoing-args\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"no-accumulate-outgoing-args\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"mmx\00", align 1
@.str.131 = private unnamed_addr constant [31 x i8] c"Support MMX built-in functions\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"no-mmx\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"Do not support MMX built-in functions\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"3dnow\00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"Support 3DNow! built-in functions\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"no-3dnow\00", align 1
@.str.137 = private unnamed_addr constant [41 x i8] c"Do not support 3DNow! built-in functions\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"sse\00", align 1
@.str.139 = private unnamed_addr constant [59 x i8] c"Support MMX and SSE built-in functions and code generation\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"no-sse\00", align 1
@.str.141 = private unnamed_addr constant [66 x i8] c"Do not support MMX and SSE built-in functions and code generation\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"sse2\00", align 1
@.str.143 = private unnamed_addr constant [65 x i8] c"Support MMX, SSE and SSE2 built-in functions and code generation\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"no-sse2\00", align 1
@.str.145 = private unnamed_addr constant [72 x i8] c"Do not support MMX, SSE and SSE2 built-in functions and code generation\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"128bit-long-double\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"sizeof(long double) is 16\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"96bit-long-double\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"sizeof(long double) is 12\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"Generate 64bit x86-64 code\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"Generate 32bit i386 code\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"red-zone\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"Use red-zone in the x86-64 code\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"no-red-zone\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"Do not use red-zone in the x86-64 code\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"cpu=\00", align 1
@ix86_cpu_string = external global i8*, align 8
@.str.159 = private unnamed_addr constant [28 x i8] c"Schedule code for given CPU\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"fpmath=\00", align 1
@ix86_fpmath_string = external global i8*, align 8
@.str.161 = private unnamed_addr constant [64 x i8] c"Generate floating point mathematics using given instruction set\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"arch=\00", align 1
@ix86_arch_string = external global i8*, align 8
@.str.163 = private unnamed_addr constant [28 x i8] c"Generate code for given CPU\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"regparm=\00", align 1
@ix86_regparm_string = external global i8*, align 8
@.str.165 = private unnamed_addr constant [51 x i8] c"Number of registers used to pass integer arguments\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"align-loops=\00", align 1
@ix86_align_loops_string = external global i8*, align 8
@.str.167 = private unnamed_addr constant [37 x i8] c"Loop code aligned to this power of 2\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"align-jumps=\00", align 1
@ix86_align_jumps_string = external global i8*, align 8
@.str.169 = private unnamed_addr constant [44 x i8] c"Jump targets are aligned to this power of 2\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"align-functions=\00", align 1
@ix86_align_funcs_string = external global i8*, align 8
@.str.171 = private unnamed_addr constant [47 x i8] c"Function starts are aligned to this power of 2\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"preferred-stack-boundary=\00", align 1
@ix86_preferred_stack_boundary_string = external global i8*, align 8
@.str.173 = private unnamed_addr constant [49 x i8] c"Attempt to keep stack aligned to this power of 2\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"branch-cost=\00", align 1
@ix86_branch_cost_string = external global i8*, align 8
@.str.175 = private unnamed_addr constant [51 x i8] c"Branches are this expensive (1-5, arbitrary units)\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"cmodel=\00", align 1
@ix86_cmodel_string = external global i8*, align 8
@.str.177 = private unnamed_addr constant [28 x i8] c"Use given x86-64 code model\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"debug-arg\00", align 1
@ix86_debug_arg_string = external global i8*, align 8
@.str.179 = private unnamed_addr constant [11 x i8] c"debug-addr\00", align 1
@ix86_debug_addr_string = external global i8*, align 8
@.str.180 = private unnamed_addr constant [5 x i8] c"asm=\00", align 1
@ix86_asm_string = external global i8*, align 8
@.str.181 = private unnamed_addr constant [28 x i8] c"Use given assembler dialect\00", align 1
@filename = internal global i8* null, align 8
@.str.182 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"-target-help\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.185 = private unnamed_addr constant [7 x i8] c"-param\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"-param option missing argument\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"invalid --param option: %s\00", align 1
@.str.188 = private unnamed_addr constant [29 x i8] c"invalid parameter value `%s'\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"dumpbase\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"pedantic\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"pedantic-errors\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@version_flag = internal global i32 0, align 4
@.str.194 = private unnamed_addr constant [9 x i8] c"aux-info\00", align 1
@aux_info_file_name = internal global i8* null, align 8
@.str.195 = private unnamed_addr constant [80 x i8] c"  -ffixed-<register>      Mark <register> as being unavailable to the compiler\0A\00", align 1
@.str.196 = private unnamed_addr constant [80 x i8] c"  -fcall-used-<register>  Mark <register> as being corrupted by function calls\0A\00", align 1
@.str.197 = private unnamed_addr constant [79 x i8] c"  -fcall-saved-<register> Mark <register> as being preserved across functions\0A\00", align 1
@.str.198 = private unnamed_addr constant [76 x i8] c"  -finline-limit=<number> Limits the size of inlined functions to <number>\0A\00", align 1
@.str.199 = private unnamed_addr constant [126 x i8] c"  -fmessage-length=<number> Limits diagnostics messages lengths to <number> characters per line.  0 suppresses line-wrapping\0A\00", align 1
@.str.200 = private unnamed_addr constant [180 x i8] c"  -fdiagnostics-show-location=[once | every-line] Indicates how often source location information should be emitted, as prefix, at the beginning of diagnostics when line-wrapping\0A\00", align 1
@f_options = internal constant [97 x %struct.lang_independent_options] [%struct.lang_independent_options { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.230, i32 0, i32 0), i32* @flag_eliminate_dwarf2_dups, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.231, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.232, i32 0, i32 0), i32* @flag_float_store, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.233, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.234, i32 0, i32 0), i32* @flag_volatile, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.235, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.236, i32 0, i32 0), i32* @flag_volatile_global, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.237, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.238, i32 0, i32 0), i32* @flag_volatile_static, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.239, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.240, i32 0, i32 0), i32* @flag_defer_pop, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.241, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.242, i32 0, i32 0), i32* @flag_omit_frame_pointer, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.243, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.244, i32 0, i32 0), i32* @flag_optimize_sibling_calls, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.245, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.246, i32 0, i32 0), i32* @flag_cse_follow_jumps, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.247, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.248, i32 0, i32 0), i32* @flag_cse_skip_blocks, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.249, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.250, i32 0, i32 0), i32* @flag_expensive_optimizations, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.251, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i32* @flag_thread_jumps, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.253, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.254, i32 0, i32 0), i32* @flag_strength_reduce, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.255, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.256, i32 0, i32 0), i32* @flag_unroll_loops, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.257, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.258, i32 0, i32 0), i32* @flag_unroll_all_loops, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.259, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.260, i32 0, i32 0), i32* @flag_prefetch_loop_arrays, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.261, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.262, i32 0, i32 0), i32* @flag_move_all_movables, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.263, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.264, i32 0, i32 0), i32* @flag_reduce_all_givs, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.265, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.266, i32 0, i32 0), i32* @flag_writable_strings, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.267, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.268, i32 0, i32 0), i32* @flag_no_peephole, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.269, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.270, i32 0, i32 0), i32* @flag_force_mem, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.271, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.272, i32 0, i32 0), i32* @flag_force_addr, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.273, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.274, i32 0, i32 0), i32* @flag_no_function_cse, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.275, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.276, i32 0, i32 0), i32* @flag_inline_functions, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.277, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.278, i32 0, i32 0), i32* @flag_keep_inline_functions, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.279, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), i32* @flag_no_inline, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.281, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.282, i32 0, i32 0), i32* @flag_keep_static_consts, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.283, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.284, i32 0, i32 0), i32* @flag_syntax_only, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.285, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.286, i32 0, i32 0), i32* @flag_shared_data, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.287, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.288, i32 0, i32 0), i32* @flag_caller_saves, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.289, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.290, i32 0, i32 0), i32* @flag_pcc_struct_return, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.291, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.292, i32 0, i32 0), i32* @flag_pcc_struct_return, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.293, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.294, i32 0, i32 0), i32* @flag_delayed_branch, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.295, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32* @flag_gcse, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.296, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.297, i32 0, i32 0), i32* @flag_gcse_lm, i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.298, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.299, i32 0, i32 0), i32* @flag_gcse_sm, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.300, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.301, i32 0, i32 0), i32* @flag_rerun_cse_after_loop, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.302, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.303, i32 0, i32 0), i32* @flag_rerun_loop_opt, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.304, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.305, i32 0, i32 0), i32* @flag_delete_null_pointer_checks, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.306, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32* @flag_pretend_float, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.308, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.309, i32 0, i32 0), i32* @flag_schedule_insns, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.310, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.311, i32 0, i32 0), i32* @flag_schedule_insns_after_reload, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.312, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.313, i32 0, i32 0), i32* @flag_schedule_interblock, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.314, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.315, i32 0, i32 0), i32* @flag_schedule_speculative, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.316, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.317, i32 0, i32 0), i32* @flag_schedule_speculative_load, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.318, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.319, i32 0, i32 0), i32* @flag_schedule_speculative_load_dangerous, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.320, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.321, i32 0, i32 0), i32* @flag_branch_on_count_reg, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.322, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.323, i32 0, i32 0), i32* @flag_pic, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.324, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i32 0, i32 0), i32* @flag_pic, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.326, i32 0, i32 0), i32* @flag_exceptions, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.327, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.328, i32 0, i32 0), i32* @flag_unwind_tables, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.329, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.330, i32 0, i32 0), i32* @flag_asynchronous_unwind_tables, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.331, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.332, i32 0, i32 0), i32* @flag_non_call_exceptions, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.333, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.334, i32 0, i32 0), i32* @profile_arc_flag, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.335, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i32* @flag_test_coverage, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.337, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.338, i32 0, i32 0), i32* @flag_branch_probabilities, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.339, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.340, i32 0, i32 0), i32* @flag_reorder_blocks, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.341, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.342, i32 0, i32 0), i32* @flag_rename_registers, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.343, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.344, i32 0, i32 0), i32* @flag_cprop_registers, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.345, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.346, i32 0, i32 0), i32* @flag_no_common, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.347, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.348, i32 0, i32 0), i32* @flag_inhibit_size_directive, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.349, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.350, i32 0, i32 0), i32* @flag_function_sections, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.351, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.352, i32 0, i32 0), i32* @flag_data_sections, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.353, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.354, i32 0, i32 0), i32* @flag_verbose_asm, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.355, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.356, i32 0, i32 0), i32* @flag_gnu_linker, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.357, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32* @flag_regmove, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.358, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.359, i32 0, i32 0), i32* @flag_regmove, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.360, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.361, i32 0, i32 0), i32* @flag_pack_struct, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.362, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.363, i32 0, i32 0), i32* @flag_stack_check, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.364, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.365, i32 0, i32 0), i32* @flag_argument_noalias, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.366, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.367, i32 0, i32 0), i32* @flag_argument_noalias, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.368, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.369, i32 0, i32 0), i32* @flag_argument_noalias, i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.370, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.371, i32 0, i32 0), i32* @flag_strict_aliasing, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.372, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.373, i32 0, i32 0), i32* @align_loops, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.374, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.375, i32 0, i32 0), i32* @align_jumps, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.376, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.377, i32 0, i32 0), i32* @align_labels, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.378, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.379, i32 0, i32 0), i32* @align_functions, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.380, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.381, i32 0, i32 0), i32* @flag_merge_constants, i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.382, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.383, i32 0, i32 0), i32* @flag_merge_constants, i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.384, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.385, i32 0, i32 0), i32* @flag_dump_unnumbered, i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.386, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.387, i32 0, i32 0), i32* @flag_instrument_function_entry_exit, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.388, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32* @flag_ssa, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.389, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.390, i32 0, i32 0), i32* @flag_ssa_ccp, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.391, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.392, i32 0, i32 0), i32* @flag_ssa_dce, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.393, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.394, i32 0, i32 0), i32* @flag_leading_underscore, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.395, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.396, i32 0, i32 0), i32* @flag_no_ident, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.397, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32* @flag_peephole2, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.398, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.399, i32 0, i32 0), i32* @flag_guess_branch_prob, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.400, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.401, i32 0, i32 0), i32* @flag_errno_math, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.402, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.403, i32 0, i32 0), i32* @flag_trapping_math, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.404, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.405, i32 0, i32 0), i32* @flag_unsafe_math_optimizations, i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.406, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.407, i32 0, i32 0), i32* @flag_bounded_pointers, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.408, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.409, i32 0, i32 0), i32* @flag_bounds_check, i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.410, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.411, i32 0, i32 0), i32* @flag_single_precision_constant, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.412, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.413, i32 0, i32 0), i32* @time_report, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.414, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.415, i32 0, i32 0), i32* @mem_report, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.416, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.417, i32 0, i32 0), i32* @flag_trapv, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.418, i32 0, i32 0) }], align 16
@.str.201 = private unnamed_addr constant [14 x i8] c"  -f%-21s %s\0A\00", align 1
@.str.202 = private unnamed_addr constant [62 x i8] c"  -O[number]              Set optimization level to [number]\0A\00", align 1
@.str.203 = private unnamed_addr constant [64 x i8] c"  -Os                     Optimize for space rather than speed\0A\00", align 1
@compiler_params = external global %struct.param_info*, align 8
@.str.204 = private unnamed_addr constant [28 x i8] c"  --param %s=<value>%.*s%s\0A\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"                     \00", align 1
@.str.206 = private unnamed_addr constant [79 x i8] c"  -pedantic               Issue warnings needed by strict compliance to ISO C\0A\00", align 1
@.str.207 = private unnamed_addr constant [74 x i8] c"  -pedantic-errors        Like -pedantic except that errors are produced\0A\00", align 1
@.str.208 = private unnamed_addr constant [45 x i8] c"  -w                      Suppress warnings\0A\00", align 1
@.str.209 = private unnamed_addr constant [49 x i8] c"  -W                      Enable extra warnings\0A\00", align 1
@W_options = internal constant [19 x %struct.lang_independent_options] [%struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.419, i32 0, i32 0), i32* @warn_unused_function, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.420, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.421, i32 0, i32 0), i32* @warn_unused_label, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.422, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.423, i32 0, i32 0), i32* @warn_unused_parameter, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.424, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.425, i32 0, i32 0), i32* @warn_unused_variable, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.426, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.427, i32 0, i32 0), i32* @warn_unused_value, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.428, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.429, i32 0, i32 0), i32* @warn_system_headers, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.430, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.431, i32 0, i32 0), i32* @warnings_are_errors, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.432, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.433, i32 0, i32 0), i32* @warn_shadow, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.434, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.435, i32 0, i32 0), i32* @warn_switch, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.436, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.437, i32 0, i32 0), i32* @warn_aggregate_return, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.438, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.439, i32 0, i32 0), i32* @warn_cast_align, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.440, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.441, i32 0, i32 0), i32* @warn_notreached, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.442, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.443, i32 0, i32 0), i32* @warn_uninitialized, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.444, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.280, i32 0, i32 0), i32* @warn_inline, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.445, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.446, i32 0, i32 0), i32* @warn_packed, i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.447, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.448, i32 0, i32 0), i32* @warn_padded, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.449, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.450, i32 0, i32 0), i32* @warn_disabled_optimization, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.451, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.452, i32 0, i32 0), i32* @warn_deprecated_decl, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.453, i32 0, i32 0) }, %struct.lang_independent_options { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.454, i32 0, i32 0), i32* @warn_missing_noreturn, i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.455, i32 0, i32 0) }], align 16
@.str.210 = private unnamed_addr constant [14 x i8] c"  -W%-21s %s\0A\00", align 1
@.str.211 = private unnamed_addr constant [50 x i8] c"  -Wunused                Enable unused warnings\0A\00", align 1
@.str.212 = private unnamed_addr constant [75 x i8] c"  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes\0A\00", align 1
@.str.213 = private unnamed_addr constant [53 x i8] c"  -p                      Enable function profiling\0A\00", align 1
@.str.214 = private unnamed_addr constant [53 x i8] c"  -o <file>               Place output into <file> \0A\00", align 1
@.str.215 = private unnamed_addr constant [149 x i8] c"  -G <number>             Put global and static data smaller than <number>\0A                          bytes into a special section (on some targets)\0A\00", align 1
@debug_args = internal constant [6 x %struct.anon.5] [%struct.anon.5 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.456, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.457, i32 0, i32 0), i32 0, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.458, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.459, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.460, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.461, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.462, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.463, i32 0, i32 0), i32 4, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.464, i32 0, i32 0) }, %struct.anon.5 zeroinitializer], align 16
@.str.216 = private unnamed_addr constant [14 x i8] c"  -g%-21s %s\0A\00", align 1
@.str.217 = private unnamed_addr constant [61 x i8] c"  -aux-info <file>        Emit declaration info into <file>\0A\00", align 1
@.str.218 = private unnamed_addr constant [77 x i8] c"  -quiet                  Do not display functions compiled or elapsed time\0A\00", align 1
@.str.219 = private unnamed_addr constant [58 x i8] c"  -version                Display the compiler's version\0A\00", align 1
@.str.220 = private unnamed_addr constant [77 x i8] c"  -d[letters]             Enable dumps from specific passes of the compiler\0A\00", align 1
@.str.221 = private unnamed_addr constant [79 x i8] c"  -dumpbase <file>        Base name to be used for dumps from specific passes\0A\00", align 1
@.str.222 = private unnamed_addr constant [69 x i8] c"  -fsched-verbose=<number> Set the verbosity level of the scheduler\0A\00", align 1
@.str.223 = private unnamed_addr constant [52 x i8] c"  --help                  Display this information\0A\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"\0ALanguage specific options:\0A\00", align 1
@.str.226 = private unnamed_addr constant [27 x i8] c"  %-23.23s [undocumented]\0A\00", align 1
@.str.227 = private unnamed_addr constant [54 x i8] c"\0AThere are undocumented %s specific options as well.\0A\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"\0A Options for %s:\0A\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"  %-23.23s %s\0A\00", align 1
@.str.230 = private unnamed_addr constant [22 x i8] c"eliminate-dwarf2-dups\00", align 1
@.str.231 = private unnamed_addr constant [37 x i8] c"Perform DWARF2 duplicate elimination\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"float-store\00", align 1
@.str.233 = private unnamed_addr constant [33 x i8] c"Do not store floats in registers\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.235 = private unnamed_addr constant [51 x i8] c"Consider all mem refs through pointers as volatile\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"volatile-global\00", align 1
@.str.237 = private unnamed_addr constant [52 x i8] c"Consider all mem refs to global data to be volatile\00", align 1
@.str.238 = private unnamed_addr constant [16 x i8] c"volatile-static\00", align 1
@.str.239 = private unnamed_addr constant [52 x i8] c"Consider all mem refs to static data to be volatile\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"defer-pop\00", align 1
@.str.241 = private unnamed_addr constant [52 x i8] c"Defer popping functions args from stack until later\00", align 1
@.str.242 = private unnamed_addr constant [19 x i8] c"omit-frame-pointer\00", align 1
@.str.243 = private unnamed_addr constant [43 x i8] c"When possible do not generate stack frames\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"optimize-sibling-calls\00", align 1
@.str.245 = private unnamed_addr constant [42 x i8] c"Optimize sibling and tail recursive calls\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"cse-follow-jumps\00", align 1
@.str.247 = private unnamed_addr constant [48 x i8] c"When running CSE, follow jumps to their targets\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"cse-skip-blocks\00", align 1
@.str.249 = private unnamed_addr constant [43 x i8] c"When running CSE, follow conditional jumps\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"expensive-optimizations\00", align 1
@.str.251 = private unnamed_addr constant [51 x i8] c"Perform a number of minor, expensive optimizations\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"thread-jumps\00", align 1
@.str.253 = private unnamed_addr constant [37 x i8] c"Perform jump threading optimizations\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"strength-reduce\00", align 1
@.str.255 = private unnamed_addr constant [41 x i8] c"Perform strength reduction optimizations\00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"unroll-loops\00", align 1
@.str.257 = private unnamed_addr constant [53 x i8] c"Perform loop unrolling when iteration count is known\00", align 1
@.str.258 = private unnamed_addr constant [17 x i8] c"unroll-all-loops\00", align 1
@.str.259 = private unnamed_addr constant [37 x i8] c"Perform loop unrolling for all loops\00", align 1
@.str.260 = private unnamed_addr constant [21 x i8] c"prefetch-loop-arrays\00", align 1
@.str.261 = private unnamed_addr constant [66 x i8] c"Generate prefetch instructions, if available, for arrays in loops\00", align 1
@.str.262 = private unnamed_addr constant [18 x i8] c"move-all-movables\00", align 1
@.str.263 = private unnamed_addr constant [51 x i8] c"Force all loop invariant computations out of loops\00", align 1
@.str.264 = private unnamed_addr constant [16 x i8] c"reduce-all-givs\00", align 1
@.str.265 = private unnamed_addr constant [53 x i8] c"Strength reduce all loop general induction variables\00", align 1
@.str.266 = private unnamed_addr constant [17 x i8] c"writable-strings\00", align 1
@.str.267 = private unnamed_addr constant [39 x i8] c"Store strings in writable data section\00", align 1
@.str.268 = private unnamed_addr constant [9 x i8] c"peephole\00", align 1
@.str.269 = private unnamed_addr constant [47 x i8] c"Enable machine specific peephole optimizations\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"force-mem\00", align 1
@.str.271 = private unnamed_addr constant [49 x i8] c"Copy memory operands into registers before using\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"force-addr\00", align 1
@.str.273 = private unnamed_addr constant [53 x i8] c"Copy memory address constants into regs before using\00", align 1
@.str.274 = private unnamed_addr constant [13 x i8] c"function-cse\00", align 1
@.str.275 = private unnamed_addr constant [49 x i8] c"Allow function addresses to be held in registers\00", align 1
@.str.276 = private unnamed_addr constant [17 x i8] c"inline-functions\00", align 1
@.str.277 = private unnamed_addr constant [46 x i8] c"Integrate simple functions into their callers\00", align 1
@.str.278 = private unnamed_addr constant [22 x i8] c"keep-inline-functions\00", align 1
@.str.279 = private unnamed_addr constant [55 x i8] c"Generate code for funcs even if they are fully inlined\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.281 = private unnamed_addr constant [38 x i8] c"Pay attention to the 'inline' keyword\00", align 1
@.str.282 = private unnamed_addr constant [19 x i8] c"keep-static-consts\00", align 1
@.str.283 = private unnamed_addr constant [54 x i8] c"Emit static const variables even if they are not used\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"syntax-only\00", align 1
@.str.285 = private unnamed_addr constant [35 x i8] c"Check for syntax errors, then stop\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"shared-data\00", align 1
@.str.287 = private unnamed_addr constant [40 x i8] c"Mark data as shared rather than private\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"caller-saves\00", align 1
@.str.289 = private unnamed_addr constant [46 x i8] c"Enable saving registers around function calls\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"pcc-struct-return\00", align 1
@.str.291 = private unnamed_addr constant [51 x i8] c"Return 'short' aggregates in memory, not registers\00", align 1
@.str.292 = private unnamed_addr constant [18 x i8] c"reg-struct-return\00", align 1
@.str.293 = private unnamed_addr constant [39 x i8] c"Return 'short' aggregates in registers\00", align 1
@.str.294 = private unnamed_addr constant [15 x i8] c"delayed-branch\00", align 1
@.str.295 = private unnamed_addr constant [51 x i8] c"Attempt to fill delay slots of branch instructions\00", align 1
@.str.296 = private unnamed_addr constant [52 x i8] c"Perform the global common subexpression elimination\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"gcse-lm\00", align 1
@.str.298 = private unnamed_addr constant [69 x i8] c"Perform enhanced load motion during global subexpression elimination\00", align 1
@.str.299 = private unnamed_addr constant [8 x i8] c"gcse-sm\00", align 1
@.str.300 = private unnamed_addr constant [60 x i8] c"Perform store motion after global subexpression elimination\00", align 1
@.str.301 = private unnamed_addr constant [21 x i8] c"rerun-cse-after-loop\00", align 1
@.str.302 = private unnamed_addr constant [38 x i8] c"Run CSE pass after loop optimizations\00", align 1
@.str.303 = private unnamed_addr constant [15 x i8] c"rerun-loop-opt\00", align 1
@.str.304 = private unnamed_addr constant [29 x i8] c"Run the loop optimizer twice\00", align 1
@.str.305 = private unnamed_addr constant [27 x i8] c"delete-null-pointer-checks\00", align 1
@.str.306 = private unnamed_addr constant [35 x i8] c"Delete useless null pointer checks\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"pretend-float\00", align 1
@.str.308 = private unnamed_addr constant [52 x i8] c"Pretend that host and target use the same FP format\00", align 1
@.str.309 = private unnamed_addr constant [15 x i8] c"schedule-insns\00", align 1
@.str.310 = private unnamed_addr constant [51 x i8] c"Reschedule instructions before register allocation\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"schedule-insns2\00", align 1
@.str.312 = private unnamed_addr constant [50 x i8] c"Reschedule instructions after register allocation\00", align 1
@.str.313 = private unnamed_addr constant [17 x i8] c"sched-interblock\00", align 1
@.str.314 = private unnamed_addr constant [38 x i8] c"Enable scheduling across basic blocks\00", align 1
@.str.315 = private unnamed_addr constant [11 x i8] c"sched-spec\00", align 1
@.str.316 = private unnamed_addr constant [38 x i8] c"Allow speculative motion of non-loads\00", align 1
@.str.317 = private unnamed_addr constant [16 x i8] c"sched-spec-load\00", align 1
@.str.318 = private unnamed_addr constant [39 x i8] c"Allow speculative motion of some loads\00", align 1
@.str.319 = private unnamed_addr constant [26 x i8] c"sched-spec-load-dangerous\00", align 1
@.str.320 = private unnamed_addr constant [39 x i8] c"Allow speculative motion of more loads\00", align 1
@.str.321 = private unnamed_addr constant [17 x i8] c"branch-count-reg\00", align 1
@.str.322 = private unnamed_addr constant [52 x i8] c"Replace add,compare,branch with branch on count reg\00", align 1
@.str.323 = private unnamed_addr constant [4 x i8] c"pic\00", align 1
@.str.324 = private unnamed_addr constant [48 x i8] c"Generate position independent code, if possible\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"PIC\00", align 1
@.str.326 = private unnamed_addr constant [11 x i8] c"exceptions\00", align 1
@.str.327 = private unnamed_addr constant [26 x i8] c"Enable exception handling\00", align 1
@.str.328 = private unnamed_addr constant [14 x i8] c"unwind-tables\00", align 1
@.str.329 = private unnamed_addr constant [51 x i8] c"Just generate unwind tables for exception handling\00", align 1
@.str.330 = private unnamed_addr constant [27 x i8] c"asynchronous-unwind-tables\00", align 1
@.str.331 = private unnamed_addr constant [58 x i8] c"Generate unwind tables exact at each instruction boundary\00", align 1
@.str.332 = private unnamed_addr constant [20 x i8] c"non-call-exceptions\00", align 1
@flag_non_call_exceptions = external global i32, align 4
@.str.333 = private unnamed_addr constant [40 x i8] c"Support synchronous non-call exceptions\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"profile-arcs\00", align 1
@.str.335 = private unnamed_addr constant [40 x i8] c"Insert arc based program profiling code\00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"test-coverage\00", align 1
@.str.337 = private unnamed_addr constant [33 x i8] c"Create data files needed by gcov\00", align 1
@.str.338 = private unnamed_addr constant [21 x i8] c"branch-probabilities\00", align 1
@.str.339 = private unnamed_addr constant [51 x i8] c"Use profiling information for branch probabilities\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"reorder-blocks\00", align 1
@.str.341 = private unnamed_addr constant [47 x i8] c"Reorder basic blocks to improve code placement\00", align 1
@.str.342 = private unnamed_addr constant [17 x i8] c"rename-registers\00", align 1
@.str.343 = private unnamed_addr constant [43 x i8] c"Do the register renaming optimization pass\00", align 1
@.str.344 = private unnamed_addr constant [16 x i8] c"cprop-registers\00", align 1
@.str.345 = private unnamed_addr constant [51 x i8] c"Do the register copy-propagation optimization pass\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.347 = private unnamed_addr constant [55 x i8] c"Do not put uninitialized globals in the common section\00", align 1
@.str.348 = private unnamed_addr constant [23 x i8] c"inhibit-size-directive\00", align 1
@.str.349 = private unnamed_addr constant [33 x i8] c"Do not generate .size directives\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"function-sections\00", align 1
@.str.351 = private unnamed_addr constant [41 x i8] c"place each function into its own section\00", align 1
@.str.352 = private unnamed_addr constant [14 x i8] c"data-sections\00", align 1
@.str.353 = private unnamed_addr constant [40 x i8] c"place data items into their own section\00", align 1
@.str.354 = private unnamed_addr constant [12 x i8] c"verbose-asm\00", align 1
@.str.355 = private unnamed_addr constant [40 x i8] c"Add extra commentry to assembler output\00", align 1
@.str.356 = private unnamed_addr constant [11 x i8] c"gnu-linker\00", align 1
@.str.357 = private unnamed_addr constant [44 x i8] c"Output GNU ld formatted global initializers\00", align 1
@.str.358 = private unnamed_addr constant [37 x i8] c"Enables a register move optimization\00", align 1
@.str.359 = private unnamed_addr constant [23 x i8] c"optimize-register-move\00", align 1
@.str.360 = private unnamed_addr constant [38 x i8] c"Do the full regmove optimization pass\00", align 1
@.str.361 = private unnamed_addr constant [12 x i8] c"pack-struct\00", align 1
@.str.362 = private unnamed_addr constant [46 x i8] c"Pack structure members together without holes\00", align 1
@.str.363 = private unnamed_addr constant [12 x i8] c"stack-check\00", align 1
@.str.364 = private unnamed_addr constant [44 x i8] c"Insert stack checking code into the program\00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"argument-alias\00", align 1
@.str.366 = private unnamed_addr constant [54 x i8] c"Specify that arguments may alias each other & globals\00", align 1
@.str.367 = private unnamed_addr constant [17 x i8] c"argument-noalias\00", align 1
@.str.368 = private unnamed_addr constant [54 x i8] c"Assume arguments may alias globals but not each other\00", align 1
@.str.369 = private unnamed_addr constant [24 x i8] c"argument-noalias-global\00", align 1
@.str.370 = private unnamed_addr constant [52 x i8] c"Assume arguments do not alias each other or globals\00", align 1
@.str.371 = private unnamed_addr constant [16 x i8] c"strict-aliasing\00", align 1
@.str.372 = private unnamed_addr constant [35 x i8] c"Assume strict aliasing rules apply\00", align 1
@.str.373 = private unnamed_addr constant [12 x i8] c"align-loops\00", align 1
@.str.374 = private unnamed_addr constant [25 x i8] c"Align the start of loops\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"align-jumps\00", align 1
@.str.376 = private unnamed_addr constant [47 x i8] c"Align labels which are only reached by jumping\00", align 1
@.str.377 = private unnamed_addr constant [13 x i8] c"align-labels\00", align 1
@.str.378 = private unnamed_addr constant [17 x i8] c"Align all labels\00", align 1
@.str.379 = private unnamed_addr constant [16 x i8] c"align-functions\00", align 1
@.str.380 = private unnamed_addr constant [29 x i8] c"Align the start of functions\00", align 1
@.str.381 = private unnamed_addr constant [16 x i8] c"merge-constants\00", align 1
@.str.382 = private unnamed_addr constant [63 x i8] c"Attempt to merge identical constants accross compilation units\00", align 1
@.str.383 = private unnamed_addr constant [20 x i8] c"merge-all-constants\00", align 1
@.str.384 = private unnamed_addr constant [60 x i8] c"Attempt to merge identical constants and constant variables\00", align 1
@.str.385 = private unnamed_addr constant [16 x i8] c"dump-unnumbered\00", align 1
@flag_dump_unnumbered = external global i32, align 4
@.str.386 = private unnamed_addr constant [80 x i8] c"Suppress output of instruction numbers and line number notes in debugging dumps\00", align 1
@.str.387 = private unnamed_addr constant [21 x i8] c"instrument-functions\00", align 1
@.str.388 = private unnamed_addr constant [52 x i8] c"Instrument function entry/exit with profiling calls\00", align 1
@.str.389 = private unnamed_addr constant [25 x i8] c"Enable SSA optimizations\00", align 1
@.str.390 = private unnamed_addr constant [8 x i8] c"ssa-ccp\00", align 1
@.str.391 = private unnamed_addr constant [44 x i8] c"Enable SSA conditional constant propagation\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"ssa-dce\00", align 1
@.str.393 = private unnamed_addr constant [44 x i8] c"Enable aggressive SSA dead code elimination\00", align 1
@.str.394 = private unnamed_addr constant [19 x i8] c"leading-underscore\00", align 1
@.str.395 = private unnamed_addr constant [43 x i8] c"External symbols have a leading underscore\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.397 = private unnamed_addr constant [26 x i8] c"Process #ident directives\00", align 1
@.str.398 = private unnamed_addr constant [47 x i8] c"Enables an rtl peephole pass run before sched2\00", align 1
@.str.399 = private unnamed_addr constant [25 x i8] c"guess-branch-probability\00", align 1
@.str.400 = private unnamed_addr constant [41 x i8] c"Enables guessing of branch probabilities\00", align 1
@.str.401 = private unnamed_addr constant [11 x i8] c"math-errno\00", align 1
@.str.402 = private unnamed_addr constant [40 x i8] c"Set errno after built-in math functions\00", align 1
@.str.403 = private unnamed_addr constant [14 x i8] c"trapping-math\00", align 1
@.str.404 = private unnamed_addr constant [35 x i8] c"Floating-point operations can trap\00", align 1
@.str.405 = private unnamed_addr constant [26 x i8] c"unsafe-math-optimizations\00", align 1
@.str.406 = private unnamed_addr constant [65 x i8] c"Allow math optimizations that may violate IEEE or ANSI standards\00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"bounded-pointers\00", align 1
@.str.408 = private unnamed_addr constant [47 x i8] c"Compile pointers as triples: value, base & end\00", align 1
@.str.409 = private unnamed_addr constant [13 x i8] c"bounds-check\00", align 1
@.str.410 = private unnamed_addr constant [71 x i8] c"Generate code to check bounds before dereferencing pointers and arrays\00", align 1
@.str.411 = private unnamed_addr constant [26 x i8] c"single-precision-constant\00", align 1
@.str.412 = private unnamed_addr constant [61 x i8] c"Convert floating point constant to single precision constant\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"time-report\00", align 1
@.str.414 = private unnamed_addr constant [54 x i8] c"Report time taken by each compiler pass at end of run\00", align 1
@.str.415 = private unnamed_addr constant [11 x i8] c"mem-report\00", align 1
@.str.416 = private unnamed_addr constant [52 x i8] c"Report on permanent memory allocation at end of run\00", align 1
@.str.417 = private unnamed_addr constant [6 x i8] c"trapv\00", align 1
@.str.418 = private unnamed_addr constant [68 x i8] c"Trap for signed overflow in addition / subtraction / multiplication\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"unused-function\00", align 1
@.str.420 = private unnamed_addr constant [31 x i8] c"Warn when a function is unused\00", align 1
@.str.421 = private unnamed_addr constant [13 x i8] c"unused-label\00", align 1
@.str.422 = private unnamed_addr constant [28 x i8] c"Warn when a label is unused\00", align 1
@.str.423 = private unnamed_addr constant [17 x i8] c"unused-parameter\00", align 1
@.str.424 = private unnamed_addr constant [41 x i8] c"Warn when a function parameter is unused\00", align 1
@.str.425 = private unnamed_addr constant [16 x i8] c"unused-variable\00", align 1
@.str.426 = private unnamed_addr constant [31 x i8] c"Warn when a variable is unused\00", align 1
@.str.427 = private unnamed_addr constant [13 x i8] c"unused-value\00", align 1
@.str.428 = private unnamed_addr constant [40 x i8] c"Warn when an expression value is unused\00", align 1
@.str.429 = private unnamed_addr constant [15 x i8] c"system-headers\00", align 1
@.str.430 = private unnamed_addr constant [45 x i8] c"Do not suppress warnings from system headers\00", align 1
@.str.431 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.432 = private unnamed_addr constant [29 x i8] c"Treat all warnings as errors\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@.str.434 = private unnamed_addr constant [45 x i8] c"Warn when one local variable shadows another\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.436 = private unnamed_addr constant [55 x i8] c"Warn about enumerated switches missing a specific case\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"aggregate-return\00", align 1
@.str.438 = private unnamed_addr constant [50 x i8] c"Warn about returning structures, unions or arrays\00", align 1
@.str.439 = private unnamed_addr constant [11 x i8] c"cast-align\00", align 1
@.str.440 = private unnamed_addr constant [50 x i8] c"Warn about pointer casts which increase alignment\00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"unreachable-code\00", align 1
@.str.442 = private unnamed_addr constant [44 x i8] c"Warn about code that will never be executed\00", align 1
@.str.443 = private unnamed_addr constant [14 x i8] c"uninitialized\00", align 1
@.str.444 = private unnamed_addr constant [45 x i8] c"Warn about uninitialized automatic variables\00", align 1
@.str.445 = private unnamed_addr constant [48 x i8] c"Warn when an inlined function cannot be inlined\00", align 1
@.str.446 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.447 = private unnamed_addr constant [62 x i8] c"Warn when the packed attribute has no effect on struct layout\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"padded\00", align 1
@.str.449 = private unnamed_addr constant [54 x i8] c"Warn when padding is required to align struct members\00", align 1
@.str.450 = private unnamed_addr constant [22 x i8] c"disabled-optimization\00", align 1
@.str.451 = private unnamed_addr constant [43 x i8] c"Warn when an optimization pass is disabled\00", align 1
@.str.452 = private unnamed_addr constant [24 x i8] c"deprecated-declarations\00", align 1
@.str.453 = private unnamed_addr constant [60 x i8] c"Warn about uses of __attribute__((deprecated)) declarations\00", align 1
@.str.454 = private unnamed_addr constant [17 x i8] c"missing-noreturn\00", align 1
@.str.455 = private unnamed_addr constant [70 x i8] c"Warn about functions which might be candidates for attribute noreturn\00", align 1
@.str.456 = private unnamed_addr constant [42 x i8] c"Generate debugging info in default format\00", align 1
@.str.457 = private unnamed_addr constant [4 x i8] c"gdb\00", align 1
@.str.458 = private unnamed_addr constant [51 x i8] c"Generate debugging info in default extended format\00", align 1
@.str.459 = private unnamed_addr constant [6 x i8] c"stabs\00", align 1
@.str.460 = private unnamed_addr constant [33 x i8] c"Generate STABS format debug info\00", align 1
@.str.461 = private unnamed_addr constant [7 x i8] c"stabs+\00", align 1
@.str.462 = private unnamed_addr constant [42 x i8] c"Generate extended STABS format debug info\00", align 1
@.str.463 = private unnamed_addr constant [8 x i8] c"dwarf-2\00", align 1
@.str.464 = private unnamed_addr constant [28 x i8] c"Generate DWARF-2 debug info\00", align 1
@display_target_options.displayed = internal global i8 0, align 1
@.str.465 = private unnamed_addr constant [27 x i8] c"\0ATarget specific options:\0A\00", align 1
@.str.466 = private unnamed_addr constant [29 x i8] c"  -m%-23.23s [undocumented]\0A\00", align 1
@.str.467 = private unnamed_addr constant [17 x i8] c"  -m%-23.23s %s\0A\00", align 1
@.str.468 = private unnamed_addr constant [58 x i8] c"\0AThere are undocumented target specific options as well.\0A\00", align 1
@.str.469 = private unnamed_addr constant [44 x i8] c"  They exist, but they are not documented.\0A\00", align 1
@.str.470 = private unnamed_addr constant [57 x i8] c"%s%s%s version %s (%s)\0A%s\09compiled by GNU C version %s.\0A\00", align 1
@.str.471 = private unnamed_addr constant [2 x i8] c" \00", align 1
@version_string = external constant i8*, align 8
@.str.472 = private unnamed_addr constant [7 x i8] c"x86-64\00", align 1
@.str.473 = private unnamed_addr constant [54 x i8] c"4.2.1 Compatible Clang 3.7.0 (tags/RELEASE_370/final)\00", align 1
@.str.474 = private unnamed_addr constant [10 x i8] c"fast-math\00", align 1
@.str.475 = private unnamed_addr constant [13 x i8] c"no-fast-math\00", align 1
@.str.476 = private unnamed_addr constant [14 x i8] c"inline-limit-\00", align 1
@.str.477 = private unnamed_addr constant [14 x i8] c"inline-limit=\00", align 1
@.str.478 = private unnamed_addr constant [15 x i8] c"sched-verbose=\00", align 1
@.str.479 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.480 = private unnamed_addr constant [7 x i8] c"fixed-\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"call-used-\00", align 1
@.str.482 = private unnamed_addr constant [12 x i8] c"call-saved-\00", align 1
@.str.483 = private unnamed_addr constant [14 x i8] c"align-labels=\00", align 1
@.str.484 = private unnamed_addr constant [22 x i8] c"stack-limit-register=\00", align 1
@.str.485 = private unnamed_addr constant [32 x i8] c"unrecognized register name `%s'\00", align 1
@.str.486 = private unnamed_addr constant [20 x i8] c"stack-limit-symbol=\00", align 1
@.str.487 = private unnamed_addr constant [16 x i8] c"message-length=\00", align 1
@.str.488 = private unnamed_addr constant [27 x i8] c"diagnostics-show-location=\00", align 1
@.str.489 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.490 = private unnamed_addr constant [11 x i8] c"every-line\00", align 1
@.str.491 = private unnamed_addr constant [15 x i8] c"no-stack-limit\00", align 1
@.str.492 = private unnamed_addr constant [13 x i8] c"preprocessed\00", align 1
@decode_g_option.level = internal global i32 0, align 4
@decode_g_option.selected_debug_type = internal global i32 0, align 4
@decode_g_option.type_explicitly_set_p = internal global i32 0, align 4
@decode_g_option.debug_type_names = internal constant [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.493, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.494, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.495, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.496, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.497, i32 0, i32 0)], align 16
@.str.493 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.494 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.495 = private unnamed_addr constant [8 x i8] c"dwarf-1\00", align 1
@.str.496 = private unnamed_addr constant [6 x i8] c"xcoff\00", align 1
@.str.497 = private unnamed_addr constant [4 x i8] c"vms\00", align 1
@decode_g_option.max_debug_level = internal constant i32 3, align 4
@da = internal global %struct.anon.5* null, align 8
@.str.498 = private unnamed_addr constant [6 x i8] c"dwarf\00", align 1
@.str.499 = private unnamed_addr constant [40 x i8] c"use -gdwarf -g%d for DWARF v1, level %d\00", align 1
@.str.500 = private unnamed_addr constant [29 x i8] c"use -gdwarf-2   for DWARF v2\00", align 1
@.str.501 = private unnamed_addr constant [62 x i8] c"ignoring option `%s' due to invalid debug level specification\00", align 1
@.str.502 = private unnamed_addr constant [36 x i8] c"`%s' ignored, conflicts with `-g%s'\00", align 1
@.str.503 = private unnamed_addr constant [38 x i8] c"unrecognized gcc debugging option: %c\00", align 1
@.str.504 = private unnamed_addr constant [10 x i8] c"id-clash-\00", align 1
@.str.505 = private unnamed_addr constant [38 x i8] c"-Wid-clash-LEN is no longer supported\00", align 1
@.str.506 = private unnamed_addr constant [13 x i8] c"larger-than-\00", align 1
@.str.507 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.508 = private unnamed_addr constant [10 x i8] c"no-unused\00", align 1
@.str.509 = private unnamed_addr constant [6 x i8] c"-ansi\00", align 1
@.str.510 = private unnamed_addr constant [25 x i8] c"Compile just for ISO C89\00", align 1
@.str.511 = private unnamed_addr constant [25 x i8] c"-fallow-single-precision\00", align 1
@.str.512 = private unnamed_addr constant [54 x i8] c"Do not promote floats to double if using -traditional\00", align 1
@.str.513 = private unnamed_addr constant [7 x i8] c"-std= \00", align 1
@.str.514 = private unnamed_addr constant [28 x i8] c"Determine language standard\00", align 1
@.str.515 = private unnamed_addr constant [19 x i8] c"-fsigned-bitfields\00", align 1
@.str.516 = private unnamed_addr constant [21 x i8] c"-funsigned-bitfields\00", align 1
@.str.517 = private unnamed_addr constant [39 x i8] c"Make bit-fields by unsigned by default\00", align 1
@.str.518 = private unnamed_addr constant [22 x i8] c"-fno-signed-bitfields\00", align 1
@.str.519 = private unnamed_addr constant [24 x i8] c"-fno-unsigned-bitfields\00", align 1
@.str.520 = private unnamed_addr constant [14 x i8] c"-fsigned-char\00", align 1
@.str.521 = private unnamed_addr constant [33 x i8] c"Make 'char' be signed by default\00", align 1
@.str.522 = private unnamed_addr constant [16 x i8] c"-funsigned-char\00", align 1
@.str.523 = private unnamed_addr constant [35 x i8] c"Make 'char' be unsigned by default\00", align 1
@.str.524 = private unnamed_addr constant [17 x i8] c"-fno-signed-char\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"-fno-unsigned-char\00", align 1
@.str.526 = private unnamed_addr constant [14 x i8] c"-ftraditional\00", align 1
@.str.527 = private unnamed_addr constant [13 x i8] c"-traditional\00", align 1
@.str.528 = private unnamed_addr constant [43 x i8] c"Attempt to support traditional K&R style C\00", align 1
@.str.529 = private unnamed_addr constant [16 x i8] c"-fnotraditional\00", align 1
@.str.530 = private unnamed_addr constant [17 x i8] c"-fno-traditional\00", align 1
@.str.531 = private unnamed_addr constant [6 x i8] c"-fasm\00", align 1
@.str.532 = private unnamed_addr constant [9 x i8] c"-fno-asm\00", align 1
@.str.533 = private unnamed_addr constant [35 x i8] c"Do not recognize the 'asm' keyword\00", align 1
@.str.534 = private unnamed_addr constant [10 x i8] c"-fbuiltin\00", align 1
@.str.535 = private unnamed_addr constant [13 x i8] c"-fno-builtin\00", align 1
@.str.536 = private unnamed_addr constant [40 x i8] c"Do not recognize any built in functions\00", align 1
@.str.537 = private unnamed_addr constant [9 x i8] c"-fhosted\00", align 1
@.str.538 = private unnamed_addr constant [38 x i8] c"Assume normal C execution environment\00", align 1
@.str.539 = private unnamed_addr constant [12 x i8] c"-fno-hosted\00", align 1
@.str.540 = private unnamed_addr constant [15 x i8] c"-ffreestanding\00", align 1
@.str.541 = private unnamed_addr constant [54 x i8] c"Assume that standard libraries & main might not exist\00", align 1
@.str.542 = private unnamed_addr constant [18 x i8] c"-fno-freestanding\00", align 1
@.str.543 = private unnamed_addr constant [16 x i8] c"-fcond-mismatch\00", align 1
@.str.544 = private unnamed_addr constant [44 x i8] c"Allow different types as args of ? operator\00", align 1
@.str.545 = private unnamed_addr constant [19 x i8] c"-fno-cond-mismatch\00", align 1
@.str.546 = private unnamed_addr constant [25 x i8] c"-fdollars-in-identifiers\00", align 1
@.str.547 = private unnamed_addr constant [38 x i8] c"Allow the use of $ inside identifiers\00", align 1
@.str.548 = private unnamed_addr constant [28 x i8] c"-fno-dollars-in-identifiers\00", align 1
@.str.549 = private unnamed_addr constant [15 x i8] c"-fpreprocessed\00", align 1
@.str.550 = private unnamed_addr constant [18 x i8] c"-fno-preprocessed\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"-fshort-double\00", align 1
@.str.552 = private unnamed_addr constant [42 x i8] c"Use the same size for double as for float\00", align 1
@.str.553 = private unnamed_addr constant [18 x i8] c"-fno-short-double\00", align 1
@.str.554 = private unnamed_addr constant [14 x i8] c"-fshort-enums\00", align 1
@.str.555 = private unnamed_addr constant [47 x i8] c"Use the smallest fitting integer to hold enums\00", align 1
@.str.556 = private unnamed_addr constant [17 x i8] c"-fno-short-enums\00", align 1
@.str.557 = private unnamed_addr constant [14 x i8] c"-fshort-wchar\00", align 1
@.str.558 = private unnamed_addr constant [61 x i8] c"Override the underlying type for wchar_t to `unsigned short'\00", align 1
@.str.559 = private unnamed_addr constant [17 x i8] c"-fno-short-wchar\00", align 1
@.str.560 = private unnamed_addr constant [6 x i8] c"-Wall\00", align 1
@.str.561 = private unnamed_addr constant [29 x i8] c"Enable most warning messages\00", align 1
@.str.562 = private unnamed_addr constant [20 x i8] c"-Wbad-function-cast\00", align 1
@.str.563 = private unnamed_addr constant [51 x i8] c"Warn about casting functions to incompatible types\00", align 1
@.str.564 = private unnamed_addr constant [23 x i8] c"-Wno-bad-function-cast\00", align 1
@.str.565 = private unnamed_addr constant [22 x i8] c"-Wno-missing-noreturn\00", align 1
@.str.566 = private unnamed_addr constant [27 x i8] c"-Wmissing-format-attribute\00", align 1
@.str.567 = private unnamed_addr constant [69 x i8] c"Warn about functions which might be candidates for format attributes\00", align 1
@.str.568 = private unnamed_addr constant [30 x i8] c"-Wno-missing-format-attribute\00", align 1
@.str.569 = private unnamed_addr constant [12 x i8] c"-Wcast-qual\00", align 1
@.str.570 = private unnamed_addr constant [42 x i8] c"Warn about casts which discard qualifiers\00", align 1
@.str.571 = private unnamed_addr constant [15 x i8] c"-Wno-cast-qual\00", align 1
@.str.572 = private unnamed_addr constant [18 x i8] c"-Wchar-subscripts\00", align 1
@.str.573 = private unnamed_addr constant [43 x i8] c"Warn about subscripts whose type is 'char'\00", align 1
@.str.574 = private unnamed_addr constant [21 x i8] c"-Wno-char-subscripts\00", align 1
@.str.575 = private unnamed_addr constant [10 x i8] c"-Wcomment\00", align 1
@.str.576 = private unnamed_addr constant [37 x i8] c"Warn if nested comments are detected\00", align 1
@.str.577 = private unnamed_addr constant [13 x i8] c"-Wno-comment\00", align 1
@.str.578 = private unnamed_addr constant [11 x i8] c"-Wcomments\00", align 1
@.str.579 = private unnamed_addr constant [14 x i8] c"-Wno-comments\00", align 1
@.str.580 = private unnamed_addr constant [13 x i8] c"-Wconversion\00", align 1
@.str.581 = private unnamed_addr constant [47 x i8] c"Warn about possibly confusing type conversions\00", align 1
@.str.582 = private unnamed_addr constant [16 x i8] c"-Wno-conversion\00", align 1
@.str.583 = private unnamed_addr constant [9 x i8] c"-Wformat\00", align 1
@.str.584 = private unnamed_addr constant [58 x i8] c"Warn about printf/scanf/strftime/strfmon format anomalies\00", align 1
@.str.585 = private unnamed_addr constant [12 x i8] c"-Wno-format\00", align 1
@.str.586 = private unnamed_addr constant [13 x i8] c"-Wformat-y2k\00", align 1
@.str.587 = private unnamed_addr constant [16 x i8] c"-Wno-format-y2k\00", align 1
@.str.588 = private unnamed_addr constant [57 x i8] c"Don't warn about strftime formats yielding 2 digit years\00", align 1
@.str.589 = private unnamed_addr constant [20 x i8] c"-Wformat-extra-args\00", align 1
@.str.590 = private unnamed_addr constant [23 x i8] c"-Wno-format-extra-args\00", align 1
@.str.591 = private unnamed_addr constant [56 x i8] c"Don't warn about too many arguments to format functions\00", align 1
@.str.592 = private unnamed_addr constant [20 x i8] c"-Wformat-nonliteral\00", align 1
@.str.593 = private unnamed_addr constant [45 x i8] c"Warn about non-string-literal format strings\00", align 1
@.str.594 = private unnamed_addr constant [23 x i8] c"-Wno-format-nonliteral\00", align 1
@.str.595 = private unnamed_addr constant [18 x i8] c"-Wformat-security\00", align 1
@.str.596 = private unnamed_addr constant [60 x i8] c"Warn about possible security problems with format functions\00", align 1
@.str.597 = private unnamed_addr constant [21 x i8] c"-Wno-format-security\00", align 1
@.str.598 = private unnamed_addr constant [32 x i8] c"-Wimplicit-function-declaration\00", align 1
@.str.599 = private unnamed_addr constant [42 x i8] c"Warn about implicit function declarations\00", align 1
@.str.600 = private unnamed_addr constant [35 x i8] c"-Wno-implicit-function-declaration\00", align 1
@.str.601 = private unnamed_addr constant [38 x i8] c"-Werror-implicit-function-declaration\00", align 1
@.str.602 = private unnamed_addr constant [15 x i8] c"-Wimplicit-int\00", align 1
@.str.603 = private unnamed_addr constant [48 x i8] c"Warn when a declaration does not specify a type\00", align 1
@.str.604 = private unnamed_addr constant [18 x i8] c"-Wno-implicit-int\00", align 1
@.str.605 = private unnamed_addr constant [11 x i8] c"-Wimplicit\00", align 1
@.str.606 = private unnamed_addr constant [14 x i8] c"-Wno-implicit\00", align 1
@.str.607 = private unnamed_addr constant [9 x i8] c"-Wimport\00", align 1
@.str.608 = private unnamed_addr constant [44 x i8] c"Warn about the use of the #import directive\00", align 1
@.str.609 = private unnamed_addr constant [12 x i8] c"-Wno-import\00", align 1
@.str.610 = private unnamed_addr constant [12 x i8] c"-Wlong-long\00", align 1
@.str.611 = private unnamed_addr constant [15 x i8] c"-Wno-long-long\00", align 1
@.str.612 = private unnamed_addr constant [51 x i8] c"Do not warn about using 'long long' when -pedantic\00", align 1
@.str.613 = private unnamed_addr constant [7 x i8] c"-Wmain\00", align 1
@.str.614 = private unnamed_addr constant [43 x i8] c"Warn about suspicious declarations of main\00", align 1
@.str.615 = private unnamed_addr constant [10 x i8] c"-Wno-main\00", align 1
@.str.616 = private unnamed_addr constant [17 x i8] c"-Wmissing-braces\00", align 1
@.str.617 = private unnamed_addr constant [55 x i8] c"Warn about possibly missing braces around initializers\00", align 1
@.str.618 = private unnamed_addr constant [20 x i8] c"-Wno-missing-braces\00", align 1
@.str.619 = private unnamed_addr constant [23 x i8] c"-Wmissing-declarations\00", align 1
@.str.620 = private unnamed_addr constant [54 x i8] c"Warn about global funcs without previous declarations\00", align 1
@.str.621 = private unnamed_addr constant [26 x i8] c"-Wno-missing-declarations\00", align 1
@.str.622 = private unnamed_addr constant [21 x i8] c"-Wmissing-prototypes\00", align 1
@.str.623 = private unnamed_addr constant [43 x i8] c"Warn about global funcs without prototypes\00", align 1
@.str.624 = private unnamed_addr constant [24 x i8] c"-Wno-missing-prototypes\00", align 1
@.str.625 = private unnamed_addr constant [12 x i8] c"-Wmultichar\00", align 1
@.str.626 = private unnamed_addr constant [42 x i8] c"Warn about use of multicharacter literals\00", align 1
@.str.627 = private unnamed_addr constant [15 x i8] c"-Wno-multichar\00", align 1
@.str.628 = private unnamed_addr constant [17 x i8] c"-Wnested-externs\00", align 1
@.str.629 = private unnamed_addr constant [43 x i8] c"Warn about externs not at file scope level\00", align 1
@.str.630 = private unnamed_addr constant [20 x i8] c"-Wno-nested-externs\00", align 1
@.str.631 = private unnamed_addr constant [14 x i8] c"-Wparentheses\00", align 1
@.str.632 = private unnamed_addr constant [40 x i8] c"Warn about possible missing parentheses\00", align 1
@.str.633 = private unnamed_addr constant [17 x i8] c"-Wno-parentheses\00", align 1
@.str.634 = private unnamed_addr constant [17 x i8] c"-Wsequence-point\00", align 1
@.str.635 = private unnamed_addr constant [55 x i8] c"Warn about possible violations of sequence point rules\00", align 1
@.str.636 = private unnamed_addr constant [20 x i8] c"-Wno-sequence-point\00", align 1
@.str.637 = private unnamed_addr constant [16 x i8] c"-Wpointer-arith\00", align 1
@.str.638 = private unnamed_addr constant [39 x i8] c"Warn about function pointer arithmetic\00", align 1
@.str.639 = private unnamed_addr constant [19 x i8] c"-Wno-pointer-arith\00", align 1
@.str.640 = private unnamed_addr constant [18 x i8] c"-Wredundant-decls\00", align 1
@.str.641 = private unnamed_addr constant [52 x i8] c"Warn about multiple declarations of the same object\00", align 1
@.str.642 = private unnamed_addr constant [21 x i8] c"-Wno-redundant-decls\00", align 1
@.str.643 = private unnamed_addr constant [15 x i8] c"-Wsign-compare\00", align 1
@.str.644 = private unnamed_addr constant [39 x i8] c"Warn about signed/unsigned comparisons\00", align 1
@.str.645 = private unnamed_addr constant [18 x i8] c"-Wno-sign-compare\00", align 1
@.str.646 = private unnamed_addr constant [14 x i8] c"-Wfloat-equal\00", align 1
@.str.647 = private unnamed_addr constant [54 x i8] c"Warn about testing equality of floating point numbers\00", align 1
@.str.648 = private unnamed_addr constant [17 x i8] c"-Wno-float-equal\00", align 1
@.str.649 = private unnamed_addr constant [18 x i8] c"-Wunknown-pragmas\00", align 1
@.str.650 = private unnamed_addr constant [32 x i8] c"Warn about unrecognized pragmas\00", align 1
@.str.651 = private unnamed_addr constant [21 x i8] c"-Wno-unknown-pragmas\00", align 1
@.str.652 = private unnamed_addr constant [20 x i8] c"-Wstrict-prototypes\00", align 1
@.str.653 = private unnamed_addr constant [41 x i8] c"Warn about non-prototyped function decls\00", align 1
@.str.654 = private unnamed_addr constant [23 x i8] c"-Wno-strict-prototypes\00", align 1
@.str.655 = private unnamed_addr constant [14 x i8] c"-Wtraditional\00", align 1
@.str.656 = private unnamed_addr constant [52 x i8] c"Warn about constructs whose meaning change in ISO C\00", align 1
@.str.657 = private unnamed_addr constant [17 x i8] c"-Wno-traditional\00", align 1
@.str.658 = private unnamed_addr constant [12 x i8] c"-Wtrigraphs\00", align 1
@.str.659 = private unnamed_addr constant [36 x i8] c"Warn when trigraphs are encountered\00", align 1
@.str.660 = private unnamed_addr constant [15 x i8] c"-Wno-trigraphs\00", align 1
@.str.661 = private unnamed_addr constant [8 x i8] c"-Wundef\00", align 1
@.str.662 = private unnamed_addr constant [11 x i8] c"-Wno-undef\00", align 1
@.str.663 = private unnamed_addr constant [16 x i8] c"-Wwrite-strings\00", align 1
@.str.664 = private unnamed_addr constant [31 x i8] c"Mark strings as 'const char *'\00", align 1
@.str.665 = private unnamed_addr constant [19 x i8] c"-Wno-write-strings\00", align 1
@.str.666 = private unnamed_addr constant [51 x i8] c"this target machine does not have delayed branches\00", align 1
@.str.667 = private unnamed_addr constant [48 x i8] c"profiling does not work without a frame pointer\00", align 1
@.str.668 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.669 = private unnamed_addr constant [60 x i8] c"-f%sleading-underscore not supported on this target machine\00", align 1
@.str.670 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.671 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dbx_debug_hooks = external global %struct.gcc_debug_hooks, align 8
@dwarf2_debug_hooks = external global %struct.gcc_debug_hooks, align 8
@targetm = external global %struct.gcc_target, align 8
@.str.672 = private unnamed_addr constant [50 x i8] c"-ffunction-sections not supported for this target\00", align 1
@.str.673 = private unnamed_addr constant [46 x i8] c"-fdata-sections not supported for this target\00", align 1
@.str.674 = private unnamed_addr constant [60 x i8] c"-ffunction-sections disabled; it makes profiling impossible\00", align 1
@x86_prefetch_sse = external global i32, align 4
@.str.675 = private unnamed_addr constant [75 x i8] c"-fprefetch-loop-arrays not supported for this target (try -march switches)\00", align 1
@.str.676 = private unnamed_addr constant [49 x i8] c"-fprefetch-loop-arrays is not supported with -Os\00", align 1
@.str.677 = private unnamed_addr constant [17 x i8] c"options passed: \00", align 1
@.str.678 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.679 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.680 = private unnamed_addr constant [18 x i8] c"options enabled: \00", align 1
@.str.681 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.682 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.683 = private unnamed_addr constant [5 x i8] c"-m%s\00", align 1
@.str.684 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@tree_code_length = external global [256 x i32], align 16
@.str.685 = private unnamed_addr constant [8 x i8] c"gccdump\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.686 = private unnamed_addr constant [3 x i8] c".s\00", align 1
@.str.687 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.688 = private unnamed_addr constant [26 x i8] c"can't open %s for writing\00", align 1
@ix86_asm_dialect = external global i32, align 4
@.str.689 = private unnamed_addr constant [16 x i8] c"\09.intel_syntax\0A\00", align 1
@.str.690 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.691 = private unnamed_addr constant [19 x i8] c"%s\22GCC: (GNU) %s\22\0A\00", align 1
@.str.692 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@.str.693 = private unnamed_addr constant [20 x i8] c"error writing to %s\00", align 1
@.str.694 = private unnamed_addr constant [17 x i8] c"error closing %s\00", align 1

; Function Attrs: nounwind uwtable
define void @set_Wunused(i32 %setting) #0 {
entry:
  %setting.addr = alloca i32, align 4
  store i32 %setting, i32* %setting.addr, align 4
  %0 = load i32, i32* %setting.addr, align 4
  store i32 %0, i32* @warn_unused_function, align 4
  %1 = load i32, i32* %setting.addr, align 4
  store i32 %1, i32* @warn_unused_label, align 4
  %2 = load i32, i32* %setting.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @warn_unused_parameter, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @warn_unused_parameter, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store i32 -1, i32* @warn_unused_parameter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %4 = load i32, i32* %setting.addr, align 4
  store i32 %4, i32* @warn_unused_variable, align 4
  %5 = load i32, i32* %setting.addr, align 4
  store i32 %5, i32* @warn_unused_value, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_fast_math_flags() #0 {
entry:
  store i32 0, i32* @flag_trapping_math, align 4
  store i32 1, i32* @flag_unsafe_math_optimizations, align 4
  store i32 0, i32* @flag_errno_math, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_no_fast_math_flags() #0 {
entry:
  store i32 1, i32* @flag_trapping_math, align 4
  store i32 0, i32* @flag_unsafe_math_optimizations, align 4
  store i32 1, i32* @flag_errno_math, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @read_integral_parameter(i8* %p, i8* %pname, i32 %defval) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %pname.addr = alloca i8*, align 8
  %defval.addr = alloca i32, align 4
  %endp = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i8* %pname, i8** %pname.addr, align 8
  store i32 %defval, i32* %defval.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  store i8* %0, i8** %endp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8*, i8** %endp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %endp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and2 = and i32 %conv1, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %endp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %endp, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else, %while.cond
  %7 = load i8*, i8** %endp, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv4, 0
  br i1 %cmp, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %while.end
  %9 = load i8*, i8** %pname.addr, align 8
  %cmp7 = icmp ne i8* %9, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %10 = load i8*, i8** %pname.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  %11 = load i32, i32* %defval.addr, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.11:                                        ; preds = %while.end
  %12 = load i8*, i8** %p.addr, align 8
  %call = call i32 @atoi(i8* %12) #9
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end.10
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @error(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: noreturn nounwind uwtable
define void @do_abort() #3 {
entry:
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.do_abort, i32 0, i32 0)) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: noreturn nounwind uwtable
define void @botch(i8* %s) #3 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1602, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__FUNCTION__.botch, i32 0, i32 0)) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exact_log2_wide(i64 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64, align 8
  %log = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  store i32 0, i32* %log, align 4
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %2 = load i64, i64* %x.addr, align 8
  %3 = load i64, i64* %x.addr, align 8
  %sub = sub i64 0, %3
  %and = and i64 %2, %sub
  %cmp1 = icmp ne i64 %1, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %4, 1
  store i64 %shr, i64* %x.addr, align 8
  %cmp2 = icmp ne i64 %shr, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %log, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %log, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %log, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @floor_log2_wide(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %log = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  store i32 -1, i32* %log, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %log, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %log, align 4
  %2 = load i64, i64* %x.addr, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, i64* %x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %log, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @do_float_handler(void (i8*)* %fn, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca void (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %buf = alloca [1 x %struct.__jmp_buf_tag], align 16
  store void (i8*)* %fn, void (i8*)** %fn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %buf, i32 0, i32 0
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @set_float_handler(%struct.__jmp_buf_tag* null)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %buf, i32 0, i32 0
  call void @set_float_handler(%struct.__jmp_buf_tag* %arraydecay1)
  %0 = load void (i8*)*, void (i8*)** %fn.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i8* %1)
  call void @set_float_handler(%struct.__jmp_buf_tag* null)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

; Function Attrs: nounwind uwtable
define internal void @set_float_handler(%struct.__jmp_buf_tag* %handler) #0 {
entry:
  %handler.addr = alloca %struct.__jmp_buf_tag*, align 8
  store %struct.__jmp_buf_tag* %handler, %struct.__jmp_buf_tag** %handler.addr, align 8
  %0 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %handler.addr, align 8
  %cmp = icmp ne %struct.__jmp_buf_tag* %0, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @float_handled, align 4
  %1 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %handler.addr, align 8
  %tobool = icmp ne %struct.__jmp_buf_tag* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.__jmp_buf_tag*, %struct.__jmp_buf_tag** %handler.addr, align 8
  %3 = bitcast %struct.__jmp_buf_tag* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([1 x %struct.__jmp_buf_tag]* @float_handler to i8*), i8* %3, i64 200, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @float_handled, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @float_handler_set, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %call = call void (i32)* @signal(i32 8, void (i32)* @float_signal) #7
  store i32 1, i32* @float_handler_set, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @strip_off_ending(i8* %name, i32 %len) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %len.addr, align 4
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, i32* %len.addr, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom = sext i32 %sub to i64
  %6 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 46
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32, i32* %i, align 4
  %sub4 = sub nsw i32 %8, %9
  %idxprom5 = sext i32 %sub4 to i64
  %10 = load i8*, i8** %name.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  store i8 0, i8* %arrayidx6, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_quoted_string(%struct._IO_FILE* %asm_file, i8* %string) #0 {
entry:
  %asm_file.addr = alloca %struct._IO_FILE*, align 8
  %string.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %asm_file, %struct._IO_FILE** %asm_file.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %1 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, i8* %c, align 1
  %conv2 = sext i8 %3 to i32
  %and = and i32 %conv2, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 16
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %c, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 34
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i8, i8* %c, align 1
  %conv8 = sext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 92
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call12 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false
  %8 = load i8, i8* %c, align 1
  %conv13 = sext i8 %8 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call14 = call i32 @_IO_putc(i32 %conv13, %struct._IO_FILE* %9)
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %11 = load i8, i8* %c, align 1
  %conv15 = sext i8 %11 to i32
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %conv15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call18 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %12)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @output_file_directive(%struct._IO_FILE* %asm_file, i8* %input_name) #0 {
entry:
  %asm_file.addr = alloca %struct._IO_FILE*, align 8
  %input_name.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %na = alloca i8*, align 8
  store %struct._IO_FILE* %asm_file, %struct._IO_FILE** %asm_file.addr, align 8
  store i8* %input_name, i8** %input_name.addr, align 8
  %0 = load i8*, i8** %input_name.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i8*, i8** %input_name.addr, align 8
  %2 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %na, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %na, align 8
  %4 = load i8*, i8** %input_name.addr, align 8
  %cmp = icmp ugt i8* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %na, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 -1
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load i8*, i8** %na, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %na, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %10 = load i8*, i8** %na, align 8
  call void @output_quoted_string(%struct._IO_FILE* %9, i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %asm_file.addr, align 8
  %call6 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @wrapup_global_declarations(%union.tree_node** %vec, i32 %len) #0 {
entry:
  %vec.addr = alloca %union.tree_node**, align 8
  %len.addr = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %reconsider = alloca i32, align 4
  %output_something = alloca i32, align 4
  %needed = alloca i8, align 1
  store %union.tree_node** %vec, %union.tree_node*** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %output_something, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %union.tree_node**, %union.tree_node*** %vec.addr, align 8
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %3, i64 %idxprom
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %4, %union.tree_node** %decl, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %6 = bitcast i48* %defer_output to i64*
  %bf.load = load i64, i64* %6, align 8
  %bf.clear = and i64 %bf.load, -262145
  store i64 %bf.clear, i64* %6, align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl5 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 4
  %9 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp6 = icmp eq %union.tree_node* %9, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load void (%union.tree_node*)*, void (%union.tree_node*)** @incomplete_decl_finalize_hook, align 8
  %cmp8 = icmp ne void (%union.tree_node*)* %10, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %11 = load void (%union.tree_node*)*, void (%union.tree_node*)** @incomplete_decl_finalize_hook, align 8
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %11(%union.tree_node* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, i32* %reconsider, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.130, %do.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %len.addr, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body.11, label %for.end.132

for.body.11:                                      ; preds = %for.cond.9
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %union.tree_node**, %union.tree_node*** %vec.addr, align 8
  %arrayidx13 = getelementptr inbounds %union.tree_node*, %union.tree_node** %17, i64 %idxprom12
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  store %union.tree_node* %18, %union.tree_node** %decl, align 8
  %19 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common14 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load15 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr = lshr i32 %bf.load15, 14
  %bf.clear16 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear16, 0
  br i1 %tobool, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.11
  %20 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl17 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 5
  %21 = bitcast i48* %external_flag to i64*
  %bf.load18 = load i64, i64* %21, align 8
  %bf.lshr19 = lshr i64 %bf.load18, 8
  %bf.clear20 = and i64 %bf.lshr19, 1
  %bf.cast = trunc i64 %bf.clear20 to i32
  %tobool21 = icmp ne i32 %bf.cast, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false, %for.body.11
  br label %for.inc.130

if.end.23:                                        ; preds = %lor.lhs.false
  %22 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common24 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 34
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.84

land.lhs.true.29:                                 ; preds = %if.end.23
  %23 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common30 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load31 = load i32, i32* %static_flag, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 18
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.84

if.then.35:                                       ; preds = %land.lhs.true.29
  store i8 1, i8* %needed, align 1
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl36 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl36, i32 0, i32 14
  %25 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp37 = icmp ne %union.tree_node* %25, null
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %26 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %27 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %26(%union.tree_node* %27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %28 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl38 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %assembler_name39 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl38, i32 0, i32 14
  %29 = load %union.tree_node*, %union.tree_node** %assembler_name39, align 8
  %common40 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %static_flag41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %static_flag41, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 18
  %bf.clear44 = and i32 %bf.lshr43, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %cond.end
  br label %if.end.80

if.else:                                          ; preds = %cond.end
  %30 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl47 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %comdat_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 5
  %31 = bitcast i48* %comdat_flag to i64*
  %bf.load48 = load i64, i64* %31, align 8
  %bf.lshr49 = lshr i64 %bf.load48, 26
  %bf.clear50 = and i64 %bf.lshr49, 1
  %bf.cast51 = trunc i64 %bf.clear50 to i32
  %tobool52 = icmp ne i32 %bf.cast51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else
  store i8 0, i8* %needed, align 1
  br label %if.end.79

if.else.54:                                       ; preds = %if.else
  %32 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common55 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common55, i32 0, i32 2
  %bf.load56 = load i32, i32* %readonly_flag, align 8
  %bf.lshr57 = lshr i32 %bf.load56, 12
  %bf.clear58 = and i32 %bf.lshr57, 1
  %tobool59 = icmp ne i32 %bf.clear58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.78

land.lhs.true.60:                                 ; preds = %if.else.54
  %33 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common61 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 2
  %bf.load62 = load i32, i32* %public_flag, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 19
  %bf.clear64 = and i32 %bf.lshr63, 1
  %tobool65 = icmp ne i32 %bf.clear64, 0
  br i1 %tobool65, label %if.end.78, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %land.lhs.true.60
  %34 = load i32, i32* @optimize, align 4
  %tobool67 = icmp ne i32 %34, 0
  br i1 %tobool67, label %if.then.77, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true.66
  %35 = load i32, i32* @flag_keep_static_consts, align 4
  %tobool69 = icmp ne i32 %35, 0
  br i1 %tobool69, label %lor.lhs.false.70, label %if.then.77

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.68
  %36 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl71 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 5
  %37 = bitcast i48* %artificial_flag to i64*
  %bf.load72 = load i64, i64* %37, align 8
  %bf.lshr73 = lshr i64 %bf.load72, 22
  %bf.clear74 = and i64 %bf.lshr73, 1
  %bf.cast75 = trunc i64 %bf.clear74 to i32
  %tobool76 = icmp ne i32 %bf.cast75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false.68, %land.lhs.true.66
  store i8 0, i8* %needed, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %lor.lhs.false.70, %land.lhs.true.60, %if.else.54
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.53
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.46
  %38 = load i8, i8* %needed, align 1
  %tobool81 = trunc i8 %38 to i1
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  store i32 1, i32* %reconsider, align 4
  %39 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @rest_of_decl_compilation(%union.tree_node* %39, i8* null, i32 1, i32 1)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.29, %if.end.23
  %40 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common85 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 2
  %bf.load87 = load i32, i32* %code86, align 8
  %bf.clear88 = and i32 %bf.load87, 255
  %cmp89 = icmp eq i32 %bf.clear88, 30
  br i1 %cmp89, label %land.lhs.true.90, label %if.end.129

land.lhs.true.90:                                 ; preds = %if.end.84
  %41 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl91 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 12
  %42 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp92 = icmp ne %union.tree_node* %42, null
  br i1 %cmp92, label %land.lhs.true.93, label %if.end.129

land.lhs.true.93:                                 ; preds = %land.lhs.true.90
  %43 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl94 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl94, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %44 = load %struct.function*, %struct.function** %f, align 8
  %cmp95 = icmp ne %struct.function* %44, null
  br i1 %cmp95, label %land.lhs.true.96, label %if.end.129

land.lhs.true.96:                                 ; preds = %land.lhs.true.93
  %45 = load i32, i32* @flag_keep_inline_functions, align 4
  %tobool97 = icmp ne i32 %45, 0
  br i1 %tobool97, label %if.then.128, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.96
  %46 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common99 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %public_flag100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 2
  %bf.load101 = load i32, i32* %public_flag100, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 19
  %bf.clear103 = and i32 %bf.lshr102, 1
  %tobool104 = icmp ne i32 %bf.clear103, 0
  br i1 %tobool104, label %land.lhs.true.105, label %lor.lhs.false.113

land.lhs.true.105:                                ; preds = %lor.lhs.false.98
  %47 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl106 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %comdat_flag107 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl106, i32 0, i32 5
  %48 = bitcast i48* %comdat_flag107 to i64*
  %bf.load108 = load i64, i64* %48, align 8
  %bf.lshr109 = lshr i64 %bf.load108, 26
  %bf.clear110 = and i64 %bf.lshr109, 1
  %bf.cast111 = trunc i64 %bf.clear110 to i32
  %tobool112 = icmp ne i32 %bf.cast111, 0
  br i1 %tobool112, label %lor.lhs.false.113, label %if.then.128

lor.lhs.false.113:                                ; preds = %land.lhs.true.105, %lor.lhs.false.98
  %49 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl114 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %assembler_name115 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl114, i32 0, i32 14
  %50 = load %union.tree_node*, %union.tree_node** %assembler_name115, align 8
  %cmp116 = icmp ne %union.tree_node* %50, null
  br i1 %cmp116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %lor.lhs.false.113
  br label %cond.end.119

cond.false.118:                                   ; preds = %lor.lhs.false.113
  %51 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %52 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %51(%union.tree_node* %52)
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %53 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl120 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %assembler_name121 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl120, i32 0, i32 14
  %54 = load %union.tree_node*, %union.tree_node** %assembler_name121, align 8
  %common122 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %static_flag123 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common122, i32 0, i32 2
  %bf.load124 = load i32, i32* %static_flag123, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 18
  %bf.clear126 = and i32 %bf.lshr125, 1
  %tobool127 = icmp ne i32 %bf.clear126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %cond.end.119, %land.lhs.true.105, %land.lhs.true.96
  store i32 1, i32* %reconsider, align 4
  %55 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @output_inline_function(%union.tree_node* %55)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %cond.end.119, %land.lhs.true.93, %land.lhs.true.90, %if.end.84
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129, %if.then.22
  %56 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %56, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.9

for.end.132:                                      ; preds = %for.cond.9
  %57 = load i32, i32* %reconsider, align 4
  %tobool133 = icmp ne i32 %57, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.end.132
  store i32 1, i32* %output_something, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %for.end.132
  br label %do.cond

do.cond:                                          ; preds = %if.end.135
  %58 = load i32, i32* %reconsider, align 4
  %tobool136 = icmp ne i32 %58, 0
  br i1 %tobool136, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %59 = load i32, i32* %output_something, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define void @rest_of_decl_compilation(%union.tree_node* %decl, i8* %asmspec, i32 %top_level, i32 %at_end) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %asmspec.addr = alloca i8*, align 8
  %top_level.addr = alloca i32, align 4
  %at_end.addr = alloca i32, align 4
  %alias = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %asmspec, i8** %asmspec.addr, align 8
  store i32 %top_level, i32* %top_level.addr, align 4
  store i32 %at_end, i32* %at_end.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 16
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %alias, align 8
  %2 = load %union.tree_node*, %union.tree_node** %alias, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %alias, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %list2 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value3 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value3, align 8
  store %union.tree_node* %5, %union.tree_node** %alias, align 8
  %6 = load %union.tree_node*, %union.tree_node** %alias, align 8
  %string = bitcast %union.tree_node* %6 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %7 = load i8*, i8** %pointer, align 8
  %call4 = call %union.tree_node* @get_identifier(i8* %7)
  store %union.tree_node* %call4, %union.tree_node** %alias, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %alias, align 8
  call void @assemble_alias(%union.tree_node* %8, %union.tree_node* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 1
  %tobool5 = icmp ne i32 %bf.clear, 0
  br i1 %tobool5, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 5
  %12 = bitcast i48* %external_flag to i64*
  %bf.load7 = load i64, i64* %12, align 8
  %bf.lshr8 = lshr i64 %bf.load7, 8
  %bf.clear9 = and i64 %bf.lshr8, 1
  %bf.cast = trunc i64 %bf.clear9 to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common12 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %code, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp = icmp eq i32 %bf.clear14, 30
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %if.end
  call void @timevar_push(i32 11)
  %14 = load i8*, i8** %asmspec.addr, align 8
  %tobool16 = icmp ne i8* %14, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %16 = load i8*, i8** %asmspec.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %15, i8* %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  %17 = load i32, i32* %at_end.addr, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.27, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl21 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 5
  %19 = bitcast i48* %defer_output to i64*
  %bf.load22 = load i64, i64* %19, align 8
  %bf.lshr23 = lshr i64 %bf.load22, 18
  %bf.clear24 = and i64 %bf.lshr23, 1
  %bf.cast25 = trunc i64 %bf.clear24 to i32
  %tobool26 = icmp ne i32 %bf.cast25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.20, %if.end.18
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %21 = load i32, i32* %top_level.addr, align 4
  %22 = load i32, i32* %at_end.addr, align 4
  call void @assemble_variable(%union.tree_node* %20, i32 %21, i32 %22, i32 0)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %lor.lhs.false.20
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %24 = load %union.tree_node*, %union.tree_node** @last_assemble_variable_decl, align 8
  %cmp29 = icmp eq %union.tree_node* %23, %24
  br i1 %cmp29, label %if.then.30, label %if.end.59

if.then.30:                                       ; preds = %if.end.28
  br label %do.body

do.body:                                          ; preds = %if.then.30
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl31 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool32 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl33 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %rtl34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 17
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtl34, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %29, i8* null)
  %30 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl35 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %rtl36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl35, i32 0, i32 17
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtl36, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %28, %cond.true ], [ %31, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx38 to i8**
  %33 = load i8*, i8** %rtstr, align 8
  store i8* %33, i8** %name, align 8
  %34 = load i32, i32* @flag_inhibit_size_directive, align 4
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %if.end.58, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %35 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl40 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl40, i32 0, i32 4
  %36 = load %union.tree_node*, %union.tree_node** %size, align 8
  %tobool41 = icmp ne %union.tree_node* %36, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.58

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %37 = load i32, i32* %at_end.addr, align 4
  %tobool43 = icmp ne i32 %37, 0
  br i1 %tobool43, label %if.end.58, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %38 = load i32, i32* %top_level.addr, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.58

land.lhs.true.46:                                 ; preds = %land.lhs.true.44
  %39 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl47 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 12
  %40 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp48 = icmp eq %union.tree_node* %40, %41
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.58

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %42 = load i32, i32* @size_directive_output, align 4
  %tobool50 = icmp ne i32 %42, 0
  br i1 %tobool50, label %if.end.58, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* @size_directive_output, align 4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %45 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %44, i8* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call53 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %48 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common54 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call55 = call i64 @int_size_in_bytes(%union.tree_node* %49)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i64 %call55)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call57 = call i32 @fputc(i32 10, %struct._IO_FILE* %50)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.51, %land.lhs.true.49, %land.lhs.true.46, %land.lhs.true.44, %land.lhs.true.42, %land.lhs.true, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.58
  br label %if.end.59

if.end.59:                                        ; preds = %do.end, %if.end.28
  call void @timevar_pop(i32 11)
  br label %if.end.97

if.else:                                          ; preds = %lor.lhs.false.11
  %51 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl60 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl60, i32 0, i32 5
  %52 = bitcast i48* %regdecl_flag to i64*
  %bf.load61 = load i64, i64* %52, align 8
  %bf.lshr62 = lshr i64 %bf.load61, 10
  %bf.clear63 = and i64 %bf.lshr62, 1
  %bf.cast64 = trunc i64 %bf.clear63 to i32
  %tobool65 = icmp ne i32 %bf.cast64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.else.83

land.lhs.true.66:                                 ; preds = %if.else
  %53 = load i8*, i8** %asmspec.addr, align 8
  %cmp67 = icmp ne i8* %53, null
  br i1 %cmp67, label %if.then.68, label %if.else.83

if.then.68:                                       ; preds = %land.lhs.true.66
  %54 = load i8*, i8** %asmspec.addr, align 8
  %call69 = call i32 @decode_reg_name(i8* %54)
  %cmp70 = icmp sge i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.then.68
  %55 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl72 = bitcast %union.tree_node* %55 to %struct.tree_decl*
  %rtl73 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl72, i32 0, i32 17
  store %struct.rtx_def* null, %struct.rtx_def** %rtl73, align 8
  %56 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %57 = load i8*, i8** %asmspec.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %56, i8* %57)
  br label %if.end.82

if.else.74:                                       ; preds = %if.then.68
  %58 = load i8*, i8** %asmspec.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), i8* %58)
  %59 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl75 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %regdecl_flag76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 5
  %60 = bitcast i48* %regdecl_flag76 to i64*
  %bf.load77 = load i64, i64* %60, align 8
  %bf.clear78 = and i64 %bf.load77, -1025
  store i64 %bf.clear78, i64* %60, align 8
  %61 = load i32, i32* %top_level.addr, align 4
  %tobool79 = icmp ne i32 %61, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.else.74
  %62 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @expand_decl(%union.tree_node* %62)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.else.74
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.71
  br label %if.end.96

if.else.83:                                       ; preds = %land.lhs.true.66, %if.else
  %63 = load i32, i32* @write_symbols, align 4
  %cmp84 = icmp eq i32 %63, 1
  br i1 %cmp84, label %land.lhs.true.87, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.else.83
  %64 = load i32, i32* @write_symbols, align 4
  %cmp86 = icmp eq i32 %64, 5
  br i1 %cmp86, label %land.lhs.true.87, label %if.end.95

land.lhs.true.87:                                 ; preds = %lor.lhs.false.85, %if.else.83
  %65 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common88 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code89 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common88, i32 0, i32 2
  %bf.load90 = load i32, i32* %code89, align 8
  %bf.clear91 = and i32 %bf.load90, 255
  %cmp92 = icmp eq i32 %bf.clear91, 33
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %land.lhs.true.87
  call void @timevar_push(i32 43)
  %66 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call94 = call i32 @dbxout_symbol(%union.tree_node* %66, i32 0)
  call void @timevar_pop(i32 43)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %land.lhs.true.87, %lor.lhs.false.85
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.82
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.59
  ret void
}

declare void @output_inline_function(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @check_global_declarations(%union.tree_node** %vec, i32 %len) #0 {
entry:
  %vec.addr = alloca %union.tree_node**, align 8
  %len.addr = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  store %union.tree_node** %vec, %union.tree_node*** %vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %union.tree_node**, %union.tree_node*** %vec.addr, align 8
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %3, i64 %idxprom
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %4, %union.tree_node** %decl, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp1 = icmp eq i32 %bf.clear, 34
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load3, 18
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common6 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 14
  %bf.clear9 = and i32 %bf.lshr8, 1
  %tobool10 = icmp ne i32 %bf.clear9, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl11 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl11, i32 0, i32 17
  store %struct.rtx_def* null, %struct.rtx_def** %rtl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %for.body
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common12 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 30
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.72

land.lhs.true.17:                                 ; preds = %if.end
  %10 = load i32, i32* @warn_unused_function, align 4
  %tobool18 = icmp ne i32 %10, 0
  br i1 %tobool18, label %land.lhs.true.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl19 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl19, i32 0, i32 14
  %12 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp20 = icmp ne %union.tree_node* %12, null
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %13 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %14 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %13(%union.tree_node* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %15 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl21 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %assembler_name22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 14
  %16 = load %union.tree_node*, %union.tree_node** %assembler_name22, align 8
  %common23 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %static_flag24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load25 = load i32, i32* %static_flag24, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 18
  %bf.clear27 = and i32 %bf.lshr26, 1
  %tobool28 = icmp ne i32 %bf.clear27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.72

land.lhs.true.29:                                 ; preds = %cond.end, %land.lhs.true.17
  %17 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl30 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl30, i32 0, i32 12
  %18 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp31 = icmp eq %union.tree_node* %18, null
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.72

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %19 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl33 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 5
  %20 = bitcast i48* %external_flag to i64*
  %bf.load34 = load i64, i64* %20, align 8
  %bf.lshr35 = lshr i64 %bf.load34, 8
  %bf.clear36 = and i64 %bf.lshr35, 1
  %bf.cast = trunc i64 %bf.clear36 to i32
  %tobool37 = icmp ne i32 %bf.cast, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.72

land.lhs.true.38:                                 ; preds = %land.lhs.true.32
  %21 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl39 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 5
  %22 = bitcast i48* %artificial_flag to i64*
  %bf.load40 = load i64, i64* %22, align 8
  %bf.lshr41 = lshr i64 %bf.load40, 22
  %bf.clear42 = and i64 %bf.lshr41, 1
  %bf.cast43 = trunc i64 %bf.clear42 to i32
  %tobool44 = icmp ne i32 %bf.cast43, 0
  br i1 %tobool44, label %if.end.72, label %land.lhs.true.45

land.lhs.true.45:                                 ; preds = %land.lhs.true.38
  %23 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common46 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load47 = load i32, i32* %public_flag, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 19
  %bf.clear49 = and i32 %bf.lshr48, 1
  %tobool50 = icmp ne i32 %bf.clear49, 0
  br i1 %tobool50, label %if.end.72, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.45
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl52 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %assembler_name53 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl52, i32 0, i32 14
  %25 = load %union.tree_node*, %union.tree_node** %assembler_name53, align 8
  %cmp54 = icmp ne %union.tree_node* %25, null
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.then.51
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.then.51
  %26 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %27 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %26(%union.tree_node* %27)
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %28 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl58 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %assembler_name59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 14
  %29 = load %union.tree_node*, %union.tree_node** %assembler_name59, align 8
  %common60 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %static_flag61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 2
  %bf.load62 = load i32, i32* %static_flag61, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 18
  %bf.clear64 = and i32 %bf.lshr63, 1
  %tobool65 = icmp ne i32 %bf.clear64, 0
  br i1 %tobool65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %cond.end.57
  %30 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @pedwarn_with_decl(%union.tree_node* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.67

if.else:                                          ; preds = %cond.end.57
  %31 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.66
  %32 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common68 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %public_flag69 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 2
  %bf.load70 = load i32, i32* %public_flag69, align 8
  %bf.clear71 = and i32 %bf.load70, -524289
  %bf.set = or i32 %bf.clear71, 524288
  store i32 %bf.set, i32* %public_flag69, align 8
  %33 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @assemble_external(%union.tree_node* %33)
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.67, %land.lhs.true.45, %land.lhs.true.38, %land.lhs.true.32, %land.lhs.true.29, %cond.end, %if.end
  %34 = load i32, i32* @warn_unused_function, align 4
  %tobool73 = icmp ne i32 %34, 0
  br i1 %tobool73, label %land.lhs.true.74, label %lor.lhs.false.87

land.lhs.true.74:                                 ; preds = %if.end.72
  %35 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common75 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %code76 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common75, i32 0, i32 2
  %bf.load77 = load i32, i32* %code76, align 8
  %bf.clear78 = and i32 %bf.load77, 255
  %cmp79 = icmp eq i32 %bf.clear78, 30
  br i1 %cmp79, label %land.lhs.true.80, label %lor.lhs.false.87

land.lhs.true.80:                                 ; preds = %land.lhs.true.74
  %36 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl81 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl81, i32 0, i32 5
  %37 = bitcast i48* %inline_flag to i64*
  %bf.load82 = load i64, i64* %37, align 8
  %bf.lshr83 = lshr i64 %bf.load82, 11
  %bf.clear84 = and i64 %bf.lshr83, 1
  %bf.cast85 = trunc i64 %bf.clear84 to i32
  %tobool86 = icmp ne i32 %bf.cast85, 0
  br i1 %tobool86, label %lor.lhs.false.87, label %land.lhs.true.101

lor.lhs.false.87:                                 ; preds = %land.lhs.true.80, %land.lhs.true.74, %if.end.72
  %38 = load i32, i32* @warn_unused_variable, align 4
  %tobool88 = icmp ne i32 %38, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.151

land.lhs.true.89:                                 ; preds = %lor.lhs.false.87
  %39 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common90 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %code91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common90, i32 0, i32 2
  %bf.load92 = load i32, i32* %code91, align 8
  %bf.clear93 = and i32 %bf.load92, 255
  %cmp94 = icmp eq i32 %bf.clear93, 34
  br i1 %cmp94, label %land.lhs.true.95, label %if.end.151

land.lhs.true.95:                                 ; preds = %land.lhs.true.89
  %40 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common96 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common96, i32 0, i32 2
  %bf.load97 = load i32, i32* %readonly_flag, align 8
  %bf.lshr98 = lshr i32 %bf.load97, 12
  %bf.clear99 = and i32 %bf.lshr98, 1
  %tobool100 = icmp ne i32 %bf.clear99, 0
  br i1 %tobool100, label %if.end.151, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %land.lhs.true.95, %land.lhs.true.80
  %41 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl102 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %in_system_header_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl102, i32 0, i32 5
  %42 = bitcast i48* %in_system_header_flag to i64*
  %bf.load103 = load i64, i64* %42, align 8
  %bf.lshr104 = lshr i64 %bf.load103, 16
  %bf.clear105 = and i64 %bf.lshr104, 1
  %bf.cast106 = trunc i64 %bf.clear105 to i32
  %tobool107 = icmp ne i32 %bf.cast106, 0
  br i1 %tobool107, label %if.end.151, label %land.lhs.true.108

land.lhs.true.108:                                ; preds = %land.lhs.true.101
  %43 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl109 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %external_flag110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl109, i32 0, i32 5
  %44 = bitcast i48* %external_flag110 to i64*
  %bf.load111 = load i64, i64* %44, align 8
  %bf.lshr112 = lshr i64 %bf.load111, 8
  %bf.clear113 = and i64 %bf.lshr112, 1
  %bf.cast114 = trunc i64 %bf.clear113 to i32
  %tobool115 = icmp ne i32 %bf.cast114, 0
  br i1 %tobool115, label %if.end.151, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %land.lhs.true.108
  %45 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common117 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %public_flag118 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common117, i32 0, i32 2
  %bf.load119 = load i32, i32* %public_flag118, align 8
  %bf.lshr120 = lshr i32 %bf.load119, 19
  %bf.clear121 = and i32 %bf.lshr120, 1
  %tobool122 = icmp ne i32 %bf.clear121, 0
  br i1 %tobool122, label %if.end.151, label %land.lhs.true.123

land.lhs.true.123:                                ; preds = %land.lhs.true.116
  %46 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common124 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 2
  %bf.load125 = load i32, i32* %used_flag, align 8
  %bf.lshr126 = lshr i32 %bf.load125, 16
  %bf.clear127 = and i32 %bf.lshr126, 1
  %tobool128 = icmp ne i32 %bf.clear127, 0
  br i1 %tobool128, label %if.end.151, label %land.lhs.true.129

land.lhs.true.129:                                ; preds = %land.lhs.true.123
  %47 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common130 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %code131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 2
  %bf.load132 = load i32, i32* %code131, align 8
  %bf.clear133 = and i32 %bf.load132, 255
  %cmp134 = icmp eq i32 %bf.clear133, 30
  br i1 %cmp134, label %land.lhs.true.142, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.129
  %48 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl136 = bitcast %union.tree_node* %48 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl136, i32 0, i32 5
  %49 = bitcast i48* %regdecl_flag to i64*
  %bf.load137 = load i64, i64* %49, align 8
  %bf.lshr138 = lshr i64 %bf.load137, 10
  %bf.clear139 = and i64 %bf.lshr138, 1
  %bf.cast140 = trunc i64 %bf.clear139 to i32
  %tobool141 = icmp ne i32 %bf.cast140, 0
  br i1 %tobool141, label %if.end.151, label %land.lhs.true.142

land.lhs.true.142:                                ; preds = %lor.lhs.false.135, %land.lhs.true.129
  %50 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl143 = bitcast %union.tree_node* %50 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl143, i32 0, i32 8
  %51 = load %union.tree_node*, %union.tree_node** %name, align 8
  %common144 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %used_flag145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common144, i32 0, i32 2
  %bf.load146 = load i32, i32* %used_flag145, align 8
  %bf.lshr147 = lshr i32 %bf.load146, 16
  %bf.clear148 = and i32 %bf.lshr147, 1
  %tobool149 = icmp ne i32 %bf.clear148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %land.lhs.true.142
  %52 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true.142, %lor.lhs.false.135, %land.lhs.true.123, %land.lhs.true.116, %land.lhs.true.108, %land.lhs.true.101, %land.lhs.true.95, %land.lhs.true.89, %lor.lhs.false.87
  call void @timevar_push(i32 43)
  %53 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %global_decl = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %53, i32 0, i32 16
  %54 = load void (%union.tree_node*)*, void (%union.tree_node*)** %global_decl, align 8
  %55 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %54(%union.tree_node* %55)
  call void @timevar_pop(i32 43)
  br label %for.inc

for.inc:                                          ; preds = %if.end.151
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @pedwarn_with_decl(%union.tree_node*, i8*, ...) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

declare void @assemble_external(%union.tree_node*) #1

declare void @timevar_push(i32) #1

declare void @timevar_pop(i32) #1

; Function Attrs: nounwind uwtable
define void @push_srcloc(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %fs = alloca %struct.file_stack*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %tobool = icmp ne %struct.file_stack* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %name = getelementptr inbounds %struct.file_stack, %struct.file_stack* %2, i32 0, i32 0
  store i8* %1, i8** %name, align 8
  %3 = load i32, i32* @lineno, align 4
  %4 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %line1 = getelementptr inbounds %struct.file_stack, %struct.file_stack* %4, i32 0, i32 2
  store i32 %3, i32* %line1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias i8* @xmalloc(i64 24)
  %5 = bitcast i8* %call to %struct.file_stack*
  store %struct.file_stack* %5, %struct.file_stack** %fs, align 8
  %6 = load i8*, i8** %file.addr, align 8
  store i8* %6, i8** @input_filename, align 8
  %7 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %name2 = getelementptr inbounds %struct.file_stack, %struct.file_stack* %7, i32 0, i32 0
  store i8* %6, i8** %name2, align 8
  %8 = load i32, i32* %line.addr, align 4
  store i32 %8, i32* @lineno, align 4
  %9 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %line3 = getelementptr inbounds %struct.file_stack, %struct.file_stack* %9, i32 0, i32 2
  store i32 %8, i32* %line3, align 4
  %10 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %indent_level = getelementptr inbounds %struct.file_stack, %struct.file_stack* %10, i32 0, i32 3
  store i32 0, i32* %indent_level, align 4
  %11 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %12 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %next = getelementptr inbounds %struct.file_stack, %struct.file_stack* %12, i32 0, i32 1
  store %struct.file_stack* %11, %struct.file_stack** %next, align 8
  %13 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  store %struct.file_stack* %13, %struct.file_stack** @input_file_stack, align 8
  %14 = load i32, i32* @input_file_stack_tick, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @input_file_stack_tick, align 4
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @pop_srcloc() #0 {
entry:
  %fs = alloca %struct.file_stack*, align 8
  %0 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  store %struct.file_stack* %0, %struct.file_stack** %fs, align 8
  %1 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %next = getelementptr inbounds %struct.file_stack, %struct.file_stack* %1, i32 0, i32 1
  %2 = load %struct.file_stack*, %struct.file_stack** %next, align 8
  store %struct.file_stack* %2, %struct.file_stack** @input_file_stack, align 8
  %3 = load %struct.file_stack*, %struct.file_stack** %fs, align 8
  %4 = bitcast %struct.file_stack* %3 to i8*
  call void @free(i8* %4) #7
  %5 = load i32, i32* @input_file_stack_tick, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @input_file_stack_tick, align 4
  %6 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %tobool = icmp ne %struct.file_stack* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.pop_srcloc, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %7 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %name = getelementptr inbounds %struct.file_stack, %struct.file_stack* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  store i8* %8, i8** @input_filename, align 8
  %9 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %line = getelementptr inbounds %struct.file_stack, %struct.file_stack* %9, i32 0, i32 2
  %10 = load i32, i32* %line, align 4
  store i32 %10, i32* @lineno, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #6

declare %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare void @assemble_alias(%union.tree_node*, %union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare void @assemble_variable(%union.tree_node*, i32, i32, i32) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare i32 @decode_reg_name(i8*) #1

declare void @expand_decl(%union.tree_node*) #1

declare i32 @dbxout_symbol(%union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define void @rest_of_type_compilation(%union.tree_node* %type, i32 %toplev) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %toplev.addr = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %toplev, i32* %toplev.addr, align 4
  call void @timevar_push(i32 43)
  %0 = load i32, i32* @write_symbols, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @write_symbols, align 4
  %cmp1 = icmp eq i32 %1, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %4 = load i32, i32* %toplev.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call = call i32 @dbxout_symbol(%union.tree_node* %3, i32 %lnot.ext)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i32, i32* @write_symbols, align 4
  %cmp2 = icmp eq i32 %5, 4
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %6 = load i32, i32* @write_symbols, align 4
  %cmp4 = icmp eq i32 %6, 7
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false.3, %if.end
  %7 = load i32, i32* %toplev.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain8, align 8
  call void @dwarf2out_decl(%union.tree_node* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %land.lhs.true, %lor.lhs.false.3
  call void @timevar_pop(i32 43)
  ret void
}

declare void @dwarf2out_decl(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @rest_of_compilation(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %tem = alloca i32, align 4
  %failure = alloca i32, align 4
  %rebuild_label_notes_after_reload = alloca i32, align 4
  %register_life_up_to_date = alloca i32, align 4
  %cleanup_crossjump = alloca i32, align 4
  %inlinable = alloca i32, align 4
  %parent = alloca %union.tree_node*, align 8
  %lose = alloca i8*, align 8
  %saved_optimize = alloca i32, align 4
  %parent180 = alloca %union.tree_node*, align 8
  %save_csb = alloca i32, align 4
  %save_cfj = alloca i32, align 4
  %tem2 = alloca i32, align 4
  %loops = alloca %struct.loops, align 8
  %rebuild_jump_labels_after_combine = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %fnname = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 0, i32* %failure, align 4
  call void @timevar_push(i32 44)
  store i32 0, i32* @generating_concat_p, align 4
  %0 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @cse_not_expected, align 4
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %x_whole_function_mode_p = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 56
  %2 = bitcast i24* %x_whole_function_mode_p to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @identify_blocks()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %x_whole_function_mode_p2 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 56
  %4 = bitcast i24* %x_whole_function_mode_p2 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 18
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tobool6 = icmp ne i32 %bf.clear5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @reorder_blocks()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  call void @init_flow()
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl9 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl9, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %6 = load %struct.function*, %struct.function** %f, align 8
  %cmp = icmp eq %struct.function* %6, null
  br i1 %cmp, label %if.then.10, label %if.end.179

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %inlinable, align 4
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl11 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl11, i32 0, i32 9
  %8 = load %union.tree_node*, %union.tree_node** %context, align 8
  store %union.tree_node* %8, %union.tree_node** %parent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %9 = load %union.tree_node*, %union.tree_node** %parent, align 8
  %cmp12 = icmp ne %union.tree_node* %9, null
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %union.tree_node*, %union.tree_node** %parent, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load13 = load i32, i32* %code, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp eq i32 %bf.clear14, 30
  br i1 %cmp15, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %11 = load %union.tree_node*, %union.tree_node** %parent, align 8
  %decl16 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 5
  %12 = bitcast i48* %inline_flag to i64*
  %bf.load17 = load i64, i64* %12, align 8
  %bf.lshr18 = lshr i64 %bf.load17, 11
  %bf.clear19 = and i64 %bf.lshr18, 1
  %bf.cast = trunc i64 %bf.clear19 to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %13 = load %union.tree_node*, %union.tree_node** %parent, align 8
  %decl22 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl22, i32 0, i32 5
  %14 = bitcast i48* %external_flag to i64*
  %bf.load23 = load i64, i64* %14, align 8
  %bf.lshr24 = lshr i64 %bf.load23, 8
  %bf.clear25 = and i64 %bf.lshr24, 1
  %bf.cast26 = trunc i64 %bf.clear25 to i32
  %tobool27 = icmp ne i32 %bf.cast26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.21
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl29 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 12
  store %union.tree_node* null, %union.tree_node** %initial, align 8
  br label %exit_rest_of_compilation

if.end.30:                                        ; preds = %land.lhs.true.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %16 = load %union.tree_node*, %union.tree_node** %parent, align 8
  %call = call %union.tree_node* @get_containing_scope(%union.tree_node* %16)
  store %union.tree_node* %call, %union.tree_node** %parent, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl31 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %inline_flag32 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 5
  %18 = bitcast i48* %inline_flag32 to i64*
  %bf.load33 = load i64, i64* %18, align 8
  %bf.lshr34 = lshr i64 %bf.load33, 11
  %bf.clear35 = and i64 %bf.lshr34, 1
  %bf.cast36 = trunc i64 %bf.clear35 to i32
  %tobool37 = icmp ne i32 %bf.cast36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %lor.lhs.false

land.lhs.true.38:                                 ; preds = %for.end
  %19 = load i32, i32* @flag_no_inline, align 4
  %tobool39 = icmp ne i32 %19, 0
  br i1 %tobool39, label %lor.lhs.false, label %if.then.41

lor.lhs.false:                                    ; preds = %land.lhs.true.38, %for.end
  %20 = load i32, i32* @flag_inline_functions, align 4
  %tobool40 = icmp ne i32 %20, 0
  br i1 %tobool40, label %if.then.41, label %if.end.75

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true.38
  call void @timevar_push(i32 12)
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call42 = call i8* @function_cannot_inline_p(%union.tree_node* %21)
  store i8* %call42, i8** %lose, align 8
  call void @timevar_pop(i32 12)
  %22 = load i8*, i8** %lose, align 8
  %tobool43 = icmp ne i8* %22, null
  br i1 %tobool43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.41
  %23 = load i32, i32* @optimize, align 4
  %tobool45 = icmp ne i32 %23, 0
  br i1 %tobool45, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.then.41
  %24 = load i32, i32* @warn_inline, align 4
  %tobool47 = icmp ne i32 %24, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.57

land.lhs.true.48:                                 ; preds = %if.then.46
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl49 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %inline_flag50 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl49, i32 0, i32 5
  %26 = bitcast i48* %inline_flag50 to i64*
  %bf.load51 = load i64, i64* %26, align 8
  %bf.lshr52 = lshr i64 %bf.load51, 11
  %bf.clear53 = and i64 %bf.lshr52, 1
  %bf.cast54 = trunc i64 %bf.clear53 to i32
  %tobool55 = icmp ne i32 %bf.cast54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.48
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %28 = load i8*, i8** %lose, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %27, i8* %28)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.48, %if.then.46
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl58 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 13
  store %union.tree_node* null, %union.tree_node** %abstract_origin, align 8
  %30 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl59 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %external_flag60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 5
  %31 = bitcast i48* %external_flag60 to i64*
  %bf.load61 = load i64, i64* %31, align 8
  %bf.lshr62 = lshr i64 %bf.load61, 8
  %bf.clear63 = and i64 %bf.lshr62, 1
  %bf.cast64 = trunc i64 %bf.clear63 to i32
  %tobool65 = icmp ne i32 %bf.cast64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.57
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl67 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %initial68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 12
  store %union.tree_node* null, %union.tree_node** %initial68, align 8
  br label %exit_rest_of_compilation

if.end.69:                                        ; preds = %if.end.57
  br label %if.end.74

if.else:                                          ; preds = %lor.lhs.false.44
  %33 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl70 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %inline_flag71 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl70, i32 0, i32 5
  %34 = bitcast i48* %inline_flag71 to i64*
  %bf.load72 = load i64, i64* %34, align 8
  %bf.clear73 = and i64 %bf.load72, -2049
  %bf.set = or i64 %bf.clear73, 2048
  store i64 %bf.set, i64* %34, align 8
  store i32 1, i32* %inlinable, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else, %if.end.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %lor.lhs.false
  %call76 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call76, %struct.rtx_def** %insns, align 8
  %35 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call77 = call i32 @open_dump_file(i32 0, %union.tree_node* %35)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %if.end.75
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl80 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %u281 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl80, i32 0, i32 19
  %f82 = bitcast %union.anon.1* %u281 to %struct.function**
  %37 = load %struct.function*, %struct.function** %f82, align 8
  %tobool83 = icmp ne %struct.function* %37, null
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.then.79
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.then.79
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 0, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %39)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.75
  call void @convert_from_eh_region_ranges()
  %40 = load i32, i32* %inlinable, align 4
  %tobool88 = icmp ne i32 %40, 0
  br i1 %tobool88, label %if.then.129, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.87
  %41 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl90 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %inline_flag91 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl90, i32 0, i32 5
  %42 = bitcast i48* %inline_flag91 to i64*
  %bf.load92 = load i64, i64* %42, align 8
  %bf.lshr93 = lshr i64 %bf.load92, 11
  %bf.clear94 = and i64 %bf.lshr93, 1
  %bf.cast95 = trunc i64 %bf.clear94 to i32
  %tobool96 = icmp ne i32 %bf.cast95, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.134

land.lhs.true.97:                                 ; preds = %lor.lhs.false.89
  %43 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common98 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common98, i32 0, i32 2
  %bf.load99 = load i32, i32* %public_flag, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 19
  %bf.clear101 = and i32 %bf.lshr100, 1
  %tobool102 = icmp ne i32 %bf.clear101, 0
  br i1 %tobool102, label %lor.lhs.false.121, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %land.lhs.true.97
  %44 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common104 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 2
  %bf.load105 = load i32, i32* %addressable_flag, align 8
  %bf.lshr106 = lshr i32 %bf.load105, 10
  %bf.clear107 = and i32 %bf.lshr106, 1
  %tobool108 = icmp ne i32 %bf.clear107, 0
  br i1 %tobool108, label %lor.lhs.false.121, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %land.lhs.true.103
  %45 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl110 = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl110, i32 0, i32 14
  %46 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp111 = icmp ne %union.tree_node* %46, null
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.109
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.109
  %47 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %48 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %47(%union.tree_node* %48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %49 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl112 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %assembler_name113 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl112, i32 0, i32 14
  %50 = load %union.tree_node*, %union.tree_node** %assembler_name113, align 8
  %common114 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common114, i32 0, i32 2
  %bf.load115 = load i32, i32* %static_flag, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 18
  %bf.clear117 = and i32 %bf.lshr116, 1
  %tobool118 = icmp ne i32 %bf.clear117, 0
  br i1 %tobool118, label %lor.lhs.false.121, label %land.lhs.true.119

land.lhs.true.119:                                ; preds = %cond.end
  %51 = load i32, i32* @flag_keep_inline_functions, align 4
  %tobool120 = icmp ne i32 %51, 0
  br i1 %tobool120, label %lor.lhs.false.121, label %if.then.129

lor.lhs.false.121:                                ; preds = %land.lhs.true.119, %cond.end, %land.lhs.true.103, %land.lhs.true.97
  %52 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl122 = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %external_flag123 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl122, i32 0, i32 5
  %53 = bitcast i48* %external_flag123 to i64*
  %bf.load124 = load i64, i64* %53, align 8
  %bf.lshr125 = lshr i64 %bf.load124, 8
  %bf.clear126 = and i64 %bf.lshr125, 1
  %bf.cast127 = trunc i64 %bf.clear126 to i32
  %tobool128 = icmp ne i32 %bf.cast127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.134

if.then.129:                                      ; preds = %lor.lhs.false.121, %land.lhs.true.119, %if.end.87
  %54 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl130 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl130, i32 0, i32 5
  %55 = bitcast i48* %defer_output to i64*
  %bf.load131 = load i64, i64* %55, align 8
  %bf.clear132 = and i64 %bf.load131, -262145
  %bf.set133 = or i64 %bf.clear132, 262144
  store i64 %bf.set133, i64* %55, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.129, %lor.lhs.false.121, %lor.lhs.false.89
  %56 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl135 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %inline_flag136 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl135, i32 0, i32 5
  %57 = bitcast i48* %inline_flag136 to i64*
  %bf.load137 = load i64, i64* %57, align 8
  %bf.lshr138 = lshr i64 %bf.load137, 11
  %bf.clear139 = and i64 %bf.lshr138, 1
  %bf.cast140 = trunc i64 %bf.clear139 to i32
  %tobool141 = icmp ne i32 %bf.cast140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.134
  %58 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %deferred_inline_function = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %58, i32 0, i32 17
  %59 = load void (%union.tree_node*)*, void (%union.tree_node*)** %deferred_inline_function, align 8
  %60 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %59(%union.tree_node* %60)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.134
  %61 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl144 = bitcast %union.tree_node* %61 to %struct.tree_decl*
  %defer_output145 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl144, i32 0, i32 5
  %62 = bitcast i48* %defer_output145 to i64*
  %bf.load146 = load i64, i64* %62, align 8
  %bf.lshr147 = lshr i64 %bf.load146, 18
  %bf.clear148 = and i64 %bf.lshr147, 1
  %bf.cast149 = trunc i64 %bf.clear148 to i32
  %tobool150 = icmp ne i32 %bf.cast149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.169

if.then.151:                                      ; preds = %if.end.143
  %63 = load i32, i32* @warn_return_type, align 4
  %tobool152 = icmp ne i32 %63, 0
  br i1 %tobool152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.then.151
  %64 = load i32, i32* @optimize, align 4
  store i32 %64, i32* %saved_optimize, align 4
  store i32 0, i32* @optimize, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %65)
  call void @find_exception_handler_labels()
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call154 = call i32 @max_reg_num()
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %66, i32 %call154, %struct._IO_FILE* %67)
  %call155 = call zeroext i1 @cleanup_cfg(i32 24)
  %68 = load i32, i32* %saved_optimize, align 4
  store i32 %68, i32* @optimize, align 4
  call void @free_bb_for_insn()
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.then.151
  %call157 = call zeroext i1 @nothrow_function_p()
  %conv = zext i1 %call157 to i32
  store i32 %conv, i32* @current_function_nothrow, align 4
  %69 = load i32, i32* @current_function_nothrow, align 4
  %tobool158 = icmp ne i32 %69, 0
  br i1 %tobool158, label %if.then.159, label %if.end.164

if.then.159:                                      ; preds = %if.end.156
  %70 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common160 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %nothrow_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common160, i32 0, i32 2
  %bf.load161 = load i32, i32* %nothrow_flag, align 8
  %bf.clear162 = and i32 %bf.load161, -131073
  %bf.set163 = or i32 %bf.clear162, 131072
  store i32 %bf.set163, i32* %nothrow_flag, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.159, %if.end.156
  call void @timevar_push(i32 12)
  %71 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @save_for_inline(%union.tree_node* %71)
  call void @timevar_pop(i32 12)
  %72 = load i32, i32* %inlinable, align 4
  %73 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl165 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %u2166 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl165, i32 0, i32 19
  %f167 = bitcast %union.anon.1* %u2166 to %struct.function**
  %74 = load %struct.function*, %struct.function** %f167, align 8
  %inlinable168 = getelementptr inbounds %struct.function, %struct.function* %74, i32 0, i32 44
  store i32 %72, i32* %inlinable168, align 4
  br label %exit_rest_of_compilation

if.end.169:                                       ; preds = %if.end.143
  %75 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl170 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %external_flag171 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl170, i32 0, i32 5
  %76 = bitcast i48* %external_flag171 to i64*
  %bf.load172 = load i64, i64* %76, align 8
  %bf.lshr173 = lshr i64 %bf.load172, 8
  %bf.clear174 = and i64 %bf.lshr173, 1
  %bf.cast175 = trunc i64 %bf.clear174 to i32
  %tobool176 = icmp ne i32 %bf.cast175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.169
  br label %exit_rest_of_compilation

if.end.178:                                       ; preds = %if.end.169
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.8
  %77 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl181 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %context182 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl181, i32 0, i32 9
  %78 = load %union.tree_node*, %union.tree_node** %context182, align 8
  store %union.tree_node* %78, %union.tree_node** %parent180, align 8
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.209, %if.end.179
  %79 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  %cmp184 = icmp ne %union.tree_node* %79, null
  br i1 %cmp184, label %for.body.186, label %for.end.211

for.body.186:                                     ; preds = %for.cond.183
  %80 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  %common187 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %code188 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common187, i32 0, i32 2
  %bf.load189 = load i32, i32* %code188, align 8
  %bf.clear190 = and i32 %bf.load189, 255
  %cmp191 = icmp eq i32 %bf.clear190, 30
  br i1 %cmp191, label %if.then.193, label %if.end.208

if.then.193:                                      ; preds = %for.body.186
  %81 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  %decl194 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %assembler_name195 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl194, i32 0, i32 14
  %82 = load %union.tree_node*, %union.tree_node** %assembler_name195, align 8
  %cmp196 = icmp ne %union.tree_node* %82, null
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %if.then.193
  br label %cond.end.200

cond.false.199:                                   ; preds = %if.then.193
  %83 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %84 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  call void %83(%union.tree_node* %84)
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.198
  %85 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  %decl201 = bitcast %union.tree_node* %85 to %struct.tree_decl*
  %assembler_name202 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl201, i32 0, i32 14
  %86 = load %union.tree_node*, %union.tree_node** %assembler_name202, align 8
  %common203 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %static_flag204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common203, i32 0, i32 2
  %bf.load205 = load i32, i32* %static_flag204, align 8
  %bf.clear206 = and i32 %bf.load205, -262145
  %bf.set207 = or i32 %bf.clear206, 262144
  store i32 %bf.set207, i32* %static_flag204, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %cond.end.200, %for.body.186
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %87 = load %union.tree_node*, %union.tree_node** %parent180, align 8
  %call210 = call %union.tree_node* @get_containing_scope(%union.tree_node* %87)
  store %union.tree_node* %call210, %union.tree_node** %parent180, align 8
  br label %for.cond.183

for.end.211:                                      ; preds = %for.cond.183
  %88 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl212 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %inline_flag213 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl212, i32 0, i32 5
  %89 = bitcast i48* %inline_flag213 to i64*
  %bf.load214 = load i64, i64* %89, align 8
  %bf.lshr215 = lshr i64 %bf.load214, 11
  %bf.clear216 = and i64 %bf.lshr215, 1
  %bf.cast217 = trunc i64 %bf.clear216 to i32
  %tobool218 = icmp ne i32 %bf.cast217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %for.end.211
  %90 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %outlining_inline_function = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %90, i32 0, i32 18
  %91 = load void (%union.tree_node*)*, void (%union.tree_node*)** %outlining_inline_function, align 8
  %92 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %91(%union.tree_node* %92)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %for.end.211
  call void @remove_unnecessary_notes()
  call void @reorder_blocks()
  call void @ggc_collect()
  call void @init_function_for_compilation()
  %93 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl221 = bitcast %union.tree_node* %93 to %struct.tree_decl*
  %defer_output222 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl221, i32 0, i32 5
  %94 = bitcast i48* %defer_output222 to i64*
  %bf.load223 = load i64, i64* %94, align 8
  %bf.lshr224 = lshr i64 %bf.load223, 18
  %bf.clear225 = and i64 %bf.lshr224, 1
  %bf.cast226 = trunc i64 %bf.clear225 to i32
  %tobool227 = icmp ne i32 %bf.cast226, 0
  br i1 %tobool227, label %if.end.233, label %if.then.228

if.then.228:                                      ; preds = %if.end.220
  %95 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common229 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common229, i32 0, i32 2
  %bf.load230 = load i32, i32* %asm_written_flag, align 8
  %bf.clear231 = and i32 %bf.load230, -16385
  %bf.set232 = or i32 %bf.clear231, 16384
  store i32 %bf.set232, i32* %asm_written_flag, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.228, %if.end.220
  store i32 0, i32* @rtx_equal_function_value_matters, align 4
  %call234 = call %struct.rtx_def* @get_insns()
  call void @purge_hard_subreg_sets(%struct.rtx_def* %call234)
  %96 = load i32, i32* @rtl_dump_and_exit, align 4
  %tobool235 = icmp ne i32 %96, 0
  br i1 %tobool235, label %land.lhs.true.238, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %if.end.233
  %97 = load i32, i32* @flag_syntax_only, align 4
  %tobool237 = icmp ne i32 %97, 0
  br i1 %tobool237, label %land.lhs.true.238, label %lor.lhs.false.240

land.lhs.true.238:                                ; preds = %lor.lhs.false.236, %if.end.233
  %98 = load i32, i32* @warn_return_type, align 4
  %tobool239 = icmp ne i32 %98, 0
  br i1 %tobool239, label %lor.lhs.false.240, label %if.then.247

lor.lhs.false.240:                                ; preds = %land.lhs.true.238, %lor.lhs.false.236
  %99 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %100 = bitcast %struct.diagnostic_context* %99 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %100, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 3
  %101 = load i32, i32* %arrayidx, align 4
  %tobool241 = icmp ne i32 %101, 0
  br i1 %tobool241, label %if.then.247, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %lor.lhs.false.240
  %102 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %103 = bitcast %struct.diagnostic_context* %102 to %struct.output_buffer*
  %state243 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %103, i32 0, i32 0
  %diagnostic_count244 = getelementptr inbounds %struct.output_state, %struct.output_state* %state243, i32 0, i32 9
  %arrayidx245 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count244, i32 0, i64 2
  %104 = load i32, i32* %arrayidx245, align 4
  %tobool246 = icmp ne i32 %104, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %lor.lhs.false.242, %lor.lhs.false.240, %land.lhs.true.238
  br label %exit_rest_of_compilation

if.end.248:                                       ; preds = %lor.lhs.false.242
  %105 = load i32, i32* @flag_optimize_sibling_calls, align 4
  %tobool249 = icmp ne i32 %105, 0
  br i1 %tobool249, label %if.then.250, label %if.end.253

if.then.250:                                      ; preds = %if.end.248
  call void @timevar_push(i32 13)
  %106 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call251 = call i32 @open_dump_file(i32 1, %union.tree_node* %106)
  call void @optimize_sibling_and_tail_recursive_calls()
  %call252 = call %struct.rtx_def* @get_insns()
  call void @close_dump_file(i32 1, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %call252)
  call void @timevar_pop(i32 13)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.250, %if.end.248
  call void @find_exception_handler_labels()
  %call254 = call i32 @doing_eh(i32 0)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.259

if.then.256:                                      ; preds = %if.end.253
  call void @timevar_push(i32 13)
  %107 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call257 = call i32 @open_dump_file(i32 2, %union.tree_node* %107)
  call void @finish_eh_generation()
  %call258 = call %struct.rtx_def* @get_insns()
  call void @close_dump_file(i32 2, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %call258)
  call void @timevar_pop(i32 13)
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.256, %if.end.253
  call void @emit_initial_value_sets()
  %108 = load i32, i32* @flag_pic, align 4
  %tobool260 = icmp ne i32 %108, 0
  br i1 %tobool260, label %if.then.261, label %if.end.271

if.then.261:                                      ; preds = %if.end.259
  %109 = load %struct.function*, %struct.function** @cfun, align 8
  %profile = getelementptr inbounds %struct.function, %struct.function* %109, i32 0, i32 56
  %110 = bitcast i24* %profile to i32*
  %bf.load262 = load i32, i32* %110, align 8
  %bf.lshr263 = lshr i32 %bf.load262, 14
  %bf.clear264 = and i32 %bf.lshr263, 1
  %111 = load %struct.function*, %struct.function** @cfun, align 8
  %uses_pic_offset_table = getelementptr inbounds %struct.function, %struct.function* %111, i32 0, i32 56
  %112 = bitcast i24* %uses_pic_offset_table to i32*
  %bf.load265 = load i32, i32* %112, align 8
  %bf.lshr266 = lshr i32 %bf.load265, 21
  %bf.clear267 = and i32 %bf.lshr266, 1
  %or = or i32 %bf.clear267, %bf.clear264
  %bf.load268 = load i32, i32* %112, align 8
  %bf.value = and i32 %or, 1
  %bf.shl = shl i32 %bf.value, 21
  %bf.clear269 = and i32 %bf.load268, -2097153
  %bf.set270 = or i32 %bf.clear269, %bf.shl
  store i32 %bf.set270, i32* %112, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.261, %if.end.259
  %call272 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call272, %struct.rtx_def** %insns, align 8
  %113 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @unshare_all_rtl(%union.tree_node* %113, %struct.rtx_def* %114)
  %115 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @instantiate_virtual_regs(%union.tree_node* %115, %struct.rtx_def* %116)
  %117 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call273 = call i32 @open_dump_file(i32 3, %union.tree_node* %117)
  call void @timevar_push(i32 13)
  call void @expected_value_to_br_prob()
  %118 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call274 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %118, i32 %call274, i32 0)
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %119)
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call275 = call i32 @max_reg_num()
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %120, i32 %call275, %struct._IO_FILE* %121)
  %122 = load i32, i32* @optimize, align 4
  %tobool276 = icmp ne i32 %122, 0
  %cond = select i1 %tobool276, i32 1, i32 0
  %or277 = or i32 %cond, 16
  %call278 = call zeroext i1 @cleanup_cfg(i32 %or277)
  call void @free_bb_for_insn()
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @copy_loop_headers(%struct.rtx_def* %123)
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @purge_line_number_notes(%struct.rtx_def* %124)
  call void @timevar_pop(i32 13)
  %125 = load i32, i32* @rtl_dump_and_exit, align 4
  %tobool279 = icmp ne i32 %125, 0
  br i1 %tobool279, label %if.then.290, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %if.end.271
  %126 = load i32, i32* @flag_syntax_only, align 4
  %tobool281 = icmp ne i32 %126, 0
  br i1 %tobool281, label %if.then.290, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %lor.lhs.false.280
  %127 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl283 = bitcast %union.tree_node* %127 to %struct.tree_decl*
  %defer_output284 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl283, i32 0, i32 5
  %128 = bitcast i48* %defer_output284 to i64*
  %bf.load285 = load i64, i64* %128, align 8
  %bf.lshr286 = lshr i64 %bf.load285, 18
  %bf.clear287 = and i64 %bf.lshr286, 1
  %bf.cast288 = trunc i64 %bf.clear287 to i32
  %tobool289 = icmp ne i32 %bf.cast288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %lor.lhs.false.282, %lor.lhs.false.280, %if.end.271
  %129 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 3, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %129)
  br label %exit_rest_of_compilation

if.end.291:                                       ; preds = %lor.lhs.false.282
  %130 = load i32, i32* @optimize, align 4
  %cmp292 = icmp sgt i32 %130, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.312

land.lhs.true.294:                                ; preds = %if.end.291
  %131 = load i32, i32* @flag_ssa, align 4
  %tobool295 = icmp ne i32 %131, 0
  br i1 %tobool295, label %if.then.296, label %if.end.312

if.then.296:                                      ; preds = %land.lhs.true.294
  call void @timevar_push(i32 38)
  %132 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call297 = call i32 @open_dump_file(i32 4, %union.tree_node* %132)
  %133 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call298 = call i32 @max_reg_num()
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %133, i32 %call298, %struct._IO_FILE* %134)
  %call299 = call zeroext i1 @cleanup_cfg(i32 17)
  call void @convert_to_ssa()
  %135 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 4, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %135)
  call void @timevar_pop(i32 38)
  %136 = load i32, i32* @flag_ssa_ccp, align 4
  %tobool300 = icmp ne i32 %136, 0
  br i1 %tobool300, label %if.then.301, label %if.end.304

if.then.301:                                      ; preds = %if.then.296
  call void @timevar_push(i32 39)
  %137 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call302 = call i32 @open_dump_file(i32 5, %union.tree_node* %137)
  call void @ssa_const_prop()
  %call303 = call %struct.rtx_def* @get_insns()
  call void @close_dump_file(i32 5, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %call303)
  call void @timevar_pop(i32 39)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.301, %if.then.296
  %138 = load i32, i32* @flag_ssa_dce, align 4
  %tobool305 = icmp ne i32 %138, 0
  br i1 %tobool305, label %if.then.306, label %if.end.309

if.then.306:                                      ; preds = %if.end.304
  call void @timevar_push(i32 40)
  %139 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call307 = call i32 @open_dump_file(i32 6, %union.tree_node* %139)
  %call308 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call308, %struct.rtx_def** %insns, align 8
  call void @ssa_eliminate_dead_code()
  %140 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 6, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %140)
  call void @timevar_pop(i32 40)
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.306, %if.end.304
  call void @timevar_push(i32 41)
  %141 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call310 = call i32 @open_dump_file(i32 7, %union.tree_node* %141)
  call void @convert_from_ssa()
  %142 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call311 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %142, i32 %call311, i32 1)
  %143 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 7, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %143)
  call void @timevar_pop(i32 41)
  call void @ggc_collect()
  call void @free_bb_for_insn()
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.309, %land.lhs.true.294, %if.end.291
  call void @timevar_push(i32 13)
  %144 = load i32, i32* @optimize, align 4
  %cmp313 = icmp sgt i32 %144, 0
  br i1 %cmp313, label %if.then.315, label %if.end.324

if.then.315:                                      ; preds = %if.end.312
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call316 = call i32 @max_reg_num()
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %145, i32 %call316, %struct._IO_FILE* %146)
  %147 = load i32, i32* @flag_thread_jumps, align 4
  %tobool317 = icmp ne i32 %147, 0
  %cond318 = select i1 %tobool317, i32 64, i32 0
  %or319 = or i32 17, %cond318
  %call320 = call zeroext i1 @cleanup_cfg(i32 %or319)
  call void @timevar_push(i32 21)
  call void @if_convert(i32 0)
  call void @timevar_pop(i32 21)
  call void @free_bb_for_insn()
  %148 = load i32, i32* @flag_delete_null_pointer_checks, align 4
  %tobool321 = icmp ne i32 %148, 0
  br i1 %tobool321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.then.315
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @delete_null_pointer_checks(%struct.rtx_def* %149)
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.then.315
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.312
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @renumber_insns(%struct._IO_FILE* %150)
  call void @timevar_pop(i32 13)
  %151 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 3, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %151)
  call void @ggc_collect()
  %152 = load i32, i32* @optimize, align 4
  %cmp325 = icmp sgt i32 %152, 0
  br i1 %cmp325, label %if.then.327, label %if.end.358

if.then.327:                                      ; preds = %if.end.324
  %153 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call328 = call i32 @open_dump_file(i32 8, %union.tree_node* %153)
  call void @timevar_push(i32 14)
  %154 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call329 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %154, i32 %call329, i32 1)
  %155 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call330 = call i32 @max_reg_num()
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call331 = call i32 @cse_main(%struct.rtx_def* %155, i32 %call330, i32 0, %struct._IO_FILE* %156)
  store i32 %call331, i32* %tem, align 4
  %157 = load i32, i32* @flag_rerun_cse_after_loop, align 4
  %tobool332 = icmp ne i32 %157, 0
  br i1 %tobool332, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then.327
  %158 = load i32, i32* @flag_gcse, align 4
  %tobool333 = icmp ne i32 %158, 0
  %lnot334 = xor i1 %tobool333, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.327
  %159 = phi i1 [ false, %if.then.327 ], [ %lnot334, %land.rhs ]
  %land.ext = zext i1 %159 to i32
  store i32 %land.ext, i32* @cse_not_expected, align 4
  %160 = load i32, i32* %tem, align 4
  %tobool336 = icmp ne i32 %160, 0
  br i1 %tobool336, label %if.then.340, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %land.end
  %161 = load i32, i32* @optimize, align 4
  %cmp338 = icmp sgt i32 %161, 1
  br i1 %cmp338, label %if.then.340, label %if.end.343

if.then.340:                                      ; preds = %lor.lhs.false.337, %land.end
  call void @timevar_push(i32 13)
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %162)
  %163 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call341 = call i32 @max_reg_num()
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %163, i32 %call341, %struct._IO_FILE* %164)
  %call342 = call zeroext i1 @cleanup_cfg(i32 17)
  call void @timevar_pop(i32 13)
  call void @free_bb_for_insn()
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.340, %lor.lhs.false.337
  %165 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call344 = call i32 @max_reg_num()
  call void @delete_trivially_dead_insns(%struct.rtx_def* %165, i32 %call344, i32 0)
  %166 = load i32, i32* @flag_delete_null_pointer_checks, align 4
  %tobool345 = icmp ne i32 %166, 0
  br i1 %tobool345, label %if.then.348, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %if.end.343
  %167 = load i32, i32* @flag_thread_jumps, align 4
  %tobool347 = icmp ne i32 %167, 0
  br i1 %tobool347, label %if.then.348, label %if.end.357

if.then.348:                                      ; preds = %lor.lhs.false.346, %if.end.343
  call void @timevar_push(i32 13)
  %168 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call349 = call i32 @max_reg_num()
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %168, i32 %call349, %struct._IO_FILE* %169)
  %170 = load i32, i32* @flag_thread_jumps, align 4
  %tobool350 = icmp ne i32 %170, 0
  %cond351 = select i1 %tobool350, i32 64, i32 0
  %or352 = or i32 17, %cond351
  %call353 = call zeroext i1 @cleanup_cfg(i32 %or352)
  %171 = load i32, i32* @flag_delete_null_pointer_checks, align 4
  %tobool354 = icmp ne i32 %171, 0
  br i1 %tobool354, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.then.348
  %172 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @delete_null_pointer_checks(%struct.rtx_def* %172)
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %if.then.348
  call void @free_bb_for_insn()
  call void @timevar_pop(i32 13)
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %lor.lhs.false.346
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @renumber_insns(%struct._IO_FILE* %173)
  call void @timevar_pop(i32 14)
  %174 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 8, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %174)
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.324
  %175 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call359 = call i32 @open_dump_file(i32 9, %union.tree_node* %175)
  %176 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @purge_addressof(%struct.rtx_def* %176)
  %177 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call360 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %177, i32 %call360, i32 1)
  %178 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 9, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %178)
  call void @ggc_collect()
  %179 = load i32, i32* @optimize, align 4
  %cmp361 = icmp sgt i32 %179, 0
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.390

land.lhs.true.363:                                ; preds = %if.end.358
  %180 = load i32, i32* @flag_gcse, align 4
  %tobool364 = icmp ne i32 %180, 0
  br i1 %tobool364, label %if.then.365, label %if.end.390

if.then.365:                                      ; preds = %land.lhs.true.363
  store i32 0, i32* %tem2, align 4
  call void @timevar_push(i32 15)
  %181 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call366 = call i32 @open_dump_file(i32 10, %union.tree_node* %181)
  %182 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call367 = call i32 @max_reg_num()
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %182, i32 %call367, %struct._IO_FILE* %183)
  %call368 = call zeroext i1 @cleanup_cfg(i32 17)
  %184 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call369 = call i32 @gcse_main(%struct.rtx_def* %184, %struct._IO_FILE* %185)
  store i32 %call369, i32* %tem, align 4
  %186 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %186)
  %187 = load i32, i32* @flag_cse_skip_blocks, align 4
  store i32 %187, i32* %save_csb, align 4
  %188 = load i32, i32* @flag_cse_follow_jumps, align 4
  store i32 %188, i32* %save_cfj, align 4
  store i32 0, i32* @flag_cse_follow_jumps, align 4
  store i32 0, i32* @flag_cse_skip_blocks, align 4
  call void @free_bb_for_insn()
  %189 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool370 = icmp ne i32 %189, 0
  br i1 %tobool370, label %if.then.371, label %if.end.378

if.then.371:                                      ; preds = %if.then.365
  call void @timevar_push(i32 14)
  %190 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call372 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %190, i32 %call372, i32 1)
  %191 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call373 = call i32 @max_reg_num()
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call374 = call i32 @cse_main(%struct.rtx_def* %191, i32 %call373, i32 0, %struct._IO_FILE* %192)
  store i32 %call374, i32* %tem2, align 4
  call void @timevar_pop(i32 14)
  %193 = load i32, i32* @flag_rerun_cse_after_loop, align 4
  %tobool375 = icmp ne i32 %193, 0
  %lnot376 = xor i1 %tobool375, true
  %lnot.ext377 = zext i1 %lnot376 to i32
  store i32 %lnot.ext377, i32* @cse_not_expected, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.371, %if.then.365
  br label %while.cond

while.cond:                                       ; preds = %if.end.389, %if.end.378
  %194 = load i32, i32* %tem, align 4
  %tobool379 = icmp ne i32 %194, 0
  br i1 %tobool379, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %195 = load i32, i32* %tem2, align 4
  %tobool380 = icmp ne i32 %195, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %196 = phi i1 [ true, %while.cond ], [ %tobool380, %lor.rhs ]
  br i1 %196, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  store i32 0, i32* %tem2, align 4
  store i32 0, i32* %tem, align 4
  call void @timevar_push(i32 13)
  %197 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %197)
  %198 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call381 = call i32 @max_reg_num()
  call void @delete_trivially_dead_insns(%struct.rtx_def* %198, i32 %call381, i32 0)
  %199 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call382 = call i32 @max_reg_num()
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %199, i32 %call382, %struct._IO_FILE* %200)
  %call383 = call zeroext i1 @cleanup_cfg(i32 17)
  call void @free_bb_for_insn()
  call void @timevar_pop(i32 13)
  %201 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool384 = icmp ne i32 %201, 0
  br i1 %tobool384, label %if.then.385, label %if.end.389

if.then.385:                                      ; preds = %while.body
  call void @timevar_push(i32 14)
  %202 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call386 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %202, i32 %call386, i32 1)
  %203 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call387 = call i32 @max_reg_num()
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call388 = call i32 @cse_main(%struct.rtx_def* %203, i32 %call387, i32 0, %struct._IO_FILE* %204)
  store i32 %call388, i32* %tem2, align 4
  call void @timevar_pop(i32 14)
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.385, %while.body
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %205 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 10, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %205)
  call void @timevar_pop(i32 15)
  call void @ggc_collect()
  %206 = load i32, i32* %save_csb, align 4
  store i32 %206, i32* @flag_cse_skip_blocks, align 4
  %207 = load i32, i32* %save_cfj, align 4
  store i32 %207, i32* @flag_cse_follow_jumps, align 4
  br label %if.end.390

if.end.390:                                       ; preds = %while.end, %land.lhs.true.363, %if.end.358
  %208 = load i32, i32* @optimize, align 4
  %cmp391 = icmp sgt i32 %208, 0
  br i1 %cmp391, label %if.then.393, label %if.end.406

if.then.393:                                      ; preds = %if.end.390
  call void @timevar_push(i32 16)
  %209 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call394 = call i32 @open_dump_file(i32 11, %union.tree_node* %209)
  call void @free_bb_for_insn()
  %210 = load i32, i32* @flag_rerun_loop_opt, align 4
  %tobool395 = icmp ne i32 %210, 0
  br i1 %tobool395, label %if.then.396, label %if.end.399

if.then.396:                                      ; preds = %if.then.393
  call void @cleanup_barriers()
  %211 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @loop_optimize(%struct.rtx_def* %211, %struct._IO_FILE* %212, i32 8)
  %213 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call397 = call i32 @max_reg_num()
  call void @delete_trivially_dead_insns(%struct.rtx_def* %213, i32 %call397, i32 0)
  %214 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call398 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %214, i32 %call398, i32 1)
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.396, %if.then.393
  call void @cleanup_barriers()
  %215 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %217 = load i32, i32* @flag_unroll_loops, align 4
  %tobool400 = icmp ne i32 %217, 0
  %cond401 = select i1 %tobool400, i32 1, i32 0
  %or402 = or i32 %cond401, 2
  %218 = load i32, i32* @flag_prefetch_loop_arrays, align 4
  %tobool403 = icmp ne i32 %218, 0
  %cond404 = select i1 %tobool403, i32 4, i32 0
  %or405 = or i32 %or402, %cond404
  call void @loop_optimize(%struct.rtx_def* %215, %struct._IO_FILE* %216, i32 %or405)
  %219 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 11, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %219)
  call void @timevar_pop(i32 16)
  call void @ggc_collect()
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.399, %if.end.390
  %220 = load i32, i32* @optimize, align 4
  %cmp407 = icmp sgt i32 %220, 0
  br i1 %cmp407, label %if.then.409, label %if.end.426

if.then.409:                                      ; preds = %if.end.406
  call void @timevar_push(i32 17)
  %221 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call410 = call i32 @open_dump_file(i32 12, %union.tree_node* %221)
  %222 = load i32, i32* @flag_rerun_cse_after_loop, align 4
  %tobool411 = icmp ne i32 %222, 0
  br i1 %tobool411, label %if.then.412, label %if.end.425

if.then.412:                                      ; preds = %if.then.409
  call void @timevar_push(i32 13)
  %223 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call413 = call i32 @max_reg_num()
  call void @delete_trivially_dead_insns(%struct.rtx_def* %223, i32 %call413, i32 0)
  %224 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call414 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %224, i32 %call414, i32 0)
  call void @timevar_push(i32 21)
  %225 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call415 = call i32 @max_reg_num()
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %225, i32 %call415, %struct._IO_FILE* %226)
  %call416 = call zeroext i1 @cleanup_cfg(i32 1)
  call void @if_convert(i32 0)
  call void @timevar_pop(i32 21)
  call void @timevar_pop(i32 13)
  call void @free_bb_for_insn()
  %227 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call417 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %227, i32 %call417, i32 0)
  %228 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call418 = call i32 @max_reg_num()
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call419 = call i32 @cse_main(%struct.rtx_def* %228, i32 %call418, i32 1, %struct._IO_FILE* %229)
  store i32 %call419, i32* %tem, align 4
  %230 = load i32, i32* %tem, align 4
  %tobool420 = icmp ne i32 %230, 0
  br i1 %tobool420, label %if.then.421, label %if.end.424

if.then.421:                                      ; preds = %if.then.412
  call void @timevar_push(i32 13)
  %231 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %231)
  %232 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call422 = call i32 @max_reg_num()
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %232, i32 %call422, %struct._IO_FILE* %233)
  %call423 = call zeroext i1 @cleanup_cfg(i32 1)
  call void @free_bb_for_insn()
  call void @timevar_pop(i32 13)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.421, %if.then.412
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.409
  %234 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 12, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl, %struct.rtx_def* %234)
  call void @timevar_pop(i32 17)
  call void @ggc_collect()
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %if.end.406
  store i32 1, i32* @cse_not_expected, align 4
  call void @regclass_init()
  call void @timevar_push(i32 19)
  %235 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call427 = call i32 @open_dump_file(i32 13, %union.tree_node* %235)
  %236 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call428 = call i32 @max_reg_num()
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @find_basic_blocks(%struct.rtx_def* %236, i32 %call428, %struct._IO_FILE* %237)
  %238 = load i32, i32* @optimize, align 4
  %tobool429 = icmp ne i32 %238, 0
  %cond430 = select i1 %tobool429, i32 1, i32 0
  %239 = load i32, i32* @flag_thread_jumps, align 4
  %tobool431 = icmp ne i32 %239, 0
  %cond432 = select i1 %tobool431, i32 64, i32 0
  %or433 = or i32 %cond430, %cond432
  %call434 = call zeroext i1 @cleanup_cfg(i32 %or433)
  call void @check_function_return_warnings()
  call void @mark_constant_function()
  %240 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 13, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %240)
  %241 = load i32, i32* @profile_arc_flag, align 4
  %tobool435 = icmp ne i32 %241, 0
  br i1 %tobool435, label %if.then.440, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %if.end.426
  %242 = load i32, i32* @flag_test_coverage, align 4
  %tobool437 = icmp ne i32 %242, 0
  br i1 %tobool437, label %if.then.440, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %lor.lhs.false.436
  %243 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool439 = icmp ne i32 %243, 0
  br i1 %tobool439, label %if.then.440, label %if.end.442

if.then.440:                                      ; preds = %lor.lhs.false.438, %lor.lhs.false.436, %if.end.426
  call void @timevar_push(i32 18)
  %244 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call441 = call i32 @open_dump_file(i32 14, %union.tree_node* %244)
  call void @branch_prob()
  %245 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 14, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %245)
  call void @timevar_pop(i32 18)
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.440, %lor.lhs.false.438
  %246 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call443 = call i32 @open_dump_file(i32 15, %union.tree_node* %246)
  %247 = load i32, i32* @optimize, align 4
  %tobool444 = icmp ne i32 %247, 0
  br i1 %tobool444, label %if.then.445, label %if.end.453

if.then.445:                                      ; preds = %if.end.442
  %call446 = call i32 @flow_loops_find(%struct.loops* %loops, i32 1)
  %248 = load i32, i32* @flag_guess_branch_prob, align 4
  %tobool447 = icmp ne i32 %248, 0
  br i1 %tobool447, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %if.then.445
  call void @estimate_probability(%struct.loops* %loops)
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.448, %if.then.445
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool450 = icmp ne %struct._IO_FILE* %249, null
  br i1 %tobool450, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %if.end.449
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @flow_loops_dump(%struct.loops* %loops, %struct._IO_FILE* %250, void (%struct.loop*, %struct._IO_FILE*, i32)* null, i32 0)
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.451, %if.end.449
  call void @flow_loops_free(%struct.loops* %loops)
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.end.442
  %251 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @life_analysis(%struct.rtx_def* %251, %struct._IO_FILE* %252, i32 127)
  call void @timevar_pop(i32 19)
  store i32 1, i32* @no_new_pseudos, align 4
  %253 = load i32, i32* @warn_uninitialized, align 4
  %tobool454 = icmp ne i32 %253, 0
  br i1 %tobool454, label %if.then.457, label %lor.lhs.false.455

lor.lhs.false.455:                                ; preds = %if.end.453
  %254 = load i32, i32* @extra_warnings, align 4
  %tobool456 = icmp ne i32 %254, 0
  br i1 %tobool456, label %if.then.457, label %if.end.463

if.then.457:                                      ; preds = %lor.lhs.false.455, %if.end.453
  %255 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl458 = bitcast %union.tree_node* %255 to %struct.tree_decl*
  %initial459 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl458, i32 0, i32 12
  %256 = load %union.tree_node*, %union.tree_node** %initial459, align 8
  call void @uninitialized_vars_warning(%union.tree_node* %256)
  %257 = load i32, i32* @extra_warnings, align 4
  %tobool460 = icmp ne i32 %257, 0
  br i1 %tobool460, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %if.then.457
  call void @setjmp_args_warning()
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.461, %if.then.457
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %lor.lhs.false.455
  %258 = load i32, i32* @optimize, align 4
  %tobool464 = icmp ne i32 %258, 0
  br i1 %tobool464, label %if.then.465, label %if.end.471

if.then.465:                                      ; preds = %if.end.463
  %call466 = call i32 @initialize_uninitialized_subregs()
  %tobool467 = icmp ne i32 %call466, 0
  br i1 %tobool467, label %if.then.468, label %if.end.470

if.then.468:                                      ; preds = %if.then.465
  %call469 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call469, %struct.rtx_def** %insns, align 8
  %259 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @life_analysis(%struct.rtx_def* %259, %struct._IO_FILE* %260, i32 7)
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.468, %if.then.465
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.end.463
  %261 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 15, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %261)
  call void @ggc_collect()
  %262 = load i32, i32* @optimize, align 4
  %cmp472 = icmp sgt i32 %262, 0
  br i1 %cmp472, label %if.then.474, label %if.end.485

if.then.474:                                      ; preds = %if.end.471
  store i32 0, i32* %rebuild_jump_labels_after_combine, align 4
  call void @timevar_push(i32 20)
  %263 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call475 = call i32 @open_dump_file(i32 16, %union.tree_node* %263)
  %264 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call476 = call i32 @max_reg_num()
  %call477 = call i32 @combine_instructions(%struct.rtx_def* %264, i32 %call476)
  store i32 %call477, i32* %rebuild_jump_labels_after_combine, align 4
  %call478 = call zeroext i1 @purge_all_dead_edges(i32 1)
  %conv479 = zext i1 %call478 to i32
  %265 = load i32, i32* %rebuild_jump_labels_after_combine, align 4
  %or480 = or i32 %265, %conv479
  store i32 %or480, i32* %rebuild_jump_labels_after_combine, align 4
  %266 = load i32, i32* %rebuild_jump_labels_after_combine, align 4
  %tobool481 = icmp ne i32 %266, 0
  br i1 %tobool481, label %if.then.482, label %if.end.484

if.then.482:                                      ; preds = %if.then.474
  call void @timevar_push(i32 13)
  %267 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %267)
  call void @timevar_pop(i32 13)
  %call483 = call zeroext i1 @cleanup_cfg(i32 33)
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.482, %if.then.474
  %268 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 16, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %268)
  call void @timevar_pop(i32 20)
  call void @ggc_collect()
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.end.471
  %269 = load i32, i32* @optimize, align 4
  %cmp486 = icmp sgt i32 %269, 0
  br i1 %cmp486, label %if.then.488, label %if.end.490

if.then.488:                                      ; preds = %if.end.485
  call void @timevar_push(i32 21)
  %270 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call489 = call i32 @open_dump_file(i32 17, %union.tree_node* %270)
  store i32 0, i32* @no_new_pseudos, align 4
  call void @if_convert(i32 1)
  store i32 1, i32* @no_new_pseudos, align 4
  %271 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 17, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %271)
  call void @timevar_pop(i32 21)
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.488, %if.end.485
  %272 = load i32, i32* @optimize, align 4
  %cmp491 = icmp sgt i32 %272, 0
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.500

land.lhs.true.493:                                ; preds = %if.end.490
  %273 = load i32, i32* @flag_regmove, align 4
  %tobool494 = icmp ne i32 %273, 0
  br i1 %tobool494, label %if.then.497, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %land.lhs.true.493
  %274 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool496 = icmp ne i32 %274, 0
  br i1 %tobool496, label %if.then.497, label %if.end.500

if.then.497:                                      ; preds = %lor.lhs.false.495, %land.lhs.true.493
  call void @timevar_push(i32 22)
  %275 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call498 = call i32 @open_dump_file(i32 18, %union.tree_node* %275)
  %276 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call499 = call i32 @max_reg_num()
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @regmove_optimize(%struct.rtx_def* %276, i32 %call499, %struct._IO_FILE* %277)
  %278 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 18, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %278)
  call void @timevar_pop(i32 22)
  call void @ggc_collect()
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.497, %lor.lhs.false.495, %if.end.490
  call void @split_all_insns(i32 1)
  store i32 0, i32* %register_life_up_to_date, align 4
  call void @timevar_push(i32 23)
  store i32 0, i32* @no_new_pseudos, align 4
  %call501 = call i32 @optimize_mode_switching(%struct._IO_FILE* null)
  %tobool502 = icmp ne i32 %call501, 0
  br i1 %tobool502, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.end.500
  store i32 1, i32* %register_life_up_to_date, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %if.end.500
  store i32 1, i32* @no_new_pseudos, align 4
  call void @timevar_pop(i32 23)
  call void @timevar_push(i32 24)
  %279 = load i32, i32* @optimize, align 4
  %cmp505 = icmp sgt i32 %279, 0
  br i1 %cmp505, label %land.lhs.true.507, label %if.end.511

land.lhs.true.507:                                ; preds = %if.end.504
  %280 = load i32, i32* @flag_schedule_insns, align 4
  %tobool508 = icmp ne i32 %280, 0
  br i1 %tobool508, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %land.lhs.true.507
  %281 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call510 = call i32 @open_dump_file(i32 19, %union.tree_node* %281)
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @schedule_insns(%struct._IO_FILE* %282)
  %283 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 19, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %283)
  store i32 1, i32* %register_life_up_to_date, align 4
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.509, %land.lhs.true.507, %if.end.504
  call void @timevar_pop(i32 24)
  call void @ggc_collect()
  %call512 = call i32 @leaf_function_p()
  store i32 %call512, i32* @current_function_is_leaf, align 4
  call void @timevar_push(i32 25)
  %284 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call513 = call i32 @open_dump_file(i32 20, %union.tree_node* %284)
  %285 = load i32, i32* %register_life_up_to_date, align 4
  %tobool514 = icmp ne i32 %285, 0
  br i1 %tobool514, label %if.end.519, label %if.then.515

if.then.515:                                      ; preds = %if.end.511
  %286 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %287 = load i32, i32* @optimize_size, align 4
  %tobool516 = icmp ne i32 %287, 0
  %lnot517 = xor i1 %tobool516, true
  %lnot.ext518 = zext i1 %lnot517 to i32
  call void @recompute_reg_usage(%struct.rtx_def* %286, i32 %lnot.ext518)
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.515, %if.end.511
  %288 = load i32, i32* @max_regno, align 4
  %conv520 = sext i32 %288 to i64
  call void @allocate_reg_info(i64 %conv520, i32 0, i32 1)
  %289 = load i32, i32* @max_regno, align 4
  %conv521 = sext i32 %289 to i64
  %call522 = call noalias i8* @xcalloc(i64 %conv521, i64 8)
  %290 = bitcast i8* %call522 to %struct.rtx_def**
  store %struct.rtx_def** %290, %struct.rtx_def*** @reg_equiv_memory_loc, align 8
  %291 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_memory_loc, align 8
  call void @allocate_initial_values(%struct.rtx_def** %291)
  %292 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call523 = call i32 @max_reg_num()
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @regclass(%struct.rtx_def* %292, i32 %call523, %struct._IO_FILE* %293)
  %call524 = call i32 @local_alloc()
  store i32 %call524, i32* %rebuild_label_notes_after_reload, align 4
  call void @timevar_pop(i32 25)
  %294 = load i8, i8* getelementptr inbounds ([32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 20, i32 3), align 1
  %tobool525 = icmp ne i8 %294, 0
  br i1 %tobool525, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.end.519
  call void @timevar_push(i32 2)
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_flow_info(%struct._IO_FILE* %295)
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_local_alloc(%struct._IO_FILE* %296)
  %297 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 20, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %297)
  call void @timevar_pop(i32 2)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.526, %if.end.519
  call void @ggc_collect()
  call void @timevar_push(i32 26)
  %298 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call528 = call i32 @open_dump_file(i32 21, %union.tree_node* %298)
  %299 = load i32, i32* @optimize, align 4
  %tobool529 = icmp ne i32 %299, 0
  br i1 %tobool529, label %if.then.530, label %if.else.532

if.then.530:                                      ; preds = %if.end.527
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call531 = call i32 @global_alloc(%struct._IO_FILE* %300)
  store i32 %call531, i32* %failure, align 4
  br label %if.end.534

if.else.532:                                      ; preds = %if.end.527
  %301 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @build_insn_chain(%struct.rtx_def* %301)
  %302 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call533 = call i32 @reload(%struct.rtx_def* %302, i32 0)
  store i32 %call533, i32* %failure, align 4
  br label %if.end.534

if.end.534:                                       ; preds = %if.else.532, %if.then.530
  call void @timevar_pop(i32 26)
  %303 = load i8, i8* getelementptr inbounds ([32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 21, i32 3), align 1
  %tobool535 = icmp ne i8 %303, 0
  br i1 %tobool535, label %if.then.536, label %if.end.537

if.then.536:                                      ; preds = %if.end.534
  call void @timevar_push(i32 2)
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_global_regs(%struct._IO_FILE* %304)
  %305 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 21, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %305)
  call void @timevar_pop(i32 2)
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.536, %if.end.534
  %306 = load i32, i32* %failure, align 4
  %tobool538 = icmp ne i32 %306, 0
  br i1 %tobool538, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %if.end.537
  br label %exit_rest_of_compilation

if.end.540:                                       ; preds = %if.end.537
  call void @ggc_collect()
  %307 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call541 = call i32 @open_dump_file(i32 22, %union.tree_node* %307)
  %308 = load i32, i32* @optimize, align 4
  %cmp542 = icmp sgt i32 %308, 0
  br i1 %cmp542, label %if.then.544, label %if.end.545

if.then.544:                                      ; preds = %if.end.540
  call void @timevar_push(i32 27)
  %309 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @reload_cse_regs(%struct.rtx_def* %309)
  call void @timevar_pop(i32 27)
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.544, %if.end.540
  %310 = load i32, i32* %rebuild_label_notes_after_reload, align 4
  %tobool546 = icmp ne i32 %310, 0
  br i1 %tobool546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %if.end.545
  call void @timevar_push(i32 13)
  %311 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %311)
  call void @timevar_pop(i32 13)
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.547, %if.end.545
  %312 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 22, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %312)
  call void @timevar_push(i32 28)
  %313 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call549 = call i32 @open_dump_file(i32 23, %union.tree_node* %313)
  %314 = load i32, i32* @optimize, align 4
  %cmp550 = icmp sgt i32 %314, 0
  br i1 %cmp550, label %if.then.552, label %if.end.553

if.then.552:                                      ; preds = %if.end.548
  call void @split_all_insns(i32 0)
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.552, %if.end.548
  %315 = load i32, i32* @optimize, align 4
  %tobool554 = icmp ne i32 %315, 0
  %cond555 = select i1 %tobool554, i32 1, i32 0
  %call556 = call zeroext i1 @cleanup_cfg(i32 %cond555)
  %316 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @thread_prologue_and_epilogue_insns(%struct.rtx_def* %316)
  store i32 2, i32* %cleanup_crossjump, align 4
  %317 = load i32, i32* @n_basic_blocks, align 4
  %cmp557 = icmp sgt i32 %317, 1000
  br i1 %cmp557, label %land.lhs.true.559, label %if.end.569

land.lhs.true.559:                                ; preds = %if.end.553
  %318 = load i32, i32* @n_edges, align 4
  %319 = load i32, i32* @n_basic_blocks, align 4
  %div = sdiv i32 %318, %319
  %cmp560 = icmp sge i32 %div, 20
  br i1 %cmp560, label %if.then.562, label %if.end.569

if.then.562:                                      ; preds = %land.lhs.true.559
  %320 = load i32, i32* @optimize, align 4
  %tobool563 = icmp ne i32 %320, 0
  br i1 %tobool563, label %land.lhs.true.564, label %if.end.568

land.lhs.true.564:                                ; preds = %if.then.562
  %321 = load i32, i32* @warn_disabled_optimization, align 4
  %tobool565 = icmp ne i32 %321, 0
  br i1 %tobool565, label %if.then.566, label %if.end.568

if.then.566:                                      ; preds = %land.lhs.true.564
  %322 = load i32, i32* @n_basic_blocks, align 4
  %323 = load i32, i32* @n_edges, align 4
  %324 = load i32, i32* @n_basic_blocks, align 4
  %div567 = sdiv i32 %323, %324
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i32 0, i32 0), i32 %322, i32 %div567)
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.566, %land.lhs.true.564, %if.then.562
  store i32 0, i32* %cleanup_crossjump, align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.end.568, %land.lhs.true.559, %if.end.553
  %325 = load i32, i32* @optimize, align 4
  %tobool570 = icmp ne i32 %325, 0
  br i1 %tobool570, label %if.then.571, label %if.end.574

if.then.571:                                      ; preds = %if.end.569
  %326 = load i32, i32* %cleanup_crossjump, align 4
  %or572 = or i32 1, %326
  %call573 = call zeroext i1 @cleanup_cfg(i32 %or572)
  %327 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @life_analysis(%struct.rtx_def* %327, %struct._IO_FILE* %328, i32 127)
  call void @combine_stack_adjustments()
  call void @ggc_collect()
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.571, %if.end.569
  store i32 1, i32* @flow2_completed, align 4
  %329 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 23, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %329)
  call void @timevar_pop(i32 28)
  %330 = load i32, i32* @optimize, align 4
  %cmp575 = icmp sgt i32 %330, 0
  br i1 %cmp575, label %land.lhs.true.577, label %if.end.581

land.lhs.true.577:                                ; preds = %if.end.574
  %331 = load i32, i32* @flag_peephole2, align 4
  %tobool578 = icmp ne i32 %331, 0
  br i1 %tobool578, label %if.then.579, label %if.end.581

if.then.579:                                      ; preds = %land.lhs.true.577
  call void @timevar_push(i32 30)
  %332 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call580 = call i32 @open_dump_file(i32 24, %union.tree_node* %332)
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @peephole2_optimize(%struct._IO_FILE* %333)
  %334 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 24, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %334)
  call void @timevar_pop(i32 30)
  br label %if.end.581

if.end.581:                                       ; preds = %if.then.579, %land.lhs.true.577, %if.end.574
  %335 = load i32, i32* @optimize, align 4
  %cmp582 = icmp sgt i32 %335, 0
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.596

land.lhs.true.584:                                ; preds = %if.end.581
  %336 = load i32, i32* @flag_rename_registers, align 4
  %tobool585 = icmp ne i32 %336, 0
  br i1 %tobool585, label %if.then.588, label %lor.lhs.false.586

lor.lhs.false.586:                                ; preds = %land.lhs.true.584
  %337 = load i32, i32* @flag_cprop_registers, align 4
  %tobool587 = icmp ne i32 %337, 0
  br i1 %tobool587, label %if.then.588, label %if.end.596

if.then.588:                                      ; preds = %lor.lhs.false.586, %land.lhs.true.584
  call void @timevar_push(i32 31)
  %338 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call589 = call i32 @open_dump_file(i32 25, %union.tree_node* %338)
  %339 = load i32, i32* @flag_rename_registers, align 4
  %tobool590 = icmp ne i32 %339, 0
  br i1 %tobool590, label %if.then.591, label %if.end.592

if.then.591:                                      ; preds = %if.then.588
  call void @regrename_optimize()
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.591, %if.then.588
  %340 = load i32, i32* @flag_cprop_registers, align 4
  %tobool593 = icmp ne i32 %340, 0
  br i1 %tobool593, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %if.end.592
  call void @copyprop_hardreg_forward()
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.594, %if.end.592
  %341 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 25, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %341)
  call void @timevar_pop(i32 31)
  br label %if.end.596

if.end.596:                                       ; preds = %if.end.595, %lor.lhs.false.586, %if.end.581
  %342 = load i32, i32* @optimize, align 4
  %cmp597 = icmp sgt i32 %342, 0
  br i1 %cmp597, label %if.then.599, label %if.end.601

if.then.599:                                      ; preds = %if.end.596
  call void @timevar_push(i32 29)
  %343 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call600 = call i32 @open_dump_file(i32 26, %union.tree_node* %343)
  call void @if_convert(i32 1)
  %344 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 26, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %344)
  call void @timevar_pop(i32 29)
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.599, %if.end.596
  %345 = load i32, i32* @optimize, align 4
  %tobool602 = icmp ne i32 %345, 0
  br i1 %tobool602, label %if.then.603, label %if.end.604

if.then.603:                                      ; preds = %if.end.601
  call void @split_all_insns(i32 1)
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.603, %if.end.601
  %346 = load i32, i32* @optimize, align 4
  %cmp605 = icmp sgt i32 %346, 0
  br i1 %cmp605, label %land.lhs.true.607, label %if.end.611

land.lhs.true.607:                                ; preds = %if.end.604
  %347 = load i32, i32* @flag_schedule_insns_after_reload, align 4
  %tobool608 = icmp ne i32 %347, 0
  br i1 %tobool608, label %if.then.609, label %if.end.611

if.then.609:                                      ; preds = %land.lhs.true.607
  call void @timevar_push(i32 32)
  %348 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call610 = call i32 @open_dump_file(i32 27, %union.tree_node* %348)
  call void @split_all_insns(i32 1)
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @schedule_insns(%struct._IO_FILE* %349)
  %350 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 27, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %350)
  call void @timevar_pop(i32 32)
  call void @ggc_collect()
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.609, %land.lhs.true.607, %if.end.604
  call void @timevar_push(i32 37)
  %351 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call612 = call i32 @open_dump_file(i32 28, %union.tree_node* %351)
  %352 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @reg_to_stack(%struct.rtx_def* %352, %struct._IO_FILE* %353)
  %354 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 28, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %354)
  call void @timevar_pop(i32 37)
  call void @ggc_collect()
  %355 = load i32, i32* @optimize, align 4
  %cmp613 = icmp sgt i32 %355, 0
  br i1 %cmp613, label %if.then.615, label %if.end.622

if.then.615:                                      ; preds = %if.end.611
  call void @timevar_push(i32 35)
  %356 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call616 = call i32 @open_dump_file(i32 29, %union.tree_node* %356)
  %call617 = call zeroext i1 @cleanup_cfg(i32 5)
  %357 = load i32, i32* @flag_reorder_blocks, align 4
  %tobool618 = icmp ne i32 %357, 0
  br i1 %tobool618, label %if.then.619, label %if.end.621

if.then.619:                                      ; preds = %if.then.615
  call void @reorder_basic_blocks()
  %call620 = call zeroext i1 @cleanup_cfg(i32 5)
  br label %if.end.621

if.end.621:                                       ; preds = %if.then.619, %if.then.615
  %358 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @close_dump_file(i32 29, void (%struct._IO_FILE*, %struct.rtx_def*)* @print_rtl_with_bb, %struct.rtx_def* %358)
  call void @timevar_pop(i32 35)
  br label %if.end.622

if.end.622:                                       ; preds = %if.end.621, %if.end.611
  call void @compute_alignments()
  call void @free_bb_for_insn()
  %359 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @purge_line_number_notes(%struct.rtx_def* %359)
  call void @cleanup_barriers()
  call void @convert_to_eh_region_ranges()
  call void @timevar_push(i32 36)
  %call623 = call %struct.rtx_def* @get_insns()
  call void @shorten_branches(%struct.rtx_def* %call623)
  call void @timevar_pop(i32 36)
  %call624 = call zeroext i1 @nothrow_function_p()
  %conv625 = zext i1 %call624 to i32
  store i32 %conv625, i32* @current_function_nothrow, align 4
  %360 = load i32, i32* @current_function_nothrow, align 4
  %tobool626 = icmp ne i32 %360, 0
  br i1 %tobool626, label %if.then.627, label %if.end.633

if.then.627:                                      ; preds = %if.end.622
  %361 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common628 = bitcast %union.tree_node* %361 to %struct.tree_common*
  %nothrow_flag629 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common628, i32 0, i32 2
  %bf.load630 = load i32, i32* %nothrow_flag629, align 8
  %bf.clear631 = and i32 %bf.load630, -131073
  %bf.set632 = or i32 %bf.clear631, 131072
  store i32 %bf.set632, i32* %nothrow_flag629, align 8
  br label %if.end.633

if.end.633:                                       ; preds = %if.then.627, %if.end.622
  call void @timevar_push(i32 42)
  %362 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl634 = bitcast %union.tree_node* %362 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl634, i32 0, i32 17
  %363 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool635 = icmp ne %struct.rtx_def* %363, null
  br i1 %tobool635, label %cond.true.636, label %cond.false.639

cond.true.636:                                    ; preds = %if.end.633
  %364 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl637 = bitcast %union.tree_node* %364 to %struct.tree_decl*
  %rtl638 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl637, i32 0, i32 17
  %365 = load %struct.rtx_def*, %struct.rtx_def** %rtl638, align 8
  br label %cond.end.642

cond.false.639:                                   ; preds = %if.end.633
  %366 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %366, i8* null)
  %367 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl640 = bitcast %union.tree_node* %367 to %struct.tree_decl*
  %rtl641 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl640, i32 0, i32 17
  %368 = load %struct.rtx_def*, %struct.rtx_def** %rtl641, align 8
  br label %cond.end.642

cond.end.642:                                     ; preds = %cond.false.639, %cond.true.636
  %cond643 = phi %struct.rtx_def* [ %365, %cond.true.636 ], [ %368, %cond.false.639 ]
  store %struct.rtx_def* %cond643, %struct.rtx_def** %x, align 8
  %369 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %370 = bitcast %struct.rtx_def* %369 to i32*
  %bf.load644 = load i32, i32* %370, align 8
  %bf.clear645 = and i32 %bf.load644, 65535
  %cmp646 = icmp ne i32 %bf.clear645, 66
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %cond.end.642
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3494, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.rest_of_compilation, i32 0, i32 0)) #10
  unreachable

if.end.649:                                       ; preds = %cond.end.642
  %371 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %371, i32 0, i32 1
  %arrayidx650 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx650 to %struct.rtx_def**
  %372 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %372, %struct.rtx_def** %x, align 8
  %373 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %374 = bitcast %struct.rtx_def* %373 to i32*
  %bf.load651 = load i32, i32* %374, align 8
  %bf.clear652 = and i32 %bf.load651, 65535
  %cmp653 = icmp ne i32 %bf.clear652, 68
  br i1 %cmp653, label %if.then.655, label %if.end.656

if.then.655:                                      ; preds = %if.end.649
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3497, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.rest_of_compilation, i32 0, i32 0)) #10
  unreachable

if.end.656:                                       ; preds = %if.end.649
  %375 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld657 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %375, i32 0, i32 1
  %arrayidx658 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld657, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx658 to i8**
  %376 = load i8*, i8** %rtstr, align 8
  store i8* %376, i8** %fnname, align 8
  %377 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %378 = load i8*, i8** %fnname, align 8
  call void @assemble_start_function(%union.tree_node* %377, i8* %378)
  %379 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %381 = load i32, i32* @optimize, align 4
  call void @final_start_function(%struct.rtx_def* %379, %struct._IO_FILE* %380, i32 %381)
  %382 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %384 = load i32, i32* @optimize, align 4
  call void @final(%struct.rtx_def* %382, %struct._IO_FILE* %383, i32 %384, i32 0)
  call void @final_end_function()
  %385 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %386 = load i8*, i8** %fnname, align 8
  call void @assemble_end_function(%union.tree_node* %385, i8* %386)
  call void @output_function_exception_table()
  %387 = load i32, i32* @quiet_flag, align 4
  %tobool659 = icmp ne i32 %387, 0
  br i1 %tobool659, label %if.end.662, label %if.then.660

if.then.660:                                      ; preds = %if.end.656
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call661 = call i32 @fflush(%struct._IO_FILE* %388)
  br label %if.end.662

if.end.662:                                       ; preds = %if.then.660, %if.end.656
  call void @free_basic_block_vars(i32 0)
  call void @regset_release_memory()
  call void @timevar_pop(i32 42)
  call void @ggc_collect()
  call void @timevar_push(i32 43)
  %389 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %function_decl = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %389, i32 0, i32 15
  %390 = load void (%union.tree_node*)*, void (%union.tree_node*)** %function_decl, align 8
  %391 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %390(%union.tree_node* %391)
  call void @timevar_pop(i32 43)
  br label %exit_rest_of_compilation

exit_rest_of_compilation:                         ; preds = %if.end.662, %if.then.539, %if.then.290, %if.then.247, %if.then.177, %if.end.164, %if.then.66, %if.then.28
  store i32 0, i32* @reload_completed, align 4
  store i32 0, i32* @flow2_completed, align 4
  store i32 0, i32* @no_new_pseudos, align 4
  call void @timevar_push(i32 42)
  call void @init_insn_lengths()
  call void @clear_const_double_mem()
  call void @init_temp_slots()
  call void @free_basic_block_vars(i32 0)
  call void @free_bb_for_insn()
  call void @timevar_pop(i32 42)
  call void @init_recog_no_volatile()
  %392 = load %struct.function*, %struct.function** @cfun, align 8
  call void @free_after_parsing(%struct.function* %392)
  %393 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl663 = bitcast %union.tree_node* %393 to %struct.tree_decl*
  %defer_output664 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl663, i32 0, i32 5
  %394 = bitcast i48* %defer_output664 to i64*
  %bf.load665 = load i64, i64* %394, align 8
  %bf.lshr666 = lshr i64 %bf.load665, 18
  %bf.clear667 = and i64 %bf.lshr666, 1
  %bf.cast668 = trunc i64 %bf.clear667 to i32
  %tobool669 = icmp ne i32 %bf.cast668, 0
  br i1 %tobool669, label %if.end.674, label %if.then.670

if.then.670:                                      ; preds = %exit_rest_of_compilation
  %395 = load %struct.function*, %struct.function** @cfun, align 8
  call void @free_after_compilation(%struct.function* %395)
  %396 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl671 = bitcast %union.tree_node* %396 to %struct.tree_decl*
  %u2672 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl671, i32 0, i32 19
  %f673 = bitcast %union.anon.1* %u2672 to %struct.function**
  store %struct.function* null, %struct.function** %f673, align 8
  br label %if.end.674

if.end.674:                                       ; preds = %if.then.670, %exit_rest_of_compilation
  store %struct.function* null, %struct.function** @cfun, align 8
  call void @ggc_collect()
  call void @timevar_pop(i32 44)
  ret void
}

declare void @identify_blocks() #1

declare void @reorder_blocks() #1

declare void @init_flow() #1

declare %union.tree_node* @get_containing_scope(%union.tree_node*) #1

declare i8* @function_cannot_inline_p(%union.tree_node*) #1

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal i32 @open_dump_file(i32 %index, %union.tree_node* %decl) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %decl.addr = alloca %union.tree_node*, align 8
  %dump_name = alloca i8*, align 8
  %open_arg = alloca i8*, align 8
  %seq = alloca [16 x i8], align 16
  store i32 %index, i32* %index.addr, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 3
  %1 = load i8, i8* %enabled, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @timevar_push(i32 2)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %cmp = icmp ne %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %4 = load i32, i32* %index.addr, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %4) #7
  %5 = load i32, i32* %index.addr, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom4
  %initialized = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx5, i32 0, i32 4
  %6 = load i8, i8* %initialized, align 1
  %tobool6 = icmp ne i8 %6, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.end.2
  %7 = load i32, i32* @graph_dump_format, align 4
  %cmp8 = icmp ne i32 %7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.7
  %8 = load i32, i32* %index.addr, align 4
  %idxprom9 = zext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom9
  %graph_dump_p = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx10, i32 0, i32 2
  %9 = load i8, i8* %graph_dump_p, align 1
  %conv = sext i8 %9 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %land.lhs.true
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %10 = load i32, i32* %index.addr, align 4
  %idxprom14 = zext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom14
  %extension = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx15, i32 0, i32 0
  %11 = load i8*, i8** %extension, align 8
  %call16 = call noalias i8* (i8*, ...) @concat(i8* %arraydecay13, i8* %11, i8* null)
  store i8* %call16, i8** %dump_name, align 8
  %12 = load i8*, i8** @dump_base_name, align 8
  %13 = load i8*, i8** %dump_name, align 8
  call void @clean_graph_dump_file(i8* %12, i8* %13)
  %14 = load i8*, i8** %dump_name, align 8
  call void @free(i8* %14) #7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %land.lhs.true, %if.then.7
  %15 = load i32, i32* %index.addr, align 4
  %idxprom18 = zext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom18
  %initialized20 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx19, i32 0, i32 4
  store i8 1, i8* %initialized20, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %open_arg, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** %open_arg, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end.17
  %16 = load i8*, i8** @dump_base_name, align 8
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %17 = load i32, i32* %index.addr, align 4
  %idxprom23 = zext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom23
  %extension25 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx24, i32 0, i32 0
  %18 = load i8*, i8** %extension25, align 8
  %call26 = call noalias i8* (i8*, ...) @concat(i8* %16, i8* %arraydecay22, i8* %18, i8* null)
  store i8* %call26, i8** %dump_name, align 8
  %19 = load i8*, i8** %dump_name, align 8
  %20 = load i8*, i8** %open_arg, align 8
  %call27 = call %struct._IO_FILE* @fopen(i8* %19, i8* %20)
  store %struct._IO_FILE* %call27, %struct._IO_FILE** @rtl_dump_file, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %cmp28 = icmp eq %struct._IO_FILE* %21, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.21
  %22 = load i8*, i8** %dump_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %22) #10
  unreachable

if.end.31:                                        ; preds = %if.end.21
  %23 = load i8*, i8** %dump_name, align 8
  call void @free(i8* %23) #7
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool32 = icmp ne %union.tree_node* %24, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %26 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** @decl_printable_name, align 8
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call34 = call i8* %26(%union.tree_node* %27, i32 2)
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %call34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  call void @timevar_pop(i32 2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @close_dump_file(i32 %index, void (%struct._IO_FILE*, %struct.rtx_def*)* %func, %struct.rtx_def* %insns) #0 {
entry:
  %index.addr = alloca i32, align 4
  %func.addr = alloca void (%struct._IO_FILE*, %struct.rtx_def*)*, align 8
  %insns.addr = alloca %struct.rtx_def*, align 8
  %seq = alloca [16 x i8], align 16
  %suffix = alloca i8*, align 8
  store i32 %index, i32* %index.addr, align 4
  store void (%struct._IO_FILE*, %struct.rtx_def*)* %func, void (%struct._IO_FILE*, %struct.rtx_def*)** %func.addr, align 8
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @timevar_push(i32 2)
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @graph_dump_format, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true.2, label %if.end.9

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %index.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom
  %graph_dump_p = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 2
  %4 = load i8, i8* %graph_dump_p, align 1
  %conv = sext i8 %4 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %land.lhs.true.2
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %5 = load i32, i32* %index.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %5) #7
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %6 = load i32, i32* %index.addr, align 4
  %idxprom6 = zext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom6
  %extension = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx7, i32 0, i32 0
  %7 = load i8*, i8** %extension, align 8
  %call8 = call noalias i8* (i8*, ...) @concat(i8* %arraydecay5, i8* %7, i8* null)
  store i8* %call8, i8** %suffix, align 8
  %8 = load i8*, i8** @dump_base_name, align 8
  %9 = load i8*, i8** %suffix, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  call void @print_rtl_graph_with_bb(i8* %8, i8* %9, %struct.rtx_def* %10)
  %11 = load i8*, i8** %suffix, align 8
  call void @free(i8* %11) #7
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %land.lhs.true.2, %land.lhs.true, %if.end
  %12 = load void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*)** %func.addr, align 8
  %tobool10 = icmp ne void (%struct._IO_FILE*, %struct.rtx_def*)* %12, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %if.end.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %tobool12 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  %14 = load void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*)** %func.addr, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  call void %14(%struct._IO_FILE* %15, %struct.rtx_def* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.end.9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %18)
  store %struct._IO_FILE* null, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @timevar_pop(i32 2)
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  ret void
}

declare void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) #1

declare void @convert_from_eh_region_ranges() #1

declare void @rebuild_jump_labels(%struct.rtx_def*) #1

declare void @find_exception_handler_labels() #1

declare void @find_basic_blocks(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare i32 @max_reg_num() #1

declare zeroext i1 @cleanup_cfg(i32) #1

declare void @free_bb_for_insn() #1

declare zeroext i1 @nothrow_function_p() #1

declare void @save_for_inline(%union.tree_node*) #1

declare void @remove_unnecessary_notes() #1

declare void @ggc_collect() #1

declare void @init_function_for_compilation() #1

declare void @purge_hard_subreg_sets(%struct.rtx_def*) #1

declare void @optimize_sibling_and_tail_recursive_calls() #1

declare i32 @doing_eh(i32) #1

declare void @finish_eh_generation() #1

declare void @emit_initial_value_sets() #1

declare void @unshare_all_rtl(%union.tree_node*, %struct.rtx_def*) #1

declare void @instantiate_virtual_regs(%union.tree_node*, %struct.rtx_def*) #1

declare void @expected_value_to_br_prob() #1

declare void @reg_scan(%struct.rtx_def*, i32, i32) #1

declare void @copy_loop_headers(%struct.rtx_def*) #1

declare void @purge_line_number_notes(%struct.rtx_def*) #1

declare void @convert_to_ssa() #1

declare void @print_rtl_with_bb(%struct._IO_FILE*, %struct.rtx_def*) #1

declare void @ssa_const_prop() #1

declare void @ssa_eliminate_dead_code() #1

declare void @convert_from_ssa() #1

declare void @if_convert(i32) #1

declare void @delete_null_pointer_checks(%struct.rtx_def*) #1

declare void @renumber_insns(%struct._IO_FILE*) #1

declare i32 @cse_main(%struct.rtx_def*, i32, i32, %struct._IO_FILE*) #1

declare void @delete_trivially_dead_insns(%struct.rtx_def*, i32, i32) #1

declare void @purge_addressof(%struct.rtx_def*) #1

declare i32 @gcse_main(%struct.rtx_def*, %struct._IO_FILE*) #1

declare void @cleanup_barriers() #1

declare void @loop_optimize(%struct.rtx_def*, %struct._IO_FILE*, i32) #1

declare void @regclass_init() #1

declare void @check_function_return_warnings() #1

declare void @mark_constant_function() #1

declare void @branch_prob() #1

declare i32 @flow_loops_find(%struct.loops*, i32) #1

declare void @estimate_probability(%struct.loops*) #1

declare void @flow_loops_dump(%struct.loops*, %struct._IO_FILE*, void (%struct.loop*, %struct._IO_FILE*, i32)*, i32) #1

declare void @flow_loops_free(%struct.loops*) #1

declare void @life_analysis(%struct.rtx_def*, %struct._IO_FILE*, i32) #1

declare void @uninitialized_vars_warning(%union.tree_node*) #1

declare void @setjmp_args_warning() #1

declare i32 @initialize_uninitialized_subregs() #1

declare i32 @combine_instructions(%struct.rtx_def*, i32) #1

declare zeroext i1 @purge_all_dead_edges(i32) #1

declare void @regmove_optimize(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare void @split_all_insns(i32) #1

declare i32 @optimize_mode_switching(%struct._IO_FILE*) #1

declare void @schedule_insns(%struct._IO_FILE*) #1

declare i32 @leaf_function_p() #1

declare void @recompute_reg_usage(%struct.rtx_def*, i32) #1

declare void @allocate_reg_info(i64, i32, i32) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare void @allocate_initial_values(%struct.rtx_def**) #1

declare void @regclass(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare i32 @local_alloc() #1

declare void @dump_flow_info(%struct._IO_FILE*) #1

declare void @dump_local_alloc(%struct._IO_FILE*) #1

declare i32 @global_alloc(%struct._IO_FILE*) #1

declare void @build_insn_chain(%struct.rtx_def*) #1

declare i32 @reload(%struct.rtx_def*, i32) #1

declare void @dump_global_regs(%struct._IO_FILE*) #1

declare void @reload_cse_regs(%struct.rtx_def*) #1

declare void @thread_prologue_and_epilogue_insns(%struct.rtx_def*) #1

declare void @warning(i8*, ...) #1

declare void @combine_stack_adjustments() #1

declare void @peephole2_optimize(%struct._IO_FILE*) #1

declare void @regrename_optimize() #1

declare void @copyprop_hardreg_forward() #1

declare void @reg_to_stack(%struct.rtx_def*, %struct._IO_FILE*) #1

declare void @reorder_basic_blocks() #1

declare void @compute_alignments() #1

declare void @convert_to_eh_region_ranges() #1

declare void @shorten_branches(%struct.rtx_def*) #1

declare void @assemble_start_function(%union.tree_node*, i8*) #1

declare void @final_start_function(%struct.rtx_def*, %struct._IO_FILE*, i32) #1

declare void @final(%struct.rtx_def*, %struct._IO_FILE*, i32, i32) #1

declare void @final_end_function() #1

declare void @assemble_end_function(%union.tree_node*, i8*) #1

declare void @output_function_exception_table() #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @free_basic_block_vars(i32) #1

declare void @regset_release_memory() #1

declare void @init_insn_lengths() #1

declare void @clear_const_double_mem() #1

declare void @init_temp_slots() #1

declare void @init_recog_no_volatile() #1

declare void @free_after_parsing(%struct.function*) #1

declare void @free_after_compilation(%struct.function*) #1

; Function Attrs: nounwind uwtable
define i32 @toplev_main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @hex_init()
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @general_init(i8* %1)
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  call void @parse_options_and_default_flags(i32 %2, i8** %3)
  %4 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %5 = bitcast %struct.diagnostic_context* %4 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %5, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx1 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 3
  %6 = load i32, i32* %arrayidx1, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* @exit_after_options, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @do_compile()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %9 = bitcast %struct.diagnostic_context* %8 to %struct.output_buffer*
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i32 0, i32 0
  %diagnostic_count4 = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count4, i32 0, i64 3
  %10 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %12 = bitcast %struct.diagnostic_context* %11 to %struct.output_buffer*
  %state7 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %diagnostic_count8 = getelementptr inbounds %struct.output_state, %struct.output_state* %state7, i32 0, i32 9
  %arrayidx9 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count8, i32 0, i64 2
  %13 = load i32, i32* %arrayidx9, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @hex_init() #1

; Function Attrs: nounwind uwtable
define internal void @general_init(i8* %argv0) #0 {
entry:
  %argv0.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8
  %0 = load i8*, i8** %argv0.addr, align 8
  %1 = load i8*, i8** %argv0.addr, align 8
  %call = call i64 @strlen(i8* %1) #9
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %argv0.addr, align 8
  %cmp = icmp ne i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 -1
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 47
  %lnot = xor i1 %cmp1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %p, align 8
  store i8* %8, i8** @progname, align 8
  %9 = load i8*, i8** @progname, align 8
  call void @xmalloc_set_program_name(i8* %9)
  %call3 = call void (i32)* @signal(i32 8, void (i32)* @float_signal) #7
  %call4 = call void (i32)* @signal(i32 11, void (i32)* @crash_signal) #7
  %call5 = call void (i32)* @signal(i32 4, void (i32)* @crash_signal) #7
  %call6 = call void (i32)* @signal(i32 7, void (i32)* @crash_signal) #7
  %call7 = call void (i32)* @signal(i32 6, void (i32)* @crash_signal) #7
  %10 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  call void @diagnostic_initialize(%struct.diagnostic_context* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_options_and_default_flags(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %optimize_val = alloca i32, align 4
  %lang_processed = alloca i32, align 4
  %indep_processed = alloca i32, align 4
  %option = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %j = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* @save_argc, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  store i8** %1, i8*** @save_argv, align 8
  call void @init_reg_sets()
  call void @add_params(%struct.param_info* getelementptr inbounds ([7 x %struct.param_info], [7 x %struct.param_info]* @lang_independent_params, i32 0, i32 0), i64 6)
  %2 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 2), align 8
  call void %2()
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* @optimize, align 4
  store i32 0, i32* @optimize_size, align 4
  br label %if.end.33

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 %idxprom1
  %10 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv, 45
  br i1 %cmp4, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %13, i64 %idxprom6
  %14 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv9, 79
  br i1 %cmp10, label %if.then.12, label %if.end.32

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %17, i64 %idxprom13
  %18 = load i8*, i8** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 2
  store i8* %arrayidx15, i8** %p, align 8
  %19 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 115
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.26

land.lhs.true.20:                                 ; preds = %if.then.12
  %21 = load i8*, i8** %p, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* @optimize_size, align 4
  store i32 2, i32* @optimize, align 4
  br label %if.end.31

if.else.26:                                       ; preds = %land.lhs.true.20, %if.then.12
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 -2
  %call27 = call i32 @read_integral_parameter(i8* %23, i8* %add.ptr, i32 -1)
  store i32 %call27, i32* %optimize_val, align 4
  %25 = load i32, i32* %optimize_val, align 4
  %cmp28 = icmp ne i32 %25, -1
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.else.26
  %26 = load i32, i32* %optimize_val, align 4
  store i32 %26, i32* @optimize, align 4
  store i32 0, i32* @optimize_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* @optimize, align 4
  %tobool34 = icmp ne i32 %28, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.end
  store i32 0, i32* @flag_merge_constants, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.end
  %29 = load i32, i32* @optimize, align 4
  %cmp37 = icmp sge i32 %29, 1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i32 1, i32* @flag_defer_pop, align 4
  store i32 1, i32* @flag_thread_jumps, align 4
  store i32 1, i32* @flag_guess_branch_prob, align 4
  store i32 1, i32* @flag_cprop_registers, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %30 = load i32, i32* @optimize, align 4
  %cmp41 = icmp sge i32 %30, 2
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 1, i32* @flag_optimize_sibling_calls, align 4
  store i32 1, i32* @flag_cse_follow_jumps, align 4
  store i32 1, i32* @flag_cse_skip_blocks, align 4
  store i32 1, i32* @flag_gcse, align 4
  store i32 1, i32* @flag_expensive_optimizations, align 4
  store i32 1, i32* @flag_strength_reduce, align 4
  store i32 1, i32* @flag_rerun_cse_after_loop, align 4
  store i32 1, i32* @flag_rerun_loop_opt, align 4
  store i32 1, i32* @flag_caller_saves, align 4
  store i32 1, i32* @flag_force_mem, align 4
  store i32 1, i32* @flag_peephole2, align 4
  store i32 1, i32* @flag_schedule_insns, align 4
  store i32 1, i32* @flag_schedule_insns_after_reload, align 4
  store i32 1, i32* @flag_regmove, align 4
  store i32 1, i32* @flag_strict_aliasing, align 4
  store i32 1, i32* @flag_delete_null_pointer_checks, align 4
  store i32 1, i32* @flag_reorder_blocks, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  %31 = load i32, i32* @optimize, align 4
  %cmp45 = icmp sge i32 %31, 3
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  store i32 1, i32* @flag_inline_functions, align 4
  store i32 1, i32* @flag_rename_registers, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  %32 = load i32, i32* @optimize, align 4
  %cmp49 = icmp slt i32 %32, 2
  br i1 %cmp49, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.48
  %33 = load i32, i32* @optimize_size, align 4
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.48
  store i32 1, i32* @align_loops, align 4
  store i32 1, i32* @align_jumps, align 4
  store i32 1, i32* @align_labels, align 4
  store i32 1, i32* @align_functions, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %lor.lhs.false
  store i32 1, i32* @flag_signed_char, align 4
  store i32 0, i32* @target_flags, align 4
  call void @set_target_switch(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  %34 = load i32, i32* @optimize, align 4
  %35 = load i32, i32* @optimize_size, align 4
  call void @optimization_options(i32 %34, i32 %35)
  store i32 1, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %if.end.138, %if.end.53
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %argc.addr, align 4
  %cmp55 = icmp slt i32 %36, %37
  br i1 %cmp55, label %for.body.57, label %for.end.139

for.body.57:                                      ; preds = %for.cond.54
  %38 = load i32 (i32, i8**)*, i32 (i32, i8**)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 3), align 8
  %39 = load i32, i32* %argc.addr, align 4
  %40 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %39, %40
  %41 = load i8**, i8*** %argv.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %42 to i64
  %add.ptr58 = getelementptr inbounds i8*, i8** %41, i64 %idx.ext
  %call59 = call i32 %38(i32 %sub, i8** %add.ptr58)
  store i32 %call59, i32* %lang_processed, align 4
  %43 = load i32, i32* %lang_processed, align 4
  %cmp60 = icmp sge i32 %43, 0
  br i1 %cmp60, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %for.body.57
  %44 = load i32, i32* %argc.addr, align 4
  %45 = load i32, i32* %i, align 4
  %sub63 = sub nsw i32 %44, %45
  %46 = load i8**, i8*** %argv.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idx.ext64 = sext i32 %47 to i64
  %add.ptr65 = getelementptr inbounds i8*, i8** %46, i64 %idx.ext64
  %call66 = call i32 @independent_decode_option(i32 %sub63, i8** %add.ptr65)
  store i32 %call66, i32* %indep_processed, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %for.body.57
  %48 = load i32, i32* %lang_processed, align 4
  %sub68 = sub nsw i32 0, %48
  store i32 %sub68, i32* %lang_processed, align 4
  store i32 0, i32* %indep_processed, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.62
  %49 = load i32, i32* %lang_processed, align 4
  %tobool70 = icmp ne i32 %49, 0
  br i1 %tobool70, label %if.then.73, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.end.69
  %50 = load i32, i32* %indep_processed, align 4
  %tobool72 = icmp ne i32 %50, 0
  br i1 %tobool72, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %lor.lhs.false.71, %if.end.69
  %51 = load i32, i32* %lang_processed, align 4
  %52 = load i32, i32* %indep_processed, align 4
  %cmp74 = icmp sgt i32 %51, %52
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.73
  %53 = load i32, i32* %lang_processed, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.73
  %54 = load i32, i32* %indep_processed, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %53, %cond.true ], [ %54, %cond.false ]
  %55 = load i32, i32* %i, align 4
  %add = add nsw i32 %55, %cond
  store i32 %add, i32* %i, align 4
  br label %if.end.138

if.else.76:                                       ; preds = %lor.lhs.false.71
  store i8* null, i8** %option, align 8
  store i8* null, i8** %lang, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.99, %if.else.76
  %56 = load i32, i32* %j, align 4
  %conv78 = zext i32 %56 to i64
  %cmp79 = icmp ult i64 %conv78, 108
  br i1 %cmp79, label %for.body.81, label %for.end.101

for.body.81:                                      ; preds = %for.cond.77
  %57 = load i32, i32* %j, align 4
  %idxprom82 = zext i32 %57 to i64
  %arrayidx83 = getelementptr inbounds [108 x %struct.lang_opt], [108 x %struct.lang_opt]* @documented_lang_options, i32 0, i64 %idxprom82
  %option84 = getelementptr inbounds %struct.lang_opt, %struct.lang_opt* %arrayidx83, i32 0, i32 0
  %58 = load i8*, i8** %option84, align 8
  store i8* %58, i8** %option, align 8
  %59 = load i8*, i8** %option, align 8
  %cmp85 = icmp eq i8* %59, null
  br i1 %cmp85, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %for.body.81
  %60 = load i32, i32* %j, align 4
  %idxprom88 = zext i32 %60 to i64
  %arrayidx89 = getelementptr inbounds [108 x %struct.lang_opt], [108 x %struct.lang_opt]* @documented_lang_options, i32 0, i64 %idxprom88
  %description = getelementptr inbounds %struct.lang_opt, %struct.lang_opt* %arrayidx89, i32 0, i32 1
  %61 = load i8*, i8** %description, align 8
  store i8* %61, i8** %lang, align 8
  br label %if.end.98

if.else.90:                                       ; preds = %for.body.81
  %62 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %62 to i64
  %63 = load i8**, i8*** %argv.addr, align 8
  %arrayidx92 = getelementptr inbounds i8*, i8** %63, i64 %idxprom91
  %64 = load i8*, i8** %arrayidx92, align 8
  %65 = load i8*, i8** %option, align 8
  %66 = load i8*, i8** %option, align 8
  %call93 = call i64 @strlen(i8* %66) #9
  %call94 = call i32 @strncmp(i8* %64, i8* %65, i64 %call93) #9
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.else.90
  br label %for.end.101

if.end.97:                                        ; preds = %if.else.90
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.87
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %67 = load i32, i32* %j, align 4
  %inc100 = add i32 %67, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.77

for.end.101:                                      ; preds = %if.then.96, %for.cond.77
  %68 = load i32, i32* %j, align 4
  %conv102 = zext i32 %68 to i64
  %cmp103 = icmp ne i64 %conv102, 108
  br i1 %cmp103, label %if.then.105, label %if.else.114

if.then.105:                                      ; preds = %for.end.101
  %69 = load i32, i32* @extra_warnings, align 4
  %tobool106 = icmp ne i32 %69, 0
  br i1 %tobool106, label %if.then.107, label %if.end.113

if.then.107:                                      ; preds = %if.then.105
  %70 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %70 to i64
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx109 = getelementptr inbounds i8*, i8** %71, i64 %idxprom108
  %72 = load i8*, i8** %arrayidx109, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i8* %72)
  %73 = load i8*, i8** %lang, align 8
  %tobool110 = icmp ne i8* %73, null
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.107
  %74 = load i8*, i8** %lang, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i32 0, i32 0), i8* %74)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.then.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.105
  br label %if.end.136

if.else.114:                                      ; preds = %for.end.101
  %75 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %75 to i64
  %76 = load i8**, i8*** %argv.addr, align 8
  %arrayidx116 = getelementptr inbounds i8*, i8** %76, i64 %idxprom115
  %77 = load i8*, i8** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx117, align 1
  %conv118 = sext i8 %78 to i32
  %cmp119 = icmp eq i32 %conv118, 45
  br i1 %cmp119, label %land.lhs.true.121, label %if.else.132

land.lhs.true.121:                                ; preds = %if.else.114
  %79 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %79 to i64
  %80 = load i8**, i8*** %argv.addr, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %80, i64 %idxprom122
  %81 = load i8*, i8** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %82 to i32
  %cmp126 = icmp eq i32 %conv125, 103
  br i1 %cmp126, label %if.then.128, label %if.else.132

if.then.128:                                      ; preds = %land.lhs.true.121
  %83 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %83 to i64
  %84 = load i8**, i8*** %argv.addr, align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %84, i64 %idxprom129
  %85 = load i8*, i8** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %85, i64 2
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %arrayidx131)
  br label %if.end.135

if.else.132:                                      ; preds = %land.lhs.true.121, %if.else.114
  %86 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %86 to i64
  %87 = load i8**, i8*** %argv.addr, align 8
  %arrayidx134 = getelementptr inbounds i8*, i8** %87, i64 %idxprom133
  %88 = load i8*, i8** %arrayidx134, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0), i8* %88)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.128
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.113
  %89 = load i32, i32* %i, align 4
  %inc137 = add nsw i32 %89, 1
  store i32 %inc137, i32* %i, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.136, %cond.end
  br label %for.cond.54

for.end.139:                                      ; preds = %for.cond.54
  %90 = load i32, i32* @flag_no_inline, align 4
  %cmp140 = icmp eq i32 %90, 2
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %for.end.139
  store i32 0, i32* @flag_no_inline, align 4
  br label %if.end.144

if.else.143:                                      ; preds = %for.end.139
  %91 = load i32, i32* @flag_no_inline, align 4
  store i32 %91, i32* @flag_really_no_inline, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.143, %if.then.142
  %92 = load i32, i32* @optimize, align 4
  %cmp145 = icmp eq i32 %92, 0
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.end.144
  store i32 1, i32* @flag_no_inline, align 4
  store i32 0, i32* @warn_inline, align 4
  %93 = load i32, i32* @warn_uninitialized, align 4
  %cmp148 = icmp eq i32 %93, 1
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.147
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.then.147
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.144
  %94 = load i32, i32* @flag_really_no_inline, align 4
  %cmp153 = icmp eq i32 %94, 2
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.152
  %95 = load i32, i32* @flag_no_inline, align 4
  store i32 %95, i32* @flag_really_no_inline, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.152
  %96 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 4), align 8
  call void %96()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_compile() #0 {
entry:
  call void @process_options()
  call void @lang_independent_init()
  %0 = load i8*, i8** @filename, align 8
  %call = call i32 @lang_dependent_init(i8* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @compile_file()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @finalize()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #6

; Function Attrs: noreturn nounwind uwtable
define internal void @float_signal(i32 %signo) #3 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  %0 = load i32, i32* @float_handled, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %signo.addr, align 4
  call void @crash_signal(i32 %1) #10
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* @float_handled, align 4
  %call = call void (i32)* @signal(i32 8, void (i32)* @float_signal) #7
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @float_handler, i32 0, i32 0), i32 1) #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @crash_signal(i32 %signo) #3 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, i32* %signo.addr, align 4
  %0 = load i32, i32* %signo.addr, align 4
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i32 %0) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #8

; Function Attrs: noreturn
declare void @internal_error(i8*, ...) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

declare noalias i8* @concat(i8*, ...) #1

declare void @clean_graph_dump_file(i8*, i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare void @fatal_io_error(i8*, ...) #4

declare void @print_rtl_graph_with_bb(i8*, i8*, %struct.rtx_def*) #1

declare void @xmalloc_set_program_name(i8*) #1

declare void @diagnostic_initialize(%struct.diagnostic_context*) #1

declare void @init_reg_sets() #1

declare void @add_params(%struct.param_info*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_target_switch(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %j = alloca i64, align 8
  %valid_target_option = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %valid_target_option, align 4
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %cmp = icmp ult i64 %0, 56
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %1
  %name1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %j, align 8
  %arrayidx2 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %4
  %value = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %value, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load i64, i64* %j, align 8
  %arrayidx5 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %6
  %value6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx5, i32 0, i32 1
  %7 = load i32, i32* %value6, align 4
  %sub = sub nsw i32 0, %7
  %neg = xor i32 %sub, -1
  %8 = load i32, i32* @target_flags, align 4
  %and = and i32 %8, %neg
  store i32 %and, i32* @target_flags, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* %j, align 8
  %arrayidx7 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %9
  %value8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx7, i32 0, i32 1
  %10 = load i32, i32* %value8, align 4
  %11 = load i32, i32* @target_flags, align 4
  %or = or i32 %11, %10
  store i32 %or, i32* @target_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  store i32 1, i32* %valid_target_option, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %12 = load i64, i64* %j, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %valid_target_option, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.end.28, label %if.then.11

if.then.11:                                       ; preds = %for.end
  store i64 0, i64* %j, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.25, %if.then.11
  %14 = load i64, i64* %j, align 8
  %cmp13 = icmp ult i64 %14, 13
  br i1 %cmp13, label %for.body.14, label %for.end.27

for.body.14:                                      ; preds = %for.cond.12
  %15 = load i64, i64* %j, align 8
  %arrayidx15 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %15
  %prefix = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx15, i32 0, i32 0
  %16 = load i8*, i8** %prefix, align 8
  %call16 = call i64 @strlen(i8* %16) #9
  %conv = trunc i64 %call16 to i32
  store i32 %conv, i32* %len, align 4
  %17 = load i64, i64* %j, align 8
  %arrayidx17 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %17
  %prefix18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx17, i32 0, i32 0
  %18 = load i8*, i8** %prefix18, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load i32, i32* %len, align 4
  %conv19 = sext i32 %20 to i64
  %call20 = call i32 @strncmp(i8* %18, i8* %19, i64 %conv19) #9
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %for.body.14
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i64, i64* %j, align 8
  %arrayidx23 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %23
  %variable = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx23, i32 0, i32 1
  %24 = load i8**, i8*** %variable, align 8
  store i8* %add.ptr, i8** %24, align 8
  store i32 1, i32* %valid_target_option, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body.14
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %25 = load i64, i64* %j, align 8
  %inc26 = add i64 %25, 1
  store i64 %inc26, i64* %j, align 8
  br label %for.cond.12

for.end.27:                                       ; preds = %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end.27, %for.end
  %26 = load i32, i32* %valid_target_option, align 4
  %tobool29 = icmp ne i32 %26, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %27 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %27)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  ret void
}

declare void @optimization_options(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @independent_decode_option(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arg = alloca i8*, align 8
  %equal = alloca i8*, align 8
  %val = alloca i32, align 4
  %g_switch_val = alloca i32, align 4
  %return_val = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %arg, align 8
  %2 = load i8*, i8** %arg, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %arg, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %arg, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 43
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %arg, align 8
  store i8* %8, i8** @filename, align 8
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %9 = load i8*, i8** %arg, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8
  %10 = load i8*, i8** %arg, align 8
  %call = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.12
  call void @display_help()
  store i32 1, i32* @exit_after_options, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.12
  %11 = load i8*, i8** %arg, align 8
  %call15 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0)) #9
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  call void @display_target_options()
  store i32 1, i32* @exit_after_options, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %12 = load i8*, i8** %arg, align 8
  %call19 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0)) #9
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @print_version(%struct._IO_FILE* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  store i32 1, i32* @exit_after_options, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %14 = load i8*, i8** %arg, align 8
  %call23 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.185, i32 0, i32 0)) #9
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %if.end.22
  %15 = load i32, i32* %argc.addr, align 4
  %cmp27 = icmp eq i32 %15, 1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.26
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.26
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %16, i64 1
  %17 = load i8*, i8** %arrayidx31, align 8
  store i8* %17, i8** %arg, align 8
  %18 = load i8*, i8** %arg, align 8
  %call32 = call i8* @strchr(i8* %18, i32 61) #9
  store i8* %call32, i8** %equal, align 8
  %19 = load i8*, i8** %equal, align 8
  %tobool33 = icmp ne i8* %19, null
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %if.end.30
  %20 = load i8*, i8** %arg, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i32 0, i32 0), i8* %20)
  br label %if.end.42

if.else:                                          ; preds = %if.end.30
  %21 = load i8*, i8** %equal, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %equal, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %call35 = call i32 @read_integral_parameter(i8* %add.ptr, i8* null, i32 -1)
  store i32 %call35, i32* %val, align 4
  %23 = load i32, i32* %val, align 4
  %cmp36 = icmp ne i32 %23, -1
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else
  %24 = load i8*, i8** %arg, align 8
  %25 = load i32, i32* %val, align 4
  call void @set_param_value(i8* %24, i32 %25)
  br label %if.end.41

if.else.39:                                       ; preds = %if.else
  %26 = load i8*, i8** %equal, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %26, i64 1
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.188, i32 0, i32 0), i8* %add.ptr40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.34
  store i32 2, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.22
  %27 = load i8*, i8** %arg, align 8
  %28 = load i8, i8* %27, align 1
  %conv44 = sext i8 %28 to i32
  %cmp45 = icmp eq i32 %conv44, 89
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.43
  %29 = load i8*, i8** %arg, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr48, i8** %arg, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.43
  %30 = load i8*, i8** %arg, align 8
  %31 = load i8, i8* %30, align 1
  %conv50 = sext i8 %31 to i32
  switch i32 %conv50, label %sw.default [
    i32 79, label %sw.bb
    i32 109, label %sw.bb.51
    i32 102, label %sw.bb.53
    i32 103, label %sw.bb.56
    i32 100, label %sw.bb.59
    i32 112, label %sw.bb.71
    i32 113, label %sw.bb.89
    i32 118, label %sw.bb.95
    i32 119, label %sw.bb.101
    i32 87, label %sw.bb.109
    i32 97, label %sw.bb.123
    i32 111, label %sw.bb.149
    i32 71, label %sw.bb.161
  ]

sw.default:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end.49
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.49
  %32 = load i8*, i8** %arg, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %32, i64 1
  call void @set_target_switch(i8* %add.ptr52)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.49
  %33 = load i8*, i8** %arg, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %33, i64 1
  %call55 = call i32 @decode_f_option(i8* %add.ptr54)
  store i32 %call55, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %if.end.49
  %34 = load i8*, i8** %arg, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %34, i64 1
  %call58 = call i32 @decode_g_option(i8* %add.ptr57)
  store i32 %call58, i32* %retval
  br label %return

sw.bb.59:                                         ; preds = %if.end.49
  %35 = load i8*, i8** %arg, align 8
  %call60 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0)) #9
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.else.68, label %if.then.62

if.then.62:                                       ; preds = %sw.bb.59
  %36 = load i32, i32* %argc.addr, align 4
  %cmp63 = icmp eq i32 %36, 1
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.62
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %37, i64 1
  %38 = load i8*, i8** %arrayidx67, align 8
  store i8* %38, i8** @dump_base_name, align 8
  store i32 2, i32* %retval
  br label %return

if.else.68:                                       ; preds = %sw.bb.59
  %39 = load i8*, i8** %arg, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %39, i64 1
  call void @decode_d_option(i8* %add.ptr69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.49
  %40 = load i8*, i8** %arg, align 8
  %call72 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0)) #9
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.else.75, label %if.then.74

if.then.74:                                       ; preds = %sw.bb.71
  store i32 1, i32* @pedantic, align 4
  br label %if.end.88

if.else.75:                                       ; preds = %sw.bb.71
  %41 = load i8*, i8** %arg, align 8
  %call76 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i32 0, i32 0)) #9
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %if.else.75
  store i32 1, i32* @pedantic, align 4
  store i32 1, i32* @flag_pedantic_errors, align 4
  br label %if.end.87

if.else.79:                                       ; preds = %if.else.75
  %42 = load i8*, i8** %arg, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %43 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.else.79
  store i32 1, i32* @profile_flag, align 4
  br label %if.end.86

if.else.85:                                       ; preds = %if.else.79
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.84
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.78
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.74
  br label %sw.epilog

sw.bb.89:                                         ; preds = %if.end.49
  %44 = load i8*, i8** %arg, align 8
  %call90 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0)) #9
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.else.93, label %if.then.92

if.then.92:                                       ; preds = %sw.bb.89
  store i32 1, i32* @quiet_flag, align 4
  br label %if.end.94

if.else.93:                                       ; preds = %sw.bb.89
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.49
  %45 = load i8*, i8** %arg, align 8
  %call96 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0)) #9
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.else.99, label %if.then.98

if.then.98:                                       ; preds = %sw.bb.95
  store i32 1, i32* @version_flag, align 4
  br label %if.end.100

if.else.99:                                       ; preds = %sw.bb.95
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.then.98
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.49
  %46 = load i8*, i8** %arg, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %47 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %sw.bb.101
  store i32 1, i32* @inhibit_warnings, align 4
  br label %if.end.108

if.else.107:                                      ; preds = %sw.bb.101
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.then.106
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.end.49
  %48 = load i8*, i8** %arg, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %49 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.119

if.then.114:                                      ; preds = %sw.bb.109
  store i32 1, i32* @extra_warnings, align 4
  %50 = load i32, i32* @warn_uninitialized, align 4
  %cmp115 = icmp ne i32 %50, 1
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.114
  store i32 2, i32* @warn_uninitialized, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.then.114
  br label %if.end.122

if.else.119:                                      ; preds = %sw.bb.109
  %51 = load i8*, i8** %arg, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %51, i64 1
  %call121 = call i32 @decode_W_option(i8* %add.ptr120)
  store i32 %call121, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.118
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.end.49
  %52 = load i8*, i8** %arg, align 8
  %call124 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.194, i32 0, i32 0), i64 8) #9
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.else.147, label %if.then.126

if.then.126:                                      ; preds = %sw.bb.123
  %53 = load i8*, i8** %arg, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %53, i64 8
  %54 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %54 to i32
  %cmp129 = icmp eq i32 %conv128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.137

if.then.131:                                      ; preds = %if.then.126
  %55 = load i32, i32* %argc.addr, align 4
  %cmp132 = icmp eq i32 %55, 1
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.131
  store i32 0, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.then.131
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %56, i64 1
  %57 = load i8*, i8** %arrayidx136, align 8
  store i8* %57, i8** @aux_info_file_name, align 8
  store i32 1, i32* @flag_gen_aux_info, align 4
  store i32 2, i32* %retval
  br label %return

if.else.137:                                      ; preds = %if.then.126
  %58 = load i8*, i8** %arg, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %58, i64 8
  %59 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %59 to i32
  %cmp140 = icmp eq i32 %conv139, 61
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.else.137
  %60 = load i8*, i8** %arg, align 8
  %add.ptr143 = getelementptr inbounds i8, i8* %60, i64 9
  store i8* %add.ptr143, i8** @aux_info_file_name, align 8
  store i32 1, i32* @flag_gen_aux_info, align 4
  br label %if.end.145

if.else.144:                                      ; preds = %if.else.137
  store i32 0, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.142
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.148

if.else.147:                                      ; preds = %sw.bb.123
  store i32 0, i32* %retval
  br label %return

if.end.148:                                       ; preds = %if.end.146
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.end.49
  %61 = load i8*, i8** %arg, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %62 to i32
  %cmp152 = icmp eq i32 %conv151, 0
  br i1 %cmp152, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %sw.bb.149
  %63 = load i32, i32* %argc.addr, align 4
  %cmp155 = icmp eq i32 %63, 1
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.then.154
  store i32 0, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.then.154
  %64 = load i8**, i8*** %argv.addr, align 8
  %arrayidx159 = getelementptr inbounds i8*, i8** %64, i64 1
  %65 = load i8*, i8** %arrayidx159, align 8
  store i8* %65, i8** @asm_file_name, align 8
  store i32 2, i32* %retval
  br label %return

if.end.160:                                       ; preds = %sw.bb.149
  store i32 0, i32* %retval
  br label %return

sw.bb.161:                                        ; preds = %if.end.49
  %66 = load i8*, i8** %arg, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %67 to i32
  %cmp164 = icmp eq i32 %conv163, 0
  br i1 %cmp164, label %if.then.166, label %if.else.173

if.then.166:                                      ; preds = %sw.bb.161
  %68 = load i32, i32* %argc.addr, align 4
  %cmp167 = icmp eq i32 %68, 1
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.then.166
  store i32 0, i32* %retval
  br label %return

if.end.170:                                       ; preds = %if.then.166
  %69 = load i8**, i8*** %argv.addr, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %69, i64 1
  %70 = load i8*, i8** %arrayidx171, align 8
  %call172 = call i32 @read_integral_parameter(i8* %70, i8* null, i32 -1)
  store i32 %call172, i32* %g_switch_val, align 4
  store i32 2, i32* %return_val, align 4
  br label %if.end.176

if.else.173:                                      ; preds = %sw.bb.161
  %71 = load i8*, i8** %arg, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %71, i64 1
  %call175 = call i32 @read_integral_parameter(i8* %add.ptr174, i8* null, i32 -1)
  store i32 %call175, i32* %g_switch_val, align 4
  store i32 1, i32* %return_val, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.end.170
  %72 = load i32, i32* %g_switch_val, align 4
  %cmp177 = icmp eq i32 %72, -1
  br i1 %cmp177, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %if.end.176
  store i32 0, i32* %return_val, align 4
  br label %if.end.181

if.else.180:                                      ; preds = %if.end.176
  store i32 1, i32* @g_switch_set, align 4
  %73 = load i32, i32* %g_switch_val, align 4
  store i32 %73, i32* @g_switch_value, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.180, %if.then.179
  %74 = load i32, i32* %return_val, align 4
  store i32 %74, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.148, %if.end.122, %if.end.108, %if.end.100, %if.end.94, %if.end.88, %if.end.70, %sw.bb.51, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.181, %if.then.169, %if.end.160, %if.end.158, %if.then.157, %if.else.147, %if.else.144, %if.end.135, %if.then.134, %if.else.119, %if.else.107, %if.else.99, %if.else.93, %if.else.85, %if.end.66, %if.then.65, %sw.bb.56, %sw.bb.53, %sw.default, %if.end.42, %if.then.29, %if.end, %if.then.11
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @display_help() #0 {
entry:
  %undoc = alloca i32, align 4
  %i = alloca i64, align 8
  %lang = alloca i8*, align 8
  %description = alloca i8*, align 8
  %description17 = alloca i8*, align 8
  %length = alloca i32, align 4
  %description44 = alloca i8*, align 8
  %description91 = alloca i8*, align 8
  %option94 = alloca i8*, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.195, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.196, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.197, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.198, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.199, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.200, i32 0, i32 0))
  store i64 97, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load i64, i64* %i, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %i, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %1
  %description6 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx, i32 0, i32 3
  %2 = load i8*, i8** %description6, align 8
  store i8* %2, i8** %description, align 8
  %3 = load i8*, i8** %description, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %description, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %6
  %string = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx9, i32 0, i32 0
  %7 = load i8*, i8** %string, align 8
  %8 = load i8*, i8** %description, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.202, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.203, i32 0, i32 0))
  store i64 6, i64* %i, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %if.end.34, %for.end
  %9 = load i64, i64* %i, align 8
  %dec14 = add i64 %9, -1
  store i64 %dec14, i64* %i, align 8
  %tobool15 = icmp ne i64 %9, 0
  br i1 %tobool15, label %for.body.16, label %for.end.35

for.body.16:                                      ; preds = %for.cond.13
  %10 = load i64, i64* %i, align 8
  %11 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx18 = getelementptr inbounds %struct.param_info, %struct.param_info* %11, i64 %10
  %help = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx18, i32 0, i32 2
  %12 = load i8*, i8** %help, align 8
  store i8* %12, i8** %description17, align 8
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx19 = getelementptr inbounds %struct.param_info, %struct.param_info* %14, i64 %13
  %option = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx19, i32 0, i32 0
  %15 = load i8*, i8** %option, align 8
  %call20 = call i64 @strlen(i8* %15) #9
  %sub = sub i64 21, %call20
  %conv21 = trunc i64 %sub to i32
  store i32 %conv21, i32* %length, align 4
  %16 = load i8*, i8** %description17, align 8
  %cmp22 = icmp ne i8* %16, null
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.34

land.lhs.true.24:                                 ; preds = %for.body.16
  %17 = load i8*, i8** %description17, align 8
  %18 = load i8, i8* %17, align 1
  %conv25 = sext i8 %18 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %land.lhs.true.24
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx29 = getelementptr inbounds %struct.param_info, %struct.param_info* %20, i64 %19
  %option30 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx29, i32 0, i32 0
  %21 = load i8*, i8** %option30, align 8
  %22 = load i32, i32* %length, align 4
  %cmp31 = icmp sgt i32 %22, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  %23 = load i32, i32* %length, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ 1, %cond.false ]
  %24 = load i8*, i8** %description17, align 8
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.204, i32 0, i32 0), i8* %21, i32 %cond, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.205, i32 0, i32 0), i8* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %cond.end, %land.lhs.true.24, %for.body.16
  br label %for.cond.13

for.end.35:                                       ; preds = %for.cond.13
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.206, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.207, i32 0, i32 0))
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.208, i32 0, i32 0))
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.209, i32 0, i32 0))
  store i64 19, i64* %i, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %if.end.57, %for.end.35
  %25 = load i64, i64* %i, align 8
  %dec41 = add i64 %25, -1
  store i64 %dec41, i64* %i, align 8
  %tobool42 = icmp ne i64 %25, 0
  br i1 %tobool42, label %for.body.43, label %for.end.58

for.body.43:                                      ; preds = %for.cond.40
  %26 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %26
  %description46 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx45, i32 0, i32 3
  %27 = load i8*, i8** %description46, align 8
  store i8* %27, i8** %description44, align 8
  %28 = load i8*, i8** %description44, align 8
  %cmp47 = icmp ne i8* %28, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.57

land.lhs.true.49:                                 ; preds = %for.body.43
  %29 = load i8*, i8** %description44, align 8
  %30 = load i8, i8* %29, align 1
  %conv50 = sext i8 %30 to i32
  %cmp51 = icmp ne i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %land.lhs.true.49
  %31 = load i64, i64* %i, align 8
  %arrayidx54 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %31
  %string55 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx54, i32 0, i32 0
  %32 = load i8*, i8** %string55, align 8
  %33 = load i8*, i8** %description44, align 8
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.210, i32 0, i32 0), i8* %32, i8* %33)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %land.lhs.true.49, %for.body.43
  br label %for.cond.40

for.end.58:                                       ; preds = %for.cond.40
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.211, i32 0, i32 0))
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.212, i32 0, i32 0))
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.213, i32 0, i32 0))
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.214, i32 0, i32 0))
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.215, i32 0, i32 0))
  store i64 6, i64* %i, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %if.end.77, %for.end.58
  %34 = load i64, i64* %i, align 8
  %dec65 = add i64 %34, -1
  store i64 %dec65, i64* %i, align 8
  %tobool66 = icmp ne i64 %34, 0
  br i1 %tobool66, label %for.body.67, label %for.end.78

for.body.67:                                      ; preds = %for.cond.64
  %35 = load i64, i64* %i, align 8
  %arrayidx68 = getelementptr inbounds [6 x %struct.anon.5], [6 x %struct.anon.5]* @debug_args, i32 0, i64 %35
  %description69 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx68, i32 0, i32 3
  %36 = load i8*, i8** %description69, align 8
  %cmp70 = icmp ne i8* %36, null
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %for.body.67
  %37 = load i64, i64* %i, align 8
  %arrayidx73 = getelementptr inbounds [6 x %struct.anon.5], [6 x %struct.anon.5]* @debug_args, i32 0, i64 %37
  %arg = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx73, i32 0, i32 0
  %38 = load i8*, i8** %arg, align 8
  %39 = load i64, i64* %i, align 8
  %arrayidx74 = getelementptr inbounds [6 x %struct.anon.5], [6 x %struct.anon.5]* @debug_args, i32 0, i64 %39
  %description75 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx74, i32 0, i32 3
  %40 = load i8*, i8** %description75, align 8
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.216, i32 0, i32 0), i8* %38, i8* %40)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %for.body.67
  br label %for.cond.64

for.end.78:                                       ; preds = %for.cond.64
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.217, i32 0, i32 0))
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.218, i32 0, i32 0))
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.219, i32 0, i32 0))
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.220, i32 0, i32 0))
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.221, i32 0, i32 0))
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.222, i32 0, i32 0))
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.223, i32 0, i32 0))
  store i32 0, i32* %undoc, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), i8** %lang, align 8
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.225, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc, %for.end.78
  %41 = load i64, i64* %i, align 8
  %cmp88 = icmp ult i64 %41, 108
  br i1 %cmp88, label %for.body.90, label %for.end.122

for.body.90:                                      ; preds = %for.cond.87
  %42 = load i64, i64* %i, align 8
  %arrayidx92 = getelementptr inbounds [108 x %struct.lang_opt], [108 x %struct.lang_opt]* @documented_lang_options, i32 0, i64 %42
  %description93 = getelementptr inbounds %struct.lang_opt, %struct.lang_opt* %arrayidx92, i32 0, i32 1
  %43 = load i8*, i8** %description93, align 8
  store i8* %43, i8** %description91, align 8
  %44 = load i64, i64* %i, align 8
  %arrayidx95 = getelementptr inbounds [108 x %struct.lang_opt], [108 x %struct.lang_opt]* @documented_lang_options, i32 0, i64 %44
  %option96 = getelementptr inbounds %struct.lang_opt, %struct.lang_opt* %arrayidx95, i32 0, i32 0
  %45 = load i8*, i8** %option96, align 8
  store i8* %45, i8** %option94, align 8
  %46 = load i8*, i8** %description91, align 8
  %cmp97 = icmp eq i8* %46, null
  br i1 %cmp97, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %for.body.90
  store i32 1, i32* %undoc, align 4
  %47 = load i32, i32* @extra_warnings, align 4
  %tobool100 = icmp ne i32 %47, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.99
  %48 = load i8*, i8** %option94, align 8
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.226, i32 0, i32 0), i8* %48)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.then.99
  br label %if.end.121

if.else:                                          ; preds = %for.body.90
  %49 = load i8*, i8** %description91, align 8
  %50 = load i8, i8* %49, align 1
  %conv104 = sext i8 %50 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.else
  br label %for.inc

if.else.108:                                      ; preds = %if.else
  %51 = load i8*, i8** %option94, align 8
  %cmp109 = icmp eq i8* %51, null
  br i1 %cmp109, label %if.then.111, label %if.else.117

if.then.111:                                      ; preds = %if.else.108
  %52 = load i32, i32* %undoc, align 4
  %tobool112 = icmp ne i32 %52, 0
  br i1 %tobool112, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.111
  %53 = load i8*, i8** %lang, align 8
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.227, i32 0, i32 0), i8* %53)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.111
  store i32 0, i32* %undoc, align 4
  %54 = load i8*, i8** %description91, align 8
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.228, i32 0, i32 0), i8* %54)
  %55 = load i8*, i8** %description91, align 8
  store i8* %55, i8** %lang, align 8
  br label %if.end.119

if.else.117:                                      ; preds = %if.else.108
  %56 = load i8*, i8** %option94, align 8
  %57 = load i8*, i8** %description91, align 8
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.229, i32 0, i32 0), i8* %56, i8* %57)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.117, %if.end.115
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.121, %if.then.107
  %58 = load i64, i64* %i, align 8
  %inc = add i64 %58, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.87

for.end.122:                                      ; preds = %for.cond.87
  %59 = load i32, i32* %undoc, align 4
  %tobool123 = icmp ne i32 %59, 0
  br i1 %tobool123, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %for.end.122
  %60 = load i8*, i8** %lang, align 8
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.227, i32 0, i32 0), i8* %60)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %for.end.122
  call void @display_target_options()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @display_target_options() #0 {
entry:
  %undoc = alloca i32, align 4
  %i = alloca i32, align 4
  %doc = alloca i32, align 4
  %option = alloca i8*, align 8
  %description = alloca i8*, align 8
  %option28 = alloca i8*, align 8
  %description31 = alloca i8*, align 8
  %0 = load i8, i8* @display_target_options.displayed, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.69

if.end:                                           ; preds = %entry
  store i8 1, i8* @display_target_options.displayed, align 1
  store i32 0, i32* %doc, align 4
  store i32 0, i32* %undoc, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.465, i32 0, i32 0))
  store i32 56, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %if.then.7, %if.end
  %1 = load i32, i32* %i, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %i, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  store i8* %3, i8** %option, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %idxprom2
  %description4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx3, i32 0, i32 2
  %5 = load i8*, i8** %description4, align 8
  store i8* %5, i8** %description, align 8
  %6 = load i8*, i8** %option, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8*, i8** %option, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.cond

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %description, align 8
  %cmp8 = icmp eq i8* %9, null
  br i1 %cmp8, label %if.then.10, label %if.else.15

if.then.10:                                       ; preds = %if.else
  store i32 1, i32* %undoc, align 4
  %10 = load i32, i32* @extra_warnings, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.10
  %11 = load i8*, i8** %option, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.466, i32 0, i32 0), i8* %11)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.22

if.else.15:                                       ; preds = %if.else
  %12 = load i8*, i8** %description, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else.15
  %14 = load i8*, i8** %option, align 8
  %15 = load i8*, i8** %description, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.467, i32 0, i32 0), i8* %14, i8* %15)
  %16 = load i32, i32* %doc, align 4
  %add = add nsw i32 %16, %call20
  store i32 %add, i32* %doc, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 13, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %if.end.59, %if.then.41, %for.end
  %17 = load i32, i32* %i, align 4
  %dec25 = add nsw i32 %17, -1
  store i32 %dec25, i32* %i, align 4
  %tobool26 = icmp ne i32 %17, 0
  br i1 %tobool26, label %for.body.27, label %for.end.60

for.body.27:                                      ; preds = %for.cond.24
  %18 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %idxprom29
  %prefix = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx30, i32 0, i32 0
  %19 = load i8*, i8** %prefix, align 8
  store i8* %19, i8** %option28, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %idxprom32
  %description34 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx33, i32 0, i32 2
  %21 = load i8*, i8** %description34, align 8
  store i8* %21, i8** %description31, align 8
  %22 = load i8*, i8** %option28, align 8
  %cmp35 = icmp eq i8* %22, null
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %for.body.27
  %23 = load i8*, i8** %option28, align 8
  %24 = load i8, i8* %23, align 1
  %conv38 = sext i8 %24 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %lor.lhs.false.37, %for.body.27
  br label %for.cond.24

if.else.42:                                       ; preds = %lor.lhs.false.37
  %25 = load i8*, i8** %description31, align 8
  %cmp43 = icmp eq i8* %25, null
  br i1 %cmp43, label %if.then.45, label %if.else.50

if.then.45:                                       ; preds = %if.else.42
  store i32 1, i32* %undoc, align 4
  %26 = load i32, i32* @extra_warnings, align 4
  %tobool46 = icmp ne i32 %26, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.45
  %27 = load i8*, i8** %option28, align 8
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.466, i32 0, i32 0), i8* %27)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.45
  br label %if.end.58

if.else.50:                                       ; preds = %if.else.42
  %28 = load i8*, i8** %description31, align 8
  %29 = load i8, i8* %28, align 1
  %conv51 = sext i8 %29 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.else.50
  %30 = load i8*, i8** %option28, align 8
  %31 = load i8*, i8** %description31, align 8
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.467, i32 0, i32 0), i8* %30, i8* %31)
  %32 = load i32, i32* %doc, align 4
  %add56 = add nsw i32 %32, %call55
  store i32 %add56, i32* %doc, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.else.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58
  br label %for.cond.24

for.end.60:                                       ; preds = %for.cond.24
  %33 = load i32, i32* %undoc, align 4
  %tobool61 = icmp ne i32 %33, 0
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %for.end.60
  %34 = load i32, i32* %doc, align 4
  %tobool63 = icmp ne i32 %34, 0
  br i1 %tobool63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.then.62
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.468, i32 0, i32 0))
  br label %if.end.68

if.else.66:                                       ; preds = %if.then.62
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.469, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.then, %if.end.68, %for.end.60
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_version(%struct._IO_FILE* %file, i8* %indent) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %indent.addr = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %indent, i8** %indent.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i8*, i8** %indent.addr, align 8
  %2 = load i8*, i8** %indent.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0)
  %4 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 0), align 8
  %5 = load i8*, i8** @version_string, align 8
  %6 = load i8*, i8** %indent.addr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.470, i32 0, i32 0), i8* %1, i8* %cond, i8* %4, i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.472, i32 0, i32 0), i8* %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.473, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare void @set_param_value(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_f_option(i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %option_value = alloca i8*, align 8
  %val = alloca i32, align 4
  %reg = alloca i32, align 4
  %nm = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8* null, i8** %option_value, align 8
  store i32 97, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.31, %entry
  %0 = load i32, i32* %j, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom
  %string = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %string, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #9
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom2
  %on_value = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx3, i32 0, i32 2
  %5 = load i32, i32* %on_value, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom4
  %variable = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx5, i32 0, i32 1
  %7 = load i32*, i32** %variable, align 8
  store i32 %5, i32* %7, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i8*, i8** %arg.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 110
  br i1 %cmp, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8*, i8** %arg.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 111
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** %arg.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.31

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %14 = load i8*, i8** %arg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom18
  %string20 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx19, i32 0, i32 0
  %16 = load i8*, i8** %string20, align 8
  %call21 = call i32 @strcmp(i8* %add.ptr, i8* %16) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.17
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom24
  %on_value26 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx25, i32 0, i32 2
  %18 = load i32, i32* %on_value26, align 4
  %tobool27 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool27, true
  %lnot.ext = zext i1 %lnot to i32
  %19 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %idxprom28
  %variable30 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx29, i32 0, i32 1
  %20 = load i32*, i32** %variable30, align 8
  store i32 %lnot.ext, i32* %20, align 4
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true, %if.end
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.474, i32 0, i32 0)) #9
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %for.end
  call void @set_fast_math_flags()
  br label %if.end.238

if.else:                                          ; preds = %for.end
  %22 = load i8*, i8** %arg.addr, align 8
  %call35 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.475, i32 0, i32 0)) #9
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %if.else
  call void @set_no_fast_math_flags()
  br label %if.end.237

if.else.38:                                       ; preds = %if.else
  %23 = load i8*, i8** %arg.addr, align 8
  %call39 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.476, i32 0, i32 0), i64 13) #9
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.38
  br label %cond.end

cond.false:                                       ; preds = %if.else.38
  %24 = load i8*, i8** %arg.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %24, i64 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %add.ptr41, %cond.false ]
  store i8* %cond, i8** %option_value, align 8
  %tobool42 = icmp ne i8* %cond, null
  br i1 %tobool42, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %25 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.477, i32 0, i32 0), i64 13) #9
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %lor.lhs.false
  br label %cond.end.48

cond.false.46:                                    ; preds = %lor.lhs.false
  %26 = load i8*, i8** %arg.addr, align 8
  %add.ptr47 = getelementptr inbounds i8, i8* %26, i64 13
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.46, %cond.true.45
  %cond49 = phi i8* [ null, %cond.true.45 ], [ %add.ptr47, %cond.false.46 ]
  store i8* %cond49, i8** %option_value, align 8
  %tobool50 = icmp ne i8* %cond49, null
  br i1 %tobool50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %cond.end.48, %cond.end
  %27 = load i8*, i8** %option_value, align 8
  %28 = load i8*, i8** %arg.addr, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %28, i64 -2
  %29 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx53 = getelementptr inbounds %struct.param_info, %struct.param_info* %29, i64 0
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx53, i32 0, i32 1
  %30 = load i32, i32* %value, align 4
  %call54 = call i32 @read_integral_parameter(i8* %27, i8* %add.ptr52, i32 %30)
  store i32 %call54, i32* %val, align 4
  %31 = load i32, i32* %val, align 4
  call void @set_param_value(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i32 %31)
  br label %if.end.236

if.else.55:                                       ; preds = %cond.end.48
  %32 = load i8*, i8** %arg.addr, align 8
  %call56 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.478, i32 0, i32 0), i64 14) #9
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %if.else.55
  br label %cond.end.61

cond.false.59:                                    ; preds = %if.else.55
  %33 = load i8*, i8** %arg.addr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %33, i64 14
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.58
  %cond62 = phi i8* [ null, %cond.true.58 ], [ %add.ptr60, %cond.false.59 ]
  store i8* %cond62, i8** %option_value, align 8
  %tobool63 = icmp ne i8* %cond62, null
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %cond.end.61
  %34 = load i8*, i8** %option_value, align 8
  call void @fix_sched_param(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.479, i32 0, i32 0), i8* %34)
  br label %if.end.235

if.else.65:                                       ; preds = %cond.end.61
  %35 = load i8*, i8** %arg.addr, align 8
  %call66 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.480, i32 0, i32 0), i64 6) #9
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %if.else.65
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.else.65
  %36 = load i8*, i8** %arg.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %36, i64 6
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.68
  %cond72 = phi i8* [ null, %cond.true.68 ], [ %add.ptr70, %cond.false.69 ]
  store i8* %cond72, i8** %option_value, align 8
  %tobool73 = icmp ne i8* %cond72, null
  br i1 %tobool73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %cond.end.71
  %37 = load i8*, i8** %option_value, align 8
  call void @fix_register(i8* %37, i32 1, i32 1)
  br label %if.end.234

if.else.75:                                       ; preds = %cond.end.71
  %38 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.481, i32 0, i32 0), i64 10) #9
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %if.else.75
  br label %cond.end.81

cond.false.79:                                    ; preds = %if.else.75
  %39 = load i8*, i8** %arg.addr, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %39, i64 10
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.78
  %cond82 = phi i8* [ null, %cond.true.78 ], [ %add.ptr80, %cond.false.79 ]
  store i8* %cond82, i8** %option_value, align 8
  %tobool83 = icmp ne i8* %cond82, null
  br i1 %tobool83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %cond.end.81
  %40 = load i8*, i8** %option_value, align 8
  call void @fix_register(i8* %40, i32 0, i32 1)
  br label %if.end.233

if.else.85:                                       ; preds = %cond.end.81
  %41 = load i8*, i8** %arg.addr, align 8
  %call86 = call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.482, i32 0, i32 0), i64 11) #9
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %if.else.85
  br label %cond.end.91

cond.false.89:                                    ; preds = %if.else.85
  %42 = load i8*, i8** %arg.addr, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %42, i64 11
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.true.88
  %cond92 = phi i8* [ null, %cond.true.88 ], [ %add.ptr90, %cond.false.89 ]
  store i8* %cond92, i8** %option_value, align 8
  %tobool93 = icmp ne i8* %cond92, null
  br i1 %tobool93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %cond.end.91
  %43 = load i8*, i8** %option_value, align 8
  call void @fix_register(i8* %43, i32 0, i32 0)
  br label %if.end.232

if.else.95:                                       ; preds = %cond.end.91
  %44 = load i8*, i8** %arg.addr, align 8
  %call96 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i64 12) #9
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.else.95
  br label %cond.end.101

cond.false.99:                                    ; preds = %if.else.95
  %45 = load i8*, i8** %arg.addr, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %45, i64 12
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.98
  %cond102 = phi i8* [ null, %cond.true.98 ], [ %add.ptr100, %cond.false.99 ]
  store i8* %cond102, i8** %option_value, align 8
  %tobool103 = icmp ne i8* %cond102, null
  br i1 %tobool103, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %cond.end.101
  %46 = load i8*, i8** %option_value, align 8
  %47 = load i8*, i8** %arg.addr, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %47, i64 -2
  %48 = load i32, i32* @align_loops, align 4
  %call106 = call i32 @read_integral_parameter(i8* %46, i8* %add.ptr105, i32 %48)
  store i32 %call106, i32* @align_loops, align 4
  br label %if.end.231

if.else.107:                                      ; preds = %cond.end.101
  %49 = load i8*, i8** %arg.addr, align 8
  %call108 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.170, i32 0, i32 0), i64 16) #9
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %if.else.107
  br label %cond.end.113

cond.false.111:                                   ; preds = %if.else.107
  %50 = load i8*, i8** %arg.addr, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %50, i64 16
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.110
  %cond114 = phi i8* [ null, %cond.true.110 ], [ %add.ptr112, %cond.false.111 ]
  store i8* %cond114, i8** %option_value, align 8
  %tobool115 = icmp ne i8* %cond114, null
  br i1 %tobool115, label %if.then.116, label %if.else.119

if.then.116:                                      ; preds = %cond.end.113
  %51 = load i8*, i8** %option_value, align 8
  %52 = load i8*, i8** %arg.addr, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %52, i64 -2
  %53 = load i32, i32* @align_functions, align 4
  %call118 = call i32 @read_integral_parameter(i8* %51, i8* %add.ptr117, i32 %53)
  store i32 %call118, i32* @align_functions, align 4
  br label %if.end.230

if.else.119:                                      ; preds = %cond.end.113
  %54 = load i8*, i8** %arg.addr, align 8
  %call120 = call i32 @strncmp(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i64 12) #9
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %if.else.119
  br label %cond.end.125

cond.false.123:                                   ; preds = %if.else.119
  %55 = load i8*, i8** %arg.addr, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %55, i64 12
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi i8* [ null, %cond.true.122 ], [ %add.ptr124, %cond.false.123 ]
  store i8* %cond126, i8** %option_value, align 8
  %tobool127 = icmp ne i8* %cond126, null
  br i1 %tobool127, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %cond.end.125
  %56 = load i8*, i8** %option_value, align 8
  %57 = load i8*, i8** %arg.addr, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %57, i64 -2
  %58 = load i32, i32* @align_jumps, align 4
  %call130 = call i32 @read_integral_parameter(i8* %56, i8* %add.ptr129, i32 %58)
  store i32 %call130, i32* @align_jumps, align 4
  br label %if.end.229

if.else.131:                                      ; preds = %cond.end.125
  %59 = load i8*, i8** %arg.addr, align 8
  %call132 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.483, i32 0, i32 0), i64 13) #9
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %if.else.131
  br label %cond.end.137

cond.false.135:                                   ; preds = %if.else.131
  %60 = load i8*, i8** %arg.addr, align 8
  %add.ptr136 = getelementptr inbounds i8, i8* %60, i64 13
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.134
  %cond138 = phi i8* [ null, %cond.true.134 ], [ %add.ptr136, %cond.false.135 ]
  store i8* %cond138, i8** %option_value, align 8
  %tobool139 = icmp ne i8* %cond138, null
  br i1 %tobool139, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %cond.end.137
  %61 = load i8*, i8** %option_value, align 8
  %62 = load i8*, i8** %arg.addr, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %62, i64 -2
  %63 = load i32, i32* @align_labels, align 4
  %call142 = call i32 @read_integral_parameter(i8* %61, i8* %add.ptr141, i32 %63)
  store i32 %call142, i32* @align_labels, align 4
  br label %if.end.228

if.else.143:                                      ; preds = %cond.end.137
  %64 = load i8*, i8** %arg.addr, align 8
  %call144 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.484, i32 0, i32 0), i64 21) #9
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %cond.true.146, label %cond.false.147

cond.true.146:                                    ; preds = %if.else.143
  br label %cond.end.149

cond.false.147:                                   ; preds = %if.else.143
  %65 = load i8*, i8** %arg.addr, align 8
  %add.ptr148 = getelementptr inbounds i8, i8* %65, i64 21
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.147, %cond.true.146
  %cond150 = phi i8* [ null, %cond.true.146 ], [ %add.ptr148, %cond.false.147 ]
  store i8* %cond150, i8** %option_value, align 8
  %tobool151 = icmp ne i8* %cond150, null
  br i1 %tobool151, label %if.then.152, label %if.else.162

if.then.152:                                      ; preds = %cond.end.149
  %66 = load i8*, i8** %option_value, align 8
  %call153 = call i32 @decode_reg_name(i8* %66)
  store i32 %call153, i32* %reg, align 4
  %67 = load i32, i32* %reg, align 4
  %cmp154 = icmp slt i32 %67, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %if.then.152
  %68 = load i8*, i8** %option_value, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.485, i32 0, i32 0), i8* %68)
  br label %if.end.161

if.else.157:                                      ; preds = %if.then.152
  %69 = load i32, i32* @target_flags, align 4
  %and = and i32 %69, 33554432
  %tobool158 = icmp ne i32 %and, 0
  %cond159 = select i1 %tobool158, i32 5, i32 4
  %70 = load i32, i32* %reg, align 4
  %call160 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond159, i32 %70)
  store %struct.rtx_def* %call160, %struct.rtx_def** @stack_limit_rtx, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.157, %if.then.156
  br label %if.end.227

if.else.162:                                      ; preds = %cond.end.149
  %71 = load i8*, i8** %arg.addr, align 8
  %call163 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.486, i32 0, i32 0), i64 19) #9
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %if.else.162
  br label %cond.end.168

cond.false.166:                                   ; preds = %if.else.162
  %72 = load i8*, i8** %arg.addr, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %72, i64 19
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.165
  %cond169 = phi i8* [ null, %cond.true.165 ], [ %add.ptr167, %cond.false.166 ]
  store i8* %cond169, i8** %option_value, align 8
  %tobool170 = icmp ne i8* %cond169, null
  br i1 %tobool170, label %if.then.171, label %if.else.177

if.then.171:                                      ; preds = %cond.end.168
  %73 = load i8*, i8** %option_value, align 8
  %call172 = call i8* @ggc_alloc_string(i8* %73, i32 -1)
  store i8* %call172, i8** %nm, align 8
  %74 = load i32, i32* @target_flags, align 4
  %and173 = and i32 %74, 33554432
  %tobool174 = icmp ne i32 %and173, 0
  %cond175 = select i1 %tobool174, i32 5, i32 4
  %75 = load i8*, i8** %nm, align 8
  %call176 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond175, i8* %75)
  store %struct.rtx_def* %call176, %struct.rtx_def** @stack_limit_rtx, align 8
  br label %if.end.226

if.else.177:                                      ; preds = %cond.end.168
  %76 = load i8*, i8** %arg.addr, align 8
  %call178 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.487, i32 0, i32 0), i64 15) #9
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %if.else.177
  br label %cond.end.183

cond.false.181:                                   ; preds = %if.else.177
  %77 = load i8*, i8** %arg.addr, align 8
  %add.ptr182 = getelementptr inbounds i8, i8* %77, i64 15
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.180
  %cond184 = phi i8* [ null, %cond.true.180 ], [ %add.ptr182, %cond.false.181 ]
  store i8* %cond184, i8** %option_value, align 8
  %tobool185 = icmp ne i8* %cond184, null
  br i1 %tobool185, label %if.then.186, label %if.else.189

if.then.186:                                      ; preds = %cond.end.183
  %78 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %buffer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %78, i32 0, i32 0
  %79 = load i8*, i8** %option_value, align 8
  %80 = load i8*, i8** %arg.addr, align 8
  %add.ptr187 = getelementptr inbounds i8, i8* %80, i64 -2
  %81 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %82 = bitcast %struct.diagnostic_context* %81 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %82, i32 0, i32 0
  %ideal_maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 2
  %83 = load i32, i32* %ideal_maximum_length, align 4
  %call188 = call i32 @read_integral_parameter(i8* %79, i8* %add.ptr187, i32 %83)
  call void @output_set_maximum_length(%struct.output_buffer* %buffer, i32 %call188)
  br label %if.end.225

if.else.189:                                      ; preds = %cond.end.183
  %84 = load i8*, i8** %arg.addr, align 8
  %call190 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.488, i32 0, i32 0), i64 26) #9
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %if.else.189
  br label %cond.end.195

cond.false.193:                                   ; preds = %if.else.189
  %85 = load i8*, i8** %arg.addr, align 8
  %add.ptr194 = getelementptr inbounds i8, i8* %85, i64 26
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.193, %cond.true.192
  %cond196 = phi i8* [ null, %cond.true.192 ], [ %add.ptr194, %cond.false.193 ]
  store i8* %cond196, i8** %option_value, align 8
  %tobool197 = icmp ne i8* %cond196, null
  br i1 %tobool197, label %if.then.198, label %if.else.213

if.then.198:                                      ; preds = %cond.end.195
  %86 = load i8*, i8** %option_value, align 8
  %call199 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.489, i32 0, i32 0)) #9
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.else.203, label %if.then.201

if.then.201:                                      ; preds = %if.then.198
  %87 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %88 = bitcast %struct.diagnostic_context* %87 to %struct.output_buffer*
  %state202 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %88, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state202, i32 0, i32 6
  store i32 0, i32* %prefixing_rule, align 4
  br label %if.end.212

if.else.203:                                      ; preds = %if.then.198
  %89 = load i8*, i8** %option_value, align 8
  %call204 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.490, i32 0, i32 0)) #9
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.else.209, label %if.then.206

if.then.206:                                      ; preds = %if.else.203
  %90 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %91 = bitcast %struct.diagnostic_context* %90 to %struct.output_buffer*
  %state207 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %91, i32 0, i32 0
  %prefixing_rule208 = getelementptr inbounds %struct.output_state, %struct.output_state* %state207, i32 0, i32 6
  store i32 2, i32* %prefixing_rule208, align 4
  br label %if.end.211

if.else.209:                                      ; preds = %if.else.203
  %92 = load i8*, i8** %arg.addr, align 8
  %add.ptr210 = getelementptr inbounds i8, i8* %92, i64 -2
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0), i8* %add.ptr210)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %if.then.206
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.201
  br label %if.end.224

if.else.213:                                      ; preds = %cond.end.195
  %93 = load i8*, i8** %arg.addr, align 8
  %call214 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.491, i32 0, i32 0)) #9
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.else.217, label %if.then.216

if.then.216:                                      ; preds = %if.else.213
  store %struct.rtx_def* null, %struct.rtx_def** @stack_limit_rtx, align 8
  br label %if.end.223

if.else.217:                                      ; preds = %if.else.213
  %94 = load i8*, i8** %arg.addr, align 8
  %call218 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.492, i32 0, i32 0)) #9
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.else.221, label %if.then.220

if.then.220:                                      ; preds = %if.else.217
  br label %if.end.222

if.else.221:                                      ; preds = %if.else.217
  store i32 0, i32* %retval
  br label %return

if.end.222:                                       ; preds = %if.then.220
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.216
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.end.212
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.186
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.171
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.161
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.140
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.128
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.116
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.104
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.94
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.84
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.74
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.64
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.51
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.37
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.34
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.238, %if.else.221, %if.then.23, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_g_option(i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %da_len = alloca i32, align 4
  %type = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store %struct.anon.5* getelementptr inbounds ([6 x %struct.anon.5], [6 x %struct.anon.5]* @debug_args, i32 0, i32 0), %struct.anon.5** @da, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %arg1 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %0, i32 0, i32 0
  %1 = load i8*, i8** %arg1, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %arg2 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2, i32 0, i32 0
  %3 = load i8*, i8** %arg2, align 8
  %call = call i64 @strlen(i8* %3) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %da_len, align 4
  %4 = load i32, i32* %da_len, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %arg.addr, align 8
  %6 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %arg4 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %6, i32 0, i32 0
  %7 = load i8*, i8** %arg4, align 8
  %8 = load i32, i32* %da_len, align 4
  %conv5 = sext i32 %8 to i64
  %call6 = call i32 @strncmp(i8* %5, i8* %7, i64 %conv5) #9
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.90, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %9 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %debug_type = getelementptr inbounds %struct.anon.5, %struct.anon.5* %9, i32 0, i32 1
  %10 = load i32, i32* %debug_type, align 4
  store i32 %10, i32* %type, align 4
  %11 = load i8*, i8** %arg.addr, align 8
  %12 = load i32, i32* %da_len, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv8 = sext i8 %14 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv10 = sext i8 %16 to i32
  %and = and i32 %conv10, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %17 to i32
  %and12 = and i32 %conv11, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %if.then
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %tobool15 = icmp ne i8 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %20 = load i8*, i8** %p, align 8
  %call17 = call i32 @read_integral_parameter(i8* %20, i8* null, i32 4)
  store i32 %call17, i32* @decode_g_option.level, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* @decode_g_option.level, align 4
  %cmp18 = icmp eq i32 %21, 0
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %22 = load i32, i32* @decode_g_option.level, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %22, %cond.false ]
  store i32 %cond, i32* @decode_g_option.level, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %if.then.16
  %23 = load i32, i32* %da_len, align 4
  %cmp21 = icmp sgt i32 %23, 1
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.35

land.lhs.true.23:                                 ; preds = %if.end.20
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv24 = sext i8 %25 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.35

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %26 = load i8*, i8** %arg.addr, align 8
  %27 = load i32, i32* %da_len, align 4
  %conv27 = sext i32 %27 to i64
  %call28 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.498, i32 0, i32 0), i64 %conv27) #9
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.35, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.26
  %28 = load i32, i32* @decode_g_option.level, align 4
  %29 = load i32, i32* @decode_g_option.level, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.499, i32 0, i32 0), i32 %28, i32 %29)
  %30 = load i32, i32* @decode_g_option.level, align 4
  %cmp31 = icmp eq i32 %30, 2
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.500, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.26, %land.lhs.true.23, %if.end.20
  %31 = load i32, i32* @decode_g_option.level, align 4
  %cmp36 = icmp ugt i32 %31, 3
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %32 = load i8*, i8** %arg.addr, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %32, i64 -2
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.501, i32 0, i32 0), i8* %add.ptr39)
  %33 = load i32, i32* @debug_info_level, align 4
  store i32 %33, i32* @decode_g_option.level, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %34 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %34, 0
  br i1 %cmp41, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.end.40
  store i32 4, i32* %type, align 4
  %35 = load i32, i32* %da_len, align 4
  %cmp44 = icmp sgt i32 %35, 1
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.52

land.lhs.true.46:                                 ; preds = %if.then.43
  %36 = load i8*, i8** %arg.addr, align 8
  %37 = load i32, i32* %da_len, align 4
  %conv47 = sext i32 %37 to i64
  %call48 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.457, i32 0, i32 0), i64 %conv47) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.46
  store i32 4, i32* %type, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.46, %if.then.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.40
  %38 = load i32, i32* %type, align 4
  %cmp54 = icmp eq i32 %38, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %39 = load i8*, i8** %arg.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %39, i64 -2
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %add.ptr57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  %40 = load i32, i32* @decode_g_option.type_explicitly_set_p, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.71

land.lhs.true.60:                                 ; preds = %if.end.58
  %41 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %debug_type61 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %41, i32 0, i32 1
  %42 = load i32, i32* %debug_type61, align 4
  %cmp62 = icmp ne i32 %42, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.71

land.lhs.true.64:                                 ; preds = %land.lhs.true.60
  %43 = load i32, i32* %type, align 4
  %44 = load i32, i32* @decode_g_option.selected_debug_type, align 4
  %cmp65 = icmp ne i32 %43, %44
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %land.lhs.true.64
  %45 = load i8*, i8** %arg.addr, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %45, i64 -2
  %46 = load i32, i32* @decode_g_option.selected_debug_type, align 4
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [7 x i8*], [7 x i8*]* @decode_g_option.debug_type_names, i32 0, i64 %idxprom69
  %47 = load i8*, i8** %arrayidx70, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.502, i32 0, i32 0), i8* %add.ptr68, i8* %47)
  br label %if.end.89

if.else.71:                                       ; preds = %land.lhs.true.64, %land.lhs.true.60, %if.end.58
  %48 = load i32, i32* @decode_g_option.type_explicitly_set_p, align 4
  %tobool72 = icmp ne i32 %48, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.78

land.lhs.true.73:                                 ; preds = %if.else.71
  %49 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %debug_type74 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %49, i32 0, i32 1
  %50 = load i32, i32* %debug_type74, align 4
  %cmp75 = icmp eq i32 %50, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %land.lhs.true.73
  br label %if.end.82

if.else.78:                                       ; preds = %land.lhs.true.73, %if.else.71
  %51 = load i32, i32* %type, align 4
  store i32 %51, i32* @decode_g_option.selected_debug_type, align 4
  %52 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %debug_type79 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %52, i32 0, i32 1
  %53 = load i32, i32* %debug_type79, align 4
  %cmp80 = icmp ne i32 %53, 0
  %conv81 = zext i1 %cmp80 to i32
  store i32 %conv81, i32* @decode_g_option.type_explicitly_set_p, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.78, %if.then.77
  %54 = load i32, i32* @decode_g_option.level, align 4
  %cmp83 = icmp eq i32 %54, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %if.end.82
  br label %cond.end.87

cond.false.86:                                    ; preds = %if.end.82
  %55 = load i32, i32* @decode_g_option.selected_debug_type, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi i32 [ 0, %cond.true.85 ], [ %55, %cond.false.86 ]
  store i32 %cond88, i32* @write_symbols, align 4
  %56 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %use_extensions_p = getelementptr inbounds %struct.anon.5, %struct.anon.5* %56, i32 0, i32 2
  %57 = load i32, i32* %use_extensions_p, align 4
  store i32 %57, i32* @use_gnu_debug_info_extensions, align 4
  %58 = load i32, i32* @decode_g_option.level, align 4
  store i32 %58, i32* @debug_info_level, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end.87, %if.then.67
  br label %for.end

if.end.90:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.90, %if.then.14
  %59 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %incdec.ptr = getelementptr inbounds %struct.anon.5, %struct.anon.5* %59, i32 1
  store %struct.anon.5* %incdec.ptr, %struct.anon.5** @da, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.89, %for.cond
  %60 = load %struct.anon.5*, %struct.anon.5** @da, align 8
  %arg91 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %60, i32 0, i32 0
  %61 = load i8*, i8** %arg91, align 8
  %tobool92 = icmp ne i8* %61, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.94, %if.then.93
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal void @decode_d_option(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %matched = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  switch i32 %conv, label %sw.default [
    i32 97, label %sw.bb
    i32 65, label %sw.bb.2
    i32 112, label %sw.bb.3
    i32 80, label %sw.bb.4
    i32 118, label %sw.bb.5
    i32 120, label %sw.bb.6
    i32 121, label %sw.bb.7
    i32 68, label %sw.bb.8
    i32 73, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom
  %enabled = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx, i32 0, i32 3
  store i8 1, i8* %enabled, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  store i32 1, i32* @flag_debug_asm, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* @flag_print_asm_name, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i32 1, i32* @flag_dump_rtl_in_asm, align 4
  store i32 1, i32* @flag_print_asm_name, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i32 1, i32* @graph_dump_format, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 1, i32* @rtl_dump_and_exit, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %7 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 18), align 8
  call void %7(i32 1)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body, %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 0, i32* %matched, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.21, %sw.default
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 32
  br i1 %cmp10, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.9
  %9 = load i32, i32* %c, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom13
  %debug_switch = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx14, i32 0, i32 1
  %11 = load i8, i8* %debug_switch, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %9, %conv15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom18
  %enabled20 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx19, i32 0, i32 3
  store i8 1, i8* %enabled20, align 1
  store i32 1, i32* %matched, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.9

for.end.23:                                       ; preds = %for.cond.9
  %14 = load i32, i32* %matched, align 4
  %tobool24 = icmp ne i32 %14, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end.23
  %15 = load i32, i32* %c, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.503, i32 0, i32 0), i32 %15)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.end.23
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.26, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_W_option(i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %option_value = alloca i8*, align 8
  %j = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i8* null, i8** %option_value, align 8
  store i32 19, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.31, %entry
  %0 = load i32, i32* %j, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom
  %string = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %string, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #9
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom2
  %on_value = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx3, i32 0, i32 2
  %5 = load i32, i32* %on_value, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom4
  %variable = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx5, i32 0, i32 1
  %7 = load i32*, i32** %variable, align 8
  store i32 %5, i32* %7, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %8 = load i8*, i8** %arg.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 110
  br i1 %cmp, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8*, i8** %arg.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 111
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** %arg.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.31

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %14 = load i8*, i8** %arg.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom18
  %string20 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx19, i32 0, i32 0
  %16 = load i8*, i8** %string20, align 8
  %call21 = call i32 @strcmp(i8* %add.ptr, i8* %16) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.17
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom24
  %on_value26 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx25, i32 0, i32 2
  %18 = load i32, i32* %on_value26, align 4
  %tobool27 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool27, true
  %lnot.ext = zext i1 %lnot to i32
  %19 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [19 x %struct.lang_independent_options], [19 x %struct.lang_independent_options]* @W_options, i32 0, i64 %idxprom28
  %variable30 = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx29, i32 0, i32 1
  %20 = load i32*, i32** %variable30, align 8
  store i32 %lnot.ext, i32* %20, align 4
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true, %if.end
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.504, i32 0, i32 0), i64 9) #9
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %22 = load i8*, i8** %arg.addr, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %22, i64 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %add.ptr34, %cond.false ]
  store i8* %cond, i8** %option_value, align 8
  %tobool35 = icmp ne i8* %cond, null
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %cond.end
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.505, i32 0, i32 0))
  br label %if.end.63

if.else:                                          ; preds = %cond.end
  %23 = load i8*, i8** %arg.addr, align 8
  %call37 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.506, i32 0, i32 0), i64 12) #9
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %if.else
  br label %cond.end.42

cond.false.40:                                    ; preds = %if.else
  %24 = load i8*, i8** %arg.addr, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %24, i64 12
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  %cond43 = phi i8* [ null, %cond.true.39 ], [ %add.ptr41, %cond.false.40 ]
  store i8* %cond43, i8** %option_value, align 8
  %tobool44 = icmp ne i8* %cond43, null
  br i1 %tobool44, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %cond.end.42
  %25 = load i8*, i8** %option_value, align 8
  %26 = load i8*, i8** %arg.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %26, i64 -2
  %call47 = call i32 @read_integral_parameter(i8* %25, i8* %add.ptr46, i32 -1)
  %conv48 = sext i32 %call47 to i64
  store i64 %conv48, i64* @larger_than_size, align 8
  %27 = load i64, i64* @larger_than_size, align 8
  %cmp49 = icmp ne i64 %27, -1
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* @warn_larger_than, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %cond.end.42
  %28 = load i8*, i8** %arg.addr, align 8
  %call52 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.507, i32 0, i32 0)) #9
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.55, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  call void @set_Wunused(i32 1)
  br label %if.end.61

if.else.55:                                       ; preds = %if.else.51
  %29 = load i8*, i8** %arg.addr, align 8
  %call56 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.508, i32 0, i32 0)) #9
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.else.55
  call void @set_Wunused(i32 0)
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.55
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.45
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.36
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.else.59, %if.then.23, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @printf(i8*, ...) #1

declare void @fnotice(%struct._IO_FILE*, i8*, ...) #1

declare void @fix_sched_param(i8*, i8*) #1

declare void @fix_register(i8*, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare i8* @ggc_alloc_string(i8*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare void @output_set_maximum_length(%struct.output_buffer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @process_options() #0 {
entry:
  call void @override_options()
  %0 = load i32, i32* @align_loops, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @align_loops, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @align_loops_max_skip, align 4
  %2 = load i32, i32* @align_loops, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* @align_loops, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load i32, i32* @align_loops, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* @align_loops_max_skip, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %lor.lhs.false
  %5 = load i32, i32* @align_loops, align 4
  %mul = mul nsw i32 %5, 2
  %sub4 = sub nsw i32 %mul, 1
  %conv = sext i32 %sub4 to i64
  %call = call i32 @floor_log2_wide(i64 %conv)
  store i32 %call, i32* @align_loops_log, align 4
  %6 = load i32, i32* @align_jumps, align 4
  %cmp5 = icmp sle i32 %6, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  store i32 1, i32* @align_jumps, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.3
  %7 = load i32, i32* @align_jumps_max_skip, align 4
  %8 = load i32, i32* @align_jumps, align 4
  %cmp9 = icmp sgt i32 %7, %8
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.8
  %9 = load i32, i32* @align_jumps, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.end.8
  %10 = load i32, i32* @align_jumps, align 4
  %sub14 = sub nsw i32 %10, 1
  store i32 %sub14, i32* @align_jumps_max_skip, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %lor.lhs.false.11
  %11 = load i32, i32* @align_jumps, align 4
  %mul16 = mul nsw i32 %11, 2
  %sub17 = sub nsw i32 %mul16, 1
  %conv18 = sext i32 %sub17 to i64
  %call19 = call i32 @floor_log2_wide(i64 %conv18)
  store i32 %call19, i32* @align_jumps_log, align 4
  %12 = load i32, i32* @align_labels, align 4
  %cmp20 = icmp sle i32 %12, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  store i32 1, i32* @align_labels, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  %13 = load i32, i32* @align_labels, align 4
  %mul24 = mul nsw i32 %13, 2
  %sub25 = sub nsw i32 %mul24, 1
  %conv26 = sext i32 %sub25 to i64
  %call27 = call i32 @floor_log2_wide(i64 %conv26)
  store i32 %call27, i32* @align_labels_log, align 4
  %14 = load i32, i32* @align_labels_max_skip, align 4
  %15 = load i32, i32* @align_labels, align 4
  %cmp28 = icmp sgt i32 %14, %15
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.23
  %16 = load i32, i32* @align_labels, align 4
  %tobool31 = icmp ne i32 %16, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.30, %if.end.23
  %17 = load i32, i32* @align_labels, align 4
  %sub33 = sub nsw i32 %17, 1
  store i32 %sub33, i32* @align_labels_max_skip, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %lor.lhs.false.30
  %18 = load i32, i32* @align_functions, align 4
  %cmp35 = icmp sle i32 %18, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store i32 1, i32* @align_functions, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %19 = load i32, i32* @align_functions, align 4
  %mul39 = mul nsw i32 %19, 2
  %sub40 = sub nsw i32 %mul39, 1
  %conv41 = sext i32 %sub40 to i64
  %call42 = call i32 @floor_log2_wide(i64 %conv41)
  store i32 %call42, i32* @align_functions_log, align 4
  %20 = load i32, i32* @flag_unroll_all_loops, align 4
  %tobool43 = icmp ne i32 %20, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  store i32 1, i32* @flag_unroll_loops, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.38
  %21 = load i32, i32* @flag_unroll_loops, align 4
  %tobool46 = icmp ne i32 %21, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  store i32 1, i32* @flag_strength_reduce, align 4
  store i32 1, i32* @flag_rerun_cse_after_loop, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %22 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool49 = icmp ne i32 %22, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  store i32 1, i32* @flag_asynchronous_unwind_tables, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %23 = load i32, i32* @flag_asynchronous_unwind_tables, align 4
  %tobool52 = icmp ne i32 %23, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  store i32 1, i32* @flag_unwind_tables, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  %24 = load i32, i32* @flag_delayed_branch, align 4
  %tobool55 = icmp ne i32 %24, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.666, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  %25 = load i32, i32* @profile_flag, align 4
  %tobool58 = icmp ne i32 %25, 0
  br i1 %tobool58, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end.57
  %26 = load i32, i32* @flag_omit_frame_pointer, align 4
  %tobool59 = icmp ne i32 %26, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.667, i32 0, i32 0))
  store i32 0, i32* @flag_omit_frame_pointer, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true, %if.end.57
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8** @user_label_prefix, align 8
  %27 = load i32, i32* @flag_leading_underscore, align 4
  %cmp62 = icmp ne i32 %27, -1
  br i1 %cmp62, label %if.then.64, label %if.end.83

if.then.64:                                       ; preds = %if.end.61
  %28 = load i8*, i8** @user_label_prefix, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  %conv65 = sext i8 %29 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %if.then.78, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.64
  %30 = load i8*, i8** @user_label_prefix, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %31 to i32
  %cmp71 = icmp eq i32 %conv70, 95
  br i1 %cmp71, label %land.lhs.true.73, label %if.else

land.lhs.true.73:                                 ; preds = %lor.lhs.false.68
  %32 = load i8*, i8** @user_label_prefix, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %33 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %land.lhs.true.73, %if.then.64
  %34 = load i32, i32* @flag_leading_underscore, align 4
  %tobool79 = icmp ne i32 %34, 0
  %cond = select i1 %tobool79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.668, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0)
  store i8* %cond, i8** @user_label_prefix, align 8
  br label %if.end.82

if.else:                                          ; preds = %land.lhs.true.73, %lor.lhs.false.68
  %35 = load i32, i32* @flag_leading_underscore, align 4
  %tobool80 = icmp ne i32 %35, 0
  %cond81 = select i1 %tobool80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.670, i32 0, i32 0)
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.669, i32 0, i32 0), i8* %cond81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.61
  %36 = load i32, i32* @version_flag, align 4
  %tobool84 = icmp ne i32 %36, 0
  br i1 %tobool84, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.83
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @print_version(%struct._IO_FILE* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  %38 = load i32, i32* @quiet_flag, align 4
  %tobool86 = icmp ne i32 %38, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.then.85
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @print_switch_values(%struct._IO_FILE* %39, i32 0, i32 75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.671, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.83
  %40 = load i32, i32* @quiet_flag, align 4
  %tobool90 = icmp ne i32 %40, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %if.end.89
  store i32 1, i32* @time_report, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  %41 = load i32, i32* @flag_syntax_only, align 4
  %tobool93 = icmp ne i32 %41, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.92
  store i32 0, i32* @write_symbols, align 4
  store i32 0, i32* @profile_flag, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.92
  %42 = load i32, i32* @write_symbols, align 4
  %cmp96 = icmp eq i32 %42, 1
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  store %struct.gcc_debug_hooks* @dbx_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.95
  %43 = load i32, i32* @write_symbols, align 4
  %cmp100 = icmp eq i32 %43, 4
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store %struct.gcc_debug_hooks* @dwarf2_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.99
  %44 = load i32, i32* @flag_gen_aux_info, align 4
  %tobool104 = icmp ne i32 %44, 0
  br i1 %tobool104, label %if.then.105, label %if.end.111

if.then.105:                                      ; preds = %if.end.103
  %45 = load i8*, i8** @aux_info_file_name, align 8
  %call106 = call %struct._IO_FILE* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call106, %struct._IO_FILE** @aux_info_file, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %cmp107 = icmp eq %struct._IO_FILE* %46, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.105
  %47 = load i8*, i8** @aux_info_file_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %47) #10
  unreachable

if.end.110:                                       ; preds = %if.then.105
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.103
  %48 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 1
  %tobool112 = trunc i8 %48 to i1
  br i1 %tobool112, label %if.end.120, label %if.then.113

if.then.113:                                      ; preds = %if.end.111
  %49 = load i32, i32* @flag_function_sections, align 4
  %tobool114 = icmp ne i32 %49, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.then.113
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.672, i32 0, i32 0))
  store i32 0, i32* @flag_function_sections, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.then.113
  %50 = load i32, i32* @flag_data_sections, align 4
  %tobool117 = icmp ne i32 %50, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.116
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.673, i32 0, i32 0))
  store i32 0, i32* @flag_data_sections, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end.116
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.111
  %51 = load i32, i32* @flag_function_sections, align 4
  %tobool121 = icmp ne i32 %51, 0
  br i1 %tobool121, label %land.lhs.true.122, label %if.end.125

land.lhs.true.122:                                ; preds = %if.end.120
  %52 = load i32, i32* @profile_flag, align 4
  %tobool123 = icmp ne i32 %52, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.122
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.674, i32 0, i32 0))
  store i32 0, i32* @flag_function_sections, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %land.lhs.true.122, %if.end.120
  %53 = load i32, i32* @flag_prefetch_loop_arrays, align 4
  %tobool126 = icmp ne i32 %53, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.133

land.lhs.true.127:                                ; preds = %if.end.125
  %54 = load i32, i32* @x86_prefetch_sse, align 4
  %tobool128 = icmp ne i32 %54, 0
  br i1 %tobool128, label %if.end.133, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.127
  %55 = load i32, i32* @target_flags, align 4
  %and = and i32 %55, 1048576
  %cmp130 = icmp ne i32 %and, 0
  br i1 %cmp130, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.129
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.675, i32 0, i32 0))
  store i32 0, i32* @flag_prefetch_loop_arrays, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %lor.lhs.false.129, %land.lhs.true.127, %if.end.125
  %56 = load i32, i32* @flag_prefetch_loop_arrays, align 4
  %tobool134 = icmp ne i32 %56, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.138

land.lhs.true.135:                                ; preds = %if.end.133
  %57 = load i32, i32* @optimize_size, align 4
  %tobool136 = icmp ne i32 %57, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.135
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.676, i32 0, i32 0))
  store i32 0, i32* @flag_prefetch_loop_arrays, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.end.133
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lang_independent_init() #0 {
entry:
  store i8* (%union.tree_node*, i32)* @decl_name, i8* (%union.tree_node*, i32)** @decl_printable_name, align 8
  store %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)* bitcast (void ()* @do_abort to %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)*), %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)** @lang_expand_expr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 1), align 8
  %sub = sub i64 %0, 24
  %add = add i64 %sub, 8
  %sub1 = sub i64 %add, 1
  %div = udiv i64 %sub1, 8
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 1), align 4
  call void @init_ggc()
  call void @ggc_add_rtx_root(%struct.rtx_def** @stack_limit_rtx, i32 1)
  call void @ggc_add_tree_root(%union.tree_node** @current_function_decl, i32 1)
  call void @ggc_add_tree_root(%union.tree_node** @current_function_func_begin_label, i32 1)
  call void @init_stringpool()
  call void @init_obstacks()
  %1 = load i32, i32* @debug_info_level, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @debug_info_level, align 4
  %cmp3 = icmp eq i32 %2, 3
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* @flag_test_coverage, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %4 = load i32, i32* @warn_notreached, align 4
  %tobool6 = icmp ne i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  call void @init_emit_once(i32 %lor.ext)
  call void @init_regs()
  call void @init_alias_once()
  call void @init_stmt()
  call void @init_loop()
  call void @init_reload()
  call void @init_function_once()
  call void @init_stor_layout_once()
  call void @init_varasm_once()
  call void @init_EXPR_INSN_LIST_cache()
  call void @init_dummy_function_start()
  call void @init_expmed()
  call void @init_expr_once()
  %6 = load i32, i32* @flag_caller_saves, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @init_caller_save()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  call void @expand_dummy_function_end()
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @lang_dependent_init(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** @dump_base_name, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.685, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** @dump_base_name, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %3 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 5), align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i8* %3(i8* %4)
  store i8* %call, i8** %name.addr, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %name.addr, align 8
  %call4 = call i8* @ggc_alloc_string(i8* %6, i32 -1)
  store i8* %call4, i8** %name.addr, align 8
  %7 = load i8*, i8** %name.addr, align 8
  store i8* %7, i8** @input_filename, align 8
  store i8* %7, i8** @main_input_filename, align 8
  %8 = load i8*, i8** %name.addr, align 8
  call void @init_asm_output(i8* %8)
  call void @init_eh()
  call void @init_optabs()
  %9 = load i8*, i8** @input_filename, align 8
  call void @push_srcloc(i8* %9, i32 0)
  call void @timevar_push(i32 43)
  %call5 = call i32 @dwarf2out_do_frame()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  call void @dwarf2out_frame_init()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.3
  %10 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %init = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %10, i32 0, i32 0
  %11 = load void (i8*)*, void (i8*)** %init, align 8
  %12 = load i8*, i8** %name.addr, align 8
  call void %11(i8* %12)
  call void @timevar_pop(i32 43)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @compile_file() #0 {
entry:
  %globals = alloca %union.tree_node*, align 8
  %len = alloca i32, align 4
  %vec = alloca %union.tree_node**, align 8
  %i = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  %0 = load i8*, i8** @main_input_filename, align 8
  call void @init_final(i8* %0)
  %1 = load i8*, i8** @dump_base_name, align 8
  call void @init_branch_prob(i8* %1)
  call void @timevar_push(i32 9)
  %call = call i32 @yyparse()
  %2 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 7), align 8
  call void %2()
  call void @timevar_pop(i32 9)
  %3 = load i32, i32* @flag_syntax_only, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.27

if.end:                                           ; preds = %entry
  %call1 = call %union.tree_node* @getdecls()
  store %union.tree_node* %call1, %union.tree_node** %globals, align 8
  %4 = load %union.tree_node*, %union.tree_node** %globals, align 8
  %call2 = call i32 @list_length(%union.tree_node* %4)
  store i32 %call2, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 8, %conv
  %call3 = call noalias i8* @xmalloc(i64 %mul)
  %6 = bitcast i8* %call3 to %union.tree_node**
  store %union.tree_node** %6, %union.tree_node*** %vec, align 8
  store i32 0, i32* %i, align 4
  %7 = load %union.tree_node*, %union.tree_node** %globals, align 8
  store %union.tree_node* %7, %union.tree_node** %decl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %11 = load i32, i32* %len, align 4
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, %12
  %sub5 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub5 to i64
  %13 = load %union.tree_node**, %union.tree_node*** %vec, align 8
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %13, i64 %idxprom
  store %union.tree_node* %10, %union.tree_node** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %16, %union.tree_node** %decl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %union.tree_node**, %union.tree_node*** %vec, align 8
  %18 = load i32, i32* %len, align 4
  %call6 = call i32 @wrapup_global_declarations(%union.tree_node** %17, i32 %18)
  call void @output_func_start_profiler()
  %19 = load %union.tree_node**, %union.tree_node*** %vec, align 8
  %20 = load i32, i32* %len, align 4
  call void @check_global_declarations(%union.tree_node** %19, i32 %20)
  %21 = load %union.tree_node**, %union.tree_node*** %vec, align 8
  %22 = bitcast %union.tree_node** %21 to i8*
  call void @free(i8* %22) #7
  call void @weak_finish()
  call void @timevar_push(i32 43)
  %call7 = call i32 @dwarf2out_do_frame()
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  call void @dwarf2out_frame_finish()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.end
  %23 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %finish = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %23, i32 0, i32 1
  %24 = load void (i8*)*, void (i8*)** %finish, align 8
  %25 = load i8*, i8** @main_input_filename, align 8
  call void %24(i8* %25)
  call void @timevar_pop(i32 43)
  call void @dw2_output_indirect_constants()
  %26 = load i8*, i8** @dump_base_name, align 8
  call void @end_final(i8* %26)
  %27 = load i32, i32* @profile_arc_flag, align 4
  %tobool11 = icmp ne i32 %27, 0
  br i1 %tobool11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %28 = load i32, i32* @flag_test_coverage, align 4
  %tobool12 = icmp ne i32 %28, 0
  br i1 %tobool12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool14 = icmp ne i32 %29, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.end.10
  call void @timevar_push(i32 2)
  %call16 = call i32 @open_dump_file(i32 14, %union.tree_node* null)
  call void @end_branch_prob()
  call void @close_dump_file(i32 14, void (%struct._IO_FILE*, %struct.rtx_def*)* null, %struct.rtx_def* null)
  call void @timevar_pop(i32 2)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %lor.lhs.false.13
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  call void @ix86_asm_file_end(%struct._IO_FILE* %30)
  %31 = load i32, i32* @flag_no_ident, align 4
  %tobool18 = icmp ne i32 %31, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %33 = load i8*, i8** @version_string, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.691, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.692, i32 0, i32 0), i8* %33)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %34 = load i32, i32* @optimize, align 4
  %cmp22 = icmp sgt i32 %34, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.21
  %call24 = call i32 @open_dump_file(i32 16, %union.tree_node* null)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  call void @timevar_push(i32 2)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_combine_total_stats(%struct._IO_FILE* %35)
  call void @close_dump_file(i32 16, void (%struct._IO_FILE*, %struct.rtx_def*)* null, %struct.rtx_def* null)
  call void @timevar_pop(i32 2)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then, %if.then.26, %land.lhs.true, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalize() #0 {
entry:
  %i = alloca i32, align 4
  %seq = alloca [16 x i8], align 16
  %suffix = alloca i8*, align 8
  %0 = load i32, i32* @flag_gen_aux_info, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %3 = bitcast %struct.diagnostic_context* %2 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 3
  %4 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load i8*, i8** @aux_info_file_name, align 8
  %call3 = call i32 @unlink(i8* %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %tobool5 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @ferror(%struct._IO_FILE* %7) #7
  %cmp = icmp ne i32 %call7, 0
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %8 = load i8*, i8** @asm_file_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.693, i32 0, i32 0), i8* %8) #10
  unreachable

if.end.9:                                         ; preds = %if.then.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %9)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %10 = load i8*, i8** @asm_file_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.694, i32 0, i32 0), i8* %10) #10
  unreachable

if.end.13:                                        ; preds = %if.end.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.4
  %11 = load i32, i32* @graph_dump_format, align 4
  %cmp15 = icmp ne i32 %11, 0
  br i1 %cmp15, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %12 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %12, 32
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom
  %initialized = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx18, i32 0, i32 4
  %14 = load i8, i8* %initialized, align 1
  %conv = sext i8 %14 to i32
  %tobool19 = icmp ne i32 %conv, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom20
  %graph_dump_p = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx21, i32 0, i32 2
  %16 = load i8, i8* %graph_dump_p, align 1
  %conv22 = sext i8 %16 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %17 = load i32, i32* %i, align 4
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 %17) #7
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %seq, i32 0, i32 0
  %18 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [32 x %struct.dump_file_info], [32 x %struct.dump_file_info]* @dump_file, i32 0, i64 %idxprom27
  %extension = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %arrayidx28, i32 0, i32 0
  %19 = load i8*, i8** %extension, align 8
  %call29 = call noalias i8* (i8*, ...) @concat(i8* %arraydecay26, i8* %19, i8* null)
  store i8* %call29, i8** %suffix, align 8
  %20 = load i8*, i8** @dump_base_name, align 8
  %21 = load i8*, i8** %suffix, align 8
  call void @finish_graph_dump_file(i8* %20, i8* %21)
  %22 = load i8*, i8** %suffix, align 8
  call void @free(i8* %22) #7
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.end.14
  %24 = load i32, i32* @mem_report, align 4
  %tobool32 = icmp ne i32 %24, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  call void @ggc_print_statistics()
  call void @stringpool_statistics()
  call void @dump_tree_statistics()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  call void @free_reg_info()
  %25 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 6), align 8
  call void %25()
  ret void
}

declare void @override_options() #1

; Function Attrs: nounwind uwtable
define internal void @print_switch_values(%struct._IO_FILE* %file, i32 %pos, i32 %max, i8* %indent, i8* %sep, i8* %term) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %pos.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %indent.addr = alloca i8*, align 8
  %sep.addr = alloca i8*, align 8
  %term.addr = alloca i8*, align 8
  %j = alloca i64, align 8
  %p = alloca i8**, align 8
  %prefix = alloca [256 x i8], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i8* %indent, i8** %indent.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i8* %term, i8** %term.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i32, i32* %pos.addr, align 4
  %2 = load i32, i32* %max.addr, align 4
  %3 = load i8*, i8** %indent.addr, align 8
  %4 = load i8*, i8** %indent.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0)
  %6 = load i8*, i8** %term.addr, align 8
  %call = call i32 @print_single_switch(%struct._IO_FILE* %0, i32 %1, i32 %2, i8* %3, i8* %cond, i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.677, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  store i32 %call, i32* %pos.addr, align 4
  %7 = load i8**, i8*** @save_argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 1
  store i8** %arrayidx, i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8**, i8*** %p, align 8
  %9 = load i8*, i8** %8, align 8
  %cmp = icmp ne i8* %9, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %p, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv2 = sext i8 %12 to i32
  %cmp3 = icmp eq i32 %conv2, 45
  br i1 %cmp3, label %if.then, label %if.end.31

if.then:                                          ; preds = %for.body
  %13 = load i8**, i8*** %p, align 8
  %14 = load i8*, i8** %13, align 8
  %call5 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.678, i32 0, i32 0)) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.then
  %15 = load i8**, i8*** %p, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 1
  %16 = load i8*, i8** %arrayidx9, align 8
  %cmp10 = icmp ne i8* %16, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.8
  %17 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.8
  br label %for.inc

if.end.13:                                        ; preds = %if.then
  %18 = load i8**, i8*** %p, align 8
  %19 = load i8*, i8** %18, align 8
  %call14 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.679, i32 0, i32 0)) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  br label %for.inc

if.end.18:                                        ; preds = %if.end.13
  %20 = load i8**, i8*** %p, align 8
  %21 = load i8*, i8** %20, align 8
  %call19 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.184, i32 0, i32 0)) #9
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %for.inc

if.end.23:                                        ; preds = %if.end.18
  %22 = load i8**, i8*** %p, align 8
  %23 = load i8*, i8** %22, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 100
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  br label %for.inc

if.end.29:                                        ; preds = %if.end.23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %26 = load i32, i32* %pos.addr, align 4
  %27 = load i32, i32* %max.addr, align 4
  %28 = load i8*, i8** %indent.addr, align 8
  %29 = load i8*, i8** %sep.addr, align 8
  %30 = load i8*, i8** %term.addr, align 8
  %31 = load i8**, i8*** %p, align 8
  %32 = load i8*, i8** %31, align 8
  %call30 = call i32 @print_single_switch(%struct._IO_FILE* %25, i32 %26, i32 %27, i8* %28, i8* %29, i8* %30, i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  store i32 %call30, i32* %pos.addr, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31, %if.then.28, %if.then.22, %if.then.17, %if.end
  %33 = load i8**, i8*** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr32, i8*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %pos.addr, align 4
  %cmp33 = icmp sgt i32 %34, 0
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %36 = load i8*, i8** %term.addr, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %38 = load i32, i32* %max.addr, align 4
  %39 = load i8*, i8** %indent.addr, align 8
  %40 = load i8*, i8** %indent.addr, align 8
  %41 = load i8, i8* %40, align 1
  %conv38 = sext i8 %41 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  %cond40 = select i1 %tobool39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0)
  %42 = load i8*, i8** %term.addr, align 8
  %call41 = call i32 @print_single_switch(%struct._IO_FILE* %37, i32 0, i32 %38, i8* %39, i8* %cond40, i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.680, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  store i32 %call41, i32* %pos.addr, align 4
  store i64 0, i64* %j, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.54, %if.end.37
  %43 = load i64, i64* %j, align 8
  %cmp43 = icmp ult i64 %43, 97
  br i1 %cmp43, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.42
  %44 = load i64, i64* %j, align 8
  %arrayidx46 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %44
  %variable = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx46, i32 0, i32 1
  %45 = load i32*, i32** %variable, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %j, align 8
  %arrayidx47 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %47
  %on_value = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx47, i32 0, i32 2
  %48 = load i32, i32* %on_value, align 4
  %cmp48 = icmp eq i32 %46, %48
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %for.body.45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %50 = load i32, i32* %pos.addr, align 4
  %51 = load i32, i32* %max.addr, align 4
  %52 = load i8*, i8** %indent.addr, align 8
  %53 = load i8*, i8** %sep.addr, align 8
  %54 = load i8*, i8** %term.addr, align 8
  %55 = load i64, i64* %j, align 8
  %arrayidx51 = getelementptr inbounds [97 x %struct.lang_independent_options], [97 x %struct.lang_independent_options]* @f_options, i32 0, i64 %55
  %string = getelementptr inbounds %struct.lang_independent_options, %struct.lang_independent_options* %arrayidx51, i32 0, i32 0
  %56 = load i8*, i8** %string, align 8
  %call52 = call i32 @print_single_switch(%struct._IO_FILE* %49, i32 %50, i32 %51, i8* %52, i8* %53, i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.681, i32 0, i32 0), i8* %56)
  store i32 %call52, i32* %pos.addr, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %for.body.45
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %57 = load i64, i64* %j, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.42

for.end.55:                                       ; preds = %for.cond.42
  store i64 0, i64* %j, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.80, %for.end.55
  %58 = load i64, i64* %j, align 8
  %cmp57 = icmp ult i64 %58, 56
  br i1 %cmp57, label %for.body.59, label %for.end.82

for.body.59:                                      ; preds = %for.cond.56
  %59 = load i64, i64* %j, align 8
  %arrayidx60 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %59
  %name = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx60, i32 0, i32 0
  %60 = load i8*, i8** %name, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %61 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %for.body.59
  %62 = load i64, i64* %j, align 8
  %arrayidx65 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %62
  %value = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx65, i32 0, i32 1
  %63 = load i32, i32* %value, align 4
  %cmp66 = icmp sgt i32 %63, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.79

land.lhs.true.68:                                 ; preds = %land.lhs.true
  %64 = load i64, i64* %j, align 8
  %arrayidx69 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %64
  %value70 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx69, i32 0, i32 1
  %65 = load i32, i32* %value70, align 4
  %66 = load i32, i32* @target_flags, align 4
  %and = and i32 %65, %66
  %67 = load i64, i64* %j, align 8
  %arrayidx71 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %67
  %value72 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx71, i32 0, i32 1
  %68 = load i32, i32* %value72, align 4
  %cmp73 = icmp eq i32 %and, %68
  br i1 %cmp73, label %if.then.75, label %if.end.79

if.then.75:                                       ; preds = %land.lhs.true.68
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %70 = load i32, i32* %pos.addr, align 4
  %71 = load i32, i32* %max.addr, align 4
  %72 = load i8*, i8** %indent.addr, align 8
  %73 = load i8*, i8** %sep.addr, align 8
  %74 = load i8*, i8** %term.addr, align 8
  %75 = load i64, i64* %j, align 8
  %arrayidx76 = getelementptr inbounds [56 x %struct.anon.3], [56 x %struct.anon.3]* @target_switches, i32 0, i64 %75
  %name77 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx76, i32 0, i32 0
  %76 = load i8*, i8** %name77, align 8
  %call78 = call i32 @print_single_switch(%struct._IO_FILE* %69, i32 %70, i32 %71, i8* %72, i8* %73, i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.682, i32 0, i32 0), i8* %76)
  store i32 %call78, i32* %pos.addr, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.75, %land.lhs.true.68, %land.lhs.true, %for.body.59
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %77 = load i64, i64* %j, align 8
  %inc81 = add i64 %77, 1
  store i64 %inc81, i64* %j, align 8
  br label %for.cond.56

for.end.82:                                       ; preds = %for.cond.56
  store i64 0, i64* %j, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.100, %for.end.82
  %78 = load i64, i64* %j, align 8
  %cmp84 = icmp ult i64 %78, 13
  br i1 %cmp84, label %for.body.86, label %for.end.102

for.body.86:                                      ; preds = %for.cond.83
  %79 = load i64, i64* %j, align 8
  %arrayidx87 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %79
  %variable88 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx87, i32 0, i32 1
  %80 = load i8**, i8*** %variable88, align 8
  %81 = load i8*, i8** %80, align 8
  %cmp89 = icmp ne i8* %81, null
  br i1 %cmp89, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %for.body.86
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %prefix, i32 0, i32 0
  %82 = load i64, i64* %j, align 8
  %arrayidx92 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %82
  %prefix93 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx92, i32 0, i32 0
  %83 = load i8*, i8** %prefix93, align 8
  %call94 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.683, i32 0, i32 0), i8* %83) #7
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %85 = load i32, i32* %pos.addr, align 4
  %86 = load i32, i32* %max.addr, align 4
  %87 = load i8*, i8** %indent.addr, align 8
  %88 = load i8*, i8** %sep.addr, align 8
  %89 = load i8*, i8** %term.addr, align 8
  %arraydecay95 = getelementptr inbounds [256 x i8], [256 x i8]* %prefix, i32 0, i32 0
  %90 = load i64, i64* %j, align 8
  %arrayidx96 = getelementptr inbounds [13 x %struct.anon.4], [13 x %struct.anon.4]* @target_options, i32 0, i64 %90
  %variable97 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx96, i32 0, i32 1
  %91 = load i8**, i8*** %variable97, align 8
  %92 = load i8*, i8** %91, align 8
  %call98 = call i32 @print_single_switch(%struct._IO_FILE* %84, i32 %85, i32 %86, i8* %87, i8* %88, i8* %89, i8* %arraydecay95, i8* %92)
  store i32 %call98, i32* %pos.addr, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.91, %for.body.86
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %93 = load i64, i64* %j, align 8
  %inc101 = add i64 %93, 1
  store i64 %inc101, i64* %j, align 8
  br label %for.cond.83

for.end.102:                                      ; preds = %for.cond.83
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %95 = load i8*, i8** %term.addr, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %95)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @print_single_switch(%struct._IO_FILE* %file, i32 %pos, i32 %max, i8* %indent, i8* %sep, i8* %term, i8* %type, i8* %name) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %pos.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %indent.addr = alloca i8*, align 8
  %sep.addr = alloca i8*, align 8
  %term.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i8* %indent, i8** %indent.addr, align 8
  store i8* %sep, i8** %sep.addr, align 8
  store i8* %term, i8** %term.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %sep.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %1 = load i8*, i8** %type.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %add = add i64 %call, %call1
  %2 = load i8*, i8** %name.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #9
  %add3 = add i64 %add, %call2
  %conv = trunc i64 %add3 to i32
  store i32 %conv, i32* %len, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %4, %5
  %6 = load i32, i32* %max.addr, align 4
  %cmp6 = icmp sgt i32 %add5, %6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load i8*, i8** %term.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %8)
  store i32 0, i32* %pos.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* %pos.addr, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %11 = load i8*, i8** %indent.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %indent.addr, align 8
  %call13 = call i64 @strlen(i8* %12) #9
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %pos.addr, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %14 = load i8*, i8** %sep.addr, align 8
  %15 = load i8*, i8** %type.addr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.684, i32 0, i32 0), i8* %14, i8* %15, i8* %16)
  %17 = load i32, i32* %len, align 4
  %18 = load i32, i32* %pos.addr, align 4
  %add17 = add nsw i32 %18, %17
  store i32 %add17, i32* %pos.addr, align 4
  %19 = load i32, i32* %pos.addr, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i8* @decl_name(%union.tree_node* %decl, i32 %verbosity) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %verbosity.addr = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %verbosity, i32* %verbosity.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 8
  %1 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %1 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %2 = load i8*, i8** %str, align 8
  ret i8* %2
}

declare void @init_ggc() #1

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

declare void @ggc_add_tree_root(%union.tree_node**, i32) #1

declare void @init_stringpool() #1

declare void @init_obstacks() #1

declare void @init_emit_once(i32) #1

declare void @init_regs() #1

declare void @init_alias_once() #1

declare void @init_stmt() #1

declare void @init_loop() #1

declare void @init_reload() #1

declare void @init_function_once() #1

declare void @init_stor_layout_once() #1

declare void @init_varasm_once() #1

declare void @init_EXPR_INSN_LIST_cache() #1

declare void @init_dummy_function_start() #1

declare void @init_expmed() #1

declare void @init_expr_once() #1

declare void @init_caller_save() #1

declare void @expand_dummy_function_end() #1

; Function Attrs: nounwind uwtable
define internal void @init_asm_output(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %dumpname = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @asm_file_name, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @asm_out_file, align 8
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** @asm_file_name, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %4 = load i8*, i8** @dump_base_name, align 8
  %call = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %add = add nsw i32 %5, 6
  %conv4 = sext i32 %add to i64
  %call5 = call noalias i8* @xmalloc(i64 %conv4)
  store i8* %call5, i8** %dumpname, align 8
  %6 = load i8*, i8** %dumpname, align 8
  %7 = load i8*, i8** @dump_base_name, align 8
  %8 = load i32, i32* %len, align 4
  %add6 = add nsw i32 %8, 1
  %conv7 = sext i32 %add6 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %conv7, i32 1, i1 false)
  %9 = load i8*, i8** %dumpname, align 8
  %10 = load i32, i32* %len, align 4
  call void @strip_off_ending(i8* %9, i32 %10)
  %11 = load i8*, i8** %dumpname, align 8
  %call8 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.686, i32 0, i32 0)) #7
  %12 = load i8*, i8** %dumpname, align 8
  store i8* %12, i8** @asm_file_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %13 = load i8*, i8** @asm_file_name, align 8
  %call9 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.687, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %14, %struct._IO_FILE** @asm_out_file, align 8
  br label %if.end.13

if.else.11:                                       ; preds = %if.end
  %15 = load i8*, i8** @asm_file_name, align 8
  %call12 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** @asm_out_file, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %cmp14 = icmp eq %struct._IO_FILE* %16, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %17 = load i8*, i8** @asm_file_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.688, i32 0, i32 0), i8* %17) #10
  unreachable

if.end.17:                                        ; preds = %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %18 = load i32, i32* @flag_syntax_only, align 4
  %tobool19 = icmp ne i32 %18, 0
  br i1 %tobool19, label %if.end.30, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %20 = load i8*, i8** @main_input_filename, align 8
  call void @output_file_directive(%struct._IO_FILE* %19, i8* %20)
  %21 = load i32, i32* @ix86_asm_dialect, align 4
  %cmp21 = icmp eq i32 %21, 1
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %do.body
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.689, i32 0, i32 0), %struct._IO_FILE* %22)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %23 = load i32, i32* @flag_verbose_asm, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  call void @print_version(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.690, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  call void @print_switch_values(%struct._IO_FILE* %25, i32 0, i32 75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.690, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.471, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.671, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.671, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.18
  ret void
}

declare void @init_eh() #1

declare void @init_optabs() #1

declare i32 @dwarf2out_do_frame() #1

declare void @dwarf2out_frame_init() #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #6

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @init_final(i8*) #1

declare void @init_branch_prob(i8*) #1

declare i32 @yyparse() #1

declare %union.tree_node* @getdecls() #1

declare i32 @list_length(%union.tree_node*) #1

declare void @output_func_start_profiler() #1

declare void @weak_finish() #1

declare void @dwarf2out_frame_finish() #1

declare void @dw2_output_indirect_constants() #1

declare void @end_final(i8*) #1

declare void @end_branch_prob() #1

declare void @ix86_asm_file_end(%struct._IO_FILE*) #1

declare void @dump_combine_total_stats(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #6

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #6

declare void @finish_graph_dump_file(i8*, i8*) #1

declare void @ggc_print_statistics() #1

declare void @stringpool_statistics() #1

declare void @dump_tree_statistics() #1

declare void @free_reg_info() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }
attributes #11 = { nounwind returns_twice }
attributes #12 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
