; ModuleID = 'profile.c'
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
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.edge_info = type { i8, [3 x i8] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.bb_info = type { i8, i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }

@flag_test_coverage = external global i32, align 4
@cfun = external global %struct.function*, align 8
@total_num_times_called = internal global i32 0, align 4
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str = private unnamed_addr constant [10 x i8] c"profile.c\00", align 1
@__FUNCTION__.branch_prob = private unnamed_addr constant [12 x i8] c"branch_prob\00", align 1
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Adding fake exit edge to bb %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Adding fake entry edge to bb %i\0A\00", align 1
@branch_prob.ignore_next_note = internal global i32 0, align 4
@bb_file = internal global %struct._IO_FILE* null, align 8
@last_bb_file_name = internal global i8* null, align 8
@total_num_blocks = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%d basic blocks\0A\00", align 1
@total_num_edges = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%d edges\0A\00", align 1
@total_num_edges_ignored = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%d ignored edges\0A\00", align 1
@bbg_file = internal global %struct._IO_FILE* null, align 8
@flag_branch_probabilities = external global i32, align 4
@profile_arc_flag = external global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c".bb\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".bbg\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".da\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@da_file = internal global %struct._IO_FILE* null, align 8
@.str.12 = private unnamed_addr constant [55 x i8] c"file %s not found, execution counts assumed to be zero\00", align 1
@total_num_edges_instrumented = internal global i32 0, align 4
@total_num_blocks_created = internal global i32 0, align 4
@total_num_passes = internal global i32 0, align 4
@total_num_branches = internal global i32 0, align 4
@total_num_never_executed = internal global i32 0, align 4
@total_hist_br_prob = internal global [20 x i32] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [38 x i8] c".da file contents exhausted too early\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c".da file contents not exhausted\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Total number of blocks: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Total number of edges: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Total number of ignored edges: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Total number of instrumented edges: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Total number of blocks created: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Total number of graph solution passes: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Average number of graph solution passes: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Total number of branches: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Total number of branches never executed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"%d%% branches in range %d-%d%%\0A\00", align 1
@flag_inline_functions = external global i32, align 4
@need_func_profiler = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"GCOV\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@targetm = external global %struct.gcc_target, align 8
@current_function_decl = external global %union.tree_node*, align 8
@input_filename = external global i8*, align 8
@lineno = external global i32, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"LPBX\00", align 1
@target_flags = external global i32, align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"__bb_init_func\00", align 1
@quiet_flag = external global i32, align 4
@asm_out_file = external global %struct._IO_FILE*, align 8
@count_instrumented_edges = common global i32 0, align 4
@.str.30 = private unnamed_addr constant [33 x i8] c"\0ARead edge from %i to %i, count:\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\0A%d edge counts read\0A\00", align 1
@__FUNCTION__.compute_branch_probabilities = private unnamed_addr constant [29 x i8] c"compute_branch_probabilities\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Graph solving took %d passes.\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"corrupted profile info: prob for %d-%d thought to be %d\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"%d branches\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"%d branches never executed\0A\00", align 1
@__FUNCTION__.instrument_edges = private unnamed_addr constant [17 x i8] c"instrument_edges\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Edge %d to %d instrumented%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" (and split)\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"%d edges instrumented\0A\00", align 1
@profiler_label = internal global %struct.rtx_def* null, align 8
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@__FUNCTION__.union_groups = private unnamed_addr constant [13 x i8] c"union_groups\00", align 1

; Function Attrs: nounwind uwtable
define void @branch_prob() #0 {
entry:
  %i = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %ignored_edges = alloca i32, align 4
  %el = alloca %struct.edge_list*, align 8
  %need_exit_edge = alloca i32, align 4
  %need_entry_edge = alloca i32, align 4
  %have_exit_edge = alloca i32, align 4
  %have_entry_edge = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %e94 = alloca %struct.edge_def*, align 8
  %i116 = alloca i32, align 4
  %bb120 = alloca %struct.basic_block_def*, align 8
  %insn125 = alloca %struct.rtx_def*, align 8
  %e194 = alloca %struct.edge_def*, align 8
  %inf = alloca %struct.edge_info*, align 8
  %flag_bits = alloca i32, align 4
  %bb249 = alloca %struct.basic_block_def*, align 8
  %e264 = alloca %struct.edge_def*, align 8
  %count265 = alloca i64, align 8
  %i287 = alloca %struct.edge_info*, align 8
  %0 = load i32, i32* @flag_test_coverage, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %name = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 5
  %2 = load i8*, i8** %name, align 8
  call void @output_gcov_string(i8* %2, i64 -2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @total_num_times_called, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @total_num_times_called, align 4
  %call = call i32 @flow_call_edges_add(%struct.simple_bitmap_def* null)
  call void @add_noreturn_fake_exit_edges()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %need_exit_edge, align 4
  store i32 0, i32* %need_entry_edge, align 4
  store i32 0, i32* %have_exit_edge, align 4
  store i32 0, i32* %have_entry_edge, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %bb, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp4 = icmp ne %struct.rtx_def* %11, %14
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp eq i32 %bf.clear, 34
  br i1 %cmp6, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body.5
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call7 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %17, i32 28, %struct.rtx_def* null)
  %tobool8 = icmp ne %struct.rtx_def* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %land.lhs.true
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 0
  %19 = load %struct.rtx_def*, %struct.rtx_def** %head10, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load11 = load i32, i32* %20, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 36
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 0
  %23 = load %struct.rtx_def*, %struct.rtx_def** %head14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %cmp18 = icmp ne %struct.rtx_def* %21, %24
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false, %if.then.9
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %call23 = call %struct.edge_def* @split_block(%struct.basic_block_def* %25, %struct.rtx_def* %27)
  store %struct.edge_def* %call23, %struct.edge_def** %e, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call24 = call %struct.edge_def* @make_edge(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %29, i32 16)
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %30 = load i32, i32* %i, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.branch_prob, i32 0, i32 0)) #5
  unreachable

if.end.27:                                        ; preds = %if.else
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call28 = call %struct.edge_def* @make_edge(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %31, i32 16)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 2
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %if.then.19, %for.cond.2
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 5
  %35 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %35, %struct.edge_def** %e, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.end
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool35 = icmp ne %struct.edge_def* %36, null
  br i1 %tobool35, label %for.body.36, label %for.end.48

for.body.36:                                      ; preds = %for.cond.34
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 6
  %38 = load i32, i32* %flags, align 4
  %and = and i32 %38, 6
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %for.body.36
  %39 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 3
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest39, align 8
  %cmp40 = icmp ne %struct.basic_block_def* %40, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %need_exit_edge, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.38, %for.body.36
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 3
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest43, align 8
  %cmp44 = icmp eq %struct.basic_block_def* %42, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 1, i32* %have_exit_edge, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %43 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 1
  %44 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %44, %struct.edge_def** %e, align 8
  br label %for.cond.34

for.end.48:                                       ; preds = %for.cond.34
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 4
  %46 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %46, %struct.edge_def** %e, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.63, %for.end.48
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool50 = icmp ne %struct.edge_def* %47, null
  br i1 %tobool50, label %for.body.51, label %for.end.64

for.body.51:                                      ; preds = %for.cond.49
  %48 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 6
  %49 = load i32, i32* %flags52, align 4
  %and53 = and i32 %49, 6
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.58

land.lhs.true.55:                                 ; preds = %for.body.51
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 2
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp56 = icmp ne %struct.basic_block_def* %51, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %need_entry_edge, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.55, %for.body.51
  %52 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %52, i32 0, i32 2
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %src59, align 8
  %cmp60 = icmp eq %struct.basic_block_def* %53, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store i32 1, i32* %have_entry_edge, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.58
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %54, i32 0, i32 0
  %55 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %55, %struct.edge_def** %e, align 8
  br label %for.cond.49

for.end.64:                                       ; preds = %for.cond.49
  %56 = load i32, i32* %need_exit_edge, align 4
  %tobool65 = icmp ne i32 %56, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.74

land.lhs.true.66:                                 ; preds = %for.end.64
  %57 = load i32, i32* %have_exit_edge, align 4
  %tobool67 = icmp ne i32 %57, 0
  br i1 %tobool67, label %if.end.74, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool69 = icmp ne %struct._IO_FILE* %58, null
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.68
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 11
  %61 = load i32, i32* %index, align 4
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %61)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.68
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call73 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %62, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 16)
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %land.lhs.true.66, %for.end.64
  %63 = load i32, i32* %need_entry_edge, align 4
  %tobool75 = icmp ne i32 %63, 0
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.85

land.lhs.true.76:                                 ; preds = %if.end.74
  %64 = load i32, i32* %have_entry_edge, align 4
  %tobool77 = icmp ne i32 %64, 0
  br i1 %tobool77, label %if.end.85, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.76
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool79 = icmp ne %struct._IO_FILE* %65, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.then.78
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 11
  %68 = load i32, i32* %index81, align 4
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %68)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.then.78
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call84 = call %struct.edge_def* @make_edge(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %69, i32 16)
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.83, %land.lhs.true.76, %if.end.74
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %70 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %70, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  %call89 = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call89, %struct.edge_list** %el, align 8
  %71 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %num_edges90 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %71, i32 0, i32 1
  %72 = load i32, i32* %num_edges90, align 4
  store i32 %72, i32* %num_edges, align 4
  call void @alloc_aux_for_edges(i32 4)
  store i32 0, i32* %ignored_edges, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.111, %for.end.88
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %num_edges, align 4
  %cmp92 = icmp slt i32 %73, %74
  br i1 %cmp92, label %for.body.93, label %for.end.113

for.body.93:                                      ; preds = %for.cond.91
  %75 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %75 to i64
  %76 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %76, i32 0, i32 2
  %77 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx96 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %77, i64 %idxprom95
  %78 = load %struct.edge_def*, %struct.edge_def** %arrayidx96, align 8
  store %struct.edge_def* %78, %struct.edge_def** %e94, align 8
  %79 = load %struct.edge_def*, %struct.edge_def** %e94, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 8
  store i64 0, i64* %count, align 8
  %80 = load %struct.edge_def*, %struct.edge_def** %e94, align 8
  %flags97 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 6
  %81 = load i32, i32* %flags97, align 4
  %and98 = and i32 %81, 6
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.110

land.lhs.true.100:                                ; preds = %for.body.93
  %82 = load %struct.edge_def*, %struct.edge_def** %e94, align 8
  %src101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %82, i32 0, i32 2
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %src101, align 8
  %cmp102 = icmp ne %struct.basic_block_def* %83, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.110

land.lhs.true.103:                                ; preds = %land.lhs.true.100
  %84 = load %struct.edge_def*, %struct.edge_def** %e94, align 8
  %dest104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %84, i32 0, i32 3
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %dest104, align 8
  %cmp105 = icmp ne %struct.basic_block_def* %85, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp105, label %if.then.106, label %if.end.110

if.then.106:                                      ; preds = %land.lhs.true.103
  %86 = load %struct.edge_def*, %struct.edge_def** %e94, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i32 0, i32 5
  %87 = load i8*, i8** %aux, align 8
  %88 = bitcast i8* %87 to %struct.edge_info*
  %89 = bitcast %struct.edge_info* %88 to i8*
  %bf.load107 = load i8, i8* %89, align 4
  %bf.clear108 = and i8 %bf.load107, -5
  %bf.set = or i8 %bf.clear108, 4
  store i8 %bf.set, i8* %89, align 4
  %90 = load i32, i32* %ignored_edges, align 4
  %inc109 = add nsw i32 %90, 1
  store i32 %inc109, i32* %ignored_edges, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.106, %land.lhs.true.103, %land.lhs.true.100, %for.body.93
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %91 = load i32, i32* %i, align 4
  %inc112 = add nsw i32 %91, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond.91

for.end.113:                                      ; preds = %for.cond.91
  %92 = load i32, i32* @flag_test_coverage, align 4
  %tobool114 = icmp ne i32 %92, 0
  br i1 %tobool114, label %if.then.115, label %if.end.189

if.then.115:                                      ; preds = %for.end.113
  store i32 0, i32* %i116, align 4
  store i32 0, i32* %i116, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.185, %if.then.115
  %93 = load i32, i32* %i116, align 4
  %94 = load i32, i32* @n_basic_blocks, align 4
  %cmp118 = icmp slt i32 %93, %94
  br i1 %cmp118, label %for.body.119, label %for.end.187

for.body.119:                                     ; preds = %for.cond.117
  %95 = load i32, i32* %i116, align 4
  %idxprom121 = sext i32 %95 to i64
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data122 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %bb123 = bitcast %union.varray_data_tag* %data122 to [1 x %struct.basic_block_def*]*
  %arrayidx124 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb123, i32 0, i64 %idxprom121
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx124, align 8
  store %struct.basic_block_def* %97, %struct.basic_block_def** %bb120, align 8
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %bb120, align 8
  %head126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 0
  %99 = load %struct.rtx_def*, %struct.rtx_def** %head126, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %insn125, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %call127 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %100)
  store %struct.rtx_def* %call127, %struct.rtx_def** %insn125, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %tobool128 = icmp ne %struct.rtx_def* %101, null
  br i1 %tobool128, label %if.else.131, label %if.then.129

if.then.129:                                      ; preds = %for.body.119
  %call130 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call130, %struct.rtx_def** %insn125, align 8
  br label %if.end.135

if.else.131:                                      ; preds = %for.body.119
  %102 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 2
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %insn125, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.131, %if.then.129
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call136 = call i32 @__write_long(i64 0, %struct._IO_FILE* %104, i64 4)
  br label %while.cond

while.cond:                                       ; preds = %if.end.181, %if.end.135
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %bb120, align 8
  %end137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i32 0, i32 1
  %107 = load %struct.rtx_def*, %struct.rtx_def** %end137, align 8
  %cmp138 = icmp ne %struct.rtx_def* %105, %107
  br i1 %cmp138, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load139 = load i32, i32* %109, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 37
  br i1 %cmp141, label %if.then.142, label %if.end.181

if.then.142:                                      ; preds = %while.body
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx144 to i32*
  %111 = load i32, i32* %rtint, align 4
  %cmp145 = icmp eq i32 %111, -84
  br i1 %cmp145, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %if.then.142
  store i32 1, i32* @branch_prob.ignore_next_note, align 4
  br label %if.end.180

if.else.147:                                      ; preds = %if.then.142
  %112 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 4
  %rtint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %113 = load i32, i32* %rtint150, align 4
  %cmp151 = icmp sgt i32 %113, 0
  br i1 %cmp151, label %if.then.152, label %if.end.179

if.then.152:                                      ; preds = %if.else.147
  %114 = load i32, i32* @branch_prob.ignore_next_note, align 4
  %tobool153 = icmp ne i32 %114, 0
  br i1 %tobool153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.then.152
  store i32 0, i32* @branch_prob.ignore_next_note, align 4
  br label %if.end.178

if.else.155:                                      ; preds = %if.then.152
  %115 = load i8*, i8** @last_bb_file_name, align 8
  %tobool156 = icmp ne i8* %115, null
  br i1 %tobool156, label %lor.lhs.false.157, label %if.then.162

lor.lhs.false.157:                                ; preds = %if.else.155
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx159 to i8**
  %117 = load i8*, i8** %rtstr, align 8
  %118 = load i8*, i8** @last_bb_file_name, align 8
  %call160 = call i32 @strcmp(i8* %117, i8* %118) #6
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.173

if.then.162:                                      ; preds = %lor.lhs.false.157, %if.else.155
  %119 = load i8*, i8** @last_bb_file_name, align 8
  %tobool163 = icmp ne i8* %119, null
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.then.162
  %120 = load i8*, i8** @last_bb_file_name, align 8
  call void @free(i8* %120) #7
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.then.162
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 3
  %rtstr168 = bitcast %union.rtunion_def* %arrayidx167 to i8**
  %122 = load i8*, i8** %rtstr168, align 8
  %call169 = call noalias i8* @xstrdup(i8* %122)
  store i8* %call169, i8** @last_bb_file_name, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 3
  %rtstr172 = bitcast %union.rtunion_def* %arrayidx171 to i8**
  %124 = load i8*, i8** %rtstr172, align 8
  call void @output_gcov_string(i8* %124, i64 -1)
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.165, %lor.lhs.false.157
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 4
  %rtint176 = bitcast %union.rtunion_def* %arrayidx175 to i32*
  %126 = load i32, i32* %rtint176, align 4
  %conv = sext i32 %126 to i64
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call177 = call i32 @__write_long(i64 %conv, %struct._IO_FILE* %127, i64 4)
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.173, %if.then.154
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.else.147
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.146
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %while.body
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn125, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 2
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %insn125, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.185

