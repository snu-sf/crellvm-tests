; ModuleID = 'sched-rgn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.region = type { i32, i32 }
%struct.candidate = type { i8, i8, i32, %struct.bitlst, %struct.bitlst }
%struct.bitlst = type { i32*, i32 }
%struct.function_unit_desc = type { i8*, i32, i32, i32, i32, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.haifa_insn_data = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8 }
%struct.sched_info = type { void (%struct.ready_list*)*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.ready_list = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.haifa_edge = type { i32, i32, i32, i32 }
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
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.deps = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8, i32, %struct.deps_reg*, %struct.bitmap_head_def }
%struct.deps_reg = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@sched_dump = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0A;;   ------------ REGIONS ----------\0A\0A\00", align 1
@nr_regions = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c";;\09rgn %d nr_blocks %d:\0A\00", align 1
@rgn_table = internal global %struct.region* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c";;\09bb/block: \00", align 1
@current_blocks = internal global i32 0, align 4
@rgn_bb_table = internal global i32* null, align 8
@block_to_bb = internal global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"sched-rgn.c\00", align 1
@__FUNCTION__.debug_regions = private unnamed_addr constant [14 x i8] c"debug_regions\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" %d/%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@candidate_table = internal global %struct.candidate* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"src b %d bb %d speculative \0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"split path: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"update path: \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c" src %d equivalent\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"----------- candidate table: target: b=%d bb=%d ---\0A\00", align 1
@current_nr_blocks = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [57 x i8] c";;   --------------- forward dependences: ------------ \0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\0A;;   --- Region Dependences --- b %d bb %d \0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c";;   %7s%6s%6s%6s%6s%6s%11s%6s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"insn\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dep\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"cost\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"blockage\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@rtx_class = external constant [153 x i8], align 16
@.str.29 = private unnamed_addr constant [10 x i8] c";;   %6d \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@note_insn_name = external constant [22 x i8*], align 16
@.str.31 = private unnamed_addr constant [18 x i8] c"line %d, file %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" {%s}\0A\00", align 1
@rtx_name = external constant [153 x i8*], align 16
@function_units = external constant [0 x %struct.function_unit_desc], align 8
@.str.33 = private unnamed_addr constant [39 x i8] c";;   %s%5d%6d%6d%6d%6d%6d  %3d -%3d   \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@h_i_d = external global %struct.haifa_insn_data*, align 8
@.str.36 = private unnamed_addr constant [4 x i8] c"\09: \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@n_basic_blocks = external global i32, align 4
@nr_inter = internal global i32 0, align 4
@nr_spec = internal global i32 0, align 4
@region_sched_info = internal global %struct.sched_info { void (%struct.ready_list*)* @init_ready_list, i32 (%struct.rtx_def*)* @can_schedule_ready_p, i32 ()* @schedule_more_p, i32 (%struct.rtx_def*)* @new_ready, i32 (%struct.rtx_def*, %struct.rtx_def*)* @rgn_rank, i8* (%struct.rtx_def*, i32)* @rgn_print_insn, i32 (%struct.rtx_def*, %struct.rtx_def*)* @contributes_to_priority, void (%struct.rtx_def*, %struct.bitmap_head_def*)* @compute_jump_reg_dependencies, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, i8 0 }, align 8
@current_sched_info = external global %struct.sched_info*, align 8
@reload_completed = external global i32, align 4
@write_symbols = external global i32, align 4
@sched_verbose = external global i32, align 4
@flag_schedule_interblock = external global i32, align 4
@.str.38 = private unnamed_addr constant [56 x i8] c"\0A;; Procedure interblock/speculative motions == %d/%d \0A\00", align 1
@__FUNCTION__.schedule_insns = private unnamed_addr constant [15 x i8] c"schedule_insns\00", align 1
@containing_rgn = internal global i32* null, align 8
@edge_table = internal global %struct.haifa_edge* null, align 8
@in_edges = internal global i32* null, align 8
@out_edges = internal global i32* null, align 8
@cfun = external global %struct.function*, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@nr_edges = internal global i32 0, align 4
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@target_n_insns = internal global i32 0, align 4
@sched_target_n_insns = internal global i32 0, align 4
@sched_n_insns = internal global i32 0, align 4
@last_was_jump = internal global i32 0, align 4
@bblst_last = internal global i32 0, align 4
@target_bb = internal global i32 0, align 4
@rgn_nr_edges = internal global i32 0, align 4
@bblst_size = internal global i32 0, align 4
@bblst_table = internal global i32* null, align 8
@bitlst_table_last = internal global i32 0, align 4
@bitlst_table_size = internal global i32 0, align 4
@bitlst_table = internal global i32* null, align 8
@dom = internal global %struct.simple_bitmap_def** null, align 8
@prob = internal global float* null, align 8
@flag_schedule_speculative = external global i32, align 4
@rgn_edges = internal global i32* null, align 8
@edge_to_bit = internal global i32* null, align 8
@__FUNCTION__.compute_trg_info = private unnamed_addr constant [17 x i8] c"compute_trg_info\00", align 1
@pot_split = internal global %struct.simple_bitmap_def** null, align 8
@global_regs = external global [53 x i8], align 16
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@flag_schedule_speculative_load = external global i32, align 4
@flag_schedule_speculative_load_dangerous = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@ancestor_edges = internal global %struct.simple_bitmap_def** null, align 8
@rgn_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [11 x i8] c"b%3d: i%4d\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%d/b%d\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@bb_deps = internal global %struct.deps* null, align 8
@__FUNCTION__.schedule_region = private unnamed_addr constant [16 x i8] c"schedule_region\00", align 1
@regclass_map = external constant [53 x i32], align 16
@.str.42 = private unnamed_addr constant [27 x i8] c";;  bb_prob(%d, %d) = %3d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @debug_regions() #0 {
entry:
  %rgn = alloca i32, align 4
  %bb = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %rgn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %1 = load i32, i32* %rgn, align 4
  %2 = load i32, i32* @nr_regions, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %4 = load i32, i32* %rgn, align 4
  %5 = load i32, i32* %rgn, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx = getelementptr inbounds %struct.region, %struct.region* %6, i64 %idxprom
  %rgn_nr_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %rgn_nr_blocks, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %4, i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %bb, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %bb, align 4
  %10 = load i32, i32* %rgn, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx5 = getelementptr inbounds %struct.region, %struct.region* %11, i64 %idxprom4
  %rgn_nr_blocks6 = getelementptr inbounds %struct.region, %struct.region* %arrayidx5, i32 0, i32 0
  %12 = load i32, i32* %rgn_nr_blocks6, align 4
  %cmp7 = icmp slt i32 %9, %12
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %rgn, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx10 = getelementptr inbounds %struct.region, %struct.region* %14, i64 %idxprom9
  %rgn_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx10, i32 0, i32 1
  %15 = load i32, i32* %rgn_blocks, align 4
  store i32 %15, i32* @current_blocks, align 4
  %16 = load i32, i32* %bb, align 4
  %17 = load i32, i32* @current_blocks, align 4
  %18 = load i32, i32* %bb, align 4
  %add = add nsw i32 %17, %18
  %idxprom11 = sext i32 %add to i64
  %19 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load i32*, i32** @block_to_bb, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  %22 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp ne i32 %16, %22
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 530, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.debug_regions, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %for.body.8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %24 = load i32, i32* %bb, align 4
  %25 = load i32, i32* @current_blocks, align 4
  %26 = load i32, i32* %bb, align 4
  %add16 = add nsw i32 %25, %26
  %idxprom17 = sext i32 %add16 to i64
  %27 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom17
  %28 = load i32, i32* %arrayidx18, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %24, i32 %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %31 = load i32, i32* %rgn, align 4
  %inc22 = add nsw i32 %31, 1
  store i32 %inc22, i32* %rgn, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @debug_candidate(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %b24 = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx = getelementptr inbounds %struct.candidate, %struct.candidate* %1, i64 %idxprom
  %is_valid = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx, i32 0, i32 0
  %2 = load i8, i8* %is_valid, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.40

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.candidate, %struct.candidate* %4, i64 %idxprom1
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx2, i32 0, i32 1
  %5 = load i8, i8* %is_speculative, align 1
  %tobool3 = icmp ne i8 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %7 = load i32, i32* @current_blocks, align 4
  %8 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %7, %8
  %idxprom5 = sext i32 %add to i64
  %9 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %i.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 %10, i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx9 = getelementptr inbounds %struct.candidate, %struct.candidate* %15, i64 %idxprom8
  %split_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx9, i32 0, i32 3
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs, i32 0, i32 1
  %16 = load i32, i32* %nr_members, align 4
  %cmp = icmp slt i32 %13, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx12 = getelementptr inbounds %struct.candidate, %struct.candidate* %19, i64 %idxprom11
  %split_bbs13 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx12, i32 0, i32 3
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs13, i32 0, i32 0
  %20 = load i32*, i32** %first_member, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  %21 = load i32, i32* %arrayidx14, align 4
  store i32 %21, i32* %b, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %23 = load i32, i32* %b, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.32, %for.end
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %i.addr, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx20 = getelementptr inbounds %struct.candidate, %struct.candidate* %29, i64 %idxprom19
  %update_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx20, i32 0, i32 4
  %nr_members21 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs, i32 0, i32 1
  %30 = load i32, i32* %nr_members21, align 4
  %cmp22 = icmp slt i32 %27, %30
  br i1 %cmp22, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.18
  %31 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load i32, i32* %i.addr, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx27 = getelementptr inbounds %struct.candidate, %struct.candidate* %33, i64 %idxprom26
  %update_bbs28 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx27, i32 0, i32 4
  %first_member29 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs28, i32 0, i32 0
  %34 = load i32*, i32** %first_member29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %34, i64 %idxprom25
  %35 = load i32, i32* %arrayidx30, align 4
  store i32 %35, i32* %b24, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %37 = load i32, i32* %b24, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %37)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.23
  %38 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.18

for.end.34:                                       ; preds = %for.cond.18
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.40

if.else:                                          ; preds = %if.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %41 = load i32, i32* @current_blocks, align 4
  %42 = load i32, i32* %i.addr, align 4
  %add36 = add nsw i32 %41, %42
  %idxprom37 = sext i32 %add36 to i64
  %43 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %43, i64 %idxprom37
  %44 = load i32, i32* %arrayidx38, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %44)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then, %if.else, %for.end.34
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_candidates(i32 %trg) #0 {
entry:
  %trg.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %trg, i32* %trg.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %1 = load i32, i32* @current_blocks, align 4
  %2 = load i32, i32* %trg.addr, align 4
  %add = add nsw i32 %1, %2
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %trg.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0), i32 %4, i32 %5)
  %6 = load i32, i32* %trg.addr, align 4
  %add1 = add nsw i32 %6, 1
  store i32 %add1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  call void @debug_candidate(i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_dependencies() #0 {
entry:
  %bb = alloca i32, align 4
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %unit = alloca i32, align 4
  %range = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %entry
  %1 = load i32, i32* %bb, align 4
  %2 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @current_blocks, align 4
  %4 = load i32, i32* %bb, align 4
  %add = add nsw i32 %3, %4
  %idxprom = sext i32 %add to i64
  %5 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  call void @get_block_head_tail(i32 %6, %struct.rtx_def** %head, %struct.rtx_def** %tail)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %next_tail, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %10 = load i32, i32* @current_blocks, align 4
  %11 = load i32, i32* %bb, align 4
  %add2 = add nsw i32 %10, %11
  %idxprom3 = sext i32 %add2 to i64
  %12 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %14 = load i32, i32* %bb, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i32 %13, i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0))
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.104, %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp9 = icmp ne %struct.rtx_def* %18, %19
  br i1 %cmp9, label %for.body.10, label %for.end.108

for.body.10:                                      ; preds = %for.cond.8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom11 = sext i32 %bf.clear to i64
  %arrayidx12 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom11
  %22 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %22 to i32
  %cmp13 = icmp eq i32 %conv, 105
  br i1 %cmp13, label %if.end.42, label %if.then

if.then:                                          ; preds = %for.body.10
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %25 = load i32, i32* %rtint, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 %25)
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load18 = load i32, i32* %27, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 37
  br i1 %cmp20, label %if.then.22, label %if.else.35

if.then.22:                                       ; preds = %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 4
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %29 = load i32, i32* %rtint25, align 4
  store i32 %29, i32* %n, align 4
  %30 = load i32, i32* %n, align 4
  %cmp26 = icmp slt i32 %30, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %32 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %32, -100
  %idxprom29 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds [22 x i8*], [22 x i8*]* @note_insn_name, i32 0, i64 %idxprom29
  %33 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %33)
  br label %if.end

if.else:                                          ; preds = %if.then.22
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %35 = load i32, i32* %n, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx33 to i8**
  %37 = load i8*, i8** %rtstr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i32 %35, i8* %37)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.28
  br label %if.end.41

if.else.35:                                       ; preds = %if.then
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load36 = load i32, i32* %40, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %idxprom38 = sext i32 %bf.clear37 to i64
  %arrayidx39 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_name, i32 0, i64 %idxprom38
  %41 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.35, %if.end
  br label %for.inc.104

if.end.42:                                        ; preds = %for.body.10
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call43 = call i32 @insn_unit(%struct.rtx_def* %42)
  store i32 %call43, i32* %unit, align 4
  %43 = load i32, i32* %unit, align 4
  %cmp44 = icmp slt i32 %43, 0
  br i1 %cmp44, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %44 = load i32, i32* %unit, align 4
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom46
  %blockage_range_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx47, i32 0, i32 9
  %45 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function, align 8
  %cmp48 = icmp eq i32 (%struct.rtx_def*)* %45, null
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %46 = load i32, i32* %unit, align 4
  %idxprom50 = sext i32 %46 to i64
  %arrayidx51 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom50
  %blockage_range_function52 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx51, i32 0, i32 9
  %47 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function52, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call53 = call i32 %47(%struct.rtx_def* %48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call53, %cond.false ]
  store i32 %cond, i32* %range, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load54 = load i32, i32* %51, align 8
  %bf.lshr = lshr i32 %bf.load54, 28
  %bf.clear55 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear55, 0
  %cond56 = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %53 = load i32, i32* %rtint59, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 4
  %rtint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %55 = load i32, i32* %rtint62, align 4
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %57 = load i32, i32* %rtint65, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %58, i32 0, i32 4
  %bb67 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx68 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb67, i32 0, i64 %idxprom66
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx68, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i32 0, i32 11
  %60 = load i32, i32* %index, align 4
  %add69 = add nsw i32 %60, 0
  %idxprom70 = sext i32 %add69 to i64
  %61 = load i32*, i32** @block_to_bb, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %61, i64 %idxprom70
  %62 = load i32, i32* %arrayidx71, align 4
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %64 = load i32, i32* %rtint74, align 4
  %idxprom75 = sext i32 %64 to i64
  %65 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx76 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %65, i64 %idxprom75
  %dep_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx76, i32 0, i32 4
  %66 = load i32, i32* %dep_count, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtint79 = bitcast %union.rtunion_def* %arrayidx78 to i32*
  %68 = load i32, i32* %rtint79, align 4
  %idxprom80 = sext i32 %68 to i64
  %69 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx81 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %69, i64 %idxprom80
  %priority = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx81, i32 0, i32 3
  %70 = load i32, i32* %priority, align 4
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call82 = call i32 @insn_cost(%struct.rtx_def* %71, %struct.rtx_def* null, %struct.rtx_def* null)
  %72 = load i32, i32* %range, align 4
  %shr = ashr i32 %72, 16
  %73 = load i32, i32* %range, align 4
  %and = and i32 %73, 65535
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), i8* %cond56, i32 %53, i32 %55, i32 %62, i32 %66, i32 %70, i32 %call82, i32 %shr, i32 %and)
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @insn_print_units(%struct.rtx_def* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0))
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %77 = load i32, i32* %rtint87, align 4
  %idxprom88 = sext i32 %77 to i64
  %78 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx89 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %78, i64 %idxprom88
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx89, i32 0, i32 0
  %79 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %link, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc, %cond.end
  %80 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool91 = icmp ne %struct.rtx_def* %80, null
  br i1 %tobool91, label %for.body.92, label %for.end

for.body.92:                                      ; preds = %for.cond.90
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %84 = load i32, i32* %rtint98, align 4
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 %84)
  br label %for.inc

for.inc:                                          ; preds = %for.body.92
  %85 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 1
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %link, align 8
  br label %for.cond.90

for.end:                                          ; preds = %for.cond.90
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end, %if.end.41
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 2
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %insn, align 8
  br label %for.cond.8

for.end.108:                                      ; preds = %for.cond.8
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %90 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

declare void @get_block_head_tail(i32, %struct.rtx_def**, %struct.rtx_def**) #1

declare i32 @insn_unit(%struct.rtx_def*) #1

declare i32 @insn_cost(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @insn_print_units(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @schedule_insns(%struct._IO_FILE* %dump_file) #0 {
entry:
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %large_region_blocks = alloca %struct.simple_bitmap_def*, align 8
  %blocks = alloca %struct.simple_bitmap_def*, align 8
  %rgn = alloca i32, align 4
  %any_large_regions = alloca i32, align 4
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @scope_to_insns_initialize()
  store i32 0, i32* @nr_inter, align 4
  store i32 0, i32* @nr_spec, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8
  call void @sched_init(%struct._IO_FILE* %1)
  call void @init_regions()
  store %struct.sched_info* @region_sched_info, %struct.sched_info** @current_sched_info, align 8
  store i32 0, i32* %rgn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %rgn, align 4
  %3 = load i32, i32* @nr_regions, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %rgn, align 4
  call void @schedule_region(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %rgn, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %rgn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @allocate_reg_life_data()
  %call = call i32 @get_max_uid()
  call void @compute_bb_for_insn(i32 %call)
  store i32 0, i32* %any_large_regions, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %call2 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6)
  store %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def** %large_region_blocks, align 8
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %large_region_blocks, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %7)
  %8 = load i32, i32* @n_basic_blocks, align 4
  %call3 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %8)
  store %struct.simple_bitmap_def* %call3, %struct.simple_bitmap_def** %blocks, align 8
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %9)
  store i32 0, i32* %rgn, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.38, %for.end
  %10 = load i32, i32* %rgn, align 4
  %11 = load i32, i32* @nr_regions, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.6, label %for.end.40

for.body.6:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %rgn, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx = getelementptr inbounds %struct.region, %struct.region* %13, i64 %idxprom
  %rgn_nr_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx, i32 0, i32 0
  %14 = load i32, i32* %rgn_nr_blocks, align 4
  %cmp7 = icmp sgt i32 %14, 1
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body.6
  store i32 1, i32* %any_large_regions, align 4
  br label %if.end.37

if.else:                                          ; preds = %for.body.6
  %15 = load i32, i32* %rgn, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx10 = getelementptr inbounds %struct.region, %struct.region* %16, i64 %idxprom9
  %rgn_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx10, i32 0, i32 1
  %17 = load i32, i32* %rgn_blocks, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %19 = load i32, i32* %arrayidx12, align 4
  %rem = urem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %20 = load i32, i32* %rgn, align 4
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx14 = getelementptr inbounds %struct.region, %struct.region* %21, i64 %idxprom13
  %rgn_blocks15 = getelementptr inbounds %struct.region, %struct.region* %arrayidx14, i32 0, i32 1
  %22 = load i32, i32* %rgn_blocks15, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  %div = udiv i32 %24, 64
  %idxprom18 = zext i32 %div to i64
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %25, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom18
  %26 = load i64, i64* %arrayidx19, align 8
  %or = or i64 %26, %shl
  store i64 %or, i64* %arrayidx19, align 8
  %27 = load i32, i32* %rgn, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx21 = getelementptr inbounds %struct.region, %struct.region* %28, i64 %idxprom20
  %rgn_blocks22 = getelementptr inbounds %struct.region, %struct.region* %arrayidx21, i32 0, i32 1
  %29 = load i32, i32* %rgn_blocks22, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom23
  %31 = load i32, i32* %arrayidx24, align 4
  %rem25 = urem i32 %31, 64
  %sh_prom26 = zext i32 %rem25 to i64
  %shl27 = shl i64 1, %sh_prom26
  %neg = xor i64 %shl27, -1
  %32 = load i32, i32* %rgn, align 4
  %idxprom28 = sext i32 %32 to i64
  %33 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx29 = getelementptr inbounds %struct.region, %struct.region* %33, i64 %idxprom28
  %rgn_blocks30 = getelementptr inbounds %struct.region, %struct.region* %arrayidx29, i32 0, i32 1
  %34 = load i32, i32* %rgn_blocks30, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %35, i64 %idxprom31
  %36 = load i32, i32* %arrayidx32, align 4
  %div33 = udiv i32 %36, 64
  %idxprom34 = zext i32 %div33 to i64
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %large_region_blocks, align 8
  %elms35 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %37, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [1 x i64], [1 x i64]* %elms35, i32 0, i64 %idxprom34
  %38 = load i64, i64* %arrayidx36, align 8
  %and = and i64 %38, %neg
  store i64 %and, i64* %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.8
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %39 = load i32, i32* %rgn, align 4
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, i32* %rgn, align 4
  br label %for.cond.4

for.end.40:                                       ; preds = %for.cond.4
  %40 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %41 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %41, 0
  %cond = select i1 %tobool, i32 1, i32 5
  call void @update_life_info(%struct.simple_bitmap_def* %40, i32 0, i32 %cond)
  %42 = load i32, i32* %any_large_regions, align 4
  %tobool41 = icmp ne i32 %42, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end.40
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %large_region_blocks, align 8
  call void @update_life_info(%struct.simple_bitmap_def* %43, i32 1, i32 5)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end.40
  %44 = load i32, i32* @reload_completed, align 4
  %tobool44 = icmp ne i32 %44, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %call46 = call %struct.rtx_def* @get_insns()
  call void @reposition_prologue_and_epilogue_notes(%struct.rtx_def* %call46)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.43
  %45 = load i32, i32* @write_symbols, align 4
  %cmp48 = icmp ne i32 %45, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.47
  call void @rm_redundant_line_notes()
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.47
  call void @scope_to_insns_finalize()
  %46 = load i32, i32* @sched_verbose, align 4
  %tobool51 = icmp ne i32 %46, 0
  br i1 %tobool51, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %if.end.50
  %47 = load i32, i32* @reload_completed, align 4
  %cmp53 = icmp eq i32 %47, 0
  br i1 %cmp53, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %if.then.52
  %48 = load i32, i32* @flag_schedule_interblock, align 4
  %tobool54 = icmp ne i32 %48, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %land.lhs.true
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %50 = load i32, i32* @nr_inter, align 4
  %51 = load i32, i32* @nr_spec, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0), i32 %50, i32 %51)
  br label %if.end.61

if.else.57:                                       ; preds = %land.lhs.true, %if.then.52
  %52 = load i32, i32* @nr_inter, align 4
  %cmp58 = icmp sgt i32 %52, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.else.57
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 3037, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.schedule_insns, i32 0, i32 0)) #5
  unreachable

if.end.60:                                        ; preds = %if.else.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.55
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %if.end.50
  %54 = load %struct.region*, %struct.region** @rgn_table, align 8
  %55 = bitcast %struct.region* %54 to i8*
  call void @free(i8* %55) #4
  %56 = load i32*, i32** @rgn_bb_table, align 8
  %57 = bitcast i32* %56 to i8*
  call void @free(i8* %57) #4
  %58 = load i32*, i32** @block_to_bb, align 8
  %59 = bitcast i32* %58 to i8*
  call void @free(i8* %59) #4
  %60 = load i32*, i32** @containing_rgn, align 8
  %61 = bitcast i32* %60 to i8*
  call void @free(i8* %61) #4
  call void @sched_finish()
  %62 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %tobool64 = icmp ne %struct.haifa_edge* %62, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %63 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %64 = bitcast %struct.haifa_edge* %63 to i8*
  call void @free(i8* %64) #4
  store %struct.haifa_edge* null, %struct.haifa_edge** @edge_table, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %65 = load i32*, i32** @in_edges, align 8
  %tobool67 = icmp ne i32* %65, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %66 = load i32*, i32** @in_edges, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67) #4
  store i32* null, i32** @in_edges, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  %68 = load i32*, i32** @out_edges, align 8
  %tobool70 = icmp ne i32* %68, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  %69 = load i32*, i32** @out_edges, align 8
  %70 = bitcast i32* %69 to i8*
  call void @free(i8* %70) #4
  store i32* null, i32** @out_edges, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.69
  %71 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %72 = bitcast %struct.simple_bitmap_def* %71 to i8*
  call void @free(i8* %72) #4
  %73 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %large_region_blocks, align 8
  %74 = bitcast %struct.simple_bitmap_def* %73 to i8*
  call void @free(i8* %74) #4
  br label %return

return:                                           ; preds = %if.end.72, %if.then
  ret void
}

declare void @scope_to_insns_initialize() #1

declare void @sched_init(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @init_regions() #0 {
entry:
  %blocks = alloca %struct.simple_bitmap_def*, align 8
  %rgn = alloca i32, align 4
  %dom = alloca %struct.simple_bitmap_def**, align 8
  %edge_list = alloca %struct.edge_list*, align 8
  store i32 0, i32* @nr_regions, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.region*
  store %struct.region* %1, %struct.region** @rgn_table, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @xmalloc(i64 %mul2)
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** @rgn_bb_table, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias i8* @xmalloc(i64 %mul5)
  %5 = bitcast i8* %call6 to i32*
  store i32* %5, i32** @block_to_bb, align 8
  %6 = load i32, i32* @n_basic_blocks, align 4
  %conv7 = sext i32 %6 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias i8* @xmalloc(i64 %mul8)
  %7 = bitcast i8* %call9 to i32*
  store i32* %7, i32** @containing_rgn, align 8
  %8 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* @flag_schedule_interblock, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false, %entry
  call void @find_single_block_region()
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false.11
  %call13 = call i32 @is_cfg_nonregular()
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  call void @find_single_block_region()
  br label %if.end.28

if.else.16:                                       ; preds = %if.else
  %11 = load i32, i32* @n_basic_blocks, align 4
  %12 = load i32, i32* @n_basic_blocks, align 4
  %call17 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %11, i32 %12)
  store %struct.simple_bitmap_def** %call17, %struct.simple_bitmap_def*** %dom, align 8
  %call18 = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call18, %struct.edge_list** %edge_list, align 8
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %13, i32 0)
  %14 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %call19 = call i32 @build_control_flow(%struct.edge_list* %14)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.16
  call void @find_single_block_region()
  br label %if.end

if.else.23:                                       ; preds = %if.else.16
  %15 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  call void @find_rgns(%struct.edge_list* %15, %struct.simple_bitmap_def** %16)
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.22
  %17 = load i32, i32* @sched_verbose, align 4
  %cmp24 = icmp sge i32 %17, 3
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  call void @debug_regions()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end
  %18 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  call void @free_edge_list(%struct.edge_list* %18)
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %20 = bitcast %struct.simple_bitmap_def** %19 to i8*
  call void @free(i8* %20) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %call30 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* null, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @schedule_region(i32 %rgn) #0 {
entry:
  %rgn.addr = alloca i32, align 4
  %bb = alloca i32, align 4
  %rgn_n_insns = alloca i32, align 4
  %sched_rgn_n_insns = alloca i32, align 4
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %head23 = alloca %struct.rtx_def*, align 8
  %tail24 = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %head95 = alloca %struct.rtx_def*, align 8
  %tail96 = alloca %struct.rtx_def*, align 8
  %b = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %head190 = alloca %struct.rtx_def*, align 8
  %tail191 = alloca %struct.rtx_def*, align 8
  store i32 %rgn, i32* %rgn.addr, align 4
  store i32 0, i32* %rgn_n_insns, align 4
  store i32 0, i32* %sched_rgn_n_insns, align 4
  %0 = load i32, i32* %rgn.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx = getelementptr inbounds %struct.region, %struct.region* %1, i64 %idxprom
  %rgn_nr_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %rgn_nr_blocks, align 4
  store i32 %2, i32* @current_nr_blocks, align 4
  %3 = load i32, i32* %rgn.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.region, %struct.region* %4, i64 %idxprom1
  %rgn_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %rgn_blocks, align 4
  store i32 %5, i32* @current_blocks, align 4
  call void @init_deps_global()
  %6 = load i32, i32* @current_nr_blocks, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 104, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call to %struct.deps*
  store %struct.deps* %7, %struct.deps** @bb_deps, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %bb, align 4
  %9 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %11 = load i32, i32* %bb, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.deps, %struct.deps* %10, i64 %idx.ext
  call void @init_deps(%struct.deps* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %bb, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.8, %for.end
  %13 = load i32, i32* %bb, align 4
  %14 = load i32, i32* @current_nr_blocks, align 4
  %cmp5 = icmp slt i32 %13, %14
  br i1 %cmp5, label %for.body.7, label %for.end.10

for.body.7:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %bb, align 4
  call void @compute_block_backward_dependences(i32 %15)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.7
  %16 = load i32, i32* %bb, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, i32* %bb, align 4
  br label %for.cond.4

for.end.10:                                       ; preds = %for.cond.4
  %17 = load i32, i32* @current_nr_blocks, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %bb, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %for.end.10
  %18 = load i32, i32* %bb, align 4
  %cmp12 = icmp sge i32 %18, 0
  br i1 %cmp12, label %for.body.14, label %for.end.18

for.body.14:                                      ; preds = %for.cond.11
  %19 = load i32, i32* @current_blocks, align 4
  %20 = load i32, i32* %bb, align 4
  %add = add nsw i32 %19, %20
  %idxprom15 = sext i32 %add to i64
  %21 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  call void @get_block_head_tail(i32 %22, %struct.rtx_def** %head, %struct.rtx_def** %tail)
  %23 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  call void @compute_forward_dependences(%struct.rtx_def* %23, %struct.rtx_def* %24)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %25 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %bb, align 4
  br label %for.cond.11

for.end.18:                                       ; preds = %for.cond.11
  store i32 0, i32* %bb, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %for.end.18
  %26 = load i32, i32* %bb, align 4
  %27 = load i32, i32* @current_nr_blocks, align 4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body.22, label %for.end.32

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i32, i32* @current_blocks, align 4
  %29 = load i32, i32* %bb, align 4
  %add25 = add nsw i32 %28, %29
  %idxprom26 = sext i32 %add25 to i64
  %30 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom26
  %31 = load i32, i32* %arrayidx27, align 4
  call void @get_block_head_tail(i32 %31, %struct.rtx_def** %head23, %struct.rtx_def** %tail24)
  %32 = load %struct.rtx_def*, %struct.rtx_def** %head23, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tail24, align 8
  %call28 = call i32 @set_priorities(%struct.rtx_def* %32, %struct.rtx_def* %33)
  %34 = load i32, i32* %rgn_n_insns, align 4
  %add29 = add nsw i32 %34, %call28
  store i32 %add29, i32* %rgn_n_insns, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.22
  %35 = load i32, i32* %bb, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, i32* %bb, align 4
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  %36 = load i32, i32* @current_nr_blocks, align 4
  %cmp33 = icmp sgt i32 %36, 1
  br i1 %cmp33, label %if.then, label %if.end.90

if.then:                                          ; preds = %for.end.32
  %37 = load i32, i32* @current_nr_blocks, align 4
  %conv35 = sext i32 %37 to i64
  %mul36 = mul i64 %conv35, 4
  %call37 = call noalias i8* @xmalloc(i64 %mul36)
  %38 = bitcast i8* %call37 to float*
  store float* %38, float** @prob, align 8
  %39 = load i32, i32* @current_nr_blocks, align 4
  %40 = load i32, i32* @current_nr_blocks, align 4
  %call38 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %39, i32 %40)
  store %struct.simple_bitmap_def** %call38, %struct.simple_bitmap_def*** @dom, align 8
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %42 = load i32, i32* @current_nr_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %41, i32 %42)
  store i32 0, i32* @rgn_nr_edges, align 4
  %43 = load i32, i32* @nr_edges, align 4
  %conv39 = sext i32 %43 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @xmalloc(i64 %mul40)
  %44 = bitcast i8* %call41 to i32*
  store i32* %44, i32** @edge_to_bit, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.56, %if.then
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* @nr_edges, align 4
  %cmp43 = icmp slt i32 %45, %46
  br i1 %cmp43, label %for.body.45, label %for.end.58

for.body.45:                                      ; preds = %for.cond.42
  %47 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %47 to i64
  %48 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx47 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %48, i64 %idxprom46
  %from_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx47, i32 0, i32 0
  %49 = load i32, i32* %from_block, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load i32*, i32** @containing_rgn, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %50, i64 %idxprom48
  %51 = load i32, i32* %arrayidx49, align 4
  %52 = load i32, i32* %rgn.addr, align 4
  %cmp50 = icmp eq i32 %51, %52
  br i1 %cmp50, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %for.body.45
  %53 = load i32, i32* @rgn_nr_edges, align 4
  %inc53 = add nsw i32 %53, 1
  store i32 %inc53, i32* @rgn_nr_edges, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %55, i64 %idxprom54
  store i32 %53, i32* %arrayidx55, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.52, %for.body.45
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end
  %56 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %56, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.42

for.end.58:                                       ; preds = %for.cond.42
  %57 = load i32, i32* @rgn_nr_edges, align 4
  %conv59 = sext i32 %57 to i64
  %mul60 = mul i64 %conv59, 4
  %call61 = call noalias i8* @xmalloc(i64 %mul60)
  %58 = bitcast i8* %call61 to i32*
  store i32* %58, i32** @rgn_edges, align 8
  store i32 0, i32* @rgn_nr_edges, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.78, %for.end.58
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* @nr_edges, align 4
  %cmp63 = icmp slt i32 %59, %60
  br i1 %cmp63, label %for.body.65, label %for.end.80

for.body.65:                                      ; preds = %for.cond.62
  %61 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %61 to i64
  %62 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx67 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %62, i64 %idxprom66
  %from_block68 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx67, i32 0, i32 0
  %63 = load i32, i32* %from_block68, align 4
  %idxprom69 = sext i32 %63 to i64
  %64 = load i32*, i32** @containing_rgn, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %64, i64 %idxprom69
  %65 = load i32, i32* %arrayidx70, align 4
  %66 = load i32, i32* %rgn.addr, align 4
  %cmp71 = icmp eq i32 %65, %66
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %for.body.65
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* @rgn_nr_edges, align 4
  %inc74 = add nsw i32 %68, 1
  store i32 %inc74, i32* @rgn_nr_edges, align 4
  %idxprom75 = sext i32 %68 to i64
  %69 = load i32*, i32** @rgn_edges, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %69, i64 %idxprom75
  store i32 %67, i32* %arrayidx76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %for.body.65
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %70 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %70, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond.62

for.end.80:                                       ; preds = %for.cond.62
  %71 = load i32, i32* @current_nr_blocks, align 4
  %72 = load i32, i32* @rgn_nr_edges, align 4
  %call81 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %71, i32 %72)
  store %struct.simple_bitmap_def** %call81, %struct.simple_bitmap_def*** @pot_split, align 8
  %73 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %74 = load i32, i32* @current_nr_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %73, i32 %74)
  %75 = load i32, i32* @current_nr_blocks, align 4
  %76 = load i32, i32* @rgn_nr_edges, align 4
  %call82 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %75, i32 %76)
  store %struct.simple_bitmap_def** %call82, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %77 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %78 = load i32, i32* @current_nr_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %77, i32 %78)
  store i32 0, i32* %bb, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.87, %for.end.80
  %79 = load i32, i32* %bb, align 4
  %80 = load i32, i32* @current_nr_blocks, align 4
  %cmp84 = icmp slt i32 %79, %80
  br i1 %cmp84, label %for.body.86, label %for.end.89

for.body.86:                                      ; preds = %for.cond.83
  %81 = load i32, i32* %bb, align 4
  call void @compute_dom_prob_ps(i32 %81)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.86
  %82 = load i32, i32* %bb, align 4
  %inc88 = add nsw i32 %82, 1
  store i32 %inc88, i32* %bb, align 4
  br label %for.cond.83

for.end.89:                                       ; preds = %for.cond.83
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %for.end.32
  store i32 0, i32* %bb, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.176, %if.end.90
  %83 = load i32, i32* %bb, align 4
  %84 = load i32, i32* @current_nr_blocks, align 4
  %cmp92 = icmp slt i32 %83, %84
  br i1 %cmp92, label %for.body.94, label %for.end.178

for.body.94:                                      ; preds = %for.cond.91
  %85 = load i32, i32* @current_blocks, align 4
  %86 = load i32, i32* %bb, align 4
  %add97 = add nsw i32 %85, %86
  %idxprom98 = sext i32 %add97 to i64
  %87 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %87, i64 %idxprom98
  %88 = load i32, i32* %arrayidx99, align 4
  store i32 %88, i32* %b, align 4
  %89 = load i32, i32* %b, align 4
  call void @get_block_head_tail(i32 %89, %struct.rtx_def** %head95, %struct.rtx_def** %tail96)
  %90 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  %call100 = call i32 @no_real_insns_p(%struct.rtx_def* %90, %struct.rtx_def* %91)
  %tobool = icmp ne i32 %call100, 0
  br i1 %tobool, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.body.94
  br label %for.inc.176

