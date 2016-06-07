; ModuleID = 'jump.c'
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
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@cfun = external global %struct.function*, align 8
@rtx_class = external constant [153 x i8], align 16
@mode_class = external constant [59 x i32], align 16
@flag_unsafe_math_optimizations = external global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"jump.c\00", align 1
@__FUNCTION__.reverse_condition = private unnamed_addr constant [18 x i8] c"reverse_condition\00", align 1
@__FUNCTION__.reverse_condition_maybe_unordered = private unnamed_addr constant [34 x i8] c"reverse_condition_maybe_unordered\00", align 1
@__FUNCTION__.swap_condition = private unnamed_addr constant [15 x i8] c"swap_condition\00", align 1
@__FUNCTION__.unsigned_condition = private unnamed_addr constant [19 x i8] c"unsigned_condition\00", align 1
@__FUNCTION__.signed_condition = private unnamed_addr constant [17 x i8] c"signed_condition\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@reload_completed = external global i32, align 4
@flag_test_coverage = external global i32, align 4
@__FUNCTION__.mark_jump_label = private unnamed_addr constant [16 x i8] c"mark_jump_label\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.delete_barrier = private unnamed_addr constant [15 x i8] c"delete_barrier\00", align 1
@warn_notreached = external global i32, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"will never be executed\00", align 1
@__FUNCTION__.invert_jump = private unnamed_addr constant [12 x i8] c"invert_jump\00", align 1
@reg_renumber = external global i16*, align 8
@__FUNCTION__.rtx_renumbered_equal_p = private unnamed_addr constant [23 x i8] c"rtx_renumbered_equal_p\00", align 1
@optimize = external global i32, align 4
@reg_n_info = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.duplicate_loop_exit_test = private unnamed_addr constant [25 x i8] c"duplicate_loop_exit_test\00", align 1
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@__FUNCTION__.invert_exp_1 = private unnamed_addr constant [13 x i8] c"invert_exp_1\00", align 1

; Function Attrs: nounwind uwtable
define void @rebuild_jump_labels(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %max_uid = alloca i32, align 4
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 0, i32* %max_uid, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  %call = call i32 @init_label_info(%struct.rtx_def* %0)
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %max_uid, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @mark_all_labels(%struct.rtx_def* %1)
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 2
  %3 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_forced_labels = getelementptr inbounds %struct.expr_status, %struct.expr_status* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %11 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @init_label_info(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %largest_uid = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 0, i32* %largest_uid, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load1, 28
  %bf.clear2 = and i32 %bf.lshr, 1
  %cmp3 = icmp ne i32 %bf.clear2, 0
  %conv = zext i1 %cmp3 to i32
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %conv, i32* %rtint, align 4
  br label %if.end.45

if.else:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 33
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  br label %if.end.44

if.else.11:                                       ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load12 = load i32, i32* %11, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 32
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.11
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 34
  br i1 %cmp18, label %if.then.20, label %if.end.43

if.then.20:                                       ; preds = %lor.lhs.false, %if.else.11
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 6
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %note, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.20
  %16 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool25 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %17 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %next, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load30 = load i32, i32* %20, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 13
  br i1 %cmp33, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %22, %struct.rtx_def* %24)
  %tobool41 = icmp ne i32 %call, 0
  br i1 %tobool41, label %if.end, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %25, %struct.rtx_def* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.42, %land.lhs.true, %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %note, align 8
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %lor.lhs.false
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtint48 = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %29 = load i32, i32* %rtint48, align 4
  %30 = load i32, i32* %largest_uid, align 4
  %cmp49 = icmp sgt i32 %29, %30
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.45
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %32 = load i32, i32* %rtint54, align 4
  store i32 %32, i32* %largest_uid, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.45
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 2
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %35 = load i32, i32* %largest_uid, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal void @mark_all_labels(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %label_ref = alloca %struct.rtx_def*, align 8
  %label_note = alloca %struct.rtx_def*, align 8
  %label_ref75 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.95

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 141
  br i1 %cmp9, label %if.then.11, label %if.end.53

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  call void @mark_all_labels(%struct.rtx_def* %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  call void @mark_all_labels(%struct.rtx_def* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 2
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  call void @mark_all_labels(%struct.rtx_def* %18)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %tobool36 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool36, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %if.then.11
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %24)
  store %struct.rtx_def* %call, %struct.rtx_def** %label_ref, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %label_ref, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_jump_label(%struct.rtx_def* %25, %struct.rtx_def* %26, i32 0)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %label_ref, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  store %struct.rtx_def* %28, %struct.rtx_def** %rtx52, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.37, %if.then.11
  br label %for.inc

if.end.53:                                        ; preds = %land.lhs.true, %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 3
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_jump_label(%struct.rtx_def* %32, %struct.rtx_def* %33, i32 0)
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load57 = load i32, i32* %35, align 8
  %bf.lshr = lshr i32 %bf.load57, 27
  %bf.clear58 = and i32 %bf.lshr, 1
  %tobool59 = icmp ne i32 %bf.clear58, 0
  br i1 %tobool59, label %if.end.94, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %if.end.53
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load61 = load i32, i32* %37, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 33
  br i1 %cmp63, label %if.then.65, label %if.end.94

if.then.65:                                       ; preds = %land.lhs.true.60
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 7
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %cmp69 = icmp eq %struct.rtx_def* %39, null
  br i1 %cmp69, label %if.then.71, label %if.end.93

if.then.71:                                       ; preds = %if.then.65
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call72 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %40, i32 13, %struct.rtx_def* null)
  store %struct.rtx_def* %call72, %struct.rtx_def** %label_note, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %label_note, align 8
  %tobool73 = icmp ne %struct.rtx_def* %41, null
  br i1 %tobool73, label %if.then.74, label %if.end.92

if.then.74:                                       ; preds = %if.then.71
  %42 = load %struct.rtx_def*, %struct.rtx_def** %label_note, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %call79 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %43)
  store %struct.rtx_def* %call79, %struct.rtx_def** %label_ref75, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %label_ref75, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_jump_label(%struct.rtx_def* %44, %struct.rtx_def* %45, i32 0)
  %46 = load %struct.rtx_def*, %struct.rtx_def** %label_ref75, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %label_note, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  store %struct.rtx_def* %47, %struct.rtx_def** %rtx85, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %label_note, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 7
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  store %struct.rtx_def* %50, %struct.rtx_def** %rtx91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.74, %if.then.71
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.65
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.60, %if.end.53
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 2
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @cleanup_barriers() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 35
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call1 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %5)
  store %struct.rtx_def* %call1, %struct.rtx_def** %prev, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 35
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @delete_barrier(%struct.rtx_def* %8)
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %cmp9 = icmp ne %struct.rtx_def* %9, %11
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  call void @reorder_insns(%struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @delete_barrier(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1531, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.delete_barrier, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %2)
  ret void
}

declare void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @copy_loop_headers(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %temp1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %next, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  %cmp3 = icmp eq i32 %7, -96
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.21

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %8)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp1, align 8
  %cmp5 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.21

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %call7 = call i32 @any_uncondjump_p(%struct.rtx_def* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.21

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %call10 = call i32 @onlyjump_p(%struct.rtx_def* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true.9
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %temp, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call15 = call i32 @duplicate_loop_exit_test(%struct.rtx_def* %13)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 2
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %16 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @any_uncondjump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @pc_set(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 67
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @onlyjump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 105
  br i1 %cmp3, label %cond.true, label %cond.false.17

cond.true:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load6 = load i32, i32* %7, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 47
  br i1 %cmp8, label %cond.true.10, label %cond.false

cond.true.10:                                     ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %10, %struct.rtx_def* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.10
  %cond = phi %struct.rtx_def* [ %9, %cond.true.10 ], [ %call, %cond.false ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end
  %cond19 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.17 ]
  store %struct.rtx_def* %cond19, %struct.rtx_def** %set, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp20 = icmp eq %struct.rtx_def* %13, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end.18
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %cond.end.18
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load27 = load i32, i32* %16, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp ne i32 %bf.clear28, 59
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %call36 = call i32 @side_effects_p(%struct.rtx_def* %18)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.37, %if.then.31, %if.then.22, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @duplicate_loop_exit_test(%struct.rtx_def* %loop_start) #0 {
entry:
  %retval = alloca i32, align 4
  %loop_start.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %first_copy = alloca %struct.rtx_def*, align 8
  %num_insns = alloca i32, align 4
  %exitcode = alloca %struct.rtx_def*, align 8
  %lastexit = alloca %struct.rtx_def*, align 8
  %max_reg = alloca i32, align 4
  %reg_map = alloca %struct.rtx_def**, align 8
  %loop_pre_header_label = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %loop_start, %struct.rtx_def** %loop_start.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %first_copy, align 8
  store i32 0, i32* %num_insns, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %exitcode, align 8
  %call4 = call i32 @max_reg_num()
  store i32 %call4, i32* %max_reg, align 4
  store %struct.rtx_def** null, %struct.rtx_def*** %reg_map, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %exitcode, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %land.rhs, label %land.end.9

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.rhs.5, label %land.end

land.rhs.5:                                       ; preds = %land.rhs
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %8 = load i32, i32* %rtint, align 4
  %cmp8 = icmp eq i32 %8, -95
  br label %land.end

land.end:                                         ; preds = %land.rhs.5, %land.rhs
  %9 = phi i1 [ false, %land.rhs ], [ %cmp8, %land.rhs.5 ]
  %lnot = xor i1 %9, true
  br label %land.end.9

land.end.9:                                       ; preds = %land.end, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.9
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  switch i32 %bf.clear11, label %sw.default [
    i32 36, label %sw.bb
    i32 34, label %sw.bb
    i32 37, label %sw.bb.12
    i32 33, label %sw.bb.33
    i32 32, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  store i32 0, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %14 = load i32, i32* %rtint15, align 4
  %cmp16 = icmp eq i32 %14, -96
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.12
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 4
  %rtint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %16 = load i32, i32* %rtint19, align 4
  %cmp20 = icmp eq i32 %16, -94
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.12
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load i32, i32* @optimize, align 4
  %cmp21 = icmp slt i32 %17, 2
  br i1 %cmp21, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 4
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %19 = load i32, i32* %rtint24, align 4
  %cmp25 = icmp eq i32 %19, -98
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 4
  %rtint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %21 = load i32, i32* %rtint29, align 4
  %cmp30 = icmp eq i32 %21, -97
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.26, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.26, %if.end
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body, %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.33
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call34 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %22, i32 5, %struct.rtx_def* null)
  store %struct.rtx_def* %call34, %struct.rtx_def** %p, align 8
  %cmp35 = icmp ne %struct.rtx_def* %call34, null
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  call void @remove_note(%struct.rtx_def* %23, %struct.rtx_def* %24)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %num_insns, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %num_insns, align 4
  %cmp36 = icmp sgt i32 %inc, 20
  br i1 %cmp36, label %if.then.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %while.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call38 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %26, i32 6, %struct.rtx_def* null)
  %tobool39 = icmp ne %struct.rtx_def* %call38, null
  br i1 %tobool39, label %if.then.43, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call41 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 7, %struct.rtx_def* null)
  %tobool42 = icmp ne %struct.rtx_def* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.37, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.40
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.44, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 2
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.9
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp48 = icmp eq %struct.rtx_def* %30, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %for.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %lastexit, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %exitcode, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %insn, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.169, %if.end.50
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %lastexit, align 8
  %cmp52 = icmp ne %struct.rtx_def* %33, %34
  br i1 %cmp52, label %for.body.53, label %for.end.173

for.body.53:                                      ; preds = %for.cond.51
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load54 = load i32, i32* %36, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 32
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.168

land.lhs.true.57:                                 ; preds = %for.body.53
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load58 = load i32, i32* %38, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %idxprom = sext i32 %bf.clear59 to i64
  %arrayidx60 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx60, align 1
  %conv = sext i8 %39 to i32
  %cmp61 = icmp eq i32 %conv, 105
  br i1 %cmp61, label %cond.true, label %cond.false.78

cond.true:                                        ; preds = %land.lhs.true.57
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 3
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load66 = load i32, i32* %42, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 47
  br i1 %cmp68, label %cond.true.70, label %cond.false

cond.true.70:                                     ; preds = %cond.true
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 3
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %call77 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %45, %struct.rtx_def* %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.70
  %cond = phi %struct.rtx_def* [ %44, %cond.true.70 ], [ %call77, %cond.false ]
  br label %cond.end.79

cond.false.78:                                    ; preds = %land.lhs.true.57
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.end
  %cond80 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.78 ]
  store %struct.rtx_def* %cond80, %struct.rtx_def** %set, align 8
  %cmp81 = icmp ne %struct.rtx_def* %cond80, null
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.168

land.lhs.true.83:                                 ; preds = %cond.end.79
  %48 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %reg, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load87 = load i32, i32* %51, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 61
  br i1 %cmp89, label %land.lhs.true.104, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.83
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load92 = load i32, i32* %53, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 63
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.168

land.lhs.true.96:                                 ; preds = %lor.lhs.false.91
  %54 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %reg, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load100 = load i32, i32* %57, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 61
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.168

land.lhs.true.104:                                ; preds = %land.lhs.true.96, %land.lhs.true.83
  %58 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx106 to i32*
  %59 = load i32, i32* %rtuint, align 4
  %cmp107 = icmp uge i32 %59, 53
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.168

land.lhs.true.109:                                ; preds = %land.lhs.true.104
  %60 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtuint112 = bitcast %union.rtunion_def* %arrayidx111 to i32*
  %61 = load i32, i32* %rtuint112, align 4
  %idxprom113 = zext i32 %61 to i64
  %62 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %62, i32 0, i32 4
  %reg114 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx115 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg114, i32 0, i64 %idxprom113
  %63 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx115, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %63, i32 0, i32 0
  %64 = load i32, i32* %first_uid, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtint118 = bitcast %union.rtunion_def* %arrayidx117 to i32*
  %66 = load i32, i32* %rtint118, align 4
  %cmp119 = icmp eq i32 %64, %66
  br i1 %cmp119, label %if.then.121, label %if.end.168

if.then.121:                                      ; preds = %land.lhs.true.109
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 2
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %p, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.143, %if.then.121
  %69 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %lastexit, align 8
  %cmp126 = icmp ne %struct.rtx_def* %69, %70
  br i1 %cmp126, label %for.body.128, label %for.end.147

for.body.128:                                     ; preds = %for.cond.125
  %71 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtuint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %72 = load i32, i32* %rtuint131, align 4
  %idxprom132 = zext i32 %72 to i64
  %73 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data133 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %73, i32 0, i32 4
  %reg134 = bitcast %union.varray_data_tag* %data133 to [1 x %struct.reg_info_def*]*
  %arrayidx135 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg134, i32 0, i64 %idxprom132
  %74 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx135, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %74, i32 0, i32 1
  %75 = load i32, i32* %last_uid, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  %77 = load i32, i32* %rtint138, align 4
  %cmp139 = icmp eq i32 %75, %77
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.body.128
  br label %for.end.147

if.end.142:                                       ; preds = %for.body.128
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %78 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 2
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %p, align 8
  br label %for.cond.125

for.end.147:                                      ; preds = %if.then.141, %for.cond.125
  %80 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %lastexit, align 8
  %cmp148 = icmp ne %struct.rtx_def* %80, %81
  br i1 %cmp148, label %if.then.150, label %if.end.167

if.then.150:                                      ; preds = %for.end.147
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %cmp151 = icmp eq %struct.rtx_def** %82, null
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.then.150
  %83 = load i32, i32* %max_reg, align 4
  %conv154 = sext i32 %83 to i64
  %call155 = call noalias i8* @xcalloc(i64 %conv154, i64 8)
  %84 = bitcast i8* %call155 to %struct.rtx_def**
  store %struct.rtx_def** %84, %struct.rtx_def*** %reg_map, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.then.150
  %85 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load157 = load i32, i32* %86, align 8
  %bf.clear158 = and i32 %bf.load157, -268435457
  %bf.set = or i32 %bf.clear158, 268435456
  store i32 %bf.set, i32* %86, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load159 = load i32, i32* %88, align 8
  %bf.lshr = lshr i32 %bf.load159, 16
  %bf.clear160 = and i32 %bf.lshr, 255
  %call161 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear160)
  %89 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtuint164 = bitcast %union.rtunion_def* %arrayidx163 to i32*
  %90 = load i32, i32* %rtuint164, align 4
  %idxprom165 = zext i32 %90 to i64
  %91 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx166 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %91, i64 %idxprom165
  store %struct.rtx_def* %call161, %struct.rtx_def** %arrayidx166, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.156, %for.end.147
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.109, %land.lhs.true.104, %land.lhs.true.96, %lor.lhs.false.91, %cond.end.79, %for.body.53
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 2
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %insn, align 8
  br label %for.cond.51

for.end.173:                                      ; preds = %for.cond.51
  %call174 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call174, %struct.rtx_def** %loop_pre_header_label, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %exitcode, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %insn, align 8
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.343, %for.end.173
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %lastexit, align 8
  %cmp176 = icmp ne %struct.rtx_def* %95, %96
  br i1 %cmp176, label %for.body.178, label %for.end.347

for.body.178:                                     ; preds = %for.cond.175
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load179 = load i32, i32* %98, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  switch i32 %bf.clear180, label %sw.default.338 [
    i32 35, label %sw.bb.181
    i32 37, label %sw.bb.183
    i32 32, label %sw.bb.200
    i32 33, label %sw.bb.280
  ]

sw.bb.181:                                        ; preds = %for.body.178
  %99 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call182 = call %struct.rtx_def* @emit_barrier_before(%struct.rtx_def* %99)
  store %struct.rtx_def* %call182, %struct.rtx_def** %copy, align 8
  br label %sw.epilog.339

sw.bb.183:                                        ; preds = %for.body.178
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 4
  %rtint186 = bitcast %union.rtunion_def* %arrayidx185 to i32*
  %101 = load i32, i32* %rtint186, align 4
  %cmp187 = icmp sge i32 %101, 0
  br i1 %cmp187, label %if.then.189, label %if.end.199