for.inc.185:                                      ; preds = %while.end
  %130 = load i32, i32* %i116, align 4
  %inc186 = add nsw i32 %130, 1
  store i32 %inc186, i32* %i116, align 4
  br label %for.cond.117

for.end.187:                                      ; preds = %for.cond.117
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call188 = call i32 @__write_long(i64 0, %struct._IO_FILE* %131, i64 4)
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.187, %for.end.113
  %132 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  call void @find_spanning_tree(%struct.edge_list* %132)
  store i32 0, i32* %i, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.218, %if.end.189
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %num_edges, align 4
  %cmp191 = icmp slt i32 %133, %134
  br i1 %cmp191, label %for.body.193, label %for.end.220

for.body.193:                                     ; preds = %for.cond.190
  %135 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %135 to i64
  %136 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %index_to_edge196 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %136, i32 0, i32 2
  %137 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge196, align 8
  %arrayidx197 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %137, i64 %idxprom195
  %138 = load %struct.edge_def*, %struct.edge_def** %arrayidx197, align 8
  store %struct.edge_def* %138, %struct.edge_def** %e194, align 8
  %139 = load %struct.edge_def*, %struct.edge_def** %e194, align 8
  %aux198 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %139, i32 0, i32 5
  %140 = load i8*, i8** %aux198, align 8
  %141 = bitcast i8* %140 to %struct.edge_info*
  store %struct.edge_info* %141, %struct.edge_info** %inf, align 8
  %142 = load %struct.edge_def*, %struct.edge_def** %e194, align 8
  %flags199 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %142, i32 0, i32 6
  %143 = load i32, i32* %flags199, align 4
  %and200 = and i32 %143, 16
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %land.lhs.true.202, label %if.end.217

land.lhs.true.202:                                ; preds = %for.body.193
  %144 = load %struct.edge_info*, %struct.edge_info** %inf, align 8
  %145 = bitcast %struct.edge_info* %144 to i8*
  %bf.load203 = load i8, i8* %145, align 4
  %bf.lshr = lshr i8 %bf.load203, 2
  %bf.clear204 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear204 to i32
  %tobool205 = icmp ne i32 %bf.cast, 0
  br i1 %tobool205, label %if.end.217, label %land.lhs.true.206

land.lhs.true.206:                                ; preds = %land.lhs.true.202
  %146 = load %struct.edge_info*, %struct.edge_info** %inf, align 8
  %147 = bitcast %struct.edge_info* %146 to i8*
  %bf.load207 = load i8, i8* %147, align 4
  %bf.lshr208 = lshr i8 %bf.load207, 1
  %bf.clear209 = and i8 %bf.lshr208, 1
  %bf.cast210 = zext i8 %bf.clear209 to i32
  %tobool211 = icmp ne i32 %bf.cast210, 0
  br i1 %tobool211, label %if.end.217, label %if.then.212

if.then.212:                                      ; preds = %land.lhs.true.206
  %148 = load %struct.edge_info*, %struct.edge_info** %inf, align 8
  %149 = bitcast %struct.edge_info* %148 to i8*
  %bf.load213 = load i8, i8* %149, align 4
  %bf.clear214 = and i8 %bf.load213, -5
  %bf.set215 = or i8 %bf.clear214, 4
  store i8 %bf.set215, i8* %149, align 4
  %150 = load i32, i32* %ignored_edges, align 4
  %inc216 = add nsw i32 %150, 1
  store i32 %inc216, i32* %ignored_edges, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.212, %land.lhs.true.206, %land.lhs.true.202, %for.body.193
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %151 = load i32, i32* %i, align 4
  %inc219 = add nsw i32 %151, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond.190

for.end.220:                                      ; preds = %for.cond.190
  %152 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %152, 2
  %153 = load i32, i32* @total_num_blocks, align 4
  %add221 = add nsw i32 %153, %add
  store i32 %add221, i32* @total_num_blocks, align 4
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool222 = icmp ne %struct._IO_FILE* %154, null
  br i1 %tobool222, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %for.end.220
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %156 = load i32, i32* @n_basic_blocks, align 4
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %156)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %for.end.220
  %157 = load i32, i32* %num_edges, align 4
  %158 = load i32, i32* @total_num_edges, align 4
  %add226 = add nsw i32 %158, %157
  store i32 %add226, i32* @total_num_edges, align 4
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool227 = icmp ne %struct._IO_FILE* %159, null
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.end.225
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %161 = load i32, i32* %num_edges, align 4
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %161)
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.end.225
  %162 = load i32, i32* %ignored_edges, align 4
  %163 = load i32, i32* @total_num_edges_ignored, align 4
  %add231 = add nsw i32 %163, %162
  store i32 %add231, i32* @total_num_edges_ignored, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool232 = icmp ne %struct._IO_FILE* %164, null
  br i1 %tobool232, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.end.230
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %166 = load i32, i32* %ignored_edges, align 4
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %166)
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.end.230
  %167 = load i32, i32* @flag_test_coverage, align 4
  %tobool236 = icmp ne i32 %167, 0
  br i1 %tobool236, label %if.then.237, label %if.end.347

if.then.237:                                      ; preds = %if.end.235
  %168 = load i32, i32* @n_basic_blocks, align 4
  %add238 = add nsw i32 %168, 2
  %conv239 = sext i32 %add238 to i64
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call240 = call i32 @__write_long(i64 %conv239, %struct._IO_FILE* %169, i64 4)
  %170 = load i32, i32* %num_edges, align 4
  %171 = load i32, i32* %ignored_edges, align 4
  %sub = sub nsw i32 %170, %171
  %add241 = add nsw i32 %sub, 1
  %conv242 = sext i32 %add241 to i64
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call243 = call i32 @__write_long(i64 %conv242, %struct._IO_FILE* %172, i64 4)
  store i32 0, i32* %i, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.340, %if.then.237
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* @n_basic_blocks, align 4
  %add245 = add nsw i32 %174, 1
  %cmp246 = icmp slt i32 %173, %add245
  br i1 %cmp246, label %for.body.248, label %for.end.342

for.body.248:                                     ; preds = %for.cond.244
  %175 = load i32, i32* %i, align 4
  %cmp250 = icmp eq i32 %175, 0
  br i1 %cmp250, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.248
  br label %cond.end.262

cond.false:                                       ; preds = %for.body.248
  %176 = load i32, i32* %i, align 4
  %177 = load i32, i32* @n_basic_blocks, align 4
  %add252 = add nsw i32 %177, 1
  %cmp253 = icmp eq i32 %176, %add252
  br i1 %cmp253, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %cond.false
  br label %cond.end

cond.false.256:                                   ; preds = %cond.false
  %178 = load i32, i32* %i, align 4
  %sub257 = sub nsw i32 %178, 1
  %idxprom258 = sext i32 %sub257 to i64
  %179 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data259 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %179, i32 0, i32 4
  %bb260 = bitcast %union.varray_data_tag* %data259 to [1 x %struct.basic_block_def*]*
  %arrayidx261 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb260, i32 0, i64 %idxprom258
  %180 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx261, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.256, %cond.true.255
  %cond = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.255 ], [ %180, %cond.false.256 ]
  br label %cond.end.262

cond.end.262:                                     ; preds = %cond.end, %cond.true
  %cond263 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true ], [ %cond, %cond.end ]
  store %struct.basic_block_def* %cond263, %struct.basic_block_def** %bb249, align 8
  store i64 0, i64* %count265, align 8
  %181 = load %struct.basic_block_def*, %struct.basic_block_def** %bb249, align 8
  %succ266 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %181, i32 0, i32 5
  %182 = load %struct.edge_def*, %struct.edge_def** %succ266, align 8
  store %struct.edge_def* %182, %struct.edge_def** %e264, align 8
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.279, %cond.end.262
  %183 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %tobool268 = icmp ne %struct.edge_def* %183, null
  br i1 %tobool268, label %for.body.269, label %for.end.281

for.body.269:                                     ; preds = %for.cond.267
  %184 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %aux270 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %184, i32 0, i32 5
  %185 = load i8*, i8** %aux270, align 8
  %186 = bitcast i8* %185 to %struct.edge_info*
  %187 = bitcast %struct.edge_info* %186 to i8*
  %bf.load271 = load i8, i8* %187, align 4
  %bf.lshr272 = lshr i8 %bf.load271, 2
  %bf.clear273 = and i8 %bf.lshr272, 1
  %bf.cast274 = zext i8 %bf.clear273 to i32
  %tobool275 = icmp ne i32 %bf.cast274, 0
  br i1 %tobool275, label %if.end.278, label %if.then.276

if.then.276:                                      ; preds = %for.body.269
  %188 = load i64, i64* %count265, align 8
  %inc277 = add nsw i64 %188, 1
  store i64 %inc277, i64* %count265, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %for.body.269
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.278
  %189 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %succ_next280 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %189, i32 0, i32 1
  %190 = load %struct.edge_def*, %struct.edge_def** %succ_next280, align 8
  store %struct.edge_def* %190, %struct.edge_def** %e264, align 8
  br label %for.cond.267

for.end.281:                                      ; preds = %for.cond.267
  %191 = load i64, i64* %count265, align 8
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call282 = call i32 @__write_long(i64 %191, %struct._IO_FILE* %192, i64 4)
  %193 = load %struct.basic_block_def*, %struct.basic_block_def** %bb249, align 8
  %succ283 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %193, i32 0, i32 5
  %194 = load %struct.edge_def*, %struct.edge_def** %succ283, align 8
  store %struct.edge_def* %194, %struct.edge_def** %e264, align 8
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.337, %for.end.281
  %195 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %tobool285 = icmp ne %struct.edge_def* %195, null
  br i1 %tobool285, label %for.body.286, label %for.end.339

for.body.286:                                     ; preds = %for.cond.284
  %196 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %aux288 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %196, i32 0, i32 5
  %197 = load i8*, i8** %aux288, align 8
  %198 = bitcast i8* %197 to %struct.edge_info*
  store %struct.edge_info* %198, %struct.edge_info** %i287, align 8
  %199 = load %struct.edge_info*, %struct.edge_info** %i287, align 8
  %200 = bitcast %struct.edge_info* %199 to i8*
  %bf.load289 = load i8, i8* %200, align 4
  %bf.lshr290 = lshr i8 %bf.load289, 2
  %bf.clear291 = and i8 %bf.lshr290, 1
  %bf.cast292 = zext i8 %bf.clear291 to i32
  %tobool293 = icmp ne i32 %bf.cast292, 0
  br i1 %tobool293, label %if.end.336, label %if.then.294

if.then.294:                                      ; preds = %for.body.286
  store i32 0, i32* %flag_bits, align 4
  %201 = load %struct.edge_info*, %struct.edge_info** %i287, align 8
  %202 = bitcast %struct.edge_info* %201 to i8*
  %bf.load295 = load i8, i8* %202, align 4
  %bf.lshr296 = lshr i8 %bf.load295, 1
  %bf.clear297 = and i8 %bf.lshr296, 1
  %bf.cast298 = zext i8 %bf.clear297 to i32
  %tobool299 = icmp ne i32 %bf.cast298, 0
  br i1 %tobool299, label %if.then.300, label %if.end.301

if.then.300:                                      ; preds = %if.then.294
  %203 = load i32, i32* %flag_bits, align 4
  %or = or i32 %203, 1
  store i32 %or, i32* %flag_bits, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.300, %if.then.294
  %204 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %flags302 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %204, i32 0, i32 6
  %205 = load i32, i32* %flags302, align 4
  %and303 = and i32 %205, 16
  %tobool304 = icmp ne i32 %and303, 0
  br i1 %tobool304, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.end.301
  %206 = load i32, i32* %flag_bits, align 4
  %or306 = or i32 %206, 2
  store i32 %or306, i32* %flag_bits, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %if.end.301
  %207 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %flags308 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %207, i32 0, i32 6
  %208 = load i32, i32* %flags308, align 4
  %and309 = and i32 %208, 1
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %if.end.307
  %209 = load i32, i32* %flag_bits, align 4
  %or312 = or i32 %209, 4
  store i32 %or312, i32* %flag_bits, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %if.end.307
  %210 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %dest314 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %210, i32 0, i32 3
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %dest314, align 8
  %cmp315 = icmp eq %struct.basic_block_def* %211, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp315, label %cond.true.317, label %cond.false.318

cond.true.317:                                    ; preds = %if.end.313
  br label %cond.end.330

cond.false.318:                                   ; preds = %if.end.313
  %212 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %dest319 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %212, i32 0, i32 3
  %213 = load %struct.basic_block_def*, %struct.basic_block_def** %dest319, align 8
  %cmp320 = icmp eq %struct.basic_block_def* %213, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp320, label %cond.true.322, label %cond.false.324

cond.true.322:                                    ; preds = %cond.false.318
  %214 = load i32, i32* @n_basic_blocks, align 4
  %add323 = add nsw i32 %214, 1
  br label %cond.end.328

cond.false.324:                                   ; preds = %cond.false.318
  %215 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %dest325 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %215, i32 0, i32 3
  %216 = load %struct.basic_block_def*, %struct.basic_block_def** %dest325, align 8
  %index326 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %216, i32 0, i32 11
  %217 = load i32, i32* %index326, align 4
  %add327 = add nsw i32 %217, 1
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.324, %cond.true.322
  %cond329 = phi i32 [ %add323, %cond.true.322 ], [ %add327, %cond.false.324 ]
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.end.328, %cond.true.317
  %cond331 = phi i32 [ 0, %cond.true.317 ], [ %cond329, %cond.end.328 ]
  %conv332 = sext i32 %cond331 to i64
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call333 = call i32 @__write_long(i64 %conv332, %struct._IO_FILE* %218, i64 4)
  %219 = load i32, i32* %flag_bits, align 4
  %conv334 = sext i32 %219 to i64
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call335 = call i32 @__write_long(i64 %conv334, %struct._IO_FILE* %220, i64 4)
  br label %if.end.336

if.end.336:                                       ; preds = %cond.end.330, %for.body.286
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336
  %221 = load %struct.edge_def*, %struct.edge_def** %e264, align 8
  %succ_next338 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %221, i32 0, i32 1
  %222 = load %struct.edge_def*, %struct.edge_def** %succ_next338, align 8
  store %struct.edge_def* %222, %struct.edge_def** %e264, align 8
  br label %for.cond.284

for.end.339:                                      ; preds = %for.cond.284
  br label %for.inc.340

for.inc.340:                                      ; preds = %for.end.339
  %223 = load i32, i32* %i, align 4
  %inc341 = add nsw i32 %223, 1
  store i32 %inc341, i32* %i, align 4
  br label %for.cond.244

for.end.342:                                      ; preds = %for.cond.244
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call343 = call i32 @__write_long(i64 1, %struct._IO_FILE* %224, i64 4)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call344 = call i32 @__write_long(i64 0, %struct._IO_FILE* %225, i64 4)
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call345 = call i32 @__write_long(i64 1, %struct._IO_FILE* %226, i64 4)
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call346 = call i32 @__write_long(i64 -1, %struct._IO_FILE* %227, i64 4)
  br label %if.end.347

if.end.347:                                       ; preds = %for.end.342, %if.end.235
  %228 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool348 = icmp ne i32 %228, 0
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.end.347
  call void @compute_branch_probabilities()
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.end.347
  %229 = load i32, i32* @profile_arc_flag, align 4
  %tobool351 = icmp ne i32 %229, 0
  br i1 %tobool351, label %if.then.352, label %if.end.355