if.end.102:                                       ; preds = %for.body.94
  %92 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %94 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %prev_head = getelementptr inbounds %struct.sched_info, %struct.sched_info* %94, i32 0, i32 8
  store %struct.rtx_def* %93, %struct.rtx_def** %prev_head, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 2
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %97 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %next_tail = getelementptr inbounds %struct.sched_info, %struct.sched_info* %97, i32 0, i32 9
  store %struct.rtx_def* %96, %struct.rtx_def** %next_tail, align 8
  %98 = load i32, i32* @write_symbols, align 4
  %cmp107 = icmp ne i32 %98, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.102
  %99 = load i32, i32* %b, align 4
  %100 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  call void @save_line_notes(i32 %99, %struct.rtx_def* %100, %struct.rtx_def* %101)
  %102 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  call void @rm_line_notes(%struct.rtx_def* %102, %struct.rtx_def* %103)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.end.102
  %104 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load = load i32, i32* %105, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom111 = sext i32 %bf.clear to i64
  %arrayidx112 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom111
  %106 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %106 to i32
  %cmp114 = icmp eq i32 %conv113, 105
  br i1 %cmp114, label %if.then.116, label %if.end.137

if.then.116:                                      ; preds = %if.end.110
  %107 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 6
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %note, align 8
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.132, %if.then.116
  %109 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool121 = icmp ne %struct.rtx_def* %109, null
  br i1 %tobool121, label %for.body.122, label %for.end.136

for.body.122:                                     ; preds = %for.cond.120
  %110 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load123 = load i32, i32* %111, align 8
  %bf.lshr = lshr i32 %bf.load123, 16
  %bf.clear124 = and i32 %bf.lshr, 255
  %cmp125 = icmp eq i32 %bf.clear124, 24
  br i1 %cmp125, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %for.body.122
  %112 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %112, %struct.rtx_def* %113)
  %114 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 1
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  store %struct.rtx_def* %115, %struct.rtx_def** %note, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %116, %struct.rtx_def* %117)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.127, %for.body.122
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %118 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 1
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  store %struct.rtx_def* %119, %struct.rtx_def** %note, align 8
  br label %for.cond.120

for.end.136:                                      ; preds = %for.cond.120
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %if.end.110
  %120 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  call void @rm_other_notes(%struct.rtx_def* %120, %struct.rtx_def* %121)
  %122 = load i32, i32* %bb, align 4
  store i32 %122, i32* @target_bb, align 4
  %123 = load i32, i32* @current_nr_blocks, align 4
  %cmp138 = icmp sgt i32 %123, 1
  br i1 %cmp138, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.137
  %124 = load i32, i32* @flag_schedule_interblock, align 4
  %tobool140 = icmp ne i32 %124, 0
  %lnot = xor i1 %tobool140, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.137
  %125 = phi i1 [ false, %if.end.137 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %125 to i32
  %126 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %queue_must_finish_empty = getelementptr inbounds %struct.sched_info, %struct.sched_info* %126, i32 0, i32 12
  %127 = trunc i32 %land.ext to i8
  %bf.load141 = load i8, i8* %queue_must_finish_empty, align 8
  %bf.value = and i8 %127, 1
  %bf.clear142 = and i8 %bf.load141, -2
  %bf.set = or i8 %bf.clear142, %bf.value
  store i8 %bf.set, i8* %queue_must_finish_empty, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %128 = load i32, i32* %b, align 4
  %129 = load i32, i32* %rgn_n_insns, align 4
  call void @schedule_block(i32 %128, i32 %129)
  %130 = load i32, i32* @sched_n_insns, align 4
  %131 = load i32, i32* %sched_rgn_n_insns, align 4
  %add143 = add nsw i32 %131, %130
  store i32 %add143, i32* %sched_rgn_n_insns, align 4
  %132 = load %struct.rtx_def*, %struct.rtx_def** %head95, align 8
  %133 = load i32, i32* %b, align 4
  %idxprom144 = sext i32 %133 to i64
  %134 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %134, i32 0, i32 4
  %bb145 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx146 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb145, i32 0, i64 %idxprom144
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx146, align 8
  %head147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i32 0, i32 0
  %136 = load %struct.rtx_def*, %struct.rtx_def** %head147, align 8
  %cmp148 = icmp eq %struct.rtx_def* %132, %136
  br i1 %cmp148, label %if.then.150, label %if.end.157

if.then.150:                                      ; preds = %land.end
  %137 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %head151 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %137, i32 0, i32 10
  %138 = load %struct.rtx_def*, %struct.rtx_def** %head151, align 8
  %139 = load i32, i32* %b, align 4
  %idxprom152 = sext i32 %139 to i64
  %140 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data153 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %140, i32 0, i32 4
  %bb154 = bitcast %union.varray_data_tag* %data153 to [1 x %struct.basic_block_def*]*
  %arrayidx155 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb154, i32 0, i64 %idxprom152
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx155, align 8
  %head156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %141, i32 0, i32 0
  store %struct.rtx_def* %138, %struct.rtx_def** %head156, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.150, %land.end
  %142 = load %struct.rtx_def*, %struct.rtx_def** %tail96, align 8
  %143 = load i32, i32* %b, align 4
  %idxprom158 = sext i32 %143 to i64
  %144 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data159 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %144, i32 0, i32 4
  %bb160 = bitcast %union.varray_data_tag* %data159 to [1 x %struct.basic_block_def*]*
  %arrayidx161 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb160, i32 0, i64 %idxprom158
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx161, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %145, i32 0, i32 1
  %146 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp162 = icmp eq %struct.rtx_def* %142, %146
  br i1 %cmp162, label %if.then.164, label %if.end.171

if.then.164:                                      ; preds = %if.end.157
  %147 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %tail165 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %147, i32 0, i32 11
  %148 = load %struct.rtx_def*, %struct.rtx_def** %tail165, align 8
  %149 = load i32, i32* %b, align 4
  %idxprom166 = sext i32 %149 to i64
  %150 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data167 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %150, i32 0, i32 4
  %bb168 = bitcast %union.varray_data_tag* %data167 to [1 x %struct.basic_block_def*]*
  %arrayidx169 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb168, i32 0, i64 %idxprom166
  %151 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx169, align 8
  %end170 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %151, i32 0, i32 1
  store %struct.rtx_def* %148, %struct.rtx_def** %end170, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.164, %if.end.157
  %152 = load i32, i32* @current_nr_blocks, align 4
  %cmp172 = icmp sgt i32 %152, 1
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.171
  %153 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %154 = bitcast %struct.candidate* %153 to i8*
  call void @free(i8* %154) #4
  %155 = load i32*, i32** @bblst_table, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #4
  %157 = load i32*, i32** @bitlst_table, align 8
  %158 = bitcast i32* %157 to i8*
  call void @free(i8* %158) #4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %if.end.171
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175, %if.then.101
  %159 = load i32, i32* %bb, align 4
  %inc177 = add nsw i32 %159, 1
  store i32 %inc177, i32* %bb, align 4
  br label %for.cond.91

for.end.178:                                      ; preds = %for.cond.91
  %160 = load i32, i32* %sched_rgn_n_insns, align 4
  %161 = load i32, i32* %rgn_n_insns, align 4
  %cmp179 = icmp ne i32 %160, %161
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %for.end.178
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 2792, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.schedule_region, i32 0, i32 0)) #5
  unreachable

if.end.182:                                       ; preds = %for.end.178
  %162 = load i32, i32* @write_symbols, align 4
  %cmp183 = icmp ne i32 %162, 0
  br i1 %cmp183, label %if.then.185, label %if.end.198

if.then.185:                                      ; preds = %if.end.182
  store i32 0, i32* %bb, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.195, %if.then.185
  %163 = load i32, i32* %bb, align 4
  %164 = load i32, i32* @current_nr_blocks, align 4
  %cmp187 = icmp slt i32 %163, %164
  br i1 %cmp187, label %for.body.189, label %for.end.197

for.body.189:                                     ; preds = %for.cond.186
  %165 = load i32, i32* @current_blocks, align 4
  %166 = load i32, i32* %bb, align 4
  %add192 = add nsw i32 %165, %166
  %idxprom193 = sext i32 %add192 to i64
  %167 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %167, i64 %idxprom193
  %168 = load i32, i32* %arrayidx194, align 4
  call void @get_block_head_tail(i32 %168, %struct.rtx_def** %head190, %struct.rtx_def** %tail191)
  %169 = load %struct.rtx_def*, %struct.rtx_def** %head190, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %tail191, align 8
  call void @restore_line_notes(%struct.rtx_def* %169, %struct.rtx_def* %170)
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.189
  %171 = load i32, i32* %bb, align 4
  %inc196 = add nsw i32 %171, 1
  store i32 %inc196, i32* %bb, align 4
  br label %for.cond.186

for.end.197:                                      ; preds = %for.cond.186
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %if.end.182
  call void @free_pending_lists()
  call void @finish_deps_global()
  %172 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %173 = bitcast %struct.deps* %172 to i8*
  call void @free(i8* %173) #4
  %174 = load i32, i32* @current_nr_blocks, align 4
  %cmp199 = icmp sgt i32 %174, 1
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.198
  %175 = load float*, float** @prob, align 8
  %176 = bitcast float* %175 to i8*
  call void @free(i8* %176) #4
  %177 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %178 = bitcast %struct.simple_bitmap_def** %177 to i8*
  call void @free(i8* %178) #4
  %179 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %180 = bitcast %struct.simple_bitmap_def** %179 to i8*
  call void @free(i8* %180) #4
  %181 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %182 = bitcast %struct.simple_bitmap_def** %181 to i8*
  call void @free(i8* %182) #4
  %183 = load i32*, i32** @edge_to_bit, align 8
  %184 = bitcast i32* %183 to i8*
  call void @free(i8* %184) #4
  %185 = load i32*, i32** @rgn_edges, align 8
  %186 = bitcast i32* %185 to i8*
  call void @free(i8* %186) #4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.end.198
  ret void
}

declare void @allocate_reg_life_data() #1

declare void @compute_bb_for_insn(i32) #1

declare i32 @get_max_uid() #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_ones(%struct.simple_bitmap_def*) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

declare void @reposition_prologue_and_epilogue_notes(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_insns() #1

declare void @rm_redundant_line_notes() #1

declare void @scope_to_insns_finalize() #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @sched_finish() #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @find_single_block_region() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.region, %struct.region* %6, i64 %idxprom1
  %rgn_nr_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx2, i32 0, i32 0
  store i32 1, i32* %rgn_nr_blocks, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.region, %struct.region* %9, i64 %idxprom3
  %rgn_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx4, i32 0, i32 1
  store i32 %7, i32* %rgn_blocks, align 4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** @containing_rgn, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** @block_to_bb, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* @n_basic_blocks, align 4
  store i32 %16, i32* @nr_regions, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_cfg_nonregular() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 21
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 2
  %3 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_forced_labels = getelementptr inbounds %struct.expr_status, %struct.expr_status* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels, align 8
  %tobool1 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %has_computed_jump = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 56
  %6 = bitcast i24* %has_computed_jump to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 11
  %bf.clear = and i32 %bf.lshr, 1
  %tobool4 = icmp ne i32 %bf.clear, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %call = call zeroext i1 @current_function_has_exception_handlers()
  br i1 %call, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.6
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.8
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %b, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  store i32 %bf.clear11, i32* %code, align 4
  %15 = load i32, i32* %code, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %conv = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv, 105
  br i1 %cmp14, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %for.cond.9
  %17 = load i32, i32* %code, align 4
  %cmp16 = icmp ne i32 %17, 33
  br i1 %cmp16, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %land.lhs.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call19 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %18, i32 13, %struct.rtx_def* null)
  store %struct.rtx_def* %call19, %struct.rtx_def** %note, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool20 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.37

land.lhs.true.21:                                 ; preds = %if.then.18
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load23 = load i32, i32* %22, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 33
  br i1 %cmp25, label %land.lhs.true.27, label %if.then.36

land.lhs.true.27:                                 ; preds = %land.lhs.true.21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 2
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %24, i32 13, %struct.rtx_def* %26)
  %tobool35 = icmp ne %struct.rtx_def* %call34, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.27, %land.lhs.true.21
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.27, %if.then.18
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %for.cond.9
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %28 = load i32, i32* %b, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data40 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %bb41 = bitcast %union.varray_data_tag* %data40 to [1 x %struct.basic_block_def*]*
  %arrayidx42 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb41, i32 0, i64 %idxprom39
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx42, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp43 = icmp eq %struct.rtx_def* %27, %31
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.38
  br label %for.end

if.end.46:                                        ; preds = %if.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 2
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn, align 8
  br label %for.cond.9

for.end:                                          ; preds = %if.then.45
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %34 = load i32, i32* %b, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.51, %if.then.36, %if.then.7, %if.then.5, %if.then.2, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare %struct.edge_list* @create_edge_list() #1

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @build_control_flow(%struct.edge_list* %edge_list) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %i = alloca i32, align 4
  %unreachable = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  store i32 0, i32* %unreachable, align 4
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
  store %struct.basic_block_def* %6, %struct.basic_block_def** %b, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 4
  %8 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp2 = icmp eq %struct.edge_def* %8, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 4
  %10 = load %struct.edge_def*, %struct.edge_def** %pred3, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 2
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %cmp4 = icmp eq %struct.basic_block_def* %11, %12
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 4
  %14 = load %struct.edge_def*, %struct.edge_def** %pred5, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 0
  %15 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp6 = icmp eq %struct.edge_def* %15, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  store i32 1, i32* %unreachable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %17 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %18 = bitcast i8* %call to i32*
  store i32* %18, i32** @in_edges, align 8
  %19 = load i32, i32* @n_basic_blocks, align 4
  %conv7 = sext i32 %19 to i64
  %call8 = call noalias i8* @xcalloc(i64 %conv7, i64 4)
  %20 = bitcast i8* %call8 to i32*
  store i32* %20, i32** @out_edges, align 8
  %21 = load i32, i32* %num_edges, align 4
  %conv9 = sext i32 %21 to i64
  %call10 = call noalias i8* @xcalloc(i64 %conv9, i64 16)
  %22 = bitcast i8* %call10 to %struct.haifa_edge*
  store %struct.haifa_edge* %22, %struct.haifa_edge** @edge_table, align 8
  store i32 0, i32* @nr_edges, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.28, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %num_edges, align 4
  %cmp12 = icmp slt i32 %23, %24
  br i1 %cmp12, label %for.body.14, label %for.end.30

for.body.14:                                      ; preds = %for.cond.11
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %26, i32 0, i32 2
  %27 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx16 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %27, i64 %idxprom15
  %28 = load %struct.edge_def*, %struct.edge_def** %arrayidx16, align 8
  store %struct.edge_def* %28, %struct.edge_def** %e, align 8
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 3
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp17 = icmp ne %struct.basic_block_def* %30, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %for.body.14
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 2
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src20, align 8
  %cmp21 = icmp ne %struct.basic_block_def* %32, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %land.lhs.true.19
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 2
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %src24, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index, align 4
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 3
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest25, align 8
  %index26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 11
  %38 = load i32, i32* %index26, align 4
  call void @new_edge(i32 %35, i32 %38)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %land.lhs.true.19, %for.body.14
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %39 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %39, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.11

for.end.30:                                       ; preds = %for.cond.11
  %40 = load i32, i32* @nr_edges, align 4
  %inc31 = add nsw i32 %40, 1
  store i32 %inc31, i32* @nr_edges, align 4
  %41 = load i32, i32* %unreachable, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @find_rgns(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %dom) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %dom.addr = alloca %struct.simple_bitmap_def**, align 8
  %max_hdr = alloca i32*, align 8
  %dfs_nr = alloca i32*, align 8
  %stack = alloca i32*, align 8
  %degree = alloca i32*, align 8
  %no_loops = alloca i8, align 1
  %node = alloca i32, align 4
  %child = alloca i32, align 4
  %loop_head = alloca i32, align 4
  %i = alloca i32, align 4
  %head = alloca i32, align 4
  %tail = alloca i32, align 4
  %count = alloca i32, align 4
  %sp = alloca i32, align 4
  %idx = alloca i32, align 4
  %current_edge = alloca i32, align 4
  %num_bbs = alloca i32, align 4
  %num_insns = alloca i32, align 4
  %unreachable = alloca i32, align 4
  %too_large_failure = alloca i32, align 4
  %passed = alloca %struct.simple_bitmap_def*, align 8
  %header = alloca %struct.simple_bitmap_def*, align 8
  %inner = alloca %struct.simple_bitmap_def*, align 8
  %in_queue = alloca %struct.simple_bitmap_def*, align 8
  %in_stack = alloca %struct.simple_bitmap_def*, align 8
  %num_edges = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %queue = alloca i32*, align 8
  %e443 = alloca %struct.edge_def*, align 8
  %j = alloca i32, align 4
  %e565 = alloca %struct.edge_def*, align 8
  %e612 = alloca %struct.edge_def*, align 8
  %e703 = alloca %struct.edge_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.simple_bitmap_def** %dom, %struct.simple_bitmap_def*** %dom.addr, align 8
  store i8 1, i8* %no_loops, align 1
  store i32 0, i32* %count, align 4
  store i32 0, i32* %idx, align 4
  %0 = load i32*, i32** @out_edges, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %current_edge, align 4
  %2 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %2, i32 0, i32 1
  %3 = load i32, i32* %num_edges1, align 4
  store i32 %3, i32* %num_edges, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @xmalloc(i64 %mul)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %max_hdr, align 8
  %6 = load i32, i32* @n_basic_blocks, align 4
  %conv2 = sext i32 %6 to i64
  %call3 = call noalias i8* @xcalloc(i64 %conv2, i64 4)
  %7 = bitcast i8* %call3 to i32*
  store i32* %7, i32** %dfs_nr, align 8
  %8 = load i32, i32* @nr_edges, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias i8* @xmalloc(i64 %mul5)
  %9 = bitcast i8* %call6 to i32*
  store i32* %9, i32** %stack, align 8
  %10 = load i32, i32* @n_basic_blocks, align 4
  %call7 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %10)
  store %struct.simple_bitmap_def* %call7, %struct.simple_bitmap_def** %inner, align 8
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %11)
  %12 = load i32, i32* @n_basic_blocks, align 4
  %call8 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %12)
  store %struct.simple_bitmap_def* %call8, %struct.simple_bitmap_def** %header, align 8
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %header, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %13)
  %14 = load i32, i32* @nr_edges, align 4
  %call9 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %14)
  store %struct.simple_bitmap_def* %call9, %struct.simple_bitmap_def** %passed, align 8
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %15)
  %16 = load i32, i32* @n_basic_blocks, align 4
  %call10 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %16)
  store %struct.simple_bitmap_def* %call10, %struct.simple_bitmap_def** %in_queue, align 8
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %17)
  %18 = load i32, i32* @n_basic_blocks, align 4
  %call11 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %18)
  store %struct.simple_bitmap_def* %call11, %struct.simple_bitmap_def** %in_stack, align 8
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %19)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32*, i32** %max_hdr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  store i32 -1, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %sp, align 4
  br label %while.body