if.then.189:                                      ; preds = %sw.bb.183
  %102 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 4
  %rtint192 = bitcast %union.rtunion_def* %arrayidx191 to i32*
  %103 = load i32, i32* %rtint192, align 4
  %104 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call193 = call %struct.rtx_def* @emit_note_before(i32 %103, %struct.rtx_def* %104)
  store %struct.rtx_def* %call193, %struct.rtx_def** %copy, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx195 to i8**
  %106 = load i8*, i8** %rtstr, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 3
  %rtstr198 = bitcast %union.rtunion_def* %arrayidx197 to i8**
  store i8* %106, i8** %rtstr198, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.189, %sw.bb.183
  br label %sw.epilog.339

sw.bb.200:                                        ; preds = %for.body.178
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 3
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx203, align 8
  %call204 = call %struct.rtx_def* @copy_insn(%struct.rtx_def* %109)
  %110 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call205 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call204, %struct.rtx_def* %110)
  store %struct.rtx_def* %call205, %struct.rtx_def** %copy, align 8
  %111 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %tobool206 = icmp ne %struct.rtx_def** %111, null
  br i1 %tobool206, label %if.then.207, label %if.end.212

if.then.207:                                      ; preds = %sw.bb.200
  %112 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 3
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %115 = load i32, i32* %max_reg, align 4
  %call211 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %113, %struct.rtx_def** %114, i32 %115, i32 1)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.207, %sw.bb.200
  %116 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 3
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @mark_jump_label(%struct.rtx_def* %117, %struct.rtx_def* %118, i32 0)
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 6
  %rtx218 = bitcast %union.rtunion_def* %arrayidx217 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx218, align 8
  store %struct.rtx_def* %120, %struct.rtx_def** %link, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.263, %if.end.212
  %121 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool220 = icmp ne %struct.rtx_def* %121, null
  br i1 %tobool220, label %for.body.221, label %for.end.267

for.body.221:                                     ; preds = %for.cond.219
  %122 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load222 = load i32, i32* %123, align 8
  %bf.lshr223 = lshr i32 %bf.load222, 16
  %bf.clear224 = and i32 %bf.lshr223, 255
  %cmp225 = icmp ne i32 %bf.clear224, 13
  br i1 %cmp225, label %if.then.227, label %if.end.262

if.then.227:                                      ; preds = %for.body.221
  %124 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load228 = load i32, i32* %125, align 8
  %bf.clear229 = and i32 %bf.load228, 65535
  %cmp230 = icmp eq i32 %bf.clear229, 3
  br i1 %cmp230, label %if.then.232, label %if.else

if.then.232:                                      ; preds = %if.then.227
  %126 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load233 = load i32, i32* %127, align 8
  %bf.lshr234 = lshr i32 %bf.load233, 16
  %bf.clear235 = and i32 %bf.lshr234, 255
  %128 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtx238 = bitcast %union.rtunion_def* %arrayidx237 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx238, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 6
  %rtx241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx241, align 8
  %call242 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %bf.clear235, %struct.rtx_def* %129, %struct.rtx_def* %131)
  %call243 = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %call242)
  %132 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 6
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  store %struct.rtx_def* %call243, %struct.rtx_def** %rtx246, align 8
  br label %if.end.261

if.else:                                          ; preds = %if.then.227
  %133 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load247 = load i32, i32* %134, align 8
  %bf.lshr248 = lshr i32 %bf.load247, 16
  %bf.clear249 = and i32 %bf.lshr248, 255
  %135 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 0
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 6
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  %call256 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 %bf.clear249, %struct.rtx_def* %136, %struct.rtx_def* %138)
  %call257 = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %call256)
  %139 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 6
  %rtx260 = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  store %struct.rtx_def* %call257, %struct.rtx_def** %rtx260, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.else, %if.then.232
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %for.body.221
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %140 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 1
  %rtx266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx266, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %link, align 8
  br label %for.cond.219

for.end.267:                                      ; preds = %for.cond.219
  %142 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %tobool268 = icmp ne %struct.rtx_def** %142, null
  br i1 %tobool268, label %land.lhs.true.269, label %if.end.279

land.lhs.true.269:                                ; preds = %for.end.267
  %143 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld270, i32 0, i64 6
  %rtx272 = bitcast %union.rtunion_def* %arrayidx271 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx272, align 8
  %tobool273 = icmp ne %struct.rtx_def* %144, null
  br i1 %tobool273, label %if.then.274, label %if.end.279

if.then.274:                                      ; preds = %land.lhs.true.269
  %145 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 6
  %rtx277 = bitcast %union.rtunion_def* %arrayidx276 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx277, align 8
  %147 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %148 = load i32, i32* %max_reg, align 4
  %call278 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %146, %struct.rtx_def** %147, i32 %148, i32 1)
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.274, %land.lhs.true.269, %for.end.267
  br label %sw.epilog.339

sw.bb.280:                                        ; preds = %for.body.178
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 3
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  %call284 = call %struct.rtx_def* @copy_insn(%struct.rtx_def* %150)
  %151 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call285 = call %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def* %call284, %struct.rtx_def* %151)
  store %struct.rtx_def* %call285, %struct.rtx_def** %copy, align 8
  %152 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %tobool286 = icmp ne %struct.rtx_def** %152, null
  br i1 %tobool286, label %if.then.287, label %if.end.292

if.then.287:                                      ; preds = %sw.bb.280
  %153 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld288, i32 0, i64 3
  %rtx290 = bitcast %union.rtunion_def* %arrayidx289 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %rtx290, align 8
  %155 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %156 = load i32, i32* %max_reg, align 4
  %call291 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %154, %struct.rtx_def** %155, i32 %156, i32 1)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.287, %sw.bb.280
  %157 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 3
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @mark_jump_label(%struct.rtx_def* %158, %struct.rtx_def* %159, i32 0)
  %160 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 6
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %161 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  %tobool299 = icmp ne %struct.rtx_def* %161, null
  br i1 %tobool299, label %if.then.300, label %if.end.315

if.then.300:                                      ; preds = %if.end.292
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 6
  %rtx303 = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx303, align 8
  %call304 = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %163)
  %164 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld305, i32 0, i64 6
  %rtx307 = bitcast %union.rtunion_def* %arrayidx306 to %struct.rtx_def**
  store %struct.rtx_def* %call304, %struct.rtx_def** %rtx307, align 8
  %165 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %tobool308 = icmp ne %struct.rtx_def** %165, null
  br i1 %tobool308, label %if.then.309, label %if.end.314

if.then.309:                                      ; preds = %if.then.300
  %166 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 6
  %rtx312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**
  %167 = load %struct.rtx_def*, %struct.rtx_def** %rtx312, align 8
  %168 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %169 = load i32, i32* %max_reg, align 4
  %call313 = call %struct.rtx_def* @replace_regs(%struct.rtx_def* %167, %struct.rtx_def** %168, i32 %169, i32 1)
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.309, %if.then.300
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.292
  %170 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call316 = call i32 @any_condjump_p(%struct.rtx_def* %170)
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.then.318, label %if.end.337

if.then.318:                                      ; preds = %if.end.315
  %171 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld319 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld319, i32 0, i64 7
  %rtx321 = bitcast %union.rtunion_def* %arrayidx320 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx321, align 8
  store %struct.rtx_def* %172, %struct.rtx_def** %label, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool322 = icmp ne %struct.rtx_def* %173, null
  br i1 %tobool322, label %if.then.323, label %if.end.336

if.then.323:                                      ; preds = %if.then.318
  %174 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call324 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %174)
  %tobool325 = icmp ne %struct.rtx_def* %call324, null
  br i1 %tobool325, label %land.lhs.true.326, label %if.else.334

land.lhs.true.326:                                ; preds = %if.then.323
  %175 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call327 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %175)
  %call328 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %call327)
  %176 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call329 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %176)
  %cmp330 = icmp eq %struct.rtx_def* %call328, %call329
  br i1 %cmp330, label %if.then.332, label %if.else.334

if.then.332:                                      ; preds = %land.lhs.true.326
  %177 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @predict_insn_def(%struct.rtx_def* %177, i32 12, i32 1)
  %178 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %loop_pre_header_label, align 8
  %call333 = call i32 @redirect_jump(%struct.rtx_def* %178, %struct.rtx_def* %179, i32 0)
  br label %if.end.335

if.else.334:                                      ; preds = %land.lhs.true.326, %if.then.323
  %180 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @predict_insn_def(%struct.rtx_def* %180, i32 12, i32 0)
  br label %if.end.335

if.end.335:                                       ; preds = %if.else.334, %if.then.332
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.then.318
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.end.315
  br label %sw.epilog.339

sw.default.338:                                   ; preds = %for.body.178
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 487, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.duplicate_loop_exit_test, i32 0, i32 0)) #5
  unreachable

sw.epilog.339:                                    ; preds = %if.end.337, %if.end.279, %if.end.199, %sw.bb.181
  %181 = load %struct.rtx_def*, %struct.rtx_def** %first_copy, align 8
  %tobool340 = icmp ne %struct.rtx_def* %181, null
  br i1 %tobool340, label %if.end.342, label %if.then.341

if.then.341:                                      ; preds = %sw.epilog.339
  %182 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %182, %struct.rtx_def** %first_copy, align 8
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.341, %sw.epilog.339
  br label %for.inc.343

for.inc.343:                                      ; preds = %if.end.342
  %183 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 2
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %184 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  store %struct.rtx_def* %184, %struct.rtx_def** %insn, align 8
  br label %for.cond.175

for.end.347:                                      ; preds = %for.cond.175
  %185 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %tobool348 = icmp ne %struct.rtx_def* %185, null
  br i1 %tobool348, label %lor.lhs.false.349, label %if.then.354

lor.lhs.false.349:                                ; preds = %for.end.347
  %186 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load350 = load i32, i32* %187, align 8
  %bf.clear351 = and i32 %bf.load350, 65535
  %cmp352 = icmp ne i32 %bf.clear351, 35
  br i1 %cmp352, label %if.then.354, label %if.end.365

if.then.354:                                      ; preds = %lor.lhs.false.349, %for.end.347
  %188 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call355 = call %struct.rtx_def* @get_label_after(%struct.rtx_def* %188)
  %call356 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %call355)
  %189 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call357 = call %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def* %call356, %struct.rtx_def* %189)
  store %struct.rtx_def* %call357, %struct.rtx_def** %copy, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %first_copy, align 8
  %tobool358 = icmp ne %struct.rtx_def* %190, null
  br i1 %tobool358, label %if.end.360, label %if.then.359

if.then.359:                                      ; preds = %if.then.354
  %191 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %191, %struct.rtx_def** %first_copy, align 8
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %if.then.354
  %192 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld361 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld361, i32 0, i64 3
  %rtx363 = bitcast %union.rtunion_def* %arrayidx362 to %struct.rtx_def**
  %193 = load %struct.rtx_def*, %struct.rtx_def** %rtx363, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @mark_jump_label(%struct.rtx_def* %193, %struct.rtx_def* %194, i32 0)
  %195 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call364 = call %struct.rtx_def* @emit_barrier_before(%struct.rtx_def* %195)
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.360, %lor.lhs.false.349
  %196 = load %struct.rtx_def*, %struct.rtx_def** %loop_pre_header_label, align 8
  %197 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call366 = call %struct.rtx_def* @emit_label_before(%struct.rtx_def* %196, %struct.rtx_def* %197)
  %198 = load %struct.rtx_def*, %struct.rtx_def** %first_copy, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %200 = load i32, i32* %max_reg, align 4
  call void @reg_scan_update(%struct.rtx_def* %198, %struct.rtx_def* %199, i32 %200)
  %201 = load %struct.rtx_def*, %struct.rtx_def** %exitcode, align 8
  %call367 = call %struct.rtx_def* @emit_note_before(i32 -93, %struct.rtx_def* %201)
  %202 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call368 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %202)
  %call369 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %call368)
  %203 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %tobool370 = icmp ne %struct.rtx_def** %203, null
  br i1 %tobool370, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.end.365
  %204 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %205 = bitcast %struct.rtx_def** %204 to i8*
  call void @free(i8* %205) #6
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.end.365
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.372, %if.then.49, %if.then.43, %if.then.31, %if.then, %sw.bb
  %206 = load i32, i32* %retval
  ret i32 %206
}

; Function Attrs: nounwind uwtable
define void @purge_line_number_notes(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %last_note = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last_note, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %cmp1 = icmp eq i32 %5, -87
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %last_note, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %7 = load i32, i32* %rtint5, align 4
  %cmp6 = icmp sge i32 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.24

if.then.7:                                        ; preds = %if.else
  %8 = load %struct.rtx_def*, %struct.rtx_def** %last_note, align 8
  %tobool8 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.7
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx10 to i8**
  %10 = load i8*, i8** %rtstr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %last_note, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtstr13 = bitcast %union.rtunion_def* %arrayidx12 to i8**
  %12 = load i8*, i8** %rtstr13, align 8
  %cmp14 = icmp eq i8* %10, %12
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 4
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %14 = load i32, i32* %rtint18, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %last_note, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 4
  %rtint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %16 = load i32, i32* %rtint21, align 4
  %cmp22 = icmp eq i32 %14, %16
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true.15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %17)
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true, %if.then.7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %last_note, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.2
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %was_code_label = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %lab_next = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %diff_vec_p = alloca i32, align 4
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %was_code_label, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %next, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load4, 27
  %bf.clear5 = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load10 = load i32, i32* %13, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 27
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp14 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load16 = load i32, i32* %18, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 35
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call21 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load23 = load i32, i32* %21, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 33
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.82

land.lhs.true.27:                                 ; preds = %if.end.22
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 7
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %tobool31 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool31, label %if.then.32, label %if.end.82

if.then.32:                                       ; preds = %land.lhs.true.27
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 7
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %lab, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %27 = load i32, i32* %rtint, align 4
  %cmp38 = icmp eq i32 %27, 0
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.32
  %28 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call41 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %28)
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.50, %if.then.40
  %29 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool43 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool43, label %land.rhs.44, label %land.end.49

land.rhs.44:                                      ; preds = %while.cond.42
  %30 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load45 = load i32, i32* %31, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 27
  %bf.clear47 = and i32 %bf.lshr46, 1
  %tobool48 = icmp ne i32 %bf.clear47, 0
  br label %land.end.49

land.end.49:                                      ; preds = %land.rhs.44, %while.cond.42
  %32 = phi i1 [ false, %while.cond.42 ], [ %tobool48, %land.rhs.44 ]
  br i1 %32, label %while.body.50, label %while.end.54

while.body.50:                                    ; preds = %land.end.49
  %33 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 2
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %next, align 8
  br label %while.cond.42

while.end.54:                                     ; preds = %land.end.49
  %35 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.then.32
  %36 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call55 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %36)
  store %struct.rtx_def* %call55, %struct.rtx_def** %lab_next, align 8
  %cmp56 = icmp ne %struct.rtx_def* %call55, null
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.80

land.lhs.true.58:                                 ; preds = %if.else
  %37 = load %struct.rtx_def*, %struct.rtx_def** %lab_next, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load59 = load i32, i32* %38, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 33
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.80

land.lhs.true.63:                                 ; preds = %land.lhs.true.58
  %39 = load %struct.rtx_def*, %struct.rtx_def** %lab_next, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 3
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load67 = load i32, i32* %41, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 44
  br i1 %cmp69, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.63
  %42 = load %struct.rtx_def*, %struct.rtx_def** %lab_next, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 3
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load74 = load i32, i32* %44, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 45
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %lor.lhs.false, %land.lhs.true.63
  %45 = load %struct.rtx_def*, %struct.rtx_def** %lab_next, align 8
  %call79 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %45)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %lor.lhs.false, %land.lhs.true.58, %if.else
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.27, %if.end.22
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load83 = load i32, i32* %47, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 33
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.155

land.lhs.true.87:                                 ; preds = %if.end.82
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 3
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load91 = load i32, i32* %50, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 44
  br i1 %cmp93, label %if.then.103, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %land.lhs.true.87
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load99 = load i32, i32* %53, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 45
  br i1 %cmp101, label %if.then.103, label %if.end.155

if.then.103:                                      ; preds = %lor.lhs.false.95, %land.lhs.true.87
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 3
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %pat, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load107 = load i32, i32* %57, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 45
  %conv110 = zext i1 %cmp109 to i32
  store i32 %conv110, i32* %diff_vec_p, align 4
  %58 = load i32, i32* %diff_vec_p, align 4
  %idxprom = sext i32 %58 to i64
  %59 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 %idxprom
  %rtvec = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtvec_def**
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %60, i32 0, i32 0
  %61 = load i32, i32* %num_elem, align 4
  store i32 %61, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.103
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %len, align 4
  %cmp113 = icmp slt i32 %62, %63
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %64 to i64
  %65 = load i32, i32* %diff_vec_p, align 4
  %idxprom116 = sext i32 %65 to i64
  %66 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 %idxprom116
  %rtvec119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtvec_def**
  %67 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec119, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %67, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom115
  %68 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx120, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 3
  %rtint126 = bitcast %union.rtunion_def* %arrayidx125 to i32*
  %70 = load i32, i32* %rtint126, align 4
  %cmp127 = icmp eq i32 %70, 0
  br i1 %cmp127, label %if.then.129, label %if.end.141

if.then.129:                                      ; preds = %for.body
  %71 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %71 to i64
  %72 = load i32, i32* %diff_vec_p, align 4
  %idxprom131 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 %idxprom131
  %rtvec134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec134, align 8
  %elem135 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem135, i32 0, i64 %idxprom130
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx136, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx139, align 8
  %call140 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %76)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.129, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.141
  %77 = load i32, i32* %i, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.142

while.cond.142:                                   ; preds = %while.body.150, %for.end
  %78 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool143 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool143, label %land.rhs.144, label %land.end.149

land.rhs.144:                                     ; preds = %while.cond.142
  %79 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load145 = load i32, i32* %80, align 8
  %bf.lshr146 = lshr i32 %bf.load145, 27
  %bf.clear147 = and i32 %bf.lshr146, 1
  %tobool148 = icmp ne i32 %bf.clear147, 0
  br label %land.end.149

land.end.149:                                     ; preds = %land.rhs.144, %while.cond.142
  %81 = phi i1 [ false, %while.cond.142 ], [ %tobool148, %land.rhs.144 ]
  br i1 %81, label %while.body.150, label %while.end.154