if.then.352:                                      ; preds = %if.end.350
  %230 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  call void @instrument_edges(%struct.edge_list* %230)
  %call353 = call i32 @max_reg_num()
  %conv354 = sext i32 %call353 to i64
  call void @allocate_reg_info(i64 %conv354, i32 0, i32 0)
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.352, %if.end.350
  call void @remove_fake_edges()
  %231 = load i32, i32* @profile_arc_flag, align 4
  %tobool356 = icmp ne i32 %231, 0
  %cond357 = select i1 %tobool356, i32 1, i32 0
  %call358 = call zeroext i1 @cleanup_cfg(i32 %cond357)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool359 = icmp ne %struct._IO_FILE* %232, null
  br i1 %tobool359, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %if.end.355
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_flow_info(%struct._IO_FILE* %233)
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.360, %if.end.355
  call void @free_aux_for_edges()
  %234 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  call void @free_edge_list(%struct.edge_list* %234)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_gcov_string(i8* %string, i64 %delimiter) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %delimiter.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  %c = alloca [4 x i8], align 1
  store i8* %string, i8** %string.addr, align 8
  store i64 %delimiter, i64* %delimiter.addr, align 8
  %0 = load i64, i64* %delimiter.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call = call i32 @__write_long(i64 %0, %struct._IO_FILE* %1, i64 4)
  %2 = load i8*, i8** %string.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #6
  %add = add i64 %call1, 1
  store i64 %add, i64* %temp, align 8
  %3 = load i8*, i8** %string.addr, align 8
  %4 = load i64, i64* %temp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call2 = call i64 @fwrite(i8* %3, i64 %4, i64 1, %struct._IO_FILE* %5)
  %6 = load i64, i64* %temp, align 8
  %and = and i64 %6, 3
  store i64 %and, i64* %temp, align 8
  %7 = load i64, i64* %temp, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 3
  store i8 0, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 2
  store i8 0, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 1
  store i8 0, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 0
  store i8 0, i8* %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i32 0
  %8 = load i64, i64* %temp, align 8
  %sub = sub nsw i64 4, %8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call6 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 %sub, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %delimiter.addr, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call7 = call i32 @__write_long(i64 %10, %struct._IO_FILE* %11, i64 4)
  ret void
}

declare i32 @flow_call_edges_add(%struct.simple_bitmap_def*) #1

declare void @add_noreturn_fake_exit_edges() #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.edge_def* @split_block(%struct.basic_block_def*, %struct.rtx_def*) #1

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.edge_list* @create_edge_list() #1

declare void @alloc_aux_for_edges(i32) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal i32 @__write_long(i64 %value, %struct._IO_FILE* %file, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bytes.addr = alloca i64, align 8
  %c = alloca [10 x i8], align 1
  store i64 %value, i64* %value.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i64, i64* %bytes.addr, align 8
  %cmp = icmp ugt i64 %0, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %value.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %2 = load i64, i64* %bytes.addr, align 8
  %call = call i32 @__store_gcov_type(i64 %1, i8* %arraydecay, i64 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %3 = load i64, i64* %bytes.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i64 @fwrite(i8* %arraydecay1, i64 1, i64 %3, %struct._IO_FILE* %4)
  %5 = load i64, i64* %bytes.addr, align 8
  %cmp3 = icmp ne i64 %call2, %5
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare noalias i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_spanning_tree(%struct.edge_list* %el) #0 {
entry:
  %el.addr = alloca %struct.edge_list*, align 8
  %i = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %e27 = alloca %struct.edge_def*, align 8
  %e63 = alloca %struct.edge_def*, align 8
  store %struct.edge_list* %el, %struct.edge_list** %el.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  store i8* bitcast (%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1) to i8*), i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  store i8* bitcast ([2 x %struct.basic_block_def]* @entry_exit_blocks to i8*), i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %7 = bitcast %struct.basic_block_def* %6 to i8*
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 10
  store i8* %7, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @union_groups(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.21, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_edges, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body.8, label %for.end.23

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %15, i32 0, i32 2
  %16 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx10 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %16, i64 %idxprom9
  %17 = load %struct.edge_def*, %struct.edge_def** %arrayidx10, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 6
  %19 = load i32, i32* %flags, align 4
  %and = and i32 %19, 22
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.8
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 5
  %21 = load i8*, i8** %aux11, align 8
  %22 = bitcast i8* %21 to %struct.edge_info*
  %23 = bitcast %struct.edge_info* %22 to i8*
  %bf.load = load i8, i8* %23, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool12 = icmp ne i32 %bf.cast, 0
  br i1 %tobool12, label %if.end, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 2
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %call = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %25)
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 3
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call14 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %27)
  %cmp15 = icmp ne %struct.basic_block_def* %call, %call14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 5
  %29 = load i8*, i8** %aux16, align 8
  %30 = bitcast i8* %29 to %struct.edge_info*
  %31 = bitcast %struct.edge_info* %30 to i8*
  %bf.load17 = load i8, i8* %31, align 4
  %bf.clear18 = and i8 %bf.load17, -3
  %bf.set = or i8 %bf.clear18, 2
  store i8 %bf.set, i8* %31, align 4
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 2
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src19, align 8
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 3
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8
  call void @union_groups(%struct.basic_block_def* %33, %struct.basic_block_def* %35)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.13, %land.lhs.true, %for.body.8
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %36, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.6

for.end.23:                                       ; preds = %for.cond.6
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.57, %for.end.23
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %num_edges, align 4
  %cmp25 = icmp slt i32 %37, %38
  br i1 %cmp25, label %for.body.26, label %for.end.59

for.body.26:                                      ; preds = %for.cond.24
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge29 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %40, i32 0, i32 2
  %41 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge29, align 8
  %arrayidx30 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %41, i64 %idxprom28
  %42 = load %struct.edge_def*, %struct.edge_def** %arrayidx30, align 8
  store %struct.edge_def* %42, %struct.edge_def** %e27, align 8
  %43 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %src31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 2
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %src31, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 5
  %45 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 1
  %46 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool32 = icmp ne %struct.edge_def* %46, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.56

land.lhs.true.33:                                 ; preds = %for.body.26
  %47 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %dest34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 3
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %dest34, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 4
  %49 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i32 0, i32 0
  %50 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool35 = icmp ne %struct.edge_def* %50, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.56

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %51 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %aux37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 5
  %52 = load i8*, i8** %aux37, align 8
  %53 = bitcast i8* %52 to %struct.edge_info*
  %54 = bitcast %struct.edge_info* %53 to i8*
  %bf.load38 = load i8, i8* %54, align 4
  %bf.lshr39 = lshr i8 %bf.load38, 2
  %bf.clear40 = and i8 %bf.lshr39, 1
  %bf.cast41 = zext i8 %bf.clear40 to i32
  %tobool42 = icmp ne i32 %bf.cast41, 0
  br i1 %tobool42, label %if.end.56, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true.36
  %55 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %src44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 2
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %src44, align 8
  %call45 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %56)
  %57 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %dest46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i32 0, i32 3
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %dest46, align 8
  %call47 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %58)
  %cmp48 = icmp ne %struct.basic_block_def* %call45, %call47
  br i1 %cmp48, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %land.lhs.true.43
  %59 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %aux50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 5
  %60 = load i8*, i8** %aux50, align 8
  %61 = bitcast i8* %60 to %struct.edge_info*
  %62 = bitcast %struct.edge_info* %61 to i8*
  %bf.load51 = load i8, i8* %62, align 4
  %bf.clear52 = and i8 %bf.load51, -3
  %bf.set53 = or i8 %bf.clear52, 2
  store i8 %bf.set53, i8* %62, align 4
  %63 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %src54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 2
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src54, align 8
  %65 = load %struct.edge_def*, %struct.edge_def** %e27, align 8
  %dest55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i32 0, i32 3
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %dest55, align 8
  call void @union_groups(%struct.basic_block_def* %64, %struct.basic_block_def* %66)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.49, %land.lhs.true.43, %land.lhs.true.36, %land.lhs.true.33, %for.body.26
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %67 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %67, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.24

for.end.59:                                       ; preds = %for.cond.24
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.87, %for.end.59
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %num_edges, align 4
  %cmp61 = icmp slt i32 %68, %69
  br i1 %cmp61, label %for.body.62, label %for.end.89

for.body.62:                                      ; preds = %for.cond.60
  %70 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %70 to i64
  %71 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge65 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %71, i32 0, i32 2
  %72 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge65, align 8
  %arrayidx66 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %72, i64 %idxprom64
  %73 = load %struct.edge_def*, %struct.edge_def** %arrayidx66, align 8
  store %struct.edge_def* %73, %struct.edge_def** %e63, align 8
  %74 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %src67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 2
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %src67, align 8
  %call68 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %75)
  %76 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %dest69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 3
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %dest69, align 8
  %call70 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %77)
  %cmp71 = icmp ne %struct.basic_block_def* %call68, %call70
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.86

land.lhs.true.72:                                 ; preds = %for.body.62
  %78 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %aux73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i32 0, i32 5
  %79 = load i8*, i8** %aux73, align 8
  %80 = bitcast i8* %79 to %struct.edge_info*
  %81 = bitcast %struct.edge_info* %80 to i8*
  %bf.load74 = load i8, i8* %81, align 4
  %bf.lshr75 = lshr i8 %bf.load74, 2
  %bf.clear76 = and i8 %bf.lshr75, 1
  %bf.cast77 = zext i8 %bf.clear76 to i32
  %tobool78 = icmp ne i32 %bf.cast77, 0
  br i1 %tobool78, label %if.end.86, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.72
  %82 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %aux80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %82, i32 0, i32 5
  %83 = load i8*, i8** %aux80, align 8
  %84 = bitcast i8* %83 to %struct.edge_info*
  %85 = bitcast %struct.edge_info* %84 to i8*
  %bf.load81 = load i8, i8* %85, align 4
  %bf.clear82 = and i8 %bf.load81, -3
  %bf.set83 = or i8 %bf.clear82, 2
  store i8 %bf.set83, i8* %85, align 4
  %86 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %src84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i32 0, i32 2
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %src84, align 8
  %88 = load %struct.edge_def*, %struct.edge_def** %e63, align 8
  %dest85 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 3
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %dest85, align 8
  call void @union_groups(%struct.basic_block_def* %87, %struct.basic_block_def* %89)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %land.lhs.true.72, %for.body.62
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %90 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %90, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.60

for.end.89:                                       ; preds = %for.cond.60
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %for.end.89
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* @n_basic_blocks, align 4
  %cmp91 = icmp slt i32 %91, %92
  br i1 %cmp91, label %for.body.92, label %for.end.100

for.body.92:                                      ; preds = %for.cond.90
  %93 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %93 to i64
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 4
  %bb95 = bitcast %union.varray_data_tag* %data94 to [1 x %struct.basic_block_def*]*
  %arrayidx96 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb95, i32 0, i64 %idxprom93
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx96, align 8
  %aux97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %95, i32 0, i32 10
  store i8* null, i8** %aux97, align 8
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.92
  %96 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %96, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_branch_probabilities() #0 {
entry:
  %i = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %changes = alloca i32, align 4
  %passes = alloca i32, align 4
  %hist_br_prob = alloca [20 x i32], align 16
  %num_never_executed = alloca i32, align 4
  %num_branches = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %bb37 = alloca %struct.basic_block_def*, align 8
  %e54 = alloca %struct.edge_def*, align 8
  %value = alloca i64, align 8
  %bb110 = alloca %struct.basic_block_def*, align 8
  %bi = alloca %struct.bb_info*, align 8
  %e136 = alloca %struct.edge_def*, align 8
  %total = alloca i64, align 8
  %e154 = alloca %struct.edge_def*, align 8
  %total155 = alloca i64, align 8
  %e180 = alloca %struct.edge_def*, align 8
  %total181 = alloca i64, align 8
  %e232 = alloca %struct.edge_def*, align 8
  %total233 = alloca i64, align 8
  %bb297 = alloca %struct.basic_block_def*, align 8
  %bb325 = alloca %struct.basic_block_def*, align 8
  %e342 = alloca %struct.edge_def*, align 8
  %total343 = alloca i64, align 8
  %note = alloca %struct.rtx_def*, align 8
  %prob = alloca i32, align 4
  %e383 = alloca %struct.edge_def*, align 8
  %index384 = alloca i32, align 4
  store i32 0, i32* %num_edges, align 4
  call void @alloc_aux_for_blocks(i32 24)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %1, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.7

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %add2 = add nsw i32 %4, 1
  %cmp3 = icmp eq i32 %3, %add2
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.4 ], [ %7, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true ], [ %cond, %cond.end ]
  store %struct.basic_block_def* %cond8, %struct.basic_block_def** %bb, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 5
  %9 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %9, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %cond.end.7
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %10, null
  br i1 %tobool, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.9
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 5
  %12 = load i8*, i8** %aux, align 8
  %13 = bitcast i8* %12 to %struct.edge_info*
  %14 = bitcast %struct.edge_info* %13 to i8*
  %bf.load = load i8, i8* %14, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool11 = icmp ne i32 %bf.cast, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.10
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 10
  %16 = load i8*, i8** %aux12, align 8
  %17 = bitcast i8* %16 to %struct.bb_info*
  %succ_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %17, i32 0, i32 1
  %18 = load i64, i64* %succ_count, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %succ_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 1
  %20 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %20, %struct.edge_def** %e, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 4
  %22 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %22, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.26, %for.end
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool14 = icmp ne %struct.edge_def* %23, null
  br i1 %tobool14, label %for.body.15, label %for.end.27

for.body.15:                                      ; preds = %for.cond.13
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 5
  %25 = load i8*, i8** %aux16, align 8
  %26 = bitcast i8* %25 to %struct.edge_info*
  %27 = bitcast %struct.edge_info* %26 to i8*
  %bf.load17 = load i8, i8* %27, align 4
  %bf.lshr18 = lshr i8 %bf.load17, 2
  %bf.clear19 = and i8 %bf.lshr18, 1
  %bf.cast20 = zext i8 %bf.clear19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %for.body.15
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 10
  %29 = load i8*, i8** %aux23, align 8
  %30 = bitcast i8* %29 to %struct.bb_info*
  %pred_count = getelementptr inbounds %struct.bb_info, %struct.bb_info* %30, i32 0, i32 2
  %31 = load i64, i64* %pred_count, align 8
  %inc24 = add nsw i64 %31, 1
  store i64 %inc24, i64* %pred_count, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %for.body.15
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 0
  %33 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %33, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.end.27:                                       ; preds = %for.cond.13
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %34 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %34, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %35 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  %36 = bitcast i8* %35 to %struct.bb_info*
  %succ_count31 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %36, i32 0, i32 1
  store i64 2, i64* %succ_count31, align 8
  %37 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  %38 = bitcast i8* %37 to %struct.bb_info*
  %pred_count32 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %38, i32 0, i32 2
  store i64 2, i64* %pred_count32, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.97, %for.end.30
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @n_basic_blocks, align 4
  %add34 = add nsw i32 %40, 2
  %cmp35 = icmp slt i32 %39, %add34
  br i1 %cmp35, label %for.body.36, label %for.end.99

for.body.36:                                      ; preds = %for.cond.33
  %41 = load i32, i32* %i, align 4
  %cmp38 = icmp eq i32 %41, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %for.body.36
  br label %cond.end.52

cond.false.40:                                    ; preds = %for.body.36
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* @n_basic_blocks, align 4
  %add41 = add nsw i32 %43, 1
  %cmp42 = icmp eq i32 %42, %add41
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.40
  br label %cond.end.50

cond.false.44:                                    ; preds = %cond.false.40
  %44 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %44, 1
  %idxprom46 = sext i32 %sub45 to i64
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data47 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %45, i32 0, i32 4
  %bb48 = bitcast %union.varray_data_tag* %data47 to [1 x %struct.basic_block_def*]*
  %arrayidx49 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb48, i32 0, i64 %idxprom46
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx49, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.44, %cond.true.43
  %cond51 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.43 ], [ %46, %cond.false.44 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.39
  %cond53 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true.39 ], [ %cond51, %cond.end.50 ]
  store %struct.basic_block_def* %cond53, %struct.basic_block_def** %bb37, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb37, align 8
  %succ55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ55, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e54, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.94, %cond.end.52
  %49 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %tobool57 = icmp ne %struct.edge_def* %49, null
  br i1 %tobool57, label %for.body.58, label %for.end.96