while.body:                                       ; preds = %for.end, %if.end.144, %if.end.233, %if.end.335, %if.end.367
  %25 = load i32, i32* %current_edge, align 4
  %cmp14 = icmp eq i32 %25, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %26 = load i32, i32* %current_edge, align 4
  %div = udiv i32 %26, 64
  %idxprom16 = zext i32 %div to i64
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %27, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom16
  %28 = load i64, i64* %arrayidx17, align 8
  %29 = load i32, i32* %current_edge, align 4
  %rem = urem i32 %29, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %28, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.145

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.128, %if.then
  %30 = load i32, i32* %sp, align 4
  %cmp19 = icmp sge i32 %30, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.18
  %31 = load i32, i32* %current_edge, align 4
  %cmp21 = icmp eq i32 %31, 0
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %32 = load i32, i32* %current_edge, align 4
  %div23 = udiv i32 %32, 64
  %idxprom24 = zext i32 %div23 to i64
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms25 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %33, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [1 x i64], [1 x i64]* %elms25, i32 0, i64 %idxprom24
  %34 = load i64, i64* %arrayidx26, align 8
  %35 = load i32, i32* %current_edge, align 4
  %rem27 = urem i32 %35, 64
  %sh_prom28 = zext i32 %rem27 to i64
  %shr29 = lshr i64 %34, %sh_prom28
  %and30 = and i64 %shr29, 1
  %tobool31 = icmp ne i64 %and30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %36 = phi i1 [ true, %land.rhs ], [ %tobool31, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond.18
  %37 = phi i1 [ false, %while.cond.18 ], [ %36, %lor.end ]
  br i1 %37, label %while.body.32, label %while.end

while.body.32:                                    ; preds = %land.end
  %38 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %sp, align 4
  %idxprom33 = sext i32 %38 to i64
  %39 = load i32*, i32** %stack, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %39, i64 %idxprom33
  %40 = load i32, i32* %arrayidx34, align 4
  store i32 %40, i32* %current_edge, align 4
  %41 = load i32, i32* %current_edge, align 4
  %idxprom35 = sext i32 %41 to i64
  %42 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx36 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %42, i64 %idxprom35
  %from_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx36, i32 0, i32 0
  %43 = load i32, i32* %from_block, align 4
  store i32 %43, i32* %node, align 4
  %44 = load i32, i32* %current_edge, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx38 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %45, i64 %idxprom37
  %to_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx38, i32 0, i32 1
  %46 = load i32, i32* %to_block, align 4
  store i32 %46, i32* %child, align 4
  %47 = load i32, i32* %child, align 4
  %rem39 = urem i32 %47, 64
  %sh_prom40 = zext i32 %rem39 to i64
  %shl = shl i64 1, %sh_prom40
  %neg = xor i64 %shl, -1
  %48 = load i32, i32* %child, align 4
  %div41 = udiv i32 %48, 64
  %idxprom42 = zext i32 %div41 to i64
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %elms43 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %49, i32 0, i32 3
  %arrayidx44 = getelementptr inbounds [1 x i64], [1 x i64]* %elms43, i32 0, i64 %idxprom42
  %50 = load i64, i64* %arrayidx44, align 8
  %and45 = and i64 %50, %neg
  store i64 %and45, i64* %arrayidx44, align 8
  %51 = load i32, i32* %child, align 4
  %idxprom46 = sext i32 %51 to i64
  %52 = load i32*, i32** %max_hdr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 %idxprom46
  %53 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp sge i32 %53, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %while.body.32
  %54 = load i32, i32* %child, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i32*, i32** %max_hdr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %55, i64 %idxprom50
  %56 = load i32, i32* %arrayidx51, align 4
  %div52 = udiv i32 %56, 64
  %idxprom53 = zext i32 %div52 to i64
  %57 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %elms54 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %57, i32 0, i32 3
  %arrayidx55 = getelementptr inbounds [1 x i64], [1 x i64]* %elms54, i32 0, i64 %idxprom53
  %58 = load i64, i64* %arrayidx55, align 8
  %59 = load i32, i32* %child, align 4
  %idxprom56 = sext i32 %59 to i64
  %60 = load i32*, i32** %max_hdr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %60, i64 %idxprom56
  %61 = load i32, i32* %arrayidx57, align 4
  %rem58 = urem i32 %61, 64
  %sh_prom59 = zext i32 %rem58 to i64
  %shr60 = lshr i64 %58, %sh_prom59
  %and61 = and i64 %shr60, 1
  %tobool62 = icmp ne i64 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.128

if.then.63:                                       ; preds = %land.lhs.true
  %62 = load i32, i32* %node, align 4
  %idxprom64 = sext i32 %62 to i64
  %63 = load i32*, i32** %max_hdr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %63, i64 %idxprom64
  %64 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %64, -1
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.then.63
  %65 = load i32, i32* %child, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load i32*, i32** %max_hdr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %66, i64 %idxprom69
  %67 = load i32, i32* %arrayidx70, align 4
  %68 = load i32, i32* %node, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load i32*, i32** %max_hdr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %69, i64 %idxprom71
  store i32 %67, i32* %arrayidx72, align 4
  br label %if.end.127

if.else:                                          ; preds = %if.then.63
  %70 = load i32, i32* %node, align 4
  %idxprom73 = sext i32 %70 to i64
  %71 = load i32*, i32** %max_hdr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %71, i64 %idxprom73
  %72 = load i32, i32* %arrayidx74, align 4
  %idxprom75 = sext i32 %72 to i64
  %73 = load i32*, i32** %dfs_nr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %73, i64 %idxprom75
  %74 = load i32, i32* %arrayidx76, align 4
  %75 = load i32, i32* %child, align 4
  %idxprom77 = sext i32 %75 to i64
  %76 = load i32*, i32** %max_hdr, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %76, i64 %idxprom77
  %77 = load i32, i32* %arrayidx78, align 4
  %idxprom79 = sext i32 %77 to i64
  %78 = load i32*, i32** %dfs_nr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %78, i64 %idxprom79
  %79 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp sgt i32 %74, %79
  br i1 %cmp81, label %if.then.83, label %if.else.97

if.then.83:                                       ; preds = %if.else
  %80 = load i32, i32* %child, align 4
  %idxprom84 = sext i32 %80 to i64
  %81 = load i32*, i32** %max_hdr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %81, i64 %idxprom84
  %82 = load i32, i32* %arrayidx85, align 4
  %rem86 = urem i32 %82, 64
  %sh_prom87 = zext i32 %rem86 to i64
  %shl88 = shl i64 1, %sh_prom87
  %neg89 = xor i64 %shl88, -1
  %83 = load i32, i32* %child, align 4
  %idxprom90 = sext i32 %83 to i64
  %84 = load i32*, i32** %max_hdr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %84, i64 %idxprom90
  %85 = load i32, i32* %arrayidx91, align 4
  %div92 = udiv i32 %85, 64
  %idxprom93 = zext i32 %div92 to i64
  %86 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms94 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %86, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [1 x i64], [1 x i64]* %elms94, i32 0, i64 %idxprom93
  %87 = load i64, i64* %arrayidx95, align 8
  %and96 = and i64 %87, %neg89
  store i64 %and96, i64* %arrayidx95, align 8
  br label %if.end.126

if.else.97:                                       ; preds = %if.else
  %88 = load i32, i32* %node, align 4
  %idxprom98 = sext i32 %88 to i64
  %89 = load i32*, i32** %max_hdr, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %89, i64 %idxprom98
  %90 = load i32, i32* %arrayidx99, align 4
  %idxprom100 = sext i32 %90 to i64
  %91 = load i32*, i32** %dfs_nr, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %91, i64 %idxprom100
  %92 = load i32, i32* %arrayidx101, align 4
  %93 = load i32, i32* %child, align 4
  %idxprom102 = sext i32 %93 to i64
  %94 = load i32*, i32** %max_hdr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %94, i64 %idxprom102
  %95 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %95 to i64
  %96 = load i32*, i32** %dfs_nr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %96, i64 %idxprom104
  %97 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp slt i32 %92, %97
  br i1 %cmp106, label %if.then.108, label %if.end

if.then.108:                                      ; preds = %if.else.97
  %98 = load i32, i32* %node, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load i32*, i32** %max_hdr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %99, i64 %idxprom109
  %100 = load i32, i32* %arrayidx110, align 4
  %rem111 = urem i32 %100, 64
  %sh_prom112 = zext i32 %rem111 to i64
  %shl113 = shl i64 1, %sh_prom112
  %neg114 = xor i64 %shl113, -1
  %101 = load i32, i32* %node, align 4
  %idxprom115 = sext i32 %101 to i64
  %102 = load i32*, i32** %max_hdr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %102, i64 %idxprom115
  %103 = load i32, i32* %arrayidx116, align 4
  %div117 = udiv i32 %103, 64
  %idxprom118 = zext i32 %div117 to i64
  %104 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms119 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %104, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [1 x i64], [1 x i64]* %elms119, i32 0, i64 %idxprom118
  %105 = load i64, i64* %arrayidx120, align 8
  %and121 = and i64 %105, %neg114
  store i64 %and121, i64* %arrayidx120, align 8
  %106 = load i32, i32* %child, align 4
  %idxprom122 = sext i32 %106 to i64
  %107 = load i32*, i32** %max_hdr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %107, i64 %idxprom122
  %108 = load i32, i32* %arrayidx123, align 4
  %109 = load i32, i32* %node, align 4
  %idxprom124 = sext i32 %109 to i64
  %110 = load i32*, i32** %max_hdr, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %110, i64 %idxprom124
  store i32 %108, i32* %arrayidx125, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.108, %if.else.97
  br label %if.end.126

if.end.126:                                       ; preds = %if.end, %if.then.83
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.68
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true, %while.body.32
  %111 = load i32, i32* %current_edge, align 4
  %idxprom129 = sext i32 %111 to i64
  %112 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx130 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %112, i64 %idxprom129
  %next_out = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx130, i32 0, i32 3
  %113 = load i32, i32* %next_out, align 4
  store i32 %113, i32* %current_edge, align 4
  br label %while.cond.18

while.end:                                        ; preds = %land.end
  %114 = load i32, i32* %sp, align 4
  %cmp131 = icmp slt i32 %114, 0
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.144

land.lhs.true.133:                                ; preds = %while.end
  %115 = load i32, i32* %current_edge, align 4
  %div134 = udiv i32 %115, 64
  %idxprom135 = zext i32 %div134 to i64
  %116 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms136 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %116, i32 0, i32 3
  %arrayidx137 = getelementptr inbounds [1 x i64], [1 x i64]* %elms136, i32 0, i64 %idxprom135
  %117 = load i64, i64* %arrayidx137, align 8
  %118 = load i32, i32* %current_edge, align 4
  %rem138 = urem i32 %118, 64
  %sh_prom139 = zext i32 %rem138 to i64
  %shr140 = lshr i64 %117, %sh_prom139
  %and141 = and i64 %shr140, 1
  %tobool142 = icmp ne i64 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %land.lhs.true.133
  br label %while.end.368

if.end.144:                                       ; preds = %land.lhs.true.133, %while.end
  br label %while.body

if.end.145:                                       ; preds = %lor.lhs.false
  %119 = load i32, i32* %current_edge, align 4
  %idxprom146 = sext i32 %119 to i64
  %120 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx147 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %120, i64 %idxprom146
  %from_block148 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx147, i32 0, i32 0
  %121 = load i32, i32* %from_block148, align 4
  store i32 %121, i32* %node, align 4
  %122 = load i32, i32* %current_edge, align 4
  %idxprom149 = sext i32 %122 to i64
  %123 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx150 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %123, i64 %idxprom149
  %to_block151 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx150, i32 0, i32 1
  %124 = load i32, i32* %to_block151, align 4
  store i32 %124, i32* %child, align 4
  %125 = load i32, i32* %node, align 4
  %rem152 = urem i32 %125, 64
  %sh_prom153 = zext i32 %rem152 to i64
  %shl154 = shl i64 1, %sh_prom153
  %126 = load i32, i32* %node, align 4
  %div155 = udiv i32 %126, 64
  %idxprom156 = zext i32 %div155 to i64
  %127 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %elms157 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %127, i32 0, i32 3
  %arrayidx158 = getelementptr inbounds [1 x i64], [1 x i64]* %elms157, i32 0, i64 %idxprom156
  %128 = load i64, i64* %arrayidx158, align 8
  %or = or i64 %128, %shl154
  store i64 %or, i64* %arrayidx158, align 8
  %129 = load i32, i32* %count, align 4
  %inc159 = add nsw i32 %129, 1
  store i32 %inc159, i32* %count, align 4
  %130 = load i32, i32* %node, align 4
  %idxprom160 = sext i32 %130 to i64
  %131 = load i32*, i32** %dfs_nr, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %131, i64 %idxprom160
  store i32 %inc159, i32* %arrayidx161, align 4
  %132 = load i32, i32* %child, align 4
  %div162 = udiv i32 %132, 64
  %idxprom163 = zext i32 %div162 to i64
  %133 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %elms164 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %133, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [1 x i64], [1 x i64]* %elms164, i32 0, i64 %idxprom163
  %134 = load i64, i64* %arrayidx165, align 8
  %135 = load i32, i32* %child, align 4
  %rem166 = urem i32 %135, 64
  %sh_prom167 = zext i32 %rem166 to i64
  %shr168 = lshr i64 %134, %sh_prom167
  %and169 = and i64 %shr168, 1
  %tobool170 = icmp ne i64 %and169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.245

if.then.171:                                      ; preds = %if.end.145
  store i8 0, i8* %no_loops, align 1
  %136 = load i32, i32* %child, align 4
  %rem172 = urem i32 %136, 64
  %sh_prom173 = zext i32 %rem172 to i64
  %shl174 = shl i64 1, %sh_prom173
  %137 = load i32, i32* %child, align 4
  %div175 = udiv i32 %137, 64
  %idxprom176 = zext i32 %div175 to i64
  %138 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %header, align 8
  %elms177 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %138, i32 0, i32 3
  %arrayidx178 = getelementptr inbounds [1 x i64], [1 x i64]* %elms177, i32 0, i64 %idxprom176
  %139 = load i64, i64* %arrayidx178, align 8
  %or179 = or i64 %139, %shl174
  store i64 %or179, i64* %arrayidx178, align 8
  %140 = load i32, i32* %node, align 4
  %idxprom180 = sext i32 %140 to i64
  %141 = load i32*, i32** %max_hdr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %141, i64 %idxprom180
  %142 = load i32, i32* %arrayidx181, align 4
  %cmp182 = icmp eq i32 %142, -1
  br i1 %cmp182, label %if.then.184, label %if.else.187

if.then.184:                                      ; preds = %if.then.171
  %143 = load i32, i32* %child, align 4
  %144 = load i32, i32* %node, align 4
  %idxprom185 = sext i32 %144 to i64
  %145 = load i32*, i32** %max_hdr, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %145, i64 %idxprom185
  store i32 %143, i32* %arrayidx186, align 4
  br label %if.end.233

if.else.187:                                      ; preds = %if.then.171
  %146 = load i32, i32* %node, align 4
  %idxprom188 = sext i32 %146 to i64
  %147 = load i32*, i32** %max_hdr, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %147, i64 %idxprom188
  %148 = load i32, i32* %arrayidx189, align 4
  %idxprom190 = sext i32 %148 to i64
  %149 = load i32*, i32** %dfs_nr, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %149, i64 %idxprom190
  %150 = load i32, i32* %arrayidx191, align 4
  %151 = load i32, i32* %child, align 4
  %idxprom192 = sext i32 %151 to i64
  %152 = load i32*, i32** %dfs_nr, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %152, i64 %idxprom192
  %153 = load i32, i32* %arrayidx193, align 4
  %cmp194 = icmp sgt i32 %150, %153
  br i1 %cmp194, label %if.then.196, label %if.else.206

if.then.196:                                      ; preds = %if.else.187
  %154 = load i32, i32* %child, align 4
  %rem197 = urem i32 %154, 64
  %sh_prom198 = zext i32 %rem197 to i64
  %shl199 = shl i64 1, %sh_prom198
  %neg200 = xor i64 %shl199, -1
  %155 = load i32, i32* %child, align 4
  %div201 = udiv i32 %155, 64
  %idxprom202 = zext i32 %div201 to i64
  %156 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms203 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %156, i32 0, i32 3
  %arrayidx204 = getelementptr inbounds [1 x i64], [1 x i64]* %elms203, i32 0, i64 %idxprom202
  %157 = load i64, i64* %arrayidx204, align 8
  %and205 = and i64 %157, %neg200
  store i64 %and205, i64* %arrayidx204, align 8
  br label %if.end.232

if.else.206:                                      ; preds = %if.else.187
  %158 = load i32, i32* %node, align 4
  %idxprom207 = sext i32 %158 to i64
  %159 = load i32*, i32** %max_hdr, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %159, i64 %idxprom207
  %160 = load i32, i32* %arrayidx208, align 4
  %idxprom209 = sext i32 %160 to i64
  %161 = load i32*, i32** %dfs_nr, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %161, i64 %idxprom209
  %162 = load i32, i32* %arrayidx210, align 4
  %163 = load i32, i32* %child, align 4
  %idxprom211 = sext i32 %163 to i64
  %164 = load i32*, i32** %dfs_nr, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %164, i64 %idxprom211
  %165 = load i32, i32* %arrayidx212, align 4
  %cmp213 = icmp slt i32 %162, %165
  br i1 %cmp213, label %if.then.215, label %if.end.231

if.then.215:                                      ; preds = %if.else.206
  %166 = load i32, i32* %node, align 4
  %idxprom216 = sext i32 %166 to i64
  %167 = load i32*, i32** %max_hdr, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %167, i64 %idxprom216
  %168 = load i32, i32* %arrayidx217, align 4
  %rem218 = urem i32 %168, 64
  %sh_prom219 = zext i32 %rem218 to i64
  %shl220 = shl i64 1, %sh_prom219
  %neg221 = xor i64 %shl220, -1
  %169 = load i32, i32* %node, align 4
  %idxprom222 = sext i32 %169 to i64
  %170 = load i32*, i32** %max_hdr, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %170, i64 %idxprom222
  %171 = load i32, i32* %arrayidx223, align 4
  %div224 = udiv i32 %171, 64
  %idxprom225 = zext i32 %div224 to i64
  %172 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms226 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %172, i32 0, i32 3
  %arrayidx227 = getelementptr inbounds [1 x i64], [1 x i64]* %elms226, i32 0, i64 %idxprom225
  %173 = load i64, i64* %arrayidx227, align 8
  %and228 = and i64 %173, %neg221
  store i64 %and228, i64* %arrayidx227, align 8
  %174 = load i32, i32* %child, align 4
  %175 = load i32, i32* %node, align 4
  %idxprom229 = sext i32 %175 to i64
  %176 = load i32*, i32** %max_hdr, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %176, i64 %idxprom229
  store i32 %174, i32* %arrayidx230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.215, %if.else.206
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.196
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.184
  %177 = load i32, i32* %current_edge, align 4
  %rem234 = urem i32 %177, 64
  %sh_prom235 = zext i32 %rem234 to i64
  %shl236 = shl i64 1, %sh_prom235
  %178 = load i32, i32* %current_edge, align 4
  %div237 = udiv i32 %178, 64
  %idxprom238 = zext i32 %div237 to i64
  %179 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms239 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %179, i32 0, i32 3
  %arrayidx240 = getelementptr inbounds [1 x i64], [1 x i64]* %elms239, i32 0, i64 %idxprom238
  %180 = load i64, i64* %arrayidx240, align 8
  %or241 = or i64 %180, %shl236
  store i64 %or241, i64* %arrayidx240, align 8
  %181 = load i32, i32* %current_edge, align 4
  %idxprom242 = sext i32 %181 to i64
  %182 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx243 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %182, i64 %idxprom242
  %next_out244 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx243, i32 0, i32 3
  %183 = load i32, i32* %next_out244, align 4
  store i32 %183, i32* %current_edge, align 4
  br label %while.body

if.end.245:                                       ; preds = %if.end.145
  %184 = load i32, i32* %child, align 4
  %idxprom246 = sext i32 %184 to i64
  %185 = load i32*, i32** %dfs_nr, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %185, i64 %idxprom246
  %186 = load i32, i32* %arrayidx247, align 4
  %tobool248 = icmp ne i32 %186, 0
  br i1 %tobool248, label %if.then.249, label %if.end.347

if.then.249:                                      ; preds = %if.end.245
  %187 = load i32, i32* %child, align 4
  %idxprom250 = sext i32 %187 to i64
  %188 = load i32*, i32** %max_hdr, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %188, i64 %idxprom250
  %189 = load i32, i32* %arrayidx251, align 4
  %cmp252 = icmp sge i32 %189, 0
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.335

land.lhs.true.254:                                ; preds = %if.then.249
  %190 = load i32, i32* %child, align 4
  %idxprom255 = sext i32 %190 to i64
  %191 = load i32*, i32** %max_hdr, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %191, i64 %idxprom255
  %192 = load i32, i32* %arrayidx256, align 4
  %div257 = udiv i32 %192, 64
  %idxprom258 = zext i32 %div257 to i64
  %193 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %elms259 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %193, i32 0, i32 3
  %arrayidx260 = getelementptr inbounds [1 x i64], [1 x i64]* %elms259, i32 0, i64 %idxprom258
  %194 = load i64, i64* %arrayidx260, align 8
  %195 = load i32, i32* %child, align 4
  %idxprom261 = sext i32 %195 to i64
  %196 = load i32*, i32** %max_hdr, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %196, i64 %idxprom261
  %197 = load i32, i32* %arrayidx262, align 4
  %rem263 = urem i32 %197, 64
  %sh_prom264 = zext i32 %rem263 to i64
  %shr265 = lshr i64 %194, %sh_prom264
  %and266 = and i64 %shr265, 1
  %tobool267 = icmp ne i64 %and266, 0
  br i1 %tobool267, label %if.then.268, label %if.end.335

if.then.268:                                      ; preds = %land.lhs.true.254
  %198 = load i32, i32* %node, align 4
  %idxprom269 = sext i32 %198 to i64
  %199 = load i32*, i32** %max_hdr, align 8
  %arrayidx270 = getelementptr inbounds i32, i32* %199, i64 %idxprom269
  %200 = load i32, i32* %arrayidx270, align 4
  %cmp271 = icmp eq i32 %200, -1
  br i1 %cmp271, label %if.then.273, label %if.else.278

if.then.273:                                      ; preds = %if.then.268
  %201 = load i32, i32* %child, align 4
  %idxprom274 = sext i32 %201 to i64
  %202 = load i32*, i32** %max_hdr, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %202, i64 %idxprom274
  %203 = load i32, i32* %arrayidx275, align 4
  %204 = load i32, i32* %node, align 4
  %idxprom276 = sext i32 %204 to i64
  %205 = load i32*, i32** %max_hdr, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %205, i64 %idxprom276
  store i32 %203, i32* %arrayidx277, align 4
  br label %if.end.334

if.else.278:                                      ; preds = %if.then.268
  %206 = load i32, i32* %node, align 4
  %idxprom279 = sext i32 %206 to i64
  %207 = load i32*, i32** %max_hdr, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %207, i64 %idxprom279
  %208 = load i32, i32* %arrayidx280, align 4
  %idxprom281 = sext i32 %208 to i64
  %209 = load i32*, i32** %dfs_nr, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %209, i64 %idxprom281
  %210 = load i32, i32* %arrayidx282, align 4
  %211 = load i32, i32* %child, align 4
  %idxprom283 = sext i32 %211 to i64
  %212 = load i32*, i32** %max_hdr, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %212, i64 %idxprom283
  %213 = load i32, i32* %arrayidx284, align 4
  %idxprom285 = sext i32 %213 to i64
  %214 = load i32*, i32** %dfs_nr, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %214, i64 %idxprom285
  %215 = load i32, i32* %arrayidx286, align 4
  %cmp287 = icmp sgt i32 %210, %215
  br i1 %cmp287, label %if.then.289, label %if.else.303

if.then.289:                                      ; preds = %if.else.278
  %216 = load i32, i32* %child, align 4
  %idxprom290 = sext i32 %216 to i64
  %217 = load i32*, i32** %max_hdr, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %217, i64 %idxprom290
  %218 = load i32, i32* %arrayidx291, align 4
  %rem292 = urem i32 %218, 64
  %sh_prom293 = zext i32 %rem292 to i64
  %shl294 = shl i64 1, %sh_prom293
  %neg295 = xor i64 %shl294, -1
  %219 = load i32, i32* %child, align 4
  %idxprom296 = sext i32 %219 to i64
  %220 = load i32*, i32** %max_hdr, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %220, i64 %idxprom296
  %221 = load i32, i32* %arrayidx297, align 4
  %div298 = udiv i32 %221, 64
  %idxprom299 = zext i32 %div298 to i64
  %222 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms300 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %222, i32 0, i32 3
  %arrayidx301 = getelementptr inbounds [1 x i64], [1 x i64]* %elms300, i32 0, i64 %idxprom299
  %223 = load i64, i64* %arrayidx301, align 8
  %and302 = and i64 %223, %neg295
  store i64 %and302, i64* %arrayidx301, align 8
  br label %if.end.333

if.else.303:                                      ; preds = %if.else.278
  %224 = load i32, i32* %node, align 4
  %idxprom304 = sext i32 %224 to i64
  %225 = load i32*, i32** %max_hdr, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %225, i64 %idxprom304
  %226 = load i32, i32* %arrayidx305, align 4
  %idxprom306 = sext i32 %226 to i64
  %227 = load i32*, i32** %dfs_nr, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %227, i64 %idxprom306
  %228 = load i32, i32* %arrayidx307, align 4
  %229 = load i32, i32* %child, align 4
  %idxprom308 = sext i32 %229 to i64
  %230 = load i32*, i32** %max_hdr, align 8
  %arrayidx309 = getelementptr inbounds i32, i32* %230, i64 %idxprom308
  %231 = load i32, i32* %arrayidx309, align 4
  %idxprom310 = sext i32 %231 to i64
  %232 = load i32*, i32** %dfs_nr, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %232, i64 %idxprom310
  %233 = load i32, i32* %arrayidx311, align 4
  %cmp312 = icmp slt i32 %228, %233
  br i1 %cmp312, label %if.then.314, label %if.end.332

if.then.314:                                      ; preds = %if.else.303
  %234 = load i32, i32* %node, align 4
  %idxprom315 = sext i32 %234 to i64
  %235 = load i32*, i32** %max_hdr, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %235, i64 %idxprom315
  %236 = load i32, i32* %arrayidx316, align 4
  %rem317 = urem i32 %236, 64
  %sh_prom318 = zext i32 %rem317 to i64
  %shl319 = shl i64 1, %sh_prom318
  %neg320 = xor i64 %shl319, -1
  %237 = load i32, i32* %node, align 4
  %idxprom321 = sext i32 %237 to i64
  %238 = load i32*, i32** %max_hdr, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %238, i64 %idxprom321
  %239 = load i32, i32* %arrayidx322, align 4
  %div323 = udiv i32 %239, 64
  %idxprom324 = zext i32 %div323 to i64
  %240 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms325 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %240, i32 0, i32 3
  %arrayidx326 = getelementptr inbounds [1 x i64], [1 x i64]* %elms325, i32 0, i64 %idxprom324
  %241 = load i64, i64* %arrayidx326, align 8
  %and327 = and i64 %241, %neg320
  store i64 %and327, i64* %arrayidx326, align 8
  %242 = load i32, i32* %child, align 4
  %idxprom328 = sext i32 %242 to i64
  %243 = load i32*, i32** %max_hdr, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %243, i64 %idxprom328
  %244 = load i32, i32* %arrayidx329, align 4
  %245 = load i32, i32* %node, align 4
  %idxprom330 = sext i32 %245 to i64
  %246 = load i32*, i32** %max_hdr, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %246, i64 %idxprom330
  store i32 %244, i32* %arrayidx331, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.314, %if.else.303
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.289
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.then.273
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %land.lhs.true.254, %if.then.249
  %247 = load i32, i32* %current_edge, align 4
  %rem336 = urem i32 %247, 64
  %sh_prom337 = zext i32 %rem336 to i64
  %shl338 = shl i64 1, %sh_prom337
  %248 = load i32, i32* %current_edge, align 4
  %div339 = udiv i32 %248, 64
  %idxprom340 = zext i32 %div339 to i64
  %249 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms341 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %249, i32 0, i32 3
  %arrayidx342 = getelementptr inbounds [1 x i64], [1 x i64]* %elms341, i32 0, i64 %idxprom340
  %250 = load i64, i64* %arrayidx342, align 8
  %or343 = or i64 %250, %shl338
  store i64 %or343, i64* %arrayidx342, align 8
  %251 = load i32, i32* %current_edge, align 4
  %idxprom344 = sext i32 %251 to i64
  %252 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx345 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %252, i64 %idxprom344
  %next_out346 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx345, i32 0, i32 3
  %253 = load i32, i32* %next_out346, align 4
  store i32 %253, i32* %current_edge, align 4
  br label %while.body

if.end.347:                                       ; preds = %if.end.245
  %254 = load i32, i32* %current_edge, align 4
  %255 = load i32, i32* %sp, align 4
  %inc348 = add nsw i32 %255, 1
  store i32 %inc348, i32* %sp, align 4
  %idxprom349 = sext i32 %inc348 to i64
  %256 = load i32*, i32** %stack, align 8
  %arrayidx350 = getelementptr inbounds i32, i32* %256, i64 %idxprom349
  store i32 %254, i32* %arrayidx350, align 4
  %257 = load i32, i32* %current_edge, align 4
  %rem351 = urem i32 %257, 64
  %sh_prom352 = zext i32 %rem351 to i64
  %shl353 = shl i64 1, %sh_prom352
  %258 = load i32, i32* %current_edge, align 4
  %div354 = udiv i32 %258, 64
  %idxprom355 = zext i32 %div354 to i64
  %259 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %elms356 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %259, i32 0, i32 3
  %arrayidx357 = getelementptr inbounds [1 x i64], [1 x i64]* %elms356, i32 0, i64 %idxprom355
  %260 = load i64, i64* %arrayidx357, align 8
  %or358 = or i64 %260, %shl353
  store i64 %or358, i64* %arrayidx357, align 8
  %261 = load i32, i32* %child, align 4
  %idxprom359 = sext i32 %261 to i64
  %262 = load i32*, i32** @out_edges, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %262, i64 %idxprom359
  %263 = load i32, i32* %arrayidx360, align 4
  store i32 %263, i32* %current_edge, align 4
  %264 = load i32, i32* %current_edge, align 4
  %cmp361 = icmp eq i32 %264, 0
  br i1 %cmp361, label %if.then.363, label %if.end.367

if.then.363:                                      ; preds = %if.end.347
  %265 = load i32, i32* %count, align 4
  %inc364 = add nsw i32 %265, 1
  store i32 %inc364, i32* %count, align 4
  %266 = load i32, i32* %child, align 4
  %idxprom365 = sext i32 %266 to i64
  %267 = load i32*, i32** %dfs_nr, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %267, i64 %idxprom365
  store i32 %inc364, i32* %arrayidx366, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.363, %if.end.347
  br label %while.body

while.end.368:                                    ; preds = %if.then.143
  store i32 0, i32* %unreachable, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.379, %while.end.368
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* @n_basic_blocks, align 4
  %cmp370 = icmp slt i32 %268, %269
  br i1 %cmp370, label %for.body.372, label %for.end.381

for.body.372:                                     ; preds = %for.cond.369
  %270 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %270 to i64
  %271 = load i32*, i32** %dfs_nr, align 8
  %arrayidx374 = getelementptr inbounds i32, i32* %271, i64 %idxprom373
  %272 = load i32, i32* %arrayidx374, align 4
  %cmp375 = icmp eq i32 %272, 0
  br i1 %cmp375, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %for.body.372
  store i32 1, i32* %unreachable, align 4
  br label %for.end.381

if.end.378:                                       ; preds = %for.body.372
  br label %for.inc.379

for.inc.379:                                      ; preds = %if.end.378
  %273 = load i32, i32* %i, align 4
  %inc380 = add nsw i32 %273, 1
  store i32 %inc380, i32* %i, align 4
  br label %for.cond.369

for.end.381:                                      ; preds = %if.then.377, %for.cond.369
  %274 = load i32*, i32** %dfs_nr, align 8
  store i32* %274, i32** %degree, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.388, %for.end.381
  %275 = load i32, i32* %i, align 4
  %276 = load i32, i32* @n_basic_blocks, align 4
  %cmp383 = icmp slt i32 %275, %276
  br i1 %cmp383, label %for.body.385, label %for.end.390

for.body.385:                                     ; preds = %for.cond.382
  %277 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %277 to i64
  %278 = load i32*, i32** %degree, align 8
  %arrayidx387 = getelementptr inbounds i32, i32* %278, i64 %idxprom386
  store i32 0, i32* %arrayidx387, align 4
  br label %for.inc.388

for.inc.388:                                      ; preds = %for.body.385
  %279 = load i32, i32* %i, align 4
  %inc389 = add nsw i32 %279, 1
  store i32 %inc389, i32* %i, align 4
  br label %for.cond.382

for.end.390:                                      ; preds = %for.cond.382
  store i32 0, i32* %i, align 4
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc.405, %for.end.390
  %280 = load i32, i32* %i, align 4
  %281 = load i32, i32* %num_edges, align 4
  %cmp392 = icmp slt i32 %280, %281
  br i1 %cmp392, label %for.body.394, label %for.end.407

for.body.394:                                     ; preds = %for.cond.391
  %282 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %282 to i64
  %283 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %283, i32 0, i32 2
  %284 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx396 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %284, i64 %idxprom395
  %285 = load %struct.edge_def*, %struct.edge_def** %arrayidx396, align 8
  store %struct.edge_def* %285, %struct.edge_def** %e, align 8
  %286 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %286, i32 0, i32 3
  %287 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp397 = icmp ne %struct.basic_block_def* %287, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp397, label %if.then.399, label %if.end.404

if.then.399:                                      ; preds = %for.body.394
  %288 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest400 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %288, i32 0, i32 3
  %289 = load %struct.basic_block_def*, %struct.basic_block_def** %dest400, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %289, i32 0, i32 11
  %290 = load i32, i32* %index, align 4
  %idxprom401 = sext i32 %290 to i64
  %291 = load i32*, i32** %degree, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %291, i64 %idxprom401
  %292 = load i32, i32* %arrayidx402, align 4
  %inc403 = add nsw i32 %292, 1
  store i32 %inc403, i32* %arrayidx402, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.399, %for.body.394
  br label %for.inc.405

for.inc.405:                                      ; preds = %if.end.404
  %293 = load i32, i32* %i, align 4
  %inc406 = add nsw i32 %293, 1
  store i32 %inc406, i32* %i, align 4
  br label %for.cond.391

for.end.407:                                      ; preds = %for.cond.391
  %294 = load i32, i32* %unreachable, align 4
  %tobool408 = icmp ne i32 %294, 0
  br i1 %tobool408, label %if.end.750, label %if.then.409

if.then.409:                                      ; preds = %for.end.407
  %295 = load i8, i8* %no_loops, align 1
  %tobool410 = icmp ne i8 %295, 0
  br i1 %tobool410, label %if.then.411, label %if.end.415

if.then.411:                                      ; preds = %if.then.409
  %296 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %header, align 8
  %elms412 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %296, i32 0, i32 3
  %arrayidx413 = getelementptr inbounds [1 x i64], [1 x i64]* %elms412, i32 0, i64 0
  %297 = load i64, i64* %arrayidx413, align 8
  %or414 = or i64 %297, 1
  store i64 %or414, i64* %arrayidx413, align 8
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.411, %if.then.409
  %298 = load i32, i32* @n_basic_blocks, align 4
  %conv416 = sext i32 %298 to i64
  %mul417 = mul i64 %conv416, 4
  %call418 = call noalias i8* @xmalloc(i64 %mul417)
  %299 = bitcast i8* %call418 to i32*
  store i32* %299, i32** %queue, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.747, %if.end.415
  %300 = load i32, i32* %i, align 4
  %301 = load i32, i32* @n_basic_blocks, align 4
  %cmp420 = icmp slt i32 %300, %301
  br i1 %cmp420, label %for.body.422, label %for.end.749

for.body.422:                                     ; preds = %for.cond.419
  %302 = load i32, i32* %i, align 4
  %div423 = udiv i32 %302, 64
  %idxprom424 = zext i32 %div423 to i64
  %303 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %header, align 8
  %elms425 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %303, i32 0, i32 3
  %arrayidx426 = getelementptr inbounds [1 x i64], [1 x i64]* %elms425, i32 0, i64 %idxprom424
  %304 = load i64, i64* %arrayidx426, align 8
  %305 = load i32, i32* %i, align 4
  %rem427 = urem i32 %305, 64
  %sh_prom428 = zext i32 %rem427 to i64
  %shr429 = lshr i64 %304, %sh_prom428
  %and430 = and i64 %shr429, 1
  %tobool431 = icmp ne i64 %and430, 0
  br i1 %tobool431, label %land.lhs.true.432, label %if.end.746

land.lhs.true.432:                                ; preds = %for.body.422
  %306 = load i32, i32* %i, align 4
  %div433 = udiv i32 %306, 64
  %idxprom434 = zext i32 %div433 to i64
  %307 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %elms435 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %307, i32 0, i32 3
  %arrayidx436 = getelementptr inbounds [1 x i64], [1 x i64]* %elms435, i32 0, i64 %idxprom434
  %308 = load i64, i64* %arrayidx436, align 8
  %309 = load i32, i32* %i, align 4
  %rem437 = urem i32 %309, 64
  %sh_prom438 = zext i32 %rem437 to i64
  %shr439 = lshr i64 %308, %sh_prom438
  %and440 = and i64 %shr439, 1
  %tobool441 = icmp ne i64 %and440, 0
  br i1 %tobool441, label %if.then.442, label %if.end.746

if.then.442:                                      ; preds = %land.lhs.true.432
  store i32 0, i32* %j, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.470, %if.then.442
  %310 = load i32, i32* %j, align 4
  %311 = load i32, i32* @n_basic_blocks, align 4
  %cmp445 = icmp slt i32 %310, %311
  br i1 %cmp445, label %for.body.447, label %for.end.472

for.body.447:                                     ; preds = %for.cond.444
  %312 = load i32, i32* %i, align 4
  %313 = load i32, i32* %j, align 4
  %idxprom448 = sext i32 %313 to i64
  %314 = load i32*, i32** %max_hdr, align 8
  %arrayidx449 = getelementptr inbounds i32, i32* %314, i64 %idxprom448
  %315 = load i32, i32* %arrayidx449, align 4
  %cmp450 = icmp eq i32 %312, %315
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.469

land.lhs.true.452:                                ; preds = %for.body.447
  %316 = load i32, i32* %i, align 4
  %317 = load i32, i32* %j, align 4
  %cmp453 = icmp ne i32 %316, %317
  br i1 %cmp453, label %if.then.455, label %if.end.469

if.then.455:                                      ; preds = %land.lhs.true.452
  %318 = load i32, i32* %i, align 4
  %div456 = udiv i32 %318, 64
  %idxprom457 = zext i32 %div456 to i64
  %319 = load i32, i32* %j, align 4
  %idxprom458 = sext i32 %319 to i64
  %320 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom.addr, align 8
  %arrayidx459 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %320, i64 %idxprom458
  %321 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx459, align 8
  %elms460 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %321, i32 0, i32 3
  %arrayidx461 = getelementptr inbounds [1 x i64], [1 x i64]* %elms460, i32 0, i64 %idxprom457
  %322 = load i64, i64* %arrayidx461, align 8
  %323 = load i32, i32* %i, align 4
  %rem462 = urem i32 %323, 64
  %sh_prom463 = zext i32 %rem462 to i64
  %shr464 = lshr i64 %322, %sh_prom463
  %and465 = and i64 %shr464, 1
  %tobool466 = icmp ne i64 %and465, 0
  br i1 %tobool466, label %if.end.468, label %if.then.467

if.then.467:                                      ; preds = %if.then.455
  br label %for.end.472

if.end.468:                                       ; preds = %if.then.455
  br label %if.end.469

if.end.469:                                       ; preds = %if.end.468, %land.lhs.true.452, %for.body.447
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.469
  %324 = load i32, i32* %j, align 4
  %inc471 = add nsw i32 %324, 1
  store i32 %inc471, i32* %j, align 4
  br label %for.cond.444

for.end.472:                                      ; preds = %if.then.467, %for.cond.444
  %325 = load i32, i32* %j, align 4
  %326 = load i32, i32* @n_basic_blocks, align 4
  %cmp473 = icmp ne i32 %325, %326
  br i1 %cmp473, label %if.then.475, label %if.end.476

if.then.475:                                      ; preds = %for.end.472
  br label %for.inc.747

if.end.476:                                       ; preds = %for.end.472
  store i32 -1, i32* %tail, align 4
  store i32 -1, i32* %head, align 4
  store i32 0, i32* %too_large_failure, align 4
  %327 = load i32, i32* %i, align 4
  %idxprom477 = sext i32 %327 to i64
  %328 = load i32*, i32** %max_hdr, align 8
  %arrayidx478 = getelementptr inbounds i32, i32* %328, i64 %idxprom477
  %329 = load i32, i32* %arrayidx478, align 4
  store i32 %329, i32* %loop_head, align 4
  %330 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %330 to i64
  %331 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %331, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx480 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom479
  %332 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx480, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %332, i32 0, i32 5
  %333 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %333, %struct.edge_def** %e443, align 8
  br label %for.cond.481

for.cond.481:                                     ; preds = %for.inc.494, %if.end.476
  %334 = load %struct.edge_def*, %struct.edge_def** %e443, align 8
  %tobool482 = icmp ne %struct.edge_def* %334, null
  br i1 %tobool482, label %for.body.483, label %for.end.495

for.body.483:                                     ; preds = %for.cond.481
  %335 = load %struct.edge_def*, %struct.edge_def** %e443, align 8
  %dest484 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %335, i32 0, i32 3
  %336 = load %struct.basic_block_def*, %struct.basic_block_def** %dest484, align 8
  %cmp485 = icmp ne %struct.basic_block_def* %336, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp485, label %if.then.487, label %if.end.493

if.then.487:                                      ; preds = %for.body.483
  %337 = load %struct.edge_def*, %struct.edge_def** %e443, align 8
  %dest488 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %337, i32 0, i32 3
  %338 = load %struct.basic_block_def*, %struct.basic_block_def** %dest488, align 8
  %index489 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %338, i32 0, i32 11
  %339 = load i32, i32* %index489, align 4
  %idxprom490 = sext i32 %339 to i64
  %340 = load i32*, i32** %degree, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %340, i64 %idxprom490
  %341 = load i32, i32* %arrayidx491, align 4
  %dec492 = add nsw i32 %341, -1
  store i32 %dec492, i32* %arrayidx491, align 4
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.487, %for.body.483
  br label %for.inc.494

for.inc.494:                                      ; preds = %if.end.493
  %342 = load %struct.edge_def*, %struct.edge_def** %e443, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %342, i32 0, i32 1
  %343 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %343, %struct.edge_def** %e443, align 8
  br label %for.cond.481

for.end.495:                                      ; preds = %for.cond.481
  store i32 1, i32* %num_bbs, align 4
  %344 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %344 to i64
  %345 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data497 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %345, i32 0, i32 4
  %bb498 = bitcast %union.varray_data_tag* %data497 to [1 x %struct.basic_block_def*]*
  %arrayidx499 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb498, i32 0, i64 %idxprom496
  %346 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx499, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %346, i32 0, i32 1
  %347 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx500 to i32*
  %348 = load i32, i32* %rtint, align 4
  %idxprom501 = sext i32 %348 to i64
  %349 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx502 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %349, i64 %idxprom501
  %luid = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx502, i32 0, i32 2
  %350 = load i32, i32* %luid, align 4
  %351 = load i32, i32* %i, align 4
  %idxprom503 = sext i32 %351 to i64
  %352 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data504 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %352, i32 0, i32 4
  %bb505 = bitcast %union.varray_data_tag* %data504 to [1 x %struct.basic_block_def*]*
  %arrayidx506 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb505, i32 0, i64 %idxprom503
  %353 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx506, align 8
  %head507 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %353, i32 0, i32 0
  %354 = load %struct.rtx_def*, %struct.rtx_def** %head507, align 8
  %fld508 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %354, i32 0, i32 1
  %arrayidx509 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld508, i32 0, i64 0
  %rtint510 = bitcast %union.rtunion_def* %arrayidx509 to i32*
  %355 = load i32, i32* %rtint510, align 4
  %idxprom511 = sext i32 %355 to i64
  %356 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx512 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %356, i64 %idxprom511
  %luid513 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx512, i32 0, i32 2
  %357 = load i32, i32* %luid513, align 4
  %sub = sub nsw i32 %350, %357
  store i32 %sub, i32* %num_insns, align 4
  %358 = load i8, i8* %no_loops, align 1
  %tobool514 = icmp ne i8 %358, 0
  br i1 %tobool514, label %if.then.515, label %if.else.564

if.then.515:                                      ; preds = %for.end.495
  store i32 0, i32* %j, align 4
  br label %for.cond.516

for.cond.516:                                     ; preds = %for.inc.561, %if.then.515
  %359 = load i32, i32* %j, align 4
  %360 = load i32, i32* @n_basic_blocks, align 4
  %cmp517 = icmp slt i32 %359, %360
  br i1 %cmp517, label %for.body.519, label %for.end.563

for.body.519:                                     ; preds = %for.cond.516
  %361 = load i32, i32* %j, align 4
  %idxprom520 = sext i32 %361 to i64
  %362 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data521 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %362, i32 0, i32 4
  %bb522 = bitcast %union.varray_data_tag* %data521 to [1 x %struct.basic_block_def*]*
  %arrayidx523 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb522, i32 0, i64 %idxprom520
  %363 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx523, align 8
  %succ524 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %363, i32 0, i32 5
  %364 = load %struct.edge_def*, %struct.edge_def** %succ524, align 8
  %tobool525 = icmp ne %struct.edge_def* %364, null
  br i1 %tobool525, label %land.lhs.true.526, label %if.end.560

land.lhs.true.526:                                ; preds = %for.body.519
  %365 = load i32, i32* %j, align 4
  %idxprom527 = sext i32 %365 to i64
  %366 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data528 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %366, i32 0, i32 4
  %bb529 = bitcast %union.varray_data_tag* %data528 to [1 x %struct.basic_block_def*]*
  %arrayidx530 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb529, i32 0, i64 %idxprom527
  %367 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx530, align 8
  %succ531 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %367, i32 0, i32 5
  %368 = load %struct.edge_def*, %struct.edge_def** %succ531, align 8
  %dest532 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %368, i32 0, i32 3
  %369 = load %struct.basic_block_def*, %struct.basic_block_def** %dest532, align 8
  %cmp533 = icmp eq %struct.basic_block_def* %369, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp533, label %land.lhs.true.535, label %if.end.560

land.lhs.true.535:                                ; preds = %land.lhs.true.526
  %370 = load i32, i32* %j, align 4
  %idxprom536 = sext i32 %370 to i64
  %371 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data537 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %371, i32 0, i32 4
  %bb538 = bitcast %union.varray_data_tag* %data537 to [1 x %struct.basic_block_def*]*
  %arrayidx539 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb538, i32 0, i64 %idxprom536
  %372 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx539, align 8
  %succ540 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %372, i32 0, i32 5
  %373 = load %struct.edge_def*, %struct.edge_def** %succ540, align 8
  %succ_next541 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %373, i32 0, i32 1
  %374 = load %struct.edge_def*, %struct.edge_def** %succ_next541, align 8
  %cmp542 = icmp eq %struct.edge_def* %374, null
  br i1 %cmp542, label %if.then.544, label %if.end.560

if.then.544:                                      ; preds = %land.lhs.true.535
  %375 = load i32, i32* %j, align 4
  %376 = load i32, i32* %tail, align 4
  %inc545 = add nsw i32 %376, 1
  store i32 %inc545, i32* %tail, align 4
  %idxprom546 = sext i32 %inc545 to i64
  %377 = load i32*, i32** %queue, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %377, i64 %idxprom546
  store i32 %375, i32* %arrayidx547, align 4
  %378 = load i32, i32* %j, align 4
  %rem548 = urem i32 %378, 64
  %sh_prom549 = zext i32 %rem548 to i64
  %shl550 = shl i64 1, %sh_prom549
  %379 = load i32, i32* %j, align 4
  %div551 = udiv i32 %379, 64
  %idxprom552 = zext i32 %div551 to i64
  %380 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  %elms553 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %380, i32 0, i32 3
  %arrayidx554 = getelementptr inbounds [1 x i64], [1 x i64]* %elms553, i32 0, i64 %idxprom552
  %381 = load i64, i64* %arrayidx554, align 8
  %or555 = or i64 %381, %shl550
  store i64 %or555, i64* %arrayidx554, align 8
  %382 = load i32, i32* %j, align 4
  %call556 = call i32 @too_large(i32 %382, i32* %num_bbs, i32* %num_insns)
  %tobool557 = icmp ne i32 %call556, 0
  br i1 %tobool557, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %if.then.544
  store i32 1, i32* %too_large_failure, align 4
  br label %for.end.563

if.end.559:                                       ; preds = %if.then.544
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %land.lhs.true.535, %land.lhs.true.526, %for.body.519
  br label %for.inc.561

for.inc.561:                                      ; preds = %if.end.560
  %383 = load i32, i32* %j, align 4
  %inc562 = add nsw i32 %383, 1
  store i32 %inc562, i32* %j, align 4
  br label %for.cond.516

for.end.563:                                      ; preds = %if.then.558, %for.cond.516
  br label %if.end.605

if.else.564:                                      ; preds = %for.end.495
  %384 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %384 to i64
  %385 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data567 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %385, i32 0, i32 4
  %bb568 = bitcast %union.varray_data_tag* %data567 to [1 x %struct.basic_block_def*]*
  %arrayidx569 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb568, i32 0, i64 %idxprom566
  %386 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx569, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %386, i32 0, i32 4
  %387 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %387, %struct.edge_def** %e565, align 8
  br label %for.cond.570

for.cond.570:                                     ; preds = %for.inc.603, %if.else.564
  %388 = load %struct.edge_def*, %struct.edge_def** %e565, align 8
  %tobool571 = icmp ne %struct.edge_def* %388, null
  br i1 %tobool571, label %for.body.572, label %for.end.604

for.body.572:                                     ; preds = %for.cond.570
  %389 = load %struct.edge_def*, %struct.edge_def** %e565, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %389, i32 0, i32 2
  %390 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp573 = icmp eq %struct.basic_block_def* %390, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %for.body.572
  br label %for.inc.603

if.end.576:                                       ; preds = %for.body.572
  %391 = load %struct.edge_def*, %struct.edge_def** %e565, align 8
  %src577 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %391, i32 0, i32 2
  %392 = load %struct.basic_block_def*, %struct.basic_block_def** %src577, align 8
  %index578 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %392, i32 0, i32 11
  %393 = load i32, i32* %index578, align 4
  store i32 %393, i32* %node, align 4
  %394 = load i32, i32* %node, align 4
  %idxprom579 = sext i32 %394 to i64
  %395 = load i32*, i32** %max_hdr, align 8
  %arrayidx580 = getelementptr inbounds i32, i32* %395, i64 %idxprom579
  %396 = load i32, i32* %arrayidx580, align 4
  %397 = load i32, i32* %loop_head, align 4
  %cmp581 = icmp eq i32 %396, %397
  br i1 %cmp581, label %land.lhs.true.583, label %if.end.602

land.lhs.true.583:                                ; preds = %if.end.576
  %398 = load i32, i32* %node, align 4
  %399 = load i32, i32* %i, align 4
  %cmp584 = icmp ne i32 %398, %399
  br i1 %cmp584, label %if.then.586, label %if.end.602

if.then.586:                                      ; preds = %land.lhs.true.583
  %400 = load i32, i32* %node, align 4
  %401 = load i32, i32* %tail, align 4
  %inc587 = add nsw i32 %401, 1
  store i32 %inc587, i32* %tail, align 4
  %idxprom588 = sext i32 %inc587 to i64
  %402 = load i32*, i32** %queue, align 8
  %arrayidx589 = getelementptr inbounds i32, i32* %402, i64 %idxprom588
  store i32 %400, i32* %arrayidx589, align 4
  %403 = load i32, i32* %node, align 4
  %rem590 = urem i32 %403, 64
  %sh_prom591 = zext i32 %rem590 to i64
  %shl592 = shl i64 1, %sh_prom591
  %404 = load i32, i32* %node, align 4
  %div593 = udiv i32 %404, 64
  %idxprom594 = zext i32 %div593 to i64
  %405 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  %elms595 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %405, i32 0, i32 3
  %arrayidx596 = getelementptr inbounds [1 x i64], [1 x i64]* %elms595, i32 0, i64 %idxprom594
  %406 = load i64, i64* %arrayidx596, align 8
  %or597 = or i64 %406, %shl592
  store i64 %or597, i64* %arrayidx596, align 8
  %407 = load i32, i32* %node, align 4
  %call598 = call i32 @too_large(i32 %407, i32* %num_bbs, i32* %num_insns)
  %tobool599 = icmp ne i32 %call598, 0
  br i1 %tobool599, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %if.then.586
  store i32 1, i32* %too_large_failure, align 4
  br label %for.end.604

if.end.601:                                       ; preds = %if.then.586
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.601, %land.lhs.true.583, %if.end.576
  br label %for.inc.603

for.inc.603:                                      ; preds = %if.end.602, %if.then.575
  %408 = load %struct.edge_def*, %struct.edge_def** %e565, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %408, i32 0, i32 0
  %409 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %409, %struct.edge_def** %e565, align 8
  br label %for.cond.570

for.end.604:                                      ; preds = %if.then.600, %for.cond.570
  br label %if.end.605

if.end.605:                                       ; preds = %for.end.604, %for.end.563
  br label %while.cond

while.cond:                                       ; preds = %for.end.668, %if.end.605
  %410 = load i32, i32* %head, align 4
  %411 = load i32, i32* %tail, align 4
  %cmp606 = icmp slt i32 %410, %411
  br i1 %cmp606, label %land.rhs.608, label %land.end.610

land.rhs.608:                                     ; preds = %while.cond
  %412 = load i32, i32* %too_large_failure, align 4
  %tobool609 = icmp ne i32 %412, 0
  %lnot = xor i1 %tobool609, true
  br label %land.end.610

land.end.610:                                     ; preds = %land.rhs.608, %while.cond
  %413 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs.608 ]
  br i1 %413, label %while.body.611, label %while.end.669