while.body.150:                                   ; preds = %land.end.149
  %82 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 2
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %next, align 8
  br label %while.cond.142

while.end.154:                                    ; preds = %land.end.149
  %84 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %retval
  br label %return

if.end.155:                                       ; preds = %lor.lhs.false.95, %if.end.82
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load156 = load i32, i32* %86, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 32
  br i1 %cmp158, label %if.then.165, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %if.end.155
  %87 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load161 = load i32, i32* %88, align 8
  %bf.clear162 = and i32 %bf.load161, 65535
  %cmp163 = icmp eq i32 %bf.clear162, 34
  br i1 %cmp163, label %if.then.165, label %if.end.206

if.then.165:                                      ; preds = %lor.lhs.false.160, %if.end.155
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 6
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %note, align 8
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.201, %if.then.165
  %91 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool170 = icmp ne %struct.rtx_def* %91, null
  br i1 %tobool170, label %for.body.171, label %for.end.205

for.body.171:                                     ; preds = %for.cond.169
  %92 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load172 = load i32, i32* %93, align 8
  %bf.lshr173 = lshr i32 %bf.load172, 16
  %bf.clear174 = and i32 %bf.lshr173, 255
  %cmp175 = icmp eq i32 %bf.clear174, 13
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.200

land.lhs.true.177:                                ; preds = %for.body.171
  %94 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load181 = load i32, i32* %96, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp eq i32 %bf.clear182, 36
  br i1 %cmp183, label %if.then.185, label %if.end.200

if.then.185:                                      ; preds = %land.lhs.true.177
  %97 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 3
  %rtint191 = bitcast %union.rtunion_def* %arrayidx190 to i32*
  %99 = load i32, i32* %rtint191, align 4
  %cmp192 = icmp eq i32 %99, 0
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %if.then.185
  %100 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 0
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %call198 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %101)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %if.then.185
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %land.lhs.true.177, %for.body.171
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %102 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 1
  %rtx204 = bitcast %union.rtunion_def* %arrayidx203 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx204, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %note, align 8
  br label %for.cond.169

for.end.205:                                      ; preds = %for.cond.169
  br label %if.end.206

if.end.206:                                       ; preds = %for.end.205, %lor.lhs.false.160
  br label %while.cond.207

while.cond.207:                                   ; preds = %while.body.219, %if.end.206
  %104 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool208 = icmp ne %struct.rtx_def* %104, null
  br i1 %tobool208, label %land.rhs.209, label %land.end.218

land.rhs.209:                                     ; preds = %while.cond.207
  %105 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load210 = load i32, i32* %106, align 8
  %bf.lshr211 = lshr i32 %bf.load210, 27
  %bf.clear212 = and i32 %bf.lshr211, 1
  %tobool213 = icmp ne i32 %bf.clear212, 0
  br i1 %tobool213, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.209
  %107 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load214 = load i32, i32* %108, align 8
  %bf.clear215 = and i32 %bf.load214, 65535
  %cmp216 = icmp eq i32 %bf.clear215, 37
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.209
  %109 = phi i1 [ true, %land.rhs.209 ], [ %cmp216, %lor.rhs ]
  br label %land.end.218

land.end.218:                                     ; preds = %lor.end, %while.cond.207
  %110 = phi i1 [ false, %while.cond.207 ], [ %109, %lor.end ]
  br i1 %110, label %while.body.219, label %while.end.223

while.body.219:                                   ; preds = %land.end.218
  %111 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 1
  %rtx222 = bitcast %union.rtunion_def* %arrayidx221 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx222, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %prev, align 8
  br label %while.cond.207

while.end.223:                                    ; preds = %land.end.218
  %113 = load i32, i32* %was_code_label, align 4
  %tobool224 = icmp ne i32 %113, 0
  br i1 %tobool224, label %land.lhs.true.225, label %if.end.266

land.lhs.true.225:                                ; preds = %while.end.223
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 2
  %rtx228 = bitcast %union.rtunion_def* %arrayidx227 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx228, align 8
  %cmp229 = icmp ne %struct.rtx_def* %115, null
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.266

land.lhs.true.231:                                ; preds = %land.lhs.true.225
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 2
  %rtx234 = bitcast %union.rtunion_def* %arrayidx233 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx234, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load235 = load i32, i32* %118, align 8
  %bf.clear236 = and i32 %bf.load235, 65535
  %cmp237 = icmp eq i32 %bf.clear236, 33
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.266

land.lhs.true.239:                                ; preds = %land.lhs.true.231
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld240, i32 0, i64 2
  %rtx242 = bitcast %union.rtunion_def* %arrayidx241 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx242, align 8
  %fld243 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx244 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld243, i32 0, i64 3
  %rtx245 = bitcast %union.rtunion_def* %arrayidx244 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx245, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load246 = load i32, i32* %122, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp eq i32 %bf.clear247, 44
  br i1 %cmp248, label %if.then.261, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %land.lhs.true.239
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 2
  %rtx253 = bitcast %union.rtunion_def* %arrayidx252 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx253, align 8
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 3
  %rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx256, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load257 = load i32, i32* %126, align 8
  %bf.clear258 = and i32 %bf.load257, 65535
  %cmp259 = icmp eq i32 %bf.clear258, 45
  br i1 %cmp259, label %if.then.261, label %if.end.266

if.then.261:                                      ; preds = %lor.lhs.false.250, %land.lhs.true.239
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 2
  %rtx264 = bitcast %union.rtunion_def* %arrayidx263 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx264, align 8
  %call265 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %128)
  store %struct.rtx_def* %call265, %struct.rtx_def** %next, align 8
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.261, %lor.lhs.false.250, %land.lhs.true.231, %land.lhs.true.225, %while.end.223
  %129 = load i32, i32* %was_code_label, align 4
  %tobool267 = icmp ne i32 %129, 0
  br i1 %tobool267, label %land.lhs.true.268, label %if.end.334

land.lhs.true.268:                                ; preds = %if.end.266
  %130 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool269 = icmp ne %struct.rtx_def* %130, null
  br i1 %tobool269, label %land.lhs.true.270, label %if.end.334

land.lhs.true.270:                                ; preds = %land.lhs.true.268
  %131 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load271 = load i32, i32* %132, align 8
  %bf.clear272 = and i32 %bf.load271, 65535
  %cmp273 = icmp eq i32 %bf.clear272, 35
  br i1 %cmp273, label %if.then.275, label %if.end.334

if.then.275:                                      ; preds = %land.lhs.true.270
  br label %while.cond.276

while.cond.276:                                   ; preds = %if.end.332, %if.then.275
  %133 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp277 = icmp ne %struct.rtx_def* %133, null
  br i1 %cmp277, label %land.rhs.279, label %land.end.303

land.rhs.279:                                     ; preds = %while.cond.276
  %134 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load280 = load i32, i32* %135, align 8
  %bf.clear281 = and i32 %bf.load280, 65535
  store i32 %bf.clear281, i32* %code, align 4
  %idxprom282 = sext i32 %bf.clear281 to i64
  %arrayidx283 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom282
  %136 = load i8, i8* %arrayidx283, align 1
  %conv284 = sext i8 %136 to i32
  %cmp285 = icmp eq i32 %conv284, 105
  br i1 %cmp285, label %lor.end.302, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %land.rhs.279
  %137 = load i32, i32* %code, align 4
  %cmp288 = icmp eq i32 %137, 37
  br i1 %cmp288, label %lor.end.302, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.287
  %138 = load i32, i32* %code, align 4
  %cmp291 = icmp eq i32 %138, 35
  br i1 %cmp291, label %lor.end.302, label %lor.rhs.293

lor.rhs.293:                                      ; preds = %lor.lhs.false.290
  %139 = load i32, i32* %code, align 4
  %cmp294 = icmp eq i32 %139, 36
  br i1 %cmp294, label %land.rhs.296, label %land.end.301

land.rhs.296:                                     ; preds = %lor.rhs.293
  %140 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load297 = load i32, i32* %141, align 8
  %bf.lshr298 = lshr i32 %bf.load297, 27
  %bf.clear299 = and i32 %bf.lshr298, 1
  %tobool300 = icmp ne i32 %bf.clear299, 0
  br label %land.end.301

land.end.301:                                     ; preds = %land.rhs.296, %lor.rhs.293
  %142 = phi i1 [ false, %lor.rhs.293 ], [ %tobool300, %land.rhs.296 ]
  br label %lor.end.302

lor.end.302:                                      ; preds = %land.end.301, %lor.lhs.false.290, %lor.lhs.false.287, %land.rhs.279
  %143 = phi i1 [ true, %lor.lhs.false.290 ], [ true, %lor.lhs.false.287 ], [ true, %land.rhs.279 ], [ %142, %land.end.301 ]
  br label %land.end.303

land.end.303:                                     ; preds = %lor.end.302, %while.cond.276
  %144 = phi i1 [ false, %while.cond.276 ], [ %143, %lor.end.302 ]
  br i1 %144, label %while.body.304, label %while.end.333

while.body.304:                                   ; preds = %land.end.303
  %145 = load i32, i32* %code, align 4
  %cmp305 = icmp eq i32 %145, 37
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.317

land.lhs.true.307:                                ; preds = %while.body.304
  %146 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 4
  %rtint310 = bitcast %union.rtunion_def* %arrayidx309 to i32*
  %147 = load i32, i32* %rtint310, align 4
  %cmp311 = icmp ne i32 %147, -91
  br i1 %cmp311, label %if.then.313, label %if.else.317

if.then.313:                                      ; preds = %land.lhs.true.307
  %148 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 2
  %rtx316 = bitcast %union.rtunion_def* %arrayidx315 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx316, align 8
  store %struct.rtx_def* %149, %struct.rtx_def** %next, align 8
  br label %if.end.332

if.else.317:                                      ; preds = %land.lhs.true.307, %while.body.304
  %150 = load i32, i32* %code, align 4
  %cmp318 = icmp eq i32 %150, 36
  br i1 %cmp318, label %land.lhs.true.320, label %if.else.329

land.lhs.true.320:                                ; preds = %if.else.317
  %151 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load321 = load i32, i32* %152, align 8
  %bf.lshr322 = lshr i32 %bf.load321, 27
  %bf.clear323 = and i32 %bf.lshr322, 1
  %tobool324 = icmp ne i32 %bf.clear323, 0
  br i1 %tobool324, label %if.then.325, label %if.else.329

if.then.325:                                      ; preds = %land.lhs.true.320
  %153 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 2
  %rtx328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %rtx328, align 8
  store %struct.rtx_def* %154, %struct.rtx_def** %next, align 8
  br label %if.end.331

if.else.329:                                      ; preds = %land.lhs.true.320, %if.else.317
  %155 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call330 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %155)
  store %struct.rtx_def* %call330, %struct.rtx_def** %next, align 8
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.329, %if.then.325
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.then.313
  br label %while.cond.276

while.end.333:                                    ; preds = %land.end.303
  br label %if.end.334

if.end.334:                                       ; preds = %while.end.333, %land.lhs.true.270, %land.lhs.true.268, %if.end.266
  %156 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %156, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.334, %while.end.154, %while.end.54, %if.then
  %157 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %157
}

; Function Attrs: nounwind uwtable
define zeroext i1 @squeeze_notes(%struct.rtx_def** %startp, %struct.rtx_def** %endp) #0 {
entry:
  %retval = alloca i1, align 1
  %startp.addr = alloca %struct.rtx_def**, align 8
  %endp.addr = alloca %struct.rtx_def**, align 8
  %start = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %past_end = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %startp, %struct.rtx_def*** %startp.addr, align 8
  store %struct.rtx_def** %endp, %struct.rtx_def*** %endp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %startp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %start, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %endp.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %past_end, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %past_end, align 8
  %cmp = icmp ne %struct.rtx_def* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %next, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 37
  br i1 %cmp4, label %land.lhs.true, label %if.else.64

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %14 = load i32, i32* %rtint, align 4
  %cmp7 = icmp eq i32 %14, -97
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 4
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %16 = load i32, i32* %rtint10, align 4
  %cmp11 = icmp eq i32 %16, -98
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %18 = load i32, i32* %rtint15, align 4
  %cmp16 = icmp eq i32 %18, -96
  br i1 %cmp16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.12
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 4
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %20 = load i32, i32* %rtint20, align 4
  %cmp21 = icmp eq i32 %20, -95
  br i1 %cmp21, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 4
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %22 = load i32, i32* %rtint25, align 4
  %cmp26 = icmp eq i32 %22, -94
  br i1 %cmp26, label %if.then, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.22
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 4
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %24 = load i32, i32* %rtint30, align 4
  %cmp31 = icmp eq i32 %24, -93
  br i1 %cmp31, label %if.then, label %if.else.64

if.then:                                          ; preds = %lor.lhs.false.27, %lor.lhs.false.22, %lor.lhs.false.17, %lor.lhs.false.12, %lor.lhs.false, %land.lhs.true
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %cmp32 = icmp eq %struct.rtx_def* %25, %26
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then
  %27 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %start, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %prev, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  store %struct.rtx_def* %31, %struct.rtx_def** %rtx42, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 2
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  store %struct.rtx_def* %33, %struct.rtx_def** %rtx45, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 1
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 2
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  store %struct.rtx_def* %35, %struct.rtx_def** %rtx51, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 2
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  store %struct.rtx_def* %38, %struct.rtx_def** %rtx57, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 2
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  store %struct.rtx_def* %41, %struct.rtx_def** %rtx60, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  store %struct.rtx_def* %43, %struct.rtx_def** %rtx63, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.33
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false.27, %for.body
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %last, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %46 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %past_end, align 8
  %cmp66 = icmp eq %struct.rtx_def* %47, %48
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end
  store i1 true, i1* %retval
  br label %return

if.end.68:                                        ; preds = %for.end
  %49 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %end, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %51 = load %struct.rtx_def**, %struct.rtx_def*** %startp.addr, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %51, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %53 = load %struct.rtx_def**, %struct.rtx_def*** %endp.addr, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %53, align 8
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.67
  %54 = load i1, i1* %retval
  ret i1 %54
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_label_before(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %label, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 36
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %prev, align 8
  %call2 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call2, %struct.rtx_def** %label, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %call3 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %6, %struct.rtx_def* %7)
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  store i32 0, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  ret %struct.rtx_def* %9
}

declare %struct.rtx_def* @gen_label_rtx() #1