for.body.58:                                      ; preds = %for.cond.56
  %50 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %aux59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 5
  %51 = load i8*, i8** %aux59, align 8
  %52 = bitcast i8* %51 to %struct.edge_info*
  %53 = bitcast %struct.edge_info* %52 to i8*
  %bf.load60 = load i8, i8* %53, align 4
  %bf.lshr61 = lshr i8 %bf.load60, 2
  %bf.clear62 = and i8 %bf.lshr61, 1
  %bf.cast63 = zext i8 %bf.clear62 to i32
  %tobool64 = icmp ne i32 %bf.cast63, 0
  br i1 %tobool64, label %if.end.93, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.58
  %54 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %aux65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %54, i32 0, i32 5
  %55 = load i8*, i8** %aux65, align 8
  %56 = bitcast i8* %55 to %struct.edge_info*
  %57 = bitcast %struct.edge_info* %56 to i8*
  %bf.load66 = load i8, i8* %57, align 4
  %bf.lshr67 = lshr i8 %bf.load66, 1
  %bf.clear68 = and i8 %bf.lshr67, 1
  %bf.cast69 = zext i8 %bf.clear68 to i32
  %tobool70 = icmp ne i32 %bf.cast69, 0
  br i1 %tobool70, label %if.end.93, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true
  %58 = load i32, i32* %num_edges, align 4
  %inc72 = add nsw i32 %58, 1
  store i32 %inc72, i32* %num_edges, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %tobool73 = icmp ne %struct._IO_FILE* %59, null
  br i1 %tobool73, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %if.then.71
  store i64 0, i64* %value, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %call = call i32 @__read_gcov_type(i64* %value, %struct._IO_FILE* %60, i64 8)
  %61 = load i64, i64* %value, align 8
  %62 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i32 0, i32 8
  store i64 %61, i64* %count, align 8
  br label %if.end.76

if.else:                                          ; preds = %if.then.71
  %63 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %count75 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 8
  store i64 0, i64* %count75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.74
  %64 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %aux77 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 5
  %65 = load i8*, i8** %aux77, align 8
  %66 = bitcast i8* %65 to %struct.edge_info*
  %67 = bitcast %struct.edge_info* %66 to i8*
  %bf.load78 = load i8, i8* %67, align 4
  %bf.clear79 = and i8 %bf.load78, -2
  %bf.set = or i8 %bf.clear79, 1
  store i8 %bf.set, i8* %67, align 4
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb37, align 8
  %aux80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 10
  %69 = load i8*, i8** %aux80, align 8
  %70 = bitcast i8* %69 to %struct.bb_info*
  %succ_count81 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %70, i32 0, i32 1
  %71 = load i64, i64* %succ_count81, align 8
  %dec = add nsw i64 %71, -1
  store i64 %dec, i64* %succ_count81, align 8
  %72 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i32 0, i32 3
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %aux82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 10
  %74 = load i8*, i8** %aux82, align 8
  %75 = bitcast i8* %74 to %struct.bb_info*
  %pred_count83 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %75, i32 0, i32 2
  %76 = load i64, i64* %pred_count83, align 8
  %dec84 = add nsw i64 %76, -1
  store i64 %dec84, i64* %pred_count83, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool85 = icmp ne %struct._IO_FILE* %77, null
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.76
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %bb37, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i32 0, i32 11
  %80 = load i32, i32* %index, align 4
  %81 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %dest87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i32 0, i32 3
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %dest87, align 8
  %index88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %82, i32 0, i32 11
  %83 = load i32, i32* %index88, align 4
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 %80, i32 %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %85 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %count90 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %85, i32 0, i32 8
  %86 = load i64, i64* %count90, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i64 %86)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.86, %if.end.76
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true, %for.body.58
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %87 = load %struct.edge_def*, %struct.edge_def** %e54, align 8
  %succ_next95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %87, i32 0, i32 1
  %88 = load %struct.edge_def*, %struct.edge_def** %succ_next95, align 8
  store %struct.edge_def* %88, %struct.edge_def** %e54, align 8
  br label %for.cond.56

for.end.96:                                       ; preds = %for.cond.56
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %89 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %89, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.33

for.end.99:                                       ; preds = %for.cond.33
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool100 = icmp ne %struct._IO_FILE* %90, null
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %for.end.99
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %92 = load i32, i32* %num_edges, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %92)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %for.end.99
  store i32 1, i32* %changes, align 4
  store i32 0, i32* %passes, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.285, %if.end.103
  %93 = load i32, i32* %changes, align 4
  %tobool104 = icmp ne i32 %93, 0
  br i1 %tobool104, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i32, i32* %passes, align 4
  %inc105 = add nsw i32 %94, 1
  store i32 %inc105, i32* %passes, align 4
  store i32 0, i32* %changes, align 4
  %95 = load i32, i32* @n_basic_blocks, align 4
  %add106 = add nsw i32 %95, 1
  store i32 %add106, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.283, %while.body
  %96 = load i32, i32* %i, align 4
  %cmp108 = icmp sge i32 %96, 0
  br i1 %cmp108, label %for.body.109, label %for.end.285

for.body.109:                                     ; preds = %for.cond.107
  %97 = load i32, i32* %i, align 4
  %cmp111 = icmp eq i32 %97, 0
  br i1 %cmp111, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %for.body.109
  br label %cond.end.125

cond.false.113:                                   ; preds = %for.body.109
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* @n_basic_blocks, align 4
  %add114 = add nsw i32 %99, 1
  %cmp115 = icmp eq i32 %98, %add114
  br i1 %cmp115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.113
  br label %cond.end.123

cond.false.117:                                   ; preds = %cond.false.113
  %100 = load i32, i32* %i, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %101 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data120 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %101, i32 0, i32 4
  %bb121 = bitcast %union.varray_data_tag* %data120 to [1 x %struct.basic_block_def*]*
  %arrayidx122 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb121, i32 0, i64 %idxprom119
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx122, align 8
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.117, %cond.true.116
  %cond124 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.116 ], [ %102, %cond.false.117 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %cond.true.112
  %cond126 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true.112 ], [ %cond124, %cond.end.123 ]
  store %struct.basic_block_def* %cond126, %struct.basic_block_def** %bb110, align 8
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %aux127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 10
  %104 = load i8*, i8** %aux127, align 8
  %105 = bitcast i8* %104 to %struct.bb_info*
  store %struct.bb_info* %105, %struct.bb_info** %bi, align 8
  %106 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %107 = bitcast %struct.bb_info* %106 to i8*
  %bf.load128 = load i8, i8* %107, align 8
  %bf.clear129 = and i8 %bf.load128, 1
  %bf.cast130 = zext i8 %bf.clear129 to i32
  %tobool131 = icmp ne i32 %bf.cast130, 0
  br i1 %tobool131, label %if.end.171, label %if.then.132

if.then.132:                                      ; preds = %cond.end.125
  %108 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %succ_count133 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %108, i32 0, i32 1
  %109 = load i64, i64* %succ_count133, align 8
  %cmp134 = icmp eq i64 %109, 0
  br i1 %cmp134, label %if.then.135, label %if.else.150

if.then.135:                                      ; preds = %if.then.132
  store i64 0, i64* %total, align 8
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %succ137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i32 0, i32 5
  %111 = load %struct.edge_def*, %struct.edge_def** %succ137, align 8
  store %struct.edge_def* %111, %struct.edge_def** %e136, align 8
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.143, %if.then.135
  %112 = load %struct.edge_def*, %struct.edge_def** %e136, align 8
  %tobool139 = icmp ne %struct.edge_def* %112, null
  br i1 %tobool139, label %for.body.140, label %for.end.145

for.body.140:                                     ; preds = %for.cond.138
  %113 = load %struct.edge_def*, %struct.edge_def** %e136, align 8
  %count141 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 8
  %114 = load i64, i64* %count141, align 8
  %115 = load i64, i64* %total, align 8
  %add142 = add nsw i64 %115, %114
  store i64 %add142, i64* %total, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.140
  %116 = load %struct.edge_def*, %struct.edge_def** %e136, align 8
  %succ_next144 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %116, i32 0, i32 1
  %117 = load %struct.edge_def*, %struct.edge_def** %succ_next144, align 8
  store %struct.edge_def* %117, %struct.edge_def** %e136, align 8
  br label %for.cond.138

for.end.145:                                      ; preds = %for.cond.138
  %118 = load i64, i64* %total, align 8
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %count146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 13
  store i64 %118, i64* %count146, align 8
  %120 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %121 = bitcast %struct.bb_info* %120 to i8*
  %bf.load147 = load i8, i8* %121, align 8
  %bf.clear148 = and i8 %bf.load147, -2
  %bf.set149 = or i8 %bf.clear148, 1
  store i8 %bf.set149, i8* %121, align 8
  store i32 1, i32* %changes, align 4
  br label %if.end.170

if.else.150:                                      ; preds = %if.then.132
  %122 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %pred_count151 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %122, i32 0, i32 2
  %123 = load i64, i64* %pred_count151, align 8
  %cmp152 = icmp eq i64 %123, 0
  br i1 %cmp152, label %if.then.153, label %if.end.169

if.then.153:                                      ; preds = %if.else.150
  store i64 0, i64* %total155, align 8
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %pred156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %124, i32 0, i32 4
  %125 = load %struct.edge_def*, %struct.edge_def** %pred156, align 8
  store %struct.edge_def* %125, %struct.edge_def** %e154, align 8
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.162, %if.then.153
  %126 = load %struct.edge_def*, %struct.edge_def** %e154, align 8
  %tobool158 = icmp ne %struct.edge_def* %126, null
  br i1 %tobool158, label %for.body.159, label %for.end.164

for.body.159:                                     ; preds = %for.cond.157
  %127 = load %struct.edge_def*, %struct.edge_def** %e154, align 8
  %count160 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i32 0, i32 8
  %128 = load i64, i64* %count160, align 8
  %129 = load i64, i64* %total155, align 8
  %add161 = add nsw i64 %129, %128
  store i64 %add161, i64* %total155, align 8
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.159
  %130 = load %struct.edge_def*, %struct.edge_def** %e154, align 8
  %pred_next163 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %130, i32 0, i32 0
  %131 = load %struct.edge_def*, %struct.edge_def** %pred_next163, align 8
  store %struct.edge_def* %131, %struct.edge_def** %e154, align 8
  br label %for.cond.157

for.end.164:                                      ; preds = %for.cond.157
  %132 = load i64, i64* %total155, align 8
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %count165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 13
  store i64 %132, i64* %count165, align 8
  %134 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %135 = bitcast %struct.bb_info* %134 to i8*
  %bf.load166 = load i8, i8* %135, align 8
  %bf.clear167 = and i8 %bf.load166, -2
  %bf.set168 = or i8 %bf.clear167, 1
  store i8 %bf.set168, i8* %135, align 8
  store i32 1, i32* %changes, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.164, %if.else.150
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %for.end.145
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %cond.end.125
  %136 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %137 = bitcast %struct.bb_info* %136 to i8*
  %bf.load172 = load i8, i8* %137, align 8
  %bf.clear173 = and i8 %bf.load172, 1
  %bf.cast174 = zext i8 %bf.clear173 to i32
  %tobool175 = icmp ne i32 %bf.cast174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.282

if.then.176:                                      ; preds = %if.end.171
  %138 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %succ_count177 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %138, i32 0, i32 1
  %139 = load i64, i64* %succ_count177, align 8
  %cmp178 = icmp eq i64 %139, 1
  br i1 %cmp178, label %if.then.179, label %if.end.228

if.then.179:                                      ; preds = %if.then.176
  store i64 0, i64* %total181, align 8
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %succ182 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %140, i32 0, i32 5
  %141 = load %struct.edge_def*, %struct.edge_def** %succ182, align 8
  store %struct.edge_def* %141, %struct.edge_def** %e180, align 8
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.188, %if.then.179
  %142 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %tobool184 = icmp ne %struct.edge_def* %142, null
  br i1 %tobool184, label %for.body.185, label %for.end.190

for.body.185:                                     ; preds = %for.cond.183
  %143 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %count186 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %143, i32 0, i32 8
  %144 = load i64, i64* %count186, align 8
  %145 = load i64, i64* %total181, align 8
  %add187 = add nsw i64 %145, %144
  store i64 %add187, i64* %total181, align 8
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.185
  %146 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %succ_next189 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i32 0, i32 1
  %147 = load %struct.edge_def*, %struct.edge_def** %succ_next189, align 8
  store %struct.edge_def* %147, %struct.edge_def** %e180, align 8
  br label %for.cond.183

for.end.190:                                      ; preds = %for.cond.183
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %succ191 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 5
  %149 = load %struct.edge_def*, %struct.edge_def** %succ191, align 8
  store %struct.edge_def* %149, %struct.edge_def** %e180, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.209, %for.end.190
  %150 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %tobool193 = icmp ne %struct.edge_def* %150, null
  br i1 %tobool193, label %for.body.194, label %for.end.211

for.body.194:                                     ; preds = %for.cond.192
  %151 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %aux195 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 5
  %152 = load i8*, i8** %aux195, align 8
  %153 = bitcast i8* %152 to %struct.edge_info*
  %154 = bitcast %struct.edge_info* %153 to i8*
  %bf.load196 = load i8, i8* %154, align 4
  %bf.clear197 = and i8 %bf.load196, 1
  %bf.cast198 = zext i8 %bf.clear197 to i32
  %tobool199 = icmp ne i32 %bf.cast198, 0
  br i1 %tobool199, label %if.end.208, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %for.body.194
  %155 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %aux201 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %155, i32 0, i32 5
  %156 = load i8*, i8** %aux201, align 8
  %157 = bitcast i8* %156 to %struct.edge_info*
  %158 = bitcast %struct.edge_info* %157 to i8*
  %bf.load202 = load i8, i8* %158, align 4
  %bf.lshr203 = lshr i8 %bf.load202, 2
  %bf.clear204 = and i8 %bf.lshr203, 1
  %bf.cast205 = zext i8 %bf.clear204 to i32
  %tobool206 = icmp ne i32 %bf.cast205, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %land.lhs.true.200
  br label %for.end.211

if.end.208:                                       ; preds = %land.lhs.true.200, %for.body.194
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %159 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %succ_next210 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %159, i32 0, i32 1
  %160 = load %struct.edge_def*, %struct.edge_def** %succ_next210, align 8
  store %struct.edge_def* %160, %struct.edge_def** %e180, align 8
  br label %for.cond.192

for.end.211:                                      ; preds = %if.then.207, %for.cond.192
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %count212 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i32 0, i32 13
  %162 = load i64, i64* %count212, align 8
  %163 = load i64, i64* %total181, align 8
  %sub213 = sub nsw i64 %162, %163
  store i64 %sub213, i64* %total181, align 8
  %164 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %tobool214 = icmp ne %struct.edge_def* %164, null
  br i1 %tobool214, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %for.end.211
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 352, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.compute_branch_probabilities, i32 0, i32 0)) #5
  unreachable