while.body.611:                                   ; preds = %land.end.610
  %414 = load i32, i32* %head, align 4
  %inc613 = add nsw i32 %414, 1
  store i32 %inc613, i32* %head, align 4
  %idxprom614 = sext i32 %inc613 to i64
  %415 = load i32*, i32** %queue, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %415, i64 %idxprom614
  %416 = load i32, i32* %arrayidx615, align 4
  store i32 %416, i32* %child, align 4
  %417 = load i32, i32* %child, align 4
  %idxprom616 = sext i32 %417 to i64
  %418 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data617 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %418, i32 0, i32 4
  %bb618 = bitcast %union.varray_data_tag* %data617 to [1 x %struct.basic_block_def*]*
  %arrayidx619 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb618, i32 0, i64 %idxprom616
  %419 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx619, align 8
  %pred620 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %419, i32 0, i32 4
  %420 = load %struct.edge_def*, %struct.edge_def** %pred620, align 8
  store %struct.edge_def* %420, %struct.edge_def** %e612, align 8
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.666, %while.body.611
  %421 = load %struct.edge_def*, %struct.edge_def** %e612, align 8
  %tobool622 = icmp ne %struct.edge_def* %421, null
  br i1 %tobool622, label %for.body.623, label %for.end.668

for.body.623:                                     ; preds = %for.cond.621
  %422 = load %struct.edge_def*, %struct.edge_def** %e612, align 8
  %src624 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %422, i32 0, i32 2
  %423 = load %struct.basic_block_def*, %struct.basic_block_def** %src624, align 8
  %index625 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %423, i32 0, i32 11
  %424 = load i32, i32* %index625, align 4
  store i32 %424, i32* %node, align 4
  %425 = load %struct.edge_def*, %struct.edge_def** %e612, align 8
  %src626 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %425, i32 0, i32 2
  %426 = load %struct.basic_block_def*, %struct.basic_block_def** %src626, align 8
  %cmp627 = icmp eq %struct.basic_block_def* %426, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp627, label %if.then.634, label %lor.lhs.false.629

lor.lhs.false.629:                                ; preds = %for.body.623
  %427 = load i32, i32* %node, align 4
  %idxprom630 = sext i32 %427 to i64
  %428 = load i32*, i32** %max_hdr, align 8
  %arrayidx631 = getelementptr inbounds i32, i32* %428, i64 %idxprom630
  %429 = load i32, i32* %arrayidx631, align 4
  %430 = load i32, i32* %loop_head, align 4
  %cmp632 = icmp ne i32 %429, %430
  br i1 %cmp632, label %if.then.634, label %if.else.635

if.then.634:                                      ; preds = %lor.lhs.false.629, %for.body.623
  store i32 -1, i32* %tail, align 4
  br label %for.end.668

if.else.635:                                      ; preds = %lor.lhs.false.629
  %431 = load i32, i32* %node, align 4
  %div636 = udiv i32 %431, 64
  %idxprom637 = zext i32 %div636 to i64
  %432 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  %elms638 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %432, i32 0, i32 3
  %arrayidx639 = getelementptr inbounds [1 x i64], [1 x i64]* %elms638, i32 0, i64 %idxprom637
  %433 = load i64, i64* %arrayidx639, align 8
  %434 = load i32, i32* %node, align 4
  %rem640 = urem i32 %434, 64
  %sh_prom641 = zext i32 %rem640 to i64
  %shr642 = lshr i64 %433, %sh_prom641
  %and643 = and i64 %shr642, 1
  %tobool644 = icmp ne i64 %and643, 0
  br i1 %tobool644, label %if.end.664, label %land.lhs.true.645

land.lhs.true.645:                                ; preds = %if.else.635
  %435 = load i32, i32* %node, align 4
  %436 = load i32, i32* %i, align 4
  %cmp646 = icmp ne i32 %435, %436
  br i1 %cmp646, label %if.then.648, label %if.end.664

if.then.648:                                      ; preds = %land.lhs.true.645
  %437 = load i32, i32* %node, align 4
  %438 = load i32, i32* %tail, align 4
  %inc649 = add nsw i32 %438, 1
  store i32 %inc649, i32* %tail, align 4
  %idxprom650 = sext i32 %inc649 to i64
  %439 = load i32*, i32** %queue, align 8
  %arrayidx651 = getelementptr inbounds i32, i32* %439, i64 %idxprom650
  store i32 %437, i32* %arrayidx651, align 4
  %440 = load i32, i32* %node, align 4
  %rem652 = urem i32 %440, 64
  %sh_prom653 = zext i32 %rem652 to i64
  %shl654 = shl i64 1, %sh_prom653
  %441 = load i32, i32* %node, align 4
  %div655 = udiv i32 %441, 64
  %idxprom656 = zext i32 %div655 to i64
  %442 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  %elms657 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %442, i32 0, i32 3
  %arrayidx658 = getelementptr inbounds [1 x i64], [1 x i64]* %elms657, i32 0, i64 %idxprom656
  %443 = load i64, i64* %arrayidx658, align 8
  %or659 = or i64 %443, %shl654
  store i64 %or659, i64* %arrayidx658, align 8
  %444 = load i32, i32* %node, align 4
  %call660 = call i32 @too_large(i32 %444, i32* %num_bbs, i32* %num_insns)
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.then.648
  store i32 1, i32* %too_large_failure, align 4
  br label %for.end.668

if.end.663:                                       ; preds = %if.then.648
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %land.lhs.true.645, %if.else.635
  br label %if.end.665

if.end.665:                                       ; preds = %if.end.664
  br label %for.inc.666

for.inc.666:                                      ; preds = %if.end.665
  %445 = load %struct.edge_def*, %struct.edge_def** %e612, align 8
  %pred_next667 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %445, i32 0, i32 0
  %446 = load %struct.edge_def*, %struct.edge_def** %pred_next667, align 8
  store %struct.edge_def* %446, %struct.edge_def** %e612, align 8
  br label %for.cond.621

for.end.668:                                      ; preds = %if.then.662, %if.then.634, %for.cond.621
  br label %while.cond

while.end.669:                                    ; preds = %land.end.610
  %447 = load i32, i32* %tail, align 4
  %cmp670 = icmp sge i32 %447, 0
  br i1 %cmp670, label %land.lhs.true.672, label %if.end.745

land.lhs.true.672:                                ; preds = %while.end.669
  %448 = load i32, i32* %too_large_failure, align 4
  %tobool673 = icmp ne i32 %448, 0
  br i1 %tobool673, label %if.end.745, label %if.then.674

if.then.674:                                      ; preds = %land.lhs.true.672
  %449 = load i32, i32* %i, align 4
  %idxprom675 = sext i32 %449 to i64
  %450 = load i32*, i32** %degree, align 8
  %arrayidx676 = getelementptr inbounds i32, i32* %450, i64 %idxprom675
  store i32 -1, i32* %arrayidx676, align 4
  %451 = load i32, i32* %i, align 4
  %452 = load i32, i32* %idx, align 4
  %idxprom677 = sext i32 %452 to i64
  %453 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx678 = getelementptr inbounds i32, i32* %453, i64 %idxprom677
  store i32 %451, i32* %arrayidx678, align 4
  %454 = load i32, i32* %num_bbs, align 4
  %455 = load i32, i32* @nr_regions, align 4
  %idxprom679 = sext i32 %455 to i64
  %456 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx680 = getelementptr inbounds %struct.region, %struct.region* %456, i64 %idxprom679
  %rgn_nr_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx680, i32 0, i32 0
  store i32 %454, i32* %rgn_nr_blocks, align 4
  %457 = load i32, i32* %idx, align 4
  %inc681 = add nsw i32 %457, 1
  store i32 %inc681, i32* %idx, align 4
  %458 = load i32, i32* @nr_regions, align 4
  %idxprom682 = sext i32 %458 to i64
  %459 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx683 = getelementptr inbounds %struct.region, %struct.region* %459, i64 %idxprom682
  %rgn_blocks = getelementptr inbounds %struct.region, %struct.region* %arrayidx683, i32 0, i32 1
  store i32 %457, i32* %rgn_blocks, align 4
  %460 = load i32, i32* @nr_regions, align 4
  %461 = load i32, i32* %i, align 4
  %idxprom684 = sext i32 %461 to i64
  %462 = load i32*, i32** @containing_rgn, align 8
  %arrayidx685 = getelementptr inbounds i32, i32* %462, i64 %idxprom684
  store i32 %460, i32* %arrayidx685, align 4
  store i32 0, i32* %count, align 4
  %463 = load i32, i32* %i, align 4
  %idxprom686 = sext i32 %463 to i64
  %464 = load i32*, i32** @block_to_bb, align 8
  %arrayidx687 = getelementptr inbounds i32, i32* %464, i64 %idxprom686
  store i32 0, i32* %arrayidx687, align 4
  br label %while.cond.688

while.cond.688:                                   ; preds = %if.end.742, %if.then.674
  %465 = load i32, i32* %tail, align 4
  %cmp689 = icmp sge i32 %465, 0
  br i1 %cmp689, label %while.body.691, label %while.end.743

while.body.691:                                   ; preds = %while.cond.688
  %466 = load i32, i32* %head, align 4
  %cmp692 = icmp slt i32 %466, 0
  br i1 %cmp692, label %if.then.694, label %if.end.695

if.then.694:                                      ; preds = %while.body.691
  %467 = load i32, i32* %tail, align 4
  store i32 %467, i32* %head, align 4
  br label %if.end.695

if.end.695:                                       ; preds = %if.then.694, %while.body.691
  %468 = load i32, i32* %head, align 4
  %idxprom696 = sext i32 %468 to i64
  %469 = load i32*, i32** %queue, align 8
  %arrayidx697 = getelementptr inbounds i32, i32* %469, i64 %idxprom696
  %470 = load i32, i32* %arrayidx697, align 4
  store i32 %470, i32* %child, align 4
  %471 = load i32, i32* %child, align 4
  %idxprom698 = sext i32 %471 to i64
  %472 = load i32*, i32** %degree, align 8
  %arrayidx699 = getelementptr inbounds i32, i32* %472, i64 %idxprom698
  %473 = load i32, i32* %arrayidx699, align 4
  %cmp700 = icmp eq i32 %473, 0
  br i1 %cmp700, label %if.then.702, label %if.else.740

if.then.702:                                      ; preds = %if.end.695
  %474 = load i32, i32* %child, align 4
  %idxprom704 = sext i32 %474 to i64
  %475 = load i32*, i32** %degree, align 8
  %arrayidx705 = getelementptr inbounds i32, i32* %475, i64 %idxprom704
  store i32 -1, i32* %arrayidx705, align 4
  %476 = load i32, i32* %child, align 4
  %477 = load i32, i32* %idx, align 4
  %inc706 = add nsw i32 %477, 1
  store i32 %inc706, i32* %idx, align 4
  %idxprom707 = sext i32 %477 to i64
  %478 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx708 = getelementptr inbounds i32, i32* %478, i64 %idxprom707
  store i32 %476, i32* %arrayidx708, align 4
  %479 = load i32, i32* %count, align 4
  %inc709 = add nsw i32 %479, 1
  store i32 %inc709, i32* %count, align 4
  %480 = load i32, i32* %child, align 4
  %idxprom710 = sext i32 %480 to i64
  %481 = load i32*, i32** @block_to_bb, align 8
  %arrayidx711 = getelementptr inbounds i32, i32* %481, i64 %idxprom710
  store i32 %inc709, i32* %arrayidx711, align 4
  %482 = load i32, i32* @nr_regions, align 4
  %483 = load i32, i32* %child, align 4
  %idxprom712 = sext i32 %483 to i64
  %484 = load i32*, i32** @containing_rgn, align 8
  %arrayidx713 = getelementptr inbounds i32, i32* %484, i64 %idxprom712
  store i32 %482, i32* %arrayidx713, align 4
  %485 = load i32, i32* %tail, align 4
  %dec714 = add nsw i32 %485, -1
  store i32 %dec714, i32* %tail, align 4
  %idxprom715 = sext i32 %485 to i64
  %486 = load i32*, i32** %queue, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %486, i64 %idxprom715
  %487 = load i32, i32* %arrayidx716, align 4
  %488 = load i32, i32* %head, align 4
  %idxprom717 = sext i32 %488 to i64
  %489 = load i32*, i32** %queue, align 8
  %arrayidx718 = getelementptr inbounds i32, i32* %489, i64 %idxprom717
  store i32 %487, i32* %arrayidx718, align 4
  %490 = load i32, i32* %child, align 4
  %idxprom719 = sext i32 %490 to i64
  %491 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data720 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %491, i32 0, i32 4
  %bb721 = bitcast %union.varray_data_tag* %data720 to [1 x %struct.basic_block_def*]*
  %arrayidx722 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb721, i32 0, i64 %idxprom719
  %492 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx722, align 8
  %succ723 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %492, i32 0, i32 5
  %493 = load %struct.edge_def*, %struct.edge_def** %succ723, align 8
  store %struct.edge_def* %493, %struct.edge_def** %e703, align 8
  br label %for.cond.724

for.cond.724:                                     ; preds = %for.inc.737, %if.then.702
  %494 = load %struct.edge_def*, %struct.edge_def** %e703, align 8
  %tobool725 = icmp ne %struct.edge_def* %494, null
  br i1 %tobool725, label %for.body.726, label %for.end.739

for.body.726:                                     ; preds = %for.cond.724
  %495 = load %struct.edge_def*, %struct.edge_def** %e703, align 8
  %dest727 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %495, i32 0, i32 3
  %496 = load %struct.basic_block_def*, %struct.basic_block_def** %dest727, align 8
  %cmp728 = icmp ne %struct.basic_block_def* %496, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp728, label %if.then.730, label %if.end.736

if.then.730:                                      ; preds = %for.body.726
  %497 = load %struct.edge_def*, %struct.edge_def** %e703, align 8
  %dest731 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %497, i32 0, i32 3
  %498 = load %struct.basic_block_def*, %struct.basic_block_def** %dest731, align 8
  %index732 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %498, i32 0, i32 11
  %499 = load i32, i32* %index732, align 4
  %idxprom733 = sext i32 %499 to i64
  %500 = load i32*, i32** %degree, align 8
  %arrayidx734 = getelementptr inbounds i32, i32* %500, i64 %idxprom733
  %501 = load i32, i32* %arrayidx734, align 4
  %dec735 = add nsw i32 %501, -1
  store i32 %dec735, i32* %arrayidx734, align 4
  br label %if.end.736

if.end.736:                                       ; preds = %if.then.730, %for.body.726
  br label %for.inc.737

for.inc.737:                                      ; preds = %if.end.736
  %502 = load %struct.edge_def*, %struct.edge_def** %e703, align 8
  %succ_next738 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %502, i32 0, i32 1
  %503 = load %struct.edge_def*, %struct.edge_def** %succ_next738, align 8
  store %struct.edge_def* %503, %struct.edge_def** %e703, align 8
  br label %for.cond.724

for.end.739:                                      ; preds = %for.cond.724
  br label %if.end.742

if.else.740:                                      ; preds = %if.end.695
  %504 = load i32, i32* %head, align 4
  %dec741 = add nsw i32 %504, -1
  store i32 %dec741, i32* %head, align 4
  br label %if.end.742

if.end.742:                                       ; preds = %if.else.740, %for.end.739
  br label %while.cond.688

while.end.743:                                    ; preds = %while.cond.688
  %505 = load i32, i32* @nr_regions, align 4
  %inc744 = add nsw i32 %505, 1
  store i32 %inc744, i32* @nr_regions, align 4
  br label %if.end.745

if.end.745:                                       ; preds = %while.end.743, %land.lhs.true.672, %while.end.669
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %land.lhs.true.432, %for.body.422
  br label %for.inc.747

for.inc.747:                                      ; preds = %if.end.746, %if.then.475
  %506 = load i32, i32* %i, align 4
  %inc748 = add nsw i32 %506, 1
  store i32 %inc748, i32* %i, align 4
  br label %for.cond.419

for.end.749:                                      ; preds = %for.cond.419
  %507 = load i32*, i32** %queue, align 8
  %508 = bitcast i32* %507 to i8*
  call void @free(i8* %508) #4
  br label %if.end.750

if.end.750:                                       ; preds = %for.end.749, %for.end.407
  store i32 0, i32* %i, align 4
  br label %for.cond.751

for.cond.751:                                     ; preds = %for.inc.775, %if.end.750
  %509 = load i32, i32* %i, align 4
  %510 = load i32, i32* @n_basic_blocks, align 4
  %cmp752 = icmp slt i32 %509, %510
  br i1 %cmp752, label %for.body.754, label %for.end.777

for.body.754:                                     ; preds = %for.cond.751
  %511 = load i32, i32* %i, align 4
  %idxprom755 = sext i32 %511 to i64
  %512 = load i32*, i32** %degree, align 8
  %arrayidx756 = getelementptr inbounds i32, i32* %512, i64 %idxprom755
  %513 = load i32, i32* %arrayidx756, align 4
  %cmp757 = icmp sge i32 %513, 0
  br i1 %cmp757, label %if.then.759, label %if.end.774

if.then.759:                                      ; preds = %for.body.754
  %514 = load i32, i32* %i, align 4
  %515 = load i32, i32* %idx, align 4
  %idxprom760 = sext i32 %515 to i64
  %516 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx761 = getelementptr inbounds i32, i32* %516, i64 %idxprom760
  store i32 %514, i32* %arrayidx761, align 4
  %517 = load i32, i32* @nr_regions, align 4
  %idxprom762 = sext i32 %517 to i64
  %518 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx763 = getelementptr inbounds %struct.region, %struct.region* %518, i64 %idxprom762
  %rgn_nr_blocks764 = getelementptr inbounds %struct.region, %struct.region* %arrayidx763, i32 0, i32 0
  store i32 1, i32* %rgn_nr_blocks764, align 4
  %519 = load i32, i32* %idx, align 4
  %inc765 = add nsw i32 %519, 1
  store i32 %inc765, i32* %idx, align 4
  %520 = load i32, i32* @nr_regions, align 4
  %idxprom766 = sext i32 %520 to i64
  %521 = load %struct.region*, %struct.region** @rgn_table, align 8
  %arrayidx767 = getelementptr inbounds %struct.region, %struct.region* %521, i64 %idxprom766
  %rgn_blocks768 = getelementptr inbounds %struct.region, %struct.region* %arrayidx767, i32 0, i32 1
  store i32 %519, i32* %rgn_blocks768, align 4
  %522 = load i32, i32* @nr_regions, align 4
  %inc769 = add nsw i32 %522, 1
  store i32 %inc769, i32* @nr_regions, align 4
  %523 = load i32, i32* %i, align 4
  %idxprom770 = sext i32 %523 to i64
  %524 = load i32*, i32** @containing_rgn, align 8
  %arrayidx771 = getelementptr inbounds i32, i32* %524, i64 %idxprom770
  store i32 %522, i32* %arrayidx771, align 4
  %525 = load i32, i32* %i, align 4
  %idxprom772 = sext i32 %525 to i64
  %526 = load i32*, i32** @block_to_bb, align 8
  %arrayidx773 = getelementptr inbounds i32, i32* %526, i64 %idxprom772
  store i32 0, i32* %arrayidx773, align 4
  br label %if.end.774

if.end.774:                                       ; preds = %if.then.759, %for.body.754
  br label %for.inc.775

for.inc.775:                                      ; preds = %if.end.774
  %527 = load i32, i32* %i, align 4
  %inc776 = add nsw i32 %527, 1
  store i32 %inc776, i32* %i, align 4
  br label %for.cond.751

for.end.777:                                      ; preds = %for.cond.751
  %528 = load i32*, i32** %max_hdr, align 8
  %529 = bitcast i32* %528 to i8*
  call void @free(i8* %529) #4
  %530 = load i32*, i32** %dfs_nr, align 8
  %531 = bitcast i32* %530 to i8*
  call void @free(i8* %531) #4
  %532 = load i32*, i32** %stack, align 8
  %533 = bitcast i32* %532 to i8*
  call void @free(i8* %533) #4
  %534 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %passed, align 8
  %535 = bitcast %struct.simple_bitmap_def* %534 to i8*
  call void @free(i8* %535) #4
  %536 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %header, align 8
  %537 = bitcast %struct.simple_bitmap_def* %536 to i8*
  call void @free(i8* %537) #4
  %538 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %inner, align 8
  %539 = bitcast %struct.simple_bitmap_def* %538 to i8*
  call void @free(i8* %539) #4
  %540 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_queue, align 8
  %541 = bitcast %struct.simple_bitmap_def* %540 to i8*
  call void @free(i8* %541) #4
  %542 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %in_stack, align 8
  %543 = bitcast %struct.simple_bitmap_def* %542 to i8*
  call void @free(i8* %543) #4
  ret void
}

declare void @free_edge_list(%struct.edge_list*) #1

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #1

declare zeroext i1 @current_function_has_exception_handlers() #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @new_edge(i32 %source, i32 %target) #0 {
entry:
  %source.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %e = alloca i32, align 4
  %next_edge = alloca i32, align 4
  %curr_edge = alloca i32, align 4
  %fst_edge = alloca i32, align 4
  store i32 %source, i32* %source.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %source.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** @out_edges, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %curr_edge, align 4
  store i32 %2, i32* %fst_edge, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %entry
  %3 = load i32, i32* %curr_edge, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %curr_edge, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %5, i64 %idxprom1
  %from_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx2, i32 0, i32 0
  %6 = load i32, i32* %from_block, align 4
  %7 = load i32, i32* %source.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32, i32* %curr_edge, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %9, i64 %idxprom3
  %to_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx4, i32 0, i32 1
  %10 = load i32, i32* %to_block, align 4
  %11 = load i32, i32* %target.addr, align 4
  %cmp5 = icmp eq i32 %10, %11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.62

if.end:                                           ; preds = %land.lhs.true, %while.body
  %12 = load i32, i32* %curr_edge, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx7 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %13, i64 %idxprom6
  %next_out = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx7, i32 0, i32 3
  %14 = load i32, i32* %next_out, align 4
  store i32 %14, i32* %curr_edge, align 4
  %15 = load i32, i32* %fst_edge, align 4
  %16 = load i32, i32* %curr_edge, align 4
  %cmp8 = icmp eq i32 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %while.end

if.end.10:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.9, %while.cond
  %17 = load i32, i32* @nr_edges, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @nr_edges, align 4
  store i32 %inc, i32* %e, align 4
  %18 = load i32, i32* %source.addr, align 4
  %19 = load i32, i32* %e, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx12 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %20, i64 %idxprom11
  %from_block13 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx12, i32 0, i32 0
  store i32 %18, i32* %from_block13, align 4
  %21 = load i32, i32* %target.addr, align 4
  %22 = load i32, i32* %e, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx15 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %23, i64 %idxprom14
  %to_block16 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx15, i32 0, i32 1
  store i32 %21, i32* %to_block16, align 4
  %24 = load i32, i32* %source.addr, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load i32*, i32** @out_edges, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom17
  %26 = load i32, i32* %arrayidx18, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %while.end
  %27 = load i32, i32* %source.addr, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32*, i32** @out_edges, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  %29 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx24 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %30, i64 %idxprom23
  %next_out25 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx24, i32 0, i32 3
  %31 = load i32, i32* %next_out25, align 4
  store i32 %31, i32* %next_edge, align 4
  %32 = load i32, i32* %e, align 4
  %33 = load i32, i32* %source.addr, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load i32*, i32** @out_edges, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i64 %idxprom26
  %35 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx29 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %36, i64 %idxprom28
  %next_out30 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx29, i32 0, i32 3
  store i32 %32, i32* %next_out30, align 4
  %37 = load i32, i32* %next_edge, align 4
  %38 = load i32, i32* %e, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx32 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %39, i64 %idxprom31
  %next_out33 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx32, i32 0, i32 3
  store i32 %37, i32* %next_out33, align 4
  br label %if.end.39

if.else:                                          ; preds = %while.end
  %40 = load i32, i32* %e, align 4
  %41 = load i32, i32* %source.addr, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load i32*, i32** @out_edges, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 %idxprom34
  store i32 %40, i32* %arrayidx35, align 4
  %43 = load i32, i32* %e, align 4
  %44 = load i32, i32* %e, align 4
  %idxprom36 = sext i32 %44 to i64
  %45 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx37 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %45, i64 %idxprom36
  %next_out38 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx37, i32 0, i32 3
  store i32 %43, i32* %next_out38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.20
  %46 = load i32, i32* %target.addr, align 4
  %idxprom40 = sext i32 %46 to i64
  %47 = load i32*, i32** @in_edges, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %47, i64 %idxprom40
  %48 = load i32, i32* %arrayidx41, align 4
  %tobool42 = icmp ne i32 %48, 0
  br i1 %tobool42, label %if.then.43, label %if.else.56

if.then.43:                                       ; preds = %if.end.39
  %49 = load i32, i32* %target.addr, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load i32*, i32** @in_edges, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 %idxprom44
  %51 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %51 to i64
  %52 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx47 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %52, i64 %idxprom46
  %next_in = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx47, i32 0, i32 2
  %53 = load i32, i32* %next_in, align 4
  store i32 %53, i32* %next_edge, align 4
  %54 = load i32, i32* %e, align 4
  %55 = load i32, i32* %target.addr, align 4
  %idxprom48 = sext i32 %55 to i64
  %56 = load i32*, i32** @in_edges, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %56, i64 %idxprom48
  %57 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %57 to i64
  %58 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx51 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %58, i64 %idxprom50
  %next_in52 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx51, i32 0, i32 2
  store i32 %54, i32* %next_in52, align 4
  %59 = load i32, i32* %next_edge, align 4
  %60 = load i32, i32* %e, align 4
  %idxprom53 = sext i32 %60 to i64
  %61 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx54 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %61, i64 %idxprom53
  %next_in55 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx54, i32 0, i32 2
  store i32 %59, i32* %next_in55, align 4
  br label %if.end.62

if.else.56:                                       ; preds = %if.end.39
  %62 = load i32, i32* %e, align 4
  %63 = load i32, i32* %target.addr, align 4
  %idxprom57 = sext i32 %63 to i64
  %64 = load i32*, i32** @in_edges, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %64, i64 %idxprom57
  store i32 %62, i32* %arrayidx58, align 4
  %65 = load i32, i32* %e, align 4
  %66 = load i32, i32* %e, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx60 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %67, i64 %idxprom59
  %next_in61 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx60, i32 0, i32 2
  store i32 %65, i32* %next_in61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then, %if.else.56, %if.then.43
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @too_large(i32 %block, i32* %num_bbs, i32* %num_insns) #0 {
entry:
  %retval = alloca i32, align 4
  %block.addr = alloca i32, align 4
  %num_bbs.addr = alloca i32*, align 8
  %num_insns.addr = alloca i32*, align 8
  store i32 %block, i32* %block.addr, align 4
  store i32* %num_bbs, i32** %num_bbs.addr, align 8
  store i32* %num_insns, i32** %num_insns.addr, align 8
  %0 = load i32*, i32** %num_bbs.addr, align 8
  %1 = load i32, i32* %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4
  %2 = load i32, i32* %block.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %6 = load i32, i32* %rtint, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx3 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %7, i64 %idxprom2
  %luid = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx3, i32 0, i32 2
  %8 = load i32, i32* %luid, align 4
  %9 = load i32, i32* %block.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %13 = load i32, i32* %rtint10, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx12 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %14, i64 %idxprom11
  %luid13 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx12, i32 0, i32 2
  %15 = load i32, i32* %luid13, align 4
  %sub = sub nsw i32 %8, %15
  %16 = load i32*, i32** %num_insns.addr, align 8
  %17 = load i32, i32* %16, align 4
  %add = add nsw i32 %17, %sub
  store i32 %add, i32* %16, align 4
  %18 = load i32*, i32** %num_bbs.addr, align 8
  %19 = load i32, i32* %18, align 4
  %cmp = icmp sgt i32 %19, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load i32*, i32** %num_insns.addr, align 8
  %21 = load i32, i32* %20, align 4
  %cmp14 = icmp sgt i32 %21, 100
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @init_ready_list(%struct.ready_list* %ready) #0 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %prev_head = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %bb_src = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %src_head = alloca %struct.rtx_def*, align 8
  %src_next_tail = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %next109 = alloca %struct.rtx_def*, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %prev_head1 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %0, i32 0, i32 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %prev_head1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev_head, align 8
  %2 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %next_tail2 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %2, i32 0, i32 9
  %3 = load %struct.rtx_def*, %struct.rtx_def** %next_tail2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %next_tail, align 8
  store i32 0, i32* @target_n_insns, align 4
  store i32 0, i32* @sched_target_n_insns, align 4
  store i32 0, i32* @sched_n_insns, align 4
  store i32 0, i32* @last_was_jump, align 4
  %4 = load i32, i32* @sched_verbose, align 4
  %cmp = icmp sge i32 %4, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @debug_dependencies()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @current_nr_blocks, align 4
  %cmp3 = icmp sgt i32 %5, 1
  br i1 %cmp3, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @current_nr_blocks, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 40
  %call = call noalias i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call to %struct.candidate*
  store %struct.candidate* %7, %struct.candidate** @candidate_table, align 8
  store i32 0, i32* @bblst_last, align 4
  %8 = load i32, i32* @current_nr_blocks, align 4
  %9 = load i32, i32* @target_bb, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, i32* @rgn_nr_edges, align 4
  %mul5 = mul nsw i32 %sub, %10
  store i32 %mul5, i32* @bblst_size, align 4
  %11 = load i32, i32* @bblst_size, align 4
  %conv6 = sext i32 %11 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias i8* @xmalloc(i64 %mul7)
  %12 = bitcast i8* %call8 to i32*
  store i32* %12, i32** @bblst_table, align 8
  store i32 0, i32* @bitlst_table_last, align 4
  %13 = load i32, i32* @rgn_nr_edges, align 4
  store i32 %13, i32* @bitlst_table_size, align 4
  %14 = load i32, i32* @rgn_nr_edges, align 4
  %conv9 = sext i32 %14 to i64
  %mul10 = mul i64 %conv9, 4
  %call11 = call noalias i8* @xmalloc(i64 %mul10)
  %15 = bitcast i8* %call11 to i32*
  store i32* %15, i32** @bitlst_table, align 8
  %16 = load i32, i32* @target_bb, align 4
  call void @compute_trg_info(i32 %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.4, %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp13 = icmp ne %struct.rtx_def* %19, %20
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load = load i32, i32* %22, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx15 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %23 to i32
  %cmp17 = icmp eq i32 %conv16, 105
  br i1 %cmp17, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %for.body
  br label %for.inc

if.end.20:                                        ; preds = %for.body
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 2
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %next, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %27 = load i32, i32* %rtint, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx27 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %28, i64 %idxprom26
  %dep_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx27, i32 0, i32 4
  %29 = load i32, i32* %dep_count, align 4
  %cmp28 = icmp eq i32 %29, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.20
  %30 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load30 = load i32, i32* %31, align 8
  %bf.lshr = lshr i32 %bf.load30, 28
  %bf.clear31 = and i32 %bf.lshr, 1
  %cmp32 = icmp eq i32 %bf.clear31, 0
  br i1 %cmp32, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load34 = load i32, i32* %33, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %idxprom36 = sext i32 %bf.clear35 to i64
  %arrayidx37 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom36
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %34 to i32
  %cmp39 = icmp eq i32 %conv38, 105
  br i1 %cmp39, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @ready_add(%struct.ready_list* %35, %struct.rtx_def* %36)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %lor.lhs.false, %if.end.20
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load43 = load i32, i32* %38, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 28
  %bf.clear45 = and i32 %bf.lshr44, 1
  %tobool = icmp ne i32 %bf.clear45, 0
  br i1 %tobool, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.42
  %39 = load i32, i32* @target_n_insns, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @target_n_insns, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.47, %if.then.19
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 2
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* @target_bb, align 4
  %add = add nsw i32 %42, 1
  store i32 %add, i32* %bb_src, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.144, %for.end
  %43 = load i32, i32* %bb_src, align 4
  %44 = load i32, i32* @current_nr_blocks, align 4
  %cmp52 = icmp slt i32 %43, %44
  br i1 %cmp52, label %for.body.54, label %for.end.146

for.body.54:                                      ; preds = %for.cond.51
  %45 = load i32, i32* %bb_src, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx56 = getelementptr inbounds %struct.candidate, %struct.candidate* %46, i64 %idxprom55
  %is_valid = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx56, i32 0, i32 0
  %47 = load i8, i8* %is_valid, align 1
  %tobool57 = icmp ne i8 %47, 0
  br i1 %tobool57, label %if.then.58, label %if.end.143

if.then.58:                                       ; preds = %for.body.54
  %48 = load i32, i32* @current_blocks, align 4
  %49 = load i32, i32* %bb_src, align 4
  %add59 = add nsw i32 %48, %49
  %idxprom60 = sext i32 %add59 to i64
  %50 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %50, i64 %idxprom60
  %51 = load i32, i32* %arrayidx61, align 4
  call void @get_block_head_tail(i32 %51, %struct.rtx_def** %head, %struct.rtx_def** %tail)
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 2
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %src_next_tail, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %src_head, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %src_head, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %insn, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.138, %if.then.58
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %src_next_tail, align 8
  %cmp66 = icmp ne %struct.rtx_def* %56, %57
  br i1 %cmp66, label %for.body.68, label %for.end.142

for.body.68:                                      ; preds = %for.cond.65
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load69 = load i32, i32* %59, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %idxprom71 = sext i32 %bf.clear70 to i64
  %arrayidx72 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom71
  %60 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %60 to i32
  %cmp74 = icmp eq i32 %conv73, 105
  br i1 %cmp74, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %for.body.68
  br label %for.inc.138

if.end.77:                                        ; preds = %for.body.68
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %62 = load i32, i32* %rtint80, align 4
  %idxprom81 = sext i32 %62 to i64
  %63 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx82 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %63, i64 %idxprom81
  %cant_move = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx82, i32 0, i32 11
  %bf.load83 = load i8, i8* %cant_move, align 2
  %bf.clear84 = and i8 %bf.load83, 1
  %bf.cast = zext i8 %bf.clear84 to i32
  %tobool85 = icmp ne i32 %bf.cast, 0
  br i1 %tobool85, label %if.end.137, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %if.end.77
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtint89 = bitcast %union.rtunion_def* %arrayidx88 to i32*
  %65 = load i32, i32* %rtint89, align 4
  %idxprom90 = sext i32 %65 to i64
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx91 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom90
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx91, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 11
  %68 = load i32, i32* %index, align 4
  %add92 = add nsw i32 %68, 0
  %idxprom93 = sext i32 %add92 to i64
  %69 = load i32*, i32** @block_to_bb, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %69, i64 %idxprom93
  %70 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx96 = getelementptr inbounds %struct.candidate, %struct.candidate* %71, i64 %idxprom95
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx96, i32 0, i32 1
  %72 = load i8, i8* %is_speculative, align 1
  %tobool97 = icmp ne i8 %72, 0
  br i1 %tobool97, label %lor.lhs.false.98, label %if.then.108

lor.lhs.false.98:                                 ; preds = %land.lhs.true.86
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call99 = call i32 @insn_issue_delay(%struct.rtx_def* %73)
  %cmp100 = icmp sle i32 %call99, 3
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.137

land.lhs.true.102:                                ; preds = %lor.lhs.false.98
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %75 = load i32, i32* %bb_src, align 4
  %call103 = call i32 @check_live(%struct.rtx_def* %74, i32 %75)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %land.lhs.true.105, label %if.end.137

land.lhs.true.105:                                ; preds = %land.lhs.true.102
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %77 = load i32, i32* %bb_src, align 4
  %78 = load i32, i32* @target_bb, align 4
  %call106 = call i32 @is_exception_free(%struct.rtx_def* %76, i32 %77, i32 %78)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.137

if.then.108:                                      ; preds = %land.lhs.true.105, %land.lhs.true.86
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call110 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %79)
  store %struct.rtx_def* %call110, %struct.rtx_def** %next109, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %81 = load i32, i32* %rtint113, align 4
  %idxprom114 = sext i32 %81 to i64
  %82 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx115 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %82, i64 %idxprom114
  %dep_count116 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx115, i32 0, i32 4
  %83 = load i32, i32* %dep_count116, align 4
  %cmp117 = icmp eq i32 %83, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.136

land.lhs.true.119:                                ; preds = %if.then.108
  %84 = load %struct.rtx_def*, %struct.rtx_def** %next109, align 8
  %tobool120 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool120, label %lor.lhs.false.121, label %if.then.135

lor.lhs.false.121:                                ; preds = %land.lhs.true.119
  %85 = load %struct.rtx_def*, %struct.rtx_def** %next109, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load122 = load i32, i32* %86, align 8
  %bf.lshr123 = lshr i32 %bf.load122, 28
  %bf.clear124 = and i32 %bf.lshr123, 1
  %cmp125 = icmp eq i32 %bf.clear124, 0
  br i1 %cmp125, label %if.then.135, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.121
  %87 = load %struct.rtx_def*, %struct.rtx_def** %next109, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load128 = load i32, i32* %88, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %idxprom130 = sext i32 %bf.clear129 to i64
  %arrayidx131 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom130
  %89 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %89 to i32
  %cmp133 = icmp eq i32 %conv132, 105
  br i1 %cmp133, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false.121, %land.lhs.true.119
  %90 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @ready_add(%struct.ready_list* %90, %struct.rtx_def* %91)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %lor.lhs.false.127, %if.then.108
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.105, %land.lhs.true.102, %lor.lhs.false.98, %if.end.77
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137, %if.then.76
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 2
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %insn, align 8
  br label %for.cond.65

