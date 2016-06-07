; ModuleID = 'sched-ebb.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_info = type { void (%struct.ready_list*)*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.ready_list = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.haifa_insn_data = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.deps = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8, i32, %struct.deps_reg*, %struct.bitmap_head_def }
%struct.deps_reg = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }

@n_basic_blocks = external global i32, align 4
@ebb_sched_info = internal global %struct.sched_info { void (%struct.ready_list*)* @init_ready_list, i32 (%struct.rtx_def*)* @can_schedule_ready_p, i32 ()* @schedule_more_p, i32 (%struct.rtx_def*)* @new_ready, i32 (%struct.rtx_def*, %struct.rtx_def*)* @rank, i8* (%struct.rtx_def*, i32)* @print_insn, i32 (%struct.rtx_def*, %struct.rtx_def*)* @contributes_to_priority, void (%struct.rtx_def*, %struct.bitmap_head_def*)* @compute_jump_reg_dependencies, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, i8 2 }, align 8
@current_sched_info = external global %struct.sched_info*, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@reload_completed = external global i32, align 4
@write_symbols = external global i32, align 4
@target_n_insns = internal global i32 0, align 4
@sched_n_insns = internal global i32 0, align 4
@rtx_class = external constant [153 x i8], align 16
@h_i_d = external global %struct.haifa_insn_data*, align 8
@print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"sched-ebb.c\00", align 1
@__FUNCTION__.schedule_ebb = private unnamed_addr constant [13 x i8] c"schedule_ebb\00", align 1