if.end.216:                                       ; preds = %for.end.211
  %165 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %aux217 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %165, i32 0, i32 5
  %166 = load i8*, i8** %aux217, align 8
  %167 = bitcast i8* %166 to %struct.edge_info*
  %168 = bitcast %struct.edge_info* %167 to i8*
  %bf.load218 = load i8, i8* %168, align 4
  %bf.clear219 = and i8 %bf.load218, -2
  %bf.set220 = or i8 %bf.clear219, 1
  store i8 %bf.set220, i8* %168, align 4
  %169 = load i64, i64* %total181, align 8
  %170 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %count221 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %170, i32 0, i32 8
  store i64 %169, i64* %count221, align 8
  %171 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %succ_count222 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %171, i32 0, i32 1
  %172 = load i64, i64* %succ_count222, align 8
  %dec223 = add nsw i64 %172, -1
  store i64 %dec223, i64* %succ_count222, align 8
  %173 = load %struct.edge_def*, %struct.edge_def** %e180, align 8
  %dest224 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %173, i32 0, i32 3
  %174 = load %struct.basic_block_def*, %struct.basic_block_def** %dest224, align 8
  %aux225 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %174, i32 0, i32 10
  %175 = load i8*, i8** %aux225, align 8
  %176 = bitcast i8* %175 to %struct.bb_info*
  %pred_count226 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %176, i32 0, i32 2
  %177 = load i64, i64* %pred_count226, align 8
  %dec227 = add nsw i64 %177, -1
  store i64 %dec227, i64* %pred_count226, align 8
  store i32 1, i32* %changes, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.216, %if.then.176
  %178 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %pred_count229 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %178, i32 0, i32 2
  %179 = load i64, i64* %pred_count229, align 8
  %cmp230 = icmp eq i64 %179, 1
  br i1 %cmp230, label %if.then.231, label %if.end.281

if.then.231:                                      ; preds = %if.end.228
  store i64 0, i64* %total233, align 8
  %180 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %pred234 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %180, i32 0, i32 4
  %181 = load %struct.edge_def*, %struct.edge_def** %pred234, align 8
  store %struct.edge_def* %181, %struct.edge_def** %e232, align 8
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.240, %if.then.231
  %182 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %tobool236 = icmp ne %struct.edge_def* %182, null
  br i1 %tobool236, label %for.body.237, label %for.end.242

for.body.237:                                     ; preds = %for.cond.235
  %183 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %count238 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %183, i32 0, i32 8
  %184 = load i64, i64* %count238, align 8
  %185 = load i64, i64* %total233, align 8
  %add239 = add nsw i64 %185, %184
  store i64 %add239, i64* %total233, align 8
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.body.237
  %186 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %pred_next241 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i32 0, i32 0
  %187 = load %struct.edge_def*, %struct.edge_def** %pred_next241, align 8
  store %struct.edge_def* %187, %struct.edge_def** %e232, align 8
  br label %for.cond.235

for.end.242:                                      ; preds = %for.cond.235
  %188 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %pred243 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %188, i32 0, i32 4
  %189 = load %struct.edge_def*, %struct.edge_def** %pred243, align 8
  store %struct.edge_def* %189, %struct.edge_def** %e232, align 8
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.261, %for.end.242
  %190 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %tobool245 = icmp ne %struct.edge_def* %190, null
  br i1 %tobool245, label %for.body.246, label %for.end.263

for.body.246:                                     ; preds = %for.cond.244
  %191 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %aux247 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %191, i32 0, i32 5
  %192 = load i8*, i8** %aux247, align 8
  %193 = bitcast i8* %192 to %struct.edge_info*
  %194 = bitcast %struct.edge_info* %193 to i8*
  %bf.load248 = load i8, i8* %194, align 4
  %bf.clear249 = and i8 %bf.load248, 1
  %bf.cast250 = zext i8 %bf.clear249 to i32
  %tobool251 = icmp ne i32 %bf.cast250, 0
  br i1 %tobool251, label %if.end.260, label %land.lhs.true.252

land.lhs.true.252:                                ; preds = %for.body.246
  %195 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %aux253 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %195, i32 0, i32 5
  %196 = load i8*, i8** %aux253, align 8
  %197 = bitcast i8* %196 to %struct.edge_info*
  %198 = bitcast %struct.edge_info* %197 to i8*
  %bf.load254 = load i8, i8* %198, align 4
  %bf.lshr255 = lshr i8 %bf.load254, 2
  %bf.clear256 = and i8 %bf.lshr255, 1
  %bf.cast257 = zext i8 %bf.clear256 to i32
  %tobool258 = icmp ne i32 %bf.cast257, 0
  br i1 %tobool258, label %if.end.260, label %if.then.259

if.then.259:                                      ; preds = %land.lhs.true.252
  br label %for.end.263

if.end.260:                                       ; preds = %land.lhs.true.252, %for.body.246
  br label %for.inc.261

for.inc.261:                                      ; preds = %if.end.260
  %199 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %pred_next262 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %199, i32 0, i32 0
  %200 = load %struct.edge_def*, %struct.edge_def** %pred_next262, align 8
  store %struct.edge_def* %200, %struct.edge_def** %e232, align 8
  br label %for.cond.244

for.end.263:                                      ; preds = %if.then.259, %for.cond.244
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %bb110, align 8
  %count264 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %201, i32 0, i32 13
  %202 = load i64, i64* %count264, align 8
  %203 = load i64, i64* %total233, align 8
  %sub265 = sub nsw i64 %202, %203
  %204 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %count266 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %204, i32 0, i32 8
  %205 = load i64, i64* %count266, align 8
  %add267 = add nsw i64 %sub265, %205
  store i64 %add267, i64* %total233, align 8
  %206 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %tobool268 = icmp ne %struct.edge_def* %206, null
  br i1 %tobool268, label %if.end.270, label %if.then.269

if.then.269:                                      ; preds = %for.end.263
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 379, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.compute_branch_probabilities, i32 0, i32 0)) #5
  unreachable

if.end.270:                                       ; preds = %for.end.263
  %207 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %aux271 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %207, i32 0, i32 5
  %208 = load i8*, i8** %aux271, align 8
  %209 = bitcast i8* %208 to %struct.edge_info*
  %210 = bitcast %struct.edge_info* %209 to i8*
  %bf.load272 = load i8, i8* %210, align 4
  %bf.clear273 = and i8 %bf.load272, -2
  %bf.set274 = or i8 %bf.clear273, 1
  store i8 %bf.set274, i8* %210, align 4
  %211 = load i64, i64* %total233, align 8
  %212 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %count275 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %212, i32 0, i32 8
  store i64 %211, i64* %count275, align 8
  %213 = load %struct.bb_info*, %struct.bb_info** %bi, align 8
  %pred_count276 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %213, i32 0, i32 2
  %214 = load i64, i64* %pred_count276, align 8
  %dec277 = add nsw i64 %214, -1
  store i64 %dec277, i64* %pred_count276, align 8
  %215 = load %struct.edge_def*, %struct.edge_def** %e232, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %215, i32 0, i32 2
  %216 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %aux278 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %216, i32 0, i32 10
  %217 = load i8*, i8** %aux278, align 8
  %218 = bitcast i8* %217 to %struct.bb_info*
  %succ_count279 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %218, i32 0, i32 1
  %219 = load i64, i64* %succ_count279, align 8
  %dec280 = add nsw i64 %219, -1
  store i64 %dec280, i64* %succ_count279, align 8
  store i32 1, i32* %changes, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.270, %if.end.228
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.171
  br label %for.inc.283

for.inc.283:                                      ; preds = %if.end.282
  %220 = load i32, i32* %i, align 4
  %dec284 = add nsw i32 %220, -1
  store i32 %dec284, i32* %i, align 4
  br label %for.cond.107

for.end.285:                                      ; preds = %for.cond.107
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool286 = icmp ne %struct._IO_FILE* %221, null
  br i1 %tobool286, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %while.end
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_flow_info(%struct._IO_FILE* %222)
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %while.end
  %223 = load i32, i32* %passes, align 4
  %224 = load i32, i32* @total_num_passes, align 4
  %add289 = add nsw i32 %224, %223
  store i32 %add289, i32* @total_num_passes, align 4
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool290 = icmp ne %struct._IO_FILE* %225, null
  br i1 %tobool290, label %if.then.291, label %if.end.293

if.then.291:                                      ; preds = %if.end.288
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %227 = load i32, i32* %passes, align 4
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), i32 %227)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.291, %if.end.288
  store i32 0, i32* %i, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.310, %if.end.293
  %228 = load i32, i32* %i, align 4
  %229 = load i32, i32* @n_basic_blocks, align 4
  %cmp295 = icmp slt i32 %228, %229
  br i1 %cmp295, label %for.body.296, label %for.end.312

for.body.296:                                     ; preds = %for.cond.294
  %230 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %230 to i64
  %231 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data299 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %231, i32 0, i32 4
  %bb300 = bitcast %union.varray_data_tag* %data299 to [1 x %struct.basic_block_def*]*
  %arrayidx301 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb300, i32 0, i64 %idxprom298
  %232 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx301, align 8
  store %struct.basic_block_def* %232, %struct.basic_block_def** %bb297, align 8
  %233 = load %struct.basic_block_def*, %struct.basic_block_def** %bb297, align 8
  %aux302 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %233, i32 0, i32 10
  %234 = load i8*, i8** %aux302, align 8
  %235 = bitcast i8* %234 to %struct.bb_info*
  %succ_count303 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %235, i32 0, i32 1
  %236 = load i64, i64* %succ_count303, align 8
  %tobool304 = icmp ne i64 %236, 0
  br i1 %tobool304, label %if.then.308, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.296
  %237 = load %struct.basic_block_def*, %struct.basic_block_def** %bb297, align 8
  %aux305 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %237, i32 0, i32 10
  %238 = load i8*, i8** %aux305, align 8
  %239 = bitcast i8* %238 to %struct.bb_info*
  %pred_count306 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %239, i32 0, i32 2
  %240 = load i64, i64* %pred_count306, align 8
  %tobool307 = icmp ne i64 %240, 0
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %lor.lhs.false, %for.body.296
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.compute_branch_probabilities, i32 0, i32 0)) #5
  unreachable

if.end.309:                                       ; preds = %lor.lhs.false
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %241 = load i32, i32* %i, align 4
  %inc311 = add nsw i32 %241, 1
  store i32 %inc311, i32* %i, align 4
  br label %for.cond.294

for.end.312:                                      ; preds = %for.cond.294
  store i32 0, i32* %i, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.318, %for.end.312
  %242 = load i32, i32* %i, align 4
  %cmp314 = icmp slt i32 %242, 20
  br i1 %cmp314, label %for.body.315, label %for.end.320

for.body.315:                                     ; preds = %for.cond.313
  %243 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %243 to i64
  %arrayidx317 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i32 0, i64 %idxprom316
  store i32 0, i32* %arrayidx317, align 4
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.315
  %244 = load i32, i32* %i, align 4
  %inc319 = add nsw i32 %244, 1
  store i32 %inc319, i32* %i, align 4
  br label %for.cond.313

for.end.320:                                      ; preds = %for.cond.313
  store i32 0, i32* %num_never_executed, align 4
  store i32 0, i32* %num_branches, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.492, %for.end.320
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* @n_basic_blocks, align 4
  %add322 = add nsw i32 %246, 1
  %cmp323 = icmp sle i32 %245, %add322
  br i1 %cmp323, label %for.body.324, label %for.end.494

for.body.324:                                     ; preds = %for.cond.321
  %247 = load i32, i32* %i, align 4
  %cmp326 = icmp eq i32 %247, 0
  br i1 %cmp326, label %cond.true.327, label %cond.false.328

cond.true.327:                                    ; preds = %for.body.324
  br label %cond.end.340

cond.false.328:                                   ; preds = %for.body.324
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* @n_basic_blocks, align 4
  %add329 = add nsw i32 %249, 1
  %cmp330 = icmp eq i32 %248, %add329
  br i1 %cmp330, label %cond.true.331, label %cond.false.332

cond.true.331:                                    ; preds = %cond.false.328
  br label %cond.end.338

cond.false.332:                                   ; preds = %cond.false.328
  %250 = load i32, i32* %i, align 4
  %sub333 = sub nsw i32 %250, 1
  %idxprom334 = sext i32 %sub333 to i64
  %251 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data335 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %251, i32 0, i32 4
  %bb336 = bitcast %union.varray_data_tag* %data335 to [1 x %struct.basic_block_def*]*
  %arrayidx337 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb336, i32 0, i64 %idxprom334
  %252 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx337, align 8
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.332, %cond.true.331
  %cond339 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.331 ], [ %252, %cond.false.332 ]
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.338, %cond.true.327
  %cond341 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true.327 ], [ %cond339, %cond.end.338 ]
  store %struct.basic_block_def* %cond341, %struct.basic_block_def** %bb325, align 8
  %253 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %count344 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %253, i32 0, i32 13
  %254 = load i64, i64* %count344, align 8
  store i64 %254, i64* %total343, align 8
  %255 = load i64, i64* %total343, align 8
  %tobool345 = icmp ne i64 %255, 0
  br i1 %tobool345, label %if.then.346, label %if.else.424

if.then.346:                                      ; preds = %cond.end.340
  %256 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ347 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %256, i32 0, i32 5
  %257 = load %struct.edge_def*, %struct.edge_def** %succ347, align 8
  store %struct.edge_def* %257, %struct.edge_def** %e342, align 8
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.369, %if.then.346
  %258 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %tobool349 = icmp ne %struct.edge_def* %258, null
  br i1 %tobool349, label %for.body.350, label %for.end.371

for.body.350:                                     ; preds = %for.cond.348
  %259 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %count351 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %259, i32 0, i32 8
  %260 = load i64, i64* %count351, align 8
  %mul = mul nsw i64 %260, 10000
  %261 = load i64, i64* %total343, align 8
  %div = sdiv i64 %261, 2
  %add352 = add nsw i64 %mul, %div
  %262 = load i64, i64* %total343, align 8
  %div353 = sdiv i64 %add352, %262
  %conv = trunc i64 %div353 to i32
  %263 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %263, i32 0, i32 7
  store i32 %conv, i32* %probability, align 4
  %264 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability354 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %264, i32 0, i32 7
  %265 = load i32, i32* %probability354, align 4
  %cmp355 = icmp slt i32 %265, 0
  br i1 %cmp355, label %if.then.361, label %lor.lhs.false.357

lor.lhs.false.357:                                ; preds = %for.body.350
  %266 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability358 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %266, i32 0, i32 7
  %267 = load i32, i32* %probability358, align 4
  %cmp359 = icmp sgt i32 %267, 10000
  br i1 %cmp359, label %if.then.361, label %if.end.368

if.then.361:                                      ; preds = %lor.lhs.false.357, %for.body.350
  %268 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %src362 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %268, i32 0, i32 2
  %269 = load %struct.basic_block_def*, %struct.basic_block_def** %src362, align 8
  %index363 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %269, i32 0, i32 11
  %270 = load i32, i32* %index363, align 4
  %271 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %dest364 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %271, i32 0, i32 3
  %272 = load %struct.basic_block_def*, %struct.basic_block_def** %dest364, align 8
  %index365 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %272, i32 0, i32 11
  %273 = load i32, i32* %index365, align 4
  %274 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability366 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %274, i32 0, i32 7
  %275 = load i32, i32* %probability366, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0), i32 %270, i32 %273, i32 %275)
  %276 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability367 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %276, i32 0, i32 7
  store i32 5000, i32* %probability367, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.361, %lor.lhs.false.357
  br label %for.inc.369

for.inc.369:                                      ; preds = %if.end.368
  %277 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %succ_next370 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %277, i32 0, i32 1
  %278 = load %struct.edge_def*, %struct.edge_def** %succ_next370, align 8
  store %struct.edge_def* %278, %struct.edge_def** %e342, align 8
  br label %for.cond.348

for.end.371:                                      ; preds = %for.cond.348
  %279 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %index372 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %279, i32 0, i32 11
  %280 = load i32, i32* %index372, align 4
  %cmp373 = icmp sge i32 %280, 0
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.423

land.lhs.true.375:                                ; preds = %for.end.371
  %281 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %281, i32 0, i32 1
  %282 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call376 = call i32 @any_condjump_p(%struct.rtx_def* %282)
  %tobool377 = icmp ne i32 %call376, 0
  br i1 %tobool377, label %land.lhs.true.378, label %if.end.423

land.lhs.true.378:                                ; preds = %land.lhs.true.375
  %283 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ379 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %283, i32 0, i32 5
  %284 = load %struct.edge_def*, %struct.edge_def** %succ379, align 8
  %succ_next380 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %284, i32 0, i32 1
  %285 = load %struct.edge_def*, %struct.edge_def** %succ_next380, align 8
  %tobool381 = icmp ne %struct.edge_def* %285, null
  br i1 %tobool381, label %if.then.382, label %if.end.423