for.end.142:                                      ; preds = %for.cond.65
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %for.body.54
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %94 = load i32, i32* %bb_src, align 4
  %inc145 = add nsw i32 %94, 1
  store i32 %inc145, i32* %bb_src, align 4
  br label %for.cond.51

for.end.146:                                      ; preds = %for.cond.51
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @can_schedule_ready_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %b1 = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @last_was_jump, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index, align 4
  %add = add nsw i32 %6, 0
  %idxprom2 = sext i32 %add to i64
  %7 = load i32*, i32** @block_to_bb, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* @target_bb, align 4
  %cmp4 = icmp ne i32 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.else.104

if.then.5:                                        ; preds = %if.end
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
  %idxprom15 = sext i32 %add14 to i64
  %15 = load i32*, i32** @block_to_bb, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx18 = getelementptr inbounds %struct.candidate, %struct.candidate* %17, i64 %idxprom17
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx18, i32 0, i32 1
  %18 = load i8, i8* %is_speculative, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.then.19, label %if.end.65

if.then.19:                                       ; preds = %if.then.5
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtint22 = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %21 = load i32, i32* %rtint22, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data24 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb25 = bitcast %union.varray_data_tag* %data24 to [1 x %struct.basic_block_def*]*
  %arrayidx26 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb25, i32 0, i64 %idxprom23
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx26, align 8
  %index27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index27, align 4
  %add28 = add nsw i32 %24, 0
  %idxprom29 = sext i32 %add28 to i64
  %25 = load i32*, i32** @block_to_bb, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %25, i64 %idxprom29
  %26 = load i32, i32* %arrayidx30, align 4
  %call = call i32 @check_live(%struct.rtx_def* %19, i32 %26)
  %tobool31 = icmp ne i32 %call, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.19
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtint36 = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %29 = load i32, i32* %rtint36, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data38 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb39 = bitcast %union.varray_data_tag* %data38 to [1 x %struct.basic_block_def*]*
  %arrayidx40 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb39, i32 0, i64 %idxprom37
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx40, align 8
  %index41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index41, align 4
  %add42 = add nsw i32 %32, 0
  %idxprom43 = sext i32 %add42 to i64
  %33 = load i32*, i32** @block_to_bb, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %33, i64 %idxprom43
  %34 = load i32, i32* %arrayidx44, align 4
  call void @update_live(%struct.rtx_def* %27, i32 %34)
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtint47 = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %36 = load i32, i32* %rtint47, align 4
  %idxprom48 = sext i32 %36 to i64
  %37 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx49 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %37, i64 %idxprom48
  %is_load_insn = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx49, i32 0, i32 11
  %bf.load50 = load i8, i8* %is_load_insn, align 2
  %bf.lshr = lshr i8 %bf.load50, 2
  %bf.clear51 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear51 to i32
  %tobool52 = icmp ne i32 %bf.cast, 0
  br i1 %tobool52, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %39 = load i32, i32* %rtint55, align 4
  %idxprom56 = sext i32 %39 to i64
  %40 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx57 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %40, i64 %idxprom56
  %fed_by_spec_load = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx57, i32 0, i32 11
  %bf.load58 = load i8, i8* %fed_by_spec_load, align 2
  %bf.lshr59 = lshr i8 %bf.load58, 1
  %bf.clear60 = and i8 %bf.lshr59, 1
  %bf.cast61 = zext i8 %bf.clear60 to i32
  %tobool62 = icmp ne i32 %bf.cast61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %lor.lhs.false, %if.end.33
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @set_spec_fed(%struct.rtx_def* %41)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %lor.lhs.false
  %42 = load i32, i32* @nr_spec, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* @nr_spec, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.5
  %43 = load i32, i32* @nr_inter, align 4
  %inc66 = add nsw i32 %43, 1
  store i32 %inc66, i32* @nr_inter, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.65
  %45 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load67 = load i32, i32* %46, align 8
  %bf.lshr68 = lshr i32 %bf.load67, 28
  %bf.clear69 = and i32 %bf.lshr68, 1
  %tobool70 = icmp ne i32 %bf.clear69, 0
  br i1 %tobool70, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtint75 = bitcast %union.rtunion_def* %arrayidx74 to i32*
  %50 = load i32, i32* %rtint75, align 4
  %idxprom76 = sext i32 %50 to i64
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data77 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 4
  %bb78 = bitcast %union.varray_data_tag* %data77 to [1 x %struct.basic_block_def*]*
  %arrayidx79 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb78, i32 0, i64 %idxprom76
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx79, align 8
  store %struct.basic_block_def* %52, %struct.basic_block_def** %b1, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 0
  %55 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp80 = icmp eq %struct.rtx_def* %53, %55
  br i1 %cmp80, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 1
  %58 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp81 = icmp eq %struct.rtx_def* %56, %58
  br i1 %cmp81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %land.lhs.true
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call83 = call %struct.rtx_def* @emit_note_after(i32 -99, %struct.rtx_def* %59)
  store %struct.rtx_def* %call83, %struct.rtx_def** %note, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %head84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 0
  store %struct.rtx_def* %60, %struct.rtx_def** %head84, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %end85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 1
  store %struct.rtx_def* %62, %struct.rtx_def** %end85, align 8
  br label %if.end.103

if.else:                                          ; preds = %land.lhs.true, %while.end
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %end86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i32 0, i32 1
  %66 = load %struct.rtx_def*, %struct.rtx_def** %end86, align 8
  %cmp87 = icmp eq %struct.rtx_def* %64, %66
  br i1 %cmp87, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %if.else
  %67 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 1
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %end92 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 1
  store %struct.rtx_def* %68, %struct.rtx_def** %end92, align 8
  br label %if.end.102

if.else.93:                                       ; preds = %if.else
  %70 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %head94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 0
  %72 = load %struct.rtx_def*, %struct.rtx_def** %head94, align 8
  %cmp95 = icmp eq %struct.rtx_def* %70, %72
  br i1 %cmp95, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %if.else.93
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 2
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %b1, align 8
  %head100 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 0
  store %struct.rtx_def* %74, %struct.rtx_def** %head100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %if.else.93
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.88
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.82
  br label %if.end.106

if.else.104:                                      ; preds = %if.end
  %76 = load i32, i32* @sched_target_n_insns, align 4
  %inc105 = add nsw i32 %76, 1
  store i32 %inc105, i32* @sched_target_n_insns, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.end.103
  %77 = load i32, i32* @sched_n_insns, align 4
  %inc107 = add nsw i32 %77, 1
  store i32 %inc107, i32* @sched_n_insns, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.106, %if.then.32
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal i32 @schedule_more_p() #0 {
entry:
  %0 = load i32, i32* @last_was_jump, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @sched_target_n_insns, align 4
  %2 = load i32, i32* @target_n_insns, align 4
  %cmp = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @new_ready(%struct.rtx_def* %next) #0 {
entry:
  %retval = alloca i32, align 4
  %next.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %add = add nsw i32 %4, 0
  %idxprom2 = sext i32 %add to i64
  %5 = load i32*, i32** @block_to_bb, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* @target_bb, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %9 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index11, align 4
  %add12 = add nsw i32 %12, 0
  %idxprom13 = sext i32 %add12 to i64
  %13 = load i32*, i32** @block_to_bb, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %13, i64 %idxprom13
  %14 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx16 = getelementptr inbounds %struct.candidate, %struct.candidate* %15, i64 %idxprom15
  %is_valid = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx16, i32 0, i32 0
  %16 = load i8, i8* %is_valid, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %18 = load i32, i32* %rtint19, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx21 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %19, i64 %idxprom20
  %cant_move = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx21, i32 0, i32 11
  %bf.load = load i8, i8* %cant_move, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool22 = icmp ne i32 %bf.cast, 0
  br i1 %tobool22, label %if.then, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %21 = load i32, i32* %rtint26, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb29, i32 0, i64 %idxprom27
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index31, align 4
  %add32 = add nsw i32 %24, 0
  %idxprom33 = sext i32 %add32 to i64
  %25 = load i32*, i32** @block_to_bb, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %25, i64 %idxprom33
  %26 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx36 = getelementptr inbounds %struct.candidate, %struct.candidate* %27, i64 %idxprom35
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx36, i32 0, i32 1
  %28 = load i8, i8* %is_speculative, align 1
  %conv = sext i8 %28 to i32
  %tobool37 = icmp ne i32 %conv, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end

land.lhs.true.38:                                 ; preds = %lor.lhs.false.23
  %29 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %call = call i32 @insn_issue_delay(%struct.rtx_def* %29)
  %cmp39 = icmp sgt i32 %call, 3
  br i1 %cmp39, label %if.then, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.38
  %30 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %32 = load i32, i32* %rtint44, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data46 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb47 = bitcast %union.varray_data_tag* %data46 to [1 x %struct.basic_block_def*]*
  %arrayidx48 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb47, i32 0, i64 %idxprom45
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx48, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index49, align 4
  %add50 = add nsw i32 %35, 0
  %idxprom51 = sext i32 %add50 to i64
  %36 = load i32*, i32** @block_to_bb, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %36, i64 %idxprom51
  %37 = load i32, i32* %arrayidx52, align 4
  %call53 = call i32 @check_live(%struct.rtx_def* %30, i32 %37)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %lor.lhs.false.55, label %if.then

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.41
  %38 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %40 = load i32, i32* %rtint58, align 4
  %idxprom59 = sext i32 %40 to i64
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data60 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 4
  %bb61 = bitcast %union.varray_data_tag* %data60 to [1 x %struct.basic_block_def*]*
  %arrayidx62 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb61, i32 0, i64 %idxprom59
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx62, align 8
  %index63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index63, align 4
  %add64 = add nsw i32 %43, 0
  %idxprom65 = sext i32 %add64 to i64
  %44 = load i32*, i32** @block_to_bb, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %44, i64 %idxprom65
  %45 = load i32, i32* %arrayidx66, align 4
  %46 = load i32, i32* @target_bb, align 4
  %call67 = call i32 @is_exception_free(%struct.rtx_def* %38, i32 %45, i32 %46)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.55, %lor.lhs.false.41, %land.lhs.true.38, %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.55, %lor.lhs.false.23, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @rgn_rank(%struct.rtx_def* %insn1, %struct.rtx_def* %insn2) #0 {
entry:
  %retval = alloca i32, align 4
  %insn1.addr = alloca %struct.rtx_def*, align 8
  %insn2.addr = alloca %struct.rtx_def*, align 8
  %spec_val = alloca i32, align 4
  %prob_val = alloca i32, align 4
  store %struct.rtx_def* %insn1, %struct.rtx_def** %insn1.addr, align 8
  store %struct.rtx_def* %insn2, %struct.rtx_def** %insn2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %add = add nsw i32 %4, 0
  %idxprom2 = sext i32 %add to i64
  %5 = load i32*, i32** @block_to_bb, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn2.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %8 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index11, align 4
  %add12 = add nsw i32 %11, 0
  %idxprom13 = sext i32 %add12 to i64
  %12 = load i32*, i32** @block_to_bb, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %12, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %cmp = icmp ne i32 %6, %13
  br i1 %cmp, label %if.then, label %if.end.128

if.then:                                          ; preds = %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn2.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %15 = load i32, i32* %rtint17, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data19 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb20 = bitcast %union.varray_data_tag* %data19 to [1 x %struct.basic_block_def*]*
  %arrayidx21 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb20, i32 0, i64 %idxprom18
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx21, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index22, align 4
  %add23 = add nsw i32 %18, 0
  %idxprom24 = sext i32 %add23 to i64
  %19 = load i32*, i32** @block_to_bb, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %19, i64 %idxprom24
  %20 = load i32, i32* %arrayidx25, align 4
  %21 = load i32, i32* @target_bb, align 4
  %cmp26 = icmp eq i32 %20, %21
  br i1 %cmp26, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn1.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %23 = load i32, i32* %rtint29, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data31 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %bb32 = bitcast %union.varray_data_tag* %data31 to [1 x %struct.basic_block_def*]*
  %arrayidx33 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb32, i32 0, i64 %idxprom30
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx33, align 8
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index34, align 4
  %add35 = add nsw i32 %26, 0
  %idxprom36 = sext i32 %add35 to i64
  %27 = load i32*, i32** @block_to_bb, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %27, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %29 = load i32, i32* @target_bb, align 4
  %cmp38 = icmp ne i32 %28, %29
  br i1 %cmp38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn1.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %31 = load i32, i32* %rtint42, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data44 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %32, i32 0, i32 4
  %bb45 = bitcast %union.varray_data_tag* %data44 to [1 x %struct.basic_block_def*]*
  %arrayidx46 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb45, i32 0, i64 %idxprom43
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx46, align 8
  %index47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 11
  %34 = load i32, i32* %index47, align 4
  %add48 = add nsw i32 %34, 0
  %idxprom49 = sext i32 %add48 to i64
  %35 = load i32*, i32** @block_to_bb, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %35, i64 %idxprom49
  %36 = load i32, i32* %arrayidx50, align 4
  %37 = load i32, i32* @target_bb, align 4
  %cmp51 = icmp eq i32 %36, %37
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.66

land.lhs.true.52:                                 ; preds = %if.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn2.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %39 = load i32, i32* %rtint55, align 4
  %idxprom56 = sext i32 %39 to i64
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data57 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %bb58 = bitcast %union.varray_data_tag* %data57 to [1 x %struct.basic_block_def*]*
  %arrayidx59 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb58, i32 0, i64 %idxprom56
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx59, align 8
  %index60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index60, align 4
  %add61 = add nsw i32 %42, 0
  %idxprom62 = sext i32 %add61 to i64
  %43 = load i32*, i32** @block_to_bb, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %43, i64 %idxprom62
  %44 = load i32, i32* %arrayidx63, align 4
  %45 = load i32, i32* @target_bb, align 4
  %cmp64 = icmp ne i32 %44, %45
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.52
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %land.lhs.true.52, %if.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn1.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtint69 = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %47 = load i32, i32* %rtint69, align 4
  %idxprom70 = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data71 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %bb72 = bitcast %union.varray_data_tag* %data71 to [1 x %struct.basic_block_def*]*
  %arrayidx73 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb72, i32 0, i64 %idxprom70
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx73, align 8
  %index74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 11
  %50 = load i32, i32* %index74, align 4
  %add75 = add nsw i32 %50, 0
  %idxprom76 = sext i32 %add75 to i64
  %51 = load i32*, i32** @block_to_bb, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %51, i64 %idxprom76
  %52 = load i32, i32* %arrayidx77, align 4
  %idxprom78 = sext i32 %52 to i64
  %53 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx79 = getelementptr inbounds %struct.candidate, %struct.candidate* %53, i64 %idxprom78
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx79, i32 0, i32 1
  %54 = load i8, i8* %is_speculative, align 1
  %conv = sext i8 %54 to i32
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn2.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtint82 = bitcast %union.rtunion_def* %arrayidx81 to i32*
  %56 = load i32, i32* %rtint82, align 4
  %idxprom83 = sext i32 %56 to i64
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data84 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %57, i32 0, i32 4
  %bb85 = bitcast %union.varray_data_tag* %data84 to [1 x %struct.basic_block_def*]*
  %arrayidx86 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb85, i32 0, i64 %idxprom83
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx86, align 8
  %index87 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index87, align 4
  %add88 = add nsw i32 %59, 0
  %idxprom89 = sext i32 %add88 to i64
  %60 = load i32*, i32** @block_to_bb, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %60, i64 %idxprom89
  %61 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = sext i32 %61 to i64
  %62 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx92 = getelementptr inbounds %struct.candidate, %struct.candidate* %62, i64 %idxprom91
  %is_speculative93 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx92, i32 0, i32 1
  %63 = load i8, i8* %is_speculative93, align 1
  %conv94 = sext i8 %63 to i32
  %sub = sub nsw i32 %conv, %conv94
  store i32 %sub, i32* %spec_val, align 4
  %64 = load i32, i32* %spec_val, align 4
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.66
  %65 = load i32, i32* %spec_val, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.66
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn2.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtint99 = bitcast %union.rtunion_def* %arrayidx98 to i32*
  %67 = load i32, i32* %rtint99, align 4
  %idxprom100 = sext i32 %67 to i64
  %68 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data101 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %68, i32 0, i32 4
  %bb102 = bitcast %union.varray_data_tag* %data101 to [1 x %struct.basic_block_def*]*
  %arrayidx103 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb102, i32 0, i64 %idxprom100
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx103, align 8
  %index104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 11
  %70 = load i32, i32* %index104, align 4
  %add105 = add nsw i32 %70, 0
  %idxprom106 = sext i32 %add105 to i64
  %71 = load i32*, i32** @block_to_bb, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %71, i64 %idxprom106
  %72 = load i32, i32* %arrayidx107, align 4
  %idxprom108 = sext i32 %72 to i64
  %73 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx109 = getelementptr inbounds %struct.candidate, %struct.candidate* %73, i64 %idxprom108
  %src_prob = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx109, i32 0, i32 2
  %74 = load i32, i32* %src_prob, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn1.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtint112 = bitcast %union.rtunion_def* %arrayidx111 to i32*
  %76 = load i32, i32* %rtint112, align 4
  %idxprom113 = sext i32 %76 to i64
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data114 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 4
  %bb115 = bitcast %union.varray_data_tag* %data114 to [1 x %struct.basic_block_def*]*
  %arrayidx116 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb115, i32 0, i64 %idxprom113
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx116, align 8
  %index117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 11
  %79 = load i32, i32* %index117, align 4
  %add118 = add nsw i32 %79, 0
  %idxprom119 = sext i32 %add118 to i64
  %80 = load i32*, i32** @block_to_bb, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %80, i64 %idxprom119
  %81 = load i32, i32* %arrayidx120, align 4
  %idxprom121 = sext i32 %81 to i64
  %82 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx122 = getelementptr inbounds %struct.candidate, %struct.candidate* %82, i64 %idxprom121
  %src_prob123 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx122, i32 0, i32 2
  %83 = load i32, i32* %src_prob123, align 4
  %sub124 = sub nsw i32 %74, %83
  store i32 %sub124, i32* %prob_val, align 4
  %84 = load i32, i32* %prob_val, align 4
  %tobool125 = icmp ne i32 %84, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.96
  %85 = load i32, i32* %prob_val, align 4
  store i32 %85, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.96
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.then.126, %if.then.95, %if.then.65, %if.then.39
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i8* @rgn_print_insn(%struct.rtx_def* %insn, i32 %aligned) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %aligned.addr = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %aligned, i32* %aligned.addr, align 4
  %0 = load i32, i32* %aligned.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 11
  %5 = load i32, i32* %index, align 4
  %add = add nsw i32 %5, 0
  %idxprom2 = sext i32 %add to i64
  %6 = load i32*, i32** @block_to_bb, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %9 = load i32, i32* %rtint6, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @rgn_print_insn.tmp, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 %7, i32 %9) #4
  br label %if.end.40

if.else:                                          ; preds = %entry
  %10 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %12 = load i32, i32* %rtint9, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %bb12 = bitcast %union.varray_data_tag* %data11 to [1 x %struct.basic_block_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb12, i32 0, i64 %idxprom10
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx13, align 8
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index14, align 4
  %add15 = add nsw i32 %15, 0
  %idxprom16 = sext i32 %add15 to i64
  %16 = load i32*, i32** @block_to_bb, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %18 = load i32, i32* @target_bb, align 4
  %cmp18 = icmp ne i32 %17, %18
  br i1 %cmp18, label %if.then.19, label %if.else.35

if.then.19:                                       ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtint22 = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %20 = load i32, i32* %rtint22, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %22 = load i32, i32* %rtint25, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %bb28 = bitcast %union.varray_data_tag* %data27 to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb28, i32 0, i64 %idxprom26
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  %index30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index30, align 4
  %add31 = add nsw i32 %25, 0
  %idxprom32 = sext i32 %add31 to i64
  %26 = load i32*, i32** @block_to_bb, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @rgn_print_insn.tmp, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %20, i32 %27) #4
  br label %if.end

if.else.35:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %29 = load i32, i32* %rtint38, align 4
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @rgn_print_insn.tmp, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i32 %29) #4
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.19
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @rgn_print_insn.tmp, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal i32 @contributes_to_priority(%struct.rtx_def* %next, %struct.rtx_def* %insn) #0 {
entry:
  %next.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %next.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %add = add nsw i32 %4, 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %6 = load i32, i32* %rtint4, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data6 to [1 x %struct.basic_block_def*]*
  %arrayidx8 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom5
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx8, align 8
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index9, align 4
  %add10 = add nsw i32 %9, 0
  %cmp = icmp eq i32 %add, %add10
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @compute_jump_reg_dependencies(%struct.rtx_def* %insn, %struct.bitmap_head_def* %set) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.bitmap_head_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.bitmap_head_def* %set, %struct.bitmap_head_def** %set.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_trg_info(i32 %trg) #0 {
entry:
  %trg.addr = alloca i32, align 4
  %sp = alloca %struct.candidate*, align 8
  %el = alloca %struct.bitlst, align 8
  %check_block = alloca i32, align 4
  %update_idx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fst_edge = alloca i32, align 4
  %nxt_edge = alloca i32, align 4
  %update_blocks = alloca i8*, align 8
  store i32 %trg, i32* %trg.addr, align 4
  %0 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %1 = load i32, i32* %trg.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.candidate, %struct.candidate* %0, i64 %idx.ext
  store %struct.candidate* %add.ptr, %struct.candidate** %sp, align 8
  %2 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid = getelementptr inbounds %struct.candidate, %struct.candidate* %2, i32 0, i32 0
  store i8 1, i8* %is_valid, align 1
  %3 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_speculative = getelementptr inbounds %struct.candidate, %struct.candidate* %3, i32 0, i32 1
  store i8 0, i8* %is_speculative, align 1
  %4 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %src_prob = getelementptr inbounds %struct.candidate, %struct.candidate* %4, i32 0, i32 2
  store i32 100, i32* %src_prob, align 4
  %5 = load i32, i32* %trg.addr, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.138, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.140

for.body:                                         ; preds = %for.cond
  %8 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext1 = sext i32 %9 to i64
  %add.ptr2 = getelementptr inbounds %struct.candidate, %struct.candidate* %8, i64 %idx.ext1
  store %struct.candidate* %add.ptr2, %struct.candidate** %sp, align 8
  %10 = load i32, i32* %trg.addr, align 4
  %div = udiv i32 %10, 64
  %idxprom = zext i32 %div to i64
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %12, i64 %idxprom3
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %14 = load i64, i64* %arrayidx4, align 8
  %15 = load i32, i32* %trg.addr, align 4
  %rem = urem i32 %15, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %14, %sh_prom
  %and = and i64 %shr, 1
  %conv = trunc i64 %and to i8
  %16 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid5 = getelementptr inbounds %struct.candidate, %struct.candidate* %16, i32 0, i32 0
  store i8 %conv, i8* %is_valid5, align 1
  %17 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid6 = getelementptr inbounds %struct.candidate, %struct.candidate* %17, i32 0, i32 0
  %18 = load i8, i8* %is_valid6, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load float*, float** @prob, align 8
  %arrayidx8 = getelementptr inbounds float, float* %20, i64 %idxprom7
  %21 = load float, float* %arrayidx8, align 4
  %22 = load i32, i32* %trg.addr, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load float*, float** @prob, align 8
  %arrayidx10 = getelementptr inbounds float, float* %23, i64 %idxprom9
  %24 = load float, float* %arrayidx10, align 4
  %div11 = fdiv float %21, %24
  %conv12 = fpext float %div11 to double
  %mul = fmul double 1.000000e+02, %conv12
  %conv13 = fptosi double %mul to i32
  %25 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %src_prob14 = getelementptr inbounds %struct.candidate, %struct.candidate* %25, i32 0, i32 2
  store i32 %conv13, i32* %src_prob14, align 4
  %26 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %src_prob15 = getelementptr inbounds %struct.candidate, %struct.candidate* %26, i32 0, i32 2
  %27 = load i32, i32* %src_prob15, align 4
  %cmp16 = icmp sge i32 %27, 40
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = trunc i32 %conv17 to i8
  %28 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid19 = getelementptr inbounds %struct.candidate, %struct.candidate* %28, i32 0, i32 0
  store i8 %conv18, i8* %is_valid19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %29 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid20 = getelementptr inbounds %struct.candidate, %struct.candidate* %29, i32 0, i32 0
  %30 = load i8, i8* %is_valid20, align 1
  %tobool21 = icmp ne i8 %30, 0
  br i1 %tobool21, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %trg.addr, align 4
  call void @split_edges(i32 %31, i32 %32, %struct.bitlst* %el)
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %33 = load i32, i32* %nr_members, align 4
  %tobool23 = icmp ne i32 %33, 0
  %cond = select i1 %tobool23, i32 1, i32 0
  %conv24 = trunc i32 %cond to i8
  %34 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_speculative25 = getelementptr inbounds %struct.candidate, %struct.candidate* %34, i32 0, i32 1
  store i8 %conv24, i8* %is_speculative25, align 1
  %35 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_speculative26 = getelementptr inbounds %struct.candidate, %struct.candidate* %35, i32 0, i32 1
  %36 = load i8, i8* %is_speculative26, align 1
  %conv27 = sext i8 %36 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.then.22
  %37 = load i32, i32* @flag_schedule_speculative, align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true
  %38 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid31 = getelementptr inbounds %struct.candidate, %struct.candidate* %38, i32 0, i32 0
  store i8 0, i8* %is_valid31, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true, %if.then.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %39 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_valid34 = getelementptr inbounds %struct.candidate, %struct.candidate* %39, i32 0, i32 0
  %40 = load i8, i8* %is_valid34, align 1
  %tobool35 = icmp ne i8 %40, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.33
  %41 = load i32, i32* @bblst_last, align 4
  %idxprom37 = sext i32 %41 to i64
  %42 = load i32*, i32** @bblst_table, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %42, i64 %idxprom37
  %43 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %split_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %43, i32 0, i32 3
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs, i32 0, i32 0
  store i32* %arrayidx38, i32** %first_member, align 8
  %nr_members39 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %44 = load i32, i32* %nr_members39, align 4
  %45 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %split_bbs40 = getelementptr inbounds %struct.candidate, %struct.candidate* %45, i32 0, i32 3
  %nr_members41 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs40, i32 0, i32 1
  store i32 %44, i32* %nr_members41, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.then.36
  %46 = load i32, i32* %j, align 4
  %nr_members43 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %47 = load i32, i32* %nr_members43, align 4
  %cmp44 = icmp slt i32 %46, %47
  br i1 %cmp44, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %48 to i64
  %first_member48 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 0
  %49 = load i32*, i32** %first_member48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %49, i64 %idxprom47
  %50 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %50 to i64
  %51 = load i32*, i32** @rgn_edges, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %51, i64 %idxprom50
  %52 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx53 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %53, i64 %idxprom52
  %to_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx53, i32 0, i32 1
  %54 = load i32, i32* %to_block, align 4
  %55 = load i32, i32* @bblst_last, align 4
  %idxprom54 = sext i32 %55 to i64
  %56 = load i32*, i32** @bblst_table, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %56, i64 %idxprom54
  store i32 %54, i32* %arrayidx55, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %57 = load i32, i32* @bblst_last, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* @bblst_last, align 4
  %58 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %58, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  %59 = load i32, i32* @bblst_last, align 4
  %idxprom57 = sext i32 %59 to i64
  %60 = load i32*, i32** @bblst_table, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %60, i64 %idxprom57
  %61 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %update_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %61, i32 0, i32 4
  %first_member59 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs, i32 0, i32 0
  store i32* %arrayidx58, i32** %first_member59, align 8
  %62 = load i32, i32* @n_basic_blocks, align 4
  %conv60 = sext i32 %62 to i64
  %63 = alloca i8, i64 %conv60
  store i8* %63, i8** %update_blocks, align 8
  %64 = load i8*, i8** %update_blocks, align 8
  %65 = load i32, i32* @n_basic_blocks, align 4
  %conv61 = sext i32 %65 to i64
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 %conv61, i32 1, i1 false)
  store i32 0, i32* %update_idx, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.122, %for.end
  %66 = load i32, i32* %j, align 4
  %nr_members63 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %67 = load i32, i32* %nr_members63, align 4
  %cmp64 = icmp slt i32 %66, %67
  br i1 %cmp64, label %for.body.66, label %for.end.124

for.body.66:                                      ; preds = %for.cond.62
  %68 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %68 to i64
  %first_member68 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 0
  %69 = load i32*, i32** %first_member68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %69, i64 %idxprom67
  %70 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load i32*, i32** @rgn_edges, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %71, i64 %idxprom70
  %72 = load i32, i32* %arrayidx71, align 4
  %idxprom72 = sext i32 %72 to i64
  %73 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx73 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %73, i64 %idxprom72
  %from_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx73, i32 0, i32 0
  %74 = load i32, i32* %from_block, align 4
  store i32 %74, i32* %check_block, align 4
  %75 = load i32, i32* %check_block, align 4
  %idxprom74 = sext i32 %75 to i64
  %76 = load i32*, i32** @out_edges, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %76, i64 %idxprom74
  %77 = load i32, i32* %arrayidx75, align 4
  store i32 %77, i32* %nxt_edge, align 4
  store i32 %77, i32* %fst_edge, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.66
  %78 = load i32, i32* %nxt_edge, align 4
  %idxprom76 = sext i32 %78 to i64
  %79 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx77 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %79, i64 %idxprom76
  %to_block78 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx77, i32 0, i32 1
  %80 = load i32, i32* %to_block78, align 4
  %idxprom79 = sext i32 %80 to i64
  %81 = load i8*, i8** %update_blocks, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %81, i64 %idxprom79
  %82 = load i8, i8* %arrayidx80, align 1
  %tobool81 = icmp ne i8 %82, 0
  br i1 %tobool81, label %if.end.117, label %if.then.82

if.then.82:                                       ; preds = %do.body
  store i32 0, i32* %k, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.97, %if.then.82
  %83 = load i32, i32* %k, align 4
  %nr_members84 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %84 = load i32, i32* %nr_members84, align 4
  %cmp85 = icmp slt i32 %83, %84
  br i1 %cmp85, label %for.body.87, label %for.end.99

for.body.87:                                      ; preds = %for.cond.83
  %85 = load i32, i32* %nxt_edge, align 4
  %idxprom88 = sext i32 %85 to i64
  %86 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %86, i64 %idxprom88
  %87 = load i32, i32* %arrayidx89, align 4
  %88 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %88 to i64
  %first_member91 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 0
  %89 = load i32*, i32** %first_member91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %89, i64 %idxprom90
  %90 = load i32, i32* %arrayidx92, align 4
  %cmp93 = icmp eq i32 %87, %90
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.body.87
  br label %for.end.99

if.end.96:                                        ; preds = %for.body.87
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %91 = load i32, i32* %k, align 4
  %inc98 = add nsw i32 %91, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond.83

for.end.99:                                       ; preds = %if.then.95, %for.cond.83
  %92 = load i32, i32* %k, align 4
  %nr_members100 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %el, i32 0, i32 1
  %93 = load i32, i32* %nr_members100, align 4
  %cmp101 = icmp sge i32 %92, %93
  br i1 %cmp101, label %if.then.103, label %if.end.116

if.then.103:                                      ; preds = %for.end.99
  %94 = load i32, i32* %nxt_edge, align 4
  %idxprom104 = sext i32 %94 to i64
  %95 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx105 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %95, i64 %idxprom104
  %to_block106 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx105, i32 0, i32 1
  %96 = load i32, i32* %to_block106, align 4
  %97 = load i32, i32* @bblst_last, align 4
  %inc107 = add nsw i32 %97, 1
  store i32 %inc107, i32* @bblst_last, align 4
  %idxprom108 = sext i32 %97 to i64
  %98 = load i32*, i32** @bblst_table, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %98, i64 %idxprom108
  store i32 %96, i32* %arrayidx109, align 4
  %99 = load i32, i32* %nxt_edge, align 4
  %idxprom110 = sext i32 %99 to i64
  %100 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx111 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %100, i64 %idxprom110
  %to_block112 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx111, i32 0, i32 1
  %101 = load i32, i32* %to_block112, align 4
  %idxprom113 = sext i32 %101 to i64
  %102 = load i8*, i8** %update_blocks, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %102, i64 %idxprom113
  store i8 1, i8* %arrayidx114, align 1
  %103 = load i32, i32* %update_idx, align 4
  %inc115 = add nsw i32 %103, 1
  store i32 %inc115, i32* %update_idx, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.103, %for.end.99
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %do.body
  %104 = load i32, i32* %nxt_edge, align 4
  %idxprom118 = sext i32 %104 to i64
  %105 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx119 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %105, i64 %idxprom118
  %next_out = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx119, i32 0, i32 3
  %106 = load i32, i32* %next_out, align 4
  store i32 %106, i32* %nxt_edge, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.117
  %107 = load i32, i32* %fst_edge, align 4
  %108 = load i32, i32* %nxt_edge, align 4
  %cmp120 = icmp ne i32 %107, %108
  br i1 %cmp120, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc.122

for.inc.122:                                      ; preds = %do.end
  %109 = load i32, i32* %j, align 4
  %inc123 = add nsw i32 %109, 1
  store i32 %inc123, i32* %j, align 4
  br label %for.cond.62

for.end.124:                                      ; preds = %for.cond.62
  %110 = load i32, i32* %update_idx, align 4
  %111 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %update_bbs125 = getelementptr inbounds %struct.candidate, %struct.candidate* %111, i32 0, i32 4
  %nr_members126 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs125, i32 0, i32 1
  store i32 %110, i32* %nr_members126, align 4
  %112 = load i32, i32* @bblst_last, align 4
  %113 = load i32, i32* @bblst_size, align 4
  %cmp127 = icmp sgt i32 %112, %113
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %for.end.124
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 1229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.compute_trg_info, i32 0, i32 0)) #5
  unreachable

if.end.130:                                       ; preds = %for.end.124
  br label %if.end.137

if.else:                                          ; preds = %if.end.33
  %114 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %update_bbs131 = getelementptr inbounds %struct.candidate, %struct.candidate* %114, i32 0, i32 4
  %nr_members132 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs131, i32 0, i32 1
  store i32 0, i32* %nr_members132, align 4
  %115 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %split_bbs133 = getelementptr inbounds %struct.candidate, %struct.candidate* %115, i32 0, i32 3
  %nr_members134 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs133, i32 0, i32 1
  store i32 0, i32* %nr_members134, align 4
  %116 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %is_speculative135 = getelementptr inbounds %struct.candidate, %struct.candidate* %116, i32 0, i32 1
  store i8 0, i8* %is_speculative135, align 1
  %117 = load %struct.candidate*, %struct.candidate** %sp, align 8
  %src_prob136 = getelementptr inbounds %struct.candidate, %struct.candidate* %117, i32 0, i32 2
  store i32 0, i32* %src_prob136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else, %if.end.130
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %118 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %118, 1
  store i32 %inc139, i32* %i, align 4
  br label %for.cond

for.end.140:                                      ; preds = %for.cond
  ret void
}

declare void @ready_add(%struct.ready_list*, %struct.rtx_def*) #1