; Function Attrs: nounwind uwtable
define void @schedule_ebbs(%struct._IO_FILE* %dump_file) #0 {
entry:
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %pred_val = alloca i32, align 4
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @scope_to_insns_initialize()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8
  call void @sched_init(%struct._IO_FILE* %1)
  store %struct.sched_info* @ebb_sched_info, %struct.sched_info** @current_sched_info, align 8
  call void @allocate_reg_life_data()
  %call = call i32 @get_max_uid()
  call void @compute_bb_for_insn(i32 %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head2, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %head, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %if.end.41, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %b, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %tail, align 8
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %14 = load i32, i32* @n_basic_blocks, align 4
  %cmp8 = icmp eq i32 %add, %14
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.3
  %15 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %15, 1
  %idxprom10 = sext i32 %add9 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb12 = bitcast %union.varray_data_tag* %data11 to [1 x %struct.basic_block_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb12, i32 0, i64 %idxprom10
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx13, align 8
  %head14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head14, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp15 = icmp eq i32 %bf.clear, 36
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %for.cond.3
  br label %for.end.42

if.end.17:                                        ; preds = %lor.lhs.false
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 5
  %21 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end.17
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %22, null
  br i1 %tobool, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.18
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 6
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 1
  %cmp20 = icmp ne i32 %and, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.19
  br label %for.end

if.end.22:                                        ; preds = %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 1
  %26 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %26, %struct.edge_def** %e, align 8
  br label %for.cond.18

for.end:                                          ; preds = %if.then.21, %for.cond.18
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool23 = icmp ne %struct.edge_def* %27, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  br label %for.end.42

if.end.25:                                        ; preds = %for.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load26 = load i32, i32* %29, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 33
  br i1 %cmp28, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %if.end.25
  %30 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %call30 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %30, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call30, %struct.rtx_def** %x, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool31 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %if.then.29
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx35 to i64*
  %34 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %34 to i32
  store i32 %conv, i32* %pred_val, align 4
  %35 = load i32, i32* %pred_val, align 4
  %cmp36 = icmp sgt i32 %35, 5000
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.32
  br label %for.end.42

if.end.39:                                        ; preds = %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.29
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.25
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end.42:                                       ; preds = %if.then.38, %if.then.24, %if.then.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %for.end.42
  %37 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %cmp43 = icmp ne %struct.rtx_def* %37, %38
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load45 = load i32, i32* %40, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 37
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %while.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 2
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %head, align 8
  br label %if.end.73

if.else:                                          ; preds = %while.body
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load53 = load i32, i32* %44, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 37
  br i1 %cmp55, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %if.else
  %45 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %tail, align 8
  br label %if.end.72

if.else.61:                                       ; preds = %if.else
  %47 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load62 = load i32, i32* %48, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 36
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.else.61
  %49 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 2
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %head, align 8
  br label %if.end.71

if.else.70:                                       ; preds = %if.else.61
  br label %while.end

if.end.71:                                        ; preds = %if.then.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.57
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.49
  br label %while.cond

while.end:                                        ; preds = %if.else.70, %while.cond
  %51 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  call void @schedule_ebb(%struct.rtx_def* %51, %struct.rtx_def* %52)
  br label %for.inc.74

for.inc.74:                                       ; preds = %while.end
  %53 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %53, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %54 = load i32, i32* @reload_completed, align 4
  %tobool77 = icmp ne i32 %54, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %for.end.76
  %call79 = call %struct.rtx_def* @get_insns()
  call void @reposition_prologue_and_epilogue_notes(%struct.rtx_def* %call79)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %for.end.76
  %55 = load i32, i32* @write_symbols, align 4
  %cmp81 = icmp ne i32 %55, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  call void @rm_redundant_line_notes()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.80
  call void @scope_to_insns_finalize()
  call void @sched_finish()
  br label %return

return:                                           ; preds = %if.end.84, %if.then
  ret void
}

declare void @scope_to_insns_initialize() #1

declare void @sched_init(%struct._IO_FILE*) #1

declare void @allocate_reg_life_data() #1

declare void @compute_bb_for_insn(i32) #1

declare i32 @get_max_uid() #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @schedule_ebb(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %n_insns = alloca i32, align 4
  %tmp_deps = alloca %struct.deps, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %call = call i32 @no_real_insns_p(%struct.rtx_def* %0, %struct.rtx_def* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @init_deps_global()
  call void @init_deps(%struct.deps* %tmp_deps)
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @sched_analyze(%struct.deps* %tmp_deps, %struct.rtx_def* %2, %struct.rtx_def* %3)
  call void @free_deps(%struct.deps* %tmp_deps)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @compute_forward_dependences(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %call1 = call i32 @set_priorities(%struct.rtx_def* %6, %struct.rtx_def* %7)
  store i32 %call1, i32* %n_insns, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %prev_head = getelementptr inbounds %struct.sched_info, %struct.sched_info* %10, i32 0, i32 8
  store %struct.rtx_def* %9, %struct.rtx_def** %prev_head, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %13 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %next_tail = getelementptr inbounds %struct.sched_info, %struct.sched_info* %13, i32 0, i32 9
  store %struct.rtx_def* %12, %struct.rtx_def** %next_tail, align 8
  %14 = load i32, i32* @write_symbols, align 4
  %cmp = icmp ne i32 %14, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @save_line_notes(i32 0, %struct.rtx_def* %15, %struct.rtx_def* %16)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @rm_line_notes(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %21 to i32
  %cmp8 = icmp eq i32 %conv, 105
  br i1 %cmp8, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %if.end.6
  %22 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 6
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool14 = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load15 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load15, 16
  %bf.clear16 = and i32 %bf.lshr, 255
  %cmp17 = icmp eq i32 %bf.clear16, 24
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %for.body
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %27, %struct.rtx_def* %28)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %note, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %31, %struct.rtx_def* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end.6
  %35 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @rm_other_notes(%struct.rtx_def* %35, %struct.rtx_def* %36)
  %37 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %queue_must_finish_empty = getelementptr inbounds %struct.sched_info, %struct.sched_info* %37, i32 0, i32 12
  %bf.load28 = load i8, i8* %queue_must_finish_empty, align 8
  %bf.clear29 = and i8 %bf.load28, -2
  %bf.set = or i8 %bf.clear29, 1
  store i8 %bf.set, i8* %queue_must_finish_empty, align 8
  %38 = load i32, i32* %n_insns, align 4
  call void @schedule_block(i32 -1, i32 %38)
  %39 = load i32, i32* @sched_n_insns, align 4
  %40 = load i32, i32* %n_insns, align 4
  %cmp30 = icmp ne i32 %39, %40
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.schedule_ebb, i32 0, i32 0)) #4
  unreachable

if.end.33:                                        ; preds = %if.end.27
  %41 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %head34 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %41, i32 0, i32 10
  %42 = load %struct.rtx_def*, %struct.rtx_def** %head34, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %head.addr, align 8
  %43 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %tail35 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %43, i32 0, i32 11
  %44 = load %struct.rtx_def*, %struct.rtx_def** %tail35, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %tail.addr, align 8
  %45 = load i32, i32* @write_symbols, align 4
  %cmp36 = icmp ne i32 %45, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  %46 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  call void @restore_line_notes(%struct.rtx_def* %46, %struct.rtx_def* %47)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.33
  call void @finish_deps_global()
  br label %return

return:                                           ; preds = %if.end.39, %if.then
  ret void
}