if.then.382:                                      ; preds = %land.lhs.true.378
  %286 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ385 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %286, i32 0, i32 5
  %287 = load %struct.edge_def*, %struct.edge_def** %succ385, align 8
  store %struct.edge_def* %287, %struct.edge_def** %e383, align 8
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.389, %if.then.382
  %288 = load %struct.edge_def*, %struct.edge_def** %e383, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %288, i32 0, i32 6
  %289 = load i32, i32* %flags, align 4
  %and = and i32 %289, 17
  %tobool387 = icmp ne i32 %and, 0
  br i1 %tobool387, label %for.body.388, label %for.end.391

for.body.388:                                     ; preds = %for.cond.386
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.body.388
  %290 = load %struct.edge_def*, %struct.edge_def** %e383, align 8
  %succ_next390 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %290, i32 0, i32 1
  %291 = load %struct.edge_def*, %struct.edge_def** %succ_next390, align 8
  store %struct.edge_def* %291, %struct.edge_def** %e383, align 8
  br label %for.cond.386

for.end.391:                                      ; preds = %for.cond.386
  %292 = load %struct.edge_def*, %struct.edge_def** %e383, align 8
  %probability392 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %292, i32 0, i32 7
  %293 = load i32, i32* %probability392, align 4
  store i32 %293, i32* %prob, align 4
  %294 = load i32, i32* %prob, align 4
  %mul393 = mul nsw i32 %294, 20
  %div394 = sdiv i32 %mul393, 10000
  store i32 %div394, i32* %index384, align 4
  %295 = load i32, i32* %index384, align 4
  %cmp395 = icmp eq i32 %295, 20
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %for.end.391
  store i32 19, i32* %index384, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.397, %for.end.391
  %296 = load i32, i32* %index384, align 4
  %idxprom399 = sext i32 %296 to i64
  %arrayidx400 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i32 0, i64 %idxprom399
  %297 = load i32, i32* %arrayidx400, align 4
  %inc401 = add nsw i32 %297, 1
  store i32 %inc401, i32* %arrayidx400, align 4
  %298 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %end402 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %298, i32 0, i32 1
  %299 = load %struct.rtx_def*, %struct.rtx_def** %end402, align 8
  %call403 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %299, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call403, %struct.rtx_def** %note, align 8
  %300 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool404 = icmp ne %struct.rtx_def* %300, null
  br i1 %tobool404, label %if.then.405, label %if.else.409

if.then.405:                                      ; preds = %if.end.398
  %301 = load i32, i32* %prob, align 4
  %conv406 = sext i32 %301 to i64
  %call407 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv406)
  %302 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx408 to %struct.rtx_def**
  store %struct.rtx_def* %call407, %struct.rtx_def** %rtx, align 8
  br label %if.end.421

if.else.409:                                      ; preds = %if.end.398
  %303 = load i32, i32* %prob, align 4
  %conv410 = sext i32 %303 to i64
  %call411 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv410)
  %304 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %end412 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %304, i32 0, i32 1
  %305 = load %struct.rtx_def*, %struct.rtx_def** %end412, align 8
  %fld413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld413, i32 0, i64 6
  %rtx415 = bitcast %union.rtunion_def* %arrayidx414 to %struct.rtx_def**
  %306 = load %struct.rtx_def*, %struct.rtx_def** %rtx415, align 8
  %call416 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 16, %struct.rtx_def* %call411, %struct.rtx_def* %306)
  %307 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %end417 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %307, i32 0, i32 1
  %308 = load %struct.rtx_def*, %struct.rtx_def** %end417, align 8
  %fld418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld418, i32 0, i64 6
  %rtx420 = bitcast %union.rtunion_def* %arrayidx419 to %struct.rtx_def**
  store %struct.rtx_def* %call416, %struct.rtx_def** %rtx420, align 8
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.409, %if.then.405
  %309 = load i32, i32* %num_branches, align 4
  %inc422 = add nsw i32 %309, 1
  store i32 %inc422, i32* %num_branches, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.421, %land.lhs.true.378, %land.lhs.true.375, %for.end.371
  br label %if.end.491

if.else.424:                                      ; preds = %cond.end.340
  %310 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ425 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %310, i32 0, i32 5
  %311 = load %struct.edge_def*, %struct.edge_def** %succ425, align 8
  store %struct.edge_def* %311, %struct.edge_def** %e342, align 8
  br label %for.cond.426

for.cond.426:                                     ; preds = %for.inc.435, %if.else.424
  %312 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %tobool427 = icmp ne %struct.edge_def* %312, null
  br i1 %tobool427, label %for.body.428, label %for.end.437

for.body.428:                                     ; preds = %for.cond.426
  %313 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %flags429 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %313, i32 0, i32 6
  %314 = load i32, i32* %flags429, align 4
  %and430 = and i32 %314, 30
  %tobool431 = icmp ne i32 %and430, 0
  br i1 %tobool431, label %if.end.434, label %if.then.432

if.then.432:                                      ; preds = %for.body.428
  %315 = load i64, i64* %total343, align 8
  %inc433 = add nsw i64 %315, 1
  store i64 %inc433, i64* %total343, align 8
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.432, %for.body.428
  br label %for.inc.435

for.inc.435:                                      ; preds = %if.end.434
  %316 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %succ_next436 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %316, i32 0, i32 1
  %317 = load %struct.edge_def*, %struct.edge_def** %succ_next436, align 8
  store %struct.edge_def* %317, %struct.edge_def** %e342, align 8
  br label %for.cond.426

for.end.437:                                      ; preds = %for.cond.426
  %318 = load i64, i64* %total343, align 8
  %tobool438 = icmp ne i64 %318, 0
  br i1 %tobool438, label %if.then.439, label %if.else.457

if.then.439:                                      ; preds = %for.end.437
  %319 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ440 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %319, i32 0, i32 5
  %320 = load %struct.edge_def*, %struct.edge_def** %succ440, align 8
  store %struct.edge_def* %320, %struct.edge_def** %e342, align 8
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.454, %if.then.439
  %321 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %tobool442 = icmp ne %struct.edge_def* %321, null
  br i1 %tobool442, label %for.body.443, label %for.end.456

for.body.443:                                     ; preds = %for.cond.441
  %322 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %flags444 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %322, i32 0, i32 6
  %323 = load i32, i32* %flags444, align 4
  %and445 = and i32 %323, 30
  %tobool446 = icmp ne i32 %and445, 0
  br i1 %tobool446, label %if.else.451, label %if.then.447

if.then.447:                                      ; preds = %for.body.443
  %324 = load i64, i64* %total343, align 8
  %div448 = sdiv i64 10000, %324
  %conv449 = trunc i64 %div448 to i32
  %325 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability450 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %325, i32 0, i32 7
  store i32 %conv449, i32* %probability450, align 4
  br label %if.end.453

if.else.451:                                      ; preds = %for.body.443
  %326 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability452 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %326, i32 0, i32 7
  store i32 0, i32* %probability452, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.else.451, %if.then.447
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %327 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %succ_next455 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %327, i32 0, i32 1
  %328 = load %struct.edge_def*, %struct.edge_def** %succ_next455, align 8
  store %struct.edge_def* %328, %struct.edge_def** %e342, align 8
  br label %for.cond.441

for.end.456:                                      ; preds = %for.cond.441
  br label %if.end.476

if.else.457:                                      ; preds = %for.end.437
  %329 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ458 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %329, i32 0, i32 5
  %330 = load %struct.edge_def*, %struct.edge_def** %succ458, align 8
  store %struct.edge_def* %330, %struct.edge_def** %e342, align 8
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.463, %if.else.457
  %331 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %tobool460 = icmp ne %struct.edge_def* %331, null
  br i1 %tobool460, label %for.body.461, label %for.end.465

for.body.461:                                     ; preds = %for.cond.459
  %332 = load i64, i64* %total343, align 8
  %inc462 = add nsw i64 %332, 1
  store i64 %inc462, i64* %total343, align 8
  br label %for.inc.463

for.inc.463:                                      ; preds = %for.body.461
  %333 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %succ_next464 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %333, i32 0, i32 1
  %334 = load %struct.edge_def*, %struct.edge_def** %succ_next464, align 8
  store %struct.edge_def* %334, %struct.edge_def** %e342, align 8
  br label %for.cond.459

for.end.465:                                      ; preds = %for.cond.459
  %335 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ466 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %335, i32 0, i32 5
  %336 = load %struct.edge_def*, %struct.edge_def** %succ466, align 8
  store %struct.edge_def* %336, %struct.edge_def** %e342, align 8
  br label %for.cond.467

for.cond.467:                                     ; preds = %for.inc.473, %for.end.465
  %337 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %tobool468 = icmp ne %struct.edge_def* %337, null
  br i1 %tobool468, label %for.body.469, label %for.end.475

for.body.469:                                     ; preds = %for.cond.467
  %338 = load i64, i64* %total343, align 8
  %div470 = sdiv i64 10000, %338
  %conv471 = trunc i64 %div470 to i32
  %339 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %probability472 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %339, i32 0, i32 7
  store i32 %conv471, i32* %probability472, align 4
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.body.469
  %340 = load %struct.edge_def*, %struct.edge_def** %e342, align 8
  %succ_next474 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %340, i32 0, i32 1
  %341 = load %struct.edge_def*, %struct.edge_def** %succ_next474, align 8
  store %struct.edge_def* %341, %struct.edge_def** %e342, align 8
  br label %for.cond.467

for.end.475:                                      ; preds = %for.cond.467
  br label %if.end.476

if.end.476:                                       ; preds = %for.end.475, %for.end.456
  %342 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %index477 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %342, i32 0, i32 11
  %343 = load i32, i32* %index477, align 4
  %cmp478 = icmp sge i32 %343, 0
  br i1 %cmp478, label %land.lhs.true.480, label %if.end.490

land.lhs.true.480:                                ; preds = %if.end.476
  %344 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %end481 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %344, i32 0, i32 1
  %345 = load %struct.rtx_def*, %struct.rtx_def** %end481, align 8
  %call482 = call i32 @any_condjump_p(%struct.rtx_def* %345)
  %tobool483 = icmp ne i32 %call482, 0
  br i1 %tobool483, label %land.lhs.true.484, label %if.end.490

land.lhs.true.484:                                ; preds = %land.lhs.true.480
  %346 = load %struct.basic_block_def*, %struct.basic_block_def** %bb325, align 8
  %succ485 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %346, i32 0, i32 5
  %347 = load %struct.edge_def*, %struct.edge_def** %succ485, align 8
  %succ_next486 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %347, i32 0, i32 1
  %348 = load %struct.edge_def*, %struct.edge_def** %succ_next486, align 8
  %tobool487 = icmp ne %struct.edge_def* %348, null
  br i1 %tobool487, label %if.then.488, label %if.end.490

if.then.488:                                      ; preds = %land.lhs.true.484
  %349 = load i32, i32* %num_branches, align 4
  %inc489 = add nsw i32 %349, 1
  store i32 %inc489, i32* %num_branches, align 4
  %350 = load i32, i32* %num_never_executed, align 4
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.488, %land.lhs.true.484, %land.lhs.true.480, %if.end.476
  br label %if.end.491

if.end.491:                                       ; preds = %if.end.490, %if.end.423
  br label %for.inc.492

for.inc.492:                                      ; preds = %if.end.491
  %351 = load i32, i32* %i, align 4
  %inc493 = add nsw i32 %351, 1
  store i32 %inc493, i32* %i, align 4
  br label %for.cond.321

for.end.494:                                      ; preds = %for.cond.321
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool495 = icmp ne %struct._IO_FILE* %352, null
  br i1 %tobool495, label %if.then.496, label %if.end.537

if.then.496:                                      ; preds = %for.end.494
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %354 = load i32, i32* %num_branches, align 4
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %353, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 %354)
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %356 = load i32, i32* %num_never_executed, align 4
  %call498 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %355, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* %num_branches, align 4
  %tobool499 = icmp ne i32 %357, 0
  br i1 %tobool499, label %if.then.500, label %if.end.520

if.then.500:                                      ; preds = %if.then.496
  store i32 0, i32* %i, align 4
  br label %for.cond.501

for.cond.501:                                     ; preds = %for.inc.517, %if.then.500
  %358 = load i32, i32* %i, align 4
  %cmp502 = icmp slt i32 %358, 10
  br i1 %cmp502, label %for.body.504, label %for.end.519

for.body.504:                                     ; preds = %for.cond.501
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %360 = load i32, i32* %i, align 4
  %idxprom505 = sext i32 %360 to i64
  %arrayidx506 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i32 0, i64 %idxprom505
  %361 = load i32, i32* %arrayidx506, align 4
  %362 = load i32, i32* %i, align 4
  %sub507 = sub nsw i32 19, %362
  %idxprom508 = sext i32 %sub507 to i64
  %arrayidx509 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i32 0, i64 %idxprom508
  %363 = load i32, i32* %arrayidx509, align 4
  %add510 = add nsw i32 %361, %363
  %mul511 = mul nsw i32 %add510, 100
  %364 = load i32, i32* %num_branches, align 4
  %div512 = sdiv i32 %mul511, %364
  %365 = load i32, i32* %i, align 4
  %mul513 = mul nsw i32 5, %365
  %366 = load i32, i32* %i, align 4
  %mul514 = mul nsw i32 5, %366
  %add515 = add nsw i32 %mul514, 5
  %call516 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i32 %div512, i32 %mul513, i32 %add515)
  br label %for.inc.517

for.inc.517:                                      ; preds = %for.body.504
  %367 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %367, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.501

for.end.519:                                      ; preds = %for.cond.501
  br label %if.end.520

if.end.520:                                       ; preds = %for.end.519, %if.then.496
  %368 = load i32, i32* %num_branches, align 4
  %369 = load i32, i32* @total_num_branches, align 4
  %add521 = add nsw i32 %369, %368
  store i32 %add521, i32* @total_num_branches, align 4
  %370 = load i32, i32* %num_never_executed, align 4
  %371 = load i32, i32* @total_num_never_executed, align 4
  %add522 = add nsw i32 %371, %370
  store i32 %add522, i32* @total_num_never_executed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.523

for.cond.523:                                     ; preds = %for.inc.532, %if.end.520
  %372 = load i32, i32* %i, align 4
  %cmp524 = icmp slt i32 %372, 20
  br i1 %cmp524, label %for.body.526, label %for.end.534

for.body.526:                                     ; preds = %for.cond.523
  %373 = load i32, i32* %i, align 4
  %idxprom527 = sext i32 %373 to i64
  %arrayidx528 = getelementptr inbounds [20 x i32], [20 x i32]* %hist_br_prob, i32 0, i64 %idxprom527
  %374 = load i32, i32* %arrayidx528, align 4
  %375 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %375 to i64
  %arrayidx530 = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i32 0, i64 %idxprom529
  %376 = load i32, i32* %arrayidx530, align 4
  %add531 = add nsw i32 %376, %374
  store i32 %add531, i32* %arrayidx530, align 4
  br label %for.inc.532

for.inc.532:                                      ; preds = %for.body.526
  %377 = load i32, i32* %i, align 4
  %inc533 = add nsw i32 %377, 1
  store i32 %inc533, i32* %i, align 4
  br label %for.cond.523

for.end.534:                                      ; preds = %for.cond.523
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call535 = call i32 @fputc(i32 10, %struct._IO_FILE* %378)
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call536 = call i32 @fputc(i32 10, %struct._IO_FILE* %379)
  br label %if.end.537

if.end.537:                                       ; preds = %for.end.534, %for.end.494
  call void @free_aux_for_blocks()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @instrument_edges(%struct.edge_list* %el) #0 {
entry:
  %el.addr = alloca %struct.edge_list*, align 8
  %i = alloca i32, align 4
  %num_instr_edges = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %inf = alloca %struct.edge_info*, align 8
  store %struct.edge_list* %el, %struct.edge_list** %el.addr, align 8
  store i32 0, i32* %num_instr_edges, align 4
  %0 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  call void @remove_fake_edges()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %3, 2
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.8