declare i32 @insn_issue_delay(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_live(%struct.rtx_def* %insn, i32 %src) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 49
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %src.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %call = call i32 @check_live_1(i32 %6, %struct.rtx_def* %8)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 39
  br i1 %cmp15, label %if.then.16, label %if.end.57

if.then.16:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 0
  %15 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %16 = load i32, i32* %j, align 4
  %cmp22 = icmp sge i32 %16, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec28, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx29, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load30 = load i32, i32* %22, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 47
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %for.body
  %23 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %elem41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem41, i32 0, i64 %idxprom34
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load43 = load i32, i32* %28, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 49
  br i1 %cmp45, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.33, %for.body
  %29 = load i32, i32* %src.addr, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtvec52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec52, align 8
  %elem53 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem53, i32 0, i64 %idxprom46
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx54, align 8
  %call55 = call i32 @check_live_1(i32 %29, %struct.rtx_def* %34)
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.end, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %j, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %for.end, %if.then.56, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @is_exception_free(%struct.rtx_def* %insn, i32 %bb_src, i32 %bb_trg) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb_src.addr = alloca i32, align 4
  %bb_trg.addr = alloca i32, align 4
  %insn_class = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %bb_src, i32* %bb_src.addr, align 4
  store i32 %bb_trg, i32* %bb_trg.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @haifa_classify_insn(%struct.rtx_def* %0)
  store i32 %call, i32* %insn_class, align 4
  %1 = load i32, i32* %insn_class, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %2 = load i32, i32* @flag_schedule_speculative_load, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx2 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %5, i64 %idxprom
  %is_load_insn = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx2, i32 0, i32 11
  %bf.load = load i8, i8* %is_load_insn, align 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %is_load_insn, align 2
  %6 = load i32, i32* %insn_class, align 4
  switch i32 %6, label %sw.default.16 [
    i32 1, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.10
  ]

sw.bb.3:                                          ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = load i32, i32* %bb_src.addr, align 4
  %9 = load i32, i32* %bb_trg.addr, align 4
  %call6 = call i32 @is_pfree(%struct.rtx_def* %7, i32 %8, i32 %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.bb.5
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.bb.5
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %if.end, %if.end.9
  %10 = load i32, i32* @flag_schedule_speculative_load_dangerous, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %sw.bb.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load i32, i32* %bb_src.addr, align 4
  %13 = load i32, i32* %bb_trg.addr, align 4
  %call12 = call i32 @is_prisky(%struct.rtx_def* %11, i32 %12, i32 %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %sw.bb.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  br label %sw.epilog.17

sw.default.16:                                    ; preds = %if.end
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.default.16, %if.end.15
  %14 = load i32, i32* @flag_schedule_speculative_load_dangerous, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.17, %if.then.14, %if.then.8, %sw.bb.4, %sw.bb.3, %if.then, %sw.bb.1, %sw.bb
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @split_edges(i32 %bb_src, i32 %bb_trg, %struct.bitlst* %bl) #0 {
entry:
  %bb_src.addr = alloca i32, align 4
  %bb_trg.addr = alloca i32, align 4
  %bl.addr = alloca %struct.bitlst*, align 8
  %src = alloca %struct.simple_bitmap_def*, align 8
  store i32 %bb_src, i32* %bb_src.addr, align 4
  store i32 %bb_trg, i32* %bb_trg.addr, align 4
  store %struct.bitlst* %bl, %struct.bitlst** %bl.addr, align 8
  %0 = load i32, i32* %bb_src.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %1, i64 %idxprom
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 0
  %3 = load i32, i32* %n_bits, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %src, align 8
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, align 8
  %5 = load i32, i32* %bb_src.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom1
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %7)
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, align 8
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, align 8
  %10 = load i32, i32* %bb_trg.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %11, i64 %idxprom3
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %8, %struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %12)
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, align 8
  %14 = load %struct.bitlst*, %struct.bitlst** %bl.addr, align 8
  call void @extract_bitlst(%struct.simple_bitmap_def* %13, %struct.bitlst* %14)
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, align 8
  %16 = bitcast %struct.simple_bitmap_def* %15 to i8*
  call void @free(i8* %16) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal void @extract_bitlst(%struct.simple_bitmap_def* %set, %struct.bitlst* %bl) #0 {
entry:
  %set.addr = alloca %struct.simple_bitmap_def*, align 8
  %bl.addr = alloca %struct.bitlst*, align 8
  %i = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.simple_bitmap_def* %set, %struct.simple_bitmap_def** %set.addr, align 8
  store %struct.bitlst* %bl, %struct.bitlst** %bl.addr, align 8
  store i32 0, i32* @bitlst_table_last, align 4
  %0 = load i32, i32* @bitlst_table_last, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** @bitlst_table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load %struct.bitlst*, %struct.bitlst** %bl.addr, align 8
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %2, i32 0, i32 0
  store i32* %arrayidx, i32** %first_member, align 8
  %3 = load %struct.bitlst*, %struct.bitlst** %bl.addr, align 8
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %3, i32 0, i32 1
  store i32 0, i32* %nr_members, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %set.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  store i32 %5, i32* %size_, align 4
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %set.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %do.body
  %7 = load i32, i32* %word_num_, align 4
  %8 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %word_num_, align 4
  %idxprom1 = zext i32 %9 to i64
  %10 = load i64*, i64** %ptr_, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %10, i64 %idxprom1
  %11 = load i64, i64* %arrayidx2, align 8
  store i64 %11, i64* %word_, align 8
  %12 = load i64, i64* %word_, align 8
  %cmp3 = icmp ne i64 %12, 0
  br i1 %cmp3, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %13 = load i32, i32* %bit_num_, align 4
  %cmp5 = icmp ult i32 %13, 64
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %15 = load i64, i64* %word_, align 8
  %16 = load i64, i64* %_mask, align 8
  %and = and i64 %15, %16
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %for.body.6
  %17 = load i64, i64* %_mask, align 8
  %neg = xor i64 %17, -1
  %18 = load i64, i64* %word_, align 8
  %and9 = and i64 %18, %neg
  store i64 %and9, i64* %word_, align 8
  %19 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %19, 64
  %20 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %20
  store i32 %add, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @bitlst_table_last, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @bitlst_table_last, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load i32*, i32** @bitlst_table, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %23, i64 %idxprom10
  store i32 %21, i32* %arrayidx11, align 4
  %24 = load %struct.bitlst*, %struct.bitlst** %bl.addr, align 8
  %nr_members12 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %24, i32 0, i32 1
  %25 = load i32, i32* %nr_members12, align 4
  %inc13 = add nsw i32 %25, 1
  store i32 %inc13, i32* %nr_members12, align 4
  %26 = load i64, i64* %word_, align 8
  %cmp14 = icmp eq i64 %26, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.8
  br label %for.end

if.end:                                           ; preds = %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %27 = load i32, i32* %bit_num_, align 4
  %inc17 = add i32 %27, 1
  store i32 %inc17, i32* %bit_num_, align 4
  br label %for.cond.4

for.end:                                          ; preds = %if.then.15, %for.cond.4
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %for.body
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %28 = load i32, i32* %word_num_, align 4
  %inc20 = add i32 %28, 1
  store i32 %inc20, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_live_1(i32 %src, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %regno = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %b170 = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 63
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 133
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 132
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %11 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load15 = load i32, i32* %15, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 39
  br i1 %cmp17, label %if.then.18, label %if.end.44

if.then.18:                                       ; preds = %while.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 0
  %18 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %i19, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %19 = load i32, i32* %i19, align 4
  %cmp22 = icmp sge i32 %19, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i19, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtvec25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec25, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %cmp30 = icmp ne %struct.rtx_def* %24, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %for.body
  %25 = load i32, i32* %src.addr, align 4
  %26 = load i32, i32* %i19, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem36 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem36, i32 0, i64 %idxprom32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %call = call i32 @check_live_1(i32 %25, %struct.rtx_def* %30)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.31
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %31 = load i32, i32* %i19, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i19, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %while.end
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load45 = load i32, i32* %33, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp ne i32 %bf.clear46, 61
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  store i32 1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.44
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %35 = load i32, i32* %rtuint, align 4
  store i32 %35, i32* %regno, align 4
  %36 = load i32, i32* %regno, align 4
  %cmp52 = icmp slt i32 %36, 53
  br i1 %cmp52, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.49
  %37 = load i32, i32* %regno, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom53
  %38 = load i8, i8* %arrayidx54, align 1
  %conv = sext i8 %38 to i32
  %tobool55 = icmp ne i32 %conv, 0
  br i1 %tobool55, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.49
  %39 = load i32, i32* %regno, align 4
  %cmp57 = icmp slt i32 %39, 53
  br i1 %cmp57, label %if.then.59, label %if.else.161

if.then.59:                                       ; preds = %if.else
  %40 = load i32, i32* %regno, align 4
  %cmp60 = icmp sge i32 %40, 8
  br i1 %cmp60, label %land.lhs.true.62, label %lor.lhs.false.65

land.lhs.true.62:                                 ; preds = %if.then.59
  %41 = load i32, i32* %regno, align 4
  %cmp63 = icmp sle i32 %41, 15
  br i1 %cmp63, label %cond.true, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %if.then.59
  %42 = load i32, i32* %regno, align 4
  %cmp66 = icmp sge i32 %42, 21
  br i1 %cmp66, label %land.lhs.true.68, label %lor.lhs.false.71

land.lhs.true.68:                                 ; preds = %lor.lhs.false.65
  %43 = load i32, i32* %regno, align 4
  %cmp69 = icmp sle i32 %43, 28
  br i1 %cmp69, label %cond.true, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.68, %lor.lhs.false.65
  %44 = load i32, i32* %regno, align 4
  %cmp72 = icmp sge i32 %44, 45
  br i1 %cmp72, label %land.lhs.true.74, label %lor.lhs.false.77

land.lhs.true.74:                                 ; preds = %lor.lhs.false.71
  %45 = load i32, i32* %regno, align 4
  %cmp75 = icmp sle i32 %45, 52
  br i1 %cmp75, label %cond.true, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.74, %lor.lhs.false.71
  %46 = load i32, i32* %regno, align 4
  %cmp78 = icmp sge i32 %46, 29
  br i1 %cmp78, label %land.lhs.true.80, label %cond.false

land.lhs.true.80:                                 ; preds = %lor.lhs.false.77
  %47 = load i32, i32* %regno, align 4
  %cmp81 = icmp sle i32 %47, 36
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.80, %land.lhs.true.74, %land.lhs.true.68, %land.lhs.true.62
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load83 = load i32, i32* %49, align 8
  %bf.lshr = lshr i32 %bf.load83, 16
  %bf.clear84 = and i32 %bf.lshr, 255
  %idxprom85 = sext i32 %bf.clear84 to i64
  %arrayidx86 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom85
  %50 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp eq i32 %50, 5
  br i1 %cmp87, label %lor.end.97, label %lor.rhs.89

lor.rhs.89:                                       ; preds = %cond.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load90 = load i32, i32* %52, align 8
  %bf.lshr91 = lshr i32 %bf.load90, 16
  %bf.clear92 = and i32 %bf.lshr91, 255
  %idxprom93 = sext i32 %bf.clear92 to i64
  %arrayidx94 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom93
  %53 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %53, 6
  br label %lor.end.97

lor.end.97:                                       ; preds = %lor.rhs.89, %cond.true
  %54 = phi i1 [ true, %cond.true ], [ %cmp95, %lor.rhs.89 ]
  %cond = select i1 %54, i32 2, i32 1
  br label %cond.end.133

cond.false:                                       ; preds = %land.lhs.true.80, %lor.lhs.false.77
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load98 = load i32, i32* %56, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %cmp101 = icmp eq i32 %bf.clear100, 18
  br i1 %cmp101, label %cond.true.103, label %cond.false.106

cond.true.103:                                    ; preds = %cond.false
  %57 = load i32, i32* @target_flags, align 4
  %and = and i32 %57, 33554432
  %tobool104 = icmp ne i32 %and, 0
  %cond105 = select i1 %tobool104, i32 2, i32 3
  br label %cond.end.131

cond.false.106:                                   ; preds = %cond.false
  %58 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load107 = load i32, i32* %59, align 8
  %bf.lshr108 = lshr i32 %bf.load107, 16
  %bf.clear109 = and i32 %bf.lshr108, 255
  %cmp110 = icmp eq i32 %bf.clear109, 24
  br i1 %cmp110, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %cond.false.106
  %60 = load i32, i32* @target_flags, align 4
  %and113 = and i32 %60, 33554432
  %tobool114 = icmp ne i32 %and113, 0
  %cond115 = select i1 %tobool114, i32 4, i32 6
  br label %cond.end

cond.false.116:                                   ; preds = %cond.false.106
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load117 = load i32, i32* %62, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  %idxprom120 = sext i32 %bf.clear119 to i64
  %arrayidx121 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom120
  %63 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %63 to i32
  %64 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %64, 33554432
  %tobool124 = icmp ne i32 %and123, 0
  %cond125 = select i1 %tobool124, i32 8, i32 4
  %add = add nsw i32 %conv122, %cond125
  %sub126 = sub nsw i32 %add, 1
  %65 = load i32, i32* @target_flags, align 4
  %and127 = and i32 %65, 33554432
  %tobool128 = icmp ne i32 %and127, 0
  %cond129 = select i1 %tobool128, i32 8, i32 4
  %div = sdiv i32 %sub126, %cond129
  br label %cond.end

cond.end:                                         ; preds = %cond.false.116, %cond.true.112
  %cond130 = phi i32 [ %cond115, %cond.true.112 ], [ %div, %cond.false.116 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end, %cond.true.103
  %cond132 = phi i32 [ %cond105, %cond.true.103 ], [ %cond130, %cond.end ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %lor.end.97
  %cond134 = phi i32 [ %cond, %lor.end.97 ], [ %cond132, %cond.end.131 ]
  store i32 %cond134, i32* %j, align 4
  br label %while.cond.135

while.cond.135:                                   ; preds = %for.end.159, %cond.end.133
  %66 = load i32, i32* %j, align 4
  %dec136 = add nsw i32 %66, -1
  store i32 %dec136, i32* %j, align 4
  %cmp137 = icmp sge i32 %dec136, 0
  br i1 %cmp137, label %while.body.139, label %while.end.160

while.body.139:                                   ; preds = %while.cond.135
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.158, %while.body.139
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %src.addr, align 4
  %idxprom141 = sext i32 %68 to i64
  %69 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx142 = getelementptr inbounds %struct.candidate, %struct.candidate* %69, i64 %idxprom141
  %split_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx142, i32 0, i32 3
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs, i32 0, i32 1
  %70 = load i32, i32* %nr_members, align 4
  %cmp143 = icmp slt i32 %67, %70
  br i1 %cmp143, label %for.body.145, label %for.end.159

for.body.145:                                     ; preds = %for.cond.140
  %71 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %71 to i64
  %72 = load i32, i32* %src.addr, align 4
  %idxprom147 = sext i32 %72 to i64
  %73 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx148 = getelementptr inbounds %struct.candidate, %struct.candidate* %73, i64 %idxprom147
  %split_bbs149 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx148, i32 0, i32 3
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs149, i32 0, i32 0
  %74 = load i32*, i32** %first_member, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %74, i64 %idxprom146
  %75 = load i32, i32* %arrayidx150, align 4
  store i32 %75, i32* %b, align 4
  %76 = load i32, i32* %b, align 4
  %idxprom151 = sext i32 %76 to i64
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx152 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom151
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx152, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 8
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %80 = load i32, i32* %regno, align 4
  %81 = load i32, i32* %j, align 4
  %add153 = add nsw i32 %80, %81
  %call154 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %79, i32 %add153)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %for.body.145
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %for.body.145
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.140

for.end.159:                                      ; preds = %for.cond.140
  br label %while.cond.135

while.end.160:                                    ; preds = %while.cond.135
  br label %if.end.189

if.else.161:                                      ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.186, %if.else.161
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %src.addr, align 4
  %idxprom163 = sext i32 %84 to i64
  %85 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx164 = getelementptr inbounds %struct.candidate, %struct.candidate* %85, i64 %idxprom163
  %split_bbs165 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx164, i32 0, i32 3
  %nr_members166 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs165, i32 0, i32 1
  %86 = load i32, i32* %nr_members166, align 4
  %cmp167 = icmp slt i32 %83, %86
  br i1 %cmp167, label %for.body.169, label %for.end.188

for.body.169:                                     ; preds = %for.cond.162
  %87 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %87 to i64
  %88 = load i32, i32* %src.addr, align 4
  %idxprom172 = sext i32 %88 to i64
  %89 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx173 = getelementptr inbounds %struct.candidate, %struct.candidate* %89, i64 %idxprom172
  %split_bbs174 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx173, i32 0, i32 3
  %first_member175 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs174, i32 0, i32 0
  %90 = load i32*, i32** %first_member175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %90, i64 %idxprom171
  %91 = load i32, i32* %arrayidx176, align 4
  store i32 %91, i32* %b170, align 4
  %92 = load i32, i32* %b170, align 4
  %idxprom177 = sext i32 %92 to i64
  %93 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data178 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %93, i32 0, i32 4
  %bb179 = bitcast %union.varray_data_tag* %data178 to [1 x %struct.basic_block_def*]*
  %arrayidx180 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb179, i32 0, i64 %idxprom177
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx180, align 8
  %global_live_at_start181 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i32 0, i32 8
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start181, align 8
  %96 = load i32, i32* %regno, align 4
  %call182 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %95, i32 %96)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %for.body.169
  store i32 0, i32* %retval
  br label %return

if.end.185:                                       ; preds = %for.body.169
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %97 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %97, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.162

for.end.188:                                      ; preds = %for.cond.162
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %while.end.160
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.190, %if.then.184, %if.then.156, %if.then.56, %if.then.48, %for.end, %if.then.41, %if.then
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @haifa_classify_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %tmp_class = alloca i32, align 4
  %insn_class = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  store i32 0, i32* %tmp_class, align 4
  store i32 0, i32* %insn_class, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 0
  %6 = load i32, i32* %num_elem, align 4
  store i32 %6, i32* %len, align 4
  %7 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtvec6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec6, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load8 = load i32, i32* %13, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  store i32 %bf.clear9, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  switch i32 %14, label %sw.default [
    i32 49, label %sw.bb
    i32 47, label %sw.bb.19
    i32 38, label %sw.bb.53
    i32 52, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtvec13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec13, align 8
  %elem14 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem14, i32 0, i64 %idxprom10
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %call = call i32 @may_trap_exp(%struct.rtx_def* %19, i32 1)
  store i32 %call, i32* %tmp_class, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtvec23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec23, align 8
  %elem24 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem24, i32 0, i64 %idxprom20
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %call29 = call i32 @may_trap_exp(%struct.rtx_def* %24, i32 1)
  store i32 %call29, i32* %tmp_class, align 4
  %25 = load i32, i32* %tmp_class, align 4
  %cmp30 = icmp eq i32 %25, 5
  br i1 %cmp30, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %sw.bb.19
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.19
  %26 = load i32, i32* %tmp_class, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem36 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem36, i32 0, i64 %idxprom32
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %call41 = call i32 @may_trap_exp(%struct.rtx_def* %31, i32 0)
  %cmp42 = icmp sgt i32 %26, %call41
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load i32, i32* %tmp_class, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtvec46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec46, align 8
  %elem47 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem47, i32 0, i64 %idxprom43
  %36 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %call52 = call i32 @may_trap_exp(%struct.rtx_def* %37, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %call52, %cond.false ]
  store i32 %cond, i32* %tmp_class, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %for.body, %for.body
  store i32 5, i32* %tmp_class, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.53, %cond.end, %if.then.31, %sw.bb
  %38 = load i32, i32* %insn_class, align 4
  %39 = load i32, i32* %tmp_class, align 4
  %cmp54 = icmp sgt i32 %38, %39
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %sw.epilog
  %40 = load i32, i32* %insn_class, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %sw.epilog
  %41 = load i32, i32* %tmp_class, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ %40, %cond.true.55 ], [ %41, %cond.false.56 ]
  store i32 %cond58, i32* %insn_class, align 4
  %42 = load i32, i32* %insn_class, align 4
  %cmp59 = icmp eq i32 %42, 5
  br i1 %cmp59, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.57
  %43 = load i32, i32* %insn_class, align 4
  %cmp60 = icmp eq i32 %43, 4
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %cond.end.57
  br label %for.end

if.end.62:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %44 = load i32, i32* %i, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.61, %for.cond
  br label %if.end.94

if.else:                                          ; preds = %entry
  %45 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load63 = load i32, i32* %46, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  store i32 %bf.clear64, i32* %code, align 4
  %47 = load i32, i32* %code, align 4
  switch i32 %47, label %sw.default.92 [
    i32 49, label %sw.bb.65
    i32 47, label %sw.bb.70
    i32 38, label %sw.bb.91
    i32 52, label %sw.bb.91
  ]

sw.bb.65:                                         ; preds = %if.else
  %48 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %call69 = call i32 @may_trap_exp(%struct.rtx_def* %49, i32 1)
  store i32 %call69, i32* %tmp_class, align 4
  br label %sw.epilog.93

sw.bb.70:                                         ; preds = %if.else
  %50 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %call74 = call i32 @may_trap_exp(%struct.rtx_def* %51, i32 1)
  store i32 %call74, i32* %tmp_class, align 4
  %52 = load i32, i32* %tmp_class, align 4
  %cmp75 = icmp eq i32 %52, 5
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %sw.bb.70
  br label %sw.epilog.93

if.end.77:                                        ; preds = %sw.bb.70
  %53 = load i32, i32* %tmp_class, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %call81 = call i32 @may_trap_exp(%struct.rtx_def* %55, i32 0)
  %cmp82 = icmp sgt i32 %53, %call81
  br i1 %cmp82, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %if.end.77
  %56 = load i32, i32* %tmp_class, align 4
  br label %cond.end.89

cond.false.84:                                    ; preds = %if.end.77
  %57 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %call88 = call i32 @may_trap_exp(%struct.rtx_def* %58, i32 0)
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.84, %cond.true.83
  %cond90 = phi i32 [ %56, %cond.true.83 ], [ %call88, %cond.false.84 ]
  store i32 %cond90, i32* %tmp_class, align 4
  br label %sw.epilog.93

sw.bb.91:                                         ; preds = %if.else, %if.else
  store i32 5, i32* %tmp_class, align 4
  br label %sw.epilog.93

sw.default.92:                                    ; preds = %if.else
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %sw.default.92, %sw.bb.91, %cond.end.89, %if.then.76, %sw.bb.65
  %59 = load i32, i32* %tmp_class, align 4
  store i32 %59, i32* %insn_class, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %sw.epilog.93, %for.end
  %60 = load i32, i32* %insn_class, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @is_pfree(%struct.rtx_def* %load_insn, i32 %bb_src, i32 %bb_trg) #0 {
entry:
  %retval = alloca i32, align 4
  %load_insn.addr = alloca %struct.rtx_def*, align 8
  %bb_src.addr = alloca i32, align 4
  %bb_trg.addr = alloca i32, align 4
  %back_link = alloca %struct.rtx_def*, align 8
  %candp = alloca %struct.candidate*, align 8
  %insn1 = alloca %struct.rtx_def*, align 8
  %fore_link = alloca %struct.rtx_def*, align 8
  %insn2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %load_insn, %struct.rtx_def** %load_insn.addr, align 8
  store i32 %bb_src, i32* %bb_src.addr, align 4
  store i32 %bb_trg, i32* %bb_trg.addr, align 4
  %0 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %1 = load i32, i32* %bb_src.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.candidate, %struct.candidate* %0, i64 %idx.ext
  store %struct.candidate* %add.ptr, %struct.candidate** %candp, align 8
  %2 = load %struct.candidate*, %struct.candidate** %candp, align 8
  %split_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %2, i32 0, i32 3
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs, i32 0, i32 1
  %3 = load i32, i32* %nr_members, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %back_link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %back_link, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %back_link, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn1, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %back_link, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp4 = icmp eq i32 %bf.clear, 0
  br i1 %cmp4, label %if.then.5, label %if.end.50

if.then.5:                                        ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %12 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx8 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %13, i64 %idxprom
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx8, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %fore_link, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %fore_link, align 8
  %tobool10 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %fore_link, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn2, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %fore_link, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load15 = load i32, i32* %19, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %cmp18 = icmp eq i32 %bf.clear17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.46

if.then.19:                                       ; preds = %for.body.11
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %call = call i32 @haifa_classify_insn(%struct.rtx_def* %20)
  %cmp20 = icmp ne i32 %call, 2
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  br label %for.inc

if.end.22:                                        ; preds = %if.then.19
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %22 = load i32, i32* %rtint25, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx27 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom26
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx27, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index, align 4
  %add = add nsw i32 %25, 0
  %idxprom28 = sext i32 %add to i64
  %26 = load i32*, i32** @block_to_bb, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %26, i64 %idxprom28
  %27 = load i32, i32* %arrayidx29, align 4
  %28 = load i32, i32* %bb_trg.addr, align 4
  %cmp30 = icmp eq i32 %27, %28
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.22
  %29 = load %struct.candidate*, %struct.candidate** %candp, align 8
  %split_bbs33 = getelementptr inbounds %struct.candidate, %struct.candidate* %29, i32 0, i32 3
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %split_bbs33, i32 0, i32 0
  %30 = load i32*, i32** %first_member, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtint36 = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %33 = load i32, i32* %rtint36, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data38 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %34, i32 0, i32 4
  %bb39 = bitcast %union.varray_data_tag* %data38 to [1 x %struct.basic_block_def*]*
  %arrayidx40 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb39, i32 0, i64 %idxprom37
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx40, align 8
  %index41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index41, align 4
  %add42 = add nsw i32 %36, 0
  %cmp43 = icmp eq i32 %31, %add42
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.32
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.32
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.then.21
  %37 = load %struct.rtx_def*, %struct.rtx_def** %fore_link, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %fore_link, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %for.body
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %39 = load %struct.rtx_def*, %struct.rtx_def** %back_link, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %back_link, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.55, %if.then.44, %if.then.31, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @is_prisky(%struct.rtx_def* %load_insn, i32 %bb_src, i32 %bb_trg) #0 {
entry:
  %retval = alloca i32, align 4
  %load_insn.addr = alloca %struct.rtx_def*, align 8
  %bb_src.addr = alloca i32, align 4
  %bb_trg.addr = alloca i32, align 4
  store %struct.rtx_def* %load_insn, %struct.rtx_def** %load_insn.addr, align 8
  store i32 %bb_src, i32* %bb_src.addr, align 4
  store i32 %bb_trg, i32* %bb_trg.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %fed_by_spec_load = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 11
  %bf.load = load i8, i8* %fed_by_spec_load, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %6 = load i32, i32* %bb_src.addr, align 4
  %7 = load i32, i32* %bb_trg.addr, align 4
  %call = call i32 @is_conditionally_protected(%struct.rtx_def* %5, i32 %6, i32 %7)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.4, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @may_trap_exp(%struct.rtx_def* %x, i32 %is_store) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %is_store.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %insn_class = alloca i32, align 4
  %tmp_class = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp_class239 = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %is_store, i32* %is_store.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %is_store.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %4, 66
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @may_trap_p(%struct.rtx_def* %5)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %code, align 4
  %cmp6 = icmp eq i32 %6, 66
  br i1 %cmp6, label %if.then.7, label %if.else.202

if.then.7:                                        ; preds = %if.end.5
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load8, 27
  %bf.clear9 = and i32 %bf.lshr, 1
  %tobool10 = icmp ne i32 %bf.clear9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store i32 4, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.7
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call13 = call i32 @may_trap_p(%struct.rtx_def* %9)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load17 = load i32, i32* %12, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 61
  br i1 %cmp19, label %if.then.200, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load23 = load i32, i32* %15, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 75
  br i1 %cmp25, label %land.lhs.true.40, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load30 = load i32, i32* %18, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 76
  br i1 %cmp32, label %land.lhs.true.40, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.26
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load37 = load i32, i32* %21, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 135
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.201

land.lhs.true.40:                                 ; preds = %lor.lhs.false.33, %lor.lhs.false.26, %lor.lhs.false
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load47 = load i32, i32* %25, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 67
  br i1 %cmp49, label %if.then.200, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.40
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load57 = load i32, i32* %29, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 68
  br i1 %cmp59, label %if.then.200, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.50
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load67 = load i32, i32* %33, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 54
  br i1 %cmp69, label %if.then.200, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.60
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load77 = load i32, i32* %37, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 55
  br i1 %cmp79, label %if.then.200, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.70
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load87 = load i32, i32* %41, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 58
  br i1 %cmp89, label %if.then.200, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.80
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load97 = load i32, i32* %45, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp eq i32 %bf.clear98, 134
  br i1 %cmp99, label %if.then.200, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.90
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load107 = load i32, i32* %49, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 56
  br i1 %cmp109, label %if.then.200, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.100
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx113, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load117 = load i32, i32* %53, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 140
  br i1 %cmp119, label %if.then.200, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.110
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load127 = load i32, i32* %57, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %cmp129 = icmp eq i32 %bf.clear128, 67
  br i1 %cmp129, label %if.then.200, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.120
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 1
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load137 = load i32, i32* %61, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 68
  br i1 %cmp139, label %if.then.200, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.130
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 1
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load147 = load i32, i32* %65, align 8
  %bf.clear148 = and i32 %bf.load147, 65535
  %cmp149 = icmp eq i32 %bf.clear148, 54
  br i1 %cmp149, label %if.then.200, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %lor.lhs.false.140
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 1
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load157 = load i32, i32* %69, align 8
  %bf.clear158 = and i32 %bf.load157, 65535
  %cmp159 = icmp eq i32 %bf.clear158, 55
  br i1 %cmp159, label %if.then.200, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.150
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 0
  %rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx163, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 1
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx166, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load167 = load i32, i32* %73, align 8
  %bf.clear168 = and i32 %bf.load167, 65535
  %cmp169 = icmp eq i32 %bf.clear168, 58
  br i1 %cmp169, label %if.then.200, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %lor.lhs.false.160
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 1
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load177 = load i32, i32* %77, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp eq i32 %bf.clear178, 134
  br i1 %cmp179, label %if.then.200, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.170
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx183, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 1
  %rtx186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx186, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load187 = load i32, i32* %81, align 8
  %bf.clear188 = and i32 %bf.load187, 65535
  %cmp189 = icmp eq i32 %bf.clear188, 56
  br i1 %cmp189, label %if.then.200, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %lor.lhs.false.180
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 1
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx196, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load197 = load i32, i32* %85, align 8
  %bf.clear198 = and i32 %bf.load197, 65535
  %cmp199 = icmp eq i32 %bf.clear198, 140
  br i1 %cmp199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %lor.lhs.false.190, %lor.lhs.false.180, %lor.lhs.false.170, %lor.lhs.false.160, %lor.lhs.false.150, %lor.lhs.false.140, %lor.lhs.false.130, %lor.lhs.false.120, %lor.lhs.false.110, %lor.lhs.false.100, %lor.lhs.false.90, %lor.lhs.false.80, %lor.lhs.false.70, %lor.lhs.false.60, %lor.lhs.false.50, %land.lhs.true.40, %if.end.16
  store i32 2, i32* %retval
  br label %return

if.end.201:                                       ; preds = %lor.lhs.false.190, %lor.lhs.false.33
  store i32 3, i32* %retval
  br label %return

if.else.202:                                      ; preds = %if.end.5
  store i32 0, i32* %insn_class, align 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call203 = call i32 @may_trap_p(%struct.rtx_def* %86)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.else.202
  store i32 5, i32* %retval
  br label %return

if.end.206:                                       ; preds = %if.else.202
  %87 = load i32, i32* %code, align 4
  %idxprom = sext i32 %87 to i64
  %arrayidx207 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %88 = load i8*, i8** %arrayidx207, align 8
  store i8* %88, i8** %fmt, align 8
  %89 = load i32, i32* %code, align 4
  %idxprom208 = sext i32 %89 to i64
  %arrayidx209 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom208
  %90 = load i8, i8* %arrayidx209, align 1
  %conv = zext i8 %90 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.269, %if.end.206
  %91 = load i32, i32* %i, align 4
  %cmp210 = icmp sge i32 %91, 0
  br i1 %cmp210, label %for.body, label %for.end.270

for.body:                                         ; preds = %for.cond
  %92 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %92 to i64
  %93 = load i8*, i8** %fmt, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %93, i64 %idxprom212
  %94 = load i8, i8* %arrayidx213, align 1
  %conv214 = sext i8 %94 to i32
  %cmp215 = icmp eq i32 %conv214, 101
  br i1 %cmp215, label %if.then.217, label %if.else.225

if.then.217:                                      ; preds = %for.body
  %95 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %95 to i64
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 %idxprom218
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  %98 = load i32, i32* %is_store.addr, align 4
  %call222 = call i32 @may_trap_exp(%struct.rtx_def* %97, i32 %98)
  store i32 %call222, i32* %tmp_class, align 4
  %99 = load i32, i32* %insn_class, align 4
  %100 = load i32, i32* %tmp_class, align 4
  %cmp223 = icmp sgt i32 %99, %100
  br i1 %cmp223, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.217
  %101 = load i32, i32* %insn_class, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.217
  %102 = load i32, i32* %tmp_class, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %101, %cond.true ], [ %102, %cond.false ]
  store i32 %cond, i32* %insn_class, align 4
  br label %if.end.261

if.else.225:                                      ; preds = %for.body
  %103 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %103 to i64
  %104 = load i8*, i8** %fmt, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %104, i64 %idxprom226
  %105 = load i8, i8* %arrayidx227, align 1
  %conv228 = sext i8 %105 to i32
  %cmp229 = icmp eq i32 %conv228, 69
  br i1 %cmp229, label %if.then.231, label %if.end.260

if.then.231:                                      ; preds = %if.else.225
  store i32 0, i32* %j, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc, %if.then.231
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %107 to i64
  %108 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 %idxprom233
  %rtvec = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtvec_def**
  %109 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %109, i32 0, i32 0
  %110 = load i32, i32* %num_elem, align 4
  %cmp236 = icmp slt i32 %106, %110
  br i1 %cmp236, label %for.body.238, label %for.end

for.body.238:                                     ; preds = %for.cond.232
  %111 = load i32, i32* %j, align 4
  %idxprom240 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %112 to i64
  %113 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld242, i32 0, i64 %idxprom241
  %rtvec244 = bitcast %union.rtunion_def* %arrayidx243 to %struct.rtvec_def**
  %114 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec244, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %114, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom240
  %115 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx245, align 8
  %116 = load i32, i32* %is_store.addr, align 4
  %call246 = call i32 @may_trap_exp(%struct.rtx_def* %115, i32 %116)
  store i32 %call246, i32* %tmp_class239, align 4
  %117 = load i32, i32* %insn_class, align 4
  %118 = load i32, i32* %tmp_class239, align 4
  %cmp247 = icmp sgt i32 %117, %118
  br i1 %cmp247, label %cond.true.249, label %cond.false.250

cond.true.249:                                    ; preds = %for.body.238
  %119 = load i32, i32* %insn_class, align 4
  br label %cond.end.251

cond.false.250:                                   ; preds = %for.body.238
  %120 = load i32, i32* %tmp_class239, align 4
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.249
  %cond252 = phi i32 [ %119, %cond.true.249 ], [ %120, %cond.false.250 ]
  store i32 %cond252, i32* %insn_class, align 4
  %121 = load i32, i32* %insn_class, align 4
  %cmp253 = icmp eq i32 %121, 5
  br i1 %cmp253, label %if.then.258, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %cond.end.251
  %122 = load i32, i32* %insn_class, align 4
  %cmp256 = icmp eq i32 %122, 4
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %lor.lhs.false.255, %cond.end.251
  br label %for.end

if.end.259:                                       ; preds = %lor.lhs.false.255
  br label %for.inc

for.inc:                                          ; preds = %if.end.259
  %123 = load i32, i32* %j, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.232

for.end:                                          ; preds = %if.then.258, %for.cond.232
  br label %if.end.260

if.end.260:                                       ; preds = %for.end, %if.else.225
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %cond.end
  %124 = load i32, i32* %insn_class, align 4
  %cmp262 = icmp eq i32 %124, 5
  br i1 %cmp262, label %if.then.267, label %lor.lhs.false.264

lor.lhs.false.264:                                ; preds = %if.end.261
  %125 = load i32, i32* %insn_class, align 4
  %cmp265 = icmp eq i32 %125, 4
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %lor.lhs.false.264, %if.end.261
  br label %for.end.270

if.end.268:                                       ; preds = %lor.lhs.false.264
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %126 = load i32, i32* %i, align 4
  %dec = add nsw i32 %126, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.270:                                      ; preds = %if.then.267, %for.cond
  %127 = load i32, i32* %insn_class, align 4
  store i32 %127, i32* %retval
  br label %return

return:                                           ; preds = %for.end.270, %if.then.205, %if.end.201, %if.then.200, %if.then.15, %if.then.11, %if.else, %if.then.4, %if.then
  %128 = load i32, i32* %retval
  ret i32 %128
}