declare void @reposition_prologue_and_epilogue_notes(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_insns() #1

declare void @rm_redundant_line_notes() #1

declare void @scope_to_insns_finalize() #1

declare void @sched_finish() #1

; Function Attrs: nounwind uwtable
define internal void @init_ready_list(%struct.ready_list* %ready) #0 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %prev_head = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
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
  store i32 0, i32* @sched_n_insns, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp = icmp ne %struct.rtx_def* %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 2
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %next, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %14 = load i32, i32* %rtint, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx12 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %15, i64 %idxprom11
  %dep_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx12, i32 0, i32 4
  %16 = load i32, i32* %dep_count, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load15 = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load15, 28
  %bf.clear16 = and i32 %bf.lshr, 1
  %cmp17 = icmp eq i32 %bf.clear16, 0
  br i1 %cmp17, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %idxprom21 = sext i32 %bf.clear20 to i64
  %arrayidx22 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom21
  %21 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp eq i32 %conv23, 105
  br i1 %cmp24, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %22 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @ready_add(%struct.ready_list* %22, %struct.rtx_def* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %lor.lhs.false, %if.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load28 = load i32, i32* %25, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 28
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool = icmp ne i32 %bf.clear30, 0
  br i1 %tobool, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.27
  %26 = load i32, i32* @target_n_insns, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @target_n_insns, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 2
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @can_schedule_ready_p(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* @sched_n_insns, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @sched_n_insns, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @schedule_more_p() #0 {
entry:
  %0 = load i32, i32* @sched_n_insns, align 4
  %1 = load i32, i32* @target_n_insns, align 4
  %cmp = icmp slt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @new_ready(%struct.rtx_def* %next) #0 {
entry:
  %next.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @rank(%struct.rtx_def* %insn1, %struct.rtx_def* %insn2) #0 {
entry:
  %insn1.addr = alloca %struct.rtx_def*, align 8
  %insn2.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn1, %struct.rtx_def** %insn1.addr, align 8
  store %struct.rtx_def* %insn2, %struct.rtx_def** %insn2.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i8* @print_insn(%struct.rtx_def* %insn, i32 %aligned) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %aligned.addr = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %aligned, i32* %aligned.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_insn.tmp, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %1) #5
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_insn.tmp, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal i32 @contributes_to_priority(%struct.rtx_def* %next, %struct.rtx_def* %insn) #0 {
entry:
  %next.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %next, %struct.rtx_def** %next.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @compute_jump_reg_dependencies(%struct.rtx_def* %insn, %struct.bitmap_head_def* %set) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.bitmap_head_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.bitmap_head_def* %set, %struct.bitmap_head_def** %set.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
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
  store %struct.basic_block_def* %3, %struct.basic_block_def** %b, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 6
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 8
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %call = call i32 @bitmap_operation(%struct.bitmap_head_def* %9, %struct.bitmap_head_def* %10, %struct.bitmap_head_def* %13, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 1
  %15 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @ready_add(%struct.ready_list*, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare i32 @no_real_insns_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @init_deps_global() #1

declare void @init_deps(%struct.deps*) #1

declare void @sched_analyze(%struct.deps*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @free_deps(%struct.deps*) #1

declare void @compute_forward_dependences(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @set_priorities(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @save_line_notes(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @rm_line_notes(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @rm_other_notes(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @schedule_block(i32, i32) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare void @restore_line_notes(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @finish_deps_global() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