cond.false:                                       ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %add3 = add nsw i32 %6, 1
  %cmp4 = icmp eq i32 %5, %add3
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %cond.true.5 ], [ %9, %cond.false.6 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi %struct.basic_block_def* [ getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %cond.true ], [ %cond, %cond.end ]
  store %struct.basic_block_def* %cond9, %struct.basic_block_def** %bb, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 5
  %11 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %cond.end.8
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 5
  %14 = load i8*, i8** %aux, align 8
  %15 = bitcast i8* %14 to %struct.edge_info*
  store %struct.edge_info* %15, %struct.edge_info** %inf, align 8
  %16 = load %struct.edge_info*, %struct.edge_info** %inf, align 8
  %17 = bitcast %struct.edge_info* %16 to i8*
  %bf.load = load i8, i8* %17, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.end.30, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %18 = load %struct.edge_info*, %struct.edge_info** %inf, align 8
  %19 = bitcast %struct.edge_info* %18 to i8*
  %bf.load11 = load i8, i8* %19, align 4
  %bf.lshr12 = lshr i8 %bf.load11, 1
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  %tobool15 = icmp ne i32 %bf.cast14, 0
  br i1 %tobool15, label %if.end.30, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 6
  %21 = load i32, i32* %flags, align 4
  %and = and i32 %21, 2
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.instrument_edges, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 2
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index, align 4
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 3
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 11
  %29 = load i32, i32* %index20, align 4
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 2
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src21, align 8
  %succ22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 5
  %32 = load %struct.edge_def*, %struct.edge_def** %succ22, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 1
  %33 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool23 = icmp ne %struct.edge_def* %33, null
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.19
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 3
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest24, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 4
  %36 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 0
  %37 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool25 = icmp ne %struct.edge_def* %37, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.19
  %38 = phi i1 [ false, %if.then.19 ], [ %tobool25, %land.rhs ]
  %cond26 = select i1 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i32 %26, i32 %29, i8* %cond26)
  br label %if.end.27

if.end.27:                                        ; preds = %land.end, %if.end
  store i32 1, i32* @need_func_profiler, align 4
  %39 = load i32, i32* @total_num_edges_instrumented, align 4
  %40 = load i32, i32* %num_instr_edges, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %num_instr_edges, align 4
  %add28 = add nsw i32 %39, %40
  %call29 = call %struct.rtx_def* @gen_edge_profiler(i32 %add28)
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %call29, %struct.edge_def* %41)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %land.lhs.true, %while.body
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 1
  %43 = load %struct.edge_def*, %struct.edge_def** %succ_next31, align 8
  store %struct.edge_def* %43, %struct.edge_def** %e, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %44 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %44, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %num_instr_edges, align 4
  %46 = load i32, i32* @total_num_edges_instrumented, align 4
  %add33 = add nsw i32 %46, %45
  store i32 %add33, i32* @total_num_edges_instrumented, align 4
  %47 = load i32, i32* @total_num_edges_instrumented, align 4
  store i32 %47, i32* @count_instrumented_edges, align 4
  %48 = load i32, i32* %num_edges, align 4
  %49 = load i32, i32* @total_num_blocks_created, align 4
  %add34 = add nsw i32 %49, %48
  store i32 %add34, i32* @total_num_blocks_created, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %50, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.end
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %52 = load i32, i32* %num_instr_edges, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i32 %52)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.end
  call void @commit_edge_insertions()
  ret void
}

declare void @allocate_reg_info(i64, i32, i32) #1

declare i32 @max_reg_num() #1

declare void @remove_fake_edges() #1

declare zeroext i1 @cleanup_cfg(i32) #1

declare void @dump_flow_info(%struct._IO_FILE*) #1

declare void @free_aux_for_edges() #1

declare void @free_edge_list(%struct.edge_list*) #1

; Function Attrs: nounwind uwtable
define void @init_branch_prob(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %len1 = alloca i32, align 4
  %data_file = alloca i8*, align 8
  %bbg_file_name = alloca i8*, align 8
  %da_file_name = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* @flag_test_coverage, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %2 = load i32, i32* %len1, align 4
  %add = add nsw i32 %2, 4
  %conv2 = sext i32 %add to i64
  %3 = alloca i8, i64 %conv2
  store i8* %3, i8** %data_file, align 8
  %4 = load i8*, i8** %data_file, align 8
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @strcpy(i8* %4, i8* %5) #7
  %6 = load i8*, i8** %data_file, align 8
  %7 = load i32, i32* %len1, align 4
  call void @strip_off_ending(i8* %6, i32 %7)
  %8 = load i8*, i8** %data_file, align 8
  %call4 = call i8* @strcat(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #7
  %9 = load i8*, i8** %data_file, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** @bb_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %10 = load i8*, i8** %data_file, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %10) #5
  unreachable

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %len1, align 4
  %add8 = add nsw i32 %11, 5
  %conv9 = sext i32 %add8 to i64
  %12 = alloca i8, i64 %conv9
  store i8* %12, i8** %bbg_file_name, align 8
  %13 = load i8*, i8** %bbg_file_name, align 8
  %14 = load i8*, i8** %filename.addr, align 8
  %call10 = call i8* @strcpy(i8* %13, i8* %14) #7
  %15 = load i8*, i8** %bbg_file_name, align 8
  %16 = load i32, i32* %len1, align 4
  call void @strip_off_ending(i8* %15, i32 %16)
  %17 = load i8*, i8** %bbg_file_name, align 8
  %call11 = call i8* @strcat(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #7
  %18 = load i8*, i8** %bbg_file_name, align 8
  %call12 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  store %struct._IO_FILE* %call12, %struct._IO_FILE** @bbg_file, align 8
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %19 = load i8*, i8** %bbg_file_name, align 8
  call void (i8*, ...) @fatal_io_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %19) #5
  unreachable

if.end.16:                                        ; preds = %if.end
  store i8* null, i8** @last_bb_file_name, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %20 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %if.end.17
  %21 = load i8*, i8** %filename.addr, align 8
  %call20 = call i64 @strlen(i8* %21) #6
  store i64 %call20, i64* %len, align 8
  %22 = load i64, i64* %len, align 8
  %add21 = add nsw i64 %22, 4
  %23 = alloca i8, i64 %add21
  store i8* %23, i8** %da_file_name, align 8
  %24 = load i8*, i8** %da_file_name, align 8
  %25 = load i8*, i8** %filename.addr, align 8
  %call22 = call i8* @strcpy(i8* %24, i8* %25) #7
  %26 = load i8*, i8** %da_file_name, align 8
  %27 = load i64, i64* %len, align 8
  %conv23 = trunc i64 %27 to i32
  call void @strip_off_ending(i8* %26, i32 %conv23)
  %28 = load i8*, i8** %da_file_name, align 8
  %call24 = call i8* @strcat(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #7
  %29 = load i8*, i8** %da_file_name, align 8
  %call25 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** @da_file, align 8
  %cmp26 = icmp eq %struct._IO_FILE* %call25, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.19
  %30 = load i8*, i8** %da_file_name, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i8* %30)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.19
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %tobool30 = icmp ne %struct._IO_FILE* %31, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %call32 = call i32 @__read_long(i64* %len, %struct._IO_FILE* %32, i64 8)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.17
  %33 = load i32, i32* @profile_arc_flag, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  call void @init_edge_profiler()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  store i32 0, i32* @total_num_blocks, align 4
  store i32 0, i32* @total_num_edges, align 4
  store i32 0, i32* @total_num_edges_ignored, align 4
  store i32 0, i32* @total_num_edges_instrumented, align 4
  store i32 0, i32* @total_num_blocks_created, align 4
  store i32 0, i32* @total_num_passes, align 4
  store i32 0, i32* @total_num_times_called, align 4
  store i32 0, i32* @total_num_branches, align 4
  store i32 0, i32* @total_num_never_executed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %34 = load i32, i32* %i, align 4
  %cmp38 = icmp slt i32 %34, 20
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @strip_off_ending(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare void @fatal_io_error(i8*, ...) #2

declare void @warning(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @__read_long(i64* %dest, %struct._IO_FILE* %file, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i64*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bytes.addr = alloca i64, align 8
  %c = alloca [10 x i8], align 1
  store i64* %dest, i64** %dest.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i64, i64* %bytes.addr, align 8
  %cmp = icmp ugt i64 %0, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %1 = load i64, i64* %bytes.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 %1, %struct._IO_FILE* %2)
  %3 = load i64, i64* %bytes.addr, align 8
  %cmp1 = icmp ne i64 %call, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i64*, i64** %dest.addr, align 8
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %5 = load i64, i64* %bytes.addr, align 8
  %call3 = call i32 @__fetch_long(i64* %4, i8* %arraydecay2, i64 %5)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @init_edge_profiler() #0 {
entry:
  %buf = alloca [20 x i8], align 16
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 2) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call2 = call i8* @ggc_alloc_string(i8* %arraydecay1, i32 -1)
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %call2)
  store %struct.rtx_def* %call3, %struct.rtx_def** @profiler_label, align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** @profiler_label, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_branch_prob() #0 {
entry:
  %temp = alloca i64, align 8
  %i = alloca i32, align 4
  %0 = load i32, i32* @flag_test_coverage, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @bb_file, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @bbg_file, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.then.3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %call6 = call i32 @feof(%struct._IO_FILE* %5) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %call10 = call i32 @__read_long(i64* %temp, %struct._IO_FILE* %6, i64 8)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @da_file, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %7)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool16 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool16, label %if.then.17, label %if.end.43

if.then.17:                                       ; preds = %if.end.15
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %11 = load i32, i32* @total_num_blocks, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %13 = load i32, i32* @total_num_edges, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %15 = load i32, i32* @total_num_edges_ignored, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %17 = load i32, i32* @total_num_edges_instrumented, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %19 = load i32, i32* @total_num_blocks_created, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0), i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %21 = load i32, i32* @total_num_passes, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i32 %21)
  %22 = load i32, i32* @total_num_times_called, align 4
  %cmp25 = icmp ne i32 %22, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %24 = load i32, i32* @total_num_passes, align 4
  %25 = load i32, i32* @total_num_times_called, align 4
  %shr = ashr i32 %25, 1
  %add = add nsw i32 %24, %shr
  %26 = load i32, i32* @total_num_times_called, align 4
  %div = sdiv i32 %add, %26
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i32 %div)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.17
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %28 = load i32, i32* @total_num_branches, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %30 = load i32, i32* @total_num_never_executed, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0), i32 %30)
  %31 = load i32, i32* @total_num_branches, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %if.end.28
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %32 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %32, 10
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i32 0, i64 %idxprom
  %35 = load i32, i32* %arrayidx, align 4
  %36 = load i32, i32* %i, align 4
  %sub = sub nsw i32 19, %36
  %idxprom34 = sext i32 %sub to i64
  %arrayidx35 = getelementptr inbounds [20 x i32], [20 x i32]* @total_hist_br_prob, i32 0, i64 %idxprom34
  %37 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %35, %37
  %mul = mul nsw i32 %add36, 100
  %38 = load i32, i32* @total_num_branches, align 4
  %div37 = sdiv i32 %mul, %38
  %39 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 5, %39
  %40 = load i32, i32* %i, align 4
  %mul39 = mul nsw i32 5, %40
  %add40 = add nsw i32 %mul39, 5
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i32 %div37, i32 %mul38, i32 %add40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.end.28
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.15
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @output_func_start_profiler() #0 {
entry:
  %fnname = alloca %union.tree_node*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  %cfnname = alloca i8*, align 8
  %table_address = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %save_flag_inline_functions = alloca i32, align 4
  %save_flag_test_coverage = alloca i32, align 4
  %save_profile_arc_flag = alloca i32, align 4
  %save_flag_branch_probabilities = alloca i32, align 4
  %call = call i32 @mode_for_size(i32 64, i32 1, i32 0)
  store i32 %call, i32* %mode, align 4
  %0 = load i32, i32* @flag_inline_functions, align 4
  store i32 %0, i32* %save_flag_inline_functions, align 4
  %1 = load i32, i32* @flag_test_coverage, align 4
  store i32 %1, i32* %save_flag_test_coverage, align 4
  %2 = load i32, i32* @profile_arc_flag, align 4
  store i32 %2, i32* %save_profile_arc_flag, align 4
  %3 = load i32, i32* @flag_branch_probabilities, align 4
  store i32 %3, i32* %save_flag_branch_probabilities, align 4
  %4 = load i32, i32* @need_func_profiler, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.47

if.end:                                           ; preds = %entry
  store i32 0, i32* @need_func_profiler, align 4
  %call1 = call %union.tree_node* @get_file_function_name(i32 73)
  store %union.tree_node* %call1, %union.tree_node** %fnname, align 8
  %5 = load %union.tree_node*, %union.tree_node** %fnname, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  store i8* %6, i8** %cfnname, align 8
  %7 = load i8*, i8** %cfnname, align 8
  %call2 = call noalias i8* (i8*, ...) @concat(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null)
  store i8* %call2, i8** %name, align 8
  %8 = load i8*, i8** %name, align 8
  %call3 = call %union.tree_node* @get_identifier(i8* %8)
  store %union.tree_node* %call3, %union.tree_node** %fnname, align 8
  %9 = load i8*, i8** %name, align 8
  call void @free(i8* %9) #7
  %10 = load %union.tree_node*, %union.tree_node** %fnname, align 8
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call4 = call %union.tree_node* @build_function_type(%union.tree_node* %11, %union.tree_node* null)
  %call5 = call %union.tree_node* @build_decl(i32 30, %union.tree_node* %10, %union.tree_node* %call4)
  store %union.tree_node* %call5, %union.tree_node** %fndecl, align 8
  %12 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %13 = bitcast i48* %external_flag to i64*
  %bf.load = load i64, i64* %13, align 8
  %bf.clear = and i64 %bf.load, -257
  store i64 %bf.clear, i64* %13, align 8
  %14 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 14), align 1
  %tobool6 = trunc i8 %14 to i1
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  %15 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load7 = load i32, i32* %public_flag, align 8
  %bf.value = and i32 %lnot.ext, 1
  %bf.shl = shl i32 %bf.value, 19
  %bf.clear8 = and i32 %bf.load7, -524289
  %bf.set = or i32 %bf.clear8, %bf.shl
  store i32 %bf.set, i32* %public_flag, align 8
  %16 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common9 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load10 = load i32, i32* %used_flag, align 8
  %bf.clear11 = and i32 %bf.load10, -65537
  %bf.set12 = or i32 %bf.clear11, 65536
  store i32 %bf.set12, i32* %used_flag, align 8
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call13 = call %union.tree_node* @build_decl(i32 36, %union.tree_node* null, %union.tree_node* %17)
  %18 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl14 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 11
  store %union.tree_node* %call13, %union.tree_node** %result, align 8
  %19 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %call15 = call %union.tree_node* @pushdecl(%union.tree_node* %19)
  store %union.tree_node* %call15, %union.tree_node** %fndecl, align 8
  %20 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @rest_of_decl_compilation(%union.tree_node* %20, i8* null, i32 1, i32 0)
  %21 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @announce_function(%union.tree_node* %21)
  %22 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  store %union.tree_node* %22, %union.tree_node** @current_function_decl, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %24 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl16 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 12
  store %union.tree_node* %23, %union.tree_node** %initial, align 8
  %25 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @make_decl_rtl(%union.tree_node* %25, i8* null)
  %26 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %27 = load i8*, i8** @input_filename, align 8
  %28 = load i32, i32* @lineno, align 4
  call void @init_function_start(%union.tree_node* %26, i8* %27, i32 %28)
  call void @pushlevel(i32 0)
  %29 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @expand_function_start(%union.tree_node* %29, i32 0)
  br label %do.body