declare i32 @may_trap_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_conditionally_protected(%struct.rtx_def* %load_insn, i32 %bb_src, i32 %bb_trg) #0 {
entry:
  %retval = alloca i32, align 4
  %load_insn.addr = alloca %struct.rtx_def*, align 8
  %bb_src.addr = alloca i32, align 4
  %bb_trg.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %insn1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %load_insn, %struct.rtx_def** %load_insn.addr, align 8
  store i32 %bb_src, i32* %bb_src.addr, align 4
  store i32 %bb_trg, i32* %bb_trg.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn1, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 33
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %10 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %add = add nsw i32 %13, 0
  %idxprom10 = sext i32 %add to i64
  %14 = load i32*, i32** @block_to_bb, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %bb_src.addr, align 4
  %cmp12 = icmp eq i32 %15, %16
  br i1 %cmp12, label %if.then.150, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %18 = load i32, i32* %rtint16, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data18 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb19 = bitcast %union.varray_data_tag* %data18 to [1 x %struct.basic_block_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb19, i32 0, i64 %idxprom17
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index21, align 4
  %add22 = add nsw i32 %21, 0
  %idxprom23 = sext i32 %add22 to i64
  %22 = load i32*, i32** @containing_rgn, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %22, i64 %idxprom23
  %23 = load i32, i32* %arrayidx24, align 4
  %24 = load i32, i32* @current_blocks, align 4
  %25 = load i32, i32* %bb_src.addr, align 4
  %add25 = add nsw i32 %24, %25
  %idxprom26 = sext i32 %add25 to i64
  %26 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %26, i64 %idxprom26
  %27 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i32*, i32** @containing_rgn, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %28, i64 %idxprom28
  %29 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp ne i32 %23, %29
  br i1 %cmp30, label %if.then.150, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.13
  %30 = load i32, i32* %bb_trg.addr, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %32 = load i32, i32* %rtint34, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data36 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb37 = bitcast %union.varray_data_tag* %data36 to [1 x %struct.basic_block_def*]*
  %arrayidx38 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb37, i32 0, i64 %idxprom35
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx38, align 8
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index39, align 4
  %add40 = add nsw i32 %35, 0
  %idxprom41 = sext i32 %add40 to i64
  %36 = load i32*, i32** @block_to_bb, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 %idxprom41
  %37 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %30, %37
  br i1 %cmp43, label %if.end.151, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.31
  %38 = load i32, i32* %bb_trg.addr, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %if.end.151

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.44
  %39 = load i32, i32* @current_blocks, align 4
  %40 = load i32, i32* %bb_trg.addr, align 4
  %add47 = add nsw i32 %39, %40
  %idxprom48 = sext i32 %add47 to i64
  %41 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %41, i64 %idxprom48
  %42 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load i32*, i32** @in_edges, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %43, i64 %idxprom50
  %44 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %45, i64 %idxprom52
  %46 = load i32, i32* %arrayidx53, align 4
  %div = udiv i32 %46, 64
  %idxprom54 = zext i32 %div to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtint57 = bitcast %union.rtunion_def* %arrayidx56 to i32*
  %48 = load i32, i32* %rtint57, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data59 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %bb60 = bitcast %union.varray_data_tag* %data59 to [1 x %struct.basic_block_def*]*
  %arrayidx61 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb60, i32 0, i64 %idxprom58
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx61, align 8
  %index62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index62, align 4
  %add63 = add nsw i32 %51, 0
  %idxprom64 = sext i32 %add63 to i64
  %52 = load i32*, i32** @block_to_bb, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %52, i64 %idxprom64
  %53 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %53 to i64
  %54 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx67 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %54, i64 %idxprom66
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx67, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %55, i32 0, i32 3
  %arrayidx68 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom54
  %56 = load i64, i64* %arrayidx68, align 8
  %57 = load i32, i32* @current_blocks, align 4
  %58 = load i32, i32* %bb_trg.addr, align 4
  %add69 = add nsw i32 %57, %58
  %idxprom70 = sext i32 %add69 to i64
  %59 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %59, i64 %idxprom70
  %60 = load i32, i32* %arrayidx71, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load i32*, i32** @in_edges, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %61, i64 %idxprom72
  %62 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %62 to i64
  %63 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %63, i64 %idxprom74
  %64 = load i32, i32* %arrayidx75, align 4
  %rem = urem i32 %64, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %56, %sh_prom
  %and = and i64 %shr, 1
  %tobool76 = icmp ne i64 %and, 0
  br i1 %tobool76, label %if.end.151, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.46
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtint79 = bitcast %union.rtunion_def* %arrayidx78 to i32*
  %66 = load i32, i32* %rtint79, align 4
  %idxprom80 = sext i32 %66 to i64
  %67 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data81 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %67, i32 0, i32 4
  %bb82 = bitcast %union.varray_data_tag* %data81 to [1 x %struct.basic_block_def*]*
  %arrayidx83 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb82, i32 0, i64 %idxprom80
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx83, align 8
  %index84 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index84, align 4
  %add85 = add nsw i32 %69, 0
  %idxprom86 = sext i32 %add85 to i64
  %70 = load i32*, i32** @block_to_bb, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %70, i64 %idxprom86
  %71 = load i32, i32* %arrayidx87, align 4
  %72 = load i32, i32* %bb_trg.addr, align 4
  %cmp88 = icmp eq i32 %71, %72
  br i1 %cmp88, label %if.end.151, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %74 = load i32, i32* %rtint92, align 4
  %idxprom93 = sext i32 %74 to i64
  %75 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %75, i32 0, i32 4
  %bb95 = bitcast %union.varray_data_tag* %data94 to [1 x %struct.basic_block_def*]*
  %arrayidx96 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb95, i32 0, i64 %idxprom93
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx96, align 8
  %index97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 11
  %77 = load i32, i32* %index97, align 4
  %add98 = add nsw i32 %77, 0
  %idxprom99 = sext i32 %add98 to i64
  %78 = load i32*, i32** @block_to_bb, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %78, i64 %idxprom99
  %79 = load i32, i32* %arrayidx100, align 4
  %tobool101 = icmp ne i32 %79, 0
  br i1 %tobool101, label %lor.lhs.false.102, label %if.end.151

lor.lhs.false.102:                                ; preds = %lor.lhs.false.89
  %80 = load i32, i32* @current_blocks, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtint105 = bitcast %union.rtunion_def* %arrayidx104 to i32*
  %82 = load i32, i32* %rtint105, align 4
  %idxprom106 = sext i32 %82 to i64
  %83 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data107 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %83, i32 0, i32 4
  %bb108 = bitcast %union.varray_data_tag* %data107 to [1 x %struct.basic_block_def*]*
  %arrayidx109 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb108, i32 0, i64 %idxprom106
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx109, align 8
  %index110 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i32 0, i32 11
  %85 = load i32, i32* %index110, align 4
  %add111 = add nsw i32 %85, 0
  %idxprom112 = sext i32 %add111 to i64
  %86 = load i32*, i32** @block_to_bb, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %86, i64 %idxprom112
  %87 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %80, %87
  %idxprom115 = sext i32 %add114 to i64
  %88 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %88, i64 %idxprom115
  %89 = load i32, i32* %arrayidx116, align 4
  %idxprom117 = sext i32 %89 to i64
  %90 = load i32*, i32** @in_edges, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %90, i64 %idxprom117
  %91 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %91 to i64
  %92 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %92, i64 %idxprom119
  %93 = load i32, i32* %arrayidx120, align 4
  %div121 = udiv i32 %93, 64
  %idxprom122 = zext i32 %div121 to i64
  %94 = load i32, i32* %bb_trg.addr, align 4
  %idxprom123 = sext i32 %94 to i64
  %95 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx124 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %95, i64 %idxprom123
  %96 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx124, align 8
  %elms125 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %96, i32 0, i32 3
  %arrayidx126 = getelementptr inbounds [1 x i64], [1 x i64]* %elms125, i32 0, i64 %idxprom122
  %97 = load i64, i64* %arrayidx126, align 8
  %98 = load i32, i32* @current_blocks, align 4
  %99 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtint129 = bitcast %union.rtunion_def* %arrayidx128 to i32*
  %100 = load i32, i32* %rtint129, align 4
  %idxprom130 = sext i32 %100 to i64
  %101 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data131 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %101, i32 0, i32 4
  %bb132 = bitcast %union.varray_data_tag* %data131 to [1 x %struct.basic_block_def*]*
  %arrayidx133 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb132, i32 0, i64 %idxprom130
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx133, align 8
  %index134 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %102, i32 0, i32 11
  %103 = load i32, i32* %index134, align 4
  %add135 = add nsw i32 %103, 0
  %idxprom136 = sext i32 %add135 to i64
  %104 = load i32*, i32** @block_to_bb, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %104, i64 %idxprom136
  %105 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %98, %105
  %idxprom139 = sext i32 %add138 to i64
  %106 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %106, i64 %idxprom139
  %107 = load i32, i32* %arrayidx140, align 4
  %idxprom141 = sext i32 %107 to i64
  %108 = load i32*, i32** @in_edges, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %108, i64 %idxprom141
  %109 = load i32, i32* %arrayidx142, align 4
  %idxprom143 = sext i32 %109 to i64
  %110 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %110, i64 %idxprom143
  %111 = load i32, i32* %arrayidx144, align 4
  %rem145 = urem i32 %111, 64
  %sh_prom146 = zext i32 %rem145 to i64
  %shr147 = lshr i64 %97, %sh_prom146
  %and148 = and i64 %shr147, 1
  %tobool149 = icmp ne i64 %and148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %lor.lhs.false.102, %lor.lhs.false.13, %if.end
  br label %for.inc

if.end.151:                                       ; preds = %lor.lhs.false.102, %lor.lhs.false.89, %land.lhs.true, %lor.lhs.false.46, %lor.lhs.false.44, %lor.lhs.false.31
  %112 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %113 = load i32, i32* %bb_src.addr, align 4
  %call = call i32 @find_conditional_protection(%struct.rtx_def* %112, i32 %113)
  %tobool152 = icmp ne i32 %call, 0
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.151
  store i32 1, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.151
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  %115 = load i32, i32* %bb_src.addr, align 4
  %116 = load i32, i32* %bb_trg.addr, align 4
  %call155 = call i32 @is_conditionally_protected(%struct.rtx_def* %114, i32 %115, i32 %116)
  store i32 %call155, i32* %retval
  br label %return

for.inc:                                          ; preds = %if.then.150, %if.then
  %117 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  store %struct.rtx_def* %118, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.154, %if.then.153
  %119 = load i32, i32* %retval
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define internal i32 @find_conditional_protection(%struct.rtx_def* %insn, i32 %load_insn_bb) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %load_insn_bb.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %load_insn_bb, i32* %load_insn_bb.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %next, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %8 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx8 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom7
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx8, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index, align 4
  %add = add nsw i32 %11, 0
  %idxprom9 = sext i32 %add to i64
  %12 = load i32*, i32** @containing_rgn, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %12, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  %14 = load i32, i32* @current_blocks, align 4
  %15 = load i32, i32* %load_insn_bb.addr, align 4
  %add11 = add nsw i32 %14, %15
  %idxprom12 = sext i32 %add11 to i64
  %16 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %17 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load i32*, i32** @containing_rgn, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %18, i64 %idxprom14
  %19 = load i32, i32* %arrayidx15, align 4
  %cmp = icmp eq i32 %13, %19
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %21 = load i32, i32* %rtint18, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb21 = bitcast %union.varray_data_tag* %data20 to [1 x %struct.basic_block_def*]*
  %arrayidx22 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb21, i32 0, i64 %idxprom19
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx22, align 8
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index23, align 4
  %add24 = add nsw i32 %24, 0
  %idxprom25 = sext i32 %add24 to i64
  %25 = load i32*, i32** @block_to_bb, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %25, i64 %idxprom25
  %26 = load i32, i32* %arrayidx26, align 4
  %27 = load i32, i32* %load_insn_bb.addr, align 4
  %cmp27 = icmp eq i32 %26, %27
  br i1 %cmp27, label %land.lhs.true.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %29 = load i32, i32* %rtint30, align 4
  %idxprom31 = sext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data32 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb33 = bitcast %union.varray_data_tag* %data32 to [1 x %struct.basic_block_def*]*
  %arrayidx34 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb33, i32 0, i64 %idxprom31
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx34, align 8
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index35, align 4
  %add36 = add nsw i32 %32, 0
  %idxprom37 = sext i32 %add36 to i64
  %33 = load i32*, i32** @block_to_bb, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %33, i64 %idxprom37
  %34 = load i32, i32* %arrayidx38, align 4
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %lor.lhs.false.40, label %land.lhs.true.82

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* @current_blocks, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %37 = load i32, i32* %rtint43, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 4
  %bb46 = bitcast %union.varray_data_tag* %data45 to [1 x %struct.basic_block_def*]*
  %arrayidx47 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb46, i32 0, i64 %idxprom44
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx47, align 8
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 11
  %40 = load i32, i32* %index48, align 4
  %add49 = add nsw i32 %40, 0
  %idxprom50 = sext i32 %add49 to i64
  %41 = load i32*, i32** @block_to_bb, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %41, i64 %idxprom50
  %42 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %35, %42
  %idxprom53 = sext i32 %add52 to i64
  %43 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %43, i64 %idxprom53
  %44 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %44 to i64
  %45 = load i32*, i32** @in_edges, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %45, i64 %idxprom55
  %46 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %46 to i64
  %47 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %47, i64 %idxprom57
  %48 = load i32, i32* %arrayidx58, align 4
  %div = udiv i32 %48, 64
  %idxprom59 = zext i32 %div to i64
  %49 = load i32, i32* %load_insn_bb.addr, align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx61 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %50, i64 %idxprom60
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx61, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %51, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom59
  %52 = load i64, i64* %arrayidx62, align 8
  %53 = load i32, i32* @current_blocks, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %55 = load i32, i32* %rtint65, align 4
  %idxprom66 = sext i32 %55 to i64
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data67 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %bb68 = bitcast %union.varray_data_tag* %data67 to [1 x %struct.basic_block_def*]*
  %arrayidx69 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb68, i32 0, i64 %idxprom66
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 11
  %58 = load i32, i32* %index70, align 4
  %add71 = add nsw i32 %58, 0
  %idxprom72 = sext i32 %add71 to i64
  %59 = load i32*, i32** @block_to_bb, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %59, i64 %idxprom72
  %60 = load i32, i32* %arrayidx73, align 4
  %add74 = add nsw i32 %53, %60
  %idxprom75 = sext i32 %add74 to i64
  %61 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %61, i64 %idxprom75
  %62 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %62 to i64
  %63 = load i32*, i32** @in_edges, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %63, i64 %idxprom77
  %64 = load i32, i32* %arrayidx78, align 4
  %idxprom79 = sext i32 %64 to i64
  %65 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %65, i64 %idxprom79
  %66 = load i32, i32* %arrayidx80, align 4
  %rem = urem i32 %66, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %52, %sh_prom
  %and = and i64 %shr, 1
  %tobool81 = icmp ne i64 %and, 0
  br i1 %tobool81, label %land.lhs.true.82, label %if.end

land.lhs.true.82:                                 ; preds = %lor.lhs.false.40, %lor.lhs.false, %land.lhs.true
  %67 = load i32, i32* %load_insn_bb.addr, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %69 = load i32, i32* %rtint85, align 4
  %idxprom86 = sext i32 %69 to i64
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data87 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %bb88 = bitcast %union.varray_data_tag* %data87 to [1 x %struct.basic_block_def*]*
  %arrayidx89 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb88, i32 0, i64 %idxprom86
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx89, align 8
  %index90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 11
  %72 = load i32, i32* %index90, align 4
  %add91 = add nsw i32 %72, 0
  %idxprom92 = sext i32 %add91 to i64
  %73 = load i32*, i32** @block_to_bb, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %73, i64 %idxprom92
  %74 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp ne i32 %67, %74
  br i1 %cmp94, label %land.lhs.true.95, label %if.end

land.lhs.true.95:                                 ; preds = %land.lhs.true.82
  %75 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load = load i32, i32* %76, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp96 = icmp eq i32 %bf.clear, 0
  br i1 %cmp96, label %land.lhs.true.97, label %if.end

land.lhs.true.97:                                 ; preds = %land.lhs.true.95
  %77 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load98 = load i32, i32* %78, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 33
  br i1 %cmp100, label %if.then, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.97
  %79 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %80 = load i32, i32* %load_insn_bb.addr, align 4
  %call = call i32 @find_conditional_protection(%struct.rtx_def* %79, i32 %80)
  %tobool102 = icmp ne i32 %call, 0
  br i1 %tobool102, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.101, %land.lhs.true.97
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.101, %land.lhs.true.95, %land.lhs.true.82, %lor.lhs.false.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %81 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 1
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal void @update_live(%struct.rtx_def* %insn, i32 %src) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %src, i32* %src.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 49
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %src.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  call void @update_live_1(i32 %6, %struct.rtx_def* %8)
  br label %if.end.57

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 39
  br i1 %cmp15, label %if.then.16, label %if.end.56

if.then.16:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 0
  %15 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %16 = load i32, i32* %j, align 4
  %cmp22 = icmp sge i32 %16, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec28, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx29, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load30 = load i32, i32* %22, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 47
  br i1 %cmp32, label %if.then.46, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %for.body
  %23 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %elem41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem41, i32 0, i64 %idxprom34
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load43 = load i32, i32* %28, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 49
  br i1 %cmp45, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %lor.lhs.false.33, %for.body
  %29 = load i32, i32* %src.addr, align 4
  %30 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 3
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtvec53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec53, align 8
  %elem54 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem54, i32 0, i64 %idxprom47
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx55, align 8
  call void @update_live_1(i32 %29, %struct.rtx_def* %34)
  br label %if.end

if.end:                                           ; preds = %if.then.46, %lor.lhs.false.33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %j, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_spec_fed(%struct.rtx_def* %load_insn) #0 {
entry:
  %load_insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %load_insn, %struct.rtx_def** %load_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %load_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %9 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx8 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %10, i64 %idxprom7
  %fed_by_spec_load = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx8, i32 0, i32 11
  %bf.load9 = load i8, i8* %fed_by_spec_load, align 2
  %bf.clear10 = and i8 %bf.load9, -3
  %bf.set = or i8 %bf.clear10, 2
  store i8 %bf.set, i8* %fed_by_spec_load, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @emit_note_after(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @update_live_1(i32 %src, %struct.rtx_def* %x) #0 {
entry:
  %src.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %regno = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i32, align 4
  %b148 = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.164

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 63
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 133
  br i1 %cmp4, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 132
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %11 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp11, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load15 = load i32, i32* %15, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 39
  br i1 %cmp17, label %if.then.18, label %if.end.42

if.then.18:                                       ; preds = %while.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 0
  %18 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %i19, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %19 = load i32, i32* %i19, align 4
  %cmp22 = icmp sge i32 %19, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i19, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtvec25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec25, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %cmp30 = icmp ne %struct.rtx_def* %24, null
  br i1 %cmp30, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %for.body
  %25 = load i32, i32* %src.addr, align 4
  %26 = load i32, i32* %i19, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem36 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem36, i32 0, i64 %idxprom32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  call void @update_live_1(i32 %25, %struct.rtx_def* %30)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %31 = load i32, i32* %i19, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i19, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.164

if.end.42:                                        ; preds = %while.end
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load43 = load i32, i32* %33, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp ne i32 %bf.clear44, 61
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  br label %if.end.164

if.end.47:                                        ; preds = %if.end.42
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %35 = load i32, i32* %rtuint, align 4
  store i32 %35, i32* %regno, align 4
  %36 = load i32, i32* %regno, align 4
  %cmp50 = icmp sge i32 %36, 53
  br i1 %cmp50, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.47
  %37 = load i32, i32* %regno, align 4
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom52
  %38 = load i8, i8* %arrayidx53, align 1
  %tobool = icmp ne i8 %38, 0
  br i1 %tobool, label %if.end.164, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false.51, %if.end.47
  %39 = load i32, i32* %regno, align 4
  %cmp55 = icmp slt i32 %39, 53
  br i1 %cmp55, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.then.54
  %40 = load i32, i32* %regno, align 4
  %cmp57 = icmp sge i32 %40, 8
  br i1 %cmp57, label %land.lhs.true, label %lor.lhs.false.59

land.lhs.true:                                    ; preds = %if.then.56
  %41 = load i32, i32* %regno, align 4
  %cmp58 = icmp sle i32 %41, 15
  br i1 %cmp58, label %cond.true, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true, %if.then.56
  %42 = load i32, i32* %regno, align 4
  %cmp60 = icmp sge i32 %42, 21
  br i1 %cmp60, label %land.lhs.true.61, label %lor.lhs.false.63

land.lhs.true.61:                                 ; preds = %lor.lhs.false.59
  %43 = load i32, i32* %regno, align 4
  %cmp62 = icmp sle i32 %43, 28
  br i1 %cmp62, label %cond.true, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.59
  %44 = load i32, i32* %regno, align 4
  %cmp64 = icmp sge i32 %44, 45
  br i1 %cmp64, label %land.lhs.true.65, label %lor.lhs.false.67

land.lhs.true.65:                                 ; preds = %lor.lhs.false.63
  %45 = load i32, i32* %regno, align 4
  %cmp66 = icmp sle i32 %45, 52
  br i1 %cmp66, label %cond.true, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.65, %lor.lhs.false.63
  %46 = load i32, i32* %regno, align 4
  %cmp68 = icmp sge i32 %46, 29
  br i1 %cmp68, label %land.lhs.true.69, label %cond.false

land.lhs.true.69:                                 ; preds = %lor.lhs.false.67
  %47 = load i32, i32* %regno, align 4
  %cmp70 = icmp sle i32 %47, 36
  br i1 %cmp70, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.69, %land.lhs.true.65, %land.lhs.true.61, %land.lhs.true
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load71 = load i32, i32* %49, align 8
  %bf.lshr = lshr i32 %bf.load71, 16
  %bf.clear72 = and i32 %bf.lshr, 255
  %idxprom73 = sext i32 %bf.clear72 to i64
  %arrayidx74 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom73
  %50 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp eq i32 %50, 5
  br i1 %cmp75, label %lor.end.83, label %lor.rhs.76

lor.rhs.76:                                       ; preds = %cond.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load77 = load i32, i32* %52, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  %idxprom80 = sext i32 %bf.clear79 to i64
  %arrayidx81 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom80
  %53 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp eq i32 %53, 6
  br label %lor.end.83

lor.end.83:                                       ; preds = %lor.rhs.76, %cond.true
  %54 = phi i1 [ true, %cond.true ], [ %cmp82, %lor.rhs.76 ]
  %cond = select i1 %54, i32 2, i32 1
  br label %cond.end.116

cond.false:                                       ; preds = %land.lhs.true.69, %lor.lhs.false.67
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load84 = load i32, i32* %56, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 16
  %bf.clear86 = and i32 %bf.lshr85, 255
  %cmp87 = icmp eq i32 %bf.clear86, 18
  br i1 %cmp87, label %cond.true.88, label %cond.false.91

cond.true.88:                                     ; preds = %cond.false
  %57 = load i32, i32* @target_flags, align 4
  %and = and i32 %57, 33554432
  %tobool89 = icmp ne i32 %and, 0
  %cond90 = select i1 %tobool89, i32 2, i32 3
  br label %cond.end.114

cond.false.91:                                    ; preds = %cond.false
  %58 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load92 = load i32, i32* %59, align 8
  %bf.lshr93 = lshr i32 %bf.load92, 16
  %bf.clear94 = and i32 %bf.lshr93, 255
  %cmp95 = icmp eq i32 %bf.clear94, 24
  br i1 %cmp95, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %cond.false.91
  %60 = load i32, i32* @target_flags, align 4
  %and97 = and i32 %60, 33554432
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i32 4, i32 6
  br label %cond.end

cond.false.100:                                   ; preds = %cond.false.91
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load101 = load i32, i32* %62, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %idxprom104 = sext i32 %bf.clear103 to i64
  %arrayidx105 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom104
  %63 = load i8, i8* %arrayidx105, align 1
  %conv = zext i8 %63 to i32
  %64 = load i32, i32* @target_flags, align 4
  %and106 = and i32 %64, 33554432
  %tobool107 = icmp ne i32 %and106, 0
  %cond108 = select i1 %tobool107, i32 8, i32 4
  %add = add nsw i32 %conv, %cond108
  %sub109 = sub nsw i32 %add, 1
  %65 = load i32, i32* @target_flags, align 4
  %and110 = and i32 %65, 33554432
  %tobool111 = icmp ne i32 %and110, 0
  %cond112 = select i1 %tobool111, i32 8, i32 4
  %div = sdiv i32 %sub109, %cond112
  br label %cond.end

cond.end:                                         ; preds = %cond.false.100, %cond.true.96
  %cond113 = phi i32 [ %cond99, %cond.true.96 ], [ %div, %cond.false.100 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end, %cond.true.88
  %cond115 = phi i32 [ %cond90, %cond.true.88 ], [ %cond113, %cond.end ]
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.end.114, %lor.end.83
  %cond117 = phi i32 [ %cond, %lor.end.83 ], [ %cond115, %cond.end.114 ]
  store i32 %cond117, i32* %j, align 4
  br label %while.cond.118

while.cond.118:                                   ; preds = %for.end.138, %cond.end.116
  %66 = load i32, i32* %j, align 4
  %dec119 = add nsw i32 %66, -1
  store i32 %dec119, i32* %j, align 4
  %cmp120 = icmp sge i32 %dec119, 0
  br i1 %cmp120, label %while.body.122, label %while.end.139

while.body.122:                                   ; preds = %while.cond.118
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.137, %while.body.122
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %src.addr, align 4
  %idxprom124 = sext i32 %68 to i64
  %69 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx125 = getelementptr inbounds %struct.candidate, %struct.candidate* %69, i64 %idxprom124
  %update_bbs = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx125, i32 0, i32 4
  %nr_members = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs, i32 0, i32 1
  %70 = load i32, i32* %nr_members, align 4
  %cmp126 = icmp slt i32 %67, %70
  br i1 %cmp126, label %for.body.128, label %for.end.138

for.body.128:                                     ; preds = %for.cond.123
  %71 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %71 to i64
  %72 = load i32, i32* %src.addr, align 4
  %idxprom130 = sext i32 %72 to i64
  %73 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx131 = getelementptr inbounds %struct.candidate, %struct.candidate* %73, i64 %idxprom130
  %update_bbs132 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx131, i32 0, i32 4
  %first_member = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs132, i32 0, i32 0
  %74 = load i32*, i32** %first_member, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %74, i64 %idxprom129
  %75 = load i32, i32* %arrayidx133, align 4
  store i32 %75, i32* %b, align 4
  %76 = load i32, i32* %b, align 4
  %idxprom134 = sext i32 %76 to i64
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx135 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom134
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx135, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 8
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %80 = load i32, i32* %regno, align 4
  %81 = load i32, i32* %j, align 4
  %add136 = add nsw i32 %80, %81
  call void @bitmap_set_bit(%struct.bitmap_head_def* %79, i32 %add136)
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.128
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.123

for.end.138:                                      ; preds = %for.cond.123
  br label %while.cond.118

while.end.139:                                    ; preds = %while.cond.118
  br label %if.end.163

if.else:                                          ; preds = %if.then.54
  store i32 0, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.160, %if.else
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %src.addr, align 4
  %idxprom141 = sext i32 %84 to i64
  %85 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx142 = getelementptr inbounds %struct.candidate, %struct.candidate* %85, i64 %idxprom141
  %update_bbs143 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx142, i32 0, i32 4
  %nr_members144 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs143, i32 0, i32 1
  %86 = load i32, i32* %nr_members144, align 4
  %cmp145 = icmp slt i32 %83, %86
  br i1 %cmp145, label %for.body.147, label %for.end.162

for.body.147:                                     ; preds = %for.cond.140
  %87 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %87 to i64
  %88 = load i32, i32* %src.addr, align 4
  %idxprom150 = sext i32 %88 to i64
  %89 = load %struct.candidate*, %struct.candidate** @candidate_table, align 8
  %arrayidx151 = getelementptr inbounds %struct.candidate, %struct.candidate* %89, i64 %idxprom150
  %update_bbs152 = getelementptr inbounds %struct.candidate, %struct.candidate* %arrayidx151, i32 0, i32 4
  %first_member153 = getelementptr inbounds %struct.bitlst, %struct.bitlst* %update_bbs152, i32 0, i32 0
  %90 = load i32*, i32** %first_member153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %90, i64 %idxprom149
  %91 = load i32, i32* %arrayidx154, align 4
  store i32 %91, i32* %b148, align 4
  %92 = load i32, i32* %b148, align 4
  %idxprom155 = sext i32 %92 to i64
  %93 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data156 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %93, i32 0, i32 4
  %bb157 = bitcast %union.varray_data_tag* %data156 to [1 x %struct.basic_block_def*]*
  %arrayidx158 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb157, i32 0, i64 %idxprom155
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx158, align 8
  %global_live_at_start159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i32 0, i32 8
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start159, align 8
  %96 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %95, i32 %96)
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.147
  %97 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %97, 1
  store i32 %inc161, i32* %i, align 4
  br label %for.cond.140

for.end.162:                                      ; preds = %for.cond.140
  br label %if.end.163

if.end.163:                                       ; preds = %for.end.162, %while.end.139
  br label %if.end.164

if.end.164:                                       ; preds = %if.then, %for.end, %if.then.46, %if.end.163, %lor.lhs.false.51
  ret void
}

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @init_deps_global() #1

declare void @init_deps(%struct.deps*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_block_backward_dependences(i32 %bb) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %tmp_deps = alloca %struct.deps, align 8
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx = getelementptr inbounds %struct.deps, %struct.deps* %1, i64 %idxprom
  %2 = bitcast %struct.deps* %tmp_deps to i8*
  %3 = bitcast %struct.deps* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 104, i32 8, i1 false)
  %4 = load i32, i32* @current_blocks, align 4
  %5 = load i32, i32* %bb.addr, align 4
  %add = add nsw i32 %4, %5
  %idxprom1 = sext i32 %add to i64
  %6 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  call void @get_block_head_tail(i32 %7, %struct.rtx_def** %head, %struct.rtx_def** %tail)
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  call void @sched_analyze(%struct.deps* %tmp_deps, %struct.rtx_def* %8, %struct.rtx_def* %9)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  call void @add_branch_dependences(%struct.rtx_def* %10, %struct.rtx_def* %11)
  %12 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp sgt i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %bb.addr, align 4
  call void @propagate_deps(i32 %13, %struct.deps* %tmp_deps)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @free_deps(%struct.deps* %tmp_deps)
  ret void
}

declare void @compute_forward_dependences(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @set_priorities(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_dom_prob_ps(i32 %bb) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %nxt_in_edge = alloca i32, align 4
  %fst_in_edge = alloca i32, align 4
  %pred = alloca i32, align 4
  %fst_out_edge = alloca i32, align 4
  %nxt_out_edge = alloca i32, align 4
  %nr_out_edges = alloca i32, align 4
  %nr_rgn_out_edges = alloca i32, align 4
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load float*, float** @prob, align 8
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  %2 = load i32, i32* %bb.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bb.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %4, i64 %idxprom1
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 0
  %6 = load i64, i64* %arrayidx3, align 8
  %or = or i64 %6, 1
  store i64 %or, i64* %arrayidx3, align 8
  %7 = load i32, i32* %bb.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load float*, float** @prob, align 8
  %arrayidx5 = getelementptr inbounds float, float* %8, i64 %idxprom4
  store float 1.000000e+00, float* %arrayidx5, align 4
  br label %if.end.167

if.end:                                           ; preds = %entry
  %9 = load i32, i32* @current_blocks, align 4
  %10 = load i32, i32* %bb.addr, align 4
  %add = add nsw i32 %9, %10
  %idxprom6 = sext i32 %add to i64
  %11 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i32*, i32** @in_edges, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  store i32 %14, i32* %nxt_in_edge, align 4
  store i32 %14, i32* %fst_in_edge, align 4
  %15 = load i32, i32* %bb.addr, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx11 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %16, i64 %idxprom10
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx11, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %17)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %18 = load i32, i32* %nxt_in_edge, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx13 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %19, i64 %idxprom12
  %from_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx13, i32 0, i32 0
  %20 = load i32, i32* %from_block, align 4
  store i32 %20, i32* %pred, align 4
  %21 = load i32, i32* %bb.addr, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx15 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom14
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx15, align 8
  %24 = load i32, i32* %bb.addr, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx17 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %idxprom16
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx17, align 8
  %27 = load i32, i32* %pred, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load i32*, i32** @block_to_bb, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %28, i64 %idxprom18
  %29 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %30, i64 %idxprom20
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx21, align 8
  %call = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %23, %struct.simple_bitmap_def* %26, %struct.simple_bitmap_def* %31)
  %32 = load i32, i32* %bb.addr, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx23 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %33, i64 %idxprom22
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx23, align 8
  %35 = load i32, i32* %bb.addr, align 4
  %idxprom24 = sext i32 %35 to i64
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx25 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %36, i64 %idxprom24
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx25, align 8
  %38 = load i32, i32* %pred, align 4
  %idxprom26 = sext i32 %38 to i64
  %39 = load i32*, i32** @block_to_bb, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 %idxprom26
  %40 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %40 to i64
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx29 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %41, i64 %idxprom28
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx29, align 8
  %call30 = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %34, %struct.simple_bitmap_def* %37, %struct.simple_bitmap_def* %42)
  %43 = load i32, i32* %nxt_in_edge, align 4
  %idxprom31 = sext i32 %43 to i64
  %44 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %44, i64 %idxprom31
  %45 = load i32, i32* %arrayidx32, align 4
  %rem = urem i32 %45, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %46 = load i32, i32* %nxt_in_edge, align 4
  %idxprom33 = sext i32 %46 to i64
  %47 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %47, i64 %idxprom33
  %48 = load i32, i32* %arrayidx34, align 4
  %div = udiv i32 %48, 64
  %idxprom35 = zext i32 %div to i64
  %49 = load i32, i32* %bb.addr, align 4
  %idxprom36 = sext i32 %49 to i64
  %50 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx37 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %50, i64 %idxprom36
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx37, align 8
  %elms38 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %51, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [1 x i64], [1 x i64]* %elms38, i32 0, i64 %idxprom35
  %52 = load i64, i64* %arrayidx39, align 8
  %or40 = or i64 %52, %shl
  store i64 %or40, i64* %arrayidx39, align 8
  store i32 1, i32* %nr_out_edges, align 4
  store i32 0, i32* %nr_rgn_out_edges, align 4
  %53 = load i32, i32* %pred, align 4
  %idxprom41 = sext i32 %53 to i64
  %54 = load i32*, i32** @out_edges, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %54, i64 %idxprom41
  %55 = load i32, i32* %arrayidx42, align 4
  store i32 %55, i32* %fst_out_edge, align 4
  %56 = load i32, i32* %fst_out_edge, align 4
  %idxprom43 = sext i32 %56 to i64
  %57 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx44 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %57, i64 %idxprom43
  %next_out = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx44, i32 0, i32 3
  %58 = load i32, i32* %next_out, align 4
  store i32 %58, i32* %nxt_out_edge, align 4
  %59 = load i32, i32* %bb.addr, align 4
  %idxprom45 = sext i32 %59 to i64
  %60 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx46 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %60, i64 %idxprom45
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx46, align 8
  %62 = load i32, i32* %bb.addr, align 4
  %idxprom47 = sext i32 %62 to i64
  %63 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx48 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %63, i64 %idxprom47
  %64 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx48, align 8
  %65 = load i32, i32* %pred, align 4
  %idxprom49 = sext i32 %65 to i64
  %66 = load i32*, i32** @block_to_bb, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %66, i64 %idxprom49
  %67 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %67 to i64
  %68 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx52 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %68, i64 %idxprom51
  %69 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx52, align 8
  %call53 = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %61, %struct.simple_bitmap_def* %64, %struct.simple_bitmap_def* %69)
  %70 = load i32, i32* %fst_out_edge, align 4
  %idxprom54 = sext i32 %70 to i64
  %71 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %71, i64 %idxprom54
  %72 = load i32, i32* %arrayidx55, align 4
  %rem56 = urem i32 %72, 64
  %sh_prom57 = zext i32 %rem56 to i64
  %shl58 = shl i64 1, %sh_prom57
  %73 = load i32, i32* %fst_out_edge, align 4
  %idxprom59 = sext i32 %73 to i64
  %74 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %74, i64 %idxprom59
  %75 = load i32, i32* %arrayidx60, align 4
  %div61 = udiv i32 %75, 64
  %idxprom62 = zext i32 %div61 to i64
  %76 = load i32, i32* %bb.addr, align 4
  %idxprom63 = sext i32 %76 to i64
  %77 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx64 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %77, i64 %idxprom63
  %78 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx64, align 8
  %elms65 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %78, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [1 x i64], [1 x i64]* %elms65, i32 0, i64 %idxprom62
  %79 = load i64, i64* %arrayidx66, align 8
  %or67 = or i64 %79, %shl58
  store i64 %or67, i64* %arrayidx66, align 8
  %80 = load i32, i32* %fst_out_edge, align 4
  %idxprom68 = sext i32 %80 to i64
  %81 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx69 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %81, i64 %idxprom68
  %to_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx69, i32 0, i32 1
  %82 = load i32, i32* %to_block, align 4
  %idxprom70 = sext i32 %82 to i64
  %83 = load i32*, i32** @containing_rgn, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %83, i64 %idxprom70
  %84 = load i32, i32* %arrayidx71, align 4
  %85 = load i32, i32* @current_blocks, align 4
  %86 = load i32, i32* %bb.addr, align 4
  %add72 = add nsw i32 %85, %86
  %idxprom73 = sext i32 %add72 to i64
  %87 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %87, i64 %idxprom73
  %88 = load i32, i32* %arrayidx74, align 4
  %idxprom75 = sext i32 %88 to i64
  %89 = load i32*, i32** @containing_rgn, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %89, i64 %idxprom75
  %90 = load i32, i32* %arrayidx76, align 4
  %cmp = icmp ne i32 %84, %90
  br i1 %cmp, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %do.body
  %91 = load i32, i32* %nr_rgn_out_edges, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %nr_rgn_out_edges, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %do.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %if.end.78
  %92 = load i32, i32* %fst_out_edge, align 4
  %93 = load i32, i32* %nxt_out_edge, align 4
  %cmp79 = icmp ne i32 %92, %93
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i32, i32* %nr_out_edges, align 4
  %inc80 = add nsw i32 %94, 1
  store i32 %inc80, i32* %nr_out_edges, align 4
  %95 = load i32, i32* %nxt_out_edge, align 4
  %idxprom81 = sext i32 %95 to i64
  %96 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx82 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %96, i64 %idxprom81
  %to_block83 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx82, i32 0, i32 1
  %97 = load i32, i32* %to_block83, align 4
  %idxprom84 = sext i32 %97 to i64
  %98 = load i32*, i32** @containing_rgn, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %98, i64 %idxprom84
  %99 = load i32, i32* %arrayidx85, align 4
  %100 = load i32, i32* @current_blocks, align 4
  %101 = load i32, i32* %bb.addr, align 4
  %add86 = add nsw i32 %100, %101
  %idxprom87 = sext i32 %add86 to i64
  %102 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %102, i64 %idxprom87
  %103 = load i32, i32* %arrayidx88, align 4
  %idxprom89 = sext i32 %103 to i64
  %104 = load i32*, i32** @containing_rgn, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %104, i64 %idxprom89
  %105 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp ne i32 %99, %105
  br i1 %cmp91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %while.body
  %106 = load i32, i32* %nr_rgn_out_edges, align 4
  %inc93 = add nsw i32 %106, 1
  store i32 %inc93, i32* %nr_rgn_out_edges, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %while.body
  %107 = load i32, i32* %nxt_out_edge, align 4
  %idxprom95 = sext i32 %107 to i64
  %108 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %108, i64 %idxprom95
  %109 = load i32, i32* %arrayidx96, align 4
  %rem97 = urem i32 %109, 64
  %sh_prom98 = zext i32 %rem97 to i64
  %shl99 = shl i64 1, %sh_prom98
  %110 = load i32, i32* %nxt_out_edge, align 4
  %idxprom100 = sext i32 %110 to i64
  %111 = load i32*, i32** @edge_to_bit, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %111, i64 %idxprom100
  %112 = load i32, i32* %arrayidx101, align 4
  %div102 = udiv i32 %112, 64
  %idxprom103 = zext i32 %div102 to i64
  %113 = load i32, i32* %bb.addr, align 4
  %idxprom104 = sext i32 %113 to i64
  %114 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx105 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %114, i64 %idxprom104
  %115 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx105, align 8
  %elms106 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %115, i32 0, i32 3
  %arrayidx107 = getelementptr inbounds [1 x i64], [1 x i64]* %elms106, i32 0, i64 %idxprom103
  %116 = load i64, i64* %arrayidx107, align 8
  %or108 = or i64 %116, %shl99
  store i64 %or108, i64* %arrayidx107, align 8
  %117 = load i32, i32* %nxt_out_edge, align 4
  %idxprom109 = sext i32 %117 to i64
  %118 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx110 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %118, i64 %idxprom109
  %next_out111 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx110, i32 0, i32 3
  %119 = load i32, i32* %next_out111, align 4
  store i32 %119, i32* %nxt_out_edge, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %120 = load i32, i32* %nr_rgn_out_edges, align 4
  %121 = load i32, i32* %nr_out_edges, align 4
  %sub = sub nsw i32 %121, %120
  store i32 %sub, i32* %nr_out_edges, align 4
  %122 = load i32, i32* %nr_rgn_out_edges, align 4
  %cmp112 = icmp sgt i32 %122, 0
  br i1 %cmp112, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %while.end
  %123 = load i32, i32* %pred, align 4
  %idxprom114 = sext i32 %123 to i64
  %124 = load i32*, i32** @block_to_bb, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %124, i64 %idxprom114
  %125 = load i32, i32* %arrayidx115, align 4
  %idxprom116 = sext i32 %125 to i64
  %126 = load float*, float** @prob, align 8
  %arrayidx117 = getelementptr inbounds float, float* %126, i64 %idxprom116
  %127 = load float, float* %arrayidx117, align 4
  %conv = fpext float %127 to double
  %mul = fmul double 9.000000e-01, %conv
  %128 = load i32, i32* %nr_out_edges, align 4
  %conv118 = sitofp i32 %128 to double
  %div119 = fdiv double %mul, %conv118
  %129 = load i32, i32* %bb.addr, align 4
  %idxprom120 = sext i32 %129 to i64
  %130 = load float*, float** @prob, align 8
  %arrayidx121 = getelementptr inbounds float, float* %130, i64 %idxprom120
  %131 = load float, float* %arrayidx121, align 4
  %conv122 = fpext float %131 to double
  %add123 = fadd double %conv122, %div119
  %conv124 = fptrunc double %add123 to float
  store float %conv124, float* %arrayidx121, align 4
  br label %if.end.134