declare %struct.rtx_def* @emit_label_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_label_after(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %label, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 36
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call2, %struct.rtx_def** %label, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call3 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 0, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define i32 @reversed_comparison_code_parts(i32 %code, %struct.rtx_def* %arg0, %struct.rtx_def* %arg1, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %arg0.addr = alloca %struct.rtx_def*, align 8
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %prev = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %comparison = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %arg0, %struct.rtx_def** %arg0.addr, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %4 = load i32, i32* %mode, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load5 = load i32, i32* %6, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  store i32 %bf.clear7, i32* %mode, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %7 = load i32, i32* %mode, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %8, 4
  br i1 %cmp11, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.8
  %9 = load i32, i32* %mode, align 4
  %cmp14 = icmp ne i32 %9, 57
  br i1 %cmp14, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.13
  %10 = load i32, i32* %mode, align 4
  %cmp16 = icmp ne i32 %10, 58
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %code.addr, align 4
  %call = call i32 @reverse_condition(i32 %11)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.13
  %12 = load i32, i32* %code.addr, align 4
  %call18 = call i32 @reverse_condition_maybe_unordered(i32 %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.8
  %13 = load i32, i32* %code.addr, align 4
  switch i32 %13, label %sw.default [
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 113, label %sw.bb.21
    i32 112, label %sw.bb.21
    i32 119, label %sw.bb.21
    i32 114, label %sw.bb.21
    i32 118, label %sw.bb.23
    i32 117, label %sw.bb.23
    i32 116, label %sw.bb.23
    i32 115, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %14 = load i32, i32* %code.addr, align 4
  %call20 = call i32 @reverse_condition(i32 %14)
  store i32 %call20, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  %15 = load i32, i32* %code.addr, align 4
  %call22 = call i32 @reverse_condition_maybe_unordered(i32 %15)
  store i32 %call22, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %16 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %sw.epilog
  %17 = load i32, i32* %code.addr, align 4
  %call25 = call i32 @reverse_condition(i32 %17)
  store i32 %call25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.epilog
  %18 = load i32, i32* %mode, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom27
  %19 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %19, 4
  br i1 %cmp29, label %if.then.31, label %if.end.90

if.then.31:                                       ; preds = %if.end.26
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool32 = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.31
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call35 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %21)
  store %struct.rtx_def* %call35, %struct.rtx_def** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %22 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %cmp36 = icmp ne %struct.rtx_def* %22, null
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load38 = load i32, i32* %24, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp ne i32 %bf.clear39, 36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %cmp40, %land.rhs ]
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %call42 = call %struct.rtx_def* @set_of(%struct.rtx_def* %26, %struct.rtx_def* %27)
  store %struct.rtx_def* %call42, %struct.rtx_def** %set, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool43 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.85

land.lhs.true.44:                                 ; preds = %for.body
  %29 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load45 = load i32, i32* %30, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 47
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.85

land.lhs.true.49:                                 ; preds = %land.lhs.true.44
  %31 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %call51 = call i32 @rtx_equal_p(%struct.rtx_def* %32, %struct.rtx_def* %33)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.85

if.then.53:                                       ; preds = %land.lhs.true.49
  %34 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %src, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load57 = load i32, i32* %37, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 74
  br i1 %cmp59, label %if.then.61, label %if.end.78

if.then.61:                                       ; preds = %if.then.53
  %38 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %comparison, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %arg0.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load65 = load i32, i32* %42, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 16
  %bf.clear67 = and i32 %bf.lshr66, 255
  store i32 %bf.clear67, i32* %mode, align 4
  %43 = load i32, i32* %mode, align 4
  %cmp68 = icmp eq i32 %43, 0
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %if.then.61
  %44 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load74 = load i32, i32* %46, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  store i32 %bf.clear76, i32* %mode, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.70, %if.then.61
  br label %for.end

if.end.78:                                        ; preds = %if.then.53
  %47 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load79 = load i32, i32* %48, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 61
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.78
  %49 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %arg0.addr, align 8
  br label %for.inc

if.end.84:                                        ; preds = %if.end.78
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %land.lhs.true.49, %land.lhs.true.44, %for.body
  %50 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool86 = icmp ne %struct.rtx_def* %50, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.88, %if.then.83
  %51 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %call89 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %51)
  store %struct.rtx_def* %call89, %struct.rtx_def** %prev, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.77, %land.end
  br label %if.end.90

if.end.90:                                        ; preds = %for.end, %if.end.26
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load91 = load i32, i32* %53, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 54
  br i1 %cmp93, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %54 = load %struct.rtx_def*, %struct.rtx_def** %arg0.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load95 = load i32, i32* %55, align 8
  %bf.lshr96 = lshr i32 %bf.load95, 16
  %bf.clear97 = and i32 %bf.lshr96, 255
  %cmp98 = icmp ne i32 %bf.clear97, 0
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.122

land.lhs.true.100:                                ; preds = %lor.lhs.false
  %56 = load i32, i32* %mode, align 4
  %idxprom101 = sext i32 %56 to i64
  %arrayidx102 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom101
  %57 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp ne i32 %57, 4
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.122

land.lhs.true.105:                                ; preds = %land.lhs.true.100
  %58 = load i32, i32* %mode, align 4
  %idxprom106 = sext i32 %58 to i64
  %arrayidx107 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom106
  %59 = load i32, i32* %arrayidx107, align 4
  %cmp108 = icmp eq i32 %59, 2
  br i1 %cmp108, label %if.end.122, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.105
  %60 = load i32, i32* %mode, align 4
  %idxprom111 = sext i32 %60 to i64
  %arrayidx112 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom111
  %61 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp eq i32 %61, 6
  br i1 %cmp113, label %if.end.122, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.110
  %62 = load i32, i32* %mode, align 4
  %idxprom116 = sext i32 %62 to i64
  %arrayidx117 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom116
  %63 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp eq i32 %63, 8
  br i1 %cmp118, label %if.end.122, label %if.then.120

if.then.120:                                      ; preds = %lor.lhs.false.115, %if.end.90
  %64 = load i32, i32* %code.addr, align 4
  %call121 = call i32 @reverse_condition(i32 %64)
  store i32 %call121, i32* %retval
  br label %return

if.end.122:                                       ; preds = %lor.lhs.false.115, %lor.lhs.false.110, %land.lhs.true.105, %land.lhs.true.100, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.then.120, %if.then.87, %if.then.33, %if.then.24, %sw.bb.23, %sw.bb.21, %sw.bb, %cond.end, %if.then
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define i32 @reverse_condition(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb.1
    i32 105, label %sw.bb.2
    i32 104, label %sw.bb.3
    i32 107, label %sw.bb.4
    i32 106, label %sw.bb.5
    i32 109, label %sw.bb.6
    i32 108, label %sw.bb.7
    i32 111, label %sw.bb.8
    i32 110, label %sw.bb.9
    i32 112, label %sw.bb.10
    i32 113, label %sw.bb.11
    i32 118, label %sw.bb.12
    i32 117, label %sw.bb.12
    i32 116, label %sw.bb.12
    i32 115, label %sw.bb.12
    i32 114, label %sw.bb.12
    i32 119, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  store i32 102, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 103, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 106, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 107, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 104, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 105, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 110, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 111, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 108, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 109, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 113, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 112, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 824, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.reverse_condition, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @reverse_condition_maybe_unordered(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb.1
    i32 105, label %sw.bb.2
    i32 104, label %sw.bb.3
    i32 107, label %sw.bb.4
    i32 106, label %sw.bb.5
    i32 119, label %sw.bb.6
    i32 112, label %sw.bb.7
    i32 113, label %sw.bb.8
    i32 118, label %sw.bb.9
    i32 117, label %sw.bb.10
    i32 116, label %sw.bb.11
    i32 115, label %sw.bb.12
    i32 114, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  store i32 102, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 103, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 117, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 118, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 115, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 116, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 114, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 113, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 112, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 104, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 105, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 106, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 107, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 119, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 872, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.reverse_condition_maybe_unordered, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare %struct.rtx_def* @set_of(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @reversed_comparison_code(%struct.rtx_def* %comparison, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %comparison.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %comparison, %struct.rtx_def** %comparison.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %comparison.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %comparison.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %5 = load %struct.rtx_def*, %struct.rtx_def** %comparison.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %comparison.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @reversed_comparison_code_parts(i32 %bf.clear3, %struct.rtx_def* %6, %struct.rtx_def* %8, %struct.rtx_def* %9)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @swap_condition(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 119, label %sw.bb
    i32 105, label %sw.bb.1
    i32 104, label %sw.bb.2
    i32 107, label %sw.bb.3
    i32 106, label %sw.bb.4
    i32 109, label %sw.bb.5
    i32 108, label %sw.bb.6
    i32 111, label %sw.bb.7
    i32 110, label %sw.bb.8
    i32 118, label %sw.bb.9
    i32 117, label %sw.bb.10
    i32 116, label %sw.bb.11
    i32 115, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %code.addr, align 4
  store i32 %1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 107, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 106, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 105, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 104, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 111, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 110, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 109, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 108, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 116, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 115, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 118, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 117, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 919, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.swap_condition, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @unsigned_condition(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb
    i32 109, label %sw.bb
    i32 108, label %sw.bb
    i32 111, label %sw.bb
    i32 110, label %sw.bb
    i32 105, label %sw.bb.1
    i32 104, label %sw.bb.2
    i32 107, label %sw.bb.3
    i32 106, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %code.addr, align 4
  store i32 %1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 109, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 108, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 111, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 110, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 951, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.unsigned_condition, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @signed_condition(i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb
    i32 105, label %sw.bb
    i32 104, label %sw.bb
    i32 107, label %sw.bb
    i32 106, label %sw.bb
    i32 109, label %sw.bb.1
    i32 108, label %sw.bb.2
    i32 111, label %sw.bb.3
    i32 110, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %code.addr, align 4
  store i32 %1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 105, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 104, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 107, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 106, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 981, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.signed_condition, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @comparison_dominates_p(i32 %code1, i32 %code2) #0 {
entry:
  %retval = alloca i32, align 4
  %code1.addr = alloca i32, align 4
  %code2.addr = alloca i32, align 4
  store i32 %code1, i32* %code1.addr, align 4
  store i32 %code2, i32* %code2.addr, align 4
  %0 = load i32, i32* %code1.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %code2.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %code1.addr, align 4
  %3 = load i32, i32* %code2.addr, align 4
  %cmp2 = icmp eq i32 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %code1.addr, align 4
  switch i32 %4, label %sw.default [
    i32 114, label %sw.bb
    i32 103, label %sw.bb.10
    i32 118, label %sw.bb.22
    i32 107, label %sw.bb.28
    i32 116, label %sw.bb.38
    i32 105, label %sw.bb.44
    i32 104, label %sw.bb.54
    i32 106, label %sw.bb.54
    i32 119, label %sw.bb.58
    i32 111, label %sw.bb.64
    i32 109, label %sw.bb.70
    i32 112, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.end.4
  %5 = load i32, i32* %code2.addr, align 4
  %cmp5 = icmp eq i32 %5, 117
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %sw.bb
  %6 = load i32, i32* %code2.addr, align 4
  %cmp7 = icmp eq i32 %6, 115
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.6
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.4
  %7 = load i32, i32* %code2.addr, align 4
  %cmp11 = icmp eq i32 %7, 106
  br i1 %cmp11, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %sw.bb.10
  %8 = load i32, i32* %code2.addr, align 4
  %cmp13 = icmp eq i32 %8, 110
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %9 = load i32, i32* %code2.addr, align 4
  %cmp15 = icmp eq i32 %9, 104
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.14
  %10 = load i32, i32* %code2.addr, align 4
  %cmp17 = icmp eq i32 %10, 108
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.16
  %11 = load i32, i32* %code2.addr, align 4
  %cmp19 = icmp eq i32 %11, 113
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.16, %lor.lhs.false.14, %lor.lhs.false.12, %sw.bb.10
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.18
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.4
  %12 = load i32, i32* %code2.addr, align 4
  %cmp23 = icmp eq i32 %12, 117
  br i1 %cmp23, label %if.then.26, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %sw.bb.22
  %13 = load i32, i32* %code2.addr, align 4
  %cmp25 = icmp eq i32 %13, 102
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.24, %sw.bb.22
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false.24
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.4
  %14 = load i32, i32* %code2.addr, align 4
  %cmp29 = icmp eq i32 %14, 106
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %sw.bb.28
  %15 = load i32, i32* %code2.addr, align 4
  %cmp31 = icmp eq i32 %15, 102
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %16 = load i32, i32* %code2.addr, align 4
  %cmp33 = icmp eq i32 %16, 113
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.32
  %17 = load i32, i32* %code2.addr, align 4
  %cmp35 = icmp eq i32 %17, 119
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.32, %lor.lhs.false.30, %sw.bb.28
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.34
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.4
  %18 = load i32, i32* %code2.addr, align 4
  %cmp39 = icmp eq i32 %18, 115
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %sw.bb.38
  %19 = load i32, i32* %code2.addr, align 4
  %cmp41 = icmp eq i32 %19, 102
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.40, %sw.bb.38
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.40
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.4
  %20 = load i32, i32* %code2.addr, align 4
  %cmp45 = icmp eq i32 %20, 104
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %sw.bb.44
  %21 = load i32, i32* %code2.addr, align 4
  %cmp47 = icmp eq i32 %21, 102
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %22 = load i32, i32* %code2.addr, align 4
  %cmp49 = icmp eq i32 %22, 113
  br i1 %cmp49, label %if.then.52, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.48
  %23 = load i32, i32* %code2.addr, align 4
  %cmp51 = icmp eq i32 %23, 119
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.48, %lor.lhs.false.46, %sw.bb.44
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.50
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.4, %if.end.4
  %24 = load i32, i32* %code2.addr, align 4
  %cmp55 = icmp eq i32 %24, 113
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.bb.54
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %sw.bb.54
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.4
  %25 = load i32, i32* %code2.addr, align 4
  %cmp59 = icmp eq i32 %25, 102
  br i1 %cmp59, label %if.then.62, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %sw.bb.58
  %26 = load i32, i32* %code2.addr, align 4
  %cmp61 = icmp eq i32 %26, 113
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.60, %sw.bb.58
  store i32 1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false.60
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.4
  %27 = load i32, i32* %code2.addr, align 4
  %cmp65 = icmp eq i32 %27, 110
  br i1 %cmp65, label %if.then.68, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %sw.bb.64
  %28 = load i32, i32* %code2.addr, align 4
  %cmp67 = icmp eq i32 %28, 102
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false.66, %sw.bb.64
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %lor.lhs.false.66
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.4
  %29 = load i32, i32* %code2.addr, align 4
  %cmp71 = icmp eq i32 %29, 108
  br i1 %cmp71, label %if.then.74, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %sw.bb.70
  %30 = load i32, i32* %code2.addr, align 4
  %cmp73 = icmp eq i32 %30, 102
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false.72, %sw.bb.70
  store i32 1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %lor.lhs.false.72
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.4
  %31 = load i32, i32* %code2.addr, align 4
  %cmp77 = icmp eq i32 %31, 102
  br i1 %cmp77, label %if.then.88, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %sw.bb.76
  %32 = load i32, i32* %code2.addr, align 4
  %cmp79 = icmp eq i32 %32, 114
  br i1 %cmp79, label %if.then.88, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.78
  %33 = load i32, i32* %code2.addr, align 4
  %cmp81 = icmp eq i32 %33, 117
  br i1 %cmp81, label %if.then.88, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.80
  %34 = load i32, i32* %code2.addr, align 4
  %cmp83 = icmp eq i32 %34, 118
  br i1 %cmp83, label %if.then.88, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.82
  %35 = load i32, i32* %code2.addr, align 4
  %cmp85 = icmp eq i32 %35, 115
  br i1 %cmp85, label %if.then.88, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.84
  %36 = load i32, i32* %code2.addr, align 4
  %cmp87 = icmp eq i32 %36, 116
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.86, %lor.lhs.false.84, %lor.lhs.false.82, %lor.lhs.false.80, %lor.lhs.false.78, %sw.bb.76
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.86
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.89, %if.end.75, %if.end.69, %if.end.63, %if.end.57, %if.end.53, %if.end.43, %if.end.37, %if.end.27, %if.end.21, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.88, %if.then.74, %if.then.68, %if.then.62, %if.then.56, %if.then.52, %if.then.42, %if.then.36, %if.then.26, %if.then.20, %if.then.8, %if.then.3, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @simplejump_p(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 47
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load11 = load i32, i32* %8, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 59
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load20 = load i32, i32* %12, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 67
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.4, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp22, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @condjump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 59
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %x, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 67
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load14 = load i32, i32* %12, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 72
  br i1 %cmp16, label %land.rhs, label %land.end.57

land.rhs:                                         ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 59
  br i1 %cmp22, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %land.rhs
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load26 = load i32, i32* %18, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 67
  br i1 %cmp28, label %lor.end.56, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load33 = load i32, i32* %21, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 51
  br i1 %cmp35, label %lor.end.56, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.29, %land.rhs
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load39 = load i32, i32* %24, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 59
  br i1 %cmp41, label %land.rhs.42, label %land.end

land.rhs.42:                                      ; preds = %lor.rhs
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 2
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load46 = load i32, i32* %27, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 67
  br i1 %cmp48, label %lor.end, label %lor.rhs.49

lor.rhs.49:                                       ; preds = %land.rhs.42
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 2
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load53 = load i32, i32* %30, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 51
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.49, %land.rhs.42
  %31 = phi i1 [ true, %land.rhs.42 ], [ %cmp55, %lor.rhs.49 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %32 = phi i1 [ false, %lor.rhs ], [ %31, %lor.end ]
  br label %lor.end.56

lor.end.56:                                       ; preds = %land.end, %lor.lhs.false.29, %land.lhs.true
  %33 = phi i1 [ true, %lor.lhs.false.29 ], [ true, %land.lhs.true ], [ %32, %land.end ]
  br label %land.end.57

land.end.57:                                      ; preds = %lor.end.56, %if.else
  %34 = phi i1 [ false, %if.else ], [ %33, %lor.end.56 ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end.57, %if.then.13, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @condjump_in_parallel_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 47
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load12 = load i32, i32* %11, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp ne i32 %bf.clear13, 59
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load20 = load i32, i32* %14, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 67
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.16
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load28 = load i32, i32* %17, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp ne i32 %bf.clear29, 72
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.24
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 2
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp39 = icmp eq %struct.rtx_def* %20, %21
  br i1 %cmp39, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.32
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load46 = load i32, i32* %25, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 67
  br i1 %cmp48, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load55 = load i32, i32* %29, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 51
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false, %if.end.32
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 1
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 1
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp66 = icmp eq %struct.rtx_def* %32, %33
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.88

land.lhs.true.67:                                 ; preds = %if.end.59
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 2
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load74 = load i32, i32* %37, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 67
  br i1 %cmp76, label %if.then.87, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.67
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 2
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load84 = load i32, i32* %41, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 51
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.77, %land.lhs.true.67
  store i32 1, i32* %retval
  br label %return

if.end.88:                                        ; preds = %lor.lhs.false.77, %if.end.59
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.87, %if.then.58, %if.then.31, %if.then.23, %if.then.15, %if.then.7, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @pc_set(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %pat, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 39
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %pat, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 47
  br i1 %cmp11, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load15 = load i32, i32* %13, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 59
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true, %if.end.8
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

; Function Attrs: nounwind uwtable
define i32 @any_condjump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @pc_set(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 72
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load9 = load i32, i32* %8, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  store i32 %bf.clear10, i32* %a, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load17 = load i32, i32* %12, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  store i32 %bf.clear18, i32* %b, align 4
  %13 = load i32, i32* %b, align 4
  %cmp19 = icmp eq i32 %13, 59
  br i1 %cmp19, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %if.end.2
  %14 = load i32, i32* %a, align 4
  %cmp20 = icmp eq i32 %14, 67
  br i1 %cmp20, label %lor.end.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, i32* %a, align 4
  %cmp21 = icmp eq i32 %15, 51
  br i1 %cmp21, label %lor.end.26, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %if.end.2
  %16 = load i32, i32* %a, align 4
  %cmp22 = icmp eq i32 %16, 59
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %17 = load i32, i32* %b, align 4
  %cmp23 = icmp eq i32 %17, 67
  br i1 %cmp23, label %lor.end, label %lor.rhs.24

lor.rhs.24:                                       ; preds = %land.rhs
  %18 = load i32, i32* %b, align 4
  %cmp25 = icmp eq i32 %18, 51
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.24, %land.rhs
  %19 = phi i1 [ true, %land.rhs ], [ %cmp25, %lor.rhs.24 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %20 = phi i1 [ false, %lor.rhs ], [ %19, %lor.end ]
  br label %lor.end.26

lor.end.26:                                       ; preds = %land.end, %lor.lhs.false, %land.lhs.true
  %21 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %20, %land.end ]
  %lor.ext = zext i1 %21 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end.26, %if.then.1, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @condjump_label(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @pc_set(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp ne i32 %bf.clear4, 72
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.2
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp11 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp11, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.7
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load15 = load i32, i32* %14, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 67
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.7
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp26 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.38

land.lhs.true.27:                                 ; preds = %if.end.22
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 2
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load31 = load i32, i32* %22, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 67
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true.27
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 2
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true.27, %if.end.22
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.34, %if.then.18, %if.then.6, %if.then.1, %if.then
  %25 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %25
}

; Function Attrs: nounwind uwtable
define i32 @returnjump_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %call = call i32 @for_each_rtx(%struct.rtx_def** %rtx, i32 (%struct.rtx_def**, i8*)* @returnjump_p_1, i8* null)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @returnjump_p_1(%struct.rtx_def** %loc, i8* %data) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.rhs, label %land.end.8

land.rhs:                                         ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 51
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 47
  br i1 %cmp3, label %land.rhs.4, label %land.end

land.rhs.4:                                       ; preds = %lor.rhs
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load5, 24
  %bf.clear6 = and i32 %bf.lshr, 1
  %tobool7 = icmp ne i32 %bf.clear6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.4, %lor.rhs
  %9 = phi i1 [ false, %lor.rhs ], [ %tobool7, %land.rhs.4 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %9, %land.end ]
  br label %land.end.8

land.end.8:                                       ; preds = %lor.end, %entry
  %11 = phi i1 [ false, %entry ], [ %10, %lor.end ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @follow_jumps(%struct.rtx_def* %label) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %label.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  %depth = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %value, align 8
  store i32 0, i32* %depth, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %1 = load i32, i32* %depth, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %call = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %cmp1 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp1, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 33
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp5 = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call7 = call i32 @any_uncondjump_p(%struct.rtx_def* %7)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %land.lhs.true.8, label %lor.lhs.false

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call9 = call i32 @onlyjump_p(%struct.rtx_def* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load14 = load i32, i32* %11, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 51
  br i1 %cmp16, label %land.lhs.true.17, label %land.end

land.lhs.true.17:                                 ; preds = %lor.lhs.false, %land.lhs.true.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 2
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %next, align 8
  %tobool21 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load22 = load i32, i32* %15, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.17, %lor.lhs.false, %land.lhs.true.2, %land.lhs.true, %for.cond
  %16 = phi i1 [ false, %land.lhs.true.17 ], [ false, %lor.lhs.false ], [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp24, %land.rhs ]
  br i1 %16, label %for.body, label %for.end.79

for.body:                                         ; preds = %land.end
  %17 = load i32, i32* @reload_completed, align 4
  %tobool25 = icmp ne i32 %17, 0
  br i1 %tobool25, label %if.end.47, label %if.then

if.then:                                          ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tem, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp27 = icmp ne %struct.rtx_def* %19, %20
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load29 = load i32, i32* %22, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 37
  br i1 %cmp31, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %for.body.28
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %24 = load i32, i32* %rtint, align 4
  %cmp35 = icmp eq i32 %24, -96
  br i1 %cmp35, label %if.then.43, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true.32
  %25 = load i32, i32* @flag_test_coverage, align 4
  %tobool37 = icmp ne i32 %25, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %26 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 4
  %rtint41 = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %27 = load i32, i32* %rtint41, align 4
  %cmp42 = icmp sgt i32 %27, 0
  br i1 %cmp42, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %land.lhs.true.38, %land.lhs.true.32
  %28 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.38, %lor.lhs.false.36, %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 2
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %tem, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %for.body
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 7
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %cmp51 = icmp eq %struct.rtx_def* %32, %33
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  %34 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 7
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %call57 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %36)
  store %struct.rtx_def* %call57, %struct.rtx_def** %tem, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool58 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.74

land.lhs.true.59:                                 ; preds = %if.end.53
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 3
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load63 = load i32, i32* %40, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 44
  br i1 %cmp65, label %if.then.73, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true.59
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load70 = load i32, i32* %43, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 45
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.66, %land.lhs.true.59
  br label %for.end.79

if.end.74:                                        ; preds = %lor.lhs.false.66, %if.end.53
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 7
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %value, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.74
  %46 = load i32, i32* %depth, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %depth, align 4
  br label %for.cond

for.end.79:                                       ; preds = %if.then.73, %land.end
  %47 = load i32, i32* %depth, align 4
  %cmp80 = icmp eq i32 %47, 10
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.79
  %48 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %retval
  br label %return

if.end.82:                                        ; preds = %for.end.79
  %49 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.81, %if.then.52, %if.then.43
  %50 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %50
}

declare %struct.rtx_def* @next_active_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @mark_jump_label(%struct.rtx_def* %x, %struct.rtx_def* %insn, i32 %in_mem) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %in_mem.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %eltnum = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %in_mem, i32* %in_mem.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 61, label %sw.bb
    i32 63, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 66, label %sw.bb.1
    i32 68, label %sw.bb.2
    i32 67, label %sw.bb.8
    i32 44, label %sw.bb.62
    i32 45, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %for.end.127

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %in_mem.addr, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load i32, i32* %in_mem.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.2
  br label %for.end.127

if.end:                                           ; preds = %sw.bb.2
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load3, 26
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = load i32, i32* %in_mem.addr, align 4
  call void @mark_jump_label(%struct.rtx_def* %call, %struct.rtx_def* %7, i32 %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %label, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load9 = load i32, i32* %12, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp = icmp eq i32 %bf.clear10, 37
  br i1 %cmp, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %sw.bb.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %14 = load i32, i32* %rtint, align 4
  %cmp13 = icmp eq i32 %14, -88
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  br label %sw.epilog

if.end.15:                                        ; preds = %land.lhs.true, %sw.bb.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load16 = load i32, i32* %16, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp ne i32 %bf.clear17, 36
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1451, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.mark_jump_label, i32 0, i32 0)) #5
  unreachable

if.end.20:                                        ; preds = %if.end.15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load21 = load i32, i32* %18, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 27
  %bf.clear23 = and i32 %bf.lshr22, 1
  %tobool24 = icmp ne i32 %bf.clear23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  br label %sw.epilog

if.end.26:                                        ; preds = %if.end.20
  %19 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx29, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool30 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool30, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %if.end.26
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load31 = load i32, i32* %23, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 27
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %if.end.39, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.26
  %24 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 3
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %25 = load i32, i32* %rtint38, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %rtint38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %lor.lhs.false
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool40 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool40, label %if.then.41, label %if.end.61

if.then.41:                                       ; preds = %if.end.39
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load42 = load i32, i32* %28, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 33
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.then.41
  %29 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 7
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  store %struct.rtx_def* %29, %struct.rtx_def** %rtx48, align 8
  br label %if.end.60

if.else:                                          ; preds = %if.then.41
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call49 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %31, i32 13, %struct.rtx_def* %32)
  %tobool50 = icmp ne %struct.rtx_def* %call49, null
  br i1 %tobool50, label %if.end.59, label %if.then.51

if.then.51:                                       ; preds = %if.else
  %33 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 6
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %call55 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 13, %struct.rtx_def* %33, %struct.rtx_def* %35)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 6
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  store %struct.rtx_def* %call55, %struct.rtx_def** %rtx58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.51, %if.else
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.45
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.39
  br label %for.end.127

sw.bb.62:                                         ; preds = %entry, %entry
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load63 = load i32, i32* %38, align 8
  %bf.lshr64 = lshr i32 %bf.load63, 27
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %if.end.79, label %if.then.67

if.then.67:                                       ; preds = %sw.bb.62
  %39 = load i32, i32* %code, align 4
  %cmp68 = icmp eq i32 %39, 45
  %cond = select i1 %cmp68, i32 1, i32 0
  store i32 %cond, i32* %eltnum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.67
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %eltnum, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 %idxprom
  %rtvec = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 0
  %44 = load i32, i32* %num_elem, align 4
  %cmp71 = icmp slt i32 %40, %44
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %45 to i64
  %46 = load i32, i32* %eltnum, align 4
  %idxprom73 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 %idxprom73
  %rtvec76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %48 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec76, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom72
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx77, align 8
  %50 = load i32, i32* %in_mem.addr, align 4
  call void @mark_jump_label(%struct.rtx_def* %49, %struct.rtx_def* null, i32 %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %51, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.79

if.end.79:                                        ; preds = %for.end, %sw.bb.62
  br label %for.end.127

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.25, %if.then.14, %if.end.7, %sw.bb.1
  %52 = load i32, i32* %code, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom80
  %53 = load i8*, i8** %arrayidx81, align 8
  store i8* %53, i8** %fmt, align 8
  %54 = load i32, i32* %code, align 4
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom82
  %55 = load i8, i8* %arrayidx83, align 1
  %conv = zext i8 %55 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.126, %sw.epilog
  %56 = load i32, i32* %i, align 4
  %cmp85 = icmp sge i32 %56, 0
  br i1 %cmp85, label %for.body.87, label %for.end.127

for.body.87:                                      ; preds = %for.cond.84
  %57 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %57 to i64
  %58 = load i8*, i8** %fmt, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %58, i64 %idxprom88
  %59 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %59 to i32
  %cmp91 = icmp eq i32 %conv90, 101
  br i1 %cmp91, label %if.then.93, label %if.else.98

if.then.93:                                       ; preds = %for.body.87
  %60 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %60 to i64
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 %idxprom94
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %64 = load i32, i32* %in_mem.addr, align 4
  call void @mark_jump_label(%struct.rtx_def* %62, %struct.rtx_def* %63, i32 %64)
  br label %if.end.125

if.else.98:                                       ; preds = %for.body.87
  %65 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %65 to i64
  %66 = load i8*, i8** %fmt, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %66, i64 %idxprom99
  %67 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %67 to i32
  %cmp102 = icmp eq i32 %conv101, 69
  br i1 %cmp102, label %if.then.104, label %if.end.124

if.then.104:                                      ; preds = %if.else.98
  store i32 0, i32* %j, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.121, %if.then.104
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 %idxprom106
  %rtvec109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec109, align 8
  %num_elem110 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %71, i32 0, i32 0
  %72 = load i32, i32* %num_elem110, align 4
  %cmp111 = icmp slt i32 %68, %72
  br i1 %cmp111, label %for.body.113, label %for.end.123

for.body.113:                                     ; preds = %for.cond.105
  %73 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %74 to i64
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 %idxprom115
  %rtvec118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtvec_def**
  %76 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec118, align 8
  %elem119 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %76, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem119, i32 0, i64 %idxprom114
  %77 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx120, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %79 = load i32, i32* %in_mem.addr, align 4
  call void @mark_jump_label(%struct.rtx_def* %77, %struct.rtx_def* %78, i32 %79)
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.body.113
  %80 = load i32, i32* %j, align 4
  %inc122 = add nsw i32 %80, 1
  store i32 %inc122, i32* %j, align 4
  br label %for.cond.105

for.end.123:                                      ; preds = %for.cond.105
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.123, %if.else.98
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.93
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %81 = load i32, i32* %i, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.84

for.end.127:                                      ; preds = %sw.bb, %if.then, %if.end.61, %if.end.79, %for.cond.84
  ret void
}

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @delete_jump(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %8, %struct.rtx_def* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %7, %cond.true.7 ], [ %call, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %entry
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.14 ]
  store %struct.rtx_def* %cond16, %struct.rtx_def** %set, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load20 = load i32, i32* %14, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 59
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @delete_computation(%struct.rtx_def* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_computation(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 61
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @delete_prior_computation(%struct.rtx_def* %10, %struct.rtx_def* %11)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %13)
  ret void
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_nondeleted_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %4
}

; Function Attrs: nounwind uwtable
define void @delete_for_peephole(%struct.rtx_def* %from, %struct.rtx_def* %to) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.19
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %prev, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, -134217729
  %bf.set = or i32 %bf.clear5, 134217728
  store i32 %bf.set, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %10, %struct.rtx_def** %rtx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool10 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %while.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp17 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  br label %while.end

if.end.19:                                        ; preds = %if.end.16
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @never_reached_warning(%struct.rtx_def* %avoided_insn, %struct.rtx_def* %finish) #0 {
entry:
  %avoided_insn.addr = alloca %struct.rtx_def*, align 8
  %finish.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %a_line_note = alloca %struct.rtx_def*, align 8
  %two_avoided_lines = alloca i32, align 4
  %contains_insn = alloca i32, align 4
  %reached_end = alloca i32, align 4
  store %struct.rtx_def* %avoided_insn, %struct.rtx_def** %avoided_insn.addr, align 8
  store %struct.rtx_def* %finish, %struct.rtx_def** %finish.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %a_line_note, align 8
  store i32 0, i32* %two_avoided_lines, align 4
  store i32 0, i32* %contains_insn, align 4
  store i32 0, i32* %reached_end, align 4
  %0 = load i32, i32* @warn_notreached, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.49

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %avoided_insn.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp = icmp ne %struct.rtx_def* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %finish.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 36
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.4:                                         ; preds = %land.lhs.true, %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 37
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.21

land.lhs.true.8:                                  ; preds = %if.end.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %9 = load i32, i32* %rtint, align 4
  %cmp9 = icmp sge i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.else.21

if.then.10:                                       ; preds = %land.lhs.true.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %a_line_note, align 8
  %cmp11 = icmp eq %struct.rtx_def* %10, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %a_line_note, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.10
  %12 = load %struct.rtx_def*, %struct.rtx_def** %a_line_note, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 4
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %13 = load i32, i32* %rtint15, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 4
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %15 = load i32, i32* %rtint18, align 4
  %cmp19 = icmp ne i32 %13, %15
  %conv = zext i1 %cmp19 to i32
  %16 = load i32, i32* %two_avoided_lines, align 4
  %or = or i32 %16, %conv
  store i32 %or, i32* %two_avoided_lines, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.12
  br label %if.end.33

if.else.21:                                       ; preds = %land.lhs.true.8, %if.end.4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load22 = load i32, i32* %18, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %idxprom = sext i32 %bf.clear23 to i64
  %arrayidx24 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, 105
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.else.21
  %20 = load i32, i32* %reached_end, align 4
  %tobool29 = icmp ne i32 %20, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.28
  br label %for.end

if.end.31:                                        ; preds = %if.then.28
  store i32 1, i32* %contains_insn, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.20
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %finish.addr, align 8
  %cmp34 = icmp eq %struct.rtx_def* %21, %22
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store i32 1, i32* %reached_end, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %if.then.3, %for.cond
  %25 = load i32, i32* %two_avoided_lines, align 4
  %tobool40 = icmp ne i32 %25, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.49

land.lhs.true.41:                                 ; preds = %for.end
  %26 = load i32, i32* %contains_insn, align 4
  %tobool42 = icmp ne i32 %26, 0
  br i1 %tobool42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %land.lhs.true.41
  %27 = load %struct.rtx_def*, %struct.rtx_def** %a_line_note, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx45 to i8**
  %28 = load i8*, i8** %rtstr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %a_line_note, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 4
  %rtint48 = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %30 = load i32, i32* %rtint48, align 4
  call void (i8*, i32, i8*, ...) @warning_with_file_and_line(i8* %28, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then, %if.then.43, %land.lhs.true.41, %for.end
  ret void
}

declare void @warning_with_file_and_line(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @redirect_jump_1(%struct.rtx_def* %jump, %struct.rtx_def* %nlabel) #0 {
entry:
  %jump.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %ochanges = alloca i32, align 4
  %loc = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def* %jump, %struct.rtx_def** %jump.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  %call = call i32 @num_validated_changes()
  store i32 %call, i32* %ochanges, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  store %struct.rtx_def** %arrayidx6, %struct.rtx_def*** %loc, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def** %rtx9, %struct.rtx_def*** %loc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 7
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  call void @redirect_exp_1(%struct.rtx_def** %7, %struct.rtx_def* %9, %struct.rtx_def* %10, %struct.rtx_def* %11)
  %call13 = call i32 @num_validated_changes()
  %12 = load i32, i32* %ochanges, align 4
  %cmp14 = icmp sgt i32 %call13, %12
  %conv = zext i1 %cmp14 to i32
  ret i32 %conv
}

declare i32 @num_validated_changes() #1

; Function Attrs: nounwind uwtable
define internal void @redirect_exp_1(%struct.rtx_def** %loc, %struct.rtx_def* %olabel, %struct.rtx_def* %nlabel, %struct.rtx_def* %insn) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def**, align 8
  %olabel.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %n = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %olabel, %struct.rtx_def** %olabel.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %4, 67
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %9)
  store %struct.rtx_def* %call, %struct.rtx_def** %n, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %call4 = call %struct.rtx_def* @gen_rtx_fmt_(i32 51, i32 0)
  store %struct.rtx_def* %call4, %struct.rtx_def** %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %n, align 8
  %call5 = call i32 @validate_change(%struct.rtx_def* %10, %struct.rtx_def** %11, %struct.rtx_def* %12, i32 1)
  br label %for.end.87

if.end.6:                                         ; preds = %if.then
  br label %if.end.21

if.else.7:                                        ; preds = %entry
  %13 = load i32, i32* %code, align 4
  %cmp8 = icmp eq i32 %13, 51
  br i1 %cmp8, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.else.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %cmp9 = icmp eq %struct.rtx_def* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %call11 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %15)
  store %struct.rtx_def* %call11, %struct.rtx_def** %x, align 8
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %cmp15 = icmp eq %struct.rtx_def** %16, %rtx14
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.10
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call17 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %18, %struct.rtx_def* %19)
  store %struct.rtx_def* %call17, %struct.rtx_def** %x, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call19 = call i32 @validate_change(%struct.rtx_def* %20, %struct.rtx_def** %21, %struct.rtx_def* %22, i32 1)
  br label %for.end.87

if.end.20:                                        ; preds = %land.lhs.true, %if.else.7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.6
  %23 = load i32, i32* %code, align 4
  %cmp22 = icmp eq i32 %23, 47
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.48

land.lhs.true.23:                                 ; preds = %if.end.21
  %24 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %cmp24 = icmp eq %struct.rtx_def* %24, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.48

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp29 = icmp eq %struct.rtx_def* %26, %27
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.48

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load34 = load i32, i32* %30, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 67
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.48

land.lhs.true.37:                                 ; preds = %land.lhs.true.30
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %cmp44 = icmp eq %struct.rtx_def* %33, %34
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %land.lhs.true.37
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %36 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %call46 = call %struct.rtx_def* @gen_rtx_fmt_(i32 51, i32 0)
  %call47 = call i32 @validate_change(%struct.rtx_def* %35, %struct.rtx_def** %36, %struct.rtx_def* %call46, i32 1)
  br label %for.end.87

if.end.48:                                        ; preds = %land.lhs.true.37, %land.lhs.true.30, %land.lhs.true.25, %land.lhs.true.23, %if.end.21
  %37 = load i32, i32* %code, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %38 = load i8*, i8** %arrayidx49, align 8
  store i8* %38, i8** %fmt, align 8
  %39 = load i32, i32* %code, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom50
  %40 = load i8, i8* %arrayidx51, align 1
  %conv = zext i8 %40 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end.48
  %41 = load i32, i32* %i, align 4
  %cmp52 = icmp sge i32 %41, 0
  br i1 %cmp52, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %42 to i64
  %43 = load i8*, i8** %fmt, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %43, i64 %idxprom54
  %44 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %44 to i32
  %cmp57 = icmp eq i32 %conv56, 101
  br i1 %cmp57, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 %idxprom60
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @redirect_exp_1(%struct.rtx_def** %rtx63, %struct.rtx_def* %47, %struct.rtx_def* %48, %struct.rtx_def* %49)
  br label %if.end.85

if.else.64:                                       ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %50 to i64
  %51 = load i8*, i8** %fmt, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %51, i64 %idxprom65
  %52 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %52 to i32
  %cmp68 = icmp eq i32 %conv67, 69
  br i1 %cmp68, label %if.then.70, label %if.end.84

if.then.70:                                       ; preds = %if.else.64
  store i32 0, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.then.70
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 %idxprom72
  %rtvec = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtvec_def**
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i32 0, i32 0
  %57 = load i32, i32* %num_elem, align 4
  %cmp75 = icmp slt i32 %53, %57
  br i1 %cmp75, label %for.body.77, label %for.end

for.body.77:                                      ; preds = %for.cond.71
  %58 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %59 to i64
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 %idxprom79
  %rtvec82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtvec_def**
  %61 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec82, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %61, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom78
  %62 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @redirect_exp_1(%struct.rtx_def** %arrayidx83, %struct.rtx_def* %62, %struct.rtx_def* %63, %struct.rtx_def* %64)
  br label %for.inc

for.inc:                                          ; preds = %for.body.77
  %65 = load i32, i32* %j, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %if.end.84

if.end.84:                                        ; preds = %for.end, %if.else.64
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.59
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %66 = load i32, i32* %i, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.87:                                       ; preds = %if.end, %if.end.18, %if.then.45, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @redirect_jump(%struct.rtx_def* %jump, %struct.rtx_def* %nlabel, i32 %delete_unused) #0 {
entry:
  %retval = alloca i32, align 4
  %jump.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %delete_unused.addr = alloca i32, align 4
  %olabel = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %jump, %struct.rtx_def** %jump.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  store i32 %delete_unused, i32* %delete_unused.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %olabel, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %call = call i32 @redirect_exp(%struct.rtx_def* %4, %struct.rtx_def* %5, %struct.rtx_def* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 7
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  store %struct.rtx_def* %7, %struct.rtx_def** %rtx5, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %tobool6 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %11 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %rtint, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %tobool11 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool11, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.10
  %13 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %tobool12 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.33

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %tobool17 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.33

land.lhs.true.18:                                 ; preds = %land.lhs.true.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 2
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp22 = icmp eq i32 %bf.clear, 37
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.33

land.lhs.true.23:                                 ; preds = %land.lhs.true.18
  %19 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 4
  %rtint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %21 = load i32, i32* %rtint29, align 4
  %cmp30 = icmp eq i32 %21, -91
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.23
  %22 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %call32 = call %struct.rtx_def* @emit_note_after(i32 -91, %struct.rtx_def* %22)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.23, %land.lhs.true.18, %land.lhs.true.13, %land.lhs.true, %if.end.10
  %23 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %tobool34 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.49

land.lhs.true.35:                                 ; preds = %if.end.33
  %24 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 3
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %25 = load i32, i32* %rtint38, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %rtint38, align 4
  %cmp39 = icmp eq i32 %dec, 0
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.49

land.lhs.true.40:                                 ; preds = %land.lhs.true.35
  %26 = load i32, i32* %delete_unused.addr, align 4
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.49

land.lhs.true.42:                                 ; preds = %land.lhs.true.40
  %27 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtint45 = bitcast %union.rtunion_def* %arrayidx44 to i32*
  %28 = load i32, i32* %rtint45, align 4
  %tobool46 = icmp ne i32 %28, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true.42
  %29 = load %struct.rtx_def*, %struct.rtx_def** %olabel, align 8
  %call48 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %29)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true.42, %land.lhs.true.40, %land.lhs.true.35, %if.end.33
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.1, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @redirect_exp(%struct.rtx_def* %olabel, %struct.rtx_def* %nlabel, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %olabel.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def* %olabel, %struct.rtx_def** %olabel.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  store %struct.rtx_def** %arrayidx6, %struct.rtx_def*** %loc, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def** %rtx9, %struct.rtx_def*** %loc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %olabel.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @redirect_exp_1(%struct.rtx_def** %7, %struct.rtx_def* %8, %struct.rtx_def* %9, %struct.rtx_def* %10)
  %call = call i32 @num_validated_changes()
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %call13 = call i32 @apply_change_group()
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct.rtx_def* @emit_note_after(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @invert_jump_1(%struct.rtx_def* %jump, %struct.rtx_def* %nlabel) #0 {
entry:
  %retval = alloca i32, align 4
  %jump.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %ochanges = alloca i32, align 4
  store %struct.rtx_def* %jump, %struct.rtx_def** %jump.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  %call = call i32 @num_validated_changes()
  store i32 %call, i32* %ochanges, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  call void @invert_exp_1(%struct.rtx_def* %0)
  %call1 = call i32 @num_validated_changes()
  %1 = load i32, i32* %ochanges, align 4
  %cmp = icmp eq i32 %call1, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %call2 = call i32 @redirect_jump_1(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store i32 %call2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @invert_exp_1(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %comp = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %reversed_code = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @pc_set(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.invert_exp_1, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %6, 72
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %comp, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call5 = call i32 @reversed_comparison_code(%struct.rtx_def* %9, %struct.rtx_def* %10)
  store i32 %call5, i32* %reversed_code, align 4
  %11 = load i32, i32* %reversed_code, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.21

if.then.7:                                        ; preds = %if.then.1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %14 = load i32, i32* %reversed_code, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load11 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load11, 16
  %bf.clear12 = and i32 %bf.lshr, 255
  %17 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 1
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %call19 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %14, i32 %bf.clear12, %struct.rtx_def* %18, %struct.rtx_def* %20)
  %call20 = call i32 @validate_change(%struct.rtx_def* %12, %struct.rtx_def** %rtx10, %struct.rtx_def* %call19, i32 1)
  br label %if.end.36

if.end.21:                                        ; preds = %if.then.1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %tem, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 2
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %call31 = call i32 @validate_change(%struct.rtx_def* %23, %struct.rtx_def** %rtx27, %struct.rtx_def* %26, i32 1)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 2
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call35 = call i32 @validate_change(%struct.rtx_def* %27, %struct.rtx_def** %rtx34, %struct.rtx_def* %29, i32 1)
  br label %if.end.36

if.else:                                          ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.invert_exp_1, i32 0, i32 0)) #5
  unreachable

if.end.36:                                        ; preds = %if.then.7, %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @invert_jump(%struct.rtx_def* %jump, %struct.rtx_def* %nlabel, i32 %delete_unused) #0 {
entry:
  %retval = alloca i32, align 4
  %jump.addr = alloca %struct.rtx_def*, align 8
  %nlabel.addr = alloca %struct.rtx_def*, align 8
  %delete_unused.addr = alloca i32, align 4
  store %struct.rtx_def* %jump, %struct.rtx_def** %jump.addr, align 8
  store %struct.rtx_def* %nlabel, %struct.rtx_def** %nlabel.addr, align 8
  store i32 %delete_unused, i32* %delete_unused.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %call = call i32 @invert_exp(%struct.rtx_def* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %nlabel.addr, align 8
  %3 = load i32, i32* %delete_unused.addr, align 4
  %call1 = call i32 @redirect_jump(%struct.rtx_def* %1, %struct.rtx_def* %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  call void @invert_br_probabilities(%struct.rtx_def* %4)
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %call5 = call i32 @invert_exp(%struct.rtx_def* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.invert_jump, i32 0, i32 0)) #5
  unreachable

if.end.8:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @invert_exp(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @invert_exp_1(%struct.rtx_def* %0)
  %call = call i32 @num_validated_changes()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @apply_change_group()
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare void @invert_br_probabilities(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @rtx_renumbered_equal_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %reg_x = alloca i32, align 4
  %reg_y = alloca i32, align 4
  %byte_x = alloca i32, align 4
  %byte_y = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %4, 61
  br i1 %cmp1, label %land.lhs.true.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %5, 63
  br i1 %cmp2, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 61
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.131

land.lhs.true.6:                                  ; preds = %land.lhs.true, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 61
  br i1 %cmp9, label %if.then.21, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.131

land.lhs.true.14:                                 ; preds = %lor.lhs.false.10
  %13 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 61
  br i1 %cmp20, label %if.then.21, label %if.end.131

if.then.21:                                       ; preds = %land.lhs.true.14, %land.lhs.true.6
  store i32 -1, i32* %reg_x, align 4
  store i32 -1, i32* %reg_y, align 4
  store i32 0, i32* %byte_x, align 4
  store i32 0, i32* %byte_y, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load22, 16
  %bf.clear23 = and i32 %bf.lshr, 255
  %18 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load24 = load i32, i32* %19, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %cmp27 = icmp ne i32 %bf.clear23, %bf.clear26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.21
  %20 = load i16*, i16** @reg_renumber, align 8
  %cmp30 = icmp eq i16* %20, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %22)
  store i32 %call, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %23 = load i32, i32* %code, align 4
  %cmp33 = icmp eq i32 %23, 63
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.32
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %26 = load i32, i32* %rtuint, align 4
  store i32 %26, i32* %reg_x, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %28 = load i32, i32* %rtuint42, align 4
  store i32 %28, i32* %byte_x, align 4
  %29 = load i32, i32* %reg_x, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i16*, i16** @reg_renumber, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %30, i64 %idxprom
  %31 = load i16, i16* %arrayidx43, align 2
  %conv = sext i16 %31 to i32
  %cmp44 = icmp sge i32 %conv, 0
  br i1 %cmp44, label %if.then.46, label %if.end.60

if.then.46:                                       ; preds = %if.then.34
  %32 = load i32, i32* %reg_x, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load i16*, i16** @reg_renumber, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %33, i64 %idxprom47
  %34 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %34 to i32
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load53 = load i32, i32* %37, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %38 = load i32, i32* %byte_x, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load56 = load i32, i32* %40, align 8
  %bf.lshr57 = lshr i32 %bf.load56, 16
  %bf.clear58 = and i32 %bf.lshr57, 255
  %call59 = call i32 @subreg_regno_offset(i32 %conv49, i32 %bf.clear55, i32 %38, i32 %bf.clear58)
  store i32 %call59, i32* %reg_x, align 4
  store i32 0, i32* %byte_x, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.46, %if.then.34
  br label %if.end.74

if.else:                                          ; preds = %if.end.32
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtuint63 = bitcast %union.rtunion_def* %arrayidx62 to i32*
  %42 = load i32, i32* %rtuint63, align 4
  store i32 %42, i32* %reg_x, align 4
  %43 = load i32, i32* %reg_x, align 4
  %idxprom64 = sext i32 %43 to i64
  %44 = load i16*, i16** @reg_renumber, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %44, i64 %idxprom64
  %45 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %45 to i32
  %cmp67 = icmp sge i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.else
  %46 = load i32, i32* %reg_x, align 4
  %idxprom70 = sext i32 %46 to i64
  %47 = load i16*, i16** @reg_renumber, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %47, i64 %idxprom70
  %48 = load i16, i16* %arrayidx71, align 2
  %conv72 = sext i16 %48 to i32
  store i32 %conv72, i32* %reg_x, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.60
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load75 = load i32, i32* %50, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 63
  br i1 %cmp77, label %if.then.79, label %if.else.109

if.then.79:                                       ; preds = %if.end.74
  %51 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtuint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %53 = load i32, i32* %rtuint85, align 4
  store i32 %53, i32* %reg_y, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 1
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %55 = load i32, i32* %rtuint88, align 4
  store i32 %55, i32* %byte_y, align 4
  %56 = load i32, i32* %reg_y, align 4
  %idxprom89 = sext i32 %56 to i64
  %57 = load i16*, i16** @reg_renumber, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %57, i64 %idxprom89
  %58 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %58 to i32
  %cmp92 = icmp sge i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.108

if.then.94:                                       ; preds = %if.then.79
  %59 = load i32, i32* %reg_y, align 4
  %idxprom95 = sext i32 %59 to i64
  %60 = load i16*, i16** @reg_renumber, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %60, i64 %idxprom95
  %61 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %61 to i32
  %62 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load101 = load i32, i32* %64, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %65 = load i32, i32* %byte_y, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load104 = load i32, i32* %67, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 16
  %bf.clear106 = and i32 %bf.lshr105, 255
  %call107 = call i32 @subreg_regno_offset(i32 %conv97, i32 %bf.clear103, i32 %65, i32 %bf.clear106)
  store i32 %call107, i32* %reg_y, align 4
  store i32 0, i32* %byte_y, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.94, %if.then.79
  br label %if.end.123

if.else.109:                                      ; preds = %if.end.74
  %68 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtuint112 = bitcast %union.rtunion_def* %arrayidx111 to i32*
  %69 = load i32, i32* %rtuint112, align 4
  store i32 %69, i32* %reg_y, align 4
  %70 = load i32, i32* %reg_y, align 4
  %idxprom113 = sext i32 %70 to i64
  %71 = load i16*, i16** @reg_renumber, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %71, i64 %idxprom113
  %72 = load i16, i16* %arrayidx114, align 2
  %conv115 = sext i16 %72 to i32
  %cmp116 = icmp sge i32 %conv115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.122

if.then.118:                                      ; preds = %if.else.109
  %73 = load i32, i32* %reg_y, align 4
  %idxprom119 = sext i32 %73 to i64
  %74 = load i16*, i16** @reg_renumber, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %74, i64 %idxprom119
  %75 = load i16, i16* %arrayidx120, align 2
  %conv121 = sext i16 %75 to i32
  store i32 %conv121, i32* %reg_y, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.118, %if.else.109
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.108
  %76 = load i32, i32* %reg_x, align 4
  %cmp124 = icmp sge i32 %76, 0
  br i1 %cmp124, label %land.lhs.true.126, label %land.end

land.lhs.true.126:                                ; preds = %if.end.123
  %77 = load i32, i32* %reg_x, align 4
  %78 = load i32, i32* %reg_y, align 4
  %cmp127 = icmp eq i32 %77, %78
  br i1 %cmp127, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.126
  %79 = load i32, i32* %byte_x, align 4
  %80 = load i32, i32* %byte_y, align 4
  %cmp129 = icmp eq i32 %79, %80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.126, %if.end.123
  %81 = phi i1 [ false, %land.lhs.true.126 ], [ false, %if.end.123 ], [ %cmp129, %land.rhs ]
  %land.ext = zext i1 %81 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.131:                                       ; preds = %land.lhs.true.14, %lor.lhs.false.10, %land.lhs.true, %lor.lhs.false
  %82 = load i32, i32* %code, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load132 = load i32, i32* %84, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp ne i32 %82, %bf.clear133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.131
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.131
  %85 = load i32, i32* %code, align 4
  switch i32 %85, label %sw.default [
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 54, label %sw.bb.138
    i32 67, label %sw.bb.146
    i32 68, label %sw.bb.175
    i32 36, label %sw.bb.183
  ]

sw.bb:                                            ; preds = %if.end.137, %if.end.137, %if.end.137, %if.end.137
  store i32 0, i32* %retval
  br label %return

sw.bb.138:                                        ; preds = %if.end.137
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx140 to i64*
  %87 = load i64, i64* %rtwint, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtwint143 = bitcast %union.rtunion_def* %arrayidx142 to i64*
  %89 = load i64, i64* %rtwint143, align 8
  %cmp144 = icmp eq i64 %87, %89
  %conv145 = zext i1 %cmp144 to i32
  store i32 %conv145, i32* %retval
  br label %return

sw.bb.146:                                        ; preds = %if.end.137
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load147 = load i32, i32* %91, align 8
  %bf.lshr148 = lshr i32 %bf.load147, 27
  %bf.clear149 = and i32 %bf.lshr148, 1
  %tobool = icmp ne i32 %bf.clear149, 0
  br i1 %tobool, label %if.then.155, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %sw.bb.146
  %92 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load151 = load i32, i32* %93, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 27
  %bf.clear153 = and i32 %bf.lshr152, 1
  %tobool154 = icmp ne i32 %bf.clear153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.164

if.then.155:                                      ; preds = %lor.lhs.false.150, %sw.bb.146
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 0
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx161, align 8
  %cmp162 = icmp eq %struct.rtx_def* %95, %97
  %conv163 = zext i1 %cmp162 to i32
  store i32 %conv163, i32* %retval
  br label %return

if.end.164:                                       ; preds = %lor.lhs.false.150
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld165, i32 0, i64 0
  %rtx167 = bitcast %union.rtunion_def* %arrayidx166 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx167, align 8
  %call168 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %99)
  %100 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 0
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  %call172 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %101)
  %cmp173 = icmp eq %struct.rtx_def* %call168, %call172
  %conv174 = zext i1 %cmp173 to i32
  store i32 %conv174, i32* %retval
  br label %return

sw.bb.175:                                        ; preds = %if.end.137
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx177 to i8**
  %103 = load i8*, i8** %rtstr, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtstr180 = bitcast %union.rtunion_def* %arrayidx179 to i8**
  %105 = load i8*, i8** %rtstr180, align 8
  %cmp181 = icmp eq i8* %103, %105
  %conv182 = zext i1 %cmp181 to i32
  store i32 %conv182, i32* %retval
  br label %return

sw.bb.183:                                        ; preds = %if.end.137
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.137
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load184 = load i32, i32* %107, align 8
  %bf.lshr185 = lshr i32 %bf.load184, 16
  %bf.clear186 = and i32 %bf.lshr185, 255
  %108 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load187 = load i32, i32* %109, align 8
  %bf.lshr188 = lshr i32 %bf.load187, 16
  %bf.clear189 = and i32 %bf.lshr188, 255
  %cmp190 = icmp ne i32 %bf.clear186, %bf.clear189
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end.193:                                       ; preds = %sw.epilog
  %110 = load i32, i32* %code, align 4
  %cmp194 = icmp eq i32 %110, 103
  br i1 %cmp194, label %land.lhs.true.205, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %if.end.193
  %111 = load i32, i32* %code, align 4
  %cmp197 = icmp eq i32 %111, 102
  br i1 %cmp197, label %land.lhs.true.205, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.lhs.false.196
  %112 = load i32, i32* %code, align 4
  %idxprom200 = sext i32 %112 to i64
  %arrayidx201 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom200
  %113 = load i8, i8* %arrayidx201, align 1
  %conv202 = sext i8 %113 to i32
  %cmp203 = icmp eq i32 %conv202, 99
  br i1 %cmp203, label %land.lhs.true.205, label %if.else.245

land.lhs.true.205:                                ; preds = %lor.lhs.false.199, %lor.lhs.false.196, %if.end.193
  %114 = load i32, i32* %code, align 4
  %cmp206 = icmp ne i32 %114, 75
  br i1 %cmp206, label %if.then.208, label %if.else.245

if.then.208:                                      ; preds = %land.lhs.true.205
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtx214 = bitcast %union.rtunion_def* %arrayidx213 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx214, align 8
  %call215 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %116, %struct.rtx_def* %118)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %land.lhs.true.217, label %lor.rhs

land.lhs.true.217:                                ; preds = %if.then.208
  %119 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 1
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 1
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %122 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %call224 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %120, %struct.rtx_def* %122)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.217, %if.then.208
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtx228 = bitcast %union.rtunion_def* %arrayidx227 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx228, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 1
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %call232 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %124, %struct.rtx_def* %126)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %land.rhs.234, label %land.end.243

land.rhs.234:                                     ; preds = %lor.rhs
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 1
  %rtx237 = bitcast %union.rtunion_def* %arrayidx236 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx237, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %call241 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %128, %struct.rtx_def* %130)
  %tobool242 = icmp ne i32 %call241, 0
  br label %land.end.243

land.end.243:                                     ; preds = %land.rhs.234, %lor.rhs
  %131 = phi i1 [ false, %lor.rhs ], [ %tobool242, %land.rhs.234 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.243, %land.lhs.true.217
  %132 = phi i1 [ true, %land.lhs.true.217 ], [ %131, %land.end.243 ]
  %lor.ext = zext i1 %132 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else.245:                                      ; preds = %land.lhs.true.205, %lor.lhs.false.199
  %133 = load i32, i32* %code, align 4
  %idxprom246 = sext i32 %133 to i64
  %arrayidx247 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom246
  %134 = load i8, i8* %arrayidx247, align 1
  %conv248 = sext i8 %134 to i32
  %cmp249 = icmp eq i32 %conv248, 60
  br i1 %cmp249, label %if.then.257, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %if.else.245
  %135 = load i32, i32* %code, align 4
  %idxprom252 = sext i32 %135 to i64
  %arrayidx253 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom252
  %136 = load i8, i8* %arrayidx253, align 1
  %conv254 = sext i8 %136 to i32
  %cmp255 = icmp eq i32 %conv254, 50
  br i1 %cmp255, label %if.then.257, label %if.else.277

if.then.257:                                      ; preds = %lor.lhs.false.251, %if.else.245
  %137 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtx260 = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx260, align 8
  %139 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld261, i32 0, i64 0
  %rtx263 = bitcast %union.rtunion_def* %arrayidx262 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx263, align 8
  %call264 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %138, %struct.rtx_def* %140)
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %land.rhs.266, label %land.end.275

land.rhs.266:                                     ; preds = %if.then.257
  %141 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 1
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld270, i32 0, i64 1
  %rtx272 = bitcast %union.rtunion_def* %arrayidx271 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx272, align 8
  %call273 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %142, %struct.rtx_def* %144)
  %tobool274 = icmp ne i32 %call273, 0
  br label %land.end.275

land.end.275:                                     ; preds = %land.rhs.266, %if.then.257
  %145 = phi i1 [ false, %if.then.257 ], [ %tobool274, %land.rhs.266 ]
  %land.ext276 = zext i1 %145 to i32
  store i32 %land.ext276, i32* %retval
  br label %return

if.else.277:                                      ; preds = %lor.lhs.false.251
  %146 = load i32, i32* %code, align 4
  %idxprom278 = sext i32 %146 to i64
  %arrayidx279 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom278
  %147 = load i8, i8* %arrayidx279, align 1
  %conv280 = sext i8 %147 to i32
  %cmp281 = icmp eq i32 %conv280, 49
  br i1 %cmp281, label %if.then.283, label %if.end.291

if.then.283:                                      ; preds = %if.else.277
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 0
  %rtx289 = bitcast %union.rtunion_def* %arrayidx288 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx289, align 8
  %call290 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %149, %struct.rtx_def* %151)
  store i32 %call290, i32* %retval
  br label %return

if.end.291:                                       ; preds = %if.else.277
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292
  %152 = load i32, i32* %code, align 4
  %idxprom294 = sext i32 %152 to i64
  %arrayidx295 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom294
  %153 = load i8*, i8** %arrayidx295, align 8
  store i8* %153, i8** %fmt, align 8
  %154 = load i32, i32* %code, align 4
  %idxprom296 = sext i32 %154 to i64
  %arrayidx297 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom296
  %155 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %155 to i32
  %sub = sub nsw i32 %conv298, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.423, %if.end.293
  %156 = load i32, i32* %i, align 4
  %cmp299 = icmp sge i32 %156, 0
  br i1 %cmp299, label %for.body, label %for.end.425

for.body:                                         ; preds = %for.cond
  %157 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %157 to i64
  %158 = load i8*, i8** %fmt, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %158, i64 %idxprom301
  %159 = load i8, i8* %arrayidx302, align 1
  %conv303 = sext i8 %159 to i32
  switch i32 %conv303, label %sw.default.421 [
    i32 119, label %sw.bb.304
    i32 105, label %sw.bb.317
    i32 116, label %sw.bb.329
    i32 115, label %sw.bb.341
    i32 101, label %sw.bb.354
    i32 117, label %sw.bb.367
    i32 48, label %sw.bb.380
    i32 69, label %sw.bb.381
  ]

sw.bb.304:                                        ; preds = %for.body
  %160 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %160 to i64
  %161 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld306 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld306, i32 0, i64 %idxprom305
  %rtwint308 = bitcast %union.rtunion_def* %arrayidx307 to i64*
  %162 = load i64, i64* %rtwint308, align 8
  %163 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %163 to i64
  %164 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 %idxprom309
  %rtwint312 = bitcast %union.rtunion_def* %arrayidx311 to i64*
  %165 = load i64, i64* %rtwint312, align 8
  %cmp313 = icmp ne i64 %162, %165
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %sw.bb.304
  store i32 0, i32* %retval
  br label %return

if.end.316:                                       ; preds = %sw.bb.304
  br label %sw.epilog.422

sw.bb.317:                                        ; preds = %for.body
  %166 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %166 to i64
  %167 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld319 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld319, i32 0, i64 %idxprom318
  %rtint = bitcast %union.rtunion_def* %arrayidx320 to i32*
  %168 = load i32, i32* %rtint, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %169 to i64
  %170 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 %idxprom321
  %rtint324 = bitcast %union.rtunion_def* %arrayidx323 to i32*
  %171 = load i32, i32* %rtint324, align 4
  %cmp325 = icmp ne i32 %168, %171
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %sw.bb.317
  store i32 0, i32* %retval
  br label %return

if.end.328:                                       ; preds = %sw.bb.317
  br label %sw.epilog.422

sw.bb.329:                                        ; preds = %for.body
  %172 = load i32, i32* %i, align 4
  %idxprom330 = sext i32 %172 to i64
  %173 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld331, i32 0, i64 %idxprom330
  %rttree = bitcast %union.rtunion_def* %arrayidx332 to %union.tree_node**
  %174 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %175 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %175 to i64
  %176 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld334, i32 0, i64 %idxprom333
  %rttree336 = bitcast %union.rtunion_def* %arrayidx335 to %union.tree_node**
  %177 = load %union.tree_node*, %union.tree_node** %rttree336, align 8
  %cmp337 = icmp ne %union.tree_node* %174, %177
  br i1 %cmp337, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %sw.bb.329
  store i32 0, i32* %retval
  br label %return

if.end.340:                                       ; preds = %sw.bb.329
  br label %sw.epilog.422

sw.bb.341:                                        ; preds = %for.body
  %178 = load i32, i32* %i, align 4
  %idxprom342 = sext i32 %178 to i64
  %179 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld343 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx344 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld343, i32 0, i64 %idxprom342
  %rtstr345 = bitcast %union.rtunion_def* %arrayidx344 to i8**
  %180 = load i8*, i8** %rtstr345, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %181 to i64
  %182 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 %idxprom346
  %rtstr349 = bitcast %union.rtunion_def* %arrayidx348 to i8**
  %183 = load i8*, i8** %rtstr349, align 8
  %call350 = call i32 @strcmp(i8* %180, i8* %183) #7
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %sw.bb.341
  store i32 0, i32* %retval
  br label %return

if.end.353:                                       ; preds = %sw.bb.341
  br label %sw.epilog.422

sw.bb.354:                                        ; preds = %for.body
  %184 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %184 to i64
  %185 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld356 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx357 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld356, i32 0, i64 %idxprom355
  %rtx358 = bitcast %union.rtunion_def* %arrayidx357 to %struct.rtx_def**
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtx358, align 8
  %187 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %187 to i64
  %188 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 %idxprom359
  %rtx362 = bitcast %union.rtunion_def* %arrayidx361 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx362, align 8
  %call363 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %186, %struct.rtx_def* %189)
  %tobool364 = icmp ne i32 %call363, 0
  br i1 %tobool364, label %if.end.366, label %if.then.365

if.then.365:                                      ; preds = %sw.bb.354
  store i32 0, i32* %retval
  br label %return

if.end.366:                                       ; preds = %sw.bb.354
  br label %sw.epilog.422

sw.bb.367:                                        ; preds = %for.body
  %190 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %190 to i64
  %191 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 %idxprom368
  %rtx371 = bitcast %union.rtunion_def* %arrayidx370 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx371, align 8
  %193 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %193 to i64
  %194 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 %idxprom372
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  %cmp376 = icmp ne %struct.rtx_def* %192, %195
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %sw.bb.367
  store i32 0, i32* %retval
  br label %return

if.end.379:                                       ; preds = %sw.bb.367
  br label %sw.bb.380

sw.bb.380:                                        ; preds = %for.body, %if.end.379
  br label %sw.epilog.422

sw.bb.381:                                        ; preds = %for.body
  %196 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %196 to i64
  %197 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld383, i32 0, i64 %idxprom382
  %rtvec = bitcast %union.rtunion_def* %arrayidx384 to %struct.rtvec_def**
  %198 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %198, i32 0, i32 0
  %199 = load i32, i32* %num_elem, align 4
  %200 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %200 to i64
  %201 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld386, i32 0, i64 %idxprom385
  %rtvec388 = bitcast %union.rtunion_def* %arrayidx387 to %struct.rtvec_def**
  %202 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec388, align 8
  %num_elem389 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %202, i32 0, i32 0
  %203 = load i32, i32* %num_elem389, align 4
  %cmp390 = icmp ne i32 %199, %203
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %sw.bb.381
  store i32 0, i32* %retval
  br label %return

if.end.393:                                       ; preds = %sw.bb.381
  %204 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %204 to i64
  %205 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 %idxprom394
  %rtvec397 = bitcast %union.rtunion_def* %arrayidx396 to %struct.rtvec_def**
  %206 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec397, align 8
  %num_elem398 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %206, i32 0, i32 0
  %207 = load i32, i32* %num_elem398, align 4
  %sub399 = sub nsw i32 %207, 1
  store i32 %sub399, i32* %j, align 4
  br label %for.cond.400

for.cond.400:                                     ; preds = %for.inc, %if.end.393
  %208 = load i32, i32* %j, align 4
  %cmp401 = icmp sge i32 %208, 0
  br i1 %cmp401, label %for.body.403, label %for.end

for.body.403:                                     ; preds = %for.cond.400
  %209 = load i32, i32* %j, align 4
  %idxprom404 = sext i32 %209 to i64
  %210 = load i32, i32* %i, align 4
  %idxprom405 = sext i32 %210 to i64
  %211 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld406, i32 0, i64 %idxprom405
  %rtvec408 = bitcast %union.rtunion_def* %arrayidx407 to %struct.rtvec_def**
  %212 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec408, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %212, i32 0, i32 1
  %arrayidx409 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom404
  %213 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx409, align 8
  %214 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %214 to i64
  %215 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %215 to i64
  %216 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 %idxprom411
  %rtvec414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtvec_def**
  %217 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec414, align 8
  %elem415 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %217, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem415, i32 0, i64 %idxprom410
  %218 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx416, align 8
  %call417 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %213, %struct.rtx_def* %218)
  %tobool418 = icmp ne i32 %call417, 0
  br i1 %tobool418, label %if.end.420, label %if.then.419

if.then.419:                                      ; preds = %for.body.403
  store i32 0, i32* %retval
  br label %return

if.end.420:                                       ; preds = %for.body.403
  br label %for.inc

for.inc:                                          ; preds = %if.end.420
  %219 = load i32, i32* %j, align 4
  %dec = add nsw i32 %219, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.400

for.end:                                          ; preds = %for.cond.400
  br label %sw.epilog.422

sw.default.421:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 2400, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.rtx_renumbered_equal_p, i32 0, i32 0)) #5
  unreachable

sw.epilog.422:                                    ; preds = %for.end, %sw.bb.380, %if.end.366, %if.end.353, %if.end.340, %if.end.328, %if.end.316
  br label %for.inc.423

for.inc.423:                                      ; preds = %sw.epilog.422
  %220 = load i32, i32* %i, align 4
  %dec424 = add nsw i32 %220, -1
  store i32 %dec424, i32* %i, align 4
  br label %for.cond

for.end.425:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.425, %if.then.419, %if.then.392, %if.then.378, %if.then.365, %if.then.352, %if.then.339, %if.then.327, %if.then.315, %if.then.283, %land.end.275, %lor.end, %if.then.192, %sw.bb.183, %sw.bb.175, %if.end.164, %if.then.155, %sw.bb.138, %sw.bb, %if.then.136, %land.end, %if.then.31, %if.then.28, %if.then
  %221 = load i32, i32* %retval
  ret i32 %221
}

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare %struct.rtx_def* @next_real_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @true_regnum(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %base = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp uge i32 %3, 53
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %5 = load i32, i32* %rtuint4, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i16*, i16** @reg_renumber, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx5, align 2
  %conv = sext i16 %7 to i32
  %cmp6 = icmp sge i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %9 = load i32, i32* %rtuint11, align 4
  %idxprom12 = zext i32 %9 to i64
  %10 = load i16*, i16** @reg_renumber, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %10, i64 %idxprom12
  %11 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %11 to i32
  store i32 %conv14, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %13 = load i32, i32* %rtuint17, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.18:                                        ; preds = %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load19 = load i32, i32* %15, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 63
  br i1 %cmp21, label %if.then.23, label %if.end.51

if.then.23:                                       ; preds = %if.end.18
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @true_regnum(%struct.rtx_def* %17)
  store i32 %call, i32* %base, align 4
  %18 = load i32, i32* %base, align 4
  %cmp26 = icmp sge i32 %18, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.50

land.lhs.true.28:                                 ; preds = %if.then.23
  %19 = load i32, i32* %base, align 4
  %cmp29 = icmp slt i32 %19, 53
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %land.lhs.true.28
  %20 = load i32, i32* %base, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %23 = load i32, i32* %rtuint37, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load41 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load41, 16
  %bf.clear42 = and i32 %bf.lshr, 255
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtuint45 = bitcast %union.rtunion_def* %arrayidx44 to i32*
  %28 = load i32, i32* %rtuint45, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load46 = load i32, i32* %30, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %call49 = call i32 @subreg_regno_offset(i32 %23, i32 %bf.clear42, i32 %28, i32 %bf.clear48)
  %add = add i32 %20, %call49
  store i32 %add, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.28, %if.then.23
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.18
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.31, %if.end, %if.then.8
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare i32 @max_reg_num() #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @emit_barrier_before(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @replace_regs(%struct.rtx_def*, %struct.rtx_def**, i32, i32) #1

declare %struct.rtx_def* @copy_insn_1(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @predict_insn_def(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_label_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @reg_scan_update(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @delete_prior_computation(%struct.rtx_def* %note, %struct.rtx_def* %insn) #0 {
entry:
  %note.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %our_prev = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %part = alloca %struct.rtx_def*, align 8
  %dest_regno = alloca i32, align 4
  %dest_endregno = alloca i32, align 4
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %i286 = alloca i32, align 4
  store %struct.rtx_def* %note, %struct.rtx_def** %note.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %our_prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.327, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 34
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %8, %lor.end ]
  br i1 %9, label %for.body, label %for.end.329

for.body:                                         ; preds = %land.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %pat, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load7 = load i32, i32* %13, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 34
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load10 = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load10, 26
  %bf.clear11 = and i32 %bf.lshr, 1
  %tobool12 = icmp ne i32 %bf.clear11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load13 = load i32, i32* %17, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp ne i32 %bf.clear14, 47
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp ne i32 %bf.clear21, 50
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false, %land.lhs.true
  br label %for.end.329

if.end:                                           ; preds = %lor.lhs.false.16, %for.body
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load23 = load i32, i32* %22, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 24
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  br label %for.end.329

if.end.27:                                        ; preds = %if.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load28 = load i32, i32* %24, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 48
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.39

land.lhs.true.31:                                 ; preds = %if.end.27
  %25 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load35 = load i32, i32* %27, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 32
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.31
  br label %for.end.329

if.end.39:                                        ; preds = %land.lhs.true.31, %if.end.27
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call40 = call i32 @reg_set_p(%struct.rtx_def* %28, %struct.rtx_def* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.313

if.then.42:                                       ; preds = %if.end.39
  %30 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call43 = call i32 @side_effects_p(%struct.rtx_def* %30)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.50

land.lhs.true.45:                                 ; preds = %if.then.42
  %31 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load46 = load i32, i32* %32, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp ne i32 %bf.clear47, 34
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.45
  br label %for.end.329

if.end.50:                                        ; preds = %land.lhs.true.45, %if.then.42
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load51 = load i32, i32* %34, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 39
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc, %if.then.54
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 0
  %38 = load i32, i32* %num_elem, align 4
  %cmp58 = icmp slt i32 %35, %38
  br i1 %cmp58, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.55
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtvec62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec62, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx63, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %part, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load64 = load i32, i32* %44, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 47
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.73

land.lhs.true.67:                                 ; preds = %for.body.59
  %45 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp71 = icmp ne %struct.rtx_def* %46, %47
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true.67
  br label %for.end

if.end.73:                                        ; preds = %land.lhs.true.67, %for.body.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.55

for.end:                                          ; preds = %if.then.72, %for.cond.55
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtvec76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %51 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec76, align 8
  %num_elem77 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %51, i32 0, i32 0
  %52 = load i32, i32* %num_elem77, align 4
  %cmp78 = icmp eq i32 %49, %52
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end
  %53 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  call void @delete_computation(%struct.rtx_def* %53)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %for.end
  br label %if.end.312

if.else:                                          ; preds = %if.end.50
  %54 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load81 = load i32, i32* %55, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 47
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.311

land.lhs.true.84:                                 ; preds = %if.else
  %56 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load88 = load i32, i32* %58, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 61
  br i1 %cmp90, label %if.then.91, label %if.end.311

if.then.91:                                       ; preds = %land.lhs.true.84
  %59 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx96 to i32*
  %61 = load i32, i32* %rtuint, align 4
  store i32 %61, i32* %dest_regno, align 4
  %62 = load i32, i32* %dest_regno, align 4
  %63 = load i32, i32* %dest_regno, align 4
  %cmp97 = icmp slt i32 %63, 53
  br i1 %cmp97, label %cond.true, label %cond.false.176

cond.true:                                        ; preds = %if.then.91
  %64 = load i32, i32* %dest_regno, align 4
  %cmp98 = icmp sge i32 %64, 8
  br i1 %cmp98, label %land.lhs.true.99, label %lor.lhs.false.101

land.lhs.true.99:                                 ; preds = %cond.true
  %65 = load i32, i32* %dest_regno, align 4
  %cmp100 = icmp sle i32 %65, 15
  br i1 %cmp100, label %cond.true.113, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.99, %cond.true
  %66 = load i32, i32* %dest_regno, align 4
  %cmp102 = icmp sge i32 %66, 21
  br i1 %cmp102, label %land.lhs.true.103, label %lor.lhs.false.105

land.lhs.true.103:                                ; preds = %lor.lhs.false.101
  %67 = load i32, i32* %dest_regno, align 4
  %cmp104 = icmp sle i32 %67, 28
  br i1 %cmp104, label %cond.true.113, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.103, %lor.lhs.false.101
  %68 = load i32, i32* %dest_regno, align 4
  %cmp106 = icmp sge i32 %68, 45
  br i1 %cmp106, label %land.lhs.true.107, label %lor.lhs.false.109

land.lhs.true.107:                                ; preds = %lor.lhs.false.105
  %69 = load i32, i32* %dest_regno, align 4
  %cmp108 = icmp sle i32 %69, 52
  br i1 %cmp108, label %cond.true.113, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.107, %lor.lhs.false.105
  %70 = load i32, i32* %dest_regno, align 4
  %cmp110 = icmp sge i32 %70, 29
  br i1 %cmp110, label %land.lhs.true.111, label %cond.false

land.lhs.true.111:                                ; preds = %lor.lhs.false.109
  %71 = load i32, i32* %dest_regno, align 4
  %cmp112 = icmp sle i32 %71, 36
  br i1 %cmp112, label %cond.true.113, label %cond.false

cond.true.113:                                    ; preds = %land.lhs.true.111, %land.lhs.true.107, %land.lhs.true.103, %land.lhs.true.99
  %72 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load117 = load i32, i32* %74, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  %idxprom120 = sext i32 %bf.clear119 to i64
  %arrayidx121 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom120
  %75 = load i32, i32* %arrayidx121, align 4
  %cmp122 = icmp eq i32 %75, 5
  br i1 %cmp122, label %lor.end.133, label %lor.rhs.123

lor.rhs.123:                                      ; preds = %cond.true.113
  %76 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load127 = load i32, i32* %78, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %idxprom130 = sext i32 %bf.clear129 to i64
  %arrayidx131 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom130
  %79 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp eq i32 %79, 6
  br label %lor.end.133

lor.end.133:                                      ; preds = %lor.rhs.123, %cond.true.113
  %80 = phi i1 [ true, %cond.true.113 ], [ %cmp132, %lor.rhs.123 ]
  %cond = select i1 %80, i32 2, i32 1
  br label %cond.end.174

cond.false:                                       ; preds = %land.lhs.true.111, %lor.lhs.false.109
  %81 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load137 = load i32, i32* %83, align 8
  %bf.lshr138 = lshr i32 %bf.load137, 16
  %bf.clear139 = and i32 %bf.lshr138, 255
  %cmp140 = icmp eq i32 %bf.clear139, 18
  br i1 %cmp140, label %cond.true.141, label %cond.false.144

cond.true.141:                                    ; preds = %cond.false
  %84 = load i32, i32* @target_flags, align 4
  %and = and i32 %84, 33554432
  %tobool142 = icmp ne i32 %and, 0
  %cond143 = select i1 %tobool142, i32 2, i32 3
  br label %cond.end.172

cond.false.144:                                   ; preds = %cond.false
  %85 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load148 = load i32, i32* %87, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 16
  %bf.clear150 = and i32 %bf.lshr149, 255
  %cmp151 = icmp eq i32 %bf.clear150, 24
  br i1 %cmp151, label %cond.true.152, label %cond.false.156

cond.true.152:                                    ; preds = %cond.false.144
  %88 = load i32, i32* @target_flags, align 4
  %and153 = and i32 %88, 33554432
  %tobool154 = icmp ne i32 %and153, 0
  %cond155 = select i1 %tobool154, i32 4, i32 6
  br label %cond.end

cond.false.156:                                   ; preds = %cond.false.144
  %89 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 0
  %rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx159, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load160 = load i32, i32* %91, align 8
  %bf.lshr161 = lshr i32 %bf.load160, 16
  %bf.clear162 = and i32 %bf.lshr161, 255
  %idxprom163 = sext i32 %bf.clear162 to i64
  %arrayidx164 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom163
  %92 = load i8, i8* %arrayidx164, align 1
  %conv = zext i8 %92 to i32
  %93 = load i32, i32* @target_flags, align 4
  %and165 = and i32 %93, 33554432
  %tobool166 = icmp ne i32 %and165, 0
  %cond167 = select i1 %tobool166, i32 8, i32 4
  %add = add nsw i32 %conv, %cond167
  %sub = sub nsw i32 %add, 1
  %94 = load i32, i32* @target_flags, align 4
  %and168 = and i32 %94, 33554432
  %tobool169 = icmp ne i32 %and168, 0
  %cond170 = select i1 %tobool169, i32 8, i32 4
  %div = sdiv i32 %sub, %cond170
  br label %cond.end

cond.end:                                         ; preds = %cond.false.156, %cond.true.152
  %cond171 = phi i32 [ %cond155, %cond.true.152 ], [ %div, %cond.false.156 ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end, %cond.true.141
  %cond173 = phi i32 [ %cond143, %cond.true.141 ], [ %cond171, %cond.end ]
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.end.172, %lor.end.133
  %cond175 = phi i32 [ %cond, %lor.end.133 ], [ %cond173, %cond.end.172 ]
  br label %cond.end.177

cond.false.176:                                   ; preds = %if.then.91
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.176, %cond.end.174
  %cond178 = phi i32 [ %cond175, %cond.end.174 ], [ 1, %cond.false.176 ]
  %add179 = add nsw i32 %62, %cond178
  store i32 %add179, i32* %dest_endregno, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtuint182 = bitcast %union.rtunion_def* %arrayidx181 to i32*
  %96 = load i32, i32* %rtuint182, align 4
  store i32 %96, i32* %regno, align 4
  %97 = load i32, i32* %regno, align 4
  %98 = load i32, i32* %regno, align 4
  %cmp183 = icmp slt i32 %98, 53
  br i1 %cmp183, label %cond.true.185, label %cond.false.269

cond.true.185:                                    ; preds = %cond.end.177
  %99 = load i32, i32* %regno, align 4
  %cmp186 = icmp sge i32 %99, 8
  br i1 %cmp186, label %land.lhs.true.188, label %lor.lhs.false.191

land.lhs.true.188:                                ; preds = %cond.true.185
  %100 = load i32, i32* %regno, align 4
  %cmp189 = icmp sle i32 %100, 15
  br i1 %cmp189, label %cond.true.209, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %land.lhs.true.188, %cond.true.185
  %101 = load i32, i32* %regno, align 4
  %cmp192 = icmp sge i32 %101, 21
  br i1 %cmp192, label %land.lhs.true.194, label %lor.lhs.false.197

land.lhs.true.194:                                ; preds = %lor.lhs.false.191
  %102 = load i32, i32* %regno, align 4
  %cmp195 = icmp sle i32 %102, 28
  br i1 %cmp195, label %cond.true.209, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %land.lhs.true.194, %lor.lhs.false.191
  %103 = load i32, i32* %regno, align 4
  %cmp198 = icmp sge i32 %103, 45
  br i1 %cmp198, label %land.lhs.true.200, label %lor.lhs.false.203

land.lhs.true.200:                                ; preds = %lor.lhs.false.197
  %104 = load i32, i32* %regno, align 4
  %cmp201 = icmp sle i32 %104, 52
  br i1 %cmp201, label %cond.true.209, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %land.lhs.true.200, %lor.lhs.false.197
  %105 = load i32, i32* %regno, align 4
  %cmp204 = icmp sge i32 %105, 29
  br i1 %cmp204, label %land.lhs.true.206, label %cond.false.227

land.lhs.true.206:                                ; preds = %lor.lhs.false.203
  %106 = load i32, i32* %regno, align 4
  %cmp207 = icmp sle i32 %106, 36
  br i1 %cmp207, label %cond.true.209, label %cond.false.227

cond.true.209:                                    ; preds = %land.lhs.true.206, %land.lhs.true.200, %land.lhs.true.194, %land.lhs.true.188
  %107 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load210 = load i32, i32* %108, align 8
  %bf.lshr211 = lshr i32 %bf.load210, 16
  %bf.clear212 = and i32 %bf.lshr211, 255
  %idxprom213 = sext i32 %bf.clear212 to i64
  %arrayidx214 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom213
  %109 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp eq i32 %109, 5
  br i1 %cmp215, label %lor.end.225, label %lor.rhs.217

lor.rhs.217:                                      ; preds = %cond.true.209
  %110 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load218 = load i32, i32* %111, align 8
  %bf.lshr219 = lshr i32 %bf.load218, 16
  %bf.clear220 = and i32 %bf.lshr219, 255
  %idxprom221 = sext i32 %bf.clear220 to i64
  %arrayidx222 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom221
  %112 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp eq i32 %112, 6
  br label %lor.end.225

lor.end.225:                                      ; preds = %lor.rhs.217, %cond.true.209
  %113 = phi i1 [ true, %cond.true.209 ], [ %cmp223, %lor.rhs.217 ]
  %cond226 = select i1 %113, i32 2, i32 1
  br label %cond.end.267

cond.false.227:                                   ; preds = %land.lhs.true.206, %lor.lhs.false.203
  %114 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load228 = load i32, i32* %115, align 8
  %bf.lshr229 = lshr i32 %bf.load228, 16
  %bf.clear230 = and i32 %bf.lshr229, 255
  %cmp231 = icmp eq i32 %bf.clear230, 18
  br i1 %cmp231, label %cond.true.233, label %cond.false.237

cond.true.233:                                    ; preds = %cond.false.227
  %116 = load i32, i32* @target_flags, align 4
  %and234 = and i32 %116, 33554432
  %tobool235 = icmp ne i32 %and234, 0
  %cond236 = select i1 %tobool235, i32 2, i32 3
  br label %cond.end.265

cond.false.237:                                   ; preds = %cond.false.227
  %117 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load238 = load i32, i32* %118, align 8
  %bf.lshr239 = lshr i32 %bf.load238, 16
  %bf.clear240 = and i32 %bf.lshr239, 255
  %cmp241 = icmp eq i32 %bf.clear240, 24
  br i1 %cmp241, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %cond.false.237
  %119 = load i32, i32* @target_flags, align 4
  %and244 = and i32 %119, 33554432
  %tobool245 = icmp ne i32 %and244, 0
  %cond246 = select i1 %tobool245, i32 4, i32 6
  br label %cond.end.263

cond.false.247:                                   ; preds = %cond.false.237
  %120 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load248 = load i32, i32* %121, align 8
  %bf.lshr249 = lshr i32 %bf.load248, 16
  %bf.clear250 = and i32 %bf.lshr249, 255
  %idxprom251 = sext i32 %bf.clear250 to i64
  %arrayidx252 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom251
  %122 = load i8, i8* %arrayidx252, align 1
  %conv253 = zext i8 %122 to i32
  %123 = load i32, i32* @target_flags, align 4
  %and254 = and i32 %123, 33554432
  %tobool255 = icmp ne i32 %and254, 0
  %cond256 = select i1 %tobool255, i32 8, i32 4
  %add257 = add nsw i32 %conv253, %cond256
  %sub258 = sub nsw i32 %add257, 1
  %124 = load i32, i32* @target_flags, align 4
  %and259 = and i32 %124, 33554432
  %tobool260 = icmp ne i32 %and259, 0
  %cond261 = select i1 %tobool260, i32 8, i32 4
  %div262 = sdiv i32 %sub258, %cond261
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.247, %cond.true.243
  %cond264 = phi i32 [ %cond246, %cond.true.243 ], [ %div262, %cond.false.247 ]
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.end.263, %cond.true.233
  %cond266 = phi i32 [ %cond236, %cond.true.233 ], [ %cond264, %cond.end.263 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %lor.end.225
  %cond268 = phi i32 [ %cond226, %lor.end.225 ], [ %cond266, %cond.end.265 ]
  br label %cond.end.270

cond.false.269:                                   ; preds = %cond.end.177
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.269, %cond.end.267
  %cond271 = phi i32 [ %cond268, %cond.end.267 ], [ 1, %cond.false.269 ]
  %add272 = add nsw i32 %97, %cond271
  store i32 %add272, i32* %endregno, align 4
  %125 = load i32, i32* %dest_regno, align 4
  %126 = load i32, i32* %regno, align 4
  %cmp273 = icmp sge i32 %125, %126
  br i1 %cmp273, label %land.lhs.true.275, label %if.else.279

land.lhs.true.275:                                ; preds = %cond.end.270
  %127 = load i32, i32* %dest_endregno, align 4
  %128 = load i32, i32* %endregno, align 4
  %cmp276 = icmp sle i32 %127, %128
  br i1 %cmp276, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %land.lhs.true.275
  %129 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  call void @delete_computation(%struct.rtx_def* %129)
  br label %if.end.310

if.else.279:                                      ; preds = %land.lhs.true.275, %cond.end.270
  %130 = load i32, i32* %dest_regno, align 4
  %131 = load i32, i32* %regno, align 4
  %cmp280 = icmp sle i32 %130, %131
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.309

land.lhs.true.282:                                ; preds = %if.else.279
  %132 = load i32, i32* %dest_endregno, align 4
  %133 = load i32, i32* %endregno, align 4
  %cmp283 = icmp sge i32 %132, %133
  br i1 %cmp283, label %if.then.285, label %if.end.309

if.then.285:                                      ; preds = %land.lhs.true.282
  %134 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 6
  %rtx289 = bitcast %union.rtunion_def* %arrayidx288 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx289, align 8
  %call290 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 10, %struct.rtx_def* %134, %struct.rtx_def* %136)
  %137 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %fld291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld291, i32 0, i64 6
  %rtx293 = bitcast %union.rtunion_def* %arrayidx292 to %struct.rtx_def**
  store %struct.rtx_def* %call290, %struct.rtx_def** %rtx293, align 8
  %138 = load i32, i32* %dest_regno, align 4
  store i32 %138, i32* %i286, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.302, %if.then.285
  %139 = load i32, i32* %i286, align 4
  %140 = load i32, i32* %dest_endregno, align 4
  %cmp295 = icmp slt i32 %139, %140
  br i1 %cmp295, label %for.body.297, label %for.end.304

for.body.297:                                     ; preds = %for.cond.294
  %141 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %142 = load i32, i32* %i286, align 4
  %call298 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %141, i32 10, i32 %142)
  %tobool299 = icmp ne %struct.rtx_def* %call298, null
  br i1 %tobool299, label %if.end.301, label %if.then.300

if.then.300:                                      ; preds = %for.body.297
  br label %for.end.304

if.end.301:                                       ; preds = %for.body.297
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %143 = load i32, i32* %i286, align 4
  %inc303 = add nsw i32 %143, 1
  store i32 %inc303, i32* %i286, align 4
  br label %for.cond.294

for.end.304:                                      ; preds = %if.then.300, %for.cond.294
  %144 = load i32, i32* %i286, align 4
  %145 = load i32, i32* %dest_endregno, align 4
  %cmp305 = icmp eq i32 %144, %145
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.end.304
  %146 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  call void @delete_computation(%struct.rtx_def* %146)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %for.end.304
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %land.lhs.true.282, %if.else.279
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.278
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %land.lhs.true.84, %if.else
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.end.80
  br label %for.end.329

if.end.313:                                       ; preds = %if.end.39
  %147 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call314 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %147, %struct.rtx_def* %148)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.326

if.then.316:                                      ; preds = %if.end.313
  %149 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 6
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 1
  %rtx322 = bitcast %union.rtunion_def* %arrayidx321 to %struct.rtx_def**
  store %struct.rtx_def* %150, %struct.rtx_def** %rtx322, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %fld323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld323, i32 0, i64 6
  %rtx325 = bitcast %union.rtunion_def* %arrayidx324 to %struct.rtx_def**
  store %struct.rtx_def* %152, %struct.rtx_def** %rtx325, align 8
  br label %for.end.329

if.end.326:                                       ; preds = %if.end.313
  br label %for.inc.327

for.inc.327:                                      ; preds = %if.end.326
  %154 = load %struct.rtx_def*, %struct.rtx_def** %our_prev, align 8
  %call328 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %154)
  store %struct.rtx_def* %call328, %struct.rtx_def** %our_prev, align 8
  br label %for.cond

for.end.329:                                      ; preds = %if.then.316, %if.end.312, %if.then.49, %if.then.38, %if.then.26, %if.then, %land.end
  ret void
}

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_(i32, i32) #1

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare i32 @apply_change_group() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
