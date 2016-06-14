; ModuleID = 'gcse.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%union.tree_node = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.param_info = type { i8*, i32, i8* }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.reg_set = type { %struct.reg_set*, %struct.rtx_def* }
%struct.expr = type { %struct.rtx_def*, i32, %struct.expr*, %struct.occr*, %struct.occr*, %struct.rtx_def* }
%struct.occr = type { %struct.occr*, %struct.rtx_def*, i8, i8 }
%struct.reg_avail_info = type { i32, i32, i32 }
%struct.ls_expr = type { %struct.expr*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.ls_expr*, i32, i32, i32, %struct.rtx_def* }
%struct.reg_use = type { %struct.rtx_def* }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.null_pointer_info = type { i32, i32, i32, %struct.simple_bitmap_def**, %struct.simple_bitmap_def** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@cfun = external global %struct.function*, align 8
@run_jump_opt_after_gcse = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@debug_stderr = internal global %struct._IO_FILE* null, align 8
@gcse_file = internal global %struct._IO_FILE* null, align 8
@max_gcse_regno = internal global i32 0, align 4
@n_basic_blocks = external global i32, align 4
@n_edges = external global i32, align 4
@warn_disabled_optimization = external global i32, align 4
@.str = private unnamed_addr constant [69 x i8] c"GCSE disabled: %d > 1000 basic blocks and %d >= 20 edges/basic block\00", align 1
@compiler_params = external global %struct.param_info*, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"GCSE disabled: %d basic blocks and %d registers\00", align 1
@can_copy_init_p = internal global i32 0, align 4
@gcse_obstack = internal global %struct.obstack zeroinitializer, align 8
@bytes_used = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"GCSE pass %d\0A\0A\00", align 1
@optimize_size = external global i32, align 4
@modify_mem_list = internal global %struct.rtx_def** null, align 8
@canon_modify_mem_list = internal global %struct.rtx_def** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GCSE of %s: %d basic blocks, \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%d pass%s, %d bytes\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@modify_mem_list_set = common global %struct.bitmap_head_def* null, align 8
@canon_modify_mem_list_set = common global %struct.bitmap_head_def* null, align 8
@can_copy_p = internal global [59 x i8] zeroinitializer, align 16
@mode_class = external constant [59 x i32], align 16
@max_uid = internal global i32 0, align 4
@uid_cuid = internal global i32* null, align 8
@rtx_class = external constant [153 x i8], align 16
@max_cuid = internal global i32 0, align 4
@cuid_insn = internal global %struct.rtx_def** null, align 8
@reg_set_bitmap = internal global %struct.bitmap_head_def* null, align 8
@reg_set_in_block = internal global %struct.simple_bitmap_def** null, align 8
@reg_set_table_size = internal global i32 0, align 4
@reg_set_table = internal global %struct.reg_set** null, align 8
@reg_set_obstack = internal global %struct.obstack zeroinitializer, align 8
@gcse_subst_count = internal global i32 0, align 4
@gcse_create_count = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@expr_hash_table = internal global %struct.expr** null, align 8
@expr_hash_table_size = internal global i32 0, align 4
@n_exprs = internal global i32 0, align 4
@ae_gen = internal global %struct.simple_bitmap_def** null, align 8
@ae_kill = internal global %struct.simple_bitmap_def** null, align 8
@ae_out = internal global %struct.simple_bitmap_def** null, align 8
@ae_in = internal global %struct.simple_bitmap_def** null, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"GCSE of %s, pass %d: %d bytes needed, %d substs,\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%d insns created\0A\00", align 1
@rd_kill = internal global %struct.simple_bitmap_def** null, align 8
@rd_gen = internal global %struct.simple_bitmap_def** null, align 8
@reaching_defs = internal global %struct.simple_bitmap_def** null, align 8
@rd_out = internal global %struct.simple_bitmap_def** null, align 8
@reg_avail_info = internal global %struct.reg_avail_info* null, align 8
@current_bb = internal global i32 0, align 4
@regs_invalidated_by_call = external global i64, align 8
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@want_to_gcse_p.test_insn = internal global %struct.rtx_def* null, align 8
@word_mode = external global i32, align 4
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@rtx_length = external constant [153 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@gcse_mem_operand = internal global %struct.rtx_def* null, align 8
@gcse_mems_conflict_p = internal global i32 0, align 4
@pre_ldst_mems = internal global %struct.ls_expr* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"gcse.c\00", align 1
@__FUNCTION__.expr_equiv_p = private unnamed_addr constant [13 x i8] c"expr_equiv_p\00", align 1
@__FUNCTION__.hash_expr_1 = private unnamed_addr constant [12 x i8] c"hash_expr_1\00", align 1
@__FUNCTION__.insert_set_in_table = private unnamed_addr constant [20 x i8] c"insert_set_in_table\00", align 1
@set_hash_table_size = internal global i32 0, align 4
@set_hash_table = internal global %struct.expr** null, align 8
@n_sets = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"%s hash table (%d buckets, %d entries)\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Index %d (hash value %d)\0A  \00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"reaching def computation: %d passes\0A\00", align 1
@__FUNCTION__.handle_avail_expr = private unnamed_addr constant [18 x i8] c"handle_avail_expr\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"GCSE: Replacing the source in insn %d with\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c" reg %d %s insn %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"set in\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"GCSE: Creating insn %d to copy value of reg %d\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c", computed in insn %d,\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"      into newly allocated reg %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"GCSE: Replacing the source in insn %d with reg %d \00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"set in insn %d\0A\00", align 1
@__FUNCTION__.computing_insn = private unnamed_addr constant [15 x i8] c"computing_insn\00", align 1
@__FUNCTION__.def_reaches_here_p = private unnamed_addr constant [19 x i8] c"def_reaches_here_p\00", align 1
@const_prop_count = internal global i32 0, align 4
@copy_prop_count = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"CPROP of %s, pass %d: %d bytes needed, \00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"%d const props, %d copy props\0A\0A\00", align 1
@cprop_pavloc = internal global %struct.simple_bitmap_def** null, align 8
@cprop_absaltered = internal global %struct.simple_bitmap_def** null, align 8
@cprop_avin = internal global %struct.simple_bitmap_def** null, align 8
@cprop_avout = internal global %struct.simple_bitmap_def** null, align 8
@reg_use_count = internal global i32 0, align 4
@reg_use_table = internal global [8 x %struct.reg_use] zeroinitializer, align 16
@__FUNCTION__.cprop_insn = private unnamed_addr constant [11 x i8] c"cprop_insn\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"CONST-PROP: Replacing reg %d in \00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"insn %d with constant \00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"COPY-PROP: Replacing reg %d in insn %d\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c" with reg %d\0A\00", align 1
@__FUNCTION__.find_avail_set = private unnamed_addr constant [15 x i8] c"find_avail_set\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@.str.31 = private unnamed_addr constant [55 x i8] c"CONST-PROP: Replacing reg %d in insn %d with constant \00", align 1
@flag_gcse_lm = external global i32, align 4
@edge_list = internal global %struct.edge_list* null, align 8
@.str.32 = private unnamed_addr constant [44 x i8] c"\0APRE GCSE of %s, pass %d: %d bytes needed, \00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"%d substs, %d insns created\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"LDST list: \0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"\0A\09 Loads : \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"\0A\09Stores : \00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@transp = internal global %struct.simple_bitmap_def** null, align 8
@comp = internal global %struct.simple_bitmap_def** null, align 8
@antloc = internal global %struct.simple_bitmap_def** null, align 8
@pre_optimal = internal global %struct.simple_bitmap_def** null, align 8
@pre_redundant = internal global %struct.simple_bitmap_def** null, align 8
@pre_insert_map = internal global %struct.simple_bitmap_def** null, align 8
@pre_delete_map = internal global %struct.simple_bitmap_def** null, align 8
@pre_redundant_insns = internal global %struct.simple_bitmap_def* null, align 8
@__FUNCTION__.pre_delete = private unnamed_addr constant [11 x i8] c"pre_delete\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"PRE: redundant insn %d (expression %d) in \00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"bb %d, reaching reg is %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"PRE/HOIST: edge (%d,%d), \00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"copy expression %d\0A\00", align 1
@__FUNCTION__.insert_insn_end_bb = private unnamed_addr constant [19 x i8] c"insert_insn_end_bb\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"PRE/HOIST: end of bb %d, insn %d, \00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"copying expression %d to reg %d\0A\00", align 1
@__FUNCTION__.process_insert_insn = private unnamed_addr constant [20 x i8] c"process_insert_insn\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"PRE:  store updated with reaching reg \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c":\0A\09\00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@__FUNCTION__.pre_insert_copy_insn = private unnamed_addr constant [21 x i8] c"pre_insert_copy_insn\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"PRE: bb %d, insn %d, copy expression %d in insn %d to reg %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"Code Hosting Expressions\00", align 1
@hoist_vbein = internal global %struct.simple_bitmap_def** null, align 8
@hoist_vbeout = internal global %struct.simple_bitmap_def** null, align 8
@hoist_exprs = internal global %struct.simple_bitmap_def** null, align 8
@transpout = internal global %struct.simple_bitmap_def** null, align 8
@dominators = internal global %struct.simple_bitmap_def** null, align 8
@.str.50 = private unnamed_addr constant [42 x i8] c"hoisting vbeinout computation: %d passes\0A\00", align 1
@__FUNCTION__.hoist_code = private unnamed_addr constant [11 x i8] c"hoist_code\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gcse_main(%struct.rtx_def* %f, %struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %changed = alloca i32, align 4
  %pass = alloca i32, align 4
  %initial_bytes_used = alloca i32, align 4
  %max_pass_bytes = alloca i32, align 4
  %gcse_obstack_bottom = alloca i8*, align 8
  %orig_bb_count = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %__o102 = alloca %struct.obstack*, align 8
  %__obj103 = alloca i8*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %calls_setjmp to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @run_jump_opt_after_gcse, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @debug_stderr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  store %struct._IO_FILE* %3, %struct._IO_FILE** @gcse_file, align 8
  %call = call i32 @max_reg_num()
  store i32 %call, i32* @max_gcse_regno, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_flow_info(%struct._IO_FILE* %5)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* @n_basic_blocks, align 4
  store i32 %6, i32* %orig_bb_count, align 4
  %7 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp sle i32 %7, 1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %8 = load i32, i32* @n_basic_blocks, align 4
  %cmp6 = icmp sgt i32 %8, 1000
  br i1 %cmp6, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.5
  %9 = load i32, i32* @n_edges, align 4
  %10 = load i32, i32* @n_basic_blocks, align 4
  %div = sdiv i32 %9, %10
  %cmp7 = icmp sge i32 %div, 20
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* @warn_disabled_optimization, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.8
  %12 = load i32, i32* @n_basic_blocks, align 4
  %13 = load i32, i32* @n_edges, align 4
  %14 = load i32, i32* @n_basic_blocks, align 4
  %div11 = sdiv i32 %13, %14
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %div11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.5
  %15 = load i32, i32* @n_basic_blocks, align 4
  %16 = load i32, i32* @max_gcse_regno, align 4
  %add = add i32 %16, 64
  %sub = sub i32 %add, 1
  %div14 = udiv i32 %sub, 64
  %mul = mul i32 %15, %div14
  %conv = zext i32 %mul to i64
  %mul15 = mul i64 %conv, 8
  %17 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx = getelementptr inbounds %struct.param_info, %struct.param_info* %17, i64 4
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx, i32 0, i32 1
  %18 = load i32, i32* %value, align 4
  %conv16 = sext i32 %18 to i64
  %cmp17 = icmp ugt i64 %mul15, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.13
  %19 = load i32, i32* @warn_disabled_optimization, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %20 = load i32, i32* @n_basic_blocks, align 4
  %21 = load i32, i32* @max_gcse_regno, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 %20, i32 %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.13
  %22 = load i32, i32* @can_copy_init_p, align 4
  %tobool24 = icmp ne i32 %22, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  call void @compute_can_copy()
  store i32 1, i32* @can_copy_init_p, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  call void @gcc_obstack_init(%struct.obstack* @gcse_obstack)
  store i32 0, i32* @bytes_used, align 4
  call void @init_alias_analysis()
  %23 = load i32, i32* @max_gcse_regno, align 4
  call void @alloc_reg_set_mem(i32 %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @compute_sets(%struct.rtx_def* %24)
  store i32 0, i32* %pass, align 4
  %25 = load i32, i32* @bytes_used, align 4
  store i32 %25, i32* %initial_bytes_used, align 4
  store i32 0, i32* %max_pass_bytes, align 4
  %call27 = call i8* @gcse_alloc(i64 1)
  store i8* %call27, i8** %gcse_obstack_bottom, align 8
  store i32 1, i32* %changed, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.end.26
  %26 = load i32, i32* %changed, align 4
  %tobool28 = icmp ne i32 %26, 0
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %27 = load i32, i32* %pass, align 4
  %28 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx29 = getelementptr inbounds %struct.param_info, %struct.param_info* %28, i64 5
  %value30 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx29, i32 0, i32 1
  %29 = load i32, i32* %value30, align 4
  %cmp31 = icmp slt i32 %27, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp31, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, i32* %changed, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool33 = icmp ne %struct._IO_FILE* %31, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %while.body
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %33 = load i32, i32* %pass, align 4
  %add35 = add nsw i32 %33, 1
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 %add35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %while.body
  %34 = load i32, i32* %initial_bytes_used, align 4
  store i32 %34, i32* @bytes_used, align 4
  %call38 = call i32 @max_reg_num()
  store i32 %call38, i32* @max_gcse_regno, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @alloc_gcse_mem(%struct.rtx_def* %35)
  %36 = load i32, i32* %pass, align 4
  %add39 = add nsw i32 %36, 1
  %call40 = call i32 @one_cprop_pass(i32 %add39, i32 0)
  store i32 %call40, i32* %changed, align 4
  %37 = load i32, i32* @optimize_size, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.37
  %38 = load i32, i32* %pass, align 4
  %add43 = add nsw i32 %38, 1
  %call44 = call i32 @one_classic_gcse_pass(i32 %add43)
  %39 = load i32, i32* %changed, align 4
  %or = or i32 %39, %call44
  store i32 %or, i32* %changed, align 4
  br label %if.end.64

if.else:                                          ; preds = %if.end.37
  %40 = load i32, i32* %pass, align 4
  %add45 = add nsw i32 %40, 1
  %call46 = call i32 @one_pre_gcse_pass(i32 %add45)
  %41 = load i32, i32* %changed, align 4
  %or47 = or i32 %41, %call46
  store i32 %or47, i32* %changed, align 4
  %42 = load i32, i32* %changed, align 4
  %tobool48 = icmp ne i32 %42, 0
  br i1 %tobool48, label %if.then.49, label %if.end.62

if.then.49:                                       ; preds = %if.else
  call void @free_modify_mem_tables()
  %43 = load i32, i32* @n_basic_blocks, align 4
  %conv50 = sext i32 %43 to i64
  %mul51 = mul i64 %conv50, 8
  %conv52 = trunc i64 %mul51 to i32
  %call53 = call i8* @gmalloc(i32 %conv52)
  %44 = bitcast i8* %call53 to %struct.rtx_def**
  store %struct.rtx_def** %44, %struct.rtx_def*** @modify_mem_list, align 8
  %45 = load i32, i32* @n_basic_blocks, align 4
  %conv54 = sext i32 %45 to i64
  %mul55 = mul i64 %conv54, 8
  %conv56 = trunc i64 %mul55 to i32
  %call57 = call i8* @gmalloc(i32 %conv56)
  %46 = bitcast i8* %call57 to %struct.rtx_def**
  store %struct.rtx_def** %46, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %47 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %48 = bitcast %struct.rtx_def** %47 to i8*
  %49 = load i32, i32* @n_basic_blocks, align 4
  %conv58 = sext i32 %49 to i64
  %mul59 = mul i64 %conv58, 8
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 %mul59, i32 1, i1 false)
  %50 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %51 = bitcast %struct.rtx_def** %50 to i8*
  %52 = load i32, i32* @n_basic_blocks, align 4
  %conv60 = sext i32 %52 to i64
  %mul61 = mul i64 %conv60, 8
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 %mul61, i32 1, i1 false)
  %53 = load i32, i32* @n_basic_blocks, align 4
  store i32 %53, i32* %orig_bb_count, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.49, %if.else
  call void @free_reg_set_mem()
  %call63 = call i32 @max_reg_num()
  call void @alloc_reg_set_mem(i32 %call63)
  %54 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @compute_sets(%struct.rtx_def* %54)
  store i32 1, i32* @run_jump_opt_after_gcse, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %if.then.42
  %55 = load i32, i32* %max_pass_bytes, align 4
  %56 = load i32, i32* @bytes_used, align 4
  %cmp65 = icmp slt i32 %55, %56
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  %57 = load i32, i32* @bytes_used, align 4
  store i32 %57, i32* %max_pass_bytes, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.64
  call void @free_gcse_mem()
  %58 = load i32, i32* @optimize_size, align 4
  %tobool69 = icmp ne i32 %58, 0
  br i1 %tobool69, label %if.then.70, label %if.end.78

if.then.70:                                       ; preds = %if.end.68
  %call71 = call i32 @max_reg_num()
  store i32 %call71, i32* @max_gcse_regno, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @alloc_gcse_mem(%struct.rtx_def* %59)
  %call72 = call i32 @one_code_hoisting_pass()
  %60 = load i32, i32* %changed, align 4
  %or73 = or i32 %60, %call72
  store i32 %or73, i32* %changed, align 4
  call void @free_gcse_mem()
  %61 = load i32, i32* %max_pass_bytes, align 4
  %62 = load i32, i32* @bytes_used, align 4
  %cmp74 = icmp slt i32 %61, %62
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.70
  %63 = load i32, i32* @bytes_used, align 4
  store i32 %63, i32* %max_pass_bytes, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.70
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.68
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool79 = icmp ne %struct._IO_FILE* %64, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.78
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call82 = call i32 @fflush(%struct._IO_FILE* %66)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.78
  store %struct.obstack* @gcse_obstack, %struct.obstack** %__o, align 8
  %67 = load i8*, i8** %gcse_obstack_bottom, align 8
  store i8* %67, i8** %__obj, align 8
  %68 = load i8*, i8** %__obj, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 1
  %70 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %71 = bitcast %struct._obstack_chunk* %70 to i8*
  %cmp84 = icmp ugt i8* %68, %71
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.90

land.lhs.true.86:                                 ; preds = %if.end.83
  %72 = load i8*, i8** %__obj, align 8
  %73 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 4
  %74 = load i8*, i8** %chunk_limit, align 8
  %cmp87 = icmp ult i8* %72, %74
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.86
  %75 = load i8*, i8** %__obj, align 8
  %76 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 2
  store i8* %75, i8** %object_base, align 8
  %77 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 3
  store i8* %75, i8** %next_free, align 8
  br label %if.end.91

if.else.90:                                       ; preds = %land.lhs.true.86, %if.end.83
  %78 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %79 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %78, i8* %79)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.then.89
  %80 = load i32, i32* %pass, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %pass, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call92 = call i32 @max_reg_num()
  store i32 %call92, i32* @max_gcse_regno, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @alloc_gcse_mem(%struct.rtx_def* %81)
  %82 = load i32, i32* %pass, align 4
  %add93 = add nsw i32 %82, 1
  %call94 = call i32 @one_cprop_pass(i32 %add93, i32 1)
  call void @free_gcse_mem()
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool95 = icmp ne %struct._IO_FILE* %83, null
  br i1 %tobool95, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %while.end
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %85 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %85, i32 0, i32 5
  %86 = load i8*, i8** %name, align 8
  %87 = load i32, i32* @n_basic_blocks, align 4
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* %86, i32 %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %89 = load i32, i32* %pass, align 4
  %90 = load i32, i32* %pass, align 4
  %cmp98 = icmp sgt i32 %90, 1
  %cond = select i1 %cmp98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)
  %91 = load i32, i32* %max_pass_bytes, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %89, i8* %cond, i32 %91)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %while.end
  store %struct.obstack* @gcse_obstack, %struct.obstack** %__o102, align 8
  store i8* null, i8** %__obj103, align 8
  %92 = load i8*, i8** %__obj103, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o102, align 8
  %chunk104 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 1
  %94 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk104, align 8
  %95 = bitcast %struct._obstack_chunk* %94 to i8*
  %cmp105 = icmp ugt i8* %92, %95
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.114

land.lhs.true.107:                                ; preds = %if.end.101
  %96 = load i8*, i8** %__obj103, align 8
  %97 = load %struct.obstack*, %struct.obstack** %__o102, align 8
  %chunk_limit108 = getelementptr inbounds %struct.obstack, %struct.obstack* %97, i32 0, i32 4
  %98 = load i8*, i8** %chunk_limit108, align 8
  %cmp109 = icmp ult i8* %96, %98
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %land.lhs.true.107
  %99 = load i8*, i8** %__obj103, align 8
  %100 = load %struct.obstack*, %struct.obstack** %__o102, align 8
  %object_base112 = getelementptr inbounds %struct.obstack, %struct.obstack* %100, i32 0, i32 2
  store i8* %99, i8** %object_base112, align 8
  %101 = load %struct.obstack*, %struct.obstack** %__o102, align 8
  %next_free113 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 3
  store i8* %99, i8** %next_free113, align 8
  br label %if.end.115

if.else.114:                                      ; preds = %land.lhs.true.107, %if.end.101
  %102 = load %struct.obstack*, %struct.obstack** %__o102, align 8
  %103 = load i8*, i8** %__obj103, align 8
  call void @obstack_free(%struct.obstack* %102, i8* %103)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.114, %if.then.111
  call void @free_reg_set_mem()
  call void @end_alias_analysis()
  %call116 = call i32 @max_reg_num()
  %conv117 = sext i32 %call116 to i64
  call void @allocate_reg_info(i64 %conv117, i32 0, i32 0)
  %104 = load i32, i32* @run_jump_opt_after_gcse, align 4
  store i32 %104, i32* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.end.22, %if.end.12, %if.then.4, %if.then
  %105 = load i32, i32* %retval
  ret i32 %105
}

declare i32 @max_reg_num() #1

declare void @dump_flow_info(%struct._IO_FILE*) #1

declare void @warning(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @compute_can_copy() #0 {
entry:
  %i = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @can_copy_p, i32 0, i32 0), i8 0, i64 59, i32 16, i1 false)
  call void @start_sequence()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %3, i32 58)
  store %struct.rtx_def* %call, %struct.rtx_def** %reg, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call2 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %4, %struct.rtx_def* %5)
  %call3 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call2)
  store %struct.rtx_def* %call3, %struct.rtx_def** %insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call5 = call i32 @recog(%struct.rtx_def* %7, %struct.rtx_def* %8, i32* null)
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [59 x i8], [59 x i8]* @can_copy_p, i32 0, i64 %idxprom8
  store i8 1, i8* %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.12

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [59 x i8], [59 x i8]* @can_copy_p, i32 0, i64 %idxprom10
  store i8 1, i8* %arrayidx11, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @end_sequence()
  ret void
}

declare void @gcc_obstack_init(%struct.obstack*) #1

declare void @init_alias_analysis() #1

; Function Attrs: nounwind uwtable
define internal void @alloc_reg_set_mem(i32 %n_regs) #0 {
entry:
  %n_regs.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %n_regs, i32* %n_regs.addr, align 4
  %0 = load i32, i32* %n_regs.addr, align 4
  %add = add nsw i32 %0, 100
  store i32 %add, i32* @reg_set_table_size, align 4
  %1 = load i32, i32* @reg_set_table_size, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %call = call i8* @gmalloc(i32 %2)
  %3 = bitcast i8* %call to %struct.reg_set**
  store %struct.reg_set** %3, %struct.reg_set*** @reg_set_table, align 8
  %4 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %5 = bitcast %struct.reg_set** %4 to i8*
  %6 = load i32, i32* %n, align 4
  %conv2 = zext i32 %6 to i64
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %conv2, i32 1, i1 false)
  call void @gcc_obstack_init(%struct.obstack* @reg_set_obstack)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_sets(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp = icmp ne %struct.rtx_def* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 105
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i8*
  call void @note_stores(%struct.rtx_def* %6, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @record_set_info, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gcse_alloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp36 = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.obstack* @gcse_obstack, %struct.obstack** %__h, align 8
  %0 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %0, %struct.obstack** %__o, align 8
  %1 = load i64, i64* %size.addr, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %__len, align 4
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
  %conv1 = sext i32 %6 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free3 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free3, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free3, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %12, %struct.obstack** %__o1, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  %14 = load i8*, i8** %object_base, align 8
  store i8* %14, i8** %value, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free6, align 8
  %17 = load i8*, i8** %value, align 8
  %cmp7 = icmp eq i8* %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free11 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %20 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast12, 0
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 6
  %22 = load i32, i32* %alignment_mask, align 4
  %conv14 = sext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub13, %conv14
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask15 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask15, align 4
  %neg = xor i32 %24, -1
  %conv16 = sext i32 %neg to i64
  %and = and i64 %add, %conv16
  %add.ptr17 = getelementptr inbounds i8, i8* null, i64 %and
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  store i8* %add.ptr17, i8** %next_free18, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free19, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 1
  %29 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %30 = bitcast %struct._obstack_chunk* %29 to i8*
  %sub.ptr.lhs.cast20 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %30 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit23 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit23, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk24 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk24, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast25 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %35 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %cmp28 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub27
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.10
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit31 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit31, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %37, i8** %next_free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.10
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free34, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base35 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  store i8* %40, i8** %object_base35, align 8
  %42 = load i8*, i8** %value, align 8
  store i8* %42, i8** %tmp36
  %43 = load i8*, i8** %tmp36
  store i8* %43, i8** %tmp
  %44 = load i8*, i8** %tmp
  ret i8* %44
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @alloc_gcse_mem(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %call = call i32 @get_max_uid()
  store i32 %call, i32* @max_uid, align 4
  %0 = load i32, i32* @max_uid, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %call2 = call i8* @gmalloc(i32 %1)
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** @uid_cuid, align 8
  %3 = load i32*, i32** @uid_cuid, align 8
  %4 = bitcast i32* %3 to i8*
  %5 = load i32, i32* %n, align 4
  %conv3 = sext i32 %5 to i64
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %conv3, i32 1, i1 false)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv4, 105
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %13 = load i32, i32* %rtint, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** @uid_cuid, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  store i32 %11, i32* %arrayidx8, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %17 = load i32, i32* %rtint11, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i32*, i32** @uid_cuid, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  store i32 %15, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* @max_cuid, align 4
  %22 = load i32, i32* @max_cuid, align 4
  %add16 = add nsw i32 %22, 1
  %conv17 = sext i32 %add16 to i64
  %mul18 = mul i64 %conv17, 8
  %conv19 = trunc i64 %mul18 to i32
  store i32 %conv19, i32* %n, align 4
  %23 = load i32, i32* %n, align 4
  %call20 = call i8* @gmalloc(i32 %23)
  %24 = bitcast i8* %call20 to %struct.rtx_def**
  store %struct.rtx_def** %24, %struct.rtx_def*** @cuid_insn, align 8
  %25 = load %struct.rtx_def**, %struct.rtx_def*** @cuid_insn, align 8
  %26 = bitcast %struct.rtx_def** %25 to i8*
  %27 = load i32, i32* %n, align 4
  %conv21 = sext i32 %27 to i64
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 %conv21, i32 1, i1 false)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.37, %for.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool23 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool23, label %for.body.24, label %for.end.41

for.body.24:                                      ; preds = %for.cond.22
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load25 = load i32, i32* %31, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %idxprom27 = sext i32 %bf.clear26 to i64
  %arrayidx28 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom27
  %32 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %32 to i32
  %cmp30 = icmp eq i32 %conv29, 105
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %for.body.24
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %34 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, i32* %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct.rtx_def**, %struct.rtx_def*** @cuid_insn, align 8
  %arrayidx35 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %35, i64 %idxprom34
  store %struct.rtx_def* %33, %struct.rtx_def** %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %for.body.24
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond.22

for.end.41:                                       ; preds = %for.cond.22
  %call42 = call noalias i8* @xmalloc(i64 24)
  %38 = bitcast i8* %call42 to %struct.bitmap_head_def*
  %call43 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %38)
  store %struct.bitmap_head_def* %call43, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %39 = load i32, i32* @n_basic_blocks, align 4
  %40 = load i32, i32* @max_gcse_regno, align 4
  %call44 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %39, i32 %40)
  store %struct.simple_bitmap_def** %call44, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %41 = load i32, i32* @n_basic_blocks, align 4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 8
  %conv47 = trunc i64 %mul46 to i32
  %call48 = call i8* @gmalloc(i32 %conv47)
  %42 = bitcast i8* %call48 to %struct.rtx_def**
  store %struct.rtx_def** %42, %struct.rtx_def*** @modify_mem_list, align 8
  %43 = load i32, i32* @n_basic_blocks, align 4
  %conv49 = sext i32 %43 to i64
  %mul50 = mul i64 %conv49, 8
  %conv51 = trunc i64 %mul50 to i32
  %call52 = call i8* @gmalloc(i32 %conv51)
  %44 = bitcast i8* %call52 to %struct.rtx_def**
  store %struct.rtx_def** %44, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %45 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %46 = bitcast %struct.rtx_def** %45 to i8*
  %47 = load i32, i32* @n_basic_blocks, align 4
  %conv53 = sext i32 %47 to i64
  %mul54 = mul i64 %conv53, 8
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 %mul54, i32 1, i1 false)
  %48 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %49 = bitcast %struct.rtx_def** %48 to i8*
  %50 = load i32, i32* @n_basic_blocks, align 4
  %conv55 = sext i32 %50 to i64
  %mul56 = mul i64 %conv55, 8
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 %mul56, i32 1, i1 false)
  %call57 = call noalias i8* @xmalloc(i64 24)
  %51 = bitcast i8* %call57 to %struct.bitmap_head_def*
  %call58 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %51)
  store %struct.bitmap_head_def* %call58, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  %call59 = call noalias i8* @xmalloc(i64 24)
  %52 = bitcast i8* %call59 to %struct.bitmap_head_def*
  %call60 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %52)
  store %struct.bitmap_head_def* %call60, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @one_cprop_pass(i32 %pass, i32 %alter_jumps) #0 {
entry:
  %pass.addr = alloca i32, align 4
  %alter_jumps.addr = alloca i32, align 4
  %changed = alloca i32, align 4
  store i32 %pass, i32* %pass.addr, align 4
  store i32 %alter_jumps, i32* %alter_jumps.addr, align 4
  store i32 0, i32* %changed, align 4
  store i32 0, i32* @const_prop_count, align 4
  store i32 0, i32* @copy_prop_count, align 4
  %0 = load i32, i32* @max_cuid, align 4
  call void @alloc_set_hash_table(i32 %0)
  call void @compute_set_hash_table()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %3 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %4 = load i32, i32* @set_hash_table_size, align 4
  %5 = load i32, i32* @n_sets, align 4
  call void @dump_hash_table(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct.expr** %3, i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @n_sets, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %7 = load i32, i32* @n_basic_blocks, align 4
  %8 = load i32, i32* @n_sets, align 4
  call void @alloc_cprop_mem(i32 %7, i32 %8)
  call void @compute_cprop_data()
  %9 = load i32, i32* %alter_jumps.addr, align 4
  %call = call i32 @cprop(i32 %9)
  store i32 %call, i32* %changed, align 4
  call void @free_cprop_mem()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @free_set_hash_table()
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end.2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 5
  %13 = load i8*, i8** %name, align 8
  %14 = load i32, i32* %pass.addr, align 4
  %15 = load i32, i32* @bytes_used, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0), i8* %13, i32 %14, i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %17 = load i32, i32* @const_prop_count, align 4
  %18 = load i32, i32* @copy_prop_count, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i32 %17, i32 %18)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end.2
  %19 = load i32, i32* %changed, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @one_classic_gcse_pass(i32 %pass) #0 {
entry:
  %pass.addr = alloca i32, align 4
  %changed = alloca i32, align 4
  store i32 %pass, i32* %pass.addr, align 4
  store i32 0, i32* %changed, align 4
  store i32 0, i32* @gcse_subst_count, align 4
  store i32 0, i32* @gcse_create_count, align 4
  %0 = load i32, i32* @max_cuid, align 4
  call void @alloc_expr_hash_table(i32 %0)
  %1 = load i32, i32* @n_basic_blocks, align 4
  %2 = load i32, i32* @max_cuid, align 4
  call void @alloc_rd_mem(i32 %1, i32 %2)
  call void @compute_expr_hash_table()
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %5 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %6 = load i32, i32* @expr_hash_table_size, align 4
  %7 = load i32, i32* @n_exprs, align 4
  call void @dump_hash_table(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.expr** %5, i32 %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* @n_exprs, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @compute_kill_rd()
  call void @compute_rd()
  %9 = load i32, i32* @n_basic_blocks, align 4
  %10 = load i32, i32* @n_exprs, align 4
  call void @alloc_avail_expr_mem(i32 %9, i32 %10)
  call void @compute_ae_gen()
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  call void @compute_ae_kill(%struct.simple_bitmap_def** %11, %struct.simple_bitmap_def** %12)
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %15 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_out, align 8
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  call void @compute_available(%struct.simple_bitmap_def** %13, %struct.simple_bitmap_def** %14, %struct.simple_bitmap_def** %15, %struct.simple_bitmap_def** %16)
  %call = call i32 @classic_gcse()
  store i32 %call, i32* %changed, align 4
  call void @free_avail_expr_mem()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @free_rd_mem()
  call void @free_expr_hash_table()
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %17, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end.2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 5
  %21 = load i8*, i8** %name, align 8
  %22 = load i32, i32* %pass.addr, align 4
  %23 = load i32, i32* @bytes_used, align 4
  %24 = load i32, i32* @gcse_subst_count, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* %21, i32 %22, i32 %23, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %26 = load i32, i32* @gcse_create_count, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %26)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end.2
  %27 = load i32, i32* %changed, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @one_pre_gcse_pass(i32 %pass) #0 {
entry:
  %pass.addr = alloca i32, align 4
  %changed = alloca i32, align 4
  store i32 %pass, i32* %pass.addr, align 4
  store i32 0, i32* %changed, align 4
  store i32 0, i32* @gcse_subst_count, align 4
  store i32 0, i32* @gcse_create_count, align 4
  %0 = load i32, i32* @max_cuid, align 4
  call void @alloc_expr_hash_table(i32 %0)
  call void @add_noreturn_fake_exit_edges()
  %1 = load i32, i32* @flag_gcse_lm, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @compute_ld_motion_mems()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @compute_expr_hash_table()
  call void @trim_ld_motion_mems()
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %4 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %5 = load i32, i32* @expr_hash_table_size, align 4
  %6 = load i32, i32* @n_exprs, align 4
  call void @dump_hash_table(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.expr** %4, i32 %5, i32 %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load i32, i32* @n_exprs, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  %8 = load i32, i32* @n_basic_blocks, align 4
  %9 = load i32, i32* @n_exprs, align 4
  call void @alloc_pre_mem(i32 %8, i32 %9)
  call void @compute_pre_data()
  %call = call i32 @pre_gcse()
  %10 = load i32, i32* %changed, align 4
  %or = or i32 %10, %call
  store i32 %or, i32* %changed, align 4
  %11 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8
  call void @free_edge_list(%struct.edge_list* %11)
  call void @free_pre_mem()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.3
  call void @free_ldst_mems()
  call void @remove_fake_edges()
  call void @free_expr_hash_table()
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %14 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 5
  %15 = load i8*, i8** %name, align 8
  %16 = load i32, i32* %pass.addr, align 4
  %17 = load i32, i32* @bytes_used, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i32 0, i32 0), i8* %15, i32 %16, i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %19 = load i32, i32* @gcse_subst_count, align 4
  %20 = load i32, i32* @gcse_create_count, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i32 %19, i32 %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.5
  %21 = load i32, i32* %changed, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @free_modify_mem_tables() #0 {
entry:
  call void @clear_modify_mem_tables()
  %0 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %1 = bitcast %struct.rtx_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %3 = bitcast %struct.rtx_def** %2 to i8*
  call void @free(i8* %3) #2
  store %struct.rtx_def** null, %struct.rtx_def*** @modify_mem_list, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** @canon_modify_mem_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gmalloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @bytes_used, align 4
  %add = add i32 %1, %0
  store i32 %add, i32* @bytes_used, align 4
  %2 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @free_reg_set_mem() #0 {
entry:
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %0 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %1 = bitcast %struct.reg_set** %0 to i8*
  call void @free(i8* %1) #2
  store %struct.obstack* @reg_set_obstack, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %2 = load i8*, i8** %__obj, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %5 = bitcast %struct._obstack_chunk* %4 to i8*
  %cmp = icmp ugt i8* %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i8*, i8** %__obj, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 4
  %8 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %6, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8*, i8** %__obj, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 2
  store i8* %9, i8** %object_base, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  store i8* %9, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %13 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %12, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_gcse_mem() #0 {
entry:
  %0 = load i32*, i32** @uid_cuid, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.rtx_def**, %struct.rtx_def*** @cuid_insn, align 8
  %3 = bitcast %struct.rtx_def** %2 to i8*
  call void @free(i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %5)
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %7 = bitcast %struct.bitmap_head_def* %6 to i8*
  call void @free(i8* %7) #2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %9 = bitcast %struct.simple_bitmap_def** %8 to i8*
  call void @free(i8* %9) #2
  call void @free_modify_mem_tables()
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  %tobool2 = icmp ne %struct.bitmap_head_def* %10, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body.1
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %11)
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  %13 = bitcast %struct.bitmap_head_def* %12 to i8*
  call void @free(i8* %13) #2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.body.1
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  %tobool7 = icmp ne %struct.bitmap_head_def* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.6
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %15)
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  %17 = bitcast %struct.bitmap_head_def* %16 to i8*
  call void @free(i8* %17) #2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @one_code_hoisting_pass() #0 {
entry:
  %changed = alloca i32, align 4
  store i32 0, i32* %changed, align 4
  %0 = load i32, i32* @max_cuid, align 4
  call void @alloc_expr_hash_table(i32 %0)
  call void @compute_expr_hash_table()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %3 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %4 = load i32, i32* @expr_hash_table_size, align 4
  %5 = load i32, i32* @n_exprs, align 4
  call void @dump_hash_table(%struct._IO_FILE* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0), %struct.expr** %3, i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @n_exprs, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %7 = load i32, i32* @n_basic_blocks, align 4
  %8 = load i32, i32* @n_exprs, align 4
  call void @alloc_code_hoist_mem(i32 %7, i32 %8)
  call void @compute_code_hoist_data()
  call void @hoist_code()
  call void @free_code_hoist_mem()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @free_expr_hash_table()
  %9 = load i32, i32* %changed, align 4
  ret i32 %9
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

declare void @end_alias_analysis() #1

declare void @allocate_reg_info(i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @delete_null_pointer_checks(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %nonnull_avin = alloca %struct.simple_bitmap_def**, align 8
  %nonnull_avout = alloca %struct.simple_bitmap_def**, align 8
  %block_reg = alloca i32*, align 8
  %bb = alloca i32, align 4
  %reg = alloca i32, align 4
  %regs_per_pass = alloca i32, align 4
  %max_reg = alloca i32, align 4
  %npi = alloca %struct.null_pointer_info, align 8
  %last_insn = alloca %struct.rtx_def*, align 8
  %condition = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %reg14 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp1 = icmp sgt i32 %1, 1000
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @n_edges, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %div = sdiv i32 %2, %3
  %cmp2 = icmp sge i32 %div, 20
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %call = call i32 @max_reg_num()
  store i32 %call, i32* %max_reg, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %5 = load i32, i32* %max_reg, align 4
  %call5 = call i32 @get_bitmap_width(i32 4, i32 %4, i32 %5)
  store i32 %call5, i32* %regs_per_pass, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %7 = load i32, i32* %regs_per_pass, align 4
  %call6 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  %nonnull_local = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 3
  store %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %8 = load i32, i32* @n_basic_blocks, align 4
  %9 = load i32, i32* %regs_per_pass, align 4
  %call7 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %8, i32 %9)
  %nonnull_killed = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 4
  store %struct.simple_bitmap_def** %call7, %struct.simple_bitmap_def*** %nonnull_killed, align 8
  %10 = load i32, i32* @n_basic_blocks, align 4
  %11 = load i32, i32* %regs_per_pass, align 4
  %call8 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %10, i32 %11)
  store %struct.simple_bitmap_def** %call8, %struct.simple_bitmap_def*** %nonnull_avin, align 8
  %12 = load i32, i32* @n_basic_blocks, align 4
  %13 = load i32, i32* %regs_per_pass, align 4
  %call9 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %13)
  store %struct.simple_bitmap_def** %call9, %struct.simple_bitmap_def*** %nonnull_avout, align 8
  %14 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %14 to i64
  %call10 = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %15 = bitcast i8* %call10 to i32*
  store i32* %15, i32** %block_reg, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %16 = load i32, i32* %bb, align 4
  %17 = load i32, i32* @n_basic_blocks, align 4
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb13 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb13, i32 0, i64 %idxprom
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %last_insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp15 = icmp ne i32 %bf.clear, 33
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %24 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call17 = call i32 @any_condjump_p(%struct.rtx_def* %24)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %lor.lhs.false.18, label %if.then.21

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %25 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call19 = call i32 @onlyjump_p(%struct.rtx_def* %25)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %for.body
  br label %for.inc

if.end.22:                                        ; preds = %lor.lhs.false.18
  %26 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call23 = call %struct.rtx_def* @get_condition(%struct.rtx_def* %26, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call23, %struct.rtx_def** %condition, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %tobool24 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.54

lor.lhs.false.25:                                 ; preds = %if.end.22
  %28 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load26 = load i32, i32* %29, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp ne i32 %bf.clear27, 102
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.35

land.lhs.true.30:                                 ; preds = %lor.lhs.false.25
  %30 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load31 = load i32, i32* %31, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp ne i32 %bf.clear32, 103
  br i1 %cmp33, label %if.then.54, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.30, %lor.lhs.false.25
  %32 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load37 = load i32, i32* %34, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp ne i32 %bf.clear38, 54
  br i1 %cmp39, label %if.then.54, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.35
  %35 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load48 = load i32, i32* %39, align 8
  %bf.lshr = lshr i32 %bf.load48, 16
  %bf.clear49 = and i32 %bf.lshr, 255
  %idxprom50 = sext i32 %bf.clear49 to i64
  %arrayidx51 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom50
  %40 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8
  %cmp52 = icmp ne %struct.rtx_def* %36, %40
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.35, %land.lhs.true.30, %if.end.22
  br label %for.inc

if.end.55:                                        ; preds = %lor.lhs.false.41
  %41 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %reg14, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %reg14, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load59 = load i32, i32* %44, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp ne i32 %bf.clear60, 61
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.55
  br label %for.inc

if.end.64:                                        ; preds = %if.end.55
  %45 = load %struct.rtx_def*, %struct.rtx_def** %reg14, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %46 = load i32, i32* %rtuint, align 4
  %47 = load i32, i32* %bb, align 4
  %idxprom67 = sext i32 %47 to i64
  %48 = load i32*, i32** %block_reg, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %48, i64 %idxprom67
  store i32 %46, i32* %arrayidx68, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.64, %if.then.63, %if.then.54, %if.then.21
  %49 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 53, i32* %reg, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.77, %for.end
  %50 = load i32, i32* %reg, align 4
  %51 = load i32, i32* %max_reg, align 4
  %cmp70 = icmp slt i32 %50, %51
  br i1 %cmp70, label %for.body.72, label %for.end.79

for.body.72:                                      ; preds = %for.cond.69
  %52 = load i32, i32* %reg, align 4
  %min_reg = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 1
  store i32 %52, i32* %min_reg, align 4
  %53 = load i32, i32* %reg, align 4
  %54 = load i32, i32* %regs_per_pass, align 4
  %add = add nsw i32 %53, %54
  %55 = load i32, i32* %max_reg, align 4
  %cmp73 = icmp slt i32 %add, %55
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.72
  %56 = load i32, i32* %reg, align 4
  %57 = load i32, i32* %regs_per_pass, align 4
  %add75 = add nsw i32 %56, %57
  br label %cond.end

cond.false:                                       ; preds = %for.body.72
  %58 = load i32, i32* %max_reg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add75, %cond.true ], [ %58, %cond.false ]
  %max_reg76 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 2
  store i32 %cond, i32* %max_reg76, align 4
  %59 = load i32*, i32** %block_reg, align 8
  %60 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avin, align 8
  %61 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avout, align 8
  call void @delete_null_pointer_checks_1(i32* %59, %struct.simple_bitmap_def** %60, %struct.simple_bitmap_def** %61, %struct.null_pointer_info* %npi)
  br label %for.inc.77

for.inc.77:                                       ; preds = %cond.end
  %62 = load i32, i32* %regs_per_pass, align 4
  %63 = load i32, i32* %reg, align 4
  %add78 = add nsw i32 %63, %62
  store i32 %add78, i32* %reg, align 4
  br label %for.cond.69

for.end.79:                                       ; preds = %for.cond.69
  %64 = load i32*, i32** %block_reg, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65) #2
  %nonnull_local80 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 3
  %66 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local80, align 8
  %67 = bitcast %struct.simple_bitmap_def** %66 to i8*
  call void @free(i8* %67) #2
  %nonnull_killed81 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %npi, i32 0, i32 4
  %68 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_killed81, align 8
  %69 = bitcast %struct.simple_bitmap_def** %68 to i8*
  call void @free(i8* %69) #2
  %70 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avin, align 8
  %71 = bitcast %struct.simple_bitmap_def** %70 to i8*
  call void @free(i8* %71) #2
  %72 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avout, align 8
  %73 = bitcast %struct.simple_bitmap_def** %72 to i8*
  call void @free(i8* %73) #2
  br label %return

return:                                           ; preds = %for.end.79, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_bitmap_width(i32 %n, i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %max_bitmap_memory = alloca i64, align 8
  %column_size = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i64 10485760, i64* %max_bitmap_memory, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  store i64 %mul1, i64* %column_size, align 8
  %2 = load i64, i64* %column_size, align 8
  %3 = load i32, i32* %y.addr, align 4
  %add = add i32 %3, 64
  %sub = sub i32 %add, 1
  %div = udiv i32 %sub, 64
  %conv2 = zext i32 %div to i64
  %mul3 = mul i64 %2, %conv2
  %4 = load i64, i64* %max_bitmap_memory, align 8
  %cmp = icmp ule i64 %mul3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %max_bitmap_memory, align 8
  %7 = load i64, i64* %column_size, align 8
  %add5 = add i64 %6, %7
  %sub6 = sub i64 %add5, 1
  %8 = load i64, i64* %column_size, align 8
  %div7 = udiv i64 %sub6, %8
  %mul8 = mul i64 64, %div7
  %conv9 = trunc i64 %mul8 to i32
  store i32 %conv9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_condition(%struct.rtx_def*, %struct.rtx_def**) #1

; Function Attrs: nounwind uwtable
define internal void @delete_null_pointer_checks_1(i32* %block_reg, %struct.simple_bitmap_def** %nonnull_avin, %struct.simple_bitmap_def** %nonnull_avout, %struct.null_pointer_info* %npi) #0 {
entry:
  %block_reg.addr = alloca i32*, align 8
  %nonnull_avin.addr = alloca %struct.simple_bitmap_def**, align 8
  %nonnull_avout.addr = alloca %struct.simple_bitmap_def**, align 8
  %npi.addr = alloca %struct.null_pointer_info*, align 8
  %bb = alloca i32, align 4
  %current_block = alloca i32, align 4
  %nonnull_local = alloca %struct.simple_bitmap_def**, align 8
  %nonnull_killed = alloca %struct.simple_bitmap_def**, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %stop_insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %last_insn = alloca %struct.rtx_def*, align 8
  %condition = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %compare_and_branch = alloca i32, align 4
  %new_jump = alloca %struct.rtx_def*, align 8
  store i32* %block_reg, i32** %block_reg.addr, align 8
  store %struct.simple_bitmap_def** %nonnull_avin, %struct.simple_bitmap_def*** %nonnull_avin.addr, align 8
  store %struct.simple_bitmap_def** %nonnull_avout, %struct.simple_bitmap_def*** %nonnull_avout.addr, align 8
  store %struct.null_pointer_info* %npi, %struct.null_pointer_info** %npi.addr, align 8
  %0 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %nonnull_local1 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %0, i32 0, i32 3
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local1, align 8
  store %struct.simple_bitmap_def** %1, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %2 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %nonnull_killed2 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %2, i32 0, i32 4
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_killed2, align 8
  store %struct.simple_bitmap_def** %3, %struct.simple_bitmap_def*** %nonnull_killed, align 8
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %5 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %4, i32 %5)
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_killed, align 8
  %7 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %6, i32 %7)
  store i32 0, i32* %current_block, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.149, %entry
  %8 = load i32, i32* %current_block, align 4
  %9 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.150

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %current_block, align 4
  %11 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %current_block3 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %11, i32 0, i32 0
  store i32 %10, i32* %current_block3, align 4
  %12 = load i32, i32* %current_block, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %stop_insn, align 8
  %17 = load i32, i32* %current_block, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb8 = bitcast %union.varray_data_tag* %data7 to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb8, i32 0, i64 %idxprom6
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %insn, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn, align 8
  %cmp11 = icmp ne %struct.rtx_def* %21, %22
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom13 = sext i32 %bf.clear to i64
  %arrayidx14 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom13
  %25 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %25 to i32
  %cmp15 = icmp eq i32 %conv, 105
  br i1 %cmp15, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.12
  br label %for.inc

if.end:                                           ; preds = %for.body.12
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load17 = load i32, i32* %27, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %idxprom19 = sext i32 %bf.clear18 to i64
  %arrayidx20 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom19
  %28 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %28 to i32
  %cmp22 = icmp eq i32 %conv21, 105
  br i1 %cmp22, label %cond.true, label %cond.false.38

cond.true:                                        ; preds = %if.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load27 = load i32, i32* %31, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 47
  br i1 %cmp29, label %cond.true.31, label %cond.false

cond.true.31:                                     ; preds = %cond.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %34, %struct.rtx_def* %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.31
  %cond = phi %struct.rtx_def* [ %33, %cond.true.31 ], [ %call, %cond.false ]
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.end
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.end
  %cond40 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.38 ]
  store %struct.rtx_def* %cond40, %struct.rtx_def** %set, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %cond.end.39
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 3
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %40 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %41 = bitcast %struct.null_pointer_info* %40 to i8*
  call void @note_stores(%struct.rtx_def* %39, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @invalidate_nonnull_info, i8* %41)
  br label %for.inc

if.end.45:                                        ; preds = %cond.end.39
  %42 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 1
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load49 = load i32, i32* %44, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 66
  br i1 %cmp51, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %if.end.45
  %45 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %reg, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load59 = load i32, i32* %48, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 61
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.88

land.lhs.true.63:                                 ; preds = %land.lhs.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx65 to i32*
  %50 = load i32, i32* %rtuint, align 4
  %51 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %51, i32 0, i32 1
  %52 = load i32, i32* %min_reg, align 4
  %cmp66 = icmp uge i32 %50, %52
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.88

land.lhs.true.68:                                 ; preds = %land.lhs.true.63
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %54 = load i32, i32* %rtuint71, align 4
  %55 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %max_reg = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %55, i32 0, i32 2
  %56 = load i32, i32* %max_reg, align 4
  %cmp72 = icmp ult i32 %54, %56
  br i1 %cmp72, label %if.then.74, label %if.end.88

if.then.74:                                       ; preds = %land.lhs.true.68
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtuint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %58 = load i32, i32* %rtuint77, align 4
  %59 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg78 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %59, i32 0, i32 1
  %60 = load i32, i32* %min_reg78, align 4
  %sub = sub i32 %58, %60
  %rem = urem i32 %sub, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtuint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %62 = load i32, i32* %rtuint81, align 4
  %63 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg82 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %63, i32 0, i32 1
  %64 = load i32, i32* %min_reg82, align 4
  %sub83 = sub i32 %62, %64
  %div = udiv i32 %sub83, 64
  %idxprom84 = zext i32 %div to i64
  %65 = load i32, i32* %current_block, align 4
  %idxprom85 = sext i32 %65 to i64
  %66 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %arrayidx86 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %66, i64 %idxprom85
  %67 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx86, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %67, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom84
  %68 = load i64, i64* %arrayidx87, align 8
  %or = or i64 %68, %shl
  store i64 %or, i64* %arrayidx87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.74, %land.lhs.true.68, %land.lhs.true.63, %land.lhs.true, %if.end.45
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 3
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %71 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %72 = bitcast %struct.null_pointer_info* %71 to i8*
  call void @note_stores(%struct.rtx_def* %70, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @invalidate_nonnull_info, i8* %72)
  %73 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load95 = load i32, i32* %75, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 66
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.145

land.lhs.true.99:                                 ; preds = %if.end.88
  %76 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %reg, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load106 = load i32, i32* %79, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp eq i32 %bf.clear107, 61
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.145

land.lhs.true.110:                                ; preds = %land.lhs.true.99
  %80 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %81 = load i32, i32* %rtuint113, align 4
  %82 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg114 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %82, i32 0, i32 1
  %83 = load i32, i32* %min_reg114, align 4
  %cmp115 = icmp uge i32 %81, %83
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.145

land.lhs.true.117:                                ; preds = %land.lhs.true.110
  %84 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtuint120 = bitcast %union.rtunion_def* %arrayidx119 to i32*
  %85 = load i32, i32* %rtuint120, align 4
  %86 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %max_reg121 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %86, i32 0, i32 2
  %87 = load i32, i32* %max_reg121, align 4
  %cmp122 = icmp ult i32 %85, %87
  br i1 %cmp122, label %if.then.124, label %if.end.145

if.then.124:                                      ; preds = %land.lhs.true.117
  %88 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtuint127 = bitcast %union.rtunion_def* %arrayidx126 to i32*
  %89 = load i32, i32* %rtuint127, align 4
  %90 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg128 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %90, i32 0, i32 1
  %91 = load i32, i32* %min_reg128, align 4
  %sub129 = sub i32 %89, %91
  %rem130 = urem i32 %sub129, 64
  %sh_prom131 = zext i32 %rem130 to i64
  %shl132 = shl i64 1, %sh_prom131
  %92 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtuint135 = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %93 = load i32, i32* %rtuint135, align 4
  %94 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg136 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %94, i32 0, i32 1
  %95 = load i32, i32* %min_reg136, align 4
  %sub137 = sub i32 %93, %95
  %div138 = udiv i32 %sub137, 64
  %idxprom139 = zext i32 %div138 to i64
  %96 = load i32, i32* %current_block, align 4
  %idxprom140 = sext i32 %96 to i64
  %97 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %arrayidx141 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %97, i64 %idxprom140
  %98 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx141, align 8
  %elms142 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %98, i32 0, i32 3
  %arrayidx143 = getelementptr inbounds [1 x i64], [1 x i64]* %elms142, i32 0, i64 %idxprom139
  %99 = load i64, i64* %arrayidx143, align 8
  %or144 = or i64 %99, %shl132
  store i64 %or144, i64* %arrayidx143, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.124, %land.lhs.true.117, %land.lhs.true.110, %land.lhs.true.99, %if.end.88
  br label %for.inc

for.inc:                                          ; preds = %if.end.145, %if.then.41, %if.then
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 2
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  store %struct.rtx_def* %101, %struct.rtx_def** %insn, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end
  %102 = load i32, i32* %current_block, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %current_block, align 4
  br label %for.cond

for.end.150:                                      ; preds = %for.cond
  %103 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %104 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_killed, align 8
  %105 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avout.addr, align 8
  %106 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avin.addr, align 8
  call void @compute_available(%struct.simple_bitmap_def** %103, %struct.simple_bitmap_def** %104, %struct.simple_bitmap_def** %105, %struct.simple_bitmap_def** %106)
  store i32 0, i32* %bb, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.242, %for.end.150
  %107 = load i32, i32* %bb, align 4
  %108 = load i32, i32* @n_basic_blocks, align 4
  %cmp152 = icmp slt i32 %107, %108
  br i1 %cmp152, label %for.body.154, label %for.end.244

for.body.154:                                     ; preds = %for.cond.151
  %109 = load i32, i32* %bb, align 4
  %idxprom155 = sext i32 %109 to i64
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data156 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 4
  %bb157 = bitcast %union.varray_data_tag* %data156 to [1 x %struct.basic_block_def*]*
  %arrayidx158 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb157, i32 0, i64 %idxprom155
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx158, align 8
  %end159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 1
  %112 = load %struct.rtx_def*, %struct.rtx_def** %end159, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %last_insn, align 8
  %113 = load i32, i32* %bb, align 4
  %idxprom160 = sext i32 %113 to i64
  %114 = load i32*, i32** %block_reg.addr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %114, i64 %idxprom160
  %115 = load i32, i32* %arrayidx161, align 4
  %116 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg162 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %116, i32 0, i32 1
  %117 = load i32, i32* %min_reg162, align 4
  %cmp163 = icmp ult i32 %115, %117
  br i1 %cmp163, label %if.then.170, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.154
  %118 = load i32, i32* %bb, align 4
  %idxprom165 = sext i32 %118 to i64
  %119 = load i32*, i32** %block_reg.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %119, i64 %idxprom165
  %120 = load i32, i32* %arrayidx166, align 4
  %121 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %max_reg167 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %121, i32 0, i32 2
  %122 = load i32, i32* %max_reg167, align 4
  %cmp168 = icmp uge i32 %120, %122
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %lor.lhs.false, %for.body.154
  br label %for.inc.242

if.end.171:                                       ; preds = %lor.lhs.false
  %123 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call172 = call %struct.rtx_def* @get_condition(%struct.rtx_def* %123, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call172, %struct.rtx_def** %condition, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %tobool173 = icmp ne %struct.rtx_def* %124, null
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %if.end.171
  br label %for.inc.242

if.end.175:                                       ; preds = %if.end.171
  %125 = load i32, i32* %bb, align 4
  %idxprom176 = sext i32 %125 to i64
  %126 = load i32*, i32** %block_reg.addr, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %126, i64 %idxprom176
  %127 = load i32, i32* %arrayidx177, align 4
  %128 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg178 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %128, i32 0, i32 1
  %129 = load i32, i32* %min_reg178, align 4
  %sub179 = sub i32 %127, %129
  %div180 = udiv i32 %sub179, 64
  %idxprom181 = zext i32 %div180 to i64
  %130 = load i32, i32* %bb, align 4
  %idxprom182 = sext i32 %130 to i64
  %131 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_avout.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %131, i64 %idxprom182
  %132 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx183, align 8
  %elms184 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %132, i32 0, i32 3
  %arrayidx185 = getelementptr inbounds [1 x i64], [1 x i64]* %elms184, i32 0, i64 %idxprom181
  %133 = load i64, i64* %arrayidx185, align 8
  %134 = load i32, i32* %bb, align 4
  %idxprom186 = sext i32 %134 to i64
  %135 = load i32*, i32** %block_reg.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %135, i64 %idxprom186
  %136 = load i32, i32* %arrayidx187, align 4
  %137 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi.addr, align 8
  %min_reg188 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %137, i32 0, i32 1
  %138 = load i32, i32* %min_reg188, align 4
  %sub189 = sub i32 %136, %138
  %rem190 = urem i32 %sub189, 64
  %sh_prom191 = zext i32 %rem190 to i64
  %shr = lshr i64 %133, %sh_prom191
  %and = and i64 %shr, 1
  %tobool192 = icmp ne i64 %and, 0
  br i1 %tobool192, label %if.end.194, label %if.then.193

if.then.193:                                      ; preds = %if.end.175
  br label %for.inc.242

if.end.194:                                       ; preds = %if.end.175
  %139 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %cmp195 = icmp eq %struct.rtx_def* %139, %140
  br i1 %cmp195, label %if.then.197, label %if.else

if.then.197:                                      ; preds = %if.end.194
  store i32 1, i32* %compare_and_branch, align 4
  br label %if.end.204

if.else:                                          ; preds = %if.end.194
  %141 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call198 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %142)
  %cmp199 = icmp eq %struct.rtx_def* %141, %call198
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %if.else
  store i32 2, i32* %compare_and_branch, align 4
  br label %if.end.203

if.else.202:                                      ; preds = %if.else
  br label %for.inc.242

if.end.203:                                       ; preds = %if.then.201
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.197
  %143 = load %struct.rtx_def*, %struct.rtx_def** %condition, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load205 = load i32, i32* %144, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp eq i32 %bf.clear206, 102
  br i1 %cmp207, label %if.then.209, label %if.end.228

if.then.209:                                      ; preds = %if.end.204
  %145 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %fld210 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld210, i32 0, i64 7
  %rtx212 = bitcast %union.rtunion_def* %arrayidx211 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx212, align 8
  %call213 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %146)
  %147 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call214 = call %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def* %call213, %struct.rtx_def* %147)
  store %struct.rtx_def* %call214, %struct.rtx_def** %new_jump, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 7
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %new_jump, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 7
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  store %struct.rtx_def* %149, %struct.rtx_def** %rtx220, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %new_jump, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 7
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %152 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx225 to i32*
  %153 = load i32, i32* %rtint, align 4
  %inc226 = add nsw i32 %153, 1
  store i32 %inc226, i32* %rtint, align 4
  %154 = load %struct.rtx_def*, %struct.rtx_def** %new_jump, align 8
  %call227 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %154)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.209, %if.end.204
  %155 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call229 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %155)
  %156 = load i32, i32* %compare_and_branch, align 4
  %cmp230 = icmp eq i32 %156, 2
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %if.end.228
  %157 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %call233 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %157)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %if.end.228
  %158 = load i32, i32* %bb, align 4
  %idxprom235 = sext i32 %158 to i64
  %159 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data236 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %159, i32 0, i32 4
  %bb237 = bitcast %union.varray_data_tag* %data236 to [1 x %struct.basic_block_def*]*
  %arrayidx238 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb237, i32 0, i64 %idxprom235
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx238, align 8
  %call239 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %160)
  %161 = load i32, i32* %bb, align 4
  %idxprom240 = sext i32 %161 to i64
  %162 = load i32*, i32** %block_reg.addr, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %162, i64 %idxprom240
  store i32 0, i32* %arrayidx241, align 4
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.234, %if.else.202, %if.then.193, %if.then.174, %if.then.170
  %163 = load i32, i32* %bb, align 4
  %inc243 = add nsw i32 %163, 1
  store i32 %inc243, i32* %bb, align 4
  br label %for.cond.151

for.end.244:                                      ; preds = %for.cond.151
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @start_sequence() #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) #1

declare void @end_sequence() #1

declare noalias i8* @xmalloc(i64) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare i32 @get_max_uid() #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @record_set_info(%struct.rtx_def* %dest, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %record_set_insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def*
  store %struct.rtx_def* %1, %struct.rtx_def** %record_set_insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp uge i32 %5, 53
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %7 = load i32, i32* %rtuint4, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %record_set_insn, align 8
  call void @record_one_set(i32 %7, %struct.rtx_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_one_set(i32 %regno, %struct.rtx_def* %insn) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %new_reg_info = alloca %struct.reg_set*, align 8
  %new_size = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp45 = alloca i8*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %1 = load i32, i32* @reg_set_table_size, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %regno.addr, align 4
  %add = add nsw i32 %2, 100
  store i32 %add, i32* %new_size, align 4
  %3 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %4 = bitcast %struct.reg_set** %3 to i8*
  %5 = load i32, i32* %new_size, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @grealloc(i8* %4, i32 %conv1)
  %6 = bitcast i8* %call to %struct.reg_set**
  store %struct.reg_set** %6, %struct.reg_set*** @reg_set_table, align 8
  %7 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %8 = load i32, i32* @reg_set_table_size, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %7, i64 %idx.ext
  %9 = bitcast %struct.reg_set** %add.ptr to i8*
  %10 = load i32, i32* %new_size, align 4
  %11 = load i32, i32* @reg_set_table_size, align 4
  %sub = sub nsw i32 %10, %11
  %conv2 = sext i32 %sub to i64
  %mul3 = mul i64 %conv2, 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %mul3, i32 1, i1 false)
  %12 = load i32, i32* %new_size, align 4
  store i32 %12, i32* @reg_set_table_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.obstack* @reg_set_obstack, %struct.obstack** %__h, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o, align 8
  store i32 16, i32* %__len, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 4
  %15 = load i8*, i8** %chunk_limit, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i32, i32* %__len, align 4
  %conv4 = sext i32 %18 to i64
  %cmp5 = icmp slt i64 %sub.ptr.sub, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %20 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %19, i32 %20)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %21 = load i32, i32* %__len, align 4
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free9 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free9, align 8
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %23, i64 %idx.ext10
  store i8* %add.ptr11, i8** %next_free9, align 8
  %24 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %24, %struct.obstack** %__o1, align 8
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 2
  %26 = load i8*, i8** %object_base, align 8
  store i8* %26, i8** %value, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free14 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free14, align 8
  %29 = load i8*, i8** %value, align 8
  %cmp15 = icmp eq i8* %28, %29
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 3
  %32 = load i8*, i8** %next_free19, align 8
  %sub.ptr.lhs.cast20 = ptrtoint i8* %32 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast20, 0
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 6
  %34 = load i32, i32* %alignment_mask, align 4
  %conv22 = sext i32 %34 to i64
  %add23 = add nsw i64 %sub.ptr.sub21, %conv22
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask24 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 6
  %36 = load i32, i32* %alignment_mask24, align 4
  %neg = xor i32 %36, -1
  %conv25 = sext i32 %neg to i64
  %and = and i64 %add23, %conv25
  %add.ptr26 = getelementptr inbounds i8, i8* null, i64 %and
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free27 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 3
  store i8* %add.ptr26, i8** %next_free27, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free28 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  %39 = load i8*, i8** %next_free28, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 1
  %41 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %42 = bitcast %struct._obstack_chunk* %41 to i8*
  %sub.ptr.lhs.cast29 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %42 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 4
  %44 = load i8*, i8** %chunk_limit32, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk33 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 1
  %46 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk33, align 8
  %47 = bitcast %struct._obstack_chunk* %46 to i8*
  %sub.ptr.lhs.cast34 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %47 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %cmp37 = icmp sgt i64 %sub.ptr.sub31, %sub.ptr.sub36
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.18
  %48 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit40 = getelementptr inbounds %struct.obstack, %struct.obstack* %48, i32 0, i32 4
  %49 = load i8*, i8** %chunk_limit40, align 8
  %50 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free41 = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 3
  store i8* %49, i8** %next_free41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.18
  %51 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free43 = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 3
  %52 = load i8*, i8** %next_free43, align 8
  %53 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base44 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 2
  store i8* %52, i8** %object_base44, align 8
  %54 = load i8*, i8** %value, align 8
  store i8* %54, i8** %tmp45
  %55 = load i8*, i8** %tmp45
  store i8* %55, i8** %tmp
  %56 = load i8*, i8** %tmp
  %57 = bitcast i8* %56 to %struct.reg_set*
  store %struct.reg_set* %57, %struct.reg_set** %new_reg_info, align 8
  %58 = load i32, i32* @bytes_used, align 4
  %conv46 = sext i32 %58 to i64
  %add47 = add i64 %conv46, 16
  %conv48 = trunc i64 %add47 to i32
  store i32 %conv48, i32* @bytes_used, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %60 = load %struct.reg_set*, %struct.reg_set** %new_reg_info, align 8
  %insn49 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %60, i32 0, i32 1
  store %struct.rtx_def* %59, %struct.rtx_def** %insn49, align 8
  %61 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %61 to i64
  %62 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %62, i64 %idxprom
  %63 = load %struct.reg_set*, %struct.reg_set** %arrayidx, align 8
  %64 = load %struct.reg_set*, %struct.reg_set** %new_reg_info, align 8
  %next = getelementptr inbounds %struct.reg_set, %struct.reg_set* %64, i32 0, i32 0
  store %struct.reg_set* %63, %struct.reg_set** %next, align 8
  %65 = load %struct.reg_set*, %struct.reg_set** %new_reg_info, align 8
  %66 = load i32, i32* %regno.addr, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx51 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %67, i64 %idxprom50
  store %struct.reg_set* %65, %struct.reg_set** %arrayidx51, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @grealloc(i8* %ptr, i32 %size) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %conv = zext i32 %1 to i64
  %call = call i8* @xrealloc(i8* %0, i64 %conv)
  ret i8* %call
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @clear_modify_mem_tables() #0 {
entry:
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_32 = alloca %struct.bitmap_element_def*, align 8
  %indx_34 = alloca i32, align 4
  %bit_num_35 = alloca i32, align 4
  %word_num_36 = alloca i32, align 4
  %word_58 = alloca i64, align 8
  %mask_67 = alloca i64, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx3, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp5 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp5, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.25, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp7 = icmp ult i32 %14, 2
  br i1 %cmp7, label %for.body.8, label %for.end.27

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp9 = icmp ne i64 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %for.body.8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %19 = load i32, i32* %bit_num_, align 4
  %cmp12 = icmp ult i32 %19, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %for.body.13
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and16 = and i64 %24, %neg
  store i64 %and16, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx17, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul18 = mul i32 %27, 64
  %add = add i32 %mul, %mul18
  %28 = load i32, i32* %bit_num_, align 4
  %add19 = add i32 %add, %28
  store i32 %add19, i32* %i, align 4
  %29 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %30 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %29, i64 %idx.ext
  call void @free_INSN_LIST_list(%struct.rtx_def** %add.ptr)
  %31 = load i64, i64* %word_, align 8
  %cmp20 = icmp eq i64 %31, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  br label %for.end

if.end.22:                                        ; preds = %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %32 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.21, %for.cond.11
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %for.body.8
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %33 = load i32, i32* %word_num_, align 4
  %inc26 = add i32 %33, 1
  store i32 %inc26, i32* %word_num_, align 4
  br label %for.cond.6

for.end.27:                                       ; preds = %for.cond.6
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %34 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %34, i32 0, i32 0
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next29, align 8
  store %struct.bitmap_element_def* %35, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.30
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %36)
  br label %do.body.31

do.body.31:                                       ; preds = %do.end
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  %first33 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_32, align 8
  store i32 0, i32* %indx_34, align 4
  store i32 0, i32* %bit_num_35, align 4
  store i32 0, i32* %word_num_36, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.43, %do.body.31
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %cmp38 = icmp ne %struct.bitmap_element_def* %39, null
  br i1 %cmp38, label %land.rhs.39, label %land.end.42

land.rhs.39:                                      ; preds = %while.cond.37
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %indx40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %40, i32 0, i32 2
  %41 = load i32, i32* %indx40, align 4
  %42 = load i32, i32* %indx_34, align 4
  %cmp41 = icmp ult i32 %41, %42
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.39, %while.cond.37
  %43 = phi i1 [ false, %while.cond.37 ], [ %cmp41, %land.rhs.39 ]
  br i1 %43, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %land.end.42
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %next44 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %44, i32 0, i32 0
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next44, align 8
  store %struct.bitmap_element_def* %45, %struct.bitmap_element_def** %ptr_32, align 8
  br label %while.cond.37

while.end.45:                                     ; preds = %land.end.42
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %cmp46 = icmp ne %struct.bitmap_element_def* %46, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %while.end.45
  %47 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %indx48 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %47, i32 0, i32 2
  %48 = load i32, i32* %indx48, align 4
  %49 = load i32, i32* %indx_34, align 4
  %cmp49 = icmp ne i32 %48, %49
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  store i32 0, i32* %bit_num_35, align 4
  store i32 0, i32* %word_num_36, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.47, %while.end.45
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.93, %if.end.51
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %cmp53 = icmp ne %struct.bitmap_element_def* %50, null
  br i1 %cmp53, label %for.body.54, label %for.end.95

for.body.54:                                      ; preds = %for.cond.52
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.90, %for.body.54
  %51 = load i32, i32* %word_num_36, align 4
  %cmp56 = icmp ult i32 %51, 2
  br i1 %cmp56, label %for.body.57, label %for.end.92

for.body.57:                                      ; preds = %for.cond.55
  %52 = load i32, i32* %word_num_36, align 4
  %idxprom59 = zext i32 %52 to i64
  %53 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %bits60 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %53, i32 0, i32 3
  %arrayidx61 = getelementptr inbounds [2 x i64], [2 x i64]* %bits60, i32 0, i64 %idxprom59
  %54 = load i64, i64* %arrayidx61, align 8
  store i64 %54, i64* %word_58, align 8
  %55 = load i64, i64* %word_58, align 8
  %cmp62 = icmp ne i64 %55, 0
  br i1 %cmp62, label %if.then.63, label %if.end.89

if.then.63:                                       ; preds = %for.body.57
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.86, %if.then.63
  %56 = load i32, i32* %bit_num_35, align 4
  %cmp65 = icmp ult i32 %56, 64
  br i1 %cmp65, label %for.body.66, label %for.end.88

for.body.66:                                      ; preds = %for.cond.64
  %57 = load i32, i32* %bit_num_35, align 4
  %sh_prom68 = zext i32 %57 to i64
  %shl69 = shl i64 1, %sh_prom68
  store i64 %shl69, i64* %mask_67, align 8
  %58 = load i64, i64* %word_58, align 8
  %59 = load i64, i64* %mask_67, align 8
  %and70 = and i64 %58, %59
  %cmp71 = icmp ne i64 %and70, 0
  br i1 %cmp71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %for.body.66
  %60 = load i64, i64* %mask_67, align 8
  %neg73 = xor i64 %60, -1
  %61 = load i64, i64* %word_58, align 8
  %and74 = and i64 %61, %neg73
  store i64 %and74, i64* %word_58, align 8
  %62 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %indx75 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %62, i32 0, i32 2
  %63 = load i32, i32* %indx75, align 4
  %mul76 = mul i32 %63, 128
  %64 = load i32, i32* %word_num_36, align 4
  %mul77 = mul i32 %64, 64
  %add78 = add i32 %mul76, %mul77
  %65 = load i32, i32* %bit_num_35, align 4
  %add79 = add i32 %add78, %65
  store i32 %add79, i32* %i, align 4
  %66 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %67 = load i32, i32* %i, align 4
  %idx.ext80 = sext i32 %67 to i64
  %add.ptr81 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %66, i64 %idx.ext80
  call void @free_insn_expr_list_list(%struct.rtx_def** %add.ptr81)
  %68 = load i64, i64* %word_58, align 8
  %cmp82 = icmp eq i64 %68, 0
  br i1 %cmp82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.72
  br label %for.end.88

if.end.84:                                        ; preds = %if.then.72
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body.66
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %69 = load i32, i32* %bit_num_35, align 4
  %inc87 = add i32 %69, 1
  store i32 %inc87, i32* %bit_num_35, align 4
  br label %for.cond.64

for.end.88:                                       ; preds = %if.then.83, %for.cond.64
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %for.body.57
  store i32 0, i32* %bit_num_35, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %70 = load i32, i32* %word_num_36, align 4
  %inc91 = add i32 %70, 1
  store i32 %inc91, i32* %word_num_36, align 4
  br label %for.cond.55

for.end.92:                                       ; preds = %for.cond.55
  store i32 0, i32* %word_num_36, align 4
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_32, align 8
  %next94 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %71, i32 0, i32 0
  %72 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next94, align 8
  store %struct.bitmap_element_def* %72, %struct.bitmap_element_def** %ptr_32, align 8
  br label %for.cond.52

for.end.95:                                       ; preds = %for.cond.52
  br label %do.end.96

do.end.96:                                        ; preds = %for.end.95
  %73 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %73)
  ret void
}

declare void @free_INSN_LIST_list(%struct.rtx_def**) #1

; Function Attrs: nounwind uwtable
define internal void @free_insn_expr_list_list(%struct.rtx_def** %listp) #0 {
entry:
  %listp.addr = alloca %struct.rtx_def**, align 8
  %list = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  call void @free_EXPR_LIST_node(%struct.rtx_def* %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  call void @free_INSN_LIST_node(%struct.rtx_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %10, align 8
  ret void
}

declare void @free_EXPR_LIST_node(%struct.rtx_def*) #1

declare void @free_INSN_LIST_node(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @alloc_expr_hash_table(i32 %n_insns) #0 {
entry:
  %n_insns.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %n_insns, i32* %n_insns.addr, align 4
  %0 = load i32, i32* %n_insns.addr, align 4
  %div = udiv i32 %0, 2
  store i32 %div, i32* @expr_hash_table_size, align 4
  %1 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %1, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 11, i32* @expr_hash_table_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @expr_hash_table_size, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* @expr_hash_table_size, align 4
  %3 = load i32, i32* @expr_hash_table_size, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %call = call i8* @gmalloc(i32 %4)
  %5 = bitcast i8* %call to %struct.expr**
  store %struct.expr** %5, %struct.expr*** @expr_hash_table, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_rd_mem(i32 %n_blocks, i32 %n_insns) #0 {
entry:
  %n_blocks.addr = alloca i32, align 4
  %n_insns.addr = alloca i32, align 4
  store i32 %n_blocks, i32* %n_blocks.addr, align 4
  store i32 %n_insns, i32* %n_insns.addr, align 4
  %0 = load i32, i32* %n_blocks.addr, align 4
  %1 = load i32, i32* %n_insns.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @rd_kill, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_kill, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %2, i32 %3)
  %4 = load i32, i32* %n_blocks.addr, align 4
  %5 = load i32, i32* %n_insns.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @rd_gen, align 8
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_gen, align 8
  %7 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %6, i32 %7)
  %8 = load i32, i32* %n_blocks.addr, align 4
  %9 = load i32, i32* %n_insns.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %8, i32 %9)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %11 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %10, i32 %11)
  %12 = load i32, i32* %n_blocks.addr, align 4
  %13 = load i32, i32* %n_insns.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %13)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** @rd_out, align 8
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_out, align 8
  %15 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %14, i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_expr_hash_table() #0 {
entry:
  store i32 0, i32* @n_exprs, align 4
  %0 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %1 = bitcast %struct.expr** %0 to i8*
  %2 = load i32, i32* @expr_hash_table_size, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 1, i1 false)
  call void @compute_hash_table(i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_hash_table(%struct._IO_FILE* %file, i8* %name, %struct.expr** %table, i32 %table_size, i32 %total_size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %table.addr = alloca %struct.expr**, align 8
  %table_size.addr = alloca i32, align 4
  %total_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %flat_table = alloca %struct.expr**, align 8
  %hash_val = alloca i32*, align 8
  %expr = alloca %struct.expr*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.expr** %table, %struct.expr*** %table.addr, align 8
  store i32 %table_size, i32* %table_size.addr, align 4
  store i32 %total_size, i32* %total_size.addr, align 4
  %0 = load i32, i32* %total_size.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %1 = bitcast i8* %call to %struct.expr**
  store %struct.expr** %1, %struct.expr*** %flat_table, align 8
  %2 = load i32, i32* %total_size.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul = mul i64 %conv1, 4
  %call2 = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** %hash_val, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %table_size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.expr**, %struct.expr*** %table.addr, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %7, i64 %idxprom
  %8 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %8, %struct.expr** %expr, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp5 = icmp ne %struct.expr* %9, null
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load %struct.expr*, %struct.expr** %expr, align 8
  %11 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 1
  %12 = load i32, i32* %bitmap_index, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.expr**, %struct.expr*** %flat_table, align 8
  %arrayidx9 = getelementptr inbounds %struct.expr*, %struct.expr** %13, i64 %idxprom8
  store %struct.expr* %10, %struct.expr** %arrayidx9, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index10 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 1
  %16 = load i32, i32* %bitmap_index10, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i32*, i32** %hash_val, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  store i32 %14, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %18 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 2
  %19 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %19, %struct.expr** %expr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %23 = load i32, i32* %table_size.addr, align 4
  %24 = load i32, i32* %total_size.addr, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i8* %22, i32 %23, i32 %24)
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.32, %for.end.14
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %total_size.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body.19, label %for.end.34

for.body.19:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.expr**, %struct.expr*** %flat_table, align 8
  %arrayidx21 = getelementptr inbounds %struct.expr*, %struct.expr** %28, i64 %idxprom20
  %29 = load %struct.expr*, %struct.expr** %arrayidx21, align 8
  %cmp22 = icmp ne %struct.expr* %29, null
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.19
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.expr**, %struct.expr*** %flat_table, align 8
  %arrayidx25 = getelementptr inbounds %struct.expr*, %struct.expr** %31, i64 %idxprom24
  %32 = load %struct.expr*, %struct.expr** %arrayidx25, align 8
  store %struct.expr* %32, %struct.expr** %expr, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %34 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index26 = getelementptr inbounds %struct.expr, %struct.expr* %34, i32 0, i32 1
  %35 = load i32, i32* %bitmap_index26, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i32*, i32** %hash_val, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 %35, i32 %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %40 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr30 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 0
  %41 = load %struct.rtx_def*, %struct.rtx_def** %expr30, align 8
  call void @print_rtl(%struct._IO_FILE* %39, %struct.rtx_def* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.19
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.16

for.end.34:                                       ; preds = %for.cond.16
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %45 = load %struct.expr**, %struct.expr*** %flat_table, align 8
  %46 = bitcast %struct.expr** %45 to i8*
  call void @free(i8* %46) #2
  %47 = load i32*, i32** %hash_val, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_kill_rd() #0 {
entry:
  %bb = alloca i32, align 4
  %cuid = alloca i32, align 4
  %regno = alloca i32, align 4
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %cuid, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.95, %for.body
  %2 = load i32, i32* %cuid, align 4
  %3 = load i32, i32* @max_cuid, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.97

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %cuid, align 4
  %div = udiv i32 %4, 64
  %idxprom = zext i32 %div to i64
  %5 = load i32, i32* %bb, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_gen, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom4
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx5, align 8
  %9 = load i32, i32* %cuid, align 4
  %rem = urem i32 %9, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %8, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.94

if.then:                                          ; preds = %for.body.3
  %10 = load i32, i32* %cuid, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.rtx_def**, %struct.rtx_def*** @cuid_insn, align 8
  %arrayidx7 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %11, i64 %idxprom6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %pat, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp9 = icmp eq i32 %bf.clear, 34
  br i1 %cmp9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %if.then
  store i32 0, i32* %regno, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %17 = load i32, i32* %regno, align 4
  %cmp12 = icmp ult i32 %17, 53
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %18 = load i64, i64* @regs_invalidated_by_call, align 8
  %19 = load i32, i32* %regno, align 4
  %sh_prom14 = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom14
  %and15 = and i64 %18, %shl
  %tobool16 = icmp ne i64 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %for.body.13
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = load i32, i32* %regno, align 4
  %22 = load i32, i32* %bb, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %bb19 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb19, i32 0, i64 %idxprom18
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8
  call void @handle_rd_kill_set(%struct.rtx_def* %20, i32 %21, %struct.basic_block_def* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %regno, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.then
  %26 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load22 = load i32, i32* %27, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 39
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 0
  %30 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %30, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.69, %if.then.25
  %31 = load i32, i32* %i, align 4
  %cmp29 = icmp sge i32 %31, 0
  br i1 %cmp29, label %for.body.30, label %for.end.70

for.body.30:                                      ; preds = %for.cond.28
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom31
  %35 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx35, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load36 = load i32, i32* %36, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  store i32 %bf.clear37, i32* %code, align 4
  %37 = load i32, i32* %code, align 4
  %cmp38 = icmp eq i32 %37, 47
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.30
  %38 = load i32, i32* %code, align 4
  %cmp39 = icmp eq i32 %38, 49
  br i1 %cmp39, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body.30
  %39 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtvec43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec43, align 8
  %elem44 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem44, i32 0, i64 %idxprom40
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load49 = load i32, i32* %44, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 61
  br i1 %cmp51, label %if.then.52, label %if.end.68

if.then.52:                                       ; preds = %land.lhs.true
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtvec56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtvec_def**
  %48 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec56, align 8
  %elem57 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem57, i32 0, i64 %idxprom53
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %51 = load i32, i32* %rtuint, align 4
  %52 = load i32, i32* %bb, align 4
  %idxprom64 = sext i32 %52 to i64
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data65 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %53, i32 0, i32 4
  %bb66 = bitcast %union.varray_data_tag* %data65 to [1 x %struct.basic_block_def*]*
  %arrayidx67 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb66, i32 0, i64 %idxprom64
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx67, align 8
  call void @handle_rd_kill_set(%struct.rtx_def* %45, i32 %51, %struct.basic_block_def* %54)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.52, %land.lhs.true, %lor.lhs.false
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.28

for.end.70:                                       ; preds = %for.cond.28
  br label %if.end.93

if.else:                                          ; preds = %if.end.21
  %56 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load71 = load i32, i32* %57, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 47
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.92

land.lhs.true.74:                                 ; preds = %if.else
  %58 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load78 = load i32, i32* %60, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 61
  br i1 %cmp80, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %land.lhs.true.74
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtuint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %64 = load i32, i32* %rtuint87, align 4
  %65 = load i32, i32* %bb, align 4
  %idxprom88 = sext i32 %65 to i64
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data89 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %bb90 = bitcast %union.varray_data_tag* %data89 to [1 x %struct.basic_block_def*]*
  %arrayidx91 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb90, i32 0, i64 %idxprom88
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx91, align 8
  call void @handle_rd_kill_set(%struct.rtx_def* %61, i32 %64, %struct.basic_block_def* %67)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.81, %land.lhs.true.74, %if.else
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %for.end.70
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.body.3
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %68 = load i32, i32* %cuid, align 4
  %inc96 = add nsw i32 %68, 1
  store i32 %inc96, i32* %cuid, align 4
  br label %for.cond.1

for.end.97:                                       ; preds = %for.cond.1
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %69 = load i32, i32* %bb, align 4
  %inc99 = add nsw i32 %69, 1
  store i32 %inc99, i32* %bb, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_rd() #0 {
entry:
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %passes = alloca i32, align 4
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_out, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, i64 %idxprom
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %5 = load i32, i32* %bb, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_gen, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom1
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %passes, align 4
  store i32 1, i32* %changed, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.18, %for.end
  %9 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %bb, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.16, %while.body
  %10 = load i32, i32* %bb, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %bb, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %arrayidx7 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %13, i64 %idxprom6
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx7, align 8
  %15 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_out, align 8
  %16 = load i32, i32* %bb, align 4
  call void @sbitmap_union_of_preds(%struct.simple_bitmap_def* %14, %struct.simple_bitmap_def** %15, i32 %16)
  %17 = load i32, i32* %bb, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_out, align 8
  %arrayidx9 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %18, i64 %idxprom8
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx9, align 8
  %20 = load i32, i32* %bb, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_gen, align 8
  %arrayidx11 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %21, i64 %idxprom10
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx11, align 8
  %23 = load i32, i32* %bb, align 4
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %24, i64 %idxprom12
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8
  %26 = load i32, i32* %bb, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_kill, align 8
  %arrayidx15 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %27, i64 %idxprom14
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx15, align 8
  %call = call i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %19, %struct.simple_bitmap_def* %22, %struct.simple_bitmap_def* %25, %struct.simple_bitmap_def* %28)
  %29 = load i32, i32* %changed, align 4
  %or = or i32 %29, %call
  store i32 %or, i32* %changed, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.5
  %30 = load i32, i32* %bb, align 4
  %inc17 = add nsw i32 %30, 1
  store i32 %inc17, i32* %bb, align 4
  br label %for.cond.3

for.end.18:                                       ; preds = %for.cond.3
  %31 = load i32, i32* %passes, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, i32* %passes, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool20 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %34 = load i32, i32* %passes, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i32 %34)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_avail_expr_mem(i32 %n_blocks, i32 %n_exprs) #0 {
entry:
  %n_blocks.addr = alloca i32, align 4
  %n_exprs.addr = alloca i32, align 4
  store i32 %n_blocks, i32* %n_blocks.addr, align 4
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  %0 = load i32, i32* %n_blocks.addr, align 4
  %1 = load i32, i32* %n_exprs.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @ae_kill, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %2, i32 %3)
  %4 = load i32, i32* %n_blocks.addr, align 4
  %5 = load i32, i32* %n_exprs.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @ae_gen, align 8
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %7 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %6, i32 %7)
  %8 = load i32, i32* %n_blocks.addr, align 4
  %9 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %8, i32 %9)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @ae_in, align 8
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  %11 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %10, i32 %11)
  %12 = load i32, i32* %n_blocks.addr, align 4
  %13 = load i32, i32* %n_exprs.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %13)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** @ae_out, align 8
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_out, align 8
  %15 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %14, i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_ae_gen() #0 {
entry:
  %i = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  %occr = alloca %struct.occr*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %3, i64 %idxprom
  %4 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %4, %struct.expr** %expr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.15, %for.body
  %5 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp2 = icmp ne %struct.expr* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end.16

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.expr*, %struct.expr** %expr, align 8
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %6, i32 0, i32 4
  %7 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  store %struct.occr* %7, %struct.occr** %occr, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %8 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp5 = icmp ne %struct.occr* %8, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 1
  %10 = load i32, i32* %bitmap_index, align 4
  %rem = urem i32 %10, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %11 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index7 = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 1
  %12 = load i32, i32* %bitmap_index7, align 4
  %div = udiv i32 %12, 64
  %idxprom8 = zext i32 %div to i64
  %13 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn = getelementptr inbounds %struct.occr, %struct.occr* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %15 = load i32, i32* %rtint, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom10
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  %add = add nsw i32 %18, 0
  %idxprom12 = sext i32 %add to i64
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %19, i64 %idxprom12
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom8
  %21 = load i64, i64* %arrayidx14, align 8
  %or = or i64 %21, %shl
  store i64 %or, i64* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %22 = load %struct.occr*, %struct.occr** %occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %22, i32 0, i32 0
  %23 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %23, %struct.occr** %occr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %24 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %24, i32 0, i32 2
  %25 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %25, %struct.expr** %expr, align 8
  br label %for.cond.1

for.end.16:                                       ; preds = %for.cond.1
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_ae_kill(%struct.simple_bitmap_def** %ae_gen, %struct.simple_bitmap_def** %ae_kill) #0 {
entry:
  %ae_gen.addr = alloca %struct.simple_bitmap_def**, align 8
  %ae_kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb = alloca i32, align 4
  %i = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  store %struct.simple_bitmap_def** %ae_gen, %struct.simple_bitmap_def*** %ae_gen.addr, align 8
  store %struct.simple_bitmap_def** %ae_kill, %struct.simple_bitmap_def*** %ae_kill.addr, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.29, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @expr_hash_table_size, align 4
  %cmp2 = icmp ult i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.30

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %5, i64 %idxprom
  %6 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %6, %struct.expr** %expr, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %7 = load %struct.expr*, %struct.expr** %expr, align 8
  %tobool = icmp ne %struct.expr* %7, null
  br i1 %tobool, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %8 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 1
  %9 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %9, 64
  %idxprom6 = zext i32 %div to i64
  %10 = load i32, i32* %bb, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %ae_gen.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %11, i64 %idxprom7
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %12, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom6
  %13 = load i64, i64* %arrayidx9, align 8
  %14 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index10 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  %15 = load i32, i32* %bitmap_index10, align 4
  %rem = urem i32 %15, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %13, %sh_prom
  %and = and i64 %shr, 1
  %tobool11 = icmp ne i64 %and, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %for.inc

if.end:                                           ; preds = %for.body.5
  %16 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr12 = getelementptr inbounds %struct.expr, %struct.expr* %16, i32 0, i32 0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %expr12, align 8
  %18 = load i32, i32* %bb, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb14 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx15 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb14, i32 0, i64 %idxprom13
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx15, align 8
  %call = call i32 @expr_killed_p(%struct.rtx_def* %17, %struct.basic_block_def* %20)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %if.end
  %21 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index18 = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 1
  %22 = load i32, i32* %bitmap_index18, align 4
  %rem19 = urem i32 %22, 64
  %sh_prom20 = zext i32 %rem19 to i64
  %shl = shl i64 1, %sh_prom20
  %23 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index21 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 1
  %24 = load i32, i32* %bitmap_index21, align 4
  %div22 = udiv i32 %24, 64
  %idxprom23 = zext i32 %div22 to i64
  %25 = load i32, i32* %bb, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %ae_kill.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %26, i64 %idxprom24
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx25, align 8
  %elms26 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %27, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [1 x i64], [1 x i64]* %elms26, i32 0, i64 %idxprom23
  %28 = load i64, i64* %arrayidx27, align 8
  %or = or i64 %28, %shl
  store i64 %or, i64* %arrayidx27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.17, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28, %if.then
  %29 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 2
  %30 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %30, %struct.expr** %expr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end.30:                                       ; preds = %for.cond.1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %32 = load i32, i32* %bb, align 4
  %inc32 = add nsw i32 %32, 1
  store i32 %inc32, i32* %bb, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

declare void @compute_available(%struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**) #1

; Function Attrs: nounwind uwtable
define internal i32 @classic_gcse() #0 {
entry:
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %expr = alloca %struct.expr*, align 8
  store i32 0, i32* %changed, align 4
  store i32 1, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  call void @reset_opr_set_tables()
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp3 = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load i32, i32* %bb, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp9 = icmp ne %struct.rtx_def* %7, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp9, %land.rhs ]
  br i1 %13, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %land.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp11 = icmp eq i32 %bf.clear, 32
  br i1 %cmp11, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.body.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load15 = load i32, i32* %18, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 47
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.59

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load25 = load i32, i32* %22, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 61
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.59

land.lhs.true.28:                                 ; preds = %land.lhs.true.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %26 = load i32, i32* %rtuint, align 4
  %cmp37 = icmp uge i32 %26, 53
  br i1 %cmp37, label %if.then, label %if.end.59

if.then:                                          ; preds = %land.lhs.true.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %pat, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %src, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call = call i32 @want_to_gcse_p(%struct.rtx_def* %31)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.44, label %if.end

land.lhs.true.44:                                 ; preds = %if.then
  %32 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call45 = call %struct.expr* @lookup_expr(%struct.rtx_def* %32)
  store %struct.expr* %call45, %struct.expr** %expr, align 8
  %cmp46 = icmp ne %struct.expr* %call45, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %33 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 1
  %34 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %34, 64
  %idxprom48 = zext i32 %div to i64
  %35 = load i32, i32* %bb, align 4
  %idxprom49 = sext i32 %35 to i64
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  %arrayidx50 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %36, i64 %idxprom49
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx50, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %37, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom48
  %38 = load i64, i64* %arrayidx51, align 8
  %39 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index52 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 1
  %40 = load i32, i32* %bitmap_index52, align 4
  %rem = urem i32 %40, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %38, %sh_prom
  %and = and i64 %shr, 1
  %tobool53 = icmp ne i64 %and, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end

land.lhs.true.54:                                 ; preds = %land.lhs.true.47
  %41 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call55 = call i32 @oprs_not_set_p(%struct.rtx_def* %41, %struct.rtx_def* %42)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %land.lhs.true.54
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %44 = load %struct.expr*, %struct.expr** %expr, align 8
  %call58 = call i32 @handle_avail_expr(%struct.rtx_def* %43, %struct.expr* %44)
  %45 = load i32, i32* %changed, align 4
  %or = or i32 %45, %call58
  store i32 %or, i32* %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.57, %land.lhs.true.54, %land.lhs.true.47, %land.lhs.true.44, %if.then
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %land.lhs.true.28, %land.lhs.true.18, %land.lhs.true, %for.body.10
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load60 = load i32, i32* %47, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %idxprom62 = sext i32 %bf.clear61 to i64
  %arrayidx63 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom62
  %48 = load i8, i8* %arrayidx63, align 1
  %conv = sext i8 %48 to i32
  %cmp64 = icmp eq i32 %conv, 105
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.59
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_oprs_set(%struct.rtx_def* %49)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 2
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end
  %52 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %53 = load i32, i32* %changed, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @free_avail_expr_mem() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*
  call void @free(i8* %3) #2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  %5 = bitcast %struct.simple_bitmap_def** %4 to i8*
  call void @free(i8* %5) #2
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_out, align 8
  %7 = bitcast %struct.simple_bitmap_def** %6 to i8*
  call void @free(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_rd_mem() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_kill, align 8
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_gen, align 8
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*
  call void @free(i8* %3) #2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %5 = bitcast %struct.simple_bitmap_def** %4 to i8*
  call void @free(i8* %5) #2
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_out, align 8
  %7 = bitcast %struct.simple_bitmap_def** %6 to i8*
  call void @free(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_expr_hash_table() #0 {
entry:
  %0 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %1 = bitcast %struct.expr** %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_hash_table(i32 %set_p) #0 {
entry:
  %set_p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %in_libcall_block = alloca i32, align 4
  %clobbers_all = alloca i8, align 1
  store i32 %set_p, i32* %set_p.addr, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %0, i32 %1)
  call void @clear_modify_mem_tables()
  %2 = load i32, i32* @max_gcse_regno, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 12
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @gmalloc(i32 %conv1)
  %3 = bitcast i8* %call to %struct.reg_avail_info*
  store %struct.reg_avail_info* %3, %struct.reg_avail_info** @reg_avail_info, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @max_gcse_regno, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.reg_avail_info*, %struct.reg_avail_info** @reg_avail_info, align 8
  %arrayidx = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %7, i64 %idxprom
  %last_bb = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %last_bb, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @current_bb, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.98, %for.end
  %9 = load i32, i32* @current_bb, align 4
  %10 = load i32, i32* @n_basic_blocks, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.6, label %for.end.100

for.body.6:                                       ; preds = %for.cond.3
  %11 = load i32, i32* @current_bb, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx8 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom7
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx8, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.44, %for.body.6
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load i32, i32* @current_bb, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb12 = bitcast %union.varray_data_tag* %data11 to [1 x %struct.basic_block_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb12, i32 0, i64 %idxprom10
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx13, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp15 = icmp ne %struct.rtx_def* %16, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %22 = phi i1 [ false, %for.cond.9 ], [ %cmp15, %land.rhs ]
  br i1 %22, label %for.body.17, label %for.end.48

for.body.17:                                      ; preds = %land.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom18 = sext i32 %bf.clear to i64
  %arrayidx19 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom18
  %25 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %25 to i32
  %cmp21 = icmp eq i32 %conv20, 105
  br i1 %cmp21, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.17
  br label %for.inc.44

if.end:                                           ; preds = %for.body.17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load23 = load i32, i32* %27, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 34
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %if.end
  store i8 0, i8* %clobbers_all, align 1
  store i32 0, i32* %regno, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %if.then.27
  %28 = load i32, i32* %regno, align 4
  %cmp29 = icmp ult i32 %28, 53
  br i1 %cmp29, label %for.body.31, label %for.end.39

for.body.31:                                      ; preds = %for.cond.28
  %29 = load i8, i8* %clobbers_all, align 1
  %tobool32 = trunc i8 %29 to i1
  br i1 %tobool32, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.31
  %30 = load i64, i64* @regs_invalidated_by_call, align 8
  %31 = load i32, i32* %regno, align 4
  %sh_prom = zext i32 %31 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %30, %shl
  %tobool34 = icmp ne i64 %and, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %for.body.31
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = load i32, i32* %regno, align 4
  call void @record_last_reg_set_info(%struct.rtx_def* %32, i32 %33)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %lor.lhs.false
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %34 = load i32, i32* %regno, align 4
  %inc38 = add i32 %34, 1
  store i32 %inc38, i32* %regno, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_call(%struct.rtx_def* %35)
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %if.end
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = bitcast %struct.rtx_def* %38 to i8*
  call void @note_stores(%struct.rtx_def* %37, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @record_last_set_info, i8* %39)
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.40, %if.then
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 2
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn, align 8
  br label %for.cond.9

for.end.48:                                       ; preds = %land.end
  %42 = load i32, i32* @current_bb, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data50 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %bb51 = bitcast %union.varray_data_tag* %data50 to [1 x %struct.basic_block_def*]*
  %arrayidx52 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb51, i32 0, i64 %idxprom49
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx52, align 8
  %head53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 0
  %45 = load %struct.rtx_def*, %struct.rtx_def** %head53, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %in_libcall_block, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.93, %for.end.48
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool55 = icmp ne %struct.rtx_def* %46, null
  br i1 %tobool55, label %land.rhs.56, label %land.end.67

land.rhs.56:                                      ; preds = %for.cond.54
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %48 = load i32, i32* @current_bb, align 4
  %idxprom57 = sext i32 %48 to i64
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data58 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %bb59 = bitcast %union.varray_data_tag* %data58 to [1 x %struct.basic_block_def*]*
  %arrayidx60 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb59, i32 0, i64 %idxprom57
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx60, align 8
  %end61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 1
  %51 = load %struct.rtx_def*, %struct.rtx_def** %end61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 2
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %cmp65 = icmp ne %struct.rtx_def* %47, %52
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.56, %for.cond.54
  %53 = phi i1 [ false, %for.cond.54 ], [ %cmp65, %land.rhs.56 ]
  br i1 %53, label %for.body.68, label %for.end.97

for.body.68:                                      ; preds = %land.end.67
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load69 = load i32, i32* %55, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %idxprom71 = sext i32 %bf.clear70 to i64
  %arrayidx72 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom71
  %56 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %56 to i32
  %cmp74 = icmp eq i32 %conv73, 105
  br i1 %cmp74, label %if.then.76, label %if.end.92

if.then.76:                                       ; preds = %for.body.68
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call77 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %57, i32 7, %struct.rtx_def* null)
  %tobool78 = icmp ne %struct.rtx_def* %call77, null
  br i1 %tobool78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %if.then.76
  store i32 1, i32* %in_libcall_block, align 4
  br label %if.end.85

if.else:                                          ; preds = %if.then.76
  %58 = load i32, i32* %set_p.addr, align 4
  %tobool80 = icmp ne i32 %58, 0
  br i1 %tobool80, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.else
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call81 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %59, i32 6, %struct.rtx_def* null)
  %tobool82 = icmp ne %struct.rtx_def* %call81, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true
  store i32 0, i32* %in_libcall_block, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %land.lhs.true, %if.else
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.79
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %61 = load i32, i32* %set_p.addr, align 4
  %62 = load i32, i32* %in_libcall_block, align 4
  call void @hash_scan_insn(%struct.rtx_def* %60, i32 %61, i32 %62)
  %63 = load i32, i32* %set_p.addr, align 4
  %tobool86 = icmp ne i32 %63, 0
  br i1 %tobool86, label %if.end.91, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %if.end.85
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call88 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %64, i32 6, %struct.rtx_def* null)
  %tobool89 = icmp ne %struct.rtx_def* %call88, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.87
  store i32 0, i32* %in_libcall_block, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true.87, %if.end.85
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.body.68
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 2
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %insn, align 8
  br label %for.cond.54

for.end.97:                                       ; preds = %land.end.67
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %67 = load i32, i32* @current_bb, align 4
  %inc99 = add nsw i32 %67, 1
  store i32 %inc99, i32* @current_bb, align 4
  br label %for.cond.3

for.end.100:                                      ; preds = %for.cond.3
  %68 = load %struct.reg_avail_info*, %struct.reg_avail_info** @reg_avail_info, align 8
  %69 = bitcast %struct.reg_avail_info* %68 to i8*
  call void @free(i8* %69) #2
  store %struct.reg_avail_info* null, %struct.reg_avail_info** @reg_avail_info, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_last_reg_set_info(%struct.rtx_def* %insn, i32 %regno) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %info = alloca %struct.reg_avail_info*, align 8
  %cuid = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.reg_avail_info*, %struct.reg_avail_info** @reg_avail_info, align 8
  %arrayidx = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %1, i64 %idxprom
  store %struct.reg_avail_info* %arrayidx, %struct.reg_avail_info** %info, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %3 = load i32, i32* %rtint, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load i32*, i32** @uid_cuid, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %cuid, align 4
  %6 = load i32, i32* %cuid, align 4
  %7 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %last_set = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %7, i32 0, i32 2
  store i32 %6, i32* %last_set, align 4
  %8 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %last_bb = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %8, i32 0, i32 0
  %9 = load i32, i32* %last_bb, align 4
  %10 = load i32, i32* @current_bb, align 4
  %cmp = icmp ne i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* @current_bb, align 4
  %12 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %last_bb4 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %12, i32 0, i32 0
  store i32 %11, i32* %last_bb4, align 4
  %13 = load i32, i32* %cuid, align 4
  %14 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %first_set = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %14, i32 0, i32 1
  store i32 %13, i32* %first_set, align 4
  %15 = load i32, i32* %regno.addr, align 4
  %rem = urem i32 %15, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %16 = load i32, i32* %regno.addr, align 4
  %div = udiv i32 %16, 64
  %idxprom5 = zext i32 %div to i64
  %17 = load i32, i32* @current_bb, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %arrayidx7 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %18, i64 %idxprom6
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx7, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom5
  %20 = load i64, i64* %arrayidx8, align 8
  %or = or i64 %20, %shl
  store i64 %or, i64* %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_call(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @record_last_mem_set_info(%struct.rtx_def* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_last_set_info(%struct.rtx_def* %dest, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %last_set_insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def*
  store %struct.rtx_def* %1, %struct.rtx_def** %last_set_insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %dest.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %last_set_insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %10 = load i32, i32* %rtuint, align 4
  call void @record_last_reg_set_info(%struct.rtx_def* %8, i32 %10)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load7 = load i32, i32* %12, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 66
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load10 = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load10, 16
  %bf.clear11 = and i32 %bf.lshr, 255
  %call = call i32 @push_operand(%struct.rtx_def* %13, i32 %bf.clear11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %last_set_insn, align 8
  call void @record_last_mem_set_info(%struct.rtx_def* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @hash_scan_insn(%struct.rtx_def* %insn, i32 %set_p, i32 %in_libcall_block) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set_p.addr = alloca i32, align 4
  %in_libcall_block.addr = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %set_p, i32* %set_p.addr, align 4
  store i32 %in_libcall_block, i32* %in_libcall_block.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load i32, i32* %in_libcall_block.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.43

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = load i32, i32* %set_p.addr, align 4
  call void @hash_scan_set(%struct.rtx_def* %5, %struct.rtx_def* %6, i32 %7)
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load2 = load i32, i32* %9, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 39
  br i1 %cmp4, label %if.then.5, label %if.else.30

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtvec_def**
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i32 0, i32 0
  %13 = load i32, i32* %num_elem, align 4
  %cmp8 = icmp slt i32 %10, %13
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtvec11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtvec_def**
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec11, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %x, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load13 = load i32, i32* %19, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 47
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %for.body
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %22 = load i32, i32* %set_p.addr, align 4
  call void @hash_scan_set(%struct.rtx_def* %20, %struct.rtx_def* %21, i32 %22)
  br label %if.end.29

if.else.17:                                       ; preds = %for.body
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load18 = load i32, i32* %24, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 49
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @hash_scan_clobber(%struct.rtx_def* %25, %struct.rtx_def* %26)
  br label %if.end.28

if.else.22:                                       ; preds = %if.else.17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load23 = load i32, i32* %28, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 50
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else.22
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @hash_scan_call(%struct.rtx_def* %29, %struct.rtx_def* %30)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.else.30:                                       ; preds = %if.else
  %32 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load31 = load i32, i32* %33, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 49
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.30
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @hash_scan_clobber(%struct.rtx_def* %34, %struct.rtx_def* %35)
  br label %if.end.41

if.else.35:                                       ; preds = %if.else.30
  %36 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load36 = load i32, i32* %37, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 50
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else.35
  %38 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @hash_scan_call(%struct.rtx_def* %38, %struct.rtx_def* %39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.then, %if.end.42, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_last_mem_set_info(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx2, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %add = add nsw i32 %4, 0
  store i32 %add, i32* %bb, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 %idxprom3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %5, %struct.rtx_def* %8)
  %9 = load i32, i32* %bb, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %10, i64 %idxprom5
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx6, align 8
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @modify_mem_list_set, align 8
  %12 = load i32, i32* %bb, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load i32, i32* %bb, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %17, i64 %idxprom7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx8, align 8
  %call9 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %15, %struct.rtx_def* %18)
  %19 = load i32, i32* %bb, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx11 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %20, i64 %idxprom10
  store %struct.rtx_def* %call9, %struct.rtx_def** %arrayidx11, align 8
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  %22 = load i32, i32* %bb, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %21, i32 %22)
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i8*
  call void @note_stores(%struct.rtx_def* %24, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @canon_list_insert, i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @canon_list_insert(%struct.rtx_def* %dest, %struct.rtx_def* %unused1, i8* %v_insn) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %unused1.addr = alloca %struct.rtx_def*, align 8
  %v_insn.addr = alloca i8*, align 8
  %dest_addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %bb = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %unused1, %struct.rtx_def** %unused1.addr, align 8
  store i8* %v_insn, i8** %v_insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 133
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 132
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %while.cond
  %8 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp ne i32 %bf.clear12, 66
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %return

if.end:                                           ; preds = %while.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %call = call %struct.rtx_def* @get_addr(%struct.rtx_def* %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %dest_addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  %call17 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %15)
  store %struct.rtx_def* %call17, %struct.rtx_def** %dest_addr, align 8
  %16 = load i8*, i8** %v_insn.addr, align 8
  %17 = bitcast i8* %16 to %struct.rtx_def*
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %19 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %bb20 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx21 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb20, i32 0, i64 %idxprom
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx21, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index, align 4
  %add = add nsw i32 %22, 0
  store i32 %add, i32* %bb, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  %24 = load i32, i32* %bb, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx23 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %25, i64 %idxprom22
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8
  %call24 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %23, %struct.rtx_def* %26)
  %27 = load i32, i32* %bb, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx26 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %28, i64 %idxprom25
  store %struct.rtx_def* %call24, %struct.rtx_def** %arrayidx26, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %30 = load i32, i32* %bb, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx28 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %31, i64 %idxprom27
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  %call29 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %29, %struct.rtx_def* %32)
  %33 = load i32, i32* %bb, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx31 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %34, i64 %idxprom30
  store %struct.rtx_def* %call29, %struct.rtx_def** %arrayidx31, align 8
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @canon_modify_mem_list_set, align 8
  %36 = load i32, i32* %bb, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %35, i32 %36)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.rtx_def* @get_addr(%struct.rtx_def*) #1

declare %struct.rtx_def* @canon_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @push_operand(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @hash_scan_set(%struct.rtx_def* %pat, %struct.rtx_def* %insn, i32 %set_p) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set_p.addr = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  %antic_p = alloca i32, align 4
  %avail_p = alloca i32, align 4
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %set_p, i32* %set_p.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %src, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %dest, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 50
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @hash_scan_call(%struct.rtx_def* %6, %struct.rtx_def* %7)
  br label %if.end.234

if.else:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %if.then.7, label %if.end.233

if.then.7:                                        ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %11 = load i32, i32* %rtuint, align 4
  store i32 %11, i32* %regno, align 4
  %12 = load i32, i32* %set_p.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %13)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %cmp10 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load15 = load i32, i32* %16, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 67
  br i1 %cmp17, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load21 = load i32, i32* %19, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 68
  br i1 %cmp23, label %if.then.66, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load28 = load i32, i32* %22, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 54
  br i1 %cmp30, label %if.then.66, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load35 = load i32, i32* %25, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 55
  br i1 %cmp37, label %if.then.66, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.31
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load42 = load i32, i32* %28, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 58
  br i1 %cmp44, label %if.then.66, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.38
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load49 = load i32, i32* %31, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 134
  br i1 %cmp51, label %if.then.66, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.45
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load56 = load i32, i32* %34, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 56
  br i1 %cmp58, label %if.then.66, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.52
  %35 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load63 = load i32, i32* %37, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 140
  br i1 %cmp65, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.52, %lor.lhs.false.45, %lor.lhs.false.38, %lor.lhs.false.31, %lor.lhs.false.24, %lor.lhs.false, %land.lhs.true.11
  %38 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %src, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call70 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %40, %struct.rtx_def* %41)
  store %struct.rtx_def* %call70, %struct.rtx_def** %pat.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.66, %lor.lhs.false.59, %land.lhs.true, %if.then.7
  %42 = load i32, i32* %set_p.addr, align 4
  %tobool71 = icmp ne i32 %42, 0
  br i1 %tobool71, label %if.else.142, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %if.end
  %43 = load i32, i32* %regno, align 4
  %cmp73 = icmp uge i32 %43, 53
  br i1 %cmp73, label %land.lhs.true.74, label %if.else.142

land.lhs.true.74:                                 ; preds = %land.lhs.true.72
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load75 = load i32, i32* %45, align 8
  %bf.lshr = lshr i32 %bf.load75, 16
  %bf.clear76 = and i32 %bf.lshr, 255
  %idxprom = zext i32 %bf.clear76 to i64
  %arrayidx77 = getelementptr inbounds [59 x i8], [59 x i8]* @can_copy_p, i32 0, i64 %idxprom
  %46 = load i8, i8* %arrayidx77, align 1
  %conv = sext i8 %46 to i32
  %tobool78 = icmp ne i32 %conv, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.142

land.lhs.true.79:                                 ; preds = %land.lhs.true.74
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call80 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %47)
  br i1 %call80, label %if.else.142, label %land.lhs.true.81

land.lhs.true.81:                                 ; preds = %land.lhs.true.79
  %48 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call82 = call i32 @want_to_gcse_p(%struct.rtx_def* %48)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.else.142

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %49 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %call85 = call i32 @set_noop_p(%struct.rtx_def* %49)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else.142, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %land.lhs.true.84
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call88 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %50, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call88, %struct.rtx_def** %note, align 8
  %cmp89 = icmp eq %struct.rtx_def* %call88, null
  br i1 %cmp89, label %if.then.99, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.87
  %51 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load95 = load i32, i32* %53, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp ne i32 %bf.clear96, 66
  br i1 %cmp97, label %if.then.99, label %if.else.142

if.then.99:                                       ; preds = %lor.lhs.false.91, %land.lhs.true.87
  %54 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call101 = call i32 @oprs_anticipatable_p(%struct.rtx_def* %54, %struct.rtx_def* %55)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.99
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load103 = load i32, i32* %57, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %idxprom105 = sext i32 %bf.clear104 to i64
  %arrayidx106 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom105
  %58 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %58 to i32
  %cmp108 = icmp eq i32 %conv107, 105
  br i1 %cmp108, label %cond.true, label %cond.false.125

cond.true:                                        ; preds = %land.rhs
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 3
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load113 = load i32, i32* %61, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 47
  br i1 %cmp115, label %cond.true.117, label %cond.false

cond.true.117:                                    ; preds = %cond.true
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 3
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 3
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %call124 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %64, %struct.rtx_def* %66)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.117
  %cond = phi %struct.rtx_def* [ %63, %cond.true.117 ], [ %call124, %cond.false ]
  br label %cond.end.126

cond.false.125:                                   ; preds = %land.rhs
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.end
  %cond127 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.125 ]
  %tobool128 = icmp ne %struct.rtx_def* %cond127, null
  br label %land.end

land.end:                                         ; preds = %cond.end.126, %if.then.99
  %67 = phi i1 [ false, %if.then.99 ], [ %tobool128, %cond.end.126 ]
  %land.ext = zext i1 %67 to i32
  store i32 %land.ext, i32* %antic_p, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call130 = call i32 @oprs_available_p(%struct.rtx_def* %68, %struct.rtx_def* %69)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %land.rhs.132, label %land.end.137

land.rhs.132:                                     ; preds = %land.end
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load133 = load i32, i32* %71, align 8
  %bf.clear134 = and i32 %bf.load133, 65535
  %cmp135 = icmp eq i32 %bf.clear134, 33
  %lnot = xor i1 %cmp135, true
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.132, %land.end
  %72 = phi i1 [ false, %land.end ], [ %lnot, %land.rhs.132 ]
  %land.ext138 = zext i1 %72 to i32
  store i32 %land.ext138, i32* %avail_p, align 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load139 = load i32, i32* %75, align 8
  %bf.lshr140 = lshr i32 %bf.load139, 16
  %bf.clear141 = and i32 %bf.lshr140, 255
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %77 = load i32, i32* %antic_p, align 4
  %78 = load i32, i32* %avail_p, align 4
  call void @insert_expr_in_table(%struct.rtx_def* %73, i32 %bf.clear141, %struct.rtx_def* %76, i32 %77, i32 %78)
  br label %if.end.232

if.else.142:                                      ; preds = %lor.lhs.false.91, %land.lhs.true.84, %land.lhs.true.81, %land.lhs.true.79, %land.lhs.true.74, %land.lhs.true.72, %if.end
  %79 = load i32, i32* %set_p.addr, align 4
  %tobool143 = icmp ne i32 %79, 0
  br i1 %tobool143, label %land.lhs.true.144, label %if.end.231

land.lhs.true.144:                                ; preds = %if.else.142
  %80 = load i32, i32* %regno, align 4
  %cmp145 = icmp uge i32 %80, 53
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.231

land.lhs.true.147:                                ; preds = %land.lhs.true.144
  %81 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load148 = load i32, i32* %82, align 8
  %bf.clear149 = and i32 %bf.load148, 65535
  %cmp150 = icmp eq i32 %bf.clear149, 61
  br i1 %cmp150, label %land.lhs.true.152, label %lor.lhs.false.172

land.lhs.true.152:                                ; preds = %land.lhs.true.147
  %83 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtuint155 = bitcast %union.rtunion_def* %arrayidx154 to i32*
  %84 = load i32, i32* %rtuint155, align 4
  %cmp156 = icmp uge i32 %84, 53
  br i1 %cmp156, label %land.lhs.true.158, label %lor.lhs.false.172

land.lhs.true.158:                                ; preds = %land.lhs.true.152
  %85 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load159 = load i32, i32* %86, align 8
  %bf.lshr160 = lshr i32 %bf.load159, 16
  %bf.clear161 = and i32 %bf.lshr160, 255
  %idxprom162 = zext i32 %bf.clear161 to i64
  %arrayidx163 = getelementptr inbounds [59 x i8], [59 x i8]* @can_copy_p, i32 0, i64 %idxprom162
  %87 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %87 to i32
  %tobool165 = icmp ne i32 %conv164, 0
  br i1 %tobool165, label %land.lhs.true.166, label %lor.lhs.false.172

land.lhs.true.166:                                ; preds = %land.lhs.true.158
  %88 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtuint169 = bitcast %union.rtunion_def* %arrayidx168 to i32*
  %89 = load i32, i32* %rtuint169, align 4
  %90 = load i32, i32* %regno, align 4
  %cmp170 = icmp ne i32 %89, %90
  br i1 %cmp170, label %land.lhs.true.212, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %land.lhs.true.166, %land.lhs.true.158, %land.lhs.true.152, %land.lhs.true.147
  %91 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load173 = load i32, i32* %92, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp eq i32 %bf.clear174, 67
  br i1 %cmp175, label %land.lhs.true.212, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.172
  %93 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load178 = load i32, i32* %94, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp eq i32 %bf.clear179, 68
  br i1 %cmp180, label %land.lhs.true.212, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %lor.lhs.false.177
  %95 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load183 = load i32, i32* %96, align 8
  %bf.clear184 = and i32 %bf.load183, 65535
  %cmp185 = icmp eq i32 %bf.clear184, 54
  br i1 %cmp185, label %land.lhs.true.212, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %lor.lhs.false.182
  %97 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load188 = load i32, i32* %98, align 8
  %bf.clear189 = and i32 %bf.load188, 65535
  %cmp190 = icmp eq i32 %bf.clear189, 55
  br i1 %cmp190, label %land.lhs.true.212, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.lhs.false.187
  %99 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load193 = load i32, i32* %100, align 8
  %bf.clear194 = and i32 %bf.load193, 65535
  %cmp195 = icmp eq i32 %bf.clear194, 58
  br i1 %cmp195, label %land.lhs.true.212, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %lor.lhs.false.192
  %101 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load198 = load i32, i32* %102, align 8
  %bf.clear199 = and i32 %bf.load198, 65535
  %cmp200 = icmp eq i32 %bf.clear199, 134
  br i1 %cmp200, label %land.lhs.true.212, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.197
  %103 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load203 = load i32, i32* %104, align 8
  %bf.clear204 = and i32 %bf.load203, 65535
  %cmp205 = icmp eq i32 %bf.clear204, 56
  br i1 %cmp205, label %land.lhs.true.212, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %lor.lhs.false.202
  %105 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load208 = load i32, i32* %106, align 8
  %bf.clear209 = and i32 %bf.load208, 65535
  %cmp210 = icmp eq i32 %bf.clear209, 140
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.231

land.lhs.true.212:                                ; preds = %lor.lhs.false.207, %lor.lhs.false.202, %lor.lhs.false.197, %lor.lhs.false.192, %lor.lhs.false.187, %lor.lhs.false.182, %lor.lhs.false.177, %lor.lhs.false.172, %land.lhs.true.166
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx214 to i32*
  %109 = load i32, i32* %rtint, align 4
  %idxprom215 = sext i32 %109 to i64
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx216 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom215
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx216, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 11
  %112 = load i32, i32* %index, align 4
  %add = add nsw i32 %112, 0
  %idxprom217 = sext i32 %add to i64
  %113 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data218 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %113, i32 0, i32 4
  %bb219 = bitcast %union.varray_data_tag* %data218 to [1 x %struct.basic_block_def*]*
  %arrayidx220 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb219, i32 0, i64 %idxprom217
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx220, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %114, i32 0, i32 1
  %115 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp221 = icmp eq %struct.rtx_def* %107, %115
  br i1 %cmp221, label %if.then.230, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %land.lhs.true.212
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call224 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %116)
  store %struct.rtx_def* %call224, %struct.rtx_def** %tmp, align 8
  %cmp225 = icmp ne %struct.rtx_def* %call224, null
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.231

land.lhs.true.227:                                ; preds = %lor.lhs.false.223
  %117 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call228 = call i32 @oprs_available_p(%struct.rtx_def* %117, %struct.rtx_def* %118)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %land.lhs.true.227, %land.lhs.true.212
  %119 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @insert_set_in_table(%struct.rtx_def* %119, %struct.rtx_def* %120)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %land.lhs.true.227, %lor.lhs.false.223, %lor.lhs.false.207, %land.lhs.true.144, %if.else.142
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %land.end.137
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.else
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hash_scan_clobber(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hash_scan_call(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  ret void
}

declare %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @want_to_gcse_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %num_clobbers = alloca i32, align 4
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 0, i32* %num_clobbers, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 61, label %sw.bb
    i32 63, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 50, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %call = call i32 @general_operand(%struct.rtx_def* %2, i32 %bf.clear2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.epilog
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 16
  %bf.clear5 = and i32 %bf.lshr4, 255
  %cmp = icmp eq i32 %bf.clear5, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %cmp8 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.7
  %8 = load i32, i32* @word_mode, align 4
  %call10 = call %struct.rtx_def* @gen_rtx_REG(i32 %8, i32 106)
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call11 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %call10, %struct.rtx_def* %9)
  %call12 = call %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %call11)
  store %struct.rtx_def* %call12, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 2
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx15, align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** @want_to_gcse_p.test_insn, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %if.end.7
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %14 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load26 = load i32, i32* %17, align 8
  %bf.value = and i32 %bf.clear19, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear27 = and i32 %bf.load26, -16711681
  %bf.set = or i32 %bf.clear27, %bf.shl
  store i32 %bf.set, i32* %17, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  store %struct.rtx_def* %18, %struct.rtx_def** %rtx33, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** @want_to_gcse_p.test_insn, align 8
  %call37 = call i32 @recog(%struct.rtx_def* %22, %struct.rtx_def* %23, i32* %num_clobbers)
  store i32 %call37, i32* %icode, align 4
  %cmp38 = icmp sge i32 %call37, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.16
  %24 = load i32, i32* %num_clobbers, align 4
  %cmp39 = icmp eq i32 %24, 0
  br i1 %cmp39, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %25 = load i32, i32* %icode, align 4
  %call40 = call i32 @added_clobbers_hard_reg_p(i32 %25)
  %tobool41 = icmp ne i32 %call40, 0
  %lnot = xor i1 %tobool41, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %26 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.16
  %27 = phi i1 [ false, %if.end.16 ], [ %26, %lor.end ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.6, %if.then, %sw.bb
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @set_noop_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @oprs_anticipatable_p(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @oprs_unchanged_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 0)
  ret i32 %call
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @oprs_available_p(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @oprs_unchanged_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @insert_expr_in_table(%struct.rtx_def* %x, i32 %mode, %struct.rtx_def* %insn, i32 %antic_p, i32 %avail_p) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %antic_p.addr = alloca i32, align 4
  %avail_p.addr = alloca i32, align 4
  %found = alloca i32, align 4
  %do_not_record_p = alloca i32, align 4
  %hash = alloca i32, align 4
  %cur_expr = alloca %struct.expr*, align 8
  %last_expr = alloca %struct.expr*, align 8
  %antic_occr = alloca %struct.occr*, align 8
  %avail_occr = alloca %struct.occr*, align 8
  %last_occr = alloca %struct.occr*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %antic_p, i32* %antic_p.addr, align 4
  store i32 %avail_p, i32* %avail_p.addr, align 4
  store %struct.expr* null, %struct.expr** %last_expr, align 8
  store %struct.occr* null, %struct.occr** %last_occr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* @expr_hash_table_size, align 4
  %call = call i32 @hash_expr(%struct.rtx_def* %0, i32 %1, i32* %do_not_record_p, i32 %2)
  store i32 %call, i32* %hash, align 4
  %3 = load i32, i32* %do_not_record_p, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.115

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %5, i64 %idxprom
  %6 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %6, %struct.expr** %cur_expr, align 8
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %tobool1 = icmp ne %struct.expr* %7, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %expr = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call2 = call i32 @expr_equiv_p(%struct.rtx_def* %9, %struct.rtx_def* %10)
  store i32 %call2, i32* %found, align 4
  %cmp = icmp eq i32 0, %call2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  store %struct.expr* %12, %struct.expr** %last_expr, align 8
  %13 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 2
  %14 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %14, %struct.expr** %cur_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %found, align 4
  %tobool3 = icmp ne i32 %15, 0
  br i1 %tobool3, label %if.end.20, label %if.then.4

if.then.4:                                        ; preds = %while.end
  %call5 = call i8* @gcse_alloc(i64 48)
  %16 = bitcast i8* %call5 to %struct.expr*
  store %struct.expr* %16, %struct.expr** %cur_expr, align 8
  %17 = load i32, i32* @bytes_used, align 4
  %conv = sext i32 %17 to i64
  %add = add i64 %conv, 48
  %conv6 = trunc i64 %add to i32
  store i32 %conv6, i32* @bytes_used, align 4
  %18 = load i32, i32* %hash, align 4
  %idxprom7 = zext i32 %18 to i64
  %19 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx8 = getelementptr inbounds %struct.expr*, %struct.expr** %19, i64 %idxprom7
  %20 = load %struct.expr*, %struct.expr** %arrayidx8, align 8
  %cmp9 = icmp eq %struct.expr* %20, null
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.4
  %21 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %22 = load i32, i32* %hash, align 4
  %idxprom12 = zext i32 %22 to i64
  %23 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx13 = getelementptr inbounds %struct.expr*, %struct.expr** %23, i64 %idxprom12
  store %struct.expr* %21, %struct.expr** %arrayidx13, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.4
  %24 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %25 = load %struct.expr*, %struct.expr** %last_expr, align 8
  %next_same_hash14 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 2
  store %struct.expr* %24, %struct.expr** %next_same_hash14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %expr16 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 0
  store %struct.rtx_def* %26, %struct.rtx_def** %expr16, align 8
  %28 = load i32, i32* @n_exprs, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* @n_exprs, align 4
  %29 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 1
  store i32 %28, i32* %bitmap_index, align 4
  %30 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %next_same_hash17 = getelementptr inbounds %struct.expr, %struct.expr* %30, i32 0, i32 2
  store %struct.expr* null, %struct.expr** %next_same_hash17, align 8
  %31 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %antic_occr18 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 3
  store %struct.occr* null, %struct.occr** %antic_occr18, align 8
  %32 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr19 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 4
  store %struct.occr* null, %struct.occr** %avail_occr19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.15, %while.end
  %33 = load i32, i32* %antic_p.addr, align 4
  %tobool21 = icmp ne i32 %33, 0
  br i1 %tobool21, label %if.then.22, label %if.end.64

if.then.22:                                       ; preds = %if.end.20
  %34 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %antic_occr23 = getelementptr inbounds %struct.expr, %struct.expr* %34, i32 0, i32 3
  %35 = load %struct.occr*, %struct.occr** %antic_occr23, align 8
  store %struct.occr* %35, %struct.occr** %antic_occr, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.44, %if.then.22
  %36 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %tobool25 = icmp ne %struct.occr* %36, null
  br i1 %tobool25, label %land.rhs.26, label %land.end.43

land.rhs.26:                                      ; preds = %while.cond.24
  %37 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %insn27 = getelementptr inbounds %struct.occr, %struct.occr* %37, i32 0, i32 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn27, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %39 = load i32, i32* %rtint, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom29
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index, align 4
  %add31 = add nsw i32 %42, 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %44 = load i32, i32* %rtint34, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data36 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %45, i32 0, i32 4
  %bb37 = bitcast %union.varray_data_tag* %data36 to [1 x %struct.basic_block_def*]*
  %arrayidx38 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb37, i32 0, i64 %idxprom35
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx38, align 8
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 11
  %47 = load i32, i32* %index39, align 4
  %add40 = add nsw i32 %47, 0
  %cmp41 = icmp ne i32 %add31, %add40
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.26, %while.cond.24
  %48 = phi i1 [ false, %while.cond.24 ], [ %cmp41, %land.rhs.26 ]
  br i1 %48, label %while.body.44, label %while.end.45

while.body.44:                                    ; preds = %land.end.43
  %49 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %49, %struct.occr** %last_occr, align 8
  %50 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %50, i32 0, i32 0
  %51 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %51, %struct.occr** %antic_occr, align 8
  br label %while.cond.24

while.end.45:                                     ; preds = %land.end.43
  %52 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %tobool46 = icmp ne %struct.occr* %52, null
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %while.end.45
  br label %if.end.63

if.else.48:                                       ; preds = %while.end.45
  %call49 = call i8* @gcse_alloc(i64 24)
  %53 = bitcast i8* %call49 to %struct.occr*
  store %struct.occr* %53, %struct.occr** %antic_occr, align 8
  %54 = load i32, i32* @bytes_used, align 4
  %conv50 = sext i32 %54 to i64
  %add51 = add i64 %conv50, 24
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* @bytes_used, align 4
  %55 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %antic_occr53 = getelementptr inbounds %struct.expr, %struct.expr* %55, i32 0, i32 3
  %56 = load %struct.occr*, %struct.occr** %antic_occr53, align 8
  %cmp54 = icmp eq %struct.occr* %56, null
  br i1 %cmp54, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %if.else.48
  %57 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %58 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %antic_occr57 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 3
  store %struct.occr* %57, %struct.occr** %antic_occr57, align 8
  br label %if.end.60

if.else.58:                                       ; preds = %if.else.48
  %59 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %60 = load %struct.occr*, %struct.occr** %last_occr, align 8
  %next59 = getelementptr inbounds %struct.occr, %struct.occr* %60, i32 0, i32 0
  store %struct.occr* %59, %struct.occr** %next59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.56
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %62 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %insn61 = getelementptr inbounds %struct.occr, %struct.occr* %62, i32 0, i32 1
  store %struct.rtx_def* %61, %struct.rtx_def** %insn61, align 8
  %63 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  %next62 = getelementptr inbounds %struct.occr, %struct.occr* %63, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %next62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.60, %if.then.47
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.20
  %64 = load i32, i32* %avail_p.addr, align 4
  %tobool65 = icmp ne i32 %64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.115

if.then.66:                                       ; preds = %if.end.64
  %65 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr67 = getelementptr inbounds %struct.expr, %struct.expr* %65, i32 0, i32 4
  %66 = load %struct.occr*, %struct.occr** %avail_occr67, align 8
  store %struct.occr* %66, %struct.occr** %avail_occr, align 8
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.93, %if.then.66
  %67 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %tobool69 = icmp ne %struct.occr* %67, null
  br i1 %tobool69, label %land.rhs.70, label %land.end.92

land.rhs.70:                                      ; preds = %while.cond.68
  %68 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %insn71 = getelementptr inbounds %struct.occr, %struct.occr* %68, i32 0, i32 1
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn71, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %70 = load i32, i32* %rtint74, align 4
  %idxprom75 = sext i32 %70 to i64
  %71 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data76 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %71, i32 0, i32 4
  %bb77 = bitcast %union.varray_data_tag* %data76 to [1 x %struct.basic_block_def*]*
  %arrayidx78 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb77, i32 0, i64 %idxprom75
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx78, align 8
  %index79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 11
  %73 = load i32, i32* %index79, align 4
  %add80 = add nsw i32 %73, 0
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtint83 = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %75 = load i32, i32* %rtint83, align 4
  %idxprom84 = sext i32 %75 to i64
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data85 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %76, i32 0, i32 4
  %bb86 = bitcast %union.varray_data_tag* %data85 to [1 x %struct.basic_block_def*]*
  %arrayidx87 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb86, i32 0, i64 %idxprom84
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx87, align 8
  %index88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 11
  %78 = load i32, i32* %index88, align 4
  %add89 = add nsw i32 %78, 0
  %cmp90 = icmp ne i32 %add80, %add89
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.70, %while.cond.68
  %79 = phi i1 [ false, %while.cond.68 ], [ %cmp90, %land.rhs.70 ]
  br i1 %79, label %while.body.93, label %while.end.95

while.body.93:                                    ; preds = %land.end.92
  %80 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  store %struct.occr* %80, %struct.occr** %last_occr, align 8
  %81 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %next94 = getelementptr inbounds %struct.occr, %struct.occr* %81, i32 0, i32 0
  %82 = load %struct.occr*, %struct.occr** %next94, align 8
  store %struct.occr* %82, %struct.occr** %avail_occr, align 8
  br label %while.cond.68

while.end.95:                                     ; preds = %land.end.92
  %83 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %tobool96 = icmp ne %struct.occr* %83, null
  br i1 %tobool96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %while.end.95
  %84 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %85 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %insn98 = getelementptr inbounds %struct.occr, %struct.occr* %85, i32 0, i32 1
  store %struct.rtx_def* %84, %struct.rtx_def** %insn98, align 8
  br label %if.end.114

if.else.99:                                       ; preds = %while.end.95
  %call100 = call i8* @gcse_alloc(i64 24)
  %86 = bitcast i8* %call100 to %struct.occr*
  store %struct.occr* %86, %struct.occr** %avail_occr, align 8
  %87 = load i32, i32* @bytes_used, align 4
  %conv101 = sext i32 %87 to i64
  %add102 = add i64 %conv101, 24
  %conv103 = trunc i64 %add102 to i32
  store i32 %conv103, i32* @bytes_used, align 4
  %88 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr104 = getelementptr inbounds %struct.expr, %struct.expr* %88, i32 0, i32 4
  %89 = load %struct.occr*, %struct.occr** %avail_occr104, align 8
  %cmp105 = icmp eq %struct.occr* %89, null
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %if.else.99
  %90 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %91 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr108 = getelementptr inbounds %struct.expr, %struct.expr* %91, i32 0, i32 4
  store %struct.occr* %90, %struct.occr** %avail_occr108, align 8
  br label %if.end.111

if.else.109:                                      ; preds = %if.else.99
  %92 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %93 = load %struct.occr*, %struct.occr** %last_occr, align 8
  %next110 = getelementptr inbounds %struct.occr, %struct.occr* %93, i32 0, i32 0
  store %struct.occr* %92, %struct.occr** %next110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %if.then.107
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %95 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %insn112 = getelementptr inbounds %struct.occr, %struct.occr* %95, i32 0, i32 1
  store %struct.rtx_def* %94, %struct.rtx_def** %insn112, align 8
  %96 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %next113 = getelementptr inbounds %struct.occr, %struct.occr* %96, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %next113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.111, %if.then.97
  br label %if.end.115

if.end.115:                                       ; preds = %if.then, %if.end.114, %if.end.64
  ret void
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @insert_set_in_table(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %found = alloca i32, align 4
  %hash = alloca i32, align 4
  %cur_expr = alloca %struct.expr*, align 8
  %last_expr = alloca %struct.expr*, align 8
  %cur_occr = alloca %struct.occr*, align 8
  %last_occr = alloca %struct.occr*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.expr* null, %struct.expr** %last_expr, align 8
  store %struct.occr* null, %struct.occr** %last_occr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2093, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.insert_set_in_table, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %8 = load i32, i32* @set_hash_table_size, align 4
  %call = call i32 @hash_set(i32 %7, i32 %8)
  store i32 %call, i32* %hash, align 4
  %9 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %arrayidx9 = getelementptr inbounds %struct.expr*, %struct.expr** %10, i64 %idxprom
  %11 = load %struct.expr*, %struct.expr** %arrayidx9, align 8
  store %struct.expr* %11, %struct.expr** %cur_expr, align 8
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %tobool = icmp ne %struct.expr* %12, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %expr = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call10 = call i32 @expr_equiv_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  store i32 %call10, i32* %found, align 4
  %cmp11 = icmp eq i32 0, %call10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  store %struct.expr* %17, %struct.expr** %last_expr, align 8
  %18 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 2
  %19 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %19, %struct.expr** %cur_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i32, i32* %found, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.end.28, label %if.then.13

if.then.13:                                       ; preds = %while.end
  %call14 = call i8* @gcse_alloc(i64 48)
  %21 = bitcast i8* %call14 to %struct.expr*
  store %struct.expr* %21, %struct.expr** %cur_expr, align 8
  %22 = load i32, i32* @bytes_used, align 4
  %conv = sext i32 %22 to i64
  %add = add i64 %conv, 48
  %conv15 = trunc i64 %add to i32
  store i32 %conv15, i32* @bytes_used, align 4
  %23 = load i32, i32* %hash, align 4
  %idxprom16 = zext i32 %23 to i64
  %24 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %arrayidx17 = getelementptr inbounds %struct.expr*, %struct.expr** %24, i64 %idxprom16
  %25 = load %struct.expr*, %struct.expr** %arrayidx17, align 8
  %cmp18 = icmp eq %struct.expr* %25, null
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.13
  %26 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %27 = load i32, i32* %hash, align 4
  %idxprom21 = zext i32 %27 to i64
  %28 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %arrayidx22 = getelementptr inbounds %struct.expr*, %struct.expr** %28, i64 %idxprom21
  store %struct.expr* %26, %struct.expr** %arrayidx22, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.then.13
  %29 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %30 = load %struct.expr*, %struct.expr** %last_expr, align 8
  %next_same_hash23 = getelementptr inbounds %struct.expr, %struct.expr* %30, i32 0, i32 2
  store %struct.expr* %29, %struct.expr** %next_same_hash23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.20
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call25 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %31)
  %32 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %expr26 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 0
  store %struct.rtx_def* %call25, %struct.rtx_def** %expr26, align 8
  %33 = load i32, i32* @n_sets, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* @n_sets, align 4
  %34 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %34, i32 0, i32 1
  store i32 %33, i32* %bitmap_index, align 4
  %35 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %next_same_hash27 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 2
  store %struct.expr* null, %struct.expr** %next_same_hash27, align 8
  %36 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %36, i32 0, i32 3
  store %struct.occr* null, %struct.occr** %antic_occr, align 8
  %37 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %37, i32 0, i32 4
  store %struct.occr* null, %struct.occr** %avail_occr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.24, %while.end
  %38 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr29 = getelementptr inbounds %struct.expr, %struct.expr* %38, i32 0, i32 4
  %39 = load %struct.occr*, %struct.occr** %avail_occr29, align 8
  store %struct.occr* %39, %struct.occr** %cur_occr, align 8
  br label %while.cond.30

while.cond.30:                                    ; preds = %while.body.51, %if.end.28
  %40 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %tobool31 = icmp ne %struct.occr* %40, null
  br i1 %tobool31, label %land.rhs.32, label %land.end.50

land.rhs.32:                                      ; preds = %while.cond.30
  %41 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %insn33 = getelementptr inbounds %struct.occr, %struct.occr* %41, i32 0, i32 1
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %43 = load i32, i32* %rtint, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %44, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx37 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom36
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx37, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 11
  %46 = load i32, i32* %index, align 4
  %add38 = add nsw i32 %46, 0
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtint41 = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %48 = load i32, i32* %rtint41, align 4
  %idxprom42 = sext i32 %48 to i64
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data43 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %bb44 = bitcast %union.varray_data_tag* %data43 to [1 x %struct.basic_block_def*]*
  %arrayidx45 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb44, i32 0, i64 %idxprom42
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx45, align 8
  %index46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index46, align 4
  %add47 = add nsw i32 %51, 0
  %cmp48 = icmp ne i32 %add38, %add47
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.32, %while.cond.30
  %52 = phi i1 [ false, %while.cond.30 ], [ %cmp48, %land.rhs.32 ]
  br i1 %52, label %while.body.51, label %while.end.52

while.body.51:                                    ; preds = %land.end.50
  %53 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  store %struct.occr* %53, %struct.occr** %last_occr, align 8
  %54 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %54, i32 0, i32 0
  %55 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %55, %struct.occr** %cur_occr, align 8
  br label %while.cond.30

while.end.52:                                     ; preds = %land.end.50
  %56 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %tobool53 = icmp ne %struct.occr* %56, null
  br i1 %tobool53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %while.end.52
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %58 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %insn55 = getelementptr inbounds %struct.occr, %struct.occr* %58, i32 0, i32 1
  store %struct.rtx_def* %57, %struct.rtx_def** %insn55, align 8
  br label %if.end.71

if.else.56:                                       ; preds = %while.end.52
  %call57 = call i8* @gcse_alloc(i64 24)
  %59 = bitcast i8* %call57 to %struct.occr*
  store %struct.occr* %59, %struct.occr** %cur_occr, align 8
  %60 = load i32, i32* @bytes_used, align 4
  %conv58 = sext i32 %60 to i64
  %add59 = add i64 %conv58, 24
  %conv60 = trunc i64 %add59 to i32
  store i32 %conv60, i32* @bytes_used, align 4
  %61 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr61 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 4
  %62 = load %struct.occr*, %struct.occr** %avail_occr61, align 8
  %cmp62 = icmp eq %struct.occr* %62, null
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.56
  %63 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %64 = load %struct.expr*, %struct.expr** %cur_expr, align 8
  %avail_occr65 = getelementptr inbounds %struct.expr, %struct.expr* %64, i32 0, i32 4
  store %struct.occr* %63, %struct.occr** %avail_occr65, align 8
  br label %if.end.68

if.else.66:                                       ; preds = %if.else.56
  %65 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %66 = load %struct.occr*, %struct.occr** %last_occr, align 8
  %next67 = getelementptr inbounds %struct.occr, %struct.occr* %66, i32 0, i32 0
  store %struct.occr* %65, %struct.occr** %next67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %68 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %insn69 = getelementptr inbounds %struct.occr, %struct.occr* %68, i32 0, i32 1
  store %struct.rtx_def* %67, %struct.rtx_def** %insn69, align 8
  %69 = load %struct.occr*, %struct.occr** %cur_occr, align 8
  %next70 = getelementptr inbounds %struct.occr, %struct.occr* %69, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %next70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.68, %if.then.54
  ret void
}

declare i32 @general_operand(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @make_insn_raw(%struct.rtx_def*) #1

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

declare i32 @added_clobbers_hard_reg_p(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @oprs_unchanged_p(%struct.rtx_def* %x, %struct.rtx_def* %insn, i32 %avail_p) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %avail_p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %info = alloca %struct.reg_avail_info*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %avail_p, i32* %avail_p.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 61, label %sw.bb
    i32 66, label %sw.bb.18
    i32 96, label %sw.bb.32
    i32 97, label %sw.bb.32
    i32 98, label %sw.bb.32
    i32 99, label %sw.bb.32
    i32 100, label %sw.bb.32
    i32 101, label %sw.bb.32
    i32 59, label %sw.bb.33
    i32 69, label %sw.bb.33
    i32 58, label %sw.bb.33
    i32 54, label %sw.bb.33
    i32 55, label %sw.bb.33
    i32 56, label %sw.bb.33
    i32 68, label %sw.bb.33
    i32 67, label %sw.bb.33
    i32 44, label %sw.bb.33
    i32 45, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.reg_avail_info*, %struct.reg_avail_info** @reg_avail_info, align 8
  %arrayidx1 = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %6, i64 %idxprom
  store %struct.reg_avail_info* %arrayidx1, %struct.reg_avail_info** %info, align 8
  %7 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %last_bb = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %7, i32 0, i32 0
  %8 = load i32, i32* %last_bb, align 4
  %9 = load i32, i32* @current_bb, align 4
  %cmp2 = icmp ne i32 %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %sw.bb
  %10 = load i32, i32* %avail_p.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %11 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %last_set = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %11, i32 0, i32 2
  %12 = load i32, i32* %last_set, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %14 = load i32, i32* %rtint, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load i32*, i32** @uid_cuid, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %15, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %12, %16
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %17 = load %struct.reg_avail_info*, %struct.reg_avail_info** %info, align 8
  %first_set = getelementptr inbounds %struct.reg_avail_info, %struct.reg_avail_info* %17, i32 0, i32 1
  %18 = load i32, i32* %first_set, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %20 = load i32, i32* %rtint13, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32*, i32** @uid_cuid, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %22 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp sge i32 %18, %22
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %if.end
  %23 = load i32, i32* @current_bb, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom19
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %27 = load i32, i32* %rtint23, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load i32*, i32** @uid_cuid, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %28, i64 %idxprom24
  %29 = load i32, i32* %arrayidx25, align 4
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = load i32, i32* %avail_p.addr, align 4
  %call = call i32 @load_killed_in_block_p(%struct.basic_block_def* %25, i32 %29, %struct.rtx_def* %30, i32 %31)
  %tobool26 = icmp ne i32 %call, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %sw.bb.18
  store i32 0, i32* %retval
  br label %return

if.else.28:                                       ; preds = %sw.bb.18
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %35 = load i32, i32* %avail_p.addr, align 4
  %call31 = call i32 @oprs_unchanged_p(%struct.rtx_def* %33, %struct.rtx_def* %34, i32 %35)
  store i32 %call31, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %36 = load i32, i32* %code, align 4
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom34
  %37 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %37 to i32
  %sub = sub nsw i32 %conv36, 1
  store i32 %sub, i32* %i, align 4
  %38 = load i32, i32* %code, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom37
  %39 = load i8*, i8** %arrayidx38, align 8
  store i8* %39, i8** %fmt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %sw.epilog
  %40 = load i32, i32* %i, align 4
  %cmp39 = icmp sge i32 %40, 0
  br i1 %cmp39, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %41 to i64
  %42 = load i8*, i8** %fmt, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %42, i64 %idxprom41
  %43 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %43 to i32
  %cmp44 = icmp eq i32 %conv43, 101
  br i1 %cmp44, label %if.then.46, label %if.else.65

if.then.46:                                       ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %cmp47 = icmp eq i32 %44, 0
  br i1 %cmp47, label %if.then.49, label %if.else.55

if.then.49:                                       ; preds = %if.then.46
  %45 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 %idxprom50
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %49 = load i32, i32* %avail_p.addr, align 4
  %call54 = call i32 @oprs_unchanged_p(%struct.rtx_def* %47, %struct.rtx_def* %48, i32 %49)
  store i32 %call54, i32* %retval
  br label %return

if.else.55:                                       ; preds = %if.then.46
  %50 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 %idxprom56
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %54 = load i32, i32* %avail_p.addr, align 4
  %call60 = call i32 @oprs_unchanged_p(%struct.rtx_def* %52, %struct.rtx_def* %53, i32 %54)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.else.55
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.else.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  br label %if.end.90

if.else.65:                                       ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %55 to i64
  %56 = load i8*, i8** %fmt, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %56, i64 %idxprom66
  %57 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %57 to i32
  %cmp69 = icmp eq i32 %conv68, 69
  br i1 %cmp69, label %if.then.71, label %if.end.89

if.then.71:                                       ; preds = %if.else.65
  store i32 0, i32* %j, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc, %if.then.71
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 %idxprom73
  %rtvec = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %61 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %61, i32 0, i32 0
  %62 = load i32, i32* %num_elem, align 4
  %cmp76 = icmp slt i32 %58, %62
  br i1 %cmp76, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.72
  %63 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %63 to i64
  %64 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %64 to i64
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 %idxprom80
  %rtvec83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtvec_def**
  %66 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec83, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %66, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom79
  %67 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx84, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %69 = load i32, i32* %avail_p.addr, align 4
  %call85 = call i32 @oprs_unchanged_p(%struct.rtx_def* %67, %struct.rtx_def* %68, i32 %69)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %for.body.78
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %for.body.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %70 = load i32, i32* %j, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.72

for.end:                                          ; preds = %for.cond.72
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %if.else.65
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.64
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %71 = load i32, i32* %i, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.92, %if.then.87, %if.then.62, %if.then.49, %sw.bb.33, %sw.bb.32, %if.else.28, %if.then.27, %if.else, %if.then.5, %if.then.3, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @load_killed_in_block_p(%struct.basic_block_def* %bb, i32 %uid_limit, %struct.rtx_def* %x, i32 %avail_p) #0 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %uid_limit.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %avail_p.addr = alloca i32, align 4
  %list_entry = alloca %struct.rtx_def*, align 8
  %setter = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %uid_limit, i32* %uid_limit.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %avail_p, i32* %avail_p.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.rtx_def**, %struct.rtx_def*** @modify_mem_list, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2, i64 %idxprom
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %list_entry, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %avail_p.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %8 = load i32, i32* %rtint, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32*, i32** @uid_cuid, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %uid_limit.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %12 = load i32, i32* %avail_p.addr, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.end, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %15 = load i32, i32* %rtint14, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load i32*, i32** @uid_cuid, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %18 = load i32, i32* %uid_limit.addr, align 4
  %cmp17 = icmp sgt i32 %17, %18
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8, %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %list_entry, align 8
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true.8, %lor.lhs.false
  %21 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %setter, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %setter, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp24 = icmp eq i32 %bf.clear, 34
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** @gcse_mem_operand, align 8
  store i32 0, i32* @gcse_mems_conflict_p, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %setter, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  call void @note_stores(%struct.rtx_def* %27, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mems_conflict_for_gcse_p, i8* null)
  %28 = load i32, i32* @gcse_mems_conflict_p, align 4
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %29 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %list_entry, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.31, %if.then.25
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @mems_conflict_for_gcse_p(%struct.rtx_def* %dest, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 133
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 132
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %while.cond
  %8 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp ne i32 %bf.clear12, 66
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %if.end.25

if.end:                                           ; preds = %while.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** @gcse_mem_operand, align 8
  %cmp14 = icmp eq %struct.rtx_def* %13, %14
  br i1 %cmp14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %cmp15 = icmp ne %struct.ls_expr* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call = call %struct.ls_expr* @find_rtx_in_ldst(%struct.rtx_def* %16)
  %tobool = icmp ne %struct.ls_expr* %call, null
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.16
  store i32 1, i32* @gcse_mems_conflict_p, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.16
  br label %if.end.25

if.end.19:                                        ; preds = %land.lhs.true, %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load20 = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load20, 16
  %bf.clear21 = and i32 %bf.lshr, 255
  %20 = load %struct.rtx_def*, %struct.rtx_def** @gcse_mem_operand, align 8
  %call22 = call i32 @true_dependence(%struct.rtx_def* %17, i32 %bf.clear21, %struct.rtx_def* %20, i32 (%struct.rtx_def*, i32)* @rtx_addr_varies_p)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  store i32 1, i32* @gcse_mems_conflict_p, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then, %if.end.18, %if.then.24, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ls_expr* @find_rtx_in_ldst(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.ls_expr*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %ptr = alloca %struct.ls_expr*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  store %struct.ls_expr* %0, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %cmp = icmp ne %struct.ls_expr* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %pattern = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @expr_equiv_p(%struct.rtx_def* %3, %struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %5, i32 0, i32 5
  %6 = load i32, i32* %invalid, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  store %struct.ls_expr* %7, %struct.ls_expr** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %next = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %8, i32 0, i32 4
  %9 = load %struct.ls_expr*, %struct.ls_expr** %next, align 8
  store %struct.ls_expr* %9, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ls_expr* null, %struct.ls_expr** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.ls_expr*, %struct.ls_expr** %retval
  ret %struct.ls_expr* %10
}

declare i32 @true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, i32 (%struct.rtx_def*, i32)*) #1

declare i32 @rtx_addr_varies_p(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @expr_equiv_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp4 = icmp eq %struct.rtx_def* %4, %5
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %8 = load i32, i32* %code, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load6 = load i32, i32* %10, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp ne i32 %8, %bf.clear7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load12, 16
  %bf.clear13 = and i32 %bf.lshr, 255
  %13 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load14 = load i32, i32* %14, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 16
  %bf.clear16 = and i32 %bf.lshr15, 255
  %cmp17 = icmp ne i32 %bf.clear13, %bf.clear16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.11
  %15 = load i32, i32* %code, align 4
  switch i32 %15, label %sw.default [
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 54, label %sw.bb.23
    i32 67, label %sw.bb.29
    i32 68, label %sw.bb.37
    i32 61, label %sw.bb.45
    i32 66, label %sw.bb.53
    i32 75, label %sw.bb.78
    i32 78, label %sw.bb.78
    i32 83, label %sw.bb.78
    i32 84, label %sw.bb.78
    i32 85, label %sw.bb.78
    i32 102, label %sw.bb.78
    i32 103, label %sw.bb.78
    i32 41, label %sw.bb.109
  ]

sw.bb:                                            ; preds = %if.end.20, %if.end.20
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp21 = icmp eq %struct.rtx_def* %16, %17
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end.20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %19 = load i64, i64* %rtwint, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtwint26 = bitcast %union.rtunion_def* %arrayidx25 to i64*
  %21 = load i64, i64* %rtwint26, align 8
  %cmp27 = icmp eq i64 %19, %21
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %if.end.20
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp eq %struct.rtx_def* %23, %25
  %conv36 = zext i1 %cmp35 to i32
  store i32 %conv36, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %if.end.20
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx39 to i8**
  %27 = load i8*, i8** %rtstr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtstr42 = bitcast %union.rtunion_def* %arrayidx41 to i8**
  %29 = load i8*, i8** %rtstr42, align 8
  %cmp43 = icmp eq i8* %27, %29
  %conv44 = zext i1 %cmp43 to i32
  store i32 %conv44, i32* %retval
  br label %return

sw.bb.45:                                         ; preds = %if.end.20
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %31 = load i32, i32* %rtuint, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %33 = load i32, i32* %rtuint50, align 4
  %cmp51 = icmp eq i32 %31, %33
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %if.end.20
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx55 to %struct.mem_attrs**
  %35 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp56 = icmp eq %struct.mem_attrs* %35, null
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.53
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.53
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtmem60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.mem_attrs**
  %37 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem60, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %37, i32 0, i32 0
  %38 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %38, %cond.false ]
  %39 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtmem63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.mem_attrs**
  %40 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem63, align 8
  %cmp64 = icmp eq %struct.mem_attrs* %40, null
  br i1 %cmp64, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end
  br label %cond.end.72

cond.false.67:                                    ; preds = %cond.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtmem70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.mem_attrs**
  %42 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem70, align 8
  %alias71 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %42, i32 0, i32 0
  %43 = load i64, i64* %alias71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.67, %cond.true.66
  %cond73 = phi i64 [ 0, %cond.true.66 ], [ %43, %cond.false.67 ]
  %cmp74 = icmp ne i64 %cond, %cond73
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %cond.end.72
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %cond.end.72
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.20, %if.end.20, %if.end.20, %if.end.20, %if.end.20, %if.end.20, %if.end.20
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %call = call i32 @expr_equiv_p(%struct.rtx_def* %45, %struct.rtx_def* %47)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %sw.bb.78
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 1
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %call91 = call i32 @expr_equiv_p(%struct.rtx_def* %49, %struct.rtx_def* %51)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %sw.bb.78
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 1
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %call99 = call i32 @expr_equiv_p(%struct.rtx_def* %53, %struct.rtx_def* %55)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 1
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %call107 = call i32 @expr_equiv_p(%struct.rtx_def* %57, %struct.rtx_def* %59)
  %tobool108 = icmp ne i32 %call107, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %60 = phi i1 [ false, %lor.rhs ], [ %tobool108, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %61 = phi i1 [ true, %land.lhs.true ], [ %60, %land.end ]
  %lor.ext = zext i1 %61 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.109:                                        ; preds = %if.end.20
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load110 = load i32, i32* %63, align 8
  %bf.lshr111 = lshr i32 %bf.load110, 27
  %bf.clear112 = and i32 %bf.lshr111, 1
  %tobool113 = icmp ne i32 %bf.clear112, 0
  br i1 %tobool113, label %if.then.119, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %sw.bb.109
  %64 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load115 = load i32, i32* %65, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 27
  %bf.clear117 = and i32 %bf.lshr116, 1
  %tobool118 = icmp ne i32 %bf.clear117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.114, %sw.bb.109
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %lor.lhs.false.114
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load121 = load i32, i32* %67, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 16
  %bf.clear123 = and i32 %bf.lshr122, 255
  %68 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load124 = load i32, i32* %69, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 16
  %bf.clear126 = and i32 %bf.lshr125, 255
  %cmp127 = icmp ne i32 %bf.clear123, %bf.clear126
  br i1 %cmp127, label %if.then.164, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.end.120
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtstr132 = bitcast %union.rtunion_def* %arrayidx131 to i8**
  %71 = load i8*, i8** %rtstr132, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtstr135 = bitcast %union.rtunion_def* %arrayidx134 to i8**
  %73 = load i8*, i8** %rtstr135, align 8
  %call136 = call i32 @strcmp(i8* %71, i8* %73) #8
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.164, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %lor.lhs.false.129
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 1
  %rtstr141 = bitcast %union.rtunion_def* %arrayidx140 to i8**
  %75 = load i8*, i8** %rtstr141, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtstr144 = bitcast %union.rtunion_def* %arrayidx143 to i8**
  %77 = load i8*, i8** %rtstr144, align 8
  %call145 = call i32 @strcmp(i8* %75, i8* %77) #8
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.164, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.138
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 2
  %rtint = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %79 = load i32, i32* %rtint, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 2
  %rtint152 = bitcast %union.rtunion_def* %arrayidx151 to i32*
  %81 = load i32, i32* %rtint152, align 4
  %cmp153 = icmp ne i32 %79, %81
  br i1 %cmp153, label %if.then.164, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.147
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtvec_def**
  %83 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %83, i32 0, i32 0
  %84 = load i32, i32* %num_elem, align 4
  %85 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 3
  %rtvec160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtvec_def**
  %86 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec160, align 8
  %num_elem161 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %86, i32 0, i32 0
  %87 = load i32, i32* %num_elem161, align 4
  %cmp162 = icmp ne i32 %84, %87
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %lor.lhs.false.155, %lor.lhs.false.147, %lor.lhs.false.138, %lor.lhs.false.129, %if.end.120
  store i32 0, i32* %retval
  br label %return

if.end.165:                                       ; preds = %lor.lhs.false.155
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 3
  %rtvec168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtvec_def**
  %89 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec168, align 8
  %num_elem169 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %89, i32 0, i32 0
  %90 = load i32, i32* %num_elem169, align 4
  %tobool170 = icmp ne i32 %90, 0
  br i1 %tobool170, label %if.then.171, label %if.end.213

if.then.171:                                      ; preds = %if.end.165
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 3
  %rtvec174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtvec_def**
  %92 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec174, align 8
  %num_elem175 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %92, i32 0, i32 0
  %93 = load i32, i32* %num_elem175, align 4
  %sub = sub nsw i32 %93, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.171
  %94 = load i32, i32* %i, align 4
  %cmp176 = icmp sge i32 %94, 0
  br i1 %cmp176, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load i32, i32* %i, align 4
  %idxprom = sext i32 %95 to i64
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 3
  %rtvec180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtvec_def**
  %97 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec180, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %97, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %98 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx181, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %99 to i64
  %100 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 3
  %rtvec185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtvec_def**
  %101 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec185, align 8
  %elem186 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %101, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem186, i32 0, i64 %idxprom182
  %102 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx187, align 8
  %call188 = call i32 @expr_equiv_p(%struct.rtx_def* %98, %struct.rtx_def* %102)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %lor.lhs.false.190, label %if.then.211

lor.lhs.false.190:                                ; preds = %for.body
  %103 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %103 to i64
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 4
  %rtvec194 = bitcast %union.rtunion_def* %arrayidx193 to %struct.rtvec_def**
  %105 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec194, align 8
  %elem195 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %105, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem195, i32 0, i64 %idxprom191
  %106 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx196, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 0
  %rtstr199 = bitcast %union.rtunion_def* %arrayidx198 to i8**
  %107 = load i8*, i8** %rtstr199, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %108 to i64
  %109 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 4
  %rtvec203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtvec_def**
  %110 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec203, align 8
  %elem204 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %110, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem204, i32 0, i64 %idxprom200
  %111 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx205, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtstr208 = bitcast %union.rtunion_def* %arrayidx207 to i8**
  %112 = load i8*, i8** %rtstr208, align 8
  %call209 = call i32 @strcmp(i8* %107, i8* %112) #8
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %lor.lhs.false.190, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.212:                                       ; preds = %lor.lhs.false.190
  br label %for.inc

for.inc:                                          ; preds = %if.end.212
  %113 = load i32, i32* %i, align 4
  %dec = add nsw i32 %113, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.213

if.end.213:                                       ; preds = %for.end, %if.end.165
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.77
  %114 = load i32, i32* %code, align 4
  %idxprom214 = sext i32 %114 to i64
  %arrayidx215 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom214
  %115 = load i8*, i8** %arrayidx215, align 8
  store i8* %115, i8** %fmt, align 8
  %116 = load i32, i32* %code, align 4
  %idxprom216 = sext i32 %116 to i64
  %arrayidx217 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom216
  %117 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %117 to i32
  %sub219 = sub nsw i32 %conv218, 1
  store i32 %sub219, i32* %i, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.326, %sw.epilog
  %118 = load i32, i32* %i, align 4
  %cmp221 = icmp sge i32 %118, 0
  br i1 %cmp221, label %for.body.223, label %for.end.328

for.body.223:                                     ; preds = %for.cond.220
  %119 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %119 to i64
  %120 = load i8*, i8** %fmt, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %120, i64 %idxprom224
  %121 = load i8, i8* %arrayidx225, align 1
  %conv226 = sext i8 %121 to i32
  switch i32 %conv226, label %sw.default.324 [
    i32 101, label %sw.bb.227
    i32 69, label %sw.bb.240
    i32 115, label %sw.bb.284
    i32 105, label %sw.bb.297
    i32 119, label %sw.bb.310
    i32 48, label %sw.bb.323
  ]

sw.bb.227:                                        ; preds = %for.body.223
  %122 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %122 to i64
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 %idxprom228
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %125 to i64
  %126 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 %idxprom232
  %rtx235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx235, align 8
  %call236 = call i32 @expr_equiv_p(%struct.rtx_def* %124, %struct.rtx_def* %127)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.end.239, label %if.then.238

if.then.238:                                      ; preds = %sw.bb.227
  store i32 0, i32* %retval
  br label %return

if.end.239:                                       ; preds = %sw.bb.227
  br label %sw.epilog.325

sw.bb.240:                                        ; preds = %for.body.223
  %128 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %128 to i64
  %129 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld242, i32 0, i64 %idxprom241
  %rtvec244 = bitcast %union.rtunion_def* %arrayidx243 to %struct.rtvec_def**
  %130 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec244, align 8
  %num_elem245 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %130, i32 0, i32 0
  %131 = load i32, i32* %num_elem245, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %132 to i64
  %133 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 %idxprom246
  %rtvec249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtvec_def**
  %134 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec249, align 8
  %num_elem250 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %134, i32 0, i32 0
  %135 = load i32, i32* %num_elem250, align 4
  %cmp251 = icmp ne i32 %131, %135
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %sw.bb.240
  store i32 0, i32* %retval
  br label %return

if.end.254:                                       ; preds = %sw.bb.240
  store i32 0, i32* %j, align 4
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.282, %if.end.254
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %137 to i64
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 %idxprom256
  %rtvec259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtvec_def**
  %139 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec259, align 8
  %num_elem260 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %139, i32 0, i32 0
  %140 = load i32, i32* %num_elem260, align 4
  %cmp261 = icmp slt i32 %136, %140
  br i1 %cmp261, label %for.body.263, label %for.end.283

for.body.263:                                     ; preds = %for.cond.255
  %141 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %142 to i64
  %143 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 %idxprom265
  %rtvec268 = bitcast %union.rtunion_def* %arrayidx267 to %struct.rtvec_def**
  %144 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec268, align 8
  %elem269 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %144, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem269, i32 0, i64 %idxprom264
  %145 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx270, align 8
  %146 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %146 to i64
  %147 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %147 to i64
  %148 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 %idxprom272
  %rtvec275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtvec_def**
  %149 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec275, align 8
  %elem276 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %149, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem276, i32 0, i64 %idxprom271
  %150 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx277, align 8
  %call278 = call i32 @expr_equiv_p(%struct.rtx_def* %145, %struct.rtx_def* %150)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %for.body.263
  store i32 0, i32* %retval
  br label %return

if.end.281:                                       ; preds = %for.body.263
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %151 = load i32, i32* %j, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.255

for.end.283:                                      ; preds = %for.cond.255
  br label %sw.epilog.325

sw.bb.284:                                        ; preds = %for.body.223
  %152 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %152 to i64
  %153 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld286, i32 0, i64 %idxprom285
  %rtstr288 = bitcast %union.rtunion_def* %arrayidx287 to i8**
  %154 = load i8*, i8** %rtstr288, align 8
  %155 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %155 to i64
  %156 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 %idxprom289
  %rtstr292 = bitcast %union.rtunion_def* %arrayidx291 to i8**
  %157 = load i8*, i8** %rtstr292, align 8
  %call293 = call i32 @strcmp(i8* %154, i8* %157) #8
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %sw.bb.284
  store i32 0, i32* %retval
  br label %return

if.end.296:                                       ; preds = %sw.bb.284
  br label %sw.epilog.325

sw.bb.297:                                        ; preds = %for.body.223
  %158 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %158 to i64
  %159 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 %idxprom298
  %rtint301 = bitcast %union.rtunion_def* %arrayidx300 to i32*
  %160 = load i32, i32* %rtint301, align 4
  %161 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %161 to i64
  %162 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 %idxprom302
  %rtint305 = bitcast %union.rtunion_def* %arrayidx304 to i32*
  %163 = load i32, i32* %rtint305, align 4
  %cmp306 = icmp ne i32 %160, %163
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %sw.bb.297
  store i32 0, i32* %retval
  br label %return

if.end.309:                                       ; preds = %sw.bb.297
  br label %sw.epilog.325

sw.bb.310:                                        ; preds = %for.body.223
  %164 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %164 to i64
  %165 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld312, i32 0, i64 %idxprom311
  %rtwint314 = bitcast %union.rtunion_def* %arrayidx313 to i64*
  %166 = load i64, i64* %rtwint314, align 8
  %167 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %167 to i64
  %168 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 %idxprom315
  %rtwint318 = bitcast %union.rtunion_def* %arrayidx317 to i64*
  %169 = load i64, i64* %rtwint318, align 8
  %cmp319 = icmp ne i64 %166, %169
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %sw.bb.310
  store i32 0, i32* %retval
  br label %return

if.end.322:                                       ; preds = %sw.bb.310
  br label %sw.epilog.325

sw.bb.323:                                        ; preds = %for.body.223
  br label %sw.epilog.325

sw.default.324:                                   ; preds = %for.body.223
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1936, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expr_equiv_p, i32 0, i32 0)) #7
  unreachable

sw.epilog.325:                                    ; preds = %sw.bb.323, %if.end.322, %if.end.309, %if.end.296, %for.end.283, %if.end.239
  br label %for.inc.326

for.inc.326:                                      ; preds = %sw.epilog.325
  %170 = load i32, i32* %i, align 4
  %dec327 = add nsw i32 %170, -1
  store i32 %dec327, i32* %i, align 4
  br label %for.cond.220

for.end.328:                                      ; preds = %for.cond.220
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.328, %if.then.321, %if.then.308, %if.then.295, %if.then.280, %if.then.253, %if.then.238, %if.end.213, %if.then.211, %if.then.164, %if.then.119, %lor.end, %if.then.76, %sw.bb.45, %sw.bb.37, %sw.bb.29, %sw.bb.23, %sw.bb, %if.then.19, %if.then.10, %if.then.3, %if.then
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @hash_expr(%struct.rtx_def* %x, i32 %mode, i32* %do_not_record_p, i32 %hash_table_size) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %do_not_record_p.addr = alloca i32*, align 8
  %hash_table_size.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32* %do_not_record_p, i32** %do_not_record_p.addr, align 8
  store i32 %hash_table_size, i32* %hash_table_size.addr, align 4
  %0 = load i32*, i32** %do_not_record_p.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load i32*, i32** %do_not_record_p.addr, align 8
  %call = call i32 @hash_expr_1(%struct.rtx_def* %1, i32 %2, i32* %3)
  store i32 %call, i32* %hash, align 4
  %4 = load i32, i32* %hash, align 4
  %5 = load i32, i32* %hash_table_size.addr, align 4
  %rem = urem i32 %4, %5
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define internal i32 @hash_expr_1(%struct.rtx_def* %x, i32 %mode, i32* %do_not_record_p) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %do_not_record_p.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hash = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %units = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  %h = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32* %do_not_record_p, i32** %do_not_record_p.addr, align 8
  store i32 0, i32* %hash, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %hash, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %repeat

repeat:                                           ; preds = %if.then.206, %for.end.164, %cond.end, %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 61, label %sw.bb
    i32 54, label %sw.bb.2
    i32 55, label %sw.bb.8
    i32 56, label %sw.bb.38
    i32 67, label %sw.bb.57
    i32 68, label %sw.bb.64
    i32 66, label %sw.bb.72
    i32 96, label %sw.bb.93
    i32 97, label %sw.bb.93
    i32 98, label %sw.bb.93
    i32 99, label %sw.bb.93
    i32 59, label %sw.bb.93
    i32 69, label %sw.bb.93
    i32 50, label %sw.bb.93
    i32 43, label %sw.bb.93
    i32 41, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %repeat
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtuint, align 4
  %add = add i32 7808, %6
  %7 = load i32, i32* %hash, align 4
  %add1 = add i32 %7, %add
  store i32 %add1, i32* %hash, align 4
  %8 = load i32, i32* %hash, align 4
  store i32 %8, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %repeat
  %9 = load i32, i32* %mode.addr, align 4
  %add3 = add i32 6912, %9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx5 to i64*
  %11 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %11 to i32
  %add6 = add i32 %add3, %conv
  %12 = load i32, i32* %hash, align 4
  %add7 = add i32 %12, %add6
  store i32 %add7, i32* %hash, align 4
  %13 = load i32, i32* %hash, align 4
  store i32 %13, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %repeat
  %14 = load i32, i32* %code, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load9 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load9, 16
  %bf.clear10 = and i32 %bf.lshr, 255
  %add11 = add i32 %14, %bf.clear10
  %17 = load i32, i32* %hash, align 4
  %add12 = add i32 %17, %add11
  store i32 %add12, i32* %hash, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load13 = load i32, i32* %19, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %cmp16 = icmp ne i32 %bf.clear15, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb.8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %20 = load i32, i32* %i, align 4
  %21 = load i8, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @rtx_length, i32 0, i64 55), align 1
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp slt i32 %20, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 %idxprom
  %rtwint24 = bitcast %union.rtunion_def* %arrayidx23 to i64*
  %24 = load i64, i64* %rtwint24, align 8
  %conv25 = trunc i64 %24 to i32
  %25 = load i32, i32* %hash, align 4
  %add26 = add i32 %25, %conv25
  store i32 %add26, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.37

if.else:                                          ; preds = %sw.bb.8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtwint29 = bitcast %union.rtunion_def* %arrayidx28 to i64*
  %28 = load i64, i64* %rtwint29, align 8
  %conv30 = trunc i64 %28 to i32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 2
  %rtwint33 = bitcast %union.rtunion_def* %arrayidx32 to i64*
  %30 = load i64, i64* %rtwint33, align 8
  %conv34 = trunc i64 %30 to i32
  %add35 = add i32 %conv30, %conv34
  %31 = load i32, i32* %hash, align 4
  %add36 = add i32 %31, %add35
  store i32 %add36, i32* %hash, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %for.end
  %32 = load i32, i32* %hash, align 4
  store i32 %32, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %repeat
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtvec_def**
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %34, i32 0, i32 0
  %35 = load i32, i32* %num_elem, align 4
  store i32 %35, i32* %units, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.54, %sw.bb.38
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %units, align 4
  %cmp42 = icmp slt i32 %36, %37
  br i1 %cmp42, label %for.body.44, label %for.end.56

for.body.44:                                      ; preds = %for.cond.41
  %38 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtvec48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec48, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom45
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx49, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %elt, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load50 = load i32, i32* %44, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 16
  %bf.clear52 = and i32 %bf.lshr51, 255
  %45 = load i32*, i32** %do_not_record_p.addr, align 8
  %call = call i32 @hash_expr_1(%struct.rtx_def* %42, i32 %bf.clear52, i32* %45)
  %46 = load i32, i32* %hash, align 4
  %add53 = add i32 %46, %call
  store i32 %add53, i32* %hash, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.44
  %47 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %47, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.41

for.end.56:                                       ; preds = %for.cond.41
  %48 = load i32, i32* %hash, align 4
  store i32 %48, i32* %retval
  br label %return

sw.bb.57:                                         ; preds = %repeat
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %51 = load i32, i32* %rtint, align 4
  %add62 = add i32 8576, %51
  %52 = load i32, i32* %hash, align 4
  %add63 = add i32 %52, %add62
  store i32 %add63, i32* %hash, align 4
  %53 = load i32, i32* %hash, align 4
  store i32 %53, i32* %retval
  br label %return

sw.bb.64:                                         ; preds = %repeat
  store i32 0, i32* %h, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx66 to i8**
  %55 = load i8*, i8** %rtstr, align 8
  store i8* %55, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.64
  %56 = load i8*, i8** %p, align 8
  %57 = load i8, i8* %56, align 1
  %tobool = icmp ne i8 %57, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i32, i32* %h, align 4
  %shl = shl i32 %58, 7
  %59 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %60 = load i8, i8* %59, align 1
  %conv67 = zext i8 %60 to i32
  %add68 = add i32 %shl, %conv67
  %61 = load i32, i32* %h, align 4
  %add69 = add i32 %61, %add68
  store i32 %add69, i32* %h, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load i32, i32* %h, align 4
  %add70 = add i32 8704, %62
  %63 = load i32, i32* %hash, align 4
  %add71 = add i32 %63, %add70
  store i32 %add71, i32* %hash, align 4
  %64 = load i32, i32* %hash, align 4
  store i32 %64, i32* %retval
  br label %return

sw.bb.72:                                         ; preds = %repeat
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load73 = load i32, i32* %66, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 27
  %bf.clear75 = and i32 %bf.lshr74, 1
  %tobool76 = icmp ne i32 %bf.clear75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.72
  %67 = load i32*, i32** %do_not_record_p.addr, align 8
  store i32 1, i32* %67, align 4
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.72
  %68 = load i32, i32* %hash, align 4
  %add79 = add i32 %68, 66
  store i32 %add79, i32* %hash, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx81 to %struct.mem_attrs**
  %70 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp82 = icmp eq %struct.mem_attrs* %70, null
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.78
  br label %cond.end

cond.false:                                       ; preds = %if.end.78
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtmem86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.mem_attrs**
  %72 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem86, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %72, i32 0, i32 0
  %73 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %73, %cond.false ]
  %74 = load i32, i32* %hash, align 4
  %conv87 = zext i32 %74 to i64
  %add88 = add nsw i64 %conv87, %cond
  %conv89 = trunc i64 %add88 to i32
  store i32 %conv89, i32* %hash, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %x.addr, align 8
  br label %repeat

sw.bb.93:                                         ; preds = %repeat, %repeat, %repeat, %repeat, %repeat, %repeat, %repeat, %repeat
  %77 = load i32*, i32** %do_not_record_p.addr, align 8
  store i32 1, i32* %77, align 4
  store i32 0, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %repeat
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load95 = load i32, i32* %79, align 8
  %bf.lshr96 = lshr i32 %bf.load95, 27
  %bf.clear97 = and i32 %bf.lshr96, 1
  %tobool98 = icmp ne i32 %bf.clear97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %sw.bb.94
  %80 = load i32*, i32** %do_not_record_p.addr, align 8
  store i32 1, i32* %80, align 4
  store i32 0, i32* %retval
  br label %return

if.else.100:                                      ; preds = %sw.bb.94
  %81 = load i32, i32* %code, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load101 = load i32, i32* %83, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %add104 = add i32 %81, %bf.clear103
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtstr107 = bitcast %union.rtunion_def* %arrayidx106 to i8**
  %85 = load i8*, i8** %rtstr107, align 8
  %call108 = call i32 @hash_string_1(i8* %85)
  %add109 = add i32 %add104, %call108
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 1
  %rtstr112 = bitcast %union.rtunion_def* %arrayidx111 to i8**
  %87 = load i8*, i8** %rtstr112, align 8
  %call113 = call i32 @hash_string_1(i8* %87)
  %add114 = add i32 %add109, %call113
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 2
  %rtint117 = bitcast %union.rtunion_def* %arrayidx116 to i32*
  %89 = load i32, i32* %rtint117, align 4
  %add118 = add i32 %add114, %89
  %90 = load i32, i32* %hash, align 4
  %add119 = add i32 %90, %add118
  store i32 %add119, i32* %hash, align 4
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 3
  %rtvec122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtvec_def**
  %92 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec122, align 8
  %num_elem123 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %92, i32 0, i32 0
  %93 = load i32, i32* %num_elem123, align 4
  %tobool124 = icmp ne i32 %93, 0
  br i1 %tobool124, label %if.then.125, label %if.end.183

if.then.125:                                      ; preds = %if.else.100
  store i32 1, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.162, %if.then.125
  %94 = load i32, i32* %i, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 3
  %rtvec129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec129, align 8
  %num_elem130 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 0
  %97 = load i32, i32* %num_elem130, align 4
  %cmp131 = icmp slt i32 %94, %97
  br i1 %cmp131, label %for.body.133, label %for.end.164

for.body.133:                                     ; preds = %for.cond.126
  %98 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %98 to i64
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 3
  %rtvec137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtvec_def**
  %100 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec137, align 8
  %elem138 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %100, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem138, i32 0, i64 %idxprom134
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx139, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 3
  %rtvec143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtvec_def**
  %104 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec143, align 8
  %elem144 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %104, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem144, i32 0, i64 %idxprom140
  %105 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx145, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load146 = load i32, i32* %106, align 8
  %bf.lshr147 = lshr i32 %bf.load146, 16
  %bf.clear148 = and i32 %bf.lshr147, 255
  %107 = load i32*, i32** %do_not_record_p.addr, align 8
  %call149 = call i32 @hash_expr_1(%struct.rtx_def* %101, i32 %bf.clear148, i32* %107)
  %108 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %108 to i64
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 4
  %rtvec153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtvec_def**
  %110 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec153, align 8
  %elem154 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %110, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem154, i32 0, i64 %idxprom150
  %111 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx155, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtstr158 = bitcast %union.rtunion_def* %arrayidx157 to i8**
  %112 = load i8*, i8** %rtstr158, align 8
  %call159 = call i32 @hash_string_1(i8* %112)
  %add160 = add i32 %call149, %call159
  %113 = load i32, i32* %hash, align 4
  %add161 = add i32 %113, %add160
  store i32 %add161, i32* %hash, align 4
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.133
  %114 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %114, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.126

for.end.164:                                      ; preds = %for.cond.126
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld165, i32 0, i64 4
  %rtvec167 = bitcast %union.rtunion_def* %arrayidx166 to %struct.rtvec_def**
  %116 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec167, align 8
  %elem168 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %116, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem168, i32 0, i64 0
  %117 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx169, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtstr172 = bitcast %union.rtunion_def* %arrayidx171 to i8**
  %118 = load i8*, i8** %rtstr172, align 8
  %call173 = call i32 @hash_string_1(i8* %118)
  %119 = load i32, i32* %hash, align 4
  %add174 = add i32 %119, %call173
  store i32 %add174, i32* %hash, align 4
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 3
  %rtvec177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtvec_def**
  %121 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec177, align 8
  %elem178 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %121, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem178, i32 0, i64 0
  %122 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx179, align 8
  store %struct.rtx_def* %122, %struct.rtx_def** %x.addr, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load180 = load i32, i32* %124, align 8
  %bf.lshr181 = lshr i32 %bf.load180, 16
  %bf.clear182 = and i32 %bf.lshr181, 255
  store i32 %bf.clear182, i32* %mode.addr, align 4
  br label %repeat

if.end.183:                                       ; preds = %if.else.100
  %125 = load i32, i32* %hash, align 4
  store i32 %125, i32* %retval
  br label %return

sw.default:                                       ; preds = %repeat
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %126 = load i32, i32* %code, align 4
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load184 = load i32, i32* %128, align 8
  %bf.lshr185 = lshr i32 %bf.load184, 16
  %bf.clear186 = and i32 %bf.lshr185, 255
  %add187 = add i32 %126, %bf.clear186
  %129 = load i32, i32* %hash, align 4
  %add188 = add i32 %129, %add187
  store i32 %add188, i32* %hash, align 4
  %130 = load i32, i32* %code, align 4
  %idxprom189 = sext i32 %130 to i64
  %arrayidx190 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom189
  %131 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %131 to i32
  %sub = sub nsw i32 %conv191, 1
  store i32 %sub, i32* %i, align 4
  %132 = load i32, i32* %code, align 4
  %idxprom192 = sext i32 %132 to i64
  %arrayidx193 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom192
  %133 = load i8*, i8** %arrayidx193, align 8
  store i8* %133, i8** %fmt, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.282, %sw.epilog
  %134 = load i32, i32* %i, align 4
  %cmp195 = icmp sge i32 %134, 0
  br i1 %cmp195, label %for.body.197, label %for.end.283

for.body.197:                                     ; preds = %for.cond.194
  %135 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %135 to i64
  %136 = load i8*, i8** %fmt, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %136, i64 %idxprom198
  %137 = load i8, i8* %arrayidx199, align 1
  %conv200 = sext i8 %137 to i32
  %cmp201 = icmp eq i32 %conv200, 101
  br i1 %cmp201, label %if.then.203, label %if.else.221

if.then.203:                                      ; preds = %for.body.197
  %138 = load i32, i32* %i, align 4
  %cmp204 = icmp eq i32 %138, 0
  br i1 %cmp204, label %if.then.206, label %if.end.211

if.then.206:                                      ; preds = %if.then.203
  %139 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %139 to i64
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 %idxprom207
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %x.addr, align 8
  br label %repeat

if.end.211:                                       ; preds = %if.then.203
  %142 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %142 to i64
  %143 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 %idxprom212
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %145 = load i32*, i32** %do_not_record_p.addr, align 8
  %call216 = call i32 @hash_expr_1(%struct.rtx_def* %144, i32 0, i32* %145)
  %146 = load i32, i32* %hash, align 4
  %add217 = add i32 %146, %call216
  store i32 %add217, i32* %hash, align 4
  %147 = load i32*, i32** %do_not_record_p.addr, align 8
  %148 = load i32, i32* %147, align 4
  %tobool218 = icmp ne i32 %148, 0
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.end.211
  store i32 0, i32* %retval
  br label %return

if.end.220:                                       ; preds = %if.end.211
  br label %if.end.281

if.else.221:                                      ; preds = %for.body.197
  %149 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %149 to i64
  %150 = load i8*, i8** %fmt, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %150, i64 %idxprom222
  %151 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %151 to i32
  %cmp225 = icmp eq i32 %conv224, 69
  br i1 %cmp225, label %if.then.227, label %if.else.252

if.then.227:                                      ; preds = %if.else.221
  store i32 0, i32* %j, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.249, %if.then.227
  %152 = load i32, i32* %j, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %153 to i64
  %154 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 %idxprom229
  %rtvec232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtvec_def**
  %155 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec232, align 8
  %num_elem233 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %155, i32 0, i32 0
  %156 = load i32, i32* %num_elem233, align 4
  %cmp234 = icmp slt i32 %152, %156
  br i1 %cmp234, label %for.body.236, label %for.end.251

for.body.236:                                     ; preds = %for.cond.228
  %157 = load i32, i32* %j, align 4
  %idxprom237 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %158 to i64
  %159 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 %idxprom238
  %rtvec241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtvec_def**
  %160 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec241, align 8
  %elem242 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %160, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem242, i32 0, i64 %idxprom237
  %161 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx243, align 8
  %162 = load i32*, i32** %do_not_record_p.addr, align 8
  %call244 = call i32 @hash_expr_1(%struct.rtx_def* %161, i32 0, i32* %162)
  %163 = load i32, i32* %hash, align 4
  %add245 = add i32 %163, %call244
  store i32 %add245, i32* %hash, align 4
  %164 = load i32*, i32** %do_not_record_p.addr, align 8
  %165 = load i32, i32* %164, align 4
  %tobool246 = icmp ne i32 %165, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %for.body.236
  store i32 0, i32* %retval
  br label %return

if.end.248:                                       ; preds = %for.body.236
  br label %for.inc.249

for.inc.249:                                      ; preds = %if.end.248
  %166 = load i32, i32* %j, align 4
  %inc250 = add nsw i32 %166, 1
  store i32 %inc250, i32* %j, align 4
  br label %for.cond.228

for.end.251:                                      ; preds = %for.cond.228
  br label %if.end.280

if.else.252:                                      ; preds = %if.else.221
  %167 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %167 to i64
  %168 = load i8*, i8** %fmt, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %168, i64 %idxprom253
  %169 = load i8, i8* %arrayidx254, align 1
  %conv255 = sext i8 %169 to i32
  %cmp256 = icmp eq i32 %conv255, 115
  br i1 %cmp256, label %if.then.258, label %if.else.265

if.then.258:                                      ; preds = %if.else.252
  %170 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %170 to i64
  %171 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 %idxprom259
  %rtstr262 = bitcast %union.rtunion_def* %arrayidx261 to i8**
  %172 = load i8*, i8** %rtstr262, align 8
  %call263 = call i32 @hash_string_1(i8* %172)
  %173 = load i32, i32* %hash, align 4
  %add264 = add i32 %173, %call263
  store i32 %add264, i32* %hash, align 4
  br label %if.end.279

if.else.265:                                      ; preds = %if.else.252
  %174 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %174 to i64
  %175 = load i8*, i8** %fmt, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %175, i64 %idxprom266
  %176 = load i8, i8* %arrayidx267, align 1
  %conv268 = sext i8 %176 to i32
  %cmp269 = icmp eq i32 %conv268, 105
  br i1 %cmp269, label %if.then.271, label %if.else.277

if.then.271:                                      ; preds = %if.else.265
  %177 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %177 to i64
  %178 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 %idxprom272
  %rtint275 = bitcast %union.rtunion_def* %arrayidx274 to i32*
  %179 = load i32, i32* %rtint275, align 4
  %180 = load i32, i32* %hash, align 4
  %add276 = add i32 %180, %179
  store i32 %add276, i32* %hash, align 4
  br label %if.end.278

if.else.277:                                      ; preds = %if.else.265
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.hash_expr_1, i32 0, i32 0)) #7
  unreachable

if.end.278:                                       ; preds = %if.then.271
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.258
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %for.end.251
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.end.220
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %181 = load i32, i32* %i, align 4
  %dec = add nsw i32 %181, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.194

for.end.283:                                      ; preds = %for.cond.194
  %182 = load i32, i32* %hash, align 4
  store i32 %182, i32* %retval
  br label %return

return:                                           ; preds = %for.end.283, %if.then.247, %if.then.219, %if.end.183, %if.then.99, %sw.bb.93, %if.then.77, %while.end, %sw.bb.57, %for.end.56, %if.end.37, %sw.bb.2, %sw.bb, %if.then
  %183 = load i32, i32* %retval
  ret i32 %183
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash_string_1(i8* %ps) #6 {
entry:
  %ps.addr = alloca i8*, align 8
  %hash = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %ps, i8** %ps.addr, align 8
  store i32 0, i32* %hash, align 4
  %0 = load i8*, i8** %ps.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %hash, align 4
  %add = add i32 %6, %conv
  store i32 %add, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %7 = load i32, i32* %hash, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @hash_set(i32 %regno, i32 %hash_table_size) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %hash_table_size.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %hash_table_size, i32* %hash_table_size.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  store i32 %0, i32* %hash, align 4
  %1 = load i32, i32* %hash, align 4
  %2 = load i32, i32* %hash_table_size.addr, align 4
  %rem = urem i32 %1, %2
  ret i32 %rem
}

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @handle_rd_kill_set(%struct.rtx_def* %insn, i32 %regno, %struct.basic_block_def* %bb) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %this_reg = alloca %struct.reg_set*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %1, i64 %idxprom
  %2 = load %struct.reg_set*, %struct.reg_set** %arrayidx, align 8
  store %struct.reg_set* %2, %struct.reg_set** %this_reg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %tobool = icmp ne %struct.reg_set* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn1 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %6 = load i32, i32* %rtint, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index, align 4
  %add = add nsw i32 %9, 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %11 = load i32, i32* %rtint8, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data10 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %bb11 = bitcast %union.varray_data_tag* %data10 to [1 x %struct.basic_block_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb11, i32 0, i64 %idxprom9
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx12, align 8
  %index13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index13, align 4
  %add14 = add nsw i32 %14, 0
  %cmp = icmp ne i32 %add, %add14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn15 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %17 = load i32, i32* %rtint18, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32*, i32** @uid_cuid, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %rem = urem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %20 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn21 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %22 = load i32, i32* %rtint24, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i32*, i32** @uid_cuid, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %23, i64 %idxprom25
  %24 = load i32, i32* %arrayidx26, align 4
  %div = udiv i32 %24, 64
  %idxprom27 = zext i32 %div to i64
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index28, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @rd_kill, align 8
  %arrayidx30 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %27, i64 %idxprom29
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx30, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %28, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom27
  %29 = load i64, i64* %arrayidx31, align 8
  %or = or i64 %29, %shl
  store i64 %or, i64* %arrayidx31, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %next = getelementptr inbounds %struct.reg_set, %struct.reg_set* %30, i32 0, i32 0
  %31 = load %struct.reg_set*, %struct.reg_set** %next, align 8
  store %struct.reg_set* %31, %struct.reg_set** %this_reg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_union_of_preds(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) #1

declare i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @expr_killed_p(%struct.rtx_def* %x, %struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 61, label %sw.bb
    i32 66, label %sw.bb.7
    i32 59, label %sw.bb.13
    i32 69, label %sw.bb.13
    i32 58, label %sw.bb.13
    i32 54, label %sw.bb.13
    i32 55, label %sw.bb.13
    i32 56, label %sw.bb.13
    i32 68, label %sw.bb.13
    i32 67, label %sw.bb.13
    i32 44, label %sw.bb.13
    i32 45, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %div = udiv i32 %5, 64
  %idxprom = zext i32 %div to i64
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %8, i64 %idxprom1
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %9, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx3, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %12 = load i32, i32* %rtuint6, align 4
  %rem = urem i32 %12, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %10, %sh_prom
  %and = and i64 %shr, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %if.end
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call = call i32 @get_max_uid()
  %add = add nsw i32 %call, 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call8 = call i32 @load_killed_in_block_p(%struct.basic_block_def* %13, i32 %add, %struct.rtx_def* %14, i32 0)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb.7
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call12 = call i32 @expr_killed_p(%struct.rtx_def* %16, %struct.basic_block_def* %17)
  store i32 %call12, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %18 = load i32, i32* %code, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom14
  %19 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %19 to i32
  %sub = sub nsw i32 %conv16, 1
  store i32 %sub, i32* %i, align 4
  %20 = load i32, i32* %code, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom17
  %21 = load i8*, i8** %arrayidx18, align 8
  store i8* %21, i8** %fmt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %sw.epilog
  %22 = load i32, i32* %i, align 4
  %cmp19 = icmp sge i32 %22, 0
  br i1 %cmp19, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i8*, i8** %fmt, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom21
  %25 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp eq i32 %conv23, 101
  br i1 %cmp24, label %if.then.26, label %if.else.45

if.then.26:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %cmp27 = icmp eq i32 %26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.then.26
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 %idxprom30
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call34 = call i32 @expr_killed_p(%struct.rtx_def* %29, %struct.basic_block_def* %30)
  store i32 %call34, i32* %retval
  br label %return

if.else.35:                                       ; preds = %if.then.26
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 %idxprom36
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call40 = call i32 @expr_killed_p(%struct.rtx_def* %33, %struct.basic_block_def* %34)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.35
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.else.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %if.end.70

if.else.45:                                       ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %36 = load i8*, i8** %fmt, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %36, i64 %idxprom46
  %37 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %37 to i32
  %cmp49 = icmp eq i32 %conv48, 69
  br i1 %cmp49, label %if.then.51, label %if.end.69

if.then.51:                                       ; preds = %if.else.45
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.then.51
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 %idxprom53
  %rtvec = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 0
  %42 = load i32, i32* %num_elem, align 4
  %cmp56 = icmp slt i32 %38, %42
  br i1 %cmp56, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.52
  %43 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %44 to i64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 %idxprom60
  %rtvec63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtvec_def**
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec63, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %46, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom59
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx64, align 8
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call65 = call i32 @expr_killed_p(%struct.rtx_def* %47, %struct.basic_block_def* %48)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.body.58
  store i32 1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %for.body.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  br label %if.end.69

if.end.69:                                        ; preds = %for.end, %if.else.45
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.44
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %50 = load i32, i32* %i, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.72, %if.then.67, %if.then.42, %if.then.29, %sw.bb.13, %if.else, %if.then.9, %sw.bb, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @reset_opr_set_tables() #0 {
entry:
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %0)
  call void @clear_modify_mem_tables()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.expr* @lookup_expr(%struct.rtx_def* %pat) #0 {
entry:
  %retval = alloca %struct.expr*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %do_not_record_p = alloca i32, align 4
  %hash = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %3 = load i32, i32* @expr_hash_table_size, align 4
  %call = call i32 @hash_expr(%struct.rtx_def* %0, i32 %bf.clear, i32* %do_not_record_p, i32 %3)
  store i32 %call, i32* %hash, align 4
  %4 = load i32, i32* %do_not_record_p, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.expr* null, %struct.expr** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %6, i64 %idxprom
  %7 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %7, %struct.expr** %expr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct.expr*, %struct.expr** %expr, align 8
  %tobool1 = icmp ne %struct.expr* %8, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr2 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %expr2, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %call3 = call i32 @expr_equiv_p(%struct.rtx_def* %10, %struct.rtx_def* %11)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 2
  %14 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %14, %struct.expr** %expr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.expr*, %struct.expr** %expr, align 8
  store %struct.expr* %15, %struct.expr** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %16 = load %struct.expr*, %struct.expr** %retval
  ret %struct.expr* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @oprs_not_set_p(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 58, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 66, label %sw.bb.1
    i32 61, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx2, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %9 = load i32, i32* %rtint5, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** @uid_cuid, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @load_killed_in_block_p(%struct.basic_block_def* %7, i32 %11, %struct.rtx_def* %12, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %sw.bb.1
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call11 = call i32 @oprs_not_set_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  store i32 %call11, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %if.end
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %18 = load i32, i32* %rtuint, align 4
  %call15 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %16, i32 %18)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %19 = load i32, i32* %code, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom17
  %20 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %20 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  %21 = load i32, i32* %code, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom19
  %22 = load i8*, i8** %arrayidx20, align 8
  store i8* %22, i8** %fmt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.72, %sw.epilog
  %23 = load i32, i32* %i, align 4
  %cmp21 = icmp sge i32 %23, 0
  br i1 %cmp21, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load i8*, i8** %fmt, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %idxprom23
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 101
  br i1 %cmp26, label %if.then.28, label %if.else.46

if.then.28:                                       ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %27, 0
  br i1 %cmp29, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.then.28
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom32
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call36 = call i32 @oprs_not_set_p(%struct.rtx_def* %30, %struct.rtx_def* %31)
  store i32 %call36, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.28
  %32 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 %idxprom38
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call42 = call i32 @oprs_not_set_p(%struct.rtx_def* %34, %struct.rtx_def* %35)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.37
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.37
  br label %if.end.71

if.else.46:                                       ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %36 to i64
  %37 = load i8*, i8** %fmt, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %37, i64 %idxprom47
  %38 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %38 to i32
  %cmp50 = icmp eq i32 %conv49, 69
  br i1 %cmp50, label %if.then.52, label %if.end.70

if.then.52:                                       ; preds = %if.else.46
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.then.52
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 %idxprom54
  %rtvec = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 0
  %43 = load i32, i32* %num_elem, align 4
  %cmp57 = icmp slt i32 %39, %43
  br i1 %cmp57, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.53
  %44 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 %idxprom61
  %rtvec64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec64, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom60
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call66 = call i32 @oprs_not_set_p(%struct.rtx_def* %48, %struct.rtx_def* %49)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.body.59
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.body.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %50 = load i32, i32* %j, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %if.else.46
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.45
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %51 = load i32, i32* %i, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.73, %if.then.68, %if.then.44, %if.then.31, %sw.bb.12, %if.else, %if.then.8, %sw.bb, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @handle_avail_expr(%struct.rtx_def* %insn, %struct.expr* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %insn_computes_expr = alloca %struct.rtx_def*, align 8
  %expr_set = alloca %struct.rtx_def*, align 8
  %to = alloca %struct.rtx_def*, align 8
  %this_reg = alloca %struct.reg_set*, align 8
  %found_setting = alloca i32, align 4
  %use_src = alloca i32, align 4
  %changed = alloca i32, align 4
  %regnum_for_replacing = alloca i32, align 4
  %regnum_for_replacing48 = alloca i32, align 4
  %new_insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @computing_insn(%struct.expr* %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn_computes_expr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 105
  br i1 %cmp1, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 47
  br i1 %cmp6, label %cond.true.8, label %cond.false

cond.true.8:                                      ; preds = %cond.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %call15 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %11, %struct.rtx_def* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.8
  %cond = phi %struct.rtx_def* [ %10, %cond.true.8 ], [ %call15, %cond.false ]
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.end
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.16 ]
  store %struct.rtx_def* %cond18, %struct.rtx_def** %expr_set, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %tobool = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %cond.end.17
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 3465, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.handle_avail_expr, i32 0, i32 0)) #7
  unreachable

if.end.20:                                        ; preds = %cond.end.17
  store i32 0, i32* %found_setting, align 4
  store i32 0, i32* %use_src, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 61
  br i1 %cmp26, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %if.end.20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %20 = load i32, i32* %rtuint, align 4
  store i32 %20, i32* %regnum_for_replacing, align 4
  %21 = load i32, i32* %regnum_for_replacing, align 4
  %22 = load i32, i32* @max_gcse_regno, align 4
  %cmp34 = icmp uge i32 %21, %22
  br i1 %cmp34, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.28
  %23 = load i32, i32* %regnum_for_replacing, align 4
  %idxprom36 = zext i32 %23 to i64
  %24 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx37 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %24, i64 %idxprom36
  %25 = load %struct.reg_set*, %struct.reg_set** %arrayidx37, align 8
  store %struct.reg_set* %25, %struct.reg_set** %this_reg, align 8
  %26 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %next = getelementptr inbounds %struct.reg_set, %struct.reg_set* %26, i32 0, i32 0
  %27 = load %struct.reg_set*, %struct.reg_set** %next, align 8
  %cmp38 = icmp eq %struct.reg_set* %27, null
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call41 = call i32 @can_disregard_other_sets(%struct.reg_set** %this_reg, %struct.rtx_def* %28, i32 0)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false, %if.then.28
  store i32 1, i32* %use_src, align 4
  store i32 1, i32* %found_setting, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %lor.lhs.false.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.20
  %29 = load i32, i32* %found_setting, align 4
  %tobool46 = icmp ne i32 %29, 0
  br i1 %tobool46, label %if.end.69, label %if.then.47

if.then.47:                                       ; preds = %if.end.45
  %30 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtuint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %32 = load i32, i32* %rtuint54, align 4
  store i32 %32, i32* %regnum_for_replacing48, align 4
  %33 = load i32, i32* %regnum_for_replacing48, align 4
  %34 = load i32, i32* @max_gcse_regno, align 4
  %cmp55 = icmp uge i32 %33, %34
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.47
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 3501, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.handle_avail_expr, i32 0, i32 0)) #7
  unreachable

if.end.58:                                        ; preds = %if.then.47
  %35 = load i32, i32* %regnum_for_replacing48, align 4
  %idxprom59 = zext i32 %35 to i64
  %36 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx60 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %36, i64 %idxprom59
  %37 = load %struct.reg_set*, %struct.reg_set** %arrayidx60, align 8
  store %struct.reg_set* %37, %struct.reg_set** %this_reg, align 8
  %38 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %next61 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %38, i32 0, i32 0
  %39 = load %struct.reg_set*, %struct.reg_set** %next61, align 8
  %cmp62 = icmp eq %struct.reg_set* %39, null
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %if.end.58
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call65 = call i32 @can_disregard_other_sets(%struct.reg_set** %this_reg, %struct.rtx_def* %40, i32 0)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false.64, %if.end.58
  store i32 1, i32* %found_setting, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %lor.lhs.false.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.45
  %41 = load i32, i32* %found_setting, align 4
  %tobool70 = icmp ne i32 %41, 0
  br i1 %tobool70, label %if.then.71, label %if.else.107

if.then.71:                                       ; preds = %if.end.69
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 3
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %pat, align 8
  %44 = load i32, i32* %use_src, align 4
  %tobool75 = icmp ne i32 %44, 0
  br i1 %tobool75, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.then.71
  %45 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 1
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %to, align 8
  br label %if.end.83

if.else:                                          ; preds = %if.then.71
  %47 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %to, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else, %if.then.76
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %call87 = call i32 @validate_change(%struct.rtx_def* %49, %struct.rtx_def** %rtx86, %struct.rtx_def* %51, i32 0)
  store i32 %call87, i32* %changed, align 4
  %52 = load i32, i32* %changed, align 4
  %tobool88 = icmp ne i32 %52, 0
  br i1 %tobool88, label %if.then.89, label %if.end.106

if.then.89:                                       ; preds = %if.end.83
  %53 = load i32, i32* @gcse_subst_count, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* @gcse_subst_count, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp90 = icmp ne %struct._IO_FILE* %54, null
  br i1 %cmp90, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %if.then.89
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx94 to i32*
  %57 = load i32, i32* %rtint, align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i32 %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtuint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %60 = load i32, i32* %rtuint98, align 4
  %61 = load i32, i32* %use_src, align 4
  %tobool99 = icmp ne i32 %61, 0
  %cond100 = select i1 %tobool99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %63 = load i32, i32* %rtint103, align 4
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 %60, i8* %cond100, i32 %63)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.92, %if.then.89
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.83
  br label %if.end.198

if.else.107:                                      ; preds = %if.end.69
  %64 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load111 = load i32, i32* %66, align 8
  %bf.lshr = lshr i32 %bf.load111, 16
  %bf.clear112 = and i32 %bf.lshr, 255
  %call113 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear112)
  store %struct.rtx_def* %call113, %struct.rtx_def** %to, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %expr_set, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %call117 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %67, %struct.rtx_def* %69)
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %call118 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call117, %struct.rtx_def* %70)
  store %struct.rtx_def* %call118, %struct.rtx_def** %new_insn, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtuint121 = bitcast %union.rtunion_def* %arrayidx120 to i32*
  %72 = load i32, i32* %rtuint121, align 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  call void @record_one_set(i32 %72, %struct.rtx_def* %73)
  %74 = load i32, i32* @gcse_create_count, align 4
  %inc122 = add nsw i32 %74, 1
  store i32 %inc122, i32* @gcse_create_count, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp123 = icmp ne %struct._IO_FILE* %75, null
  br i1 %cmp123, label %if.then.125, label %if.end.153

if.then.125:                                      ; preds = %if.else.107
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 2
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %79 = load i32, i32* %rtint131, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 2
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 3
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 1
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx140, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtuint143 = bitcast %union.rtunion_def* %arrayidx142 to i32*
  %84 = load i32, i32* %rtuint143, align 4
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %79, i32 %84)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtint147 = bitcast %union.rtunion_def* %arrayidx146 to i32*
  %87 = load i32, i32* %rtint147, align 4
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0), i32 %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtuint151 = bitcast %union.rtunion_def* %arrayidx150 to i32*
  %90 = load i32, i32* %rtuint151, align 4
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i32 %90)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.125, %if.else.107
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 3
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %pat, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 1
  %rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 2
  %rtx162 = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx162, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 3
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  %call169 = call i32 @validate_change(%struct.rtx_def* %93, %struct.rtx_def** %rtx159, %struct.rtx_def* %98, i32 0)
  store i32 %call169, i32* %changed, align 4
  %99 = load i32, i32* %changed, align 4
  %tobool170 = icmp ne i32 %99, 0
  br i1 %tobool170, label %if.then.171, label %if.end.197

if.then.171:                                      ; preds = %if.end.153
  %100 = load i32, i32* @gcse_subst_count, align 4
  %inc172 = add nsw i32 %100, 1
  store i32 %inc172, i32* @gcse_subst_count, align 4
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp173 = icmp ne %struct._IO_FILE* %101, null
  br i1 %cmp173, label %if.then.175, label %if.end.196

if.then.175:                                      ; preds = %if.then.171
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtint178 = bitcast %union.rtunion_def* %arrayidx177 to i32*
  %104 = load i32, i32* %rtint178, align 4
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 2
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 3
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 0
  %rtx187 = bitcast %union.rtunion_def* %arrayidx186 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx187, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 0
  %rtuint190 = bitcast %union.rtunion_def* %arrayidx189 to i32*
  %109 = load i32, i32* %rtuint190, align 4
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0), i32 %104, i32 %109)
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtint194 = bitcast %union.rtunion_def* %arrayidx193 to i32*
  %112 = load i32, i32* %rtint194, align 4
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 %112)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.175, %if.then.171
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.153
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.end.106
  %113 = load i32, i32* %changed, align 4
  store i32 %113, i32* %retval
  br label %return

return:                                           ; preds = %if.end.198, %if.then
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal void @mark_oprs_set(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_set(%struct.rtx_def* %4, %struct.rtx_def* %5)
  br label %if.end.41

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 39
  br i1 %cmp3, label %if.then.4, label %if.else.28

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 0
  %11 = load i32, i32* %num_elem, align 4
  %cmp7 = icmp slt i32 %8, %11
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtvec10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec10, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %x, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load12 = load i32, i32* %17, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 47
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_set(%struct.rtx_def* %18, %struct.rtx_def* %19)
  br label %if.end.27

if.else.16:                                       ; preds = %for.body
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load17 = load i32, i32* %21, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 49
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.16
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_clobber(%struct.rtx_def* %22, %struct.rtx_def* %23)
  br label %if.end.26

if.else.21:                                       ; preds = %if.else.16
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load22 = load i32, i32* %25, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 50
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else.21
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_call(%struct.rtx_def* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.else.28:                                       ; preds = %if.else
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load29 = load i32, i32* %29, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 49
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.28
  %30 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_clobber(%struct.rtx_def* %30, %struct.rtx_def* %31)
  br label %if.end.39

if.else.33:                                       ; preds = %if.else.28
  %32 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load34 = load i32, i32* %33, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 50
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.33
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_call(%struct.rtx_def* %34)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  ret void
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @computing_insn(%struct.expr* %expr, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %occr = alloca %struct.occr*, align 8
  %insn_computes_expr = alloca %struct.rtx_def*, align 8
  %can_reach = alloca i32, align 4
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx2, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %bb, align 8
  %4 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %4, i32 0, i32 4
  %5 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %5, i32 0, i32 0
  %6 = load %struct.occr*, %struct.occr** %next, align 8
  %cmp = icmp eq %struct.occr* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %avail_occr3 = getelementptr inbounds %struct.expr, %struct.expr* %7, i32 0, i32 4
  %8 = load %struct.occr*, %struct.occr** %avail_occr3, align 8
  %insn4 = getelementptr inbounds %struct.occr, %struct.occr* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %10 = load i32, i32* %rtint7, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb10 = bitcast %union.varray_data_tag* %data9 to [1 x %struct.basic_block_def*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb10, i32 0, i64 %idxprom8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %cmp12 = icmp eq %struct.basic_block_def* %12, %13
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %avail_occr14 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 4
  %15 = load %struct.occr*, %struct.occr** %avail_occr14, align 8
  %insn15 = getelementptr inbounds %struct.occr, %struct.occr* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn15, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %insn_computes_expr, align 8
  store i32 0, i32* %can_reach, align 4
  %17 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %avail_occr16 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 4
  %18 = load %struct.occr*, %struct.occr** %avail_occr16, align 8
  store %struct.occr* %18, %struct.occr** %occr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %19 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp17 = icmp ne %struct.occr* %19, null
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn18 = getelementptr inbounds %struct.occr, %struct.occr* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %22 = load i32, i32* %rtint21, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data23 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %bb24 = bitcast %union.varray_data_tag* %data23 to [1 x %struct.basic_block_def*]*
  %arrayidx25 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb24, i32 0, i64 %idxprom22
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx25, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %cmp26 = icmp eq %struct.basic_block_def* %24, %25
  br i1 %cmp26, label %if.then.27, label %if.else.46

if.then.27:                                       ; preds = %for.body
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %27 = load i32, i32* %rtint30, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i32*, i32** @uid_cuid, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %28, i64 %idxprom31
  %29 = load i32, i32* %arrayidx32, align 4
  %30 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn33 = getelementptr inbounds %struct.occr, %struct.occr* %30, i32 0, i32 1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtint36 = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %32 = load i32, i32* %rtint36, align 4
  %idxprom37 = sext i32 %32 to i64
  %33 = load i32*, i32** @uid_cuid, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %33, i64 %idxprom37
  %34 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp slt i32 %29, %34
  br i1 %cmp39, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.then.27
  %35 = load %struct.occr*, %struct.occr** %occr, align 8
  %36 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call = call i32 @expr_reaches_here_p(%struct.occr* %35, %struct.expr* %36, %struct.basic_block_def* %37, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %can_reach, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %can_reach, align 4
  %39 = load i32, i32* %can_reach, align 4
  %cmp41 = icmp sgt i32 %39, 1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.40
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.40
  %40 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn44 = getelementptr inbounds %struct.occr, %struct.occr* %40, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn44, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn_computes_expr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %land.lhs.true, %if.then.27
  br label %if.end.56

if.else.46:                                       ; preds = %for.body
  %42 = load %struct.occr*, %struct.occr** %occr, align 8
  %43 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call47 = call i32 @expr_reaches_here_p(%struct.occr* %42, %struct.expr* %43, %struct.basic_block_def* %44, i32 0)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %if.else.46
  %45 = load i32, i32* %can_reach, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %can_reach, align 4
  %46 = load i32, i32* %can_reach, align 4
  %cmp51 = icmp sgt i32 %46, 1
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.49
  %47 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn54 = getelementptr inbounds %struct.occr, %struct.occr* %47, i32 0, i32 1
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn54, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %insn_computes_expr, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %if.else.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %49 = load %struct.occr*, %struct.occr** %occr, align 8
  %next57 = getelementptr inbounds %struct.occr, %struct.occr* %49, i32 0, i32 0
  %50 = load %struct.occr*, %struct.occr** %next57, align 8
  store %struct.occr* %50, %struct.occr** %occr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  %cmp58 = icmp eq %struct.rtx_def* %51, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 3353, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.computing_insn, i32 0, i32 0)) #7
  unreachable

if.end.60:                                        ; preds = %for.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn_computes_expr, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.52, %if.then.42, %if.end, %if.then.13
  %53 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %53
}

; Function Attrs: nounwind uwtable
define internal i32 @can_disregard_other_sets(%struct.reg_set** %addr_this_reg, %struct.rtx_def* %insn, i32 %for_combine) #0 {
entry:
  %retval = alloca i32, align 4
  %addr_this_reg.addr = alloca %struct.reg_set**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %for_combine.addr = alloca i32, align 4
  %number_of_reaching_defs = alloca i32, align 4
  %this_reg = alloca %struct.reg_set*, align 8
  store %struct.reg_set** %addr_this_reg, %struct.reg_set*** %addr_this_reg.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %for_combine, i32* %for_combine.addr, align 4
  store i32 0, i32* %number_of_reaching_defs, align 4
  %0 = load %struct.reg_set**, %struct.reg_set*** %addr_this_reg.addr, align 8
  %1 = load %struct.reg_set*, %struct.reg_set** %0, align 8
  store %struct.reg_set* %1, %struct.reg_set** %this_reg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %cmp = icmp ne %struct.reg_set* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn1 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %call = call i32 @def_reaches_here_p(%struct.rtx_def* %3, %struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.59

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %number_of_reaching_defs, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %number_of_reaching_defs, align 4
  %7 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn2 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 39
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %for_combine.addr, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.end.29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn6 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load10 = load i32, i32* %15, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 49
  br i1 %cmp12, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn13 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %call26 = call i32 @rtx_equal_p(%struct.rtx_def* %19, %struct.rtx_def* %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false, %if.end
  %23 = load i32, i32* %number_of_reaching_defs, align 4
  %cmp30 = icmp sgt i32 %23, 1
  br i1 %cmp30, label %if.then.31, label %if.end.58

if.then.31:                                       ; preds = %if.end.29
  %24 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn32 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %24, i32 0, i32 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load36 = load i32, i32* %27, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 49
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.31
  %28 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %insn40 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 1
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %call53 = call i32 @rtx_equal_p(%struct.rtx_def* %31, %struct.rtx_def* %34)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.29
  %35 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %36 = load %struct.reg_set**, %struct.reg_set*** %addr_this_reg.addr, align 8
  store %struct.reg_set* %35, %struct.reg_set** %36, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %37 = load %struct.reg_set*, %struct.reg_set** %this_reg, align 8
  %next = getelementptr inbounds %struct.reg_set, %struct.reg_set* %37, i32 0, i32 0
  %38 = load %struct.reg_set*, %struct.reg_set** %next, align 8
  store %struct.reg_set* %38, %struct.reg_set** %this_reg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %number_of_reaching_defs, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.55, %if.then.39, %if.then.28, %if.then.4
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @expr_reaches_here_p(%struct.occr* %occr, %struct.expr* %expr, %struct.basic_block_def* %bb, i32 %check_self_loop) #0 {
entry:
  %occr.addr = alloca %struct.occr*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %check_self_loop.addr = alloca i32, align 4
  %rval = alloca i32, align 4
  %visited = alloca i8*, align 8
  store %struct.occr* %occr, %struct.occr** %occr.addr, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %check_self_loop, i32* %check_self_loop.addr, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 1)
  store i8* %call, i8** %visited, align 8
  %1 = load %struct.occr*, %struct.occr** %occr.addr, align 8
  %2 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %4 = load i32, i32* %check_self_loop.addr, align 4
  %5 = load i8*, i8** %visited, align 8
  %call1 = call i32 @expr_reaches_here_p_work(%struct.occr* %1, %struct.expr* %2, %struct.basic_block_def* %3, i32 %4, i8* %5)
  store i32 %call1, i32* %rval, align 4
  %6 = load i8*, i8** %visited, align 8
  call void @free(i8* %6) #2
  %7 = load i32, i32* %rval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @expr_reaches_here_p_work(%struct.occr* %occr, %struct.expr* %expr, %struct.basic_block_def* %bb, i32 %check_self_loop, i8* %visited) #0 {
entry:
  %retval = alloca i32, align 4
  %occr.addr = alloca %struct.occr*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %check_self_loop.addr = alloca i32, align 4
  %visited.addr = alloca i8*, align 8
  %pred = alloca %struct.edge_def*, align 8
  %pred_bb = alloca %struct.basic_block_def*, align 8
  store %struct.occr* %occr, %struct.occr** %occr.addr, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %check_self_loop, i32* %check_self_loop.addr, align 4
  store i8* %visited, i8** %visited.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 4
  %1 = load %struct.edge_def*, %struct.edge_def** %pred1, align 8
  store %struct.edge_def* %1, %struct.edge_def** %pred, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp = icmp ne %struct.edge_def* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %pred_bb, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %visited.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end.86

if.else:                                          ; preds = %for.body
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp2 = icmp eq %struct.basic_block_def* %9, %10
  br i1 %cmp2, label %if.then.3, label %if.else.24

if.then.3:                                        ; preds = %if.else
  %11 = load i32, i32* %check_self_loop.addr, align 4
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.3
  %12 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 1
  %13 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %13, 64
  %idxprom5 = zext i32 %div to i64
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index6, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %16, i64 %idxprom7
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom5
  %18 = load i64, i64* %arrayidx9, align 8
  %19 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index10 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 1
  %20 = load i32, i32* %bitmap_index10, align 4
  %rem = urem i32 %20, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %18, %sh_prom
  %and = and i64 %shr, 1
  %tobool11 = icmp ne i64 %and, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %21 = load %struct.occr*, %struct.occr** %occr.addr, align 8
  %insn = getelementptr inbounds %struct.occr, %struct.occr* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %23 = load i32, i32* %rtint, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %bb15 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb15, i32 0, i64 %idxprom14
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx16, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index17, align 4
  %add = add nsw i32 %26, 0
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index18, align 4
  %cmp19 = icmp eq i32 %add, %28
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.12
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true, %if.then.3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 11
  %30 = load i32, i32* %index21, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = load i8*, i8** %visited.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  store i8 1, i8* %arrayidx23, align 1
  br label %if.end.85

if.else.24:                                       ; preds = %if.else
  %32 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index25 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 1
  %33 = load i32, i32* %bitmap_index25, align 4
  %div26 = udiv i32 %33, 64
  %idxprom27 = zext i32 %div26 to i64
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index28, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %arrayidx30 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %36, i64 %idxprom29
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx30, align 8
  %elms31 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %37, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [1 x i64], [1 x i64]* %elms31, i32 0, i64 %idxprom27
  %38 = load i64, i64* %arrayidx32, align 8
  %39 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index33 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 1
  %40 = load i32, i32* %bitmap_index33, align 4
  %rem34 = urem i32 %40, 64
  %sh_prom35 = zext i32 %rem34 to i64
  %shr36 = lshr i64 %38, %sh_prom35
  %and37 = and i64 %shr36, 1
  %tobool38 = icmp ne i64 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.else.24
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index40, align 4
  %idxprom41 = sext i32 %42 to i64
  %43 = load i8*, i8** %visited.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %43, i64 %idxprom41
  store i8 1, i8* %arrayidx42, align 1
  br label %if.end.84

if.else.43:                                       ; preds = %if.else.24
  %44 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index44 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %45 = load i32, i32* %bitmap_index44, align 4
  %div45 = udiv i32 %45, 64
  %idxprom46 = zext i32 %div45 to i64
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 11
  %47 = load i32, i32* %index47, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_gen, align 8
  %arrayidx49 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %48, i64 %idxprom48
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx49, align 8
  %elms50 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %49, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [1 x i64], [1 x i64]* %elms50, i32 0, i64 %idxprom46
  %50 = load i64, i64* %arrayidx51, align 8
  %51 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index52 = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 1
  %52 = load i32, i32* %bitmap_index52, align 4
  %rem53 = urem i32 %52, 64
  %sh_prom54 = zext i32 %rem53 to i64
  %shr55 = lshr i64 %50, %sh_prom54
  %and56 = and i64 %shr55, 1
  %tobool57 = icmp ne i64 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.76

if.then.58:                                       ; preds = %if.else.43
  %53 = load %struct.occr*, %struct.occr** %occr.addr, align 8
  %insn59 = getelementptr inbounds %struct.occr, %struct.occr* %53, i32 0, i32 1
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn59, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %55 = load i32, i32* %rtint62, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data64 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %bb65 = bitcast %union.varray_data_tag* %data64 to [1 x %struct.basic_block_def*]*
  %arrayidx66 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb65, i32 0, i64 %idxprom63
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx66, align 8
  %index67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 11
  %58 = load i32, i32* %index67, align 4
  %add68 = add nsw i32 %58, 0
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i32 0, i32 11
  %60 = load i32, i32* %index69, align 4
  %cmp70 = icmp eq i32 %add68, %60
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.58
  store i32 1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.58
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index73 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 11
  %62 = load i32, i32* %index73, align 4
  %idxprom74 = sext i32 %62 to i64
  %63 = load i8*, i8** %visited.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %63, i64 %idxprom74
  store i8 1, i8* %arrayidx75, align 1
  br label %if.end.83

if.else.76:                                       ; preds = %if.else.43
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index77 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index77, align 4
  %idxprom78 = sext i32 %65 to i64
  %66 = load i8*, i8** %visited.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %66, i64 %idxprom78
  store i8 1, i8* %arrayidx79, align 1
  %67 = load %struct.occr*, %struct.occr** %occr.addr, align 8
  %68 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %70 = load i32, i32* %check_self_loop.addr, align 4
  %71 = load i8*, i8** %visited.addr, align 8
  %call = call i32 @expr_reaches_here_p_work(%struct.occr* %67, %struct.expr* %68, %struct.basic_block_def* %69, i32 %70, i8* %71)
  %tobool80 = icmp ne i32 %call, 0
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.76
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.else.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.72
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.39
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %72 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i32 0, i32 0
  %73 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %73, %struct.edge_def** %pred, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.81, %if.then.71, %if.then.20
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @def_reaches_here_p(%struct.rtx_def* %insn, %struct.rtx_def* %def_insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %def_insn.addr = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %def_insn, %struct.rtx_def** %def_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** @uid_cuid, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx1, align 4
  %div = udiv i32 %3, 64
  %idxprom2 = zext i32 %div to i64
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %5 = load i32, i32* %rtint5, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom6
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index, align 4
  %add = add nsw i32 %8, 0
  %idxprom8 = sext i32 %add to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reaching_defs, align 8
  %arrayidx9 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom8
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx9, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom2
  %11 = load i64, i64* %arrayidx10, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %13 = load i32, i32* %rtint13, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32*, i32** @uid_cuid, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %14, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %rem = urem i32 %15, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %11, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %17 = load i32, i32* %rtint18, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb21 = bitcast %union.varray_data_tag* %data20 to [1 x %struct.basic_block_def*]*
  %arrayidx22 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb21, i32 0, i64 %idxprom19
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx22, align 8
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index23, align 4
  %add24 = add nsw i32 %20, 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %22 = load i32, i32* %rtint27, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data29 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %bb30 = bitcast %union.varray_data_tag* %data29 to [1 x %struct.basic_block_def*]*
  %arrayidx31 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb30, i32 0, i64 %idxprom28
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx31, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index32, align 4
  %add33 = add nsw i32 %25, 0
  %cmp = icmp eq i32 %add24, %add33
  br i1 %cmp, label %if.then.34, label %if.end.87

if.then.34:                                       ; preds = %if.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %27 = load i32, i32* %rtint37, align 4
  %idxprom38 = sext i32 %27 to i64
  %28 = load i32*, i32** @uid_cuid, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %28, i64 %idxprom38
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %31 = load i32, i32* %rtint42, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load i32*, i32** @uid_cuid, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %32, i64 %idxprom43
  %33 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp slt i32 %29, %33
  br i1 %cmp45, label %if.then.46, label %if.else.86

if.then.46:                                       ; preds = %if.then.34
  %34 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load = load i32, i32* %36, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp49 = icmp eq i32 %bf.clear, 39
  br i1 %cmp49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.then.46
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.46
  %37 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 3
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load54 = load i32, i32* %39, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 49
  br i1 %cmp56, label %if.then.57, label %if.else.64

if.then.57:                                       ; preds = %if.else
  %40 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 3
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %reg, align 8
  br label %if.end.80

if.else.64:                                       ; preds = %if.else
  %43 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 3
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load68 = load i32, i32* %45, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 47
  br i1 %cmp70, label %if.then.71, label %if.else.78

if.then.71:                                       ; preds = %if.else.64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 3
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %reg, align 8
  br label %if.end.79

if.else.78:                                       ; preds = %if.else.64
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 3382, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.def_reaches_here_p, i32 0, i32 0)) #7
  unreachable

if.end.79:                                        ; preds = %if.then.71
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.57
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 2
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @reg_set_between_p(%struct.rtx_def* %49, %struct.rtx_def* %51, %struct.rtx_def* %52)
  %tobool85 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool85, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.else.86:                                       ; preds = %if.then.34
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.else.86, %if.end.81, %if.then.50, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_set_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_set(%struct.rtx_def* %pat, %struct.rtx_def* %insn) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 133
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 132
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %while.cond
  %10 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load14 = load i32, i32* %14, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %17 = load i32, i32* %rtuint, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %15, i32 %17)
  br label %if.end.23

if.else:                                          ; preds = %while.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load19 = load i32, i32* %19, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 66
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @record_last_mem_set_info(%struct.rtx_def* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load27 = load i32, i32* %23, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 50
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.23
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_call(%struct.rtx_def* %24)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_clobber(%struct.rtx_def* %pat, %struct.rtx_def* %insn) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %clob = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %clob, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %clob, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %clob, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %clob, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %clob, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %clob, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 61
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_set_bitmap, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %clob, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %13 = load i32, i32* %rtuint, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 %13)
  br label %if.end

if.else:                                          ; preds = %while.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @record_last_mem_set_info(%struct.rtx_def* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_set_hash_table(i32 %n_insns) #0 {
entry:
  %n_insns.addr = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %n_insns, i32* %n_insns.addr, align 4
  %0 = load i32, i32* %n_insns.addr, align 4
  %div = sdiv i32 %0, 4
  store i32 %div, i32* @set_hash_table_size, align 4
  %1 = load i32, i32* @set_hash_table_size, align 4
  %cmp = icmp ult i32 %1, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 11, i32* @set_hash_table_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @set_hash_table_size, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* @set_hash_table_size, align 4
  %3 = load i32, i32* @set_hash_table_size, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %call = call i8* @gmalloc(i32 %4)
  %5 = bitcast i8* %call to %struct.expr**
  store %struct.expr** %5, %struct.expr*** @set_hash_table, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_set_hash_table() #0 {
entry:
  store i32 0, i32* @n_sets, align 4
  %0 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %1 = bitcast %struct.expr** %0 to i8*
  %2 = load i32, i32* @set_hash_table_size, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 1, i1 false)
  call void @compute_hash_table(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_cprop_mem(i32 %n_blocks, i32 %n_sets) #0 {
entry:
  %n_blocks.addr = alloca i32, align 4
  %n_sets.addr = alloca i32, align 4
  store i32 %n_blocks, i32* %n_blocks.addr, align 4
  store i32 %n_sets, i32* %n_sets.addr, align 4
  %0 = load i32, i32* %n_blocks.addr, align 4
  %1 = load i32, i32* %n_sets.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @cprop_pavloc, align 8
  %2 = load i32, i32* %n_blocks.addr, align 4
  %3 = load i32, i32* %n_sets.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @cprop_absaltered, align 8
  %4 = load i32, i32* %n_blocks.addr, align 4
  %5 = load i32, i32* %n_sets.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @cprop_avin, align 8
  %6 = load i32, i32* %n_blocks.addr, align 4
  %7 = load i32, i32* %n_sets.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** @cprop_avout, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_cprop_data() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_absaltered, align 8
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_pavloc, align 8
  call void @compute_local_properties(%struct.simple_bitmap_def** %0, %struct.simple_bitmap_def** %1, %struct.simple_bitmap_def** null, i32 1)
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_pavloc, align 8
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_absaltered, align 8
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_avout, align 8
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_avin, align 8
  call void @compute_available(%struct.simple_bitmap_def** %2, %struct.simple_bitmap_def** %3, %struct.simple_bitmap_def** %4, %struct.simple_bitmap_def** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cprop(i32 %alter_jumps) #0 {
entry:
  %alter_jumps.addr = alloca i32, align 4
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store i32 %alter_jumps, i32* %alter_jumps.addr, align 4
  store i32 0, i32* %changed, align 4
  store i32 1, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  call void @reset_opr_set_tables()
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp3 = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load i32, i32* %bb, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp9 = icmp ne %struct.rtx_def* %7, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp9, %land.rhs ]
  br i1 %13, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %land.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom11 = sext i32 %bf.clear to i64
  %arrayidx12 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv, 105
  br i1 %cmp13, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body.10
  %17 = load i32, i32* %bb, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom15
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = load i32, i32* %alter_jumps.addr, align 4
  %call = call i32 @cprop_insn(%struct.basic_block_def* %19, %struct.rtx_def* %20, i32 %21)
  %22 = load i32, i32* %changed, align 4
  %or = or i32 %22, %call
  store i32 %or, i32* %changed, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load19 = load i32, i32* %24, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp ne i32 %bf.clear20, 37
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_oprs_set(%struct.rtx_def* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.then
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 2
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %28 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp30 = icmp ne %struct._IO_FILE* %29, null
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end.29
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end.29
  %31 = load i32, i32* %changed, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @free_cprop_mem() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_pavloc, align 8
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_absaltered, align 8
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*
  call void @free(i8* %3) #2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_avin, align 8
  %5 = bitcast %struct.simple_bitmap_def** %4 to i8*
  call void @free(i8* %5) #2
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_avout, align 8
  %7 = bitcast %struct.simple_bitmap_def** %6 to i8*
  call void @free(i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_set_hash_table() #0 {
entry:
  %0 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %1 = bitcast %struct.expr** %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_local_properties(%struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %comp, %struct.simple_bitmap_def** %antloc, i32 %setp) #0 {
entry:
  %transp.addr = alloca %struct.simple_bitmap_def**, align 8
  %comp.addr = alloca %struct.simple_bitmap_def**, align 8
  %antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %setp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %hash_table_size = alloca i32, align 4
  %hash_table = alloca %struct.expr**, align 8
  %expr = alloca %struct.expr*, align 8
  %indx = alloca i32, align 4
  %occr = alloca %struct.occr*, align 8
  store %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def*** %transp.addr, align 8
  store %struct.simple_bitmap_def** %comp, %struct.simple_bitmap_def*** %comp.addr, align 8
  store %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def*** %antloc.addr, align 8
  store i32 %setp, i32* %setp.addr, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def** %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %setp.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %2, i32 %3)
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %5 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %comp.addr, align 8
  %tobool4 = icmp ne %struct.simple_bitmap_def** %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %comp.addr, align 8
  %8 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %7, i32 %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %tobool7 = icmp ne %struct.simple_bitmap_def** %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %11 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %10, i32 %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %12 = load i32, i32* %setp.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %13 = load i32, i32* @set_hash_table_size, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %14 = load i32, i32* @expr_hash_table_size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %hash_table_size, align 4
  %15 = load i32, i32* %setp.addr, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end
  %16 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  %17 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi %struct.expr** [ %16, %cond.true.12 ], [ %17, %cond.false.13 ]
  store %struct.expr** %cond15, %struct.expr*** %hash_table, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %cond.end.14
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %hash_table_size, align 4
  %cmp = icmp ult i32 %18, %19
  br i1 %cmp, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = zext i32 %20 to i64
  %21 = load %struct.expr**, %struct.expr*** %hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %21, i64 %idxprom
  %22 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %22, %struct.expr** %expr, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.65, %for.body
  %23 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp17 = icmp ne %struct.expr* %23, null
  br i1 %cmp17, label %for.body.18, label %for.end.66

for.body.18:                                      ; preds = %for.cond.16
  %24 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %24, i32 0, i32 1
  %25 = load i32, i32* %bitmap_index, align 4
  store i32 %25, i32* %indx, align 4
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %tobool19 = icmp ne %struct.simple_bitmap_def** %26, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body.18
  %27 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr21 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %expr21, align 8
  %29 = load i32, i32* %indx, align 4
  %30 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %31 = load i32, i32* %setp.addr, align 4
  call void @compute_transp(%struct.rtx_def* %28, i32 %29, %struct.simple_bitmap_def** %30, i32 %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.body.18
  %32 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %tobool23 = icmp ne %struct.simple_bitmap_def** %32, null
  br i1 %tobool23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end.22
  %33 = load %struct.expr*, %struct.expr** %expr, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 3
  %34 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %34, %struct.occr** %occr, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.24
  %35 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp26 = icmp ne %struct.occr* %35, null
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %indx, align 4
  %rem = urem i32 %36, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %37 = load i32, i32* %indx, align 4
  %div = udiv i32 %37, 64
  %idxprom28 = zext i32 %div to i64
  %38 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn = getelementptr inbounds %struct.occr, %struct.occr* %38, i32 0, i32 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %40 = load i32, i32* %rtint, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx31 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom30
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx31, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index, align 4
  %add = add nsw i32 %43, 0
  %idxprom32 = sext i32 %add to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom32
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %45, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom28
  %46 = load i64, i64* %arrayidx34, align 8
  %or = or i64 %46, %shl
  store i64 %or, i64* %arrayidx34, align 8
  %47 = load %struct.occr*, %struct.occr** %occr, align 8
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %47, i32 0, i32 2
  store i8 0, i8* %deleted_p, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %48 = load %struct.occr*, %struct.occr** %occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %48, i32 0, i32 0
  %49 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %49, %struct.occr** %occr, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.end.22
  %50 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %comp.addr, align 8
  %tobool36 = icmp ne %struct.simple_bitmap_def** %50, null
  br i1 %tobool36, label %if.then.37, label %if.end.64

if.then.37:                                       ; preds = %if.end.35
  %51 = load %struct.expr*, %struct.expr** %expr, align 8
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %51, i32 0, i32 4
  %52 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  store %struct.occr* %52, %struct.occr** %occr, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.61, %if.then.37
  %53 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp39 = icmp ne %struct.occr* %53, null
  br i1 %cmp39, label %for.body.40, label %for.end.63

for.body.40:                                      ; preds = %for.cond.38
  %54 = load i32, i32* %indx, align 4
  %rem41 = urem i32 %54, 64
  %sh_prom42 = zext i32 %rem41 to i64
  %shl43 = shl i64 1, %sh_prom42
  %55 = load i32, i32* %indx, align 4
  %div44 = udiv i32 %55, 64
  %idxprom45 = zext i32 %div44 to i64
  %56 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn46 = getelementptr inbounds %struct.occr, %struct.occr* %56, i32 0, i32 1
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn46, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %58 = load i32, i32* %rtint49, align 4
  %idxprom50 = sext i32 %58 to i64
  %59 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data51 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %59, i32 0, i32 4
  %bb52 = bitcast %union.varray_data_tag* %data51 to [1 x %struct.basic_block_def*]*
  %arrayidx53 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb52, i32 0, i64 %idxprom50
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx53, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 11
  %61 = load i32, i32* %index54, align 4
  %add55 = add nsw i32 %61, 0
  %idxprom56 = sext i32 %add55 to i64
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %comp.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %62, i64 %idxprom56
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx57, align 8
  %elms58 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %63, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [1 x i64], [1 x i64]* %elms58, i32 0, i64 %idxprom45
  %64 = load i64, i64* %arrayidx59, align 8
  %or60 = or i64 %64, %shl43
  store i64 %or60, i64* %arrayidx59, align 8
  %65 = load %struct.occr*, %struct.occr** %occr, align 8
  %copied_p = getelementptr inbounds %struct.occr, %struct.occr* %65, i32 0, i32 3
  store i8 0, i8* %copied_p, align 1
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.40
  %66 = load %struct.occr*, %struct.occr** %occr, align 8
  %next62 = getelementptr inbounds %struct.occr, %struct.occr* %66, i32 0, i32 0
  %67 = load %struct.occr*, %struct.occr** %next62, align 8
  store %struct.occr* %67, %struct.occr** %occr, align 8
  br label %for.cond.38

for.end.63:                                       ; preds = %for.cond.38
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %if.end.35
  %68 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %68, i32 0, i32 5
  store %struct.rtx_def* null, %struct.rtx_def** %reaching_reg, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %69 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %69, i32 0, i32 2
  %70 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %70, %struct.expr** %expr, align 8
  br label %for.cond.16

for.end.66:                                       ; preds = %for.cond.16
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %71 = load i32, i32* %i, align 4
  %inc = add i32 %71, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  ret void
}

declare void @sbitmap_vector_ones(%struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_transp(%struct.rtx_def* %x, i32 %indx, %struct.simple_bitmap_def** %bmap, i32 %set_p) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %indx.addr = alloca i32, align 4
  %bmap.addr = alloca %struct.simple_bitmap_def**, align 8
  %set_p.addr = alloca i32, align 4
  %bb = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %r = alloca %struct.reg_set*, align 8
  %fmt = alloca i8*, align 8
  %list_entry = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %dest_addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %indx, i32* %indx.addr, align 4
  store %struct.simple_bitmap_def** %bmap, %struct.simple_bitmap_def*** %bmap.addr, align 8
  store i32 %set_p, i32* %set_p.addr, align 4
  br label %repeat

repeat:                                           ; preds = %if.then.231, %for.end.210, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %repeat
  br label %for.end.267

if.end:                                           ; preds = %repeat
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 61, label %sw.bb
    i32 66, label %sw.bb.127
    i32 59, label %sw.bb.214
    i32 69, label %sw.bb.214
    i32 58, label %sw.bb.214
    i32 54, label %sw.bb.214
    i32 55, label %sw.bb.214
    i32 56, label %sw.bb.214
    i32 68, label %sw.bb.214
    i32 67, label %sw.bb.214
    i32 44, label %sw.bb.214
    i32 45, label %sw.bb.214
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load i32, i32* %set_p.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else.51

if.then.1:                                        ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtuint, align 4
  %cmp2 = icmp ult i32 %6, 53
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.1
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %bb, align 4
  %8 = load i32, i32* @n_basic_blocks, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %10 = load i32, i32* %rtuint7, align 4
  %div = udiv i32 %10, 64
  %idxprom = zext i32 %div to i64
  %11 = load i32, i32* %bb, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %arrayidx9 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %12, i64 %idxprom8
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx9, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %14 = load i64, i64* %arrayidx10, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %16 = load i32, i32* %rtuint13, align 4
  %rem = urem i32 %16, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %14, %sh_prom
  %and = and i64 %shr, 1
  %tobool14 = icmp ne i64 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %for.body
  %17 = load i32, i32* %indx.addr, align 4
  %rem16 = urem i32 %17, 64
  %sh_prom17 = zext i32 %rem16 to i64
  %shl = shl i64 1, %sh_prom17
  %18 = load i32, i32* %indx.addr, align 4
  %div18 = udiv i32 %18, 64
  %idxprom19 = zext i32 %div18 to i64
  %19 = load i32, i32* %bb, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %idxprom20
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx21, align 8
  %elms22 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %elms22, i32 0, i64 %idxprom19
  %22 = load i64, i64* %arrayidx23, align 8
  %or = or i64 %22, %shl
  store i64 %or, i64* %arrayidx23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %23 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.else:                                          ; preds = %if.then.1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtuint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %25 = load i32, i32* %rtuint27, align 4
  %idxprom28 = zext i32 %25 to i64
  %26 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx29 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %26, i64 %idxprom28
  %27 = load %struct.reg_set*, %struct.reg_set** %arrayidx29, align 8
  store %struct.reg_set* %27, %struct.reg_set** %r, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.48, %if.else
  %28 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %cmp31 = icmp ne %struct.reg_set* %28, null
  br i1 %cmp31, label %for.body.32, label %for.end.49

for.body.32:                                      ; preds = %for.cond.30
  %29 = load i32, i32* %indx.addr, align 4
  %rem33 = urem i32 %29, 64
  %sh_prom34 = zext i32 %rem33 to i64
  %shl35 = shl i64 1, %sh_prom34
  %30 = load i32, i32* %indx.addr, align 4
  %div36 = udiv i32 %30, 64
  %idxprom37 = zext i32 %div36 to i64
  %31 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %insn = getelementptr inbounds %struct.reg_set, %struct.reg_set* %31, i32 0, i32 1
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %33 = load i32, i32* %rtint, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %34, i32 0, i32 4
  %bb41 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx42 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb41, i32 0, i64 %idxprom40
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx42, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index, align 4
  %add = add nsw i32 %36, 0
  %idxprom43 = sext i32 %add to i64
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %37, i64 %idxprom43
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx44, align 8
  %elms45 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %38, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [1 x i64], [1 x i64]* %elms45, i32 0, i64 %idxprom37
  %39 = load i64, i64* %arrayidx46, align 8
  %or47 = or i64 %39, %shl35
  store i64 %or47, i64* %arrayidx46, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.32
  %40 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %next = getelementptr inbounds %struct.reg_set, %struct.reg_set* %40, i32 0, i32 0
  %41 = load %struct.reg_set*, %struct.reg_set** %next, align 8
  store %struct.reg_set* %41, %struct.reg_set** %r, align 8
  br label %for.cond.30

for.end.49:                                       ; preds = %for.cond.30
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  br label %if.end.126

if.else.51:                                       ; preds = %sw.bb
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtuint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %43 = load i32, i32* %rtuint54, align 4
  %cmp55 = icmp ult i32 %43, 53
  br i1 %cmp55, label %if.then.56, label %if.else.92

if.then.56:                                       ; preds = %if.else.51
  store i32 0, i32* %bb, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.89, %if.then.56
  %44 = load i32, i32* %bb, align 4
  %45 = load i32, i32* @n_basic_blocks, align 4
  %cmp58 = icmp slt i32 %44, %45
  br i1 %cmp58, label %for.body.59, label %for.end.91

for.body.59:                                      ; preds = %for.cond.57
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %47 = load i32, i32* %rtuint62, align 4
  %div63 = udiv i32 %47, 64
  %idxprom64 = zext i32 %div63 to i64
  %48 = load i32, i32* %bb, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @reg_set_in_block, align 8
  %arrayidx66 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %49, i64 %idxprom65
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx66, align 8
  %elms67 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %50, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [1 x i64], [1 x i64]* %elms67, i32 0, i64 %idxprom64
  %51 = load i64, i64* %arrayidx68, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %53 = load i32, i32* %rtuint71, align 4
  %rem72 = urem i32 %53, 64
  %sh_prom73 = zext i32 %rem72 to i64
  %shr74 = lshr i64 %51, %sh_prom73
  %and75 = and i64 %shr74, 1
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %for.body.59
  %54 = load i32, i32* %indx.addr, align 4
  %rem78 = urem i32 %54, 64
  %sh_prom79 = zext i32 %rem78 to i64
  %shl80 = shl i64 1, %sh_prom79
  %neg = xor i64 %shl80, -1
  %55 = load i32, i32* %indx.addr, align 4
  %div81 = udiv i32 %55, 64
  %idxprom82 = zext i32 %div81 to i64
  %56 = load i32, i32* %bb, align 4
  %idxprom83 = sext i32 %56 to i64
  %57 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %57, i64 %idxprom83
  %58 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx84, align 8
  %elms85 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %58, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [1 x i64], [1 x i64]* %elms85, i32 0, i64 %idxprom82
  %59 = load i64, i64* %arrayidx86, align 8
  %and87 = and i64 %59, %neg
  store i64 %and87, i64* %arrayidx86, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.77, %for.body.59
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %60 = load i32, i32* %bb, align 4
  %inc90 = add nsw i32 %60, 1
  store i32 %inc90, i32* %bb, align 4
  br label %for.cond.57

for.end.91:                                       ; preds = %for.cond.57
  br label %if.end.125

if.else.92:                                       ; preds = %if.else.51
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtuint95 = bitcast %union.rtunion_def* %arrayidx94 to i32*
  %62 = load i32, i32* %rtuint95, align 4
  %idxprom96 = zext i32 %62 to i64
  %63 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %arrayidx97 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %63, i64 %idxprom96
  %64 = load %struct.reg_set*, %struct.reg_set** %arrayidx97, align 8
  store %struct.reg_set* %64, %struct.reg_set** %r, align 8
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.122, %if.else.92
  %65 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %cmp99 = icmp ne %struct.reg_set* %65, null
  br i1 %cmp99, label %for.body.100, label %for.end.124

for.body.100:                                     ; preds = %for.cond.98
  %66 = load i32, i32* %indx.addr, align 4
  %rem101 = urem i32 %66, 64
  %sh_prom102 = zext i32 %rem101 to i64
  %shl103 = shl i64 1, %sh_prom102
  %neg104 = xor i64 %shl103, -1
  %67 = load i32, i32* %indx.addr, align 4
  %div105 = udiv i32 %67, 64
  %idxprom106 = zext i32 %div105 to i64
  %68 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %insn107 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %68, i32 0, i32 1
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn107, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %70 = load i32, i32* %rtint110, align 4
  %idxprom111 = sext i32 %70 to i64
  %71 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data112 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %71, i32 0, i32 4
  %bb113 = bitcast %union.varray_data_tag* %data112 to [1 x %struct.basic_block_def*]*
  %arrayidx114 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb113, i32 0, i64 %idxprom111
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx114, align 8
  %index115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 11
  %73 = load i32, i32* %index115, align 4
  %add116 = add nsw i32 %73, 0
  %idxprom117 = sext i32 %add116 to i64
  %74 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %74, i64 %idxprom117
  %75 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx118, align 8
  %elms119 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %75, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [1 x i64], [1 x i64]* %elms119, i32 0, i64 %idxprom106
  %76 = load i64, i64* %arrayidx120, align 8
  %and121 = and i64 %76, %neg104
  store i64 %and121, i64* %arrayidx120, align 8
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.100
  %77 = load %struct.reg_set*, %struct.reg_set** %r, align 8
  %next123 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %77, i32 0, i32 0
  %78 = load %struct.reg_set*, %struct.reg_set** %next123, align 8
  store %struct.reg_set* %78, %struct.reg_set** %r, align 8
  br label %for.cond.98

for.end.124:                                      ; preds = %for.cond.98
  br label %if.end.125

if.end.125:                                       ; preds = %for.end.124, %for.end.91
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.50
  br label %for.end.267

sw.bb.127:                                        ; preds = %if.end
  store i32 0, i32* %bb, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.208, %sw.bb.127
  %79 = load i32, i32* %bb, align 4
  %80 = load i32, i32* @n_basic_blocks, align 4
  %cmp129 = icmp slt i32 %79, %80
  br i1 %cmp129, label %for.body.130, label %for.end.210

for.body.130:                                     ; preds = %for.cond.128
  %81 = load i32, i32* %bb, align 4
  %idxprom131 = sext i32 %81 to i64
  %82 = load %struct.rtx_def**, %struct.rtx_def*** @canon_modify_mem_list, align 8
  %arrayidx132 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %82, i64 %idxprom131
  %83 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx132, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %list_entry, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.204, %for.body.130
  %84 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %tobool133 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool133, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load136 = load i32, i32* %87, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp eq i32 %bf.clear137, 34
  br i1 %cmp138, label %if.then.139, label %if.end.165

if.then.139:                                      ; preds = %while.body
  %88 = load i32, i32* %set_p.addr, align 4
  %tobool140 = icmp ne i32 %88, 0
  br i1 %tobool140, label %if.then.141, label %if.else.152

if.then.141:                                      ; preds = %if.then.139
  %89 = load i32, i32* %indx.addr, align 4
  %rem142 = urem i32 %89, 64
  %sh_prom143 = zext i32 %rem142 to i64
  %shl144 = shl i64 1, %sh_prom143
  %90 = load i32, i32* %indx.addr, align 4
  %div145 = udiv i32 %90, 64
  %idxprom146 = zext i32 %div145 to i64
  %91 = load i32, i32* %bb, align 4
  %idxprom147 = sext i32 %91 to i64
  %92 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx148 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %92, i64 %idxprom147
  %93 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx148, align 8
  %elms149 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %93, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [1 x i64], [1 x i64]* %elms149, i32 0, i64 %idxprom146
  %94 = load i64, i64* %arrayidx150, align 8
  %or151 = or i64 %94, %shl144
  store i64 %or151, i64* %arrayidx150, align 8
  br label %if.end.164

if.else.152:                                      ; preds = %if.then.139
  %95 = load i32, i32* %indx.addr, align 4
  %rem153 = urem i32 %95, 64
  %sh_prom154 = zext i32 %rem153 to i64
  %shl155 = shl i64 1, %sh_prom154
  %neg156 = xor i64 %shl155, -1
  %96 = load i32, i32* %indx.addr, align 4
  %div157 = udiv i32 %96, 64
  %idxprom158 = zext i32 %div157 to i64
  %97 = load i32, i32* %bb, align 4
  %idxprom159 = sext i32 %97 to i64
  %98 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx160 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %98, i64 %idxprom159
  %99 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx160, align 8
  %elms161 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %99, i32 0, i32 3
  %arrayidx162 = getelementptr inbounds [1 x i64], [1 x i64]* %elms161, i32 0, i64 %idxprom158
  %100 = load i64, i64* %arrayidx162, align 8
  %and163 = and i64 %100, %neg156
  store i64 %and163, i64* %arrayidx162, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.152, %if.then.141
  br label %while.end

if.end.165:                                       ; preds = %while.body
  %101 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %dest, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 1
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %list_entry, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %dest_addr, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load175 = load i32, i32* %109, align 8
  %bf.lshr = lshr i32 %bf.load175, 16
  %bf.clear176 = and i32 %bf.lshr, 255
  %110 = load %struct.rtx_def*, %struct.rtx_def** %dest_addr, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @canon_true_dependence(%struct.rtx_def* %107, i32 %bf.clear176, %struct.rtx_def* %110, %struct.rtx_def* %111, i32 (%struct.rtx_def*, i32)* @rtx_addr_varies_p)
  %tobool177 = icmp ne i32 %call, 0
  br i1 %tobool177, label %if.then.178, label %if.end.204

if.then.178:                                      ; preds = %if.end.165
  %112 = load i32, i32* %set_p.addr, align 4
  %tobool179 = icmp ne i32 %112, 0
  br i1 %tobool179, label %if.then.180, label %if.else.191

if.then.180:                                      ; preds = %if.then.178
  %113 = load i32, i32* %indx.addr, align 4
  %rem181 = urem i32 %113, 64
  %sh_prom182 = zext i32 %rem181 to i64
  %shl183 = shl i64 1, %sh_prom182
  %114 = load i32, i32* %indx.addr, align 4
  %div184 = udiv i32 %114, 64
  %idxprom185 = zext i32 %div184 to i64
  %115 = load i32, i32* %bb, align 4
  %idxprom186 = sext i32 %115 to i64
  %116 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx187 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %116, i64 %idxprom186
  %117 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx187, align 8
  %elms188 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %117, i32 0, i32 3
  %arrayidx189 = getelementptr inbounds [1 x i64], [1 x i64]* %elms188, i32 0, i64 %idxprom185
  %118 = load i64, i64* %arrayidx189, align 8
  %or190 = or i64 %118, %shl183
  store i64 %or190, i64* %arrayidx189, align 8
  br label %if.end.203

if.else.191:                                      ; preds = %if.then.178
  %119 = load i32, i32* %indx.addr, align 4
  %rem192 = urem i32 %119, 64
  %sh_prom193 = zext i32 %rem192 to i64
  %shl194 = shl i64 1, %sh_prom193
  %neg195 = xor i64 %shl194, -1
  %120 = load i32, i32* %indx.addr, align 4
  %div196 = udiv i32 %120, 64
  %idxprom197 = zext i32 %div196 to i64
  %121 = load i32, i32* %bb, align 4
  %idxprom198 = sext i32 %121 to i64
  %122 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %arrayidx199 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %122, i64 %idxprom198
  %123 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx199, align 8
  %elms200 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %123, i32 0, i32 3
  %arrayidx201 = getelementptr inbounds [1 x i64], [1 x i64]* %elms200, i32 0, i64 %idxprom197
  %124 = load i64, i64* %arrayidx201, align 8
  %and202 = and i64 %124, %neg195
  store i64 %and202, i64* %arrayidx201, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.191, %if.then.180
  br label %while.end

if.end.204:                                       ; preds = %if.end.165
  %125 = load %struct.rtx_def*, %struct.rtx_def** %list_entry, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 1
  %rtx207 = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx207, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %list_entry, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end.203, %if.end.164, %while.cond
  br label %for.inc.208

for.inc.208:                                      ; preds = %while.end
  %127 = load i32, i32* %bb, align 4
  %inc209 = add nsw i32 %127, 1
  store i32 %inc209, i32* %bb, align 4
  br label %for.cond.128

for.end.210:                                      ; preds = %for.cond.128
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 0
  %rtx213 = bitcast %union.rtunion_def* %arrayidx212 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx213, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %x.addr, align 8
  br label %repeat

sw.bb.214:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.267

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %130 = load i32, i32* %code, align 4
  %idxprom215 = sext i32 %130 to i64
  %arrayidx216 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom215
  %131 = load i8, i8* %arrayidx216, align 1
  %conv = zext i8 %131 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  %132 = load i32, i32* %code, align 4
  %idxprom217 = sext i32 %132 to i64
  %arrayidx218 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom217
  %133 = load i8*, i8** %arrayidx218, align 8
  store i8* %133, i8** %fmt, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.266, %sw.epilog
  %134 = load i32, i32* %i, align 4
  %cmp220 = icmp sge i32 %134, 0
  br i1 %cmp220, label %for.body.222, label %for.end.267

for.body.222:                                     ; preds = %for.cond.219
  %135 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %135 to i64
  %136 = load i8*, i8** %fmt, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %136, i64 %idxprom223
  %137 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %137 to i32
  %cmp226 = icmp eq i32 %conv225, 101
  br i1 %cmp226, label %if.then.228, label %if.else.241

if.then.228:                                      ; preds = %for.body.222
  %138 = load i32, i32* %i, align 4
  %cmp229 = icmp eq i32 %138, 0
  br i1 %cmp229, label %if.then.231, label %if.end.236

if.then.231:                                      ; preds = %if.then.228
  %139 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %139 to i64
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 %idxprom232
  %rtx235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx235, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %x.addr, align 8
  br label %repeat

if.end.236:                                       ; preds = %if.then.228
  %142 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %142 to i64
  %143 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 %idxprom237
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %145 = load i32, i32* %indx.addr, align 4
  %146 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %147 = load i32, i32* %set_p.addr, align 4
  call void @compute_transp(%struct.rtx_def* %144, i32 %145, %struct.simple_bitmap_def** %146, i32 %147)
  br label %if.end.265

if.else.241:                                      ; preds = %for.body.222
  %148 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %148 to i64
  %149 = load i8*, i8** %fmt, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %149, i64 %idxprom242
  %150 = load i8, i8* %arrayidx243, align 1
  %conv244 = sext i8 %150 to i32
  %cmp245 = icmp eq i32 %conv244, 69
  br i1 %cmp245, label %if.then.247, label %if.end.264

if.then.247:                                      ; preds = %if.else.241
  store i32 0, i32* %j, align 4
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.261, %if.then.247
  %151 = load i32, i32* %j, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %152 to i64
  %153 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 %idxprom249
  %rtvec = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtvec_def**
  %154 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %154, i32 0, i32 0
  %155 = load i32, i32* %num_elem, align 4
  %cmp252 = icmp slt i32 %151, %155
  br i1 %cmp252, label %for.body.254, label %for.end.263

for.body.254:                                     ; preds = %for.cond.248
  %156 = load i32, i32* %j, align 4
  %idxprom255 = sext i32 %156 to i64
  %157 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %157 to i64
  %158 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 %idxprom256
  %rtvec259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtvec_def**
  %159 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec259, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %159, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom255
  %160 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx260, align 8
  %161 = load i32, i32* %indx.addr, align 4
  %162 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %bmap.addr, align 8
  %163 = load i32, i32* %set_p.addr, align 4
  call void @compute_transp(%struct.rtx_def* %160, i32 %161, %struct.simple_bitmap_def** %162, i32 %163)
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.254
  %164 = load i32, i32* %j, align 4
  %inc262 = add nsw i32 %164, 1
  store i32 %inc262, i32* %j, align 4
  br label %for.cond.248

for.end.263:                                      ; preds = %for.cond.248
  br label %if.end.264

if.end.264:                                       ; preds = %for.end.263, %if.else.241
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.236
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %165 = load i32, i32* %i, align 4
  %dec = add nsw i32 %165, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.219

for.end.267:                                      ; preds = %if.then, %if.end.126, %sw.bb.214, %for.cond.219
  ret void
}

declare i32 @canon_true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32 (%struct.rtx_def*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cprop_insn(%struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %alter_jumps) #0 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %alter_jumps.addr = alloca i32, align 4
  %reg_used = alloca %struct.reg_use*, align 8
  %changed = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.expr*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %alter_jumps, i32* %alter_jumps.addr, align 4
  store i32 0, i32* %changed, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @reg_use_count, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  call void @note_uses(%struct.rtx_def** %rtx, void (%struct.rtx_def**, i8*)* @find_used_regs, i8* null)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  call void @find_used_regs(%struct.rtx_def** %rtx6, i8* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  store %struct.reg_use* getelementptr inbounds ([8 x %struct.reg_use], [8 x %struct.reg_use]* @reg_use_table, i32 0, i64 0), %struct.reg_use** %reg_used, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %7 = load i32, i32* @reg_use_count, align 4
  %cmp8 = icmp sgt i32 %7, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %reg_rtx = getelementptr inbounds %struct.reg_use, %struct.reg_use* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg_rtx, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %10 = load i32, i32* %rtuint, align 4
  store i32 %10, i32* %regno, align 4
  %11 = load i32, i32* %regno, align 4
  %12 = load i32, i32* @max_gcse_regno, align 4
  %cmp12 = icmp uge i32 %11, %12
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.inc

if.end.15:                                        ; preds = %for.body
  %13 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %reg_rtx16 = getelementptr inbounds %struct.reg_use, %struct.reg_use* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg_rtx16, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call17 = call i32 @oprs_not_set_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  br label %for.inc

if.end.20:                                        ; preds = %if.end.15
  %16 = load i32, i32* %regno, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call21 = call %struct.expr* @find_avail_set(i32 %16, %struct.rtx_def* %17)
  store %struct.expr* %call21, %struct.expr** %set, align 8
  %18 = load %struct.expr*, %struct.expr** %set, align 8
  %tobool22 = icmp ne %struct.expr* %18, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.20
  br label %for.inc

if.end.24:                                        ; preds = %if.end.20
  %19 = load %struct.expr*, %struct.expr** %set, align 8
  %expr = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %pat, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load25 = load i32, i32* %22, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp ne i32 %bf.clear26, 47
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.cprop_insn, i32 0, i32 0)) #7
  unreachable

if.end.30:                                        ; preds = %if.end.24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %src, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load34 = load i32, i32* %26, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 67
  br i1 %cmp36, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load38 = load i32, i32* %28, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 68
  br i1 %cmp40, label %if.then.72, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load43 = load i32, i32* %30, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 54
  br i1 %cmp45, label %if.then.72, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.42
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load48 = load i32, i32* %32, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 55
  br i1 %cmp50, label %if.then.72, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.47
  %33 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load53 = load i32, i32* %34, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 58
  br i1 %cmp55, label %if.then.72, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.52
  %35 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load58 = load i32, i32* %36, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 134
  br i1 %cmp60, label %if.then.72, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %37 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load63 = load i32, i32* %38, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 56
  br i1 %cmp65, label %if.then.72, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.62
  %39 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load68 = load i32, i32* %40, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 140
  br i1 %cmp70, label %if.then.72, label %if.else.107

if.then.72:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false.62, %lor.lhs.false.57, %lor.lhs.false.52, %lor.lhs.false.47, %lor.lhs.false.42, %lor.lhs.false, %if.end.30
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load73 = load i32, i32* %42, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 32
  br i1 %cmp75, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.72
  %43 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %reg_rtx77 = getelementptr inbounds %struct.reg_use, %struct.reg_use* %43, i32 0, i32 0
  %44 = load %struct.rtx_def*, %struct.rtx_def** %reg_rtx77, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call78 = call i32 @try_replace_reg(%struct.rtx_def* %44, %struct.rtx_def* %45, %struct.rtx_def* %46)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %land.lhs.true
  store i32 1, i32* %changed, align 4
  %47 = load i32, i32* @const_prop_count, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @const_prop_count, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp81 = icmp ne %struct._IO_FILE* %48, null
  br i1 %cmp81, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %if.then.80
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %50 = load i32, i32* %regno, align 4
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i32 %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %53 = load i32, i32* %rtint, align 4
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  call void @print_rtl(%struct._IO_FILE* %54, %struct.rtx_def* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.83, %if.then.80
  br label %if.end.106

if.else:                                          ; preds = %land.lhs.true, %if.then.72
  %57 = load i32, i32* %alter_jumps.addr, align 4
  %tobool90 = icmp ne i32 %57, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.105

land.lhs.true.91:                                 ; preds = %if.else
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load92 = load i32, i32* %59, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 33
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.105

land.lhs.true.96:                                 ; preds = %land.lhs.true.91
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call97 = call i32 @condjump_p(%struct.rtx_def* %60)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.105

land.lhs.true.99:                                 ; preds = %land.lhs.true.96
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call100 = call i32 @simplejump_p(%struct.rtx_def* %61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.105, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true.99
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %64 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %reg_rtx103 = getelementptr inbounds %struct.reg_use, %struct.reg_use* %64, i32 0, i32 0
  %65 = load %struct.rtx_def*, %struct.rtx_def** %reg_rtx103, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call104 = call i32 @cprop_jump(%struct.basic_block_def* %62, %struct.rtx_def* %63, %struct.rtx_def* %65, %struct.rtx_def* %66)
  %67 = load i32, i32* %changed, align 4
  %or = or i32 %67, %call104
  store i32 %or, i32* %changed, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.102, %land.lhs.true.99, %land.lhs.true.96, %land.lhs.true.91, %if.else
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.89
  br label %if.end.144

if.else.107:                                      ; preds = %lor.lhs.false.67
  %68 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load108 = load i32, i32* %69, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 61
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.143

land.lhs.true.112:                                ; preds = %if.else.107
  %70 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtuint115 = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %71 = load i32, i32* %rtuint115, align 4
  %cmp116 = icmp uge i32 %71, 53
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.143

land.lhs.true.118:                                ; preds = %land.lhs.true.112
  %72 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtuint121 = bitcast %union.rtunion_def* %arrayidx120 to i32*
  %73 = load i32, i32* %rtuint121, align 4
  %74 = load i32, i32* %regno, align 4
  %cmp122 = icmp ne i32 %73, %74
  br i1 %cmp122, label %if.then.124, label %if.end.143

if.then.124:                                      ; preds = %land.lhs.true.118
  %75 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %reg_rtx125 = getelementptr inbounds %struct.reg_use, %struct.reg_use* %75, i32 0, i32 0
  %76 = load %struct.rtx_def*, %struct.rtx_def** %reg_rtx125, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call126 = call i32 @try_replace_reg(%struct.rtx_def* %76, %struct.rtx_def* %77, %struct.rtx_def* %78)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.142

if.then.128:                                      ; preds = %if.then.124
  store i32 1, i32* %changed, align 4
  %79 = load i32, i32* @copy_prop_count, align 4
  %inc129 = add nsw i32 %79, 1
  store i32 %inc129, i32* @copy_prop_count, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp130 = icmp ne %struct._IO_FILE* %80, null
  br i1 %cmp130, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %if.then.128
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %82 = load i32, i32* %regno, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtint135 = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %84 = load i32, i32* %rtint135, align 4
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i32 0, i32 0), i32 %82, i32 %84)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtuint139 = bitcast %union.rtunion_def* %arrayidx138 to i32*
  %87 = load i32, i32* %rtuint139, align 4
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 %87)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.132, %if.then.128
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.124
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %land.lhs.true.118, %land.lhs.true.112, %if.else.107
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.106
  br label %for.inc

for.inc:                                          ; preds = %if.end.144, %if.then.23, %if.then.19, %if.then.14
  %88 = load %struct.reg_use*, %struct.reg_use** %reg_used, align 8
  %incdec.ptr = getelementptr inbounds %struct.reg_use, %struct.reg_use* %88, i32 1
  store %struct.reg_use* %incdec.ptr, %struct.reg_use** %reg_used, align 8
  %89 = load i32, i32* @reg_use_count, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* @reg_use_count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load i32, i32* %changed, align 4
  store i32 %90, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %91 = load i32, i32* %retval
  ret i32 %91
}

declare void @note_uses(%struct.rtx_def**, void (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_used_regs(%struct.rtx_def** %xptr, i8* %data) #0 {
entry:
  %xptr.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %xptr, %struct.rtx_def*** %xptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %xptr.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  br label %repeat

repeat:                                           ; preds = %if.then.23, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %repeat
  br label %for.end.53

if.end:                                           ; preds = %repeat
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @reg_use_count, align 4
  %cmp5 = icmp eq i32 %7, 8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  br label %for.end.53

if.end.7:                                         ; preds = %if.then.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %9 = load i32, i32* @reg_use_count, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.reg_use], [8 x %struct.reg_use]* @reg_use_table, i32 0, i64 %idxprom
  %reg_rtx = getelementptr inbounds %struct.reg_use, %struct.reg_use* %arrayidx, i32 0, i32 0
  store %struct.rtx_def* %8, %struct.rtx_def** %reg_rtx, align 8
  %10 = load i32, i32* @reg_use_count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @reg_use_count, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %11 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %12 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  %13 = load i32, i32* %code, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom11
  %14 = load i8*, i8** %arrayidx12, align 8
  store i8* %14, i8** %fmt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %if.end.8
  %15 = load i32, i32* %i, align 4
  %cmp13 = icmp sge i32 %15, 0
  br i1 %cmp13, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i8*, i8** %fmt, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, 101
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.20
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %x, align 8
  br label %repeat

if.end.25:                                        ; preds = %if.then.20
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 %idxprom26
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %24 = load i8*, i8** %data.addr, align 8
  call void @find_used_regs(%struct.rtx_def** %rtx29, i8* %24)
  br label %if.end.51

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %26 = load i8*, i8** %fmt, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %26, i64 %idxprom30
  %27 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %27 to i32
  %cmp33 = icmp eq i32 %conv32, 69
  br i1 %cmp33, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.35
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 %idxprom37
  %rtvec = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %31 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %31, i32 0, i32 0
  %32 = load i32, i32* %num_elem, align 4
  %cmp40 = icmp slt i32 %28, %32
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.36
  %33 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 %idxprom44
  %rtvec47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtvec_def**
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec47, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom43
  %37 = load i8*, i8** %data.addr, align 8
  call void @find_used_regs(%struct.rtx_def** %arrayidx48, i8* %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %38 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.25
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %39 = load i32, i32* %i, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.53:                                       ; preds = %if.then, %if.then.6, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.expr* @find_avail_set(i32 %regno, %struct.rtx_def* %insn) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set1 = alloca %struct.expr*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.expr*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.expr* null, %struct.expr** %set1, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.58
  %0 = load i32, i32* %regno.addr, align 4
  %call = call %struct.expr* @lookup_set(i32 %0, %struct.rtx_def* null)
  store %struct.expr* %call, %struct.expr** %set, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %1 = load %struct.expr*, %struct.expr** %set, align 8
  %tobool = icmp ne %struct.expr* %1, null
  br i1 %tobool, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.1
  %2 = load %struct.expr*, %struct.expr** %set, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %2, i32 0, i32 1
  %3 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %3, 64
  %idxprom = zext i32 %div to i64
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom3
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index, align 4
  %add = add nsw i32 %8, 0
  %idxprom5 = sext i32 %add to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @cprop_avin, align 8
  %arrayidx6 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom5
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx6, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %11 = load i64, i64* %arrayidx7, align 8
  %12 = load %struct.expr*, %struct.expr** %set, align 8
  %bitmap_index8 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 1
  %13 = load i32, i32* %bitmap_index8, align 4
  %rem = urem i32 %13, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %11, %sh_prom
  %and = and i64 %shr, 1
  %tobool9 = icmp ne i64 %and, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.2
  br label %while.end

if.end:                                           ; preds = %while.body.2
  %14 = load i32, i32* %regno.addr, align 4
  %15 = load %struct.expr*, %struct.expr** %set, align 8
  %call10 = call %struct.expr* @next_set(i32 %14, %struct.expr* %15)
  store %struct.expr* %call10, %struct.expr** %set, align 8
  br label %while.cond.1

while.end:                                        ; preds = %if.then, %while.cond.1
  %16 = load %struct.expr*, %struct.expr** %set, align 8
  %cmp = icmp eq %struct.expr* %16, null
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  br label %while.end.61

if.end.12:                                        ; preds = %while.end
  %17 = load %struct.expr*, %struct.expr** %set, align 8
  %expr = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp13 = icmp ne i32 %bf.clear, 47
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.find_avail_set, i32 0, i32 0)) #7
  unreachable

if.end.15:                                        ; preds = %if.end.12
  %20 = load %struct.expr*, %struct.expr** %set, align 8
  %expr16 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %expr16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %src, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load19 = load i32, i32* %24, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 67
  br i1 %cmp21, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %25 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load22 = load i32, i32* %26, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 68
  br i1 %cmp24, label %if.then.52, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load26 = load i32, i32* %28, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 54
  br i1 %cmp28, label %if.then.52, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load30 = load i32, i32* %30, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 55
  br i1 %cmp32, label %if.then.52, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load34 = load i32, i32* %32, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 58
  br i1 %cmp36, label %if.then.52, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %33 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load38 = load i32, i32* %34, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 134
  br i1 %cmp40, label %if.then.52, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.37
  %35 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load42 = load i32, i32* %36, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 56
  br i1 %cmp44, label %if.then.52, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.41
  %37 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load46 = load i32, i32* %38, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 140
  br i1 %cmp48, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.45
  %39 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call50 = call i32 @oprs_not_set_p(%struct.rtx_def* %39, %struct.rtx_def* %40)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false.45, %lor.lhs.false.41, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false, %if.end.15
  %41 = load %struct.expr*, %struct.expr** %set, align 8
  store %struct.expr* %41, %struct.expr** %set1, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %lor.lhs.false.49
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load54 = load i32, i32* %43, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp ne i32 %bf.clear55, 61
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  br label %while.end.61

if.end.58:                                        ; preds = %if.end.53
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %45 = load i32, i32* %rtuint, align 4
  store i32 %45, i32* %regno.addr, align 4
  br label %while.body

while.end.61:                                     ; preds = %if.then.57, %if.then.11
  %46 = load %struct.expr*, %struct.expr** %set1, align 8
  ret %struct.expr* %46
}

; Function Attrs: nounwind uwtable
define internal i32 @try_replace_reg(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %insn) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %success = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %src, align 8
  store i32 0, i32* %success, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.15

cond.true:                                        ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call14 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %9, %struct.rtx_def* %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %8, %cond.true.7 ], [ %call14, %cond.false ]
  br label %cond.end.16

cond.false.15:                                    ; preds = %entry
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.end
  %cond17 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.15 ]
  store %struct.rtx_def* %cond17, %struct.rtx_def** %set, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call18 = call i32 @validate_replace_src(%struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  store i32 %call18, i32* %success, align 4
  %15 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end.16
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp19 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp19, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call24 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* %20)
  store %struct.rtx_def* %call24, %struct.rtx_def** %src, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %call28 = call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %23)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %if.then
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call34 = call i32 @validate_change(%struct.rtx_def* %24, %struct.rtx_def** %rtx33, %struct.rtx_def* %26, i32 0)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %land.lhs.true.30, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %land.lhs.true, %cond.end.16
  %27 = load i32, i32* %success, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.else, label %land.lhs.true.39

land.lhs.true.39:                                 ; preds = %if.end.37
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp40 = icmp eq %struct.rtx_def* %28, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.else

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %29 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp43 = icmp ne %struct.rtx_def* %29, null
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true.42
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call46 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %31)
  %call47 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %30, i32 4, %struct.rtx_def* %call46)
  store %struct.rtx_def* %call47, %struct.rtx_def** %note, align 8
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true.42, %land.lhs.true.39, %if.end.37
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp48 = icmp ne %struct.rtx_def* %32, null
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.else
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call54 = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %34, %struct.rtx_def* %35, %struct.rtx_def* %36)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  store %struct.rtx_def* %call54, %struct.rtx_def** %rtx57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.45
  %38 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool60 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.70

land.lhs.true.61:                                 ; preds = %if.end.59
  %39 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load65 = load i32, i32* %41, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 61
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.61
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %42, %struct.rtx_def* %43)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.61, %if.end.59
  %44 = load i32, i32* %success, align 4
  ret i32 %44
}

declare i32 @condjump_p(%struct.rtx_def*) #1

declare i32 @simplejump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cprop_jump(%struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.rtx_def* %from, %struct.rtx_def* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %set, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call = call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %3, %struct.rtx_def* %4, %struct.rtx_def* %5)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %call7 = call i32 @rtx_equal_p(%struct.rtx_def* %6, %struct.rtx_def* %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call9 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %11)
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call13 = call i32 @validate_change(%struct.rtx_def* %12, %struct.rtx_def** %rtx12, %struct.rtx_def* %14, i32 0)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp20 = icmp eq i32 %bf.clear, 67
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call22 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.8
  store i32 1, i32* @run_jump_opt_after_gcse, align 4
  %19 = load i32, i32* @const_prop_count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @const_prop_count, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %cmp25 = icmp ne %struct._IO_FILE* %20, null
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end.24
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %23 = load i32, i32* %rtuint, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %25 = load i32, i32* %rtint, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 %23, i32 %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  call void @print_rtl(%struct._IO_FILE* %26, %struct.rtx_def* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %if.end.24
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call34 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.15, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal %struct.expr* @lookup_set(i32 %regno, %struct.rtx_def* %pat) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %pat.addr = alloca %struct.rtx_def*, align 8
  %hash = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %1 = load i32, i32* @set_hash_table_size, align 4
  %call = call i32 @hash_set(i32 %0, i32 %1)
  store i32 %call, i32* %hash, align 4
  %2 = load i32, i32* %hash, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.expr**, %struct.expr*** @set_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %3, i64 %idxprom
  %4 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %4, %struct.expr** %expr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.expr*, %struct.expr** %expr, align 8
  %tobool1 = icmp ne %struct.expr* %6, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr2 = getelementptr inbounds %struct.expr, %struct.expr* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %expr2, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %call3 = call i32 @expr_equiv_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 2
  %12 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %12, %struct.expr** %expr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.13, %if.else
  %13 = load %struct.expr*, %struct.expr** %expr, align 8
  %tobool6 = icmp ne %struct.expr* %13, null
  br i1 %tobool6, label %land.rhs.7, label %land.end.12

land.rhs.7:                                       ; preds = %while.cond.5
  %14 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr8 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 0
  %15 = load %struct.rtx_def*, %struct.rtx_def** %expr8, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %18 = load i32, i32* %regno.addr, align 4
  %cmp = icmp ne i32 %17, %18
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.7, %while.cond.5
  %19 = phi i1 [ false, %while.cond.5 ], [ %cmp, %land.rhs.7 ]
  br i1 %19, label %while.body.13, label %while.end.15

while.body.13:                                    ; preds = %land.end.12
  %20 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash14 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 2
  %21 = load %struct.expr*, %struct.expr** %next_same_hash14, align 8
  store %struct.expr* %21, %struct.expr** %expr, align 8
  br label %while.cond.5

while.end.15:                                     ; preds = %land.end.12
  br label %if.end

if.end:                                           ; preds = %while.end.15, %while.end
  %22 = load %struct.expr*, %struct.expr** %expr, align 8
  ret %struct.expr* %22
}

; Function Attrs: nounwind uwtable
define internal %struct.expr* @next_set(i32 %regno, %struct.expr* %expr) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %expr.addr = alloca %struct.expr*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %0, i32 0, i32 2
  %1 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %1, %struct.expr** %expr.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %tobool = icmp ne %struct.expr* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %3 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %expr1 = getelementptr inbounds %struct.expr, %struct.expr* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %expr1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %6 = load i32, i32* %rtuint, align 4
  %7 = load i32, i32* %regno.addr, align 4
  %cmp = icmp ne i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %9 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  ret %struct.expr* %9
}

declare i32 @validate_replace_src(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare zeroext i1 @purge_dead_edges(%struct.basic_block_def*) #1

declare void @add_noreturn_fake_exit_edges() #1

; Function Attrs: nounwind uwtable
define internal void @compute_ld_motion_mems() #0 {
entry:
  %ptr = alloca %struct.ls_expr*, align 8
  %bb = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  store %struct.ls_expr* null, %struct.ls_expr** @pre_ldst_mems, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data4 to [1 x %struct.basic_block_def*]*
  %arrayidx6 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 %idxprom3
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx6, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp8 = icmp ne %struct.rtx_def* %7, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %13 = phi i1 [ false, %for.cond.2 ], [ %cmp8, %land.rhs ]
  br i1 %13, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %land.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom10 = sext i32 %bf.clear to i64
  %arrayidx11 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom10
  %16 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv, 105
  br i1 %cmp12, label %if.then, label %if.end.80

if.then:                                          ; preds = %for.body.9
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load17 = load i32, i32* %19, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 47
  br i1 %cmp19, label %if.then.21, label %if.else.75

if.then.21:                                       ; preds = %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 3
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %src, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %dest, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load34 = load i32, i32* %27, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 66
  br i1 %cmp36, label %land.lhs.true, label %if.else.48

land.lhs.true:                                    ; preds = %if.then.21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call = call i32 @simple_mem(%struct.rtx_def* %28)
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %land.lhs.true
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call40 = call %struct.ls_expr* @ldst_entry(%struct.rtx_def* %29)
  store %struct.ls_expr* %call40, %struct.ls_expr** %ptr, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load41 = load i32, i32* %31, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 61
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.39
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %loads = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %33, i32 0, i32 2
  %34 = load %struct.rtx_def*, %struct.rtx_def** %loads, align 8
  %call46 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %32, %struct.rtx_def* %34)
  %35 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %loads47 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %35, i32 0, i32 2
  store %struct.rtx_def* %call46, %struct.rtx_def** %loads47, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.39
  %36 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %36, i32 0, i32 5
  store i32 1, i32* %invalid, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.45
  br label %if.end.49

if.else.48:                                       ; preds = %land.lhs.true, %if.then.21
  %37 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  call void @invalidate_any_buried_refs(%struct.rtx_def* %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load50 = load i32, i32* %39, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 66
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.74

land.lhs.true.54:                                 ; preds = %if.end.49
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call55 = call i32 @simple_mem(%struct.rtx_def* %40)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.74

if.then.57:                                       ; preds = %land.lhs.true.54
  %41 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call58 = call %struct.ls_expr* @ldst_entry(%struct.rtx_def* %41)
  store %struct.ls_expr* %call58, %struct.ls_expr** %ptr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load59 = load i32, i32* %43, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp ne i32 %bf.clear60, 66
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.71

land.lhs.true.63:                                 ; preds = %if.then.57
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load64 = load i32, i32* %45, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp ne i32 %bf.clear65, 41
  br i1 %cmp66, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %land.lhs.true.63
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %47 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %stores = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %47, i32 0, i32 3
  %48 = load %struct.rtx_def*, %struct.rtx_def** %stores, align 8
  %call69 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %46, %struct.rtx_def* %48)
  %49 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %stores70 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %49, i32 0, i32 3
  store %struct.rtx_def* %call69, %struct.rtx_def** %stores70, align 8
  br label %if.end.73

if.else.71:                                       ; preds = %land.lhs.true.63, %if.then.57
  %50 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid72 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %50, i32 0, i32 5
  store i32 1, i32* %invalid72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.68
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.54, %if.end.49
  br label %if.end.79

if.else.75:                                       ; preds = %if.then
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 3
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  call void @invalidate_any_buried_refs(%struct.rtx_def* %52)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75, %if.end.74
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 2
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end
  %55 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @trim_ld_motion_mems() #0 {
entry:
  %last = alloca %struct.ls_expr*, align 8
  %ptr = alloca %struct.ls_expr*, align 8
  %del = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  %i = alloca i32, align 4
  store %struct.ls_expr* null, %struct.ls_expr** %last, align 8
  %call = call %struct.ls_expr* @first_ls_expr()
  store %struct.ls_expr* %call, %struct.ls_expr** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %0 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %cmp = icmp ne %struct.ls_expr* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %1, i32 0, i32 5
  %2 = load i32, i32* %invalid, align 4
  store i32 %2, i32* %del, align 4
  store %struct.expr* null, %struct.expr** %expr, align 8
  %3 = load i32, i32* %del, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %while.body
  store i32 1, i32* %del, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @expr_hash_table_size, align 4
  %cmp1 = icmp ult i32 %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %del, align 4
  %tobool2 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %for.body, label %for.end.11

for.body:                                         ; preds = %land.end
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %9, i64 %idxprom
  %10 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %10, %struct.expr** %expr, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp4 = icmp ne %struct.expr* %11, null
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %12 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr6 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %expr6, align 8
  %14 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %pattern = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call7 = call i32 @expr_equiv_p(%struct.rtx_def* %13, %struct.rtx_def* %15)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body.5
  store i32 0, i32* %del, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %16, i32 0, i32 2
  %17 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %17, %struct.expr** %expr, align 8
  br label %for.cond.3

for.end:                                          ; preds = %if.then.9, %for.cond.3
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %land.end
  br label %if.end.12

if.end.12:                                        ; preds = %for.end.11, %while.body
  %19 = load i32, i32* %del, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.else.21

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct.ls_expr*, %struct.ls_expr** %last, align 8
  %cmp15 = icmp ne %struct.ls_expr* %20, null
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  %21 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %next = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %21, i32 0, i32 4
  %22 = load %struct.ls_expr*, %struct.ls_expr** %next, align 8
  %23 = load %struct.ls_expr*, %struct.ls_expr** %last, align 8
  %next17 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %23, i32 0, i32 4
  store %struct.ls_expr* %22, %struct.ls_expr** %next17, align 8
  %24 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  call void @free_ldst_entry(%struct.ls_expr* %24)
  %25 = load %struct.ls_expr*, %struct.ls_expr** %last, align 8
  %next18 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %25, i32 0, i32 4
  %26 = load %struct.ls_expr*, %struct.ls_expr** %next18, align 8
  store %struct.ls_expr* %26, %struct.ls_expr** %ptr, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.14
  %27 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %next19 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %27, i32 0, i32 4
  %28 = load %struct.ls_expr*, %struct.ls_expr** %next19, align 8
  store %struct.ls_expr* %28, %struct.ls_expr** @pre_ldst_mems, align 8
  %29 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  call void @free_ldst_entry(%struct.ls_expr* %29)
  %30 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  store %struct.ls_expr* %30, %struct.ls_expr** %ptr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.16
  br label %if.end.24

if.else.21:                                       ; preds = %if.end.12
  %31 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  store %struct.ls_expr* %31, %struct.ls_expr** %last, align 8
  %32 = load %struct.expr*, %struct.expr** %expr, align 8
  %33 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %expr22 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %33, i32 0, i32 0
  store %struct.expr* %32, %struct.expr** %expr22, align 8
  %34 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %next23 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %34, i32 0, i32 4
  %35 = load %struct.ls_expr*, %struct.ls_expr** %next23, align 8
  store %struct.ls_expr* %35, %struct.ls_expr** %ptr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.end.20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool25 = icmp ne %struct._IO_FILE* %36, null
  br i1 %tobool25, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %while.end
  %37 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %cmp26 = icmp ne %struct.ls_expr* %37, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  call void @print_ldst_list(%struct._IO_FILE* %38)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_pre_mem(i32 %n_blocks, i32 %n_exprs) #0 {
entry:
  %n_blocks.addr = alloca i32, align 4
  %n_exprs.addr = alloca i32, align 4
  store i32 %n_blocks, i32* %n_blocks.addr, align 4
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  %0 = load i32, i32* %n_blocks.addr, align 4
  %1 = load i32, i32* %n_exprs.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @transp, align 8
  %2 = load i32, i32* %n_blocks.addr, align 4
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @comp, align 8
  %4 = load i32, i32* %n_blocks.addr, align 4
  %5 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @antloc, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_optimal, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_redundant, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_delete_map, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @ae_in, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @ae_out, align 8
  %6 = load i32, i32* %n_blocks.addr, align 4
  %7 = load i32, i32* %n_exprs.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** @ae_kill, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_pre_data() #0 {
entry:
  %trapping_expr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %ui = alloca i32, align 4
  %e = alloca %struct.expr*, align 8
  %e13 = alloca %struct.edge_def*, align 8
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  call void @compute_local_properties(%struct.simple_bitmap_def** %0, %struct.simple_bitmap_def** %1, %struct.simple_bitmap_def** %2, i32 0)
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %3, i32 %4)
  %5 = load i32, i32* @n_exprs, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %5)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %trapping_expr, align 8
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %trapping_expr, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %6)
  store i32 0, i32* %ui, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %7 = load i32, i32* %ui, align 4
  %8 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ui, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %10, i64 %idxprom
  %11 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %11, %struct.expr** %e, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load %struct.expr*, %struct.expr** %e, align 8
  %cmp2 = icmp ne %struct.expr* %12, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %13 = load %struct.expr*, %struct.expr** %e, align 8
  %expr = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %call4 = call i32 @may_trap_p(%struct.rtx_def* %14)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %15 = load %struct.expr*, %struct.expr** %e, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 1
  %16 = load i32, i32* %bitmap_index, align 4
  %rem = urem i32 %16, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %17 = load %struct.expr*, %struct.expr** %e, align 8
  %bitmap_index5 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 1
  %18 = load i32, i32* %bitmap_index5, align 4
  %div = udiv i32 %18, 64
  %idxprom6 = zext i32 %div to i64
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %trapping_expr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom6
  %20 = load i64, i64* %arrayidx7, align 8
  %or = or i64 %20, %shl
  store i64 %or, i64* %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.expr*, %struct.expr** %e, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %21, i32 0, i32 2
  %22 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %22, %struct.expr** %e, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %23 = load i32, i32* %ui, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %ui, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.43, %for.end.9
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* @n_basic_blocks, align 4
  %cmp11 = icmp slt i32 %24, %25
  br i1 %cmp11, label %for.body.12, label %for.end.45

for.body.12:                                      ; preds = %for.cond.10
  %26 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx15 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom14
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx15, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 4
  %29 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %29, %struct.edge_def** %e13, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.30, %for.body.12
  %30 = load %struct.edge_def*, %struct.edge_def** %e13, align 8
  %tobool17 = icmp ne %struct.edge_def* %30, null
  br i1 %tobool17, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.16
  %31 = load %struct.edge_def*, %struct.edge_def** %e13, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 6
  %32 = load i32, i32* %flags, align 4
  %and = and i32 %32, 2
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.29

if.then.20:                                       ; preds = %for.body.18
  %33 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %34, i64 %idxprom21
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %37, i64 %idxprom23
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  %39 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %trapping_expr, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %35, %struct.simple_bitmap_def* %38, %struct.simple_bitmap_def* %39)
  %40 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %40 to i64
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %41, i64 %idxprom25
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom27
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx28, align 8
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %trapping_expr, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %42, %struct.simple_bitmap_def* %45, %struct.simple_bitmap_def* %46)
  br label %for.end.31

if.end.29:                                        ; preds = %for.body.18
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %47 = load %struct.edge_def*, %struct.edge_def** %e13, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 0
  %48 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e13, align 8
  br label %for.cond.16

for.end.31:                                       ; preds = %if.then.20, %for.cond.16
  %49 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %49 to i64
  %50 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %50, i64 %idxprom32
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %52 to i64
  %53 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx35 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %53, i64 %idxprom34
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx35, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %55 to i64
  %56 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %arrayidx37 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %56, i64 %idxprom36
  %57 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx37, align 8
  %call38 = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %51, %struct.simple_bitmap_def* %54, %struct.simple_bitmap_def* %57)
  %58 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %58 to i64
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %arrayidx40 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %59, i64 %idxprom39
  %60 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx40, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %61 to i64
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %arrayidx42 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %62, i64 %idxprom41
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx42, align 8
  call void @sbitmap_not(%struct.simple_bitmap_def* %60, %struct.simple_bitmap_def* %63)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.31
  %64 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %64, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.10

for.end.45:                                       ; preds = %for.cond.10
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %66 = load i32, i32* @n_exprs, align 4
  %67 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %68 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %69 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %70 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %call46 = call %struct.edge_list* @pre_edge_lcm(%struct._IO_FILE* %65, i32 %66, %struct.simple_bitmap_def** %67, %struct.simple_bitmap_def** %68, %struct.simple_bitmap_def** %69, %struct.simple_bitmap_def** %70, %struct.simple_bitmap_def*** @pre_insert_map, %struct.simple_bitmap_def*** @pre_delete_map)
  store %struct.edge_list* %call46, %struct.edge_list** @edge_list, align 8
  %71 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %72 = bitcast %struct.simple_bitmap_def** %71 to i8*
  call void @free(i8* %72) #2
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @antloc, align 8
  %73 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_kill, align 8
  %74 = bitcast %struct.simple_bitmap_def** %73 to i8*
  call void @free(i8* %74) #2
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @ae_kill, align 8
  %75 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %trapping_expr, align 8
  %76 = bitcast %struct.simple_bitmap_def* %75 to i8*
  call void @free(i8* %76) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pre_gcse() #0 {
entry:
  %i = alloca i32, align 4
  %did_insert = alloca i32, align 4
  %changed = alloca i32, align 4
  %index_map = alloca %struct.expr**, align 8
  %expr = alloca %struct.expr*, align 8
  %0 = load i32, i32* @n_exprs, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %1 = bitcast i8* %call to %struct.expr**
  store %struct.expr** %1, %struct.expr*** %index_map, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %5, i64 %idxprom
  %6 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %6, %struct.expr** %expr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp3 = icmp ne %struct.expr* %7, null
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %8 = load %struct.expr*, %struct.expr** %expr, align 8
  %9 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 1
  %10 = load i32, i32* %bitmap_index, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %arrayidx7 = getelementptr inbounds %struct.expr*, %struct.expr** %11, i64 %idxprom6
  store %struct.expr* %8, %struct.expr** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %12 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 2
  %13 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %13, %struct.expr** %expr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %15 = load i32, i32* @max_cuid, align 4
  %call10 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %15)
  store %struct.simple_bitmap_def* %call10, %struct.simple_bitmap_def** @pre_redundant_insns, align 8
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @pre_redundant_insns, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %16)
  %call11 = call i32 @pre_delete()
  store i32 %call11, i32* %changed, align 4
  %17 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8
  %18 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %call12 = call i32 @pre_edge_insert(%struct.edge_list* %17, %struct.expr** %18)
  store i32 %call12, i32* %did_insert, align 4
  call void @pre_insert_copies()
  %19 = load i32, i32* %did_insert, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.9
  call void @commit_edge_insertions()
  store i32 1, i32* %changed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.9
  %20 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %21 = bitcast %struct.expr** %20 to i8*
  call void @free(i8* %21) #2
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @pre_redundant_insns, align 8
  %23 = bitcast %struct.simple_bitmap_def* %22 to i8*
  call void @free(i8* %23) #2
  %24 = load i32, i32* %changed, align 4
  ret i32 %24
}

declare void @free_edge_list(%struct.edge_list*) #1

; Function Attrs: nounwind uwtable
define internal void @free_pre_mem() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*
  call void @free(i8* %3) #2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_optimal, align 8
  %tobool = icmp ne %struct.simple_bitmap_def** %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_optimal, align 8
  %6 = bitcast %struct.simple_bitmap_def** %5 to i8*
  call void @free(i8* %6) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_redundant, align 8
  %tobool1 = icmp ne %struct.simple_bitmap_def** %7, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_redundant, align 8
  %9 = bitcast %struct.simple_bitmap_def** %8 to i8*
  call void @free(i8* %9) #2
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  %tobool4 = icmp ne %struct.simple_bitmap_def** %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  %12 = bitcast %struct.simple_bitmap_def** %11 to i8*
  call void @free(i8* %12) #2
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_delete_map, align 8
  %tobool7 = icmp ne %struct.simple_bitmap_def** %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_delete_map, align 8
  %15 = bitcast %struct.simple_bitmap_def** %14 to i8*
  call void @free(i8* %15) #2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  %tobool10 = icmp ne %struct.simple_bitmap_def** %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_in, align 8
  %18 = bitcast %struct.simple_bitmap_def** %17 to i8*
  call void @free(i8* %18) #2
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_out, align 8
  %tobool13 = icmp ne %struct.simple_bitmap_def** %19, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ae_out, align 8
  %21 = bitcast %struct.simple_bitmap_def** %20 to i8*
  call void @free(i8* %21) #2
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @comp, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @transp, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_delete_map, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_redundant, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @pre_optimal, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @ae_out, align 8
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @ae_in, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_ldst_mems() #0 {
entry:
  %tmp = alloca %struct.ls_expr*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %tobool = icmp ne %struct.ls_expr* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  store %struct.ls_expr* %1, %struct.ls_expr** %tmp, align 8
  %2 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %next = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %2, i32 0, i32 4
  %3 = load %struct.ls_expr*, %struct.ls_expr** %next, align 8
  store %struct.ls_expr* %3, %struct.ls_expr** @pre_ldst_mems, align 8
  %4 = load %struct.ls_expr*, %struct.ls_expr** %tmp, align 8
  call void @free_ldst_entry(%struct.ls_expr* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.ls_expr* null, %struct.ls_expr** @pre_ldst_mems, align 8
  ret void
}

declare void @remove_fake_edges() #1

; Function Attrs: nounwind uwtable
define internal i32 @simple_mem(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 27
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 51
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @rtx_varies_p(%struct.rtx_def* %7, i32 0)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then.9, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct.ls_expr* @ldst_entry(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %ptr = alloca %struct.ls_expr*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.ls_expr* @first_ls_expr()
  store %struct.ls_expr* %call, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %cmp = icmp ne %struct.ls_expr* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %pattern = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %1, i32 0, i32 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call i32 @expr_equiv_p(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %call2 = call %struct.ls_expr* @next_ls_expr(%struct.ls_expr* %4)
  store %struct.ls_expr* %call2, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %tobool3 = icmp ne %struct.ls_expr* %5, null
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %for.end
  %call5 = call noalias i8* @xmalloc(i64 64)
  %6 = bitcast i8* %call5 to %struct.ls_expr*
  store %struct.ls_expr* %6, %struct.ls_expr** %ptr, align 8
  %7 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %8 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %next = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %8, i32 0, i32 4
  store %struct.ls_expr* %7, %struct.ls_expr** %next, align 8
  %9 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %expr = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %9, i32 0, i32 0
  store %struct.expr* null, %struct.expr** %expr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %pattern6 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %11, i32 0, i32 1
  store %struct.rtx_def* %10, %struct.rtx_def** %pattern6, align 8
  %12 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %loads = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %12, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %loads, align 8
  %13 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %stores = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %13, i32 0, i32 3
  store %struct.rtx_def* null, %struct.rtx_def** %stores, align 8
  %14 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %reaching_reg = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %14, i32 0, i32 8
  store %struct.rtx_def* null, %struct.rtx_def** %reaching_reg, align 8
  %15 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %15, i32 0, i32 5
  store i32 0, i32* %invalid, align 4
  %16 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %index = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %16, i32 0, i32 6
  store i32 0, i32* %index, align 4
  %17 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %hash_index = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %17, i32 0, i32 7
  store i32 0, i32* %hash_index, align 4
  %18 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  store %struct.ls_expr* %18, %struct.ls_expr** @pre_ldst_mems, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %for.end
  %19 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  ret %struct.ls_expr* %19
}

; Function Attrs: nounwind uwtable
define internal void @invalidate_any_buried_refs(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ptr = alloca %struct.ls_expr*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @simple_mem(%struct.rtx_def* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call %struct.ls_expr* @ldst_entry(%struct.rtx_def* %3)
  store %struct.ls_expr* %call1, %struct.ls_expr** %ptr, align 8
  %4 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %invalid = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %4, i32 0, i32 5
  store i32 1, i32* %invalid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %fmt, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %idxprom6 = sext i32 %bf.clear5 to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end
  %11 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %11, 0
  br i1 %cmp8, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8*, i8** %fmt, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 101
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom16
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @invalidate_any_buried_refs(%struct.rtx_def* %17)
  br label %if.end.39

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8*, i8** %fmt, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 69
  br i1 %cmp21, label %if.then.23, label %if.end.38

if.then.23:                                       ; preds = %if.else
  %21 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %21 to i64
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 %idxprom24
  %rtvec = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 0
  %24 = load i32, i32* %num_elem, align 4
  %sub27 = sub nsw i32 %24, 1
  store i32 %sub27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.then.23
  %25 = load i32, i32* %j, align 4
  %cmp29 = icmp sge i32 %25, 0
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %26 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtvec36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec36, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom32
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  call void @invalidate_any_buried_refs(%struct.rtx_def* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %31 = load i32, i32* %j, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.15
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %32 = load i32, i32* %i, align 4
  %dec41 = add nsw i32 %32, -1
  store i32 %dec41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

declare i32 @rtx_varies_p(%struct.rtx_def*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.ls_expr* @first_ls_expr() #6 {
entry:
  %0 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  ret %struct.ls_expr* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.ls_expr* @next_ls_expr(%struct.ls_expr* %ptr) #6 {
entry:
  %ptr.addr = alloca %struct.ls_expr*, align 8
  store %struct.ls_expr* %ptr, %struct.ls_expr** %ptr.addr, align 8
  %0 = load %struct.ls_expr*, %struct.ls_expr** %ptr.addr, align 8
  %next = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %0, i32 0, i32 4
  %1 = load %struct.ls_expr*, %struct.ls_expr** %next, align 8
  ret %struct.ls_expr* %1
}

; Function Attrs: nounwind uwtable
define internal void @free_ldst_entry(%struct.ls_expr* %ptr) #0 {
entry:
  %ptr.addr = alloca %struct.ls_expr*, align 8
  store %struct.ls_expr* %ptr, %struct.ls_expr** %ptr.addr, align 8
  %0 = load %struct.ls_expr*, %struct.ls_expr** %ptr.addr, align 8
  %loads = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %0, i32 0, i32 2
  call void @free_INSN_LIST_list(%struct.rtx_def** %loads)
  %1 = load %struct.ls_expr*, %struct.ls_expr** %ptr.addr, align 8
  %stores = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %1, i32 0, i32 3
  call void @free_INSN_LIST_list(%struct.rtx_def** %stores)
  %2 = load %struct.ls_expr*, %struct.ls_expr** %ptr.addr, align 8
  %3 = bitcast %struct.ls_expr* %2 to i8*
  call void @free(i8* %3) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_ldst_list(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %ptr = alloca %struct.ls_expr*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0))
  %call1 = call %struct.ls_expr* @first_ls_expr()
  store %struct.ls_expr* %call1, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %cmp = icmp ne %struct.ls_expr* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %index = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %3, i32 0, i32 6
  %4 = load i32, i32* %index, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %pattern = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  call void @print_rtl(%struct._IO_FILE* %5, %struct.rtx_def* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  %9 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %loads = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %loads, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %loads4 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %12, i32 0, i32 2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %loads4, align 8
  call void @print_rtl(%struct._IO_FILE* %11, %struct.rtx_def* %13)
  br label %if.end

if.else:                                          ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0))
  %16 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %stores = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %16, i32 0, i32 3
  %17 = load %struct.rtx_def*, %struct.rtx_def** %stores, align 8
  %tobool7 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %19 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %stores9 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %19, i32 0, i32 3
  %20 = load %struct.rtx_def*, %struct.rtx_def** %stores9, align 8
  call void @print_rtl(%struct._IO_FILE* %18, %struct.rtx_def* %20)
  br label %if.end.12

if.else.10:                                       ; preds = %if.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %23 = load %struct.ls_expr*, %struct.ls_expr** %ptr, align 8
  %call14 = call %struct.ls_expr* @next_ls_expr(%struct.ls_expr* %23)
  store %struct.ls_expr* %call14, %struct.ls_expr** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare i32 @may_trap_p(%struct.rtx_def*) #1

declare void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_not(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare %struct.edge_list* @pre_edge_lcm(%struct._IO_FILE*, i32, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def***, %struct.simple_bitmap_def***) #1

; Function Attrs: nounwind uwtable
define internal i32 @pre_delete() #0 {
entry:
  %i = alloca i32, align 4
  %changed = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  %occr = alloca %struct.occr*, align 8
  %indx = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %3, i64 %idxprom
  %4 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %4, %struct.expr** %expr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.86, %for.body
  %5 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp2 = icmp ne %struct.expr* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end.87

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %6, i32 0, i32 1
  %7 = load i32, i32* %bitmap_index, align 4
  store i32 %7, i32* %indx, align 4
  %8 = load %struct.expr*, %struct.expr** %expr, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 3
  %9 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %9, %struct.occr** %occr, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %10 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp5 = icmp ne %struct.occr* %10, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %11 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn7 = getelementptr inbounds %struct.occr, %struct.occr* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn7, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %14 = load i32, i32* %rtint, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb10 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb10, i32 0, i64 %idxprom9
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  store %struct.basic_block_def* %16, %struct.basic_block_def** %bb, align 8
  %17 = load i32, i32* %indx, align 4
  %div = udiv i32 %17, 64
  %idxprom12 = zext i32 %div to i64
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 11
  %19 = load i32, i32* %index, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_delete_map, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %idxprom13
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom12
  %22 = load i64, i64* %arrayidx15, align 8
  %23 = load i32, i32* %indx, align 4
  %rem = urem i32 %23, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %22, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.85

if.then:                                          ; preds = %for.body.6
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load = load i32, i32* %25, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom16 = sext i32 %bf.clear to i64
  %arrayidx17 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom16
  %26 = load i8, i8* %arrayidx17, align 1
  %conv = sext i8 %26 to i32
  %cmp18 = icmp eq i32 %conv, 105
  br i1 %cmp18, label %cond.true, label %cond.false.33

cond.true:                                        ; preds = %if.then
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load22 = load i32, i32* %29, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 47
  br i1 %cmp24, label %cond.true.26, label %cond.false

cond.true.26:                                     ; preds = %cond.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %32, %struct.rtx_def* %34)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.26
  %cond = phi %struct.rtx_def* [ %31, %cond.true.26 ], [ %call, %cond.false ]
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.then
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end
  %cond35 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.33 ]
  store %struct.rtx_def* %cond35, %struct.rtx_def** %set, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool36 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool36, label %if.end, label %if.then.37

if.then.37:                                       ; preds = %cond.end.34
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4969, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.pre_delete, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %cond.end.34
  %36 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %36, i32 0, i32 5
  %37 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  %cmp38 = icmp eq %struct.rtx_def* %37, null
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load44 = load i32, i32* %40, align 8
  %bf.lshr = lshr i32 %bf.load44, 16
  %bf.clear45 = and i32 %bf.lshr, 255
  %call46 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear45)
  %41 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg47 = getelementptr inbounds %struct.expr, %struct.expr* %41, i32 0, i32 5
  store %struct.rtx_def* %call46, %struct.rtx_def** %reaching_reg47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.40, %if.end
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %44 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg52 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 5
  %45 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg52, align 8
  %call53 = call i32 @validate_change(%struct.rtx_def* %42, %struct.rtx_def** %rtx51, %struct.rtx_def* %45, i32 0)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.72

if.then.55:                                       ; preds = %if.end.48
  %46 = load %struct.occr*, %struct.occr** %occr, align 8
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %46, i32 0, i32 2
  store i8 1, i8* %deleted_p, align 1
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %48 = load i32, i32* %rtint58, align 4
  %idxprom59 = sext i32 %48 to i64
  %49 = load i32*, i32** @uid_cuid, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %49, i64 %idxprom59
  %50 = load i32, i32* %arrayidx60, align 4
  %rem61 = urem i32 %50, 64
  %sh_prom62 = zext i32 %rem61 to i64
  %shl = shl i64 1, %sh_prom62
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %52 = load i32, i32* %rtint65, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load i32*, i32** @uid_cuid, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %53, i64 %idxprom66
  %54 = load i32, i32* %arrayidx67, align 4
  %div68 = udiv i32 %54, 64
  %idxprom69 = zext i32 %div68 to i64
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @pre_redundant_insns, align 8
  %elms70 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %55, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %elms70, i32 0, i64 %idxprom69
  %56 = load i64, i64* %arrayidx71, align 8
  %or = or i64 %56, %shl
  store i64 %or, i64* %arrayidx71, align 8
  store i32 1, i32* %changed, align 4
  %57 = load i32, i32* @gcse_subst_count, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* @gcse_subst_count, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.55, %if.end.48
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool73 = icmp ne %struct._IO_FILE* %58, null
  br i1 %tobool73, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %if.end.72
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %61 = load i32, i32* %rtint77, align 4
  %62 = load i32, i32* %indx, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i32 0, i32 0), i32 %61, i32 %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index79, align 4
  %66 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg80 = getelementptr inbounds %struct.expr, %struct.expr* %66, i32 0, i32 5
  %67 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %68 = load i32, i32* %rtuint, align 4
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i32 %65, i32 %68)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.74, %if.end.72
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %69 = load %struct.occr*, %struct.occr** %occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %69, i32 0, i32 0
  %70 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %70, %struct.occr** %occr, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end
  %71 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %71, i32 0, i32 2
  %72 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %72, %struct.expr** %expr, align 8
  br label %for.cond.1

for.end.87:                                       ; preds = %for.cond.1
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %73 = load i32, i32* %i, align 4
  %inc89 = add i32 %73, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  %74 = load i32, i32* %changed, align 4
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @pre_edge_insert(%struct.edge_list* %edge_list, %struct.expr** %index_map) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %index_map.addr = alloca %struct.expr**, align 8
  %e = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %set_size = alloca i32, align 4
  %did_insert = alloca i32, align 4
  %inserted = alloca %struct.simple_bitmap_def**, align 8
  %indx = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %insert = alloca i64, align 8
  %expr = alloca %struct.expr*, align 8
  %occr = alloca %struct.occr*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %eg = alloca %struct.edge_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.expr** %index_map, %struct.expr*** %index_map.addr, align 8
  store i32 0, i32* %did_insert, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %0, i64 0
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  store i32 %2, i32* %set_size, align 4
  %3 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %3, i32 0, i32 1
  %4 = load i32, i32* %num_edges1, align 4
  store i32 %4, i32* %num_edges, align 4
  %5 = load i32, i32* %num_edges, align 4
  %6 = load i32, i32* @n_exprs, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %5, i32 %6)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** %inserted, align 8
  %7 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %inserted, align 8
  %8 = load i32, i32* %num_edges, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %7, i32 %8)
  store i32 0, i32* %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %entry
  %9 = load i32, i32* %e, align 4
  %10 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %e, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %12, i32 0, i32 2
  %13 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx2 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %13, i64 %idxprom
  %14 = load %struct.edge_def*, %struct.edge_def** %arrayidx2, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 2
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %15, %struct.basic_block_def** %bb, align 8
  store i32 0, i32* %indx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.67, %for.body
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %set_size, align 4
  %cmp4 = icmp slt i32 %16, %17
  br i1 %cmp4, label %for.body.5, label %for.end.69

for.body.5:                                       ; preds = %for.cond.3
  %18 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = load i32, i32* %e, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pre_insert_map, align 8
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %idxprom7
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom6
  %22 = load i64, i64* %arrayidx9, align 8
  store i64 %22, i64* %insert, align 8
  %23 = load i32, i32* %indx, align 4
  store i32 %23, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.63, %for.body.5
  %24 = load i64, i64* %insert, align 8
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.10
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* @n_exprs, align 4
  %cmp11 = icmp slt i32 %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.10
  %27 = phi i1 [ false, %for.cond.10 ], [ %cmp11, %land.rhs ]
  br i1 %27, label %for.body.12, label %for.end.66

for.body.12:                                      ; preds = %land.end
  %28 = load i64, i64* %insert, align 8
  %and = and i64 %28, 1
  %cmp13 = icmp ne i64 %and, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %for.body.12
  %29 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %29 to i64
  %30 = load %struct.expr**, %struct.expr*** %index_map.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.expr*, %struct.expr** %30, i64 %idxprom14
  %31 = load %struct.expr*, %struct.expr** %arrayidx15, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 5
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  %cmp16 = icmp ne %struct.rtx_def* %32, null
  br i1 %cmp16, label %if.then, label %if.end.62

if.then:                                          ; preds = %land.lhs.true
  %33 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.expr**, %struct.expr*** %index_map.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.expr*, %struct.expr** %34, i64 %idxprom17
  %35 = load %struct.expr*, %struct.expr** %arrayidx18, align 8
  store %struct.expr* %35, %struct.expr** %expr, align 8
  %36 = load %struct.expr*, %struct.expr** %expr, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %36, i32 0, i32 3
  %37 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %37, %struct.occr** %occr, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then
  %38 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp20 = icmp ne %struct.occr* %38, null
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %39 = load %struct.occr*, %struct.occr** %occr, align 8
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %39, i32 0, i32 2
  %40 = load i8, i8* %deleted_p, align 1
  %tobool22 = icmp ne i8 %40, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %for.body.21
  br label %for.inc

if.end:                                           ; preds = %for.body.21
  %41 = load i32, i32* %j, align 4
  %div = udiv i32 %41, 64
  %idxprom24 = zext i32 %div to i64
  %42 = load i32, i32* %e, align 4
  %idxprom25 = sext i32 %42 to i64
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %inserted, align 8
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %43, i64 %idxprom25
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8
  %elms27 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [1 x i64], [1 x i64]* %elms27, i32 0, i64 %idxprom24
  %45 = load i64, i64* %arrayidx28, align 8
  %46 = load i32, i32* %j, align 4
  %rem = urem i32 %46, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %45, %sh_prom
  %and29 = and i64 %shr, 1
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.end.61, label %if.then.31

if.then.31:                                       ; preds = %if.end
  %47 = load i32, i32* %e, align 4
  %idxprom32 = sext i32 %47 to i64
  %48 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge33 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %48, i32 0, i32 2
  %49 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge33, align 8
  %arrayidx34 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %49, i64 %idxprom32
  %50 = load %struct.edge_def*, %struct.edge_def** %arrayidx34, align 8
  store %struct.edge_def* %50, %struct.edge_def** %eg, align 8
  %51 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 6
  %52 = load i32, i32* %flags, align 4
  %and35 = and i32 %52, 2
  %cmp36 = icmp eq i32 %and35, 2
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.31
  %53 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %53 to i64
  %54 = load %struct.expr**, %struct.expr*** %index_map.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.expr*, %struct.expr** %54, i64 %idxprom38
  %55 = load %struct.expr*, %struct.expr** %arrayidx39, align 8
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @insert_insn_end_bb(%struct.expr* %55, %struct.basic_block_def* %56, i32 0)
  br label %if.end.43

if.else:                                          ; preds = %if.then.31
  %57 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %57 to i64
  %58 = load %struct.expr**, %struct.expr*** %index_map.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct.expr*, %struct.expr** %58, i64 %idxprom40
  %59 = load %struct.expr*, %struct.expr** %arrayidx41, align 8
  %call42 = call %struct.rtx_def* @process_insert_insn(%struct.expr* %59)
  store %struct.rtx_def* %call42, %struct.rtx_def** %insn, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %61 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %60, %struct.edge_def* %61)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.37
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool44 = icmp ne %struct._IO_FILE* %62, null
  br i1 %tobool44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.43
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index, align 4
  %66 = load i32, i32* %e, align 4
  %idxprom46 = sext i32 %66 to i64
  %67 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge47 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %67, i32 0, i32 2
  %68 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge47, align 8
  %arrayidx48 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %68, i64 %idxprom46
  %69 = load %struct.edge_def*, %struct.edge_def** %arrayidx48, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 3
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 11
  %71 = load i32, i32* %index49, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i32 %65, i32 %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %73 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %73, i32 0, i32 1
  %74 = load i32, i32* %bitmap_index, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 %74)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.45, %if.end.43
  %75 = load %struct.expr*, %struct.expr** %expr, align 8
  call void @update_ld_motion_stores(%struct.expr* %75)
  %76 = load i32, i32* %j, align 4
  %rem53 = urem i32 %76, 64
  %sh_prom54 = zext i32 %rem53 to i64
  %shl = shl i64 1, %sh_prom54
  %77 = load i32, i32* %j, align 4
  %div55 = udiv i32 %77, 64
  %idxprom56 = zext i32 %div55 to i64
  %78 = load i32, i32* %e, align 4
  %idxprom57 = sext i32 %78 to i64
  %79 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %inserted, align 8
  %arrayidx58 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %79, i64 %idxprom57
  %80 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx58, align 8
  %elms59 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %80, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [1 x i64], [1 x i64]* %elms59, i32 0, i64 %idxprom56
  %81 = load i64, i64* %arrayidx60, align 8
  %or = or i64 %81, %shl
  store i64 %or, i64* %arrayidx60, align 8
  store i32 1, i32* %did_insert, align 4
  %82 = load i32, i32* @gcse_create_count, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* @gcse_create_count, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.52, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.61, %if.then.23
  %83 = load %struct.occr*, %struct.occr** %occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %83, i32 0, i32 0
  %84 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %84, %struct.occr** %occr, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %land.lhs.true, %for.body.12
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %85 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %85, 1
  store i32 %inc64, i32* %j, align 4
  %86 = load i64, i64* %insert, align 8
  %shr65 = lshr i64 %86, 1
  store i64 %shr65, i64* %insert, align 8
  br label %for.cond.10

for.end.66:                                       ; preds = %land.end
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %87 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %87, 1
  store i32 %inc68, i32* %i, align 4
  %88 = load i32, i32* %indx, align 4
  %add = add i32 %88, 64
  store i32 %add, i32* %indx, align 4
  br label %for.cond.3

for.end.69:                                       ; preds = %for.cond.3
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %89 = load i32, i32* %e, align 4
  %inc71 = add nsw i32 %89, 1
  store i32 %inc71, i32* %e, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %90 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %inserted, align 8
  %91 = bitcast %struct.simple_bitmap_def** %90 to i8*
  call void @free(i8* %91) #2
  %92 = load i32, i32* %did_insert, align 4
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal void @pre_insert_copies() #0 {
entry:
  %i = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  %occr = alloca %struct.occr*, align 8
  %avail = alloca %struct.occr*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %3, i64 %idxprom
  %4 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %4, %struct.expr** %expr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.51, %for.body
  %5 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp2 = icmp ne %struct.expr* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end.52

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.expr*, %struct.expr** %expr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %6, i32 0, i32 5
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  %cmp4 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.inc.51

if.end:                                           ; preds = %for.body.3
  %8 = load %struct.expr*, %struct.expr** %expr, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %8, i32 0, i32 3
  %9 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %9, %struct.occr** %occr, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.48, %if.end
  %10 = load %struct.occr*, %struct.occr** %occr, align 8
  %cmp6 = icmp ne %struct.occr* %10, null
  br i1 %cmp6, label %for.body.7, label %for.end.50

for.body.7:                                       ; preds = %for.cond.5
  %11 = load %struct.occr*, %struct.occr** %occr, align 8
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %11, i32 0, i32 2
  %12 = load i8, i8* %deleted_p, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body.7
  br label %for.inc.48

if.end.9:                                         ; preds = %for.body.7
  %13 = load %struct.expr*, %struct.expr** %expr, align 8
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 4
  %14 = load %struct.occr*, %struct.occr** %avail_occr, align 8
  store %struct.occr* %14, %struct.occr** %avail, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.9
  %15 = load %struct.occr*, %struct.occr** %avail, align 8
  %cmp11 = icmp ne %struct.occr* %15, null
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %16 = load %struct.occr*, %struct.occr** %avail, align 8
  %insn13 = getelementptr inbounds %struct.occr, %struct.occr* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn13, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  %18 = load %struct.occr*, %struct.occr** %avail, align 8
  %copied_p = getelementptr inbounds %struct.occr, %struct.occr* %18, i32 0, i32 3
  %19 = load i8, i8* %copied_p, align 1
  %tobool14 = icmp ne i8 %19, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.12
  br label %for.inc

if.end.16:                                        ; preds = %for.body.12
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %21 = load i32, i32* %rtint, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i32*, i32** @uid_cuid, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %22, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  %div = udiv i32 %23, 64
  %idxprom20 = zext i32 %div to i64
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @pre_redundant_insns, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom20
  %25 = load i64, i64* %arrayidx21, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %27 = load i32, i32* %rtint24, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i32*, i32** @uid_cuid, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %28, i64 %idxprom25
  %29 = load i32, i32* %arrayidx26, align 4
  %rem = urem i32 %29, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %25, %sh_prom
  %and = and i64 %shr, 1
  %tobool27 = icmp ne i64 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.16
  br label %for.inc

if.end.29:                                        ; preds = %if.end.16
  %30 = load %struct.occr*, %struct.occr** %avail, align 8
  %insn30 = getelementptr inbounds %struct.occr, %struct.occr* %30, i32 0, i32 1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtint33 = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %32 = load i32, i32* %rtint33, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx35 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom34
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx35, align 8
  %35 = load %struct.expr*, %struct.expr** %expr, align 8
  %36 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn36 = getelementptr inbounds %struct.occr, %struct.occr* %36, i32 0, i32 1
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtint39 = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %38 = load i32, i32* %rtint39, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data41 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %bb42 = bitcast %union.varray_data_tag* %data41 to [1 x %struct.basic_block_def*]*
  %arrayidx43 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb42, i32 0, i64 %idxprom40
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx43, align 8
  %call = call i32 @pre_expr_reaches_here_p(%struct.basic_block_def* %34, %struct.expr* %35, %struct.basic_block_def* %40)
  %tobool44 = icmp ne i32 %call, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.end.29
  br label %for.inc

if.end.46:                                        ; preds = %if.end.29
  %41 = load %struct.expr*, %struct.expr** %expr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @pre_insert_copy_insn(%struct.expr* %41, %struct.rtx_def* %42)
  %43 = load %struct.occr*, %struct.occr** %avail, align 8
  %copied_p47 = getelementptr inbounds %struct.occr, %struct.occr* %43, i32 0, i32 3
  store i8 1, i8* %copied_p47, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.then.45, %if.then.28, %if.then.15
  %44 = load %struct.occr*, %struct.occr** %avail, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %44, i32 0, i32 0
  %45 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %45, %struct.occr** %avail, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end, %if.then.8
  %46 = load %struct.occr*, %struct.occr** %occr, align 8
  %next49 = getelementptr inbounds %struct.occr, %struct.occr* %46, i32 0, i32 0
  %47 = load %struct.occr*, %struct.occr** %next49, align 8
  store %struct.occr* %47, %struct.occr** %occr, align 8
  br label %for.cond.5

for.end.50:                                       ; preds = %for.cond.5
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50, %if.then
  %48 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 2
  %49 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %49, %struct.expr** %expr, align 8
  br label %for.cond.1

for.end.52:                                       ; preds = %for.cond.1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

declare void @commit_edge_insertions() #1

; Function Attrs: nounwind uwtable
define internal void @insert_insn_end_bb(%struct.expr* %expr, %struct.basic_block_def* %bb, i32 %pre) #0 {
entry:
  %expr.addr = alloca %struct.expr*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %pre.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %insn122 = alloca %struct.rtx_def*, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %pre, i32* %pre.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %2, i32 0, i32 5
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %reg, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %regno, align 4
  %6 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %call = call %struct.rtx_def* @process_insert_insn(%struct.expr* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %pat, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load1 = load i32, i32* %10, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 32
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 5
  %12 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool = icmp ne %struct.edge_def* %13, null
  br i1 %tobool, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 5
  %15 = load %struct.edge_def*, %struct.edge_def** %succ5, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 6
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.4, %land.lhs.true, %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load7 = load i32, i32* %18, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 32
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.then
  %19 = load i32, i32* %pre.addr, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %20 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  %21 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %21, 64
  %idxprom = zext i32 %div to i64
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %24, i64 %idxprom13
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %25, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %26 = load i64, i64* %arrayidx15, align 8
  %27 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index16 = getelementptr inbounds %struct.expr, %struct.expr* %27, i32 0, i32 1
  %28 = load i32, i32* %bitmap_index16, align 4
  %rem = urem i32 %28, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %26, %sh_prom
  %and17 = and i64 %shr, 1
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.end, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %land.lhs.true.12
  %29 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index20 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 1
  %30 = load i32, i32* %bitmap_index20, align 4
  %div21 = udiv i32 %30, 64
  %idxprom22 = zext i32 %div21 to i64
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index23, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx25 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %33, i64 %idxprom24
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx25, align 8
  %elms26 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %34, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [1 x i64], [1 x i64]* %elms26, i32 0, i64 %idxprom22
  %35 = load i64, i64* %arrayidx27, align 8
  %36 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index28 = getelementptr inbounds %struct.expr, %struct.expr* %36, i32 0, i32 1
  %37 = load i32, i32* %bitmap_index28, align 4
  %rem29 = urem i32 %37, 64
  %sh_prom30 = zext i32 %rem29 to i64
  %shr31 = lshr i64 %35, %sh_prom30
  %and32 = and i64 %shr31, 1
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %if.end, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.19
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4658, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.insert_insn_end_bb, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true.19, %land.lhs.true.12, %land.lhs.true.10, %if.then
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load37 = load i32, i32* %40, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 44
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load44 = load i32, i32* %43, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 45
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %lor.lhs.false.40, %if.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call48 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %44)
  store %struct.rtx_def* %call48, %struct.rtx_def** %insn, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %lor.lhs.false.40
  %45 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call50 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %45, %struct.rtx_def* %46)
  store %struct.rtx_def* %call50, %struct.rtx_def** %new_insn, align 8
  br label %if.end.114

if.else:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load51 = load i32, i32* %48, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 34
  br i1 %cmp53, label %land.lhs.true.54, label %if.else.111

land.lhs.true.54:                                 ; preds = %if.else
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 5
  %50 = load %struct.edge_def*, %struct.edge_def** %succ55, align 8
  %succ_next56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 1
  %51 = load %struct.edge_def*, %struct.edge_def** %succ_next56, align 8
  %tobool57 = icmp ne %struct.edge_def* %51, null
  br i1 %tobool57, label %if.then.63, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.54
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 5
  %53 = load %struct.edge_def*, %struct.edge_def** %succ59, align 8
  %flags60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 6
  %54 = load i32, i32* %flags60, align 4
  %and61 = and i32 %54, 2
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.111

if.then.63:                                       ; preds = %lor.lhs.false.58, %land.lhs.true.54
  %55 = load i32, i32* %pre.addr, align 4
  %tobool64 = icmp ne i32 %55, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.96

land.lhs.true.65:                                 ; preds = %if.then.63
  %56 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index66 = getelementptr inbounds %struct.expr, %struct.expr* %56, i32 0, i32 1
  %57 = load i32, i32* %bitmap_index66, align 4
  %div67 = udiv i32 %57, 64
  %idxprom68 = zext i32 %div67 to i64
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index69, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx71 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %60, i64 %idxprom70
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx71, align 8
  %elms72 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %61, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [1 x i64], [1 x i64]* %elms72, i32 0, i64 %idxprom68
  %62 = load i64, i64* %arrayidx73, align 8
  %63 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index74 = getelementptr inbounds %struct.expr, %struct.expr* %63, i32 0, i32 1
  %64 = load i32, i32* %bitmap_index74, align 4
  %rem75 = urem i32 %64, 64
  %sh_prom76 = zext i32 %rem75 to i64
  %shr77 = lshr i64 %62, %sh_prom76
  %and78 = and i64 %shr77, 1
  %tobool79 = icmp ne i64 %and78, 0
  br i1 %tobool79, label %if.end.96, label %land.lhs.true.80

land.lhs.true.80:                                 ; preds = %land.lhs.true.65
  %65 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index81 = getelementptr inbounds %struct.expr, %struct.expr* %65, i32 0, i32 1
  %66 = load i32, i32* %bitmap_index81, align 4
  %div82 = udiv i32 %66, 64
  %idxprom83 = zext i32 %div82 to i64
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 11
  %68 = load i32, i32* %index84, align 4
  %idxprom85 = sext i32 %68 to i64
  %69 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx86 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %69, i64 %idxprom85
  %70 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx86, align 8
  %elms87 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %70, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [1 x i64], [1 x i64]* %elms87, i32 0, i64 %idxprom83
  %71 = load i64, i64* %arrayidx88, align 8
  %72 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index89 = getelementptr inbounds %struct.expr, %struct.expr* %72, i32 0, i32 1
  %73 = load i32, i32* %bitmap_index89, align 4
  %rem90 = urem i32 %73, 64
  %sh_prom91 = zext i32 %rem90 to i64
  %shr92 = lshr i64 %71, %sh_prom91
  %and93 = and i64 %shr92, 1
  %tobool94 = icmp ne i64 %and93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.80
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4703, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.insert_insn_end_bb, i32 0, i32 0)) #7
  unreachable

if.end.96:                                        ; preds = %land.lhs.true.80, %land.lhs.true.65, %if.then.63
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 0
  %76 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %call97 = call %struct.rtx_def* @find_first_parameter_load(%struct.rtx_def* %74, %struct.rtx_def* %76)
  store %struct.rtx_def* %call97, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.96
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load98 = load i32, i32* %78, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 36
  br i1 %cmp100, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load101 = load i32, i32* %80, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 37
  br i1 %cmp103, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx105 to i32*
  %82 = load i32, i32* %rtint, align 4
  %cmp106 = icmp eq i32 %82, -80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %83 = phi i1 [ false, %lor.rhs ], [ %cmp106, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %84 = phi i1 [ true, %while.cond ], [ %83, %land.end ]
  br i1 %84, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 2
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %87 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call110 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %87, %struct.rtx_def* %88)
  store %struct.rtx_def* %call110, %struct.rtx_def** %new_insn, align 8
  br label %if.end.113

if.else.111:                                      ; preds = %lor.lhs.false.58, %if.else
  %89 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call112 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %89, %struct.rtx_def* %90)
  store %struct.rtx_def* %call112, %struct.rtx_def** %new_insn, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %while.end
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.49
  %91 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load115 = load i32, i32* %92, align 8
  %bf.clear116 = and i32 %bf.load115, 65535
  %cmp117 = icmp eq i32 %bf.clear116, 24
  br i1 %cmp117, label %if.then.118, label %if.else.142

if.then.118:                                      ; preds = %if.end.114
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.118
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtvec_def**
  %95 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %95, i32 0, i32 0
  %96 = load i32, i32* %num_elem, align 4
  %cmp121 = icmp slt i32 %93, %96
  br i1 %cmp121, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %97 to i64
  %98 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtvec126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtvec_def**
  %99 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec126, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %99, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom123
  %100 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx127, align 8
  store %struct.rtx_def* %100, %struct.rtx_def** %insn122, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn122, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load128 = load i32, i32* %102, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %idxprom130 = sext i32 %bf.clear129 to i64
  %arrayidx131 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom130
  %103 = load i8, i8* %arrayidx131, align 1
  %conv = sext i8 %103 to i32
  %cmp132 = icmp eq i32 %conv, 105
  br i1 %cmp132, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %for.body
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn122, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 3
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  call void @add_label_notes(%struct.rtx_def* %105, %struct.rtx_def* %106)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.134, %for.body
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn122, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 3
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn122, align 8
  %110 = bitcast %struct.rtx_def* %109 to i8*
  call void @note_stores(%struct.rtx_def* %108, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @record_set_info, i8* %110)
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.143

if.else.142:                                      ; preds = %if.end.114
  %112 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  call void @add_label_notes(%struct.rtx_def* %112, %struct.rtx_def* %113)
  %114 = load i32, i32* %regno, align 4
  %115 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  call void @record_one_set(i32 %114, %struct.rtx_def* %115)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %for.end
  %116 = load i32, i32* @gcse_create_count, align 4
  %inc144 = add nsw i32 %116, 1
  store i32 %inc144, i32* @gcse_create_count, align 4
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool145 = icmp ne %struct._IO_FILE* %117, null
  br i1 %tobool145, label %if.then.146, label %if.end.154

if.then.146:                                      ; preds = %if.end.143
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 11
  %120 = load i32, i32* %index147, align 4
  %121 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %122 = load i32, i32* %rtint150, align 4
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i32 0, i32 0), i32 %120, i32 %122)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %124 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index152 = getelementptr inbounds %struct.expr, %struct.expr* %124, i32 0, i32 1
  %125 = load i32, i32* %bitmap_index152, align 4
  %126 = load i32, i32* %regno, align 4
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i32 %125, i32 %126)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.146, %if.end.143
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @process_insert_insn(%struct.expr* %expr) #0 {
entry:
  %expr.addr = alloca %struct.expr*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %exp = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  %0 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %0, i32 0, i32 5
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %expr1 = getelementptr inbounds %struct.expr, %struct.expr* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %expr1, align 8
  %call = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %exp, align 8
  call void @start_sequence()
  %4 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call2 = call i32 @general_operand(%struct.rtx_def* %4, i32 %bf.clear)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %call3 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %call4 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %9, %struct.rtx_def* %10)
  %call5 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call4)
  %call6 = call i32 @insn_invalid_p(%struct.rtx_def* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4610, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.process_insert_insn, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %call10 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call10, %struct.rtx_def** %pat, align 8
  call void @end_sequence()
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  ret %struct.rtx_def* %11
}

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define internal void @update_ld_motion_stores(%struct.expr* %expr) #0 {
entry:
  %expr.addr = alloca %struct.expr*, align 8
  %mem_ptr = alloca %struct.ls_expr*, align 8
  %list = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  %0 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %expr1 = getelementptr inbounds %struct.expr, %struct.expr* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %expr1, align 8
  %call = call %struct.ls_expr* @find_rtx_in_ldst(%struct.rtx_def* %1)
  store %struct.ls_expr* %call, %struct.ls_expr** %mem_ptr, align 8
  %tobool = icmp ne %struct.ls_expr* %call, null
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %2 = load %struct.ls_expr*, %struct.ls_expr** %mem_ptr, align 8
  %stores = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %2, i32 0, i32 3
  %3 = load %struct.rtx_def*, %struct.rtx_def** %stores, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %cmp = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 3
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %pat, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %src, align 8
  %11 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 5
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %reg, align 8
  %13 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg8 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 5
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg8, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %cmp9 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %19 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg14 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 5
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg14, align 8
  call void @print_rtl(%struct._IO_FILE* %18, %struct.rtx_def* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @print_inline_rtx(%struct._IO_FILE* %22, %struct.rtx_def* %23, i32 8)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %call21 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %25, %struct.rtx_def* %27)
  store %struct.rtx_def* %call21, %struct.rtx_def** %copy, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call22 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %28, %struct.rtx_def* %29)
  store %struct.rtx_def* %call22, %struct.rtx_def** %new, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %31 = load i32, i32* %rtuint, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  call void @record_one_set(i32 %31, %struct.rtx_def* %32)
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def* %33, %struct.rtx_def** %rtx27, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  store i32 -1, i32* %rtint, align 4
  %36 = load i32, i32* @gcse_create_count, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* @gcse_create_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.17, %if.then.10
  %37 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %entry
  ret void
}

declare %struct.rtx_def* @prev_real_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @find_first_parameter_load(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @add_label_notes(%struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 67
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 27
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %if.end.21, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 6
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 13, %struct.rtx_def* %6, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 6
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %rtx8, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 36
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %15 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %for.end.61

if.end.21:                                        ; preds = %land.lhs.true, %entry
  %16 = load i32, i32* %code, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %17 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  %18 = load i32, i32* %code, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom23
  %19 = load i8*, i8** %arrayidx24, align 8
  store i8* %19, i8** %fmt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.21
  %20 = load i32, i32* %i, align 4
  %cmp25 = icmp sge i32 %20, 0
  br i1 %cmp25, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i8*, i8** %fmt, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 %idxprom27
  %23 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %23 to i32
  %cmp30 = icmp eq i32 %conv29, 101
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @add_label_notes(%struct.rtx_def* %26, %struct.rtx_def* %27)
  br label %if.end.58

if.else:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %28 to i64
  %29 = load i8*, i8** %fmt, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %29, i64 %idxprom37
  %30 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 69
  br i1 %cmp40, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %if.else
  %31 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 %idxprom43
  %rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 0
  %34 = load i32, i32* %num_elem, align 4
  %sub46 = sub nsw i32 %34, 1
  store i32 %sub46, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %if.then.42
  %35 = load i32, i32* %j, align 4
  %cmp48 = icmp sge i32 %35, 0
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %36 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 %idxprom52
  %rtvec55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtvec_def**
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec55, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom51
  %40 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx56, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @add_label_notes(%struct.rtx_def* %40, %struct.rtx_def* %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body.50
  %42 = load i32, i32* %j, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.32
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %43 = load i32, i32* %i, align 4
  %dec60 = add nsw i32 %43, -1
  store i32 %dec60, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %if.end, %for.cond
  ret void
}

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @insn_invalid_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @print_inline_rtx(%struct._IO_FILE*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pre_expr_reaches_here_p(%struct.basic_block_def* %occr_bb, %struct.expr* %expr, %struct.basic_block_def* %bb) #0 {
entry:
  %occr_bb.addr = alloca %struct.basic_block_def*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %rval = alloca i32, align 4
  %visited = alloca i8*, align 8
  store %struct.basic_block_def* %occr_bb, %struct.basic_block_def** %occr_bb.addr, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 1)
  store i8* %call, i8** %visited, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %occr_bb.addr, align 8
  %2 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %4 = load i8*, i8** %visited, align 8
  %call1 = call i32 @pre_expr_reaches_here_p_work(%struct.basic_block_def* %1, %struct.expr* %2, %struct.basic_block_def* %3, i8* %4)
  store i32 %call1, i32* %rval, align 4
  %5 = load i8*, i8** %visited, align 8
  call void @free(i8* %5) #2
  %6 = load i32, i32* %rval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @pre_insert_copy_insn(%struct.expr* %expr, %struct.rtx_def* %insn) #0 {
entry:
  %expr.addr = alloca %struct.expr*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %indx = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %0, i32 0, i32 5
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %4, i32 0, i32 1
  %5 = load i32, i32* %bitmap_index, align 4
  store i32 %5, i32* %indx, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.16

cond.true:                                        ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load5 = load i32, i32* %11, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 47
  br i1 %cmp7, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %14, %struct.rtx_def* %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi %struct.rtx_def* [ %13, %cond.true.9 ], [ %call, %cond.false ]
  br label %cond.end.17

cond.false.16:                                    ; preds = %entry
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.end
  %cond18 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.16 ]
  store %struct.rtx_def* %cond18, %struct.rtx_def** %set, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.17
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 4859, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.pre_insert_copy_insn, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %cond.end.17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %call22 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %18, %struct.rtx_def* %20)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call23 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call22, %struct.rtx_def* %21)
  store %struct.rtx_def* %call23, %struct.rtx_def** %new_insn, align 8
  %22 = load i32, i32* %regno, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  call void @record_one_set(i32 %22, %struct.rtx_def* %23)
  %24 = load i32, i32* @gcse_create_count, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* @gcse_create_count, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %28 = load i32, i32* %rtint, align 4
  %idxprom28 = sext i32 %28 to i64
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom28
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index, align 4
  %add = add nsw i32 %31, 0
  %32 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %33 = load i32, i32* %rtint32, align 4
  %34 = load i32, i32* %indx, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtint35 = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %36 = load i32, i32* %rtint35, align 4
  %37 = load i32, i32* %regno, align 4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.48, i32 0, i32 0), i32 %add, i32 %33, i32 %34, i32 %36, i32 %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.25, %if.end
  %38 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  call void @update_ld_motion_stores(%struct.expr* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pre_expr_reaches_here_p_work(%struct.basic_block_def* %occr_bb, %struct.expr* %expr, %struct.basic_block_def* %bb, i8* %visited) #0 {
entry:
  %retval = alloca i32, align 4
  %occr_bb.addr = alloca %struct.basic_block_def*, align 8
  %expr.addr = alloca %struct.expr*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %visited.addr = alloca i8*, align 8
  %pred = alloca %struct.edge_def*, align 8
  %pred_bb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %occr_bb, %struct.basic_block_def** %occr_bb.addr, align 8
  store %struct.expr* %expr, %struct.expr** %expr.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i8* %visited, i8** %visited.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 4
  %1 = load %struct.edge_def*, %struct.edge_def** %pred1, align 8
  store %struct.edge_def* %1, %struct.edge_def** %pred, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp = icmp ne %struct.edge_def* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %pred_bb, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %6, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %visited.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 1
  %12 = load i32, i32* %bitmap_index, align 4
  %div = udiv i32 %12, 64
  %idxprom4 = zext i32 %div to i64
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index5, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %arrayidx7 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %15, i64 %idxprom6
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx7, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %16, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom4
  %17 = load i64, i64* %arrayidx8, align 8
  %18 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index9 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 1
  %19 = load i32, i32* %bitmap_index9, align 4
  %rem = urem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %17, %sh_prom
  %and = and i64 %shr, 1
  %tobool10 = icmp ne i64 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %occr_bb.addr, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %cmp12 = icmp eq %struct.basic_block_def* %20, %21
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.11
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.11
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index15, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i8*, i8** %visited.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 %idxprom16
  store i8 1, i8* %arrayidx17, align 1
  br label %if.end.45

if.else.18:                                       ; preds = %if.else
  %25 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index19 = getelementptr inbounds %struct.expr, %struct.expr* %25, i32 0, i32 1
  %26 = load i32, i32* %bitmap_index19, align 4
  %div20 = udiv i32 %26, 64
  %idxprom21 = zext i32 %div20 to i64
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index22, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %29, i64 %idxprom23
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  %elms25 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [1 x i64], [1 x i64]* %elms25, i32 0, i64 %idxprom21
  %31 = load i64, i64* %arrayidx26, align 8
  %32 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %bitmap_index27 = getelementptr inbounds %struct.expr, %struct.expr* %32, i32 0, i32 1
  %33 = load i32, i32* %bitmap_index27, align 4
  %rem28 = urem i32 %33, 64
  %sh_prom29 = zext i32 %rem28 to i64
  %shr30 = lshr i64 %31, %sh_prom29
  %and31 = and i64 %shr30, 1
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.else.37, label %if.then.33

if.then.33:                                       ; preds = %if.else.18
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index34, align 4
  %idxprom35 = sext i32 %35 to i64
  %36 = load i8*, i8** %visited.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %36, i64 %idxprom35
  store i8 1, i8* %arrayidx36, align 1
  br label %if.end.44

if.else.37:                                       ; preds = %if.else.18
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 11
  %38 = load i32, i32* %index38, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load i8*, i8** %visited.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %39, i64 %idxprom39
  store i8 1, i8* %arrayidx40, align 1
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %occr_bb.addr, align 8
  %41 = load %struct.expr*, %struct.expr** %expr.addr, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %43 = load i8*, i8** %visited.addr, align 8
  %call = call i32 @pre_expr_reaches_here_p_work(%struct.basic_block_def* %40, %struct.expr* %41, %struct.basic_block_def* %42, i8* %43)
  %tobool41 = icmp ne i32 %call, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.else.37
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.else.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.33
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %44 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i32 0, i32 0
  %45 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %45, %struct.edge_def** %pred, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.42, %if.then.14
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @invalidate_nonnull_info(%struct.rtx_def* %x, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %npi = alloca %struct.null_pointer_info*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.null_pointer_info*
  store %struct.null_pointer_info* %1, %struct.null_pointer_info** %npi, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %10 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %min_reg = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %10, i32 0, i32 1
  %11 = load i32, i32* %min_reg, align 4
  %cmp6 = icmp ult i32 %9, %11
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %13 = load i32, i32* %rtuint10, align 4
  %14 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %max_reg = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %14, i32 0, i32 2
  %15 = load i32, i32* %max_reg, align 4
  %cmp11 = icmp uge i32 %13, %15
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %while.end
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %17 = load i32, i32* %rtuint14, align 4
  %18 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %min_reg15 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %18, i32 0, i32 1
  %19 = load i32, i32* %min_reg15, align 4
  %sub = sub i32 %17, %19
  store i32 %sub, i32* %regno, align 4
  %20 = load i32, i32* %regno, align 4
  %rem = urem i32 %20, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %21 = load i32, i32* %regno, align 4
  %div = udiv i32 %21, 64
  %idxprom = zext i32 %div to i64
  %22 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %current_block = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %22, i32 0, i32 0
  %23 = load i32, i32* %current_block, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %nonnull_local = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %24, i32 0, i32 3
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_local, align 8
  %arrayidx17 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %idxprom16
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx17, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %27 = load i64, i64* %arrayidx18, align 8
  %and = and i64 %27, %neg
  store i64 %and, i64* %arrayidx18, align 8
  %28 = load i32, i32* %regno, align 4
  %rem19 = urem i32 %28, 64
  %sh_prom20 = zext i32 %rem19 to i64
  %shl21 = shl i64 1, %sh_prom20
  %29 = load i32, i32* %regno, align 4
  %div22 = udiv i32 %29, 64
  %idxprom23 = zext i32 %div22 to i64
  %30 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %current_block24 = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %30, i32 0, i32 0
  %31 = load i32, i32* %current_block24, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load %struct.null_pointer_info*, %struct.null_pointer_info** %npi, align 8
  %nonnull_killed = getelementptr inbounds %struct.null_pointer_info, %struct.null_pointer_info* %32, i32 0, i32 4
  %33 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nonnull_killed, align 8
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %33, i64 %idxprom25
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8
  %elms27 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %34, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [1 x i64], [1 x i64]* %elms27, i32 0, i64 %idxprom23
  %35 = load i64, i64* %arrayidx28, align 8
  %or = or i64 %35, %shl21
  store i64 %or, i64* %arrayidx28, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @alloc_code_hoist_mem(i32 %n_blocks, i32 %n_exprs) #0 {
entry:
  %n_blocks.addr = alloca i32, align 4
  %n_exprs.addr = alloca i32, align 4
  store i32 %n_blocks, i32* %n_blocks.addr, align 4
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  %0 = load i32, i32* %n_blocks.addr, align 4
  %1 = load i32, i32* %n_exprs.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @antloc, align 8
  %2 = load i32, i32* %n_blocks.addr, align 4
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @transp, align 8
  %4 = load i32, i32* %n_blocks.addr, align 4
  %5 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @comp, align 8
  %6 = load i32, i32* %n_blocks.addr, align 4
  %7 = load i32, i32* %n_exprs.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** @hoist_vbein, align 8
  %8 = load i32, i32* %n_blocks.addr, align 4
  %9 = load i32, i32* %n_exprs.addr, align 4
  %call4 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %8, i32 %9)
  store %struct.simple_bitmap_def** %call4, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %10 = load i32, i32* %n_blocks.addr, align 4
  %11 = load i32, i32* %n_exprs.addr, align 4
  %call5 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %10, i32 %11)
  store %struct.simple_bitmap_def** %call5, %struct.simple_bitmap_def*** @hoist_exprs, align 8
  %12 = load i32, i32* %n_blocks.addr, align 4
  %13 = load i32, i32* %n_exprs.addr, align 4
  %call6 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %13)
  store %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def*** @transpout, align 8
  %14 = load i32, i32* %n_blocks.addr, align 4
  %15 = load i32, i32* %n_blocks.addr, align 4
  %call7 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %14, i32 %15)
  store %struct.simple_bitmap_def** %call7, %struct.simple_bitmap_def*** @dominators, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_code_hoist_data() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  call void @compute_local_properties(%struct.simple_bitmap_def** %0, %struct.simple_bitmap_def** %1, %struct.simple_bitmap_def** %2, i32 0)
  call void @compute_transpout()
  call void @compute_code_hoist_vbeinout()
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dominators, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %3, i32 0)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hoist_code() #0 {
entry:
  %bb = alloca i32, align 4
  %dominated = alloca i32, align 4
  %i = alloca i32, align 4
  %index_map = alloca %struct.expr**, align 8
  %expr = alloca %struct.expr*, align 8
  %found = alloca i32, align 4
  %insn_inserted_p = alloca i32, align 4
  %hoistable = alloca i32, align 4
  %expr163 = alloca %struct.expr*, align 8
  %occr = alloca %struct.occr*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_exprs, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %0, i32 %1)
  %2 = load i32, i32* @n_exprs, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %3 = bitcast i8* %call to %struct.expr**
  store %struct.expr** %3, %struct.expr*** %index_map, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @expr_hash_table_size, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.expr*, %struct.expr** %7, i64 %idxprom
  %8 = load %struct.expr*, %struct.expr** %arrayidx, align 8
  store %struct.expr* %8, %struct.expr** %expr, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.expr*, %struct.expr** %expr, align 8
  %cmp3 = icmp ne %struct.expr* %9, null
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %10 = load %struct.expr*, %struct.expr** %expr, align 8
  %11 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %11, i32 0, i32 1
  %12 = load i32, i32* %bitmap_index, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %arrayidx7 = getelementptr inbounds %struct.expr*, %struct.expr** %13, i64 %idxprom6
  store %struct.expr* %10, %struct.expr** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %14 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 2
  %15 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %15, %struct.expr** %expr, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  store i32 0, i32* %bb, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.240, %for.end.9
  %17 = load i32, i32* %bb, align 4
  %18 = load i32, i32* @n_basic_blocks, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body.13, label %for.end.242

for.body.13:                                      ; preds = %for.cond.10
  store i32 0, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.94, %for.body.13
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %bb, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %21, i64 %idxprom15
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %22, i32 0, i32 0
  %23 = load i32, i32* %n_bits, align 4
  %cmp17 = icmp ult i32 %19, %23
  br i1 %cmp17, label %for.body.19, label %for.end.96

for.body.19:                                      ; preds = %for.cond.14
  store i32 0, i32* %hoistable, align 4
  %24 = load i32, i32* %i, align 4
  %div = udiv i32 %24, 64
  %idxprom20 = zext i32 %div to i64
  %25 = load i32, i32* %bb, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %26, i64 %idxprom21
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %27, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom20
  %28 = load i64, i64* %arrayidx23, align 8
  %29 = load i32, i32* %i, align 4
  %rem = urem i32 %29, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %28, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %for.body.19
  %30 = load i32, i32* %i, align 4
  %div24 = udiv i32 %30, 64
  %idxprom25 = zext i32 %div24 to i64
  %31 = load i32, i32* %bb, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transpout, align 8
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %32, i64 %idxprom26
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx27, align 8
  %elms28 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %33, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [1 x i64], [1 x i64]* %elms28, i32 0, i64 %idxprom25
  %34 = load i64, i64* %arrayidx29, align 8
  %35 = load i32, i32* %i, align 4
  %rem30 = urem i32 %35, 64
  %sh_prom31 = zext i32 %rem30 to i64
  %shr32 = lshr i64 %34, %sh_prom31
  %and33 = and i64 %shr32, 1
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.then, label %if.end.93

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %dominated, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.78, %if.then
  %36 = load i32, i32* %dominated, align 4
  %37 = load i32, i32* @n_basic_blocks, align 4
  %cmp36 = icmp slt i32 %36, %37
  br i1 %cmp36, label %for.body.38, label %for.end.80

for.body.38:                                      ; preds = %for.cond.35
  %38 = load i32, i32* %bb, align 4
  %39 = load i32, i32* %dominated, align 4
  %cmp39 = icmp eq i32 %38, %39
  br i1 %cmp39, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.38
  %40 = load i32, i32* %bb, align 4
  %div41 = udiv i32 %40, 64
  %idxprom42 = zext i32 %div41 to i64
  %41 = load i32, i32* %dominated, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dominators, align 8
  %arrayidx44 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %42, i64 %idxprom43
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx44, align 8
  %elms45 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %43, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [1 x i64], [1 x i64]* %elms45, i32 0, i64 %idxprom42
  %44 = load i64, i64* %arrayidx46, align 8
  %45 = load i32, i32* %bb, align 4
  %rem47 = urem i32 %45, 64
  %sh_prom48 = zext i32 %rem47 to i64
  %shr49 = lshr i64 %44, %sh_prom48
  %and50 = and i64 %shr49, 1
  %tobool51 = icmp ne i64 %and50, 0
  br i1 %tobool51, label %if.end, label %if.then.52

if.then.52:                                       ; preds = %lor.lhs.false, %for.body.38
  br label %for.inc.78

if.end:                                           ; preds = %lor.lhs.false
  %46 = load i32, i32* %i, align 4
  %div53 = udiv i32 %46, 64
  %idxprom54 = zext i32 %div53 to i64
  %47 = load i32, i32* %dominated, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx56 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %48, i64 %idxprom55
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx56, align 8
  %elms57 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %49, i32 0, i32 3
  %arrayidx58 = getelementptr inbounds [1 x i64], [1 x i64]* %elms57, i32 0, i64 %idxprom54
  %50 = load i64, i64* %arrayidx58, align 8
  %51 = load i32, i32* %i, align 4
  %rem59 = urem i32 %51, 64
  %sh_prom60 = zext i32 %rem59 to i64
  %shr61 = lshr i64 %50, %sh_prom60
  %and62 = and i64 %shr61, 1
  %tobool63 = icmp ne i64 %and62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end
  br label %for.inc.78

if.end.65:                                        ; preds = %if.end
  %52 = load i32, i32* %bb, align 4
  %idxprom66 = sext i32 %52 to i64
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %53, i32 0, i32 4
  %bb67 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx68 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb67, i32 0, i64 %idxprom66
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx68, align 8
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %dominated, align 4
  %idxprom69 = sext i32 %56 to i64
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data70 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %57, i32 0, i32 4
  %bb71 = bitcast %union.varray_data_tag* %data70 to [1 x %struct.basic_block_def*]*
  %arrayidx72 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb71, i32 0, i64 %idxprom69
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx72, align 8
  %call73 = call i32 @hoist_expr_reaches_here_p(%struct.basic_block_def* %54, i32 %55, %struct.basic_block_def* %58, i8* null)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.65
  %59 = load i32, i32* %hoistable, align 4
  %inc76 = add nsw i32 %59, 1
  store i32 %inc76, i32* %hoistable, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.65
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77, %if.then.64, %if.then.52
  %60 = load i32, i32* %dominated, align 4
  %inc79 = add nsw i32 %60, 1
  store i32 %inc79, i32* %dominated, align 4
  br label %for.cond.35

for.end.80:                                       ; preds = %for.cond.35
  %61 = load i32, i32* %hoistable, align 4
  %cmp81 = icmp sgt i32 %61, 1
  br i1 %cmp81, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %for.end.80
  %62 = load i32, i32* %i, align 4
  %rem84 = urem i32 %62, 64
  %sh_prom85 = zext i32 %rem84 to i64
  %shl = shl i64 1, %sh_prom85
  %63 = load i32, i32* %i, align 4
  %div86 = udiv i32 %63, 64
  %idxprom87 = zext i32 %div86 to i64
  %64 = load i32, i32* %bb, align 4
  %idxprom88 = sext i32 %64 to i64
  %65 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_exprs, align 8
  %arrayidx89 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %65, i64 %idxprom88
  %66 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx89, align 8
  %elms90 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %66, i32 0, i32 3
  %arrayidx91 = getelementptr inbounds [1 x i64], [1 x i64]* %elms90, i32 0, i64 %idxprom87
  %67 = load i64, i64* %arrayidx91, align 8
  %or = or i64 %67, %shl
  store i64 %or, i64* %arrayidx91, align 8
  store i32 1, i32* %found, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.83, %for.end.80
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true, %for.body.19
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %68 = load i32, i32* %i, align 4
  %inc95 = add i32 %68, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.14

for.end.96:                                       ; preds = %for.cond.14
  %69 = load i32, i32* %found, align 4
  %tobool97 = icmp ne i32 %69, 0
  br i1 %tobool97, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %for.end.96
  br label %for.inc.240

if.end.99:                                        ; preds = %for.end.96
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.237, %if.end.99
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %bb, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_exprs, align 8
  %arrayidx102 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %72, i64 %idxprom101
  %73 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx102, align 8
  %n_bits103 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %73, i32 0, i32 0
  %74 = load i32, i32* %n_bits103, align 4
  %cmp104 = icmp ult i32 %70, %74
  br i1 %cmp104, label %for.body.106, label %for.end.239

for.body.106:                                     ; preds = %for.cond.100
  store i32 0, i32* %insn_inserted_p, align 4
  %75 = load i32, i32* %i, align 4
  %div107 = udiv i32 %75, 64
  %idxprom108 = zext i32 %div107 to i64
  %76 = load i32, i32* %bb, align 4
  %idxprom109 = sext i32 %76 to i64
  %77 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %arrayidx110 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %77, i64 %idxprom109
  %78 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx110, align 8
  %elms111 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %78, i32 0, i32 3
  %arrayidx112 = getelementptr inbounds [1 x i64], [1 x i64]* %elms111, i32 0, i64 %idxprom108
  %79 = load i64, i64* %arrayidx112, align 8
  %80 = load i32, i32* %i, align 4
  %rem113 = urem i32 %80, 64
  %sh_prom114 = zext i32 %rem113 to i64
  %shr115 = lshr i64 %79, %sh_prom114
  %and116 = and i64 %shr115, 1
  %tobool117 = icmp ne i64 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.236

if.then.118:                                      ; preds = %for.body.106
  store i32 0, i32* %dominated, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.233, %if.then.118
  %81 = load i32, i32* %dominated, align 4
  %82 = load i32, i32* @n_basic_blocks, align 4
  %cmp120 = icmp slt i32 %81, %82
  br i1 %cmp120, label %for.body.122, label %for.end.235

for.body.122:                                     ; preds = %for.cond.119
  %83 = load i32, i32* %bb, align 4
  %84 = load i32, i32* %dominated, align 4
  %cmp123 = icmp eq i32 %83, %84
  br i1 %cmp123, label %if.then.137, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %for.body.122
  %85 = load i32, i32* %bb, align 4
  %div126 = udiv i32 %85, 64
  %idxprom127 = zext i32 %div126 to i64
  %86 = load i32, i32* %dominated, align 4
  %idxprom128 = sext i32 %86 to i64
  %87 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dominators, align 8
  %arrayidx129 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %87, i64 %idxprom128
  %88 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx129, align 8
  %elms130 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %88, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [1 x i64], [1 x i64]* %elms130, i32 0, i64 %idxprom127
  %89 = load i64, i64* %arrayidx131, align 8
  %90 = load i32, i32* %bb, align 4
  %rem132 = urem i32 %90, 64
  %sh_prom133 = zext i32 %rem132 to i64
  %shr134 = lshr i64 %89, %sh_prom133
  %and135 = and i64 %shr134, 1
  %tobool136 = icmp ne i64 %and135, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %lor.lhs.false.125, %for.body.122
  br label %for.inc.233

if.end.138:                                       ; preds = %lor.lhs.false.125
  %91 = load i32, i32* %i, align 4
  %div139 = udiv i32 %91, 64
  %idxprom140 = zext i32 %div139 to i64
  %92 = load i32, i32* %dominated, align 4
  %idxprom141 = sext i32 %92 to i64
  %93 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx142 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %93, i64 %idxprom141
  %94 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx142, align 8
  %elms143 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %94, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [1 x i64], [1 x i64]* %elms143, i32 0, i64 %idxprom140
  %95 = load i64, i64* %arrayidx144, align 8
  %96 = load i32, i32* %i, align 4
  %rem145 = urem i32 %96, 64
  %sh_prom146 = zext i32 %rem145 to i64
  %shr147 = lshr i64 %95, %sh_prom146
  %and148 = and i64 %shr147, 1
  %tobool149 = icmp ne i64 %and148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %if.end.138
  br label %for.inc.233

if.end.151:                                       ; preds = %if.end.138
  %97 = load i32, i32* %bb, align 4
  %idxprom152 = sext i32 %97 to i64
  %98 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data153 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %98, i32 0, i32 4
  %bb154 = bitcast %union.varray_data_tag* %data153 to [1 x %struct.basic_block_def*]*
  %arrayidx155 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb154, i32 0, i64 %idxprom152
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx155, align 8
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %dominated, align 4
  %idxprom156 = sext i32 %101 to i64
  %102 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data157 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %102, i32 0, i32 4
  %bb158 = bitcast %union.varray_data_tag* %data157 to [1 x %struct.basic_block_def*]*
  %arrayidx159 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb158, i32 0, i64 %idxprom156
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx159, align 8
  %call160 = call i32 @hoist_expr_reaches_here_p(%struct.basic_block_def* %99, i32 %100, %struct.basic_block_def* %103, i8* null)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.232

if.then.162:                                      ; preds = %if.end.151
  %104 = load i32, i32* %i, align 4
  %idxprom164 = zext i32 %104 to i64
  %105 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %arrayidx165 = getelementptr inbounds %struct.expr*, %struct.expr** %105, i64 %idxprom164
  %106 = load %struct.expr*, %struct.expr** %arrayidx165, align 8
  store %struct.expr* %106, %struct.expr** %expr163, align 8
  %107 = load %struct.expr*, %struct.expr** %expr163, align 8
  %antic_occr = getelementptr inbounds %struct.expr, %struct.expr* %107, i32 0, i32 3
  %108 = load %struct.occr*, %struct.occr** %antic_occr, align 8
  store %struct.occr* %108, %struct.occr** %occr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.162
  %109 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn166 = getelementptr inbounds %struct.occr, %struct.occr* %109, i32 0, i32 1
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn166, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx167 to i32*
  %111 = load i32, i32* %rtint, align 4
  %idxprom168 = sext i32 %111 to i64
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data169 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %bb170 = bitcast %union.varray_data_tag* %data169 to [1 x %struct.basic_block_def*]*
  %arrayidx171 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb170, i32 0, i64 %idxprom168
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx171, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %113, i32 0, i32 11
  %114 = load i32, i32* %index, align 4
  %add = add nsw i32 %114, 0
  %115 = load i32, i32* %dominated, align 4
  %cmp172 = icmp ne i32 %add, %115
  br i1 %cmp172, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %116 = load %struct.occr*, %struct.occr** %occr, align 8
  %tobool174 = icmp ne %struct.occr* %116, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %117 = phi i1 [ false, %while.cond ], [ %tobool174, %land.rhs ]
  br i1 %117, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %118 = load %struct.occr*, %struct.occr** %occr, align 8
  %next = getelementptr inbounds %struct.occr, %struct.occr* %118, i32 0, i32 0
  %119 = load %struct.occr*, %struct.occr** %next, align 8
  store %struct.occr* %119, %struct.occr** %occr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %120 = load %struct.occr*, %struct.occr** %occr, align 8
  %tobool175 = icmp ne %struct.occr* %120, null
  br i1 %tobool175, label %if.end.177, label %if.then.176

if.then.176:                                      ; preds = %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 5801, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.hoist_code, i32 0, i32 0)) #7
  unreachable

if.end.177:                                       ; preds = %while.end
  %121 = load %struct.occr*, %struct.occr** %occr, align 8
  %insn178 = getelementptr inbounds %struct.occr, %struct.occr* %121, i32 0, i32 1
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn178, align 8
  store %struct.rtx_def* %122, %struct.rtx_def** %insn, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load = load i32, i32* %124, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom179 = sext i32 %bf.clear to i64
  %arrayidx180 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom179
  %125 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %125 to i32
  %cmp182 = icmp eq i32 %conv181, 105
  br i1 %cmp182, label %cond.true, label %cond.false.198

cond.true:                                        ; preds = %if.end.177
  %126 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load186 = load i32, i32* %128, align 8
  %bf.clear187 = and i32 %bf.load186, 65535
  %cmp188 = icmp eq i32 %bf.clear187, 47
  br i1 %cmp188, label %cond.true.190, label %cond.false

cond.true.190:                                    ; preds = %cond.true
  %129 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 3
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 3
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx196, align 8
  %call197 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %131, %struct.rtx_def* %133)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.190
  %cond = phi %struct.rtx_def* [ %130, %cond.true.190 ], [ %call197, %cond.false ]
  br label %cond.end.199

cond.false.198:                                   ; preds = %if.end.177
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.198, %cond.end
  %cond200 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.198 ]
  store %struct.rtx_def* %cond200, %struct.rtx_def** %set, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool201 = icmp ne %struct.rtx_def* %134, null
  br i1 %tobool201, label %if.end.203, label %if.then.202

if.then.202:                                      ; preds = %cond.end.199
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 5807, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.hoist_code, i32 0, i32 0)) #7
  unreachable

if.end.203:                                       ; preds = %cond.end.199
  %135 = load %struct.expr*, %struct.expr** %expr163, align 8
  %reaching_reg = getelementptr inbounds %struct.expr, %struct.expr* %135, i32 0, i32 5
  %136 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8
  %cmp204 = icmp eq %struct.rtx_def* %136, null
  br i1 %cmp204, label %if.then.206, label %if.end.214

if.then.206:                                      ; preds = %if.end.203
  %137 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx209, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load210 = load i32, i32* %139, align 8
  %bf.lshr = lshr i32 %bf.load210, 16
  %bf.clear211 = and i32 %bf.lshr, 255
  %call212 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear211)
  %140 = load %struct.expr*, %struct.expr** %expr163, align 8
  %reaching_reg213 = getelementptr inbounds %struct.expr, %struct.expr* %140, i32 0, i32 5
  store %struct.rtx_def* %call212, %struct.rtx_def** %reaching_reg213, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.206, %if.end.203
  %141 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 1
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %143 = load %struct.expr*, %struct.expr** %expr163, align 8
  %reaching_reg218 = getelementptr inbounds %struct.expr, %struct.expr* %143, i32 0, i32 5
  %144 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg218, align 8
  %call219 = call i32 @validate_change(%struct.rtx_def* %141, %struct.rtx_def** %rtx217, %struct.rtx_def* %144, i32 0)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.then.221, label %if.end.231

if.then.221:                                      ; preds = %if.end.214
  %145 = load %struct.occr*, %struct.occr** %occr, align 8
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %145, i32 0, i32 2
  store i8 1, i8* %deleted_p, align 1
  %146 = load i32, i32* %insn_inserted_p, align 4
  %tobool222 = icmp ne i32 %146, 0
  br i1 %tobool222, label %if.end.230, label %if.then.223

if.then.223:                                      ; preds = %if.then.221
  %147 = load i32, i32* %i, align 4
  %idxprom224 = zext i32 %147 to i64
  %148 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %arrayidx225 = getelementptr inbounds %struct.expr*, %struct.expr** %148, i64 %idxprom224
  %149 = load %struct.expr*, %struct.expr** %arrayidx225, align 8
  %150 = load i32, i32* %bb, align 4
  %idxprom226 = sext i32 %150 to i64
  %151 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data227 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %151, i32 0, i32 4
  %bb228 = bitcast %union.varray_data_tag* %data227 to [1 x %struct.basic_block_def*]*
  %arrayidx229 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb228, i32 0, i64 %idxprom226
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx229, align 8
  call void @insert_insn_end_bb(%struct.expr* %149, %struct.basic_block_def* %152, i32 0)
  store i32 1, i32* %insn_inserted_p, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.223, %if.then.221
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.214
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.151
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232, %if.then.150, %if.then.137
  %153 = load i32, i32* %dominated, align 4
  %inc234 = add nsw i32 %153, 1
  store i32 %inc234, i32* %dominated, align 4
  br label %for.cond.119

for.end.235:                                      ; preds = %for.cond.119
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.body.106
  br label %for.inc.237

for.inc.237:                                      ; preds = %if.end.236
  %154 = load i32, i32* %i, align 4
  %inc238 = add i32 %154, 1
  store i32 %inc238, i32* %i, align 4
  br label %for.cond.100

for.end.239:                                      ; preds = %for.cond.100
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.end.239, %if.then.98
  %155 = load i32, i32* %bb, align 4
  %inc241 = add nsw i32 %155, 1
  store i32 %inc241, i32* %bb, align 4
  br label %for.cond.10

for.end.242:                                      ; preds = %for.cond.10
  %156 = load %struct.expr**, %struct.expr*** %index_map, align 8
  %157 = bitcast %struct.expr** %156 to i8*
  call void @free(i8* %157) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_code_hoist_mem() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*
  call void @free(i8* %1) #2
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*
  call void @free(i8* %3) #2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %5 = bitcast %struct.simple_bitmap_def** %4 to i8*
  call void @free(i8* %5) #2
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbein, align 8
  %7 = bitcast %struct.simple_bitmap_def** %6 to i8*
  call void @free(i8* %7) #2
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %9 = bitcast %struct.simple_bitmap_def** %8 to i8*
  call void @free(i8* %9) #2
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_exprs, align 8
  %11 = bitcast %struct.simple_bitmap_def** %10 to i8*
  call void @free(i8* %11) #2
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transpout, align 8
  %13 = bitcast %struct.simple_bitmap_def** %12 to i8*
  call void @free(i8* %13) #2
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dominators, align 8
  %15 = bitcast %struct.simple_bitmap_def** %14 to i8*
  call void @free(i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_transpout() #0 {
entry:
  %bb = alloca i32, align 4
  %i = alloca i32, align 4
  %expr = alloca %struct.expr*, align 8
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transpout, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %0, i32 %1)
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %2 = load i32, i32* %bb, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp ne i32 %bf.clear, 34
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.37

if.end:                                           ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.35, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @expr_hash_table_size, align 4
  %cmp4 = icmp ult i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end.36

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %11 to i64
  %12 = load %struct.expr**, %struct.expr*** @expr_hash_table, align 8
  %arrayidx7 = getelementptr inbounds %struct.expr*, %struct.expr** %12, i64 %idxprom6
  %13 = load %struct.expr*, %struct.expr** %arrayidx7, align 8
  store %struct.expr* %13, %struct.expr** %expr, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body.5
  %14 = load %struct.expr*, %struct.expr** %expr, align 8
  %tobool = icmp ne %struct.expr* %14, null
  br i1 %tobool, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.8
  %15 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr10 = getelementptr inbounds %struct.expr, %struct.expr* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %expr10, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load11 = load i32, i32* %17, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 66
  br i1 %cmp13, label %if.then.14, label %if.end.34

if.then.14:                                       ; preds = %for.body.9
  %18 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr15 = getelementptr inbounds %struct.expr, %struct.expr* %18, i32 0, i32 0
  %19 = load %struct.rtx_def*, %struct.rtx_def** %expr15, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load17 = load i32, i32* %21, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 68
  br i1 %cmp19, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.14
  %22 = load %struct.expr*, %struct.expr** %expr, align 8
  %expr20 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %23 = load %struct.rtx_def*, %struct.rtx_def** %expr20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load24 = load i32, i32* %25, align 8
  %bf.lshr = lshr i32 %bf.load24, 26
  %bf.clear25 = and i32 %bf.lshr, 1
  %tobool26 = icmp ne i32 %bf.clear25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.28:                                        ; preds = %land.lhs.true, %if.then.14
  %26 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 1
  %27 = load i32, i32* %bitmap_index, align 4
  %rem = urem i32 %27, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %28 = load %struct.expr*, %struct.expr** %expr, align 8
  %bitmap_index29 = getelementptr inbounds %struct.expr, %struct.expr* %28, i32 0, i32 1
  %29 = load i32, i32* %bitmap_index29, align 4
  %div = udiv i32 %29, 64
  %idxprom30 = zext i32 %div to i64
  %30 = load i32, i32* %bb, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transpout, align 8
  %arrayidx32 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %31, i64 %idxprom31
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx32, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %32, i32 0, i32 3
  %arrayidx33 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom30
  %33 = load i64, i64* %arrayidx33, align 8
  %and = and i64 %33, %neg
  store i64 %and, i64* %arrayidx33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.28, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.27
  %34 = load %struct.expr*, %struct.expr** %expr, align 8
  %next_same_hash = getelementptr inbounds %struct.expr, %struct.expr* %34, i32 0, i32 2
  %35 = load %struct.expr*, %struct.expr** %next_same_hash, align 8
  store %struct.expr* %35, %struct.expr** %expr, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %36 = load i32, i32* %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end.36:                                       ; preds = %for.cond.3
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36, %if.then
  %37 = load i32, i32* %bb, align 4
  %inc38 = add nsw i32 %37, 1
  store i32 %inc38, i32* %bb, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_code_hoist_vbeinout() #0 {
entry:
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %passes = alloca i32, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %0, i32 %1)
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbein, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %2, i32 %3)
  store i32 0, i32* %passes, align 4
  store i32 1, i32* %changed, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i32, i32* %bb, align 4
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbein, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %8, i64 %idxprom
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %10 = load i32, i32* %bb, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antloc, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %11, i64 %idxprom1
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %13 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %14, i64 %idxprom3
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  %16 = load i32, i32* %bb, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx6 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %17, i64 %idxprom5
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx6, align 8
  %call = call i32 @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %12, %struct.simple_bitmap_def* %15, %struct.simple_bitmap_def* %18)
  %19 = load i32, i32* %changed, align 4
  %or = or i32 %19, %call
  store i32 %or, i32* %changed, align 4
  %20 = load i32, i32* %bb, align 4
  %21 = load i32, i32* @n_basic_blocks, align 4
  %sub7 = sub nsw i32 %21, 1
  %cmp8 = icmp ne i32 %20, %sub7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %bb, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbeout, align 8
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %23, i64 %idxprom9
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @hoist_vbein, align 8
  %26 = load i32, i32* %bb, align 4
  call void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def* %24, %struct.simple_bitmap_def** %25, i32 %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %passes, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %passes, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %29, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %while.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @gcse_file, align 8
  %31 = load i32, i32* %passes, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0), i32 %31)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %while.end
  ret void
}

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

declare i32 @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @hoist_expr_reaches_here_p(%struct.basic_block_def* %expr_bb, i32 %expr_index, %struct.basic_block_def* %bb, i8* %visited) #0 {
entry:
  %expr_bb.addr = alloca %struct.basic_block_def*, align 8
  %expr_index.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %visited.addr = alloca i8*, align 8
  %pred = alloca %struct.edge_def*, align 8
  %visited_allocated_locally = alloca i32, align 4
  %pred_bb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %expr_bb, %struct.basic_block_def** %expr_bb.addr, align 8
  store i32 %expr_index, i32* %expr_index.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i8* %visited, i8** %visited.addr, align 8
  store i32 0, i32* %visited_allocated_locally, align 4
  %0 = load i8*, i8** %visited.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %visited_allocated_locally, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 1)
  store i8* %call, i8** %visited.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 4
  %3 = load %struct.edge_def*, %struct.edge_def** %pred1, align 8
  store %struct.edge_def* %3, %struct.edge_def** %pred, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp2 = icmp ne %struct.edge_def* %4, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %pred_bb, align 8
  %7 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 2
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %cmp5 = icmp eq %struct.basic_block_def* %8, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 11
  %10 = load i32, i32* %index, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %visited.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  br label %for.inc

if.else.9:                                        ; preds = %if.else
  %13 = load i32, i32* %expr_index.addr, align 4
  %div = udiv i32 %13, 64
  %idxprom10 = zext i32 %div to i64
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index11, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %16, i64 %idxprom12
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom10
  %18 = load i64, i64* %arrayidx14, align 8
  %19 = load i32, i32* %expr_index.addr, align 4
  %rem = urem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %18, %sh_prom
  %and = and i64 %shr, 1
  %tobool15 = icmp ne i64 %and, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.9
  br label %for.end

if.else.17:                                       ; preds = %if.else.9
  %20 = load i32, i32* %expr_index.addr, align 4
  %div18 = udiv i32 %20, 64
  %idxprom19 = zext i32 %div18 to i64
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index20, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %23, i64 %idxprom21
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  %elms23 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [1 x i64], [1 x i64]* %elms23, i32 0, i64 %idxprom19
  %25 = load i64, i64* %arrayidx24, align 8
  %26 = load i32, i32* %expr_index.addr, align 4
  %rem25 = urem i32 %26, 64
  %sh_prom26 = zext i32 %rem25 to i64
  %shr27 = lshr i64 %25, %sh_prom26
  %and28 = and i64 %shr27, 1
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %if.else.17
  br label %for.end

if.else.31:                                       ; preds = %if.else.17
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index32, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i8*, i8** %visited.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 %idxprom33
  store i8 1, i8* %arrayidx34, align 1
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %expr_bb.addr, align 8
  %31 = load i32, i32* %expr_index.addr, align 4
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %pred_bb, align 8
  %33 = load i8*, i8** %visited.addr, align 8
  %call35 = call i32 @hoist_expr_reaches_here_p(%struct.basic_block_def* %30, i32 %31, %struct.basic_block_def* %32, i8* %33)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.else.31
  br label %for.end

if.end.38:                                        ; preds = %if.else.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.42, %if.then.8
  %34 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 0
  %35 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %35, %struct.edge_def** %pred, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.37, %if.then.30, %if.then.16, %if.then.7, %for.cond
  %36 = load i32, i32* %visited_allocated_locally, align 4
  %tobool43 = icmp ne i32 %36, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.end
  %37 = load i8*, i8** %visited.addr, align 8
  call void @free(i8* %37) #2
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %for.end
  %38 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp46 = icmp eq %struct.edge_def* %38, null
  %conv47 = zext i1 %cmp46 to i32
  ret i32 %conv47
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