if.else:                                          ; preds = %while.end
  %132 = load i32, i32* %pred, align 4
  %idxprom125 = sext i32 %132 to i64
  %133 = load i32*, i32** @block_to_bb, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %133, i64 %idxprom125
  %134 = load i32, i32* %arrayidx126, align 4
  %idxprom127 = sext i32 %134 to i64
  %135 = load float*, float** @prob, align 8
  %arrayidx128 = getelementptr inbounds float, float* %135, i64 %idxprom127
  %136 = load float, float* %arrayidx128, align 4
  %137 = load i32, i32* %nr_out_edges, align 4
  %conv129 = sitofp i32 %137 to float
  %div130 = fdiv float %136, %conv129
  %138 = load i32, i32* %bb.addr, align 4
  %idxprom131 = sext i32 %138 to i64
  %139 = load float*, float** @prob, align 8
  %arrayidx132 = getelementptr inbounds float, float* %139, i64 %idxprom131
  %140 = load float, float* %arrayidx132, align 4
  %add133 = fadd float %140, %div130
  store float %add133, float* %arrayidx132, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else, %if.then.113
  %141 = load i32, i32* %nxt_in_edge, align 4
  %idxprom135 = sext i32 %141 to i64
  %142 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx136 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %142, i64 %idxprom135
  %next_in = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx136, i32 0, i32 2
  %143 = load i32, i32* %next_in, align 4
  store i32 %143, i32* %nxt_in_edge, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.134
  %144 = load i32, i32* %fst_in_edge, align 4
  %145 = load i32, i32* %nxt_in_edge, align 4
  %cmp137 = icmp ne i32 %144, %145
  br i1 %cmp137, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %146 = load i32, i32* %bb.addr, align 4
  %rem139 = urem i32 %146, 64
  %sh_prom140 = zext i32 %rem139 to i64
  %shl141 = shl i64 1, %sh_prom140
  %147 = load i32, i32* %bb.addr, align 4
  %div142 = udiv i32 %147, 64
  %idxprom143 = zext i32 %div142 to i64
  %148 = load i32, i32* %bb.addr, align 4
  %idxprom144 = sext i32 %148 to i64
  %149 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @dom, align 8
  %arrayidx145 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %149, i64 %idxprom144
  %150 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx145, align 8
  %elms146 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %150, i32 0, i32 3
  %arrayidx147 = getelementptr inbounds [1 x i64], [1 x i64]* %elms146, i32 0, i64 %idxprom143
  %151 = load i64, i64* %arrayidx147, align 8
  %or148 = or i64 %151, %shl141
  store i64 %or148, i64* %arrayidx147, align 8
  %152 = load i32, i32* %bb.addr, align 4
  %idxprom149 = sext i32 %152 to i64
  %153 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx150 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %153, i64 %idxprom149
  %154 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx150, align 8
  %155 = load i32, i32* %bb.addr, align 4
  %idxprom151 = sext i32 %155 to i64
  %156 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @pot_split, align 8
  %arrayidx152 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %156, i64 %idxprom151
  %157 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx152, align 8
  %158 = load i32, i32* %bb.addr, align 4
  %idxprom153 = sext i32 %158 to i64
  %159 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @ancestor_edges, align 8
  %arrayidx154 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %159, i64 %idxprom153
  %160 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx154, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %154, %struct.simple_bitmap_def* %157, %struct.simple_bitmap_def* %160)
  %161 = load i32, i32* @sched_verbose, align 4
  %cmp155 = icmp sge i32 %161, 2
  br i1 %cmp155, label %if.then.157, label %if.end.167

if.then.157:                                      ; preds = %do.end
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %163 = load i32, i32* %bb.addr, align 4
  %164 = load i32, i32* @current_blocks, align 4
  %165 = load i32, i32* %bb.addr, align 4
  %add158 = add nsw i32 %164, %165
  %idxprom159 = sext i32 %add158 to i64
  %166 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %166, i64 %idxprom159
  %167 = load i32, i32* %arrayidx160, align 4
  %168 = load i32, i32* %bb.addr, align 4
  %idxprom161 = sext i32 %168 to i64
  %169 = load float*, float** @prob, align 8
  %arrayidx162 = getelementptr inbounds float, float* %169, i64 %idxprom161
  %170 = load float, float* %arrayidx162, align 4
  %conv163 = fpext float %170 to double
  %mul164 = fmul double 1.000000e+02, %conv163
  %conv165 = fptosi double %mul164 to i32
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0), i32 %163, i32 %167, i32 %conv165)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then, %if.then.157, %do.end
  ret void
}

declare i32 @no_real_insns_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @save_line_notes(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @rm_line_notes(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @rm_other_notes(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @schedule_block(i32, i32) #1

declare void @restore_line_notes(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @free_pending_lists() #0 {
entry:
  %bb = alloca i32, align 4
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bb, align 4
  %1 = load i32, i32* @current_nr_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx = getelementptr inbounds %struct.deps, %struct.deps* %3, i64 %idxprom
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx, i32 0, i32 0
  call void @free_INSN_LIST_list(%struct.rtx_def** %pending_read_insns)
  %4 = load i32, i32* %bb, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx2 = getelementptr inbounds %struct.deps, %struct.deps* %5, i64 %idxprom1
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx2, i32 0, i32 2
  call void @free_INSN_LIST_list(%struct.rtx_def** %pending_write_insns)
  %6 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx4 = getelementptr inbounds %struct.deps, %struct.deps* %7, i64 %idxprom3
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx4, i32 0, i32 1
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_read_mems)
  %8 = load i32, i32* %bb, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx6 = getelementptr inbounds %struct.deps, %struct.deps* %9, i64 %idxprom5
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx6, i32 0, i32 3
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_write_mems)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @finish_deps_global() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @sched_analyze(%struct.deps*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @add_branch_dependences(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 33
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load5 = load i32, i32* %6, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 32
  br i1 %cmp7, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 48
  br i1 %cmp10, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load15 = load i32, i32* %12, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 49
  br i1 %cmp17, label %lor.end, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call zeroext i1 @can_throw_internal(%struct.rtx_def* %13)
  br i1 %call, label %lor.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.18
  %14 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %lor.lhs.false.19
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %call24 = call zeroext i1 @sets_likely_spilled(%struct.rtx_def* %16)
  br i1 %call24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.20, %lor.lhs.false.19, %lor.lhs.false.4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load25 = load i32, i32* %18, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 37
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.20, %lor.lhs.false.18, %lor.lhs.false.11, %land.lhs.true, %lor.lhs.false, %while.cond
  %19 = phi i1 [ true, %land.lhs.true.20 ], [ true, %lor.lhs.false.18 ], [ true, %lor.lhs.false.11 ], [ true, %land.lhs.true ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp27, %lor.rhs ]
  br i1 %19, label %while.body, label %while.end.62

while.body:                                       ; preds = %lor.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load28 = load i32, i32* %21, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp ne i32 %bf.clear29, 37
  br i1 %cmp30, label %if.then, label %if.end.55

if.then:                                          ; preds = %while.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp31 = icmp ne %struct.rtx_def* %22, null
  br i1 %cmp31, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 5
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %call36 = call %struct.rtx_def* @find_insn_list(%struct.rtx_def* %23, %struct.rtx_def* %25)
  %tobool37 = icmp ne %struct.rtx_def* %call36, null
  br i1 %tobool37, label %if.end, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.32
  %26 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_dependence(%struct.rtx_def* %26, %struct.rtx_def* %27, i32 14)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %29 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx41 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %30, i64 %idxprom
  %ref_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx41, i32 0, i32 6
  %31 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ref_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.38, %land.lhs.true.32, %if.then
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %33 = load i32, i32* %rtint44, align 4
  %idxprom45 = sext i32 %33 to i64
  %34 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx46 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %34, i64 %idxprom45
  %cant_move = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx46, i32 0, i32 11
  %bf.load47 = load i8, i8* %cant_move, align 2
  %bf.clear48 = and i8 %bf.load47, -2
  %bf.set = or i8 %bf.clear48, 1
  store i8 %bf.set, i8* %cant_move, align 2
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %last, align 8
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.53, %if.end
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load50 = load i32, i32* %37, align 8
  %bf.lshr = lshr i32 %bf.load50, 28
  %bf.clear51 = and i32 %bf.lshr, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %while.body.53, label %while.end

while.body.53:                                    ; preds = %while.cond.49
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call54 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %38)
  store %struct.rtx_def* %call54, %struct.rtx_def** %temp, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @add_dependence(%struct.rtx_def* %39, %struct.rtx_def* %40, i32 14)
  %41 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn, align 8
  br label %while.cond.49

while.end:                                        ; preds = %while.cond.49
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %while.body
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %cmp56 = icmp eq %struct.rtx_def* %42, %43
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  br label %while.end.62

if.end.58:                                        ; preds = %if.end.55
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 1
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end.62:                                     ; preds = %if.then.57, %lor.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %insn, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp63 = icmp ne %struct.rtx_def* %47, null
  br i1 %cmp63, label %if.then.64, label %if.end.93

if.then.64:                                       ; preds = %while.end.62
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.end.91, %if.then.76, %if.then.64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %cmp66 = icmp ne %struct.rtx_def* %48, %49
  br i1 %cmp66, label %while.body.67, label %while.end.92

while.body.67:                                    ; preds = %while.cond.65
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call68 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %50)
  store %struct.rtx_def* %call68, %struct.rtx_def** %insn, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %52 = load i32, i32* %rtint71, align 4
  %idxprom72 = sext i32 %52 to i64
  %53 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx73 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %53, i64 %idxprom72
  %ref_count74 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx73, i32 0, i32 6
  %54 = load i32, i32* %ref_count74, align 4
  %cmp75 = icmp ne i32 %54, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.body.67
  br label %while.cond.65

if.end.77:                                        ; preds = %while.body.67
  %55 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_dependence(%struct.rtx_def* %55, %struct.rtx_def* %56, i32 14)
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %58 = load i32, i32* %rtint80, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx82 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %59, i64 %idxprom81
  %ref_count83 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx82, i32 0, i32 6
  store i32 1, i32* %ref_count83, align 4
  br label %while.cond.84

while.cond.84:                                    ; preds = %while.body.89, %if.end.77
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load85 = load i32, i32* %61, align 8
  %bf.lshr86 = lshr i32 %bf.load85, 28
  %bf.clear87 = and i32 %bf.lshr86, 1
  %tobool88 = icmp ne i32 %bf.clear87, 0
  br i1 %tobool88, label %while.body.89, label %while.end.91

while.body.89:                                    ; preds = %while.cond.84
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call90 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %62)
  store %struct.rtx_def* %call90, %struct.rtx_def** %insn, align 8
  br label %while.cond.84

while.end.91:                                     ; preds = %while.cond.84
  br label %while.cond.65

while.end.92:                                     ; preds = %while.cond.65
  br label %if.end.93

if.end.93:                                        ; preds = %while.end.92, %while.end.62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_deps(i32 %bb, %struct.deps* %pred_deps) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %pred_deps.addr = alloca %struct.deps*, align 8
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  %first_edge = alloca i32, align 4
  %b_succ = alloca i32, align 4
  %bb_succ = alloca i32, align 4
  %succ_deps = alloca %struct.deps*, align 8
  %reg = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %pred_rl = alloca %struct.deps_reg*, align 8
  %succ_rl = alloca %struct.deps_reg*, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store %struct.deps* %pred_deps, %struct.deps** %pred_deps.addr, align 8
  %0 = load i32, i32* @current_blocks, align 4
  %1 = load i32, i32* %bb.addr, align 4
  %add = add nsw i32 %0, %1
  %idxprom = sext i32 %add to i64
  %2 = load i32*, i32** @rgn_bb_table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %b, align 4
  %4 = load i32, i32* %b, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** @out_edges, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %e, align 4
  store i32 %6, i32* %first_edge, align 4
  %7 = load i32, i32* %e, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.96

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %8 = load i32, i32* %e, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx4 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %9, i64 %idxprom3
  %to_block = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx4, i32 0, i32 1
  %10 = load i32, i32* %to_block, align 4
  store i32 %10, i32* %b_succ, align 4
  %11 = load i32, i32* %b_succ, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** @block_to_bb, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  store i32 %13, i32* %bb_succ, align 4
  %14 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %15 = load i32, i32* %bb_succ, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.deps, %struct.deps* %14, i64 %idx.ext
  store %struct.deps* %add.ptr, %struct.deps** %succ_deps, align 8
  %16 = load i32, i32* %b, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i32*, i32** @containing_rgn, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  %19 = load i32, i32* %b_succ, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load i32*, i32** @containing_rgn, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %20, i64 %idxprom9
  %21 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %18, %21
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %22 = load i32, i32* %bb_succ, align 4
  %23 = load i32, i32* %bb.addr, align 4
  %cmp12 = icmp sle i32 %22, %23
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %lor.lhs.false, %do.body
  %24 = load i32, i32* %e, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx15 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %25, i64 %idxprom14
  %next_out = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx15, i32 0, i32 3
  %26 = load i32, i32* %next_out, align 4
  store i32 %26, i32* %e, align 4
  br label %do.cond

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body.16

do.body.16:                                       ; preds = %if.end
  %27 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %reg_last_in_use = getelementptr inbounds %struct.deps, %struct.deps* %27, i32 0, i32 12
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %reg_last_in_use, i32 0, i32 0
  %28 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %28, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.16
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp17 = icmp ne %struct.bitmap_element_def* %29, null
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i32 0, i32 2
  %31 = load i32, i32* %indx, align 4
  %32 = load i32, i32* %indx_, align 4
  %cmp18 = icmp ult i32 %31, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %34, i32 0, i32 0
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %35, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp19 = icmp ne %struct.bitmap_element_def* %36, null
  br i1 %cmp19, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.end
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 2
  %38 = load i32, i32* %indx20, align 4
  %39 = load i32, i32* %indx_, align 4
  %cmp21 = icmp ne i32 %38, %39
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %if.end.23
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp24 = icmp ne %struct.bitmap_element_def* %40, null
  br i1 %cmp24, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.64, %for.body
  %41 = load i32, i32* %word_num_, align 4
  %cmp26 = icmp ult i32 %41, 2
  br i1 %cmp26, label %for.body.27, label %for.end.66

for.body.27:                                      ; preds = %for.cond.25
  %42 = load i32, i32* %word_num_, align 4
  %idxprom28 = zext i32 %42 to i64
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom28
  %44 = load i64, i64* %arrayidx29, align 8
  store i64 %44, i64* %word_, align 8
  %45 = load i64, i64* %word_, align 8
  %cmp30 = icmp ne i64 %45, 0
  br i1 %cmp30, label %if.then.31, label %if.end.63

if.then.31:                                       ; preds = %for.body.27
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.31
  %46 = load i32, i32* %bit_num_, align 4
  %cmp33 = icmp ult i32 %46, 64
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.32
  %47 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %47 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %48 = load i64, i64* %word_, align 8
  %49 = load i64, i64* %mask_, align 8
  %and = and i64 %48, %49
  %cmp35 = icmp ne i64 %and, 0
  br i1 %cmp35, label %if.then.36, label %if.end.62

if.then.36:                                       ; preds = %for.body.34
  %50 = load i64, i64* %mask_, align 8
  %neg = xor i64 %50, -1
  %51 = load i64, i64* %word_, align 8
  %and37 = and i64 %51, %neg
  store i64 %and37, i64* %word_, align 8
  %52 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %52, i32 0, i32 2
  %53 = load i32, i32* %indx38, align 4
  %mul = mul i32 %53, 128
  %54 = load i32, i32* %word_num_, align 4
  %mul39 = mul i32 %54, 64
  %add40 = add i32 %mul, %mul39
  %55 = load i32, i32* %bit_num_, align 4
  %add41 = add i32 %add40, %55
  store i32 %add41, i32* %reg, align 4
  %56 = load i32, i32* %reg, align 4
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %reg_last = getelementptr inbounds %struct.deps, %struct.deps* %57, i32 0, i32 11
  %58 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %arrayidx43 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %58, i64 %idxprom42
  store %struct.deps_reg* %arrayidx43, %struct.deps_reg** %pred_rl, align 8
  %59 = load i32, i32* %reg, align 4
  %idxprom44 = sext i32 %59 to i64
  %60 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %reg_last45 = getelementptr inbounds %struct.deps, %struct.deps* %60, i32 0, i32 11
  %61 = load %struct.deps_reg*, %struct.deps_reg** %reg_last45, align 8
  %arrayidx46 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %61, i64 %idxprom44
  store %struct.deps_reg* %arrayidx46, %struct.deps_reg** %succ_rl, align 8
  %62 = load %struct.deps_reg*, %struct.deps_reg** %pred_rl, align 8
  %uses = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %62, i32 0, i32 0
  %63 = load %struct.rtx_def*, %struct.rtx_def** %uses, align 8
  %64 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %uses47 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %64, i32 0, i32 0
  %65 = load %struct.rtx_def*, %struct.rtx_def** %uses47, align 8
  %call = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %63, %struct.rtx_def* %65)
  %66 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %uses48 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %66, i32 0, i32 0
  store %struct.rtx_def* %call, %struct.rtx_def** %uses48, align 8
  %67 = load %struct.deps_reg*, %struct.deps_reg** %pred_rl, align 8
  %sets = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %67, i32 0, i32 1
  %68 = load %struct.rtx_def*, %struct.rtx_def** %sets, align 8
  %69 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %sets49 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %69, i32 0, i32 1
  %70 = load %struct.rtx_def*, %struct.rtx_def** %sets49, align 8
  %call50 = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %68, %struct.rtx_def* %70)
  %71 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %sets51 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %71, i32 0, i32 1
  store %struct.rtx_def* %call50, %struct.rtx_def** %sets51, align 8
  %72 = load %struct.deps_reg*, %struct.deps_reg** %pred_rl, align 8
  %clobbers = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %72, i32 0, i32 2
  %73 = load %struct.rtx_def*, %struct.rtx_def** %clobbers, align 8
  %74 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %clobbers52 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %74, i32 0, i32 2
  %75 = load %struct.rtx_def*, %struct.rtx_def** %clobbers52, align 8
  %call53 = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %73, %struct.rtx_def* %75)
  %76 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %clobbers54 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %76, i32 0, i32 2
  store %struct.rtx_def* %call53, %struct.rtx_def** %clobbers54, align 8
  %77 = load %struct.deps_reg*, %struct.deps_reg** %pred_rl, align 8
  %uses_length = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %77, i32 0, i32 3
  %78 = load i32, i32* %uses_length, align 4
  %79 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %uses_length55 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %79, i32 0, i32 3
  %80 = load i32, i32* %uses_length55, align 4
  %add56 = add nsw i32 %80, %78
  store i32 %add56, i32* %uses_length55, align 4
  %81 = load %struct.deps_reg*, %struct.deps_reg** %pred_rl, align 8
  %clobbers_length = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %81, i32 0, i32 4
  %82 = load i32, i32* %clobbers_length, align 4
  %83 = load %struct.deps_reg*, %struct.deps_reg** %succ_rl, align 8
  %clobbers_length57 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %83, i32 0, i32 4
  %84 = load i32, i32* %clobbers_length57, align 4
  %add58 = add nsw i32 %84, %82
  store i32 %add58, i32* %clobbers_length57, align 4
  %85 = load i64, i64* %word_, align 8
  %cmp59 = icmp eq i64 %85, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.36
  br label %for.end

if.end.61:                                        ; preds = %if.then.36
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %86 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %86, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.32

for.end:                                          ; preds = %if.then.60, %for.cond.32
  br label %if.end.63

if.end.63:                                        ; preds = %for.end, %for.body.27
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %87 = load i32, i32* %word_num_, align 4
  %inc65 = add i32 %87, 1
  store i32 %inc65, i32* %word_num_, align 4
  br label %for.cond.25

for.end.66:                                       ; preds = %for.cond.25
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %88 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next68 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %88, i32 0, i32 0
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next68, align 8
  store %struct.bitmap_element_def* %89, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.69
  %90 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %reg_last_in_use70 = getelementptr inbounds %struct.deps, %struct.deps* %90, i32 0, i32 12
  %91 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %reg_last_in_use71 = getelementptr inbounds %struct.deps, %struct.deps* %91, i32 0, i32 12
  %92 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %reg_last_in_use72 = getelementptr inbounds %struct.deps, %struct.deps* %92, i32 0, i32 12
  %call73 = call i32 @bitmap_operation(%struct.bitmap_head_def* %reg_last_in_use70, %struct.bitmap_head_def* %reg_last_in_use71, %struct.bitmap_head_def* %reg_last_in_use72, i32 2)
  %93 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %93, i32 0, i32 0
  %94 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_insns, align 8
  %95 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %95, i32 0, i32 1
  %96 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_mems, align 8
  %97 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_read_insns74 = getelementptr inbounds %struct.deps, %struct.deps* %97, i32 0, i32 0
  %98 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_read_mems75 = getelementptr inbounds %struct.deps, %struct.deps* %98, i32 0, i32 1
  call void @concat_insn_mem_list(%struct.rtx_def* %94, %struct.rtx_def* %96, %struct.rtx_def** %pending_read_insns74, %struct.rtx_def** %pending_read_mems75)
  %99 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %99, i32 0, i32 2
  %100 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_insns, align 8
  %101 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %101, i32 0, i32 3
  %102 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_mems, align 8
  %103 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_write_insns76 = getelementptr inbounds %struct.deps, %struct.deps* %103, i32 0, i32 2
  %104 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_write_mems77 = getelementptr inbounds %struct.deps, %struct.deps* %104, i32 0, i32 3
  call void @concat_insn_mem_list(%struct.rtx_def* %100, %struct.rtx_def* %102, %struct.rtx_def** %pending_write_insns76, %struct.rtx_def** %pending_write_mems77)
  %105 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %105, i32 0, i32 6
  %106 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush, align 8
  %107 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %last_pending_memory_flush78 = getelementptr inbounds %struct.deps, %struct.deps* %107, i32 0, i32 6
  %108 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush78, align 8
  %call79 = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %106, %struct.rtx_def* %108)
  %109 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %last_pending_memory_flush80 = getelementptr inbounds %struct.deps, %struct.deps* %109, i32 0, i32 6
  store %struct.rtx_def* %call79, %struct.rtx_def** %last_pending_memory_flush80, align 8
  %110 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_lists_length = getelementptr inbounds %struct.deps, %struct.deps* %110, i32 0, i32 4
  %111 = load i32, i32* %pending_lists_length, align 4
  %112 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_lists_length81 = getelementptr inbounds %struct.deps, %struct.deps* %112, i32 0, i32 4
  %113 = load i32, i32* %pending_lists_length81, align 4
  %add82 = add nsw i32 %113, %111
  store i32 %add82, i32* %pending_lists_length81, align 4
  %114 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_flush_length = getelementptr inbounds %struct.deps, %struct.deps* %114, i32 0, i32 5
  %115 = load i32, i32* %pending_flush_length, align 4
  %116 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %pending_flush_length83 = getelementptr inbounds %struct.deps, %struct.deps* %116, i32 0, i32 5
  %117 = load i32, i32* %pending_flush_length83, align 4
  %add84 = add nsw i32 %117, %115
  store i32 %add84, i32* %pending_flush_length83, align 4
  %118 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %last_function_call = getelementptr inbounds %struct.deps, %struct.deps* %118, i32 0, i32 7
  %119 = load %struct.rtx_def*, %struct.rtx_def** %last_function_call, align 8
  %120 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %last_function_call85 = getelementptr inbounds %struct.deps, %struct.deps* %120, i32 0, i32 7
  %121 = load %struct.rtx_def*, %struct.rtx_def** %last_function_call85, align 8
  %call86 = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %119, %struct.rtx_def* %121)
  %122 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %last_function_call87 = getelementptr inbounds %struct.deps, %struct.deps* %122, i32 0, i32 7
  store %struct.rtx_def* %call86, %struct.rtx_def** %last_function_call87, align 8
  %123 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %sched_before_next_call = getelementptr inbounds %struct.deps, %struct.deps* %123, i32 0, i32 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %sched_before_next_call, align 8
  %125 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %sched_before_next_call88 = getelementptr inbounds %struct.deps, %struct.deps* %125, i32 0, i32 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %sched_before_next_call88, align 8
  %call89 = call %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %124, %struct.rtx_def* %126)
  %127 = load %struct.deps*, %struct.deps** %succ_deps, align 8
  %sched_before_next_call90 = getelementptr inbounds %struct.deps, %struct.deps* %127, i32 0, i32 8
  store %struct.rtx_def* %call89, %struct.rtx_def** %sched_before_next_call90, align 8
  %128 = load i32, i32* %e, align 4
  %idxprom91 = sext i32 %128 to i64
  %129 = load %struct.haifa_edge*, %struct.haifa_edge** @edge_table, align 8
  %arrayidx92 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %129, i64 %idxprom91
  %next_out93 = getelementptr inbounds %struct.haifa_edge, %struct.haifa_edge* %arrayidx92, i32 0, i32 3
  %130 = load i32, i32* %next_out93, align 4
  store i32 %130, i32* %e, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.end, %if.then.13
  %131 = load i32, i32* %e, align 4
  %132 = load i32, i32* %first_edge, align 4
  %cmp94 = icmp ne i32 %131, %132
  br i1 %cmp94, label %do.body, label %do.end.95

do.end.95:                                        ; preds = %do.cond
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %entry
  %133 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_insns97 = getelementptr inbounds %struct.deps, %struct.deps* %133, i32 0, i32 0
  %134 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_insns97, align 8
  %135 = load i32, i32* %bb.addr, align 4
  %idxprom98 = sext i32 %135 to i64
  %136 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx99 = getelementptr inbounds %struct.deps, %struct.deps* %136, i64 %idxprom98
  %pending_read_insns100 = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx99, i32 0, i32 0
  store %struct.rtx_def* %134, %struct.rtx_def** %pending_read_insns100, align 8
  %137 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_mems101 = getelementptr inbounds %struct.deps, %struct.deps* %137, i32 0, i32 1
  %138 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_mems101, align 8
  %139 = load i32, i32* %bb.addr, align 4
  %idxprom102 = sext i32 %139 to i64
  %140 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx103 = getelementptr inbounds %struct.deps, %struct.deps* %140, i64 %idxprom102
  %pending_read_mems104 = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx103, i32 0, i32 1
  store %struct.rtx_def* %138, %struct.rtx_def** %pending_read_mems104, align 8
  %141 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_insns105 = getelementptr inbounds %struct.deps, %struct.deps* %141, i32 0, i32 2
  %142 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_insns105, align 8
  %143 = load i32, i32* %bb.addr, align 4
  %idxprom106 = sext i32 %143 to i64
  %144 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx107 = getelementptr inbounds %struct.deps, %struct.deps* %144, i64 %idxprom106
  %pending_write_insns108 = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx107, i32 0, i32 2
  store %struct.rtx_def* %142, %struct.rtx_def** %pending_write_insns108, align 8
  %145 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_mems109 = getelementptr inbounds %struct.deps, %struct.deps* %145, i32 0, i32 3
  %146 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_mems109, align 8
  %147 = load i32, i32* %bb.addr, align 4
  %idxprom110 = sext i32 %147 to i64
  %148 = load %struct.deps*, %struct.deps** @bb_deps, align 8
  %arrayidx111 = getelementptr inbounds %struct.deps, %struct.deps* %148, i64 %idxprom110
  %pending_write_mems112 = getelementptr inbounds %struct.deps, %struct.deps* %arrayidx111, i32 0, i32 3
  store %struct.rtx_def* %146, %struct.rtx_def** %pending_write_mems112, align 8
  %149 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_insns113 = getelementptr inbounds %struct.deps, %struct.deps* %149, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %pending_read_insns113, align 8
  %150 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_read_mems114 = getelementptr inbounds %struct.deps, %struct.deps* %150, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %pending_read_mems114, align 8
  %151 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_insns115 = getelementptr inbounds %struct.deps, %struct.deps* %151, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %pending_write_insns115, align 8
  %152 = load %struct.deps*, %struct.deps** %pred_deps.addr, align 8
  %pending_write_mems116 = getelementptr inbounds %struct.deps, %struct.deps* %152, i32 0, i32 3
  store %struct.rtx_def* null, %struct.rtx_def** %pending_write_mems116, align 8
  ret void
}

declare void @free_deps(%struct.deps*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @sets_likely_spilled(%struct.rtx_def* %pat) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %ret = alloca i8, align 1
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8 0, i8* %ret, align 1
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  call void @note_stores(%struct.rtx_def* %0, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @sets_likely_spilled_1, i8* %ret)
  %1 = load i8, i8* %ret, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

declare %struct.rtx_def* @find_insn_list(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @add_dependence(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sets_likely_spilled_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %ret, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtuint, align 4
  %cmp5 = icmp ult i32 %6, 53
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %8 = load i32, i32* %rtuint9, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %9, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %11 = load i32, i32* %rtuint14, align 4
  %idxprom15 = zext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %12, 2
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtuint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %14 = load i32, i32* %rtuint21, align 4
  %idxprom22 = zext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom22
  %15 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp eq i32 %15, 3
  br i1 %cmp24, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.18
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtuint28 = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %17 = load i32, i32* %rtuint28, align 4
  %idxprom29 = zext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom29
  %18 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %18, 4
  br i1 %cmp31, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.25
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtuint35 = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %20 = load i32, i32* %rtuint35, align 4
  %idxprom36 = zext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom36
  %21 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %21, 7
  br i1 %cmp38, label %if.then, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.32
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %23 = load i32, i32* %rtuint42, align 4
  %idxprom43 = zext i32 %23 to i64
  %arrayidx44 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom43
  %24 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %24, 5
  br i1 %cmp45, label %if.then, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.39
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtuint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %26 = load i32, i32* %rtuint49, align 4
  %idxprom50 = zext i32 %26 to i64
  %arrayidx51 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom50
  %27 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %27, 6
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.46, %lor.lhs.false.39, %lor.lhs.false.32, %lor.lhs.false.25, %lor.lhs.false.18, %lor.lhs.false, %land.lhs.true.6
  %28 = load i8*, i8** %ret, align 8
  store i8 1, i8* %28, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.46, %land.lhs.true.4, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @concat_INSN_LIST(%struct.rtx_def* %copy, %struct.rtx_def* %old) #0 {
entry:
  %copy.addr = alloca %struct.rtx_def*, align 8
  %old.addr = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %copy, %struct.rtx_def** %copy.addr, align 8
  store %struct.rtx_def* %old, %struct.rtx_def** %old.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %old.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %new, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %3, %struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %copy.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  ret %struct.rtx_def* %7
}

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @concat_insn_mem_list(%struct.rtx_def* %copy_insns, %struct.rtx_def* %copy_mems, %struct.rtx_def** %old_insns_p, %struct.rtx_def** %old_mems_p) #0 {
entry:
  %copy_insns.addr = alloca %struct.rtx_def*, align 8
  %copy_mems.addr = alloca %struct.rtx_def*, align 8
  %old_insns_p.addr = alloca %struct.rtx_def**, align 8
  %old_mems_p.addr = alloca %struct.rtx_def**, align 8
  %new_insns = alloca %struct.rtx_def*, align 8
  %new_mems = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %copy_insns, %struct.rtx_def** %copy_insns.addr, align 8
  store %struct.rtx_def* %copy_mems, %struct.rtx_def** %copy_mems.addr, align 8
  store %struct.rtx_def** %old_insns_p, %struct.rtx_def*** %old_insns_p.addr, align 8
  store %struct.rtx_def** %old_mems_p, %struct.rtx_def*** %old_mems_p.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %old_insns_p.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %new_insns, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %old_mems_p.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %new_mems, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %copy_insns.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %copy_insns.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %new_insns, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %6, %struct.rtx_def* %7)
  store %struct.rtx_def* %call, %struct.rtx_def** %new_insns, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %copy_mems.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %new_mems, align 8
  %call4 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %9, %struct.rtx_def* %10)
  store %struct.rtx_def* %call4, %struct.rtx_def** %new_mems, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %copy_insns.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %copy_insns.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %copy_mems.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %copy_mems.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.rtx_def*, %struct.rtx_def** %new_insns, align 8
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %old_insns_p.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %16, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %new_mems, align 8
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %old_mems_p.addr, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %18, align 8
  ret void
}

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @free_INSN_LIST_list(%struct.rtx_def**) #1

declare void @free_EXPR_LIST_list(%struct.rtx_def**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