do.body:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 0) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  %30 = load i32, i32* @target_flags, align 4
  %and = and i32 %30, 33554432
  %tobool18 = icmp ne i32 %and, 0
  %cond = select i1 %tobool18, i32 5, i32 4
  %31 = load i32, i32* @target_flags, align 4
  %and19 = and i32 %31, 33554432
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 5, i32 4
  %arraydecay22 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call23 = call i8* @ggc_alloc_string(i8* %arraydecay22, i32 -1)
  %call24 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond21, i8* %call23)
  %call25 = call %struct.rtx_def* @force_reg(i32 %cond, %struct.rtx_def* %call24)
  store %struct.rtx_def* %call25, %struct.rtx_def** %table_address, align 8
  %32 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %32, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 5, i32 4
  %call29 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0))
  %33 = load i32, i32* %mode, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %table_address, align 8
  %35 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %35, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 5, i32 4
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %call29, i32 0, i32 %33, i32 1, %struct.rtx_def* %34, i32 %cond32)
  %36 = load i8*, i8** @input_filename, align 8
  %37 = load i32, i32* @lineno, align 4
  call void @expand_function_end(i8* %36, i32 %37, i32 0)
  %call33 = call %union.tree_node* @poplevel(i32 1, i32 0, i32 1)
  store i32 0, i32* @flag_inline_functions, align 4
  store i32 0, i32* @flag_test_coverage, align 4
  store i32 0, i32* @profile_arc_flag, align 4
  store i32 0, i32* @flag_branch_probabilities, align 4
  %38 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @rest_of_compilation(%union.tree_node* %38)
  %39 = load i32, i32* %save_flag_inline_functions, align 4
  store i32 %39, i32* @flag_inline_functions, align 4
  %40 = load i32, i32* %save_flag_test_coverage, align 4
  store i32 %40, i32* @flag_test_coverage, align 4
  %41 = load i32, i32* %save_profile_arc_flag, align 4
  store i32 %41, i32* @profile_arc_flag, align 4
  %42 = load i32, i32* %save_flag_branch_probabilities, align 4
  store i32 %42, i32* @flag_branch_probabilities, align 4
  %43 = load i32, i32* @quiet_flag, align 4
  %tobool34 = icmp ne i32 %43, 0
  br i1 %tobool34, label %if.end.37, label %if.then.35

if.then.35:                                       ; preds = %do.end
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call36 = call i32 @fflush(%struct._IO_FILE* %44)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %do.end
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8
  %45 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 14), align 1
  %tobool38 = trunc i8 %45 to i1
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.end.37
  %46 = load void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 13), align 8
  %47 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl40 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl40, i32 0, i32 17
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool41 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %49 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl42 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %rtl43 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl42, i32 0, i32 17
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtl43, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %51 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void @make_decl_rtl(%union.tree_node* %51, i8* null)
  %52 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl44 = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %rtl45 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl44, i32 0, i32 17
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtl45, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond46 = phi %struct.rtx_def* [ %50, %cond.true ], [ %53, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond46, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void %46(%struct.rtx_def* %54, i32 65535)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then, %cond.end, %if.end.37
  ret void
}

declare i32 @mode_for_size(i32, i32, i32) #1

declare %union.tree_node* @get_file_function_name(i32) #1

declare noalias i8* @concat(i8*, ...) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @pushdecl(%union.tree_node*) #1

declare void @rest_of_decl_compilation(%union.tree_node*, i8*, i32, i32) #1

declare void @announce_function(%union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare void @init_function_start(%union.tree_node*, i8*, i32) #1

declare void @pushlevel(i32) #1

declare void @expand_function_start(%union.tree_node*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare i8* @ggc_alloc_string(i8*, i32) #1

declare void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) #1

declare void @expand_function_end(i8*, i32, i32) #1

declare %union.tree_node* @poplevel(i32, i32, i32) #1

declare void @rest_of_compilation(%union.tree_node*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @__store_gcov_type(i64 %value, i8* %dest, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %upper_bit = alloca i32, align 4
  %i = alloca i64, align 8
  %oldvalue = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %cmp = icmp slt i64 %0, 0
  %cond = select i1 %cmp, i32 128, i32 0
  store i32 %cond, i32* %upper_bit, align 4
  %1 = load i64, i64* %value.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %value.addr, align 8
  store i64 %2, i64* %oldvalue, align 8
  %3 = load i64, i64* %value.addr, align 8
  %sub = sub nsw i64 0, %3
  store i64 %sub, i64* %value.addr, align 8
  %4 = load i64, i64* %oldvalue, align 8
  %5 = load i64, i64* %value.addr, align 8
  %sub2 = sub nsw i64 0, %5
  %cmp3 = icmp ne i64 %4, %sub2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %bytes.addr, align 8
  %cmp6 = icmp ult i64 8, %7
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %8 = load i64, i64* %bytes.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i64 [ 8, %cond.true ], [ %8, %cond.false ]
  %cmp8 = icmp ult i64 %6, %cond7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %9 = load i64, i64* %value.addr, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %bytes.addr, align 8
  %sub9 = sub i64 %11, 1
  %cmp10 = icmp eq i64 %10, %sub9
  %cond11 = select i1 %cmp10, i32 127, i32 255
  %conv = sext i32 %cond11 to i64
  %and = and i64 %9, %conv
  %conv12 = trunc i64 %and to i8
  %12 = load i64, i64* %i, align 8
  %13 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 %conv12, i8* %arrayidx, align 1
  %14 = load i64, i64* %value.addr, align 8
  %div = sdiv i64 %14, 256
  store i64 %div, i64* %value.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %16 = load i64, i64* %value.addr, align 8
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.end
  %17 = load i64, i64* %value.addr, align 8
  %cmp13 = icmp ne i64 %17, -1
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %for.end
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.22, %if.end.16
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %bytes.addr, align 8
  %cmp18 = icmp ult i64 %18, %19
  br i1 %cmp18, label %for.body.20, label %for.end.24

for.body.20:                                      ; preds = %for.cond.17
  %20 = load i64, i64* %i, align 8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8 0, i8* %arrayidx21, align 1
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.20
  %22 = load i64, i64* %i, align 8
  %inc23 = add i64 %22, 1
  store i64 %inc23, i64* %i, align 8
  br label %for.cond.17

for.end.24:                                       ; preds = %for.cond.17
  %23 = load i32, i32* %upper_bit, align 4
  %24 = load i64, i64* %bytes.addr, align 8
  %sub25 = sub i64 %24, 1
  %25 = load i8*, i8** %dest.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %25, i64 %sub25
  %26 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %26 to i32
  %or = or i32 %conv27, %23
  %conv28 = trunc i32 %or to i8
  store i8 %conv28, i8* %arrayidx26, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.24, %if.then.15, %if.then.4
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @alloc_aux_for_blocks(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @__read_gcov_type(i64* %dest, %struct._IO_FILE* %file, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i64*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bytes.addr = alloca i64, align 8
  %c = alloca [10 x i8], align 1
  store i64* %dest, i64** %dest.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  %0 = load i64, i64* %bytes.addr, align 8
  %cmp = icmp ugt i64 %0, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %1 = load i64, i64* %bytes.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 %1, %struct._IO_FILE* %2)
  %3 = load i64, i64* %bytes.addr, align 8
  %cmp1 = icmp ne i64 %call, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i64*, i64** %dest.addr, align 8
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  %5 = load i64, i64* %bytes.addr, align 8
  %call3 = call i32 @__fetch_gcov_type(i64* %4, i8* %arraydecay2, i64 %5)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @free_aux_for_blocks() #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @__fetch_gcov_type(i64* %dest, i8* %source, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i64*, align 8
  %source.addr = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  store i64* %dest, i64** %dest.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  store i64 0, i64* %value, align 8
  %0 = load i64, i64* %bytes.addr, align 8
  %sub = sub i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv1 = sext i32 %1 to i64
  %cmp = icmp ugt i64 %conv1, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %source.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i32, i32* %i, align 4
  %conv4 = sext i32 %5 to i64
  %6 = load i64, i64* %bytes.addr, align 8
  %sub5 = sub i64 %6, 1
  %cmp6 = icmp eq i64 %conv4, %sub5
  %cond = select i1 %cmp6, i32 127, i32 255
  %and = and i32 %conv3, %cond
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.22, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %8, 0
  br i1 %cmp9, label %for.body.11, label %for.end.24

for.body.11:                                      ; preds = %for.cond.8
  %9 = load i64, i64* %value, align 8
  %mul = mul nsw i64 %9, 256
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i8*, i8** %source.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %13 = load i32, i32* %i, align 4
  %conv15 = sext i32 %13 to i64
  %14 = load i64, i64* %bytes.addr, align 8
  %sub16 = sub i64 %14, 1
  %cmp17 = icmp eq i64 %conv15, %sub16
  %cond19 = select i1 %cmp17, i32 127, i32 255
  %and20 = and i32 %conv14, %cond19
  %conv21 = sext i32 %and20 to i64
  %add = add nsw i64 %mul, %conv21
  store i64 %add, i64* %value, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.11
  %15 = load i32, i32* %i, align 4
  %dec23 = add nsw i32 %15, -1
  store i32 %dec23, i32* %i, align 4
  br label %for.cond.8

for.end.24:                                       ; preds = %for.cond.8
  %16 = load i64, i64* %bytes.addr, align 8
  %sub25 = sub i64 %16, 1
  %17 = load i8*, i8** %source.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 %sub25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %18 to i32
  %and28 = and i32 %conv27, 128
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.end.24
  %19 = load i64, i64* %value, align 8
  %cmp30 = icmp sgt i64 %19, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true
  %20 = load i64, i64* %value, align 8
  %sub33 = sub nsw i64 0, %20
  store i64 %sub33, i64* %value, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true, %for.end.24
  %21 = load i64, i64* %value, align 8
  %22 = load i64*, i64** %dest.addr, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @gen_edge_profiler(i32 %edgeno) #0 {
entry:
  %edgeno.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %mem_ref = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  store i32 %edgeno, i32* %edgeno.addr, align 4
  %call = call i32 @mode_for_size(i32 64, i32 1, i32 0)
  store i32 %call, i32* %mode, align 4
  call void @start_sequence()
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** @profiler_label, align 8
  %call2 = call %struct.rtx_def* @force_reg(i32 %cond, %struct.rtx_def* %1)
  store %struct.rtx_def* %call2, %struct.rtx_def** %tmp, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %3 = load i32, i32* %edgeno.addr, align 4
  %mul = mul nsw i32 8, %3
  %conv = sext i32 %mul to i64
  %call3 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %2, i64 %conv)
  store %struct.rtx_def* %call3, %struct.rtx_def** %tmp, align 8
  %4 = load i32, i32* %mode, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call4 = call %struct.rtx_def* @gen_rtx_MEM(i32 %4, %struct.rtx_def* %5)
  %call5 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %call4)
  store %struct.rtx_def* %call5, %struct.rtx_def** %mem_ref, align 8
  %6 = load i32, i32* %mode, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem_ref, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem_ref, align 8
  %call6 = call %struct.rtx_def* @expand_simple_binop(i32 %6, i32 75, %struct.rtx_def* %7, %struct.rtx_def* %8, %struct.rtx_def* %9, i32 0, i32 2)
  store %struct.rtx_def* %call6, %struct.rtx_def** %tmp, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem_ref, align 8
  %cmp = icmp ne %struct.rtx_def* %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.rtx_def*, %struct.rtx_def** %mem_ref, align 8
  %call8 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call9 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call8, %struct.rtx_def* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call10 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call10, %struct.rtx_def** %sequence, align 8
  call void @end_sequence()
  %14 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  ret %struct.rtx_def* %14
}

declare void @commit_edge_insertions() #1

declare void @start_sequence() #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @expand_simple_binop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define internal void @union_groups(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) #0 {
entry:
  %bb1.addr = alloca %struct.basic_block_def*, align 8
  %bb2.addr = alloca %struct.basic_block_def*, align 8
  %bb1g = alloca %struct.basic_block_def*, align 8
  %bb2g = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb1, %struct.basic_block_def** %bb1.addr, align 8
  store %struct.basic_block_def* %bb2, %struct.basic_block_def** %bb2.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %call = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %0)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %bb1g, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %call1 = call %struct.basic_block_def* @find_group(%struct.basic_block_def* %1)
  store %struct.basic_block_def* %call1, %struct.basic_block_def** %bb2g, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1g, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2g, align 8
  %cmp = icmp eq %struct.basic_block_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 858, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.union_groups, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2g, align 8
  %5 = bitcast %struct.basic_block_def* %4 to i8*
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1g, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 10
  store i8* %5, i8** %aux, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @find_group(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %group = alloca %struct.basic_block_def*, align 8
  %bb1 = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  store %struct.basic_block_def* %0, %struct.basic_block_def** %group, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 10
  %2 = load i8*, i8** %aux, align 8
  %3 = bitcast i8* %2 to %struct.basic_block_def*
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  %cmp = icmp ne %struct.basic_block_def* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  %aux1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  %6 = load i8*, i8** %aux1, align 8
  %7 = bitcast i8* %6 to %struct.basic_block_def*
  store %struct.basic_block_def* %7, %struct.basic_block_def** %group, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 10
  %9 = load i8*, i8** %aux3, align 8
  %10 = bitcast i8* %9 to %struct.basic_block_def*
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  %cmp4 = icmp ne %struct.basic_block_def* %10, %11
  br i1 %cmp4, label %while.body.5, label %while.end.8

while.body.5:                                     ; preds = %while.cond.2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 10
  %13 = load i8*, i8** %aux6, align 8
  %14 = bitcast i8* %13 to %struct.basic_block_def*
  store %struct.basic_block_def* %14, %struct.basic_block_def** %bb1, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  %16 = bitcast %struct.basic_block_def* %15 to i8*
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 10
  store i8* %16, i8** %aux7, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8
  store %struct.basic_block_def* %18, %struct.basic_block_def** %bb.addr, align 8
  br label %while.cond.2

while.end.8:                                      ; preds = %while.cond.2
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %group, align 8
  ret %struct.basic_block_def* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @__fetch_long(i64* %dest, i8* %source, i64 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i64*, align 8
  %source.addr = alloca i8*, align 8
  %bytes.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  store i64* %dest, i64** %dest.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i64 %bytes, i64* %bytes.addr, align 8
  store i64 0, i64* %value, align 8
  %0 = load i64, i64* %bytes.addr, align 8
  %sub = sub i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv1 = sext i32 %1 to i64
  %cmp = icmp ugt i64 %conv1, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %source.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i32, i32* %i, align 4
  %conv4 = sext i32 %5 to i64
  %6 = load i64, i64* %bytes.addr, align 8
  %sub5 = sub i64 %6, 1
  %cmp6 = icmp eq i64 %conv4, %sub5
  %cond = select i1 %cmp6, i32 127, i32 255
  %and = and i32 %conv3, %cond
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.22, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %8, 0
  br i1 %cmp9, label %for.body.11, label %for.end.24

for.body.11:                                      ; preds = %for.cond.8
  %9 = load i64, i64* %value, align 8
  %mul = mul nsw i64 %9, 256
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i8*, i8** %source.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %11, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %13 = load i32, i32* %i, align 4
  %conv15 = sext i32 %13 to i64
  %14 = load i64, i64* %bytes.addr, align 8
  %sub16 = sub i64 %14, 1
  %cmp17 = icmp eq i64 %conv15, %sub16
  %cond19 = select i1 %cmp17, i32 127, i32 255
  %and20 = and i32 %conv14, %cond19
  %conv21 = sext i32 %and20 to i64
  %add = add nsw i64 %mul, %conv21
  store i64 %add, i64* %value, align 8
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.11
  %15 = load i32, i32* %i, align 4
  %dec23 = add nsw i32 %15, -1
  store i32 %dec23, i32* %i, align 4
  br label %for.cond.8

for.end.24:                                       ; preds = %for.cond.8
  %16 = load i64, i64* %bytes.addr, align 8
  %sub25 = sub i64 %16, 1
  %17 = load i8*, i8** %source.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 %sub25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %18 to i32
  %and28 = and i32 %conv27, 128
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.end.24
  %19 = load i64, i64* %value, align 8
  %cmp30 = icmp sgt i64 %19, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true
  %20 = load i64, i64* %value, align 8
  %sub33 = sub nsw i64 0, %20
  store i64 %sub33, i64* %value, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true, %for.end.24
  %21 = load i64, i64* %value, align 8
  %22 = load i64*, i64** %dest.addr, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
