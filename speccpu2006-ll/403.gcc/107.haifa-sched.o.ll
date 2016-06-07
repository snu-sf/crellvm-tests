; ModuleID = 'haifa-sched.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.haifa_insn_data = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.function_unit_desc = type { i8*, i32, i32, i32, i32, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)* }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%union.tree_node = type opaque
%struct.attribute_spec = type opaque
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.sched_info = type { void (%struct.ready_list*)*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.ready_list = type { %struct.rtx_def**, i32, i32, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@sched_verbose = global i32 0, align 4
@sched_dump = global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@sched_verbose_param = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fix_sched_param: unknown param: %s\00", align 1
@h_i_d = common global %struct.haifa_insn_data* null, align 8
@unit_last_insn = internal global [78 x %struct.rtx_def*] zeroinitializer, align 16
@function_units = external constant [0 x %struct.function_unit_desc], align 8
@unit_tick = internal global [78 x i32] zeroinitializer, align 16
@targetm = external global %struct.gcc_target, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"haifa-sched.c\00", align 1
@__FUNCTION__.rm_line_notes = private unnamed_addr constant [14 x i8] c"rm_line_notes\00", align 1
@line_note_head = internal global %struct.rtx_def** null, align 8
@old_max_uid = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c";; added %d line-number notes\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c";; deleted %d line-number notes\0A\00", align 1
@note_list = internal global %struct.rtx_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@__FUNCTION__.rm_other_notes = private unnamed_addr constant [15 x i8] c"rm_other_notes\00", align 1
@last_scheduled_insn = internal global %struct.rtx_def* null, align 8
@current_sched_info = common global %struct.sched_info* null, align 8
@__FUNCTION__.schedule_block = private unnamed_addr constant [15 x i8] c"schedule_block\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c";;   ======================================================\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c";;   -- basic block %d from %d to %d -- %s reload\0A\00", align 1
@reload_completed = external global i32, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@issue_rate = internal global i32 0, align 4
@q_ptr = internal global i32 0, align 4
@q_size = internal global i32 0, align 4
@last_clock_var = internal global i32 0, align 4
@insn_queue = internal global [128 x %struct.rtx_def*] zeroinitializer, align 16
@clock_var = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c";;\09\09Ready list after queue_to_ready:  \00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\0A;;\09Ready list (t =%3d):  \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c";;\09Ready list (final):  \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [41 x i8] c";;   total time = %d\0A;;   new head = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c";;   new tail = %d\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@n_basic_blocks = external global i32, align 4
@write_symbols = external global i32, align 4
@__FUNCTION__.ready_lastpos = private unnamed_addr constant [14 x i8] c"ready_lastpos\00", align 1
@unit_n_insns = internal global [26 x i32] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [25 x i8] c";;\09\09Q-->Ready: insn %s: \00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"moving to ready without stalls\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"moving to ready with %d stalls\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@__FUNCTION__.ready_remove_first = private unnamed_addr constant [19 x i8] c"ready_remove_first\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c";;\09\09Ready-->Q: insn %s: \00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"queued for %d cycles.\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c";;\09\09--> scheduling insn <<<%d>>> on unit \00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c";;\09\09dependences resolved: insn %s \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"into ready\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"into queue with cost=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fix_sched_param(i8* %param, i8* %val) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %val.addr, align 8
  %call1 = call i32 @atoi(i8* %1) #7
  store i32 %call1, i32* @sched_verbose_param, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %param.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare void @warning(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define i32 @insn_unit(%struct.rtx_def* %insn) #3 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %unit = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %units = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 9
  %3 = load i16, i16* %units, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %unit, align 4
  %4 = load i32, i32* %unit, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %6 = load i32, i32* %rtint5, align 4
  %cmp6 = icmp sge i32 %6, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 4
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %8 = load i32, i32* %rtint10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @recog_memoized_1(%struct.rtx_def* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 4
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %11 = load i32, i32* %rtint13, align 4
  %cmp14 = icmp slt i32 %11, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %cond.end
  store i32 -1, i32* %unit, align 4
  br label %if.end.21

if.else:                                          ; preds = %cond.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call17 = call i32 @function_units_used(%struct.rtx_def* %12)
  store i32 %call17, i32* %unit, align 4
  %13 = load i32, i32* %unit, align 4
  %cmp18 = icmp sge i32 %13, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.else
  %14 = load i32, i32* %unit, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %unit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.16
  %15 = load i32, i32* %unit, align 4
  %cmp22 = icmp sge i32 %15, 0
  br i1 %cmp22, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %16 = load i32, i32* %unit, align 4
  %and = and i32 %16, -32768
  %cmp24 = icmp eq i32 %and, 0
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.21
  %17 = load i32, i32* %unit, align 4
  %conv27 = trunc i32 %17 to i16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %19 = load i32, i32* %rtint30, align 4
  %idxprom31 = sext i32 %19 to i64
  %20 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx32 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %20, i64 %idxprom31
  %units33 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx32, i32 0, i32 9
  store i16 %conv27, i16* %units33, align 2
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.26, %lor.lhs.false
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %entry
  %21 = load i32, i32* %unit, align 4
  %cmp36 = icmp sgt i32 %21, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.end.35
  %22 = load i32, i32* %unit, align 4
  %sub = sub nsw i32 %22, 1
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.end.35
  %23 = load i32, i32* %unit, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i32 [ %sub, %cond.true.38 ], [ %23, %cond.false.39 ]
  ret i32 %cond41
}

declare i32 @recog_memoized_1(%struct.rtx_def*) #2

declare i32 @function_units_used(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_unit_last_insn(i32 %instance) #0 {
entry:
  %instance.addr = alloca i32, align 4
  store i32 %instance, i32* %instance.addr, align 4
  %0 = load i32, i32* %instance.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [78 x %struct.rtx_def*], [78 x %struct.rtx_def*]* @unit_last_insn, i32 0, i64 %idxprom
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  ret %struct.rtx_def* %1
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @insn_issue_delay(%struct.rtx_def* %insn) #3 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %delay = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 0, i32* %delay, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @insn_unit(%struct.rtx_def* %0)
  store i32 %call, i32* %unit, align 4
  %1 = load i32, i32* %unit, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %unit, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %blockage_range_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 9
  %3 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function, align 8
  %tobool = icmp ne i32 (%struct.rtx_def*)* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %unit, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom1
  %blockage_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx2, i32 0, i32 10
  %5 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function, align 8
  %tobool3 = icmp ne i32 (%struct.rtx_def*, %struct.rtx_def*)* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %unit, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom5
  %blockage_function7 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx6, i32 0, i32 10
  %7 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function7, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call8 = call i32 %7(%struct.rtx_def* %8, %struct.rtx_def* %9)
  store i32 %call8, i32* %delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  br label %if.end.32

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %10 = load i32, i32* %unit, align 4
  %neg = xor i32 %10, -1
  store i32 %neg, i32* %unit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %unit, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %unit, align 4
  %and = and i32 %12, 1
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.31

land.lhs.true.11:                                 ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom12
  %blockage_range_function14 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx13, i32 0, i32 9
  %14 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function14, align 8
  %tobool15 = icmp ne i32 (%struct.rtx_def*)* %14, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.31

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom17
  %blockage_function19 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx18, i32 0, i32 10
  %16 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function19, align 8
  %tobool20 = icmp ne i32 (%struct.rtx_def*, %struct.rtx_def*)* %16, null
  br i1 %tobool20, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %land.lhs.true.16
  %17 = load i32, i32* %delay, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom22
  %blockage_function24 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx23, i32 0, i32 10
  %19 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function24, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call25 = call i32 %19(%struct.rtx_def* %20, %struct.rtx_def* %21)
  %cmp26 = icmp sgt i32 %17, %call25
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.21
  %22 = load i32, i32* %delay, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom27
  %blockage_function29 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx28, i32 0, i32 10
  %24 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function29, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call30 = call i32 %24(%struct.rtx_def* %25, %struct.rtx_def* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %call30, %cond.false ]
  store i32 %cond, i32* %delay, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %cond.end, %land.lhs.true.16, %land.lhs.true.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  %28 = load i32, i32* %unit, align 4
  %shr = ashr i32 %28, 1
  store i32 %shr, i32* %unit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %if.end
  %29 = load i32, i32* %delay, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @actual_hazard_this_instance(i32 %unit, i32 %instance, %struct.rtx_def* %insn, i32 %clock, i32 %cost) #0 {
entry:
  %unit.addr = alloca i32, align 4
  %instance.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %clock.addr = alloca i32, align 4
  %cost.addr = alloca i32, align 4
  %tick = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store i32 %instance, i32* %instance.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %clock, i32* %clock.addr, align 4
  store i32 %cost, i32* %cost.addr, align 4
  %0 = load i32, i32* %instance.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [78 x i32], [78 x i32]* @unit_tick, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %tick, align 4
  %2 = load i32, i32* %tick, align 4
  %3 = load i32, i32* %clock.addr, align 4
  %sub = sub nsw i32 %2, %3
  %4 = load i32, i32* %cost.addr, align 4
  %cmp = icmp sgt i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %unit.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom1
  %blockage_range_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx2, i32 0, i32 9
  %6 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function, align 8
  %tobool = icmp ne i32 (%struct.rtx_def*)* %6, null
  br i1 %tobool, label %if.then.3, label %if.end.22

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %unit.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom4
  %blockage_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx5, i32 0, i32 10
  %8 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function, align 8
  %tobool6 = icmp ne i32 (%struct.rtx_def*, %struct.rtx_def*)* %8, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.3
  %9 = load i32, i32* %unit.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom8
  %blockage_function10 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx9, i32 0, i32 10
  %10 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %blockage_function10, align 8
  %11 = load i32, i32* %instance.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [78 x %struct.rtx_def*], [78 x %struct.rtx_def*]* @unit_last_insn, i32 0, i64 %idxprom11
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 %10(%struct.rtx_def* %12, %struct.rtx_def* %13)
  %14 = load i32, i32* %unit.addr, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom13
  %max_blockage = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx14, i32 0, i32 8
  %15 = load i32, i32* %max_blockage, align 4
  %sub15 = sub nsw i32 %call, %15
  %16 = load i32, i32* %tick, align 4
  %add = add nsw i32 %16, %sub15
  store i32 %add, i32* %tick, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %17 = load i32, i32* %unit.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call16 = call i32 @blockage_range(i32 %17, %struct.rtx_def* %18)
  %and = and i32 %call16, 65535
  %19 = load i32, i32* %unit.addr, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom17
  %max_blockage19 = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx18, i32 0, i32 8
  %20 = load i32, i32* %max_blockage19, align 4
  %sub20 = sub nsw i32 %and, %20
  %21 = load i32, i32* %tick, align 4
  %add21 = add nsw i32 %21, %sub20
  store i32 %add21, i32* %tick, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %22 = load i32, i32* %tick, align 4
  %23 = load i32, i32* %clock.addr, align 4
  %sub23 = sub nsw i32 %22, %23
  %24 = load i32, i32* %cost.addr, align 4
  %cmp24 = icmp sgt i32 %sub23, %24
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %25 = load i32, i32* %tick, align 4
  %26 = load i32, i32* %clock.addr, align 4
  %sub26 = sub nsw i32 %25, %26
  store i32 %sub26, i32* %cost.addr, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  %27 = load i32, i32* %cost.addr, align 4
  ret i32 %27
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @blockage_range(i32 %unit, %struct.rtx_def* %insn) #3 {
entry:
  %unit.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %blockage = alloca i32, align 4
  %range = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %blockage2 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 5
  %3 = load i32, i32* %blockage2, align 4
  store i32 %3, i32* %blockage, align 4
  %4 = load i32, i32* %blockage, align 4
  %shr = lshr i32 %4, 16
  %5 = load i32, i32* %unit.addr, align 4
  %add = add nsw i32 %5, 1
  %cmp = icmp ne i32 %shr, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %unit.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom3
  %blockage_range_function = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx4, i32 0, i32 9
  %7 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %blockage_range_function, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 %7(%struct.rtx_def* %8)
  store i32 %call, i32* %range, align 4
  %9 = load i32, i32* %unit.addr, align 4
  %add5 = add nsw i32 %9, 1
  %shl = shl i32 %add5, 8
  %10 = load i32, i32* %range, align 4
  %shr6 = lshr i32 %10, 16
  %or = or i32 %shl, %shr6
  %shl7 = shl i32 %or, 8
  %11 = load i32, i32* %range, align 4
  %and = and i32 %11, 65535
  %or8 = or i32 %shl7, %and
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %13 = load i32, i32* %rtint11, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx13 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %14, i64 %idxprom12
  %blockage14 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx13, i32 0, i32 5
  store i32 %or8, i32* %blockage14, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %blockage, align 4
  %shr15 = lshr i32 %15, 8
  %and16 = and i32 %shr15, 255
  %shl17 = shl i32 %and16, 16
  %16 = load i32, i32* %blockage, align 4
  %and18 = and i32 %16, 255
  %or19 = or i32 %shl17, %and18
  store i32 %or19, i32* %range, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %range, align 4
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define i32 @insn_cost(%struct.rtx_def* %insn, %struct.rtx_def* %link, %struct.rtx_def* %used) #3 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %link.addr = alloca %struct.rtx_def*, align 8
  %used.addr = alloca %struct.rtx_def*, align 8
  %cost = alloca i32, align 4
  %ncost = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %link, %struct.rtx_def** %link.addr, align 8
  store %struct.rtx_def* %used, %struct.rtx_def** %used.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %2, i64 %idxprom
  %cost2 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 8
  %3 = load i16, i16* %cost2, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %cost, align 4
  %4 = load i32, i32* %cost, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 4
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %6 = load i32, i32* %rtint6, align 4
  %cmp7 = icmp sge i32 %6, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 4
  %rtint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %8 = load i32, i32* %rtint11, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @recog_memoized_1(%struct.rtx_def* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 4
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %11 = load i32, i32* %rtint14, align 4
  %cmp15 = icmp slt i32 %11, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %cond.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %13 = load i32, i32* %rtint20, align 4
  %idxprom21 = sext i32 %13 to i64
  %14 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx22 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %14, i64 %idxprom21
  %cost23 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx22, i32 0, i32 8
  store i16 1, i16* %cost23, align 2
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call24 = call i32 @result_ready_cost(%struct.rtx_def* %15)
  store i32 %call24, i32* %cost, align 4
  %16 = load i32, i32* %cost, align 4
  %cmp25 = icmp slt i32 %16, 1
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else
  store i32 1, i32* %cost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else
  %17 = load i32, i32* %cost, align 4
  %conv28 = trunc i32 %17 to i16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %19 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %19 to i64
  %20 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx33 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %20, i64 %idxprom32
  %cost34 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx33, i32 0, i32 8
  store i16 %conv28, i16* %cost34, align 2
  br label %if.end.35

if.end.35:                                        ; preds = %if.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  %21 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %cmp37 = icmp eq %struct.rtx_def* %21, null
  br i1 %cmp37, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.36
  %22 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %cmp39 = icmp eq %struct.rtx_def* %22, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %cost, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true, %if.end.36
  %24 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 4
  %rtint45 = bitcast %union.rtunion_def* %arrayidx44 to i32*
  %25 = load i32, i32* %rtint45, align 4
  %cmp46 = icmp sge i32 %25, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %if.end.42
  %26 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 4
  %rtint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %27 = load i32, i32* %rtint51, align 4
  br label %cond.end.54

cond.false.52:                                    ; preds = %if.end.42
  %28 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %call53 = call i32 @recog_memoized_1(%struct.rtx_def* %28)
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.48
  %cond55 = phi i32 [ %27, %cond.true.48 ], [ %call53, %cond.false.52 ]
  %29 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 4
  %rtint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %30 = load i32, i32* %rtint58, align 4
  %cmp59 = icmp slt i32 %30, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %cond.end.54
  %31 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load = load i32, i32* %32, align 8
  %bf.clear = and i32 %bf.load, -33554433
  %bf.set = or i32 %bf.clear, 33554432
  store i32 %bf.set, i32* %32, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %cond.end.54
  %33 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load63 = load i32, i32* %34, align 8
  %bf.lshr = lshr i32 %bf.load63, 25
  %bf.clear64 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear64, 0
  br i1 %tobool, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  store i32 0, i32* %cost, align 4
  br label %if.end.90

if.else.66:                                       ; preds = %if.end.62
  %35 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load67 = load i32, i32* %36, align 8
  %bf.lshr68 = lshr i32 %bf.load67, 24
  %bf.clear69 = and i32 %bf.lshr68, 1
  %tobool70 = icmp ne i32 %bf.clear69, 0
  br i1 %tobool70, label %if.end.89, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %if.else.66
  %37 = load i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 0), align 8
  %tobool72 = icmp ne i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)* %37, null
  br i1 %tobool72, label %if.then.73, label %if.end.89

if.then.73:                                       ; preds = %land.lhs.true.71
  %38 = load i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 0), align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %used.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %42 = load i32, i32* %cost, align 4
  %call74 = call i32 %38(%struct.rtx_def* %39, %struct.rtx_def* %40, %struct.rtx_def* %41, i32 %42)
  store i32 %call74, i32* %ncost, align 4
  %43 = load i32, i32* %ncost, align 4
  %cmp75 = icmp slt i32 %43, 1
  br i1 %cmp75, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %if.then.73
  %44 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load78 = load i32, i32* %45, align 8
  %bf.clear79 = and i32 %bf.load78, -33554433
  %bf.set80 = or i32 %bf.clear79, 33554432
  store i32 %bf.set80, i32* %45, align 8
  store i32 0, i32* %ncost, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.77, %if.then.73
  %46 = load i32, i32* %cost, align 4
  %47 = load i32, i32* %ncost, align 4
  %cmp82 = icmp eq i32 %46, %47
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.end.81
  %48 = load %struct.rtx_def*, %struct.rtx_def** %link.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load85 = load i32, i32* %49, align 8
  %bf.clear86 = and i32 %bf.load85, -16777217
  %bf.set87 = or i32 %bf.clear86, 16777216
  store i32 %bf.set87, i32* %49, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.end.81
  %50 = load i32, i32* %ncost, align 4
  store i32 %50, i32* %cost, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true.71, %if.else.66
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.65
  %51 = load i32, i32* %cost, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.41, %if.then.17
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @result_ready_cost(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define void @ready_add(%struct.ready_list* %ready, %struct.rtx_def* %insn) #0 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first = getelementptr inbounds %struct.ready_list, %struct.ready_list* %0, i32 0, i32 2
  %1 = load i32, i32* %first, align 4
  %2 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %2, i32 0, i32 3
  %3 = load i32, i32* %n_ready, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %vec = getelementptr inbounds %struct.ready_list, %struct.ready_list* %4, i32 0, i32 0
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %vec, align 8
  %6 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %veclen = getelementptr inbounds %struct.ready_list, %struct.ready_list* %6, i32 0, i32 1
  %7 = load i32, i32* %veclen, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idx.ext
  %8 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready1 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %8, i32 0, i32 3
  %9 = load i32, i32* %n_ready1, align 4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg = sub i64 0, %idx.ext2
  %add.ptr3 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %add.ptr, i64 %idx.neg
  %10 = bitcast %struct.rtx_def** %add.ptr3 to i8*
  %11 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %call = call %struct.rtx_def** @ready_lastpos(%struct.ready_list* %11)
  %12 = bitcast %struct.rtx_def** %call to i8*
  %13 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready4 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %13, i32 0, i32 3
  %14 = load i32, i32* %n_ready4, align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 8, i1 false)
  %15 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %veclen5 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %15, i32 0, i32 1
  %16 = load i32, i32* %veclen5, align 4
  %sub = sub nsw i32 %16, 1
  %17 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first6 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %17, i32 0, i32 2
  store i32 %sub, i32* %first6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first7 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %19, i32 0, i32 2
  %20 = load i32, i32* %first7, align 4
  %21 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready8 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %21, i32 0, i32 3
  %22 = load i32, i32* %n_ready8, align 4
  %sub9 = sub nsw i32 %20, %22
  %idxprom = sext i32 %sub9 to i64
  %23 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %vec10 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %23, i32 0, i32 0
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %vec10, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 %idxprom
  store %struct.rtx_def* %18, %struct.rtx_def** %arrayidx, align 8
  %25 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready11 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %25, i32 0, i32 3
  %26 = load i32, i32* %n_ready11, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %n_ready11, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.rtx_def** @ready_lastpos(%struct.ready_list* %ready) #3 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %0, i32 0, i32 3
  %1 = load i32, i32* %n_ready, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 898, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.ready_lastpos, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %vec = getelementptr inbounds %struct.ready_list, %struct.ready_list* %2, i32 0, i32 0
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %vec, align 8
  %4 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first = getelementptr inbounds %struct.ready_list, %struct.ready_list* %4, i32 0, i32 2
  %5 = load i32, i32* %first, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3, i64 %idx.ext
  %6 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready1 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %6, i32 0, i32 3
  %7 = load i32, i32* %n_ready1, align 4
  %idx.ext2 = sext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext2
  %add.ptr3 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %add.ptr, i64 %idx.neg
  %add.ptr4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %add.ptr3, i64 1
  ret %struct.rtx_def** %add.ptr4
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @get_block_head_tail(i32 %b, %struct.rtx_def** %headp, %struct.rtx_def** %tailp) #0 {
entry:
  %b.addr = alloca i32, align 4
  %headp.addr = alloca %struct.rtx_def**, align 8
  %tailp.addr = alloca %struct.rtx_def**, align 8
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  store i32 %b, i32* %b.addr, align 4
  store %struct.rtx_def** %headp, %struct.rtx_def*** %headp.addr, align 8
  store %struct.rtx_def** %tailp, %struct.rtx_def*** %tailp.addr, align 8
  %0 = load i32, i32* %b.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head1, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %head, align 8
  %4 = load i32, i32* %b.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %cmp = icmp ne %struct.rtx_def* %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp eq i32 %bf.clear, 37
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %head, align 8
  br label %if.end.25

if.else:                                          ; preds = %while.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load8 = load i32, i32* %15, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 37
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.else
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %tail, align 8
  br label %if.end.24

if.else.15:                                       ; preds = %if.else
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load16 = load i32, i32* %19, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 36
  br i1 %cmp18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.else.15
  %20 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 2
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %head, align 8
  br label %if.end

if.else.23:                                       ; preds = %if.else.15
  br label %while.end

if.end:                                           ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.11
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else.23, %while.cond
  %22 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %23 = load %struct.rtx_def**, %struct.rtx_def*** %headp.addr, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %23, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %25 = load %struct.rtx_def**, %struct.rtx_def*** %tailp.addr, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @no_real_insns_p(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 37
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp ne i32 %bf.clear3, 36
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @rm_line_notes(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %next_tail, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp = icmp ne %struct.rtx_def* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 37
  br i1 %cmp1, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %prev, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %call = call %struct.rtx_def* @unlink_line_notes(%struct.rtx_def* %8, %struct.rtx_def* %9)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.rm_line_notes, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %cmp4 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.rm_line_notes, i32 0, i32 0)) #8
  unreachable

if.end.6:                                         ; preds = %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp7 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.rm_line_notes, i32 0, i32 0)) #8
  unreachable

if.end.9:                                         ; preds = %if.end.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @unlink_line_notes(%struct.rtx_def* %insn, %struct.rtx_def* %tail) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %next, align 8
  %9 = load i32, i32* @write_symbols, align 4
  %cmp5 = icmp ne i32 %9, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %11 = load i32, i32* %rtint, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool13 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  store %struct.rtx_def* %16, %struct.rtx_def** %rtx17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %20 = load i32, i32* %rtint21, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx22 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %21, i64 %idxprom
  %line_note = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx22, i32 0, i32 1
  store %struct.rtx_def* %18, %struct.rtx_def** %line_note, align 8
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %while.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %prev, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %24
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define void @save_line_notes(i32 %b, %struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %b.addr = alloca i32, align 4
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %line = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store i32 %b, i32* %b.addr, align 4
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load i32, i32* %b.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.rtx_def**, %struct.rtx_def*** @line_note_head, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1, i64 %idxprom
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %line, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next_tail, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
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
  %cmp2 = icmp eq i32 %bf.clear, 37
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %11 = load i32, i32* %rtint, align 4
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %line, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %15 = load i32, i32* %rtint8, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx10 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %16, i64 %idxprom9
  %line_note = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx10, i32 0, i32 1
  store %struct.rtx_def* %13, %struct.rtx_def** %line_note, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @restore_line_notes(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %line = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %added_notes = alloca i32, align 4
  %next_tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  store i32 0, i32* %added_notes, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %head.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next_tail, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %line, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %8 = load i32, i32* %rtint, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %line, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.98, %for.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp8 = icmp ne %struct.rtx_def* %12, %13
  br i1 %cmp8, label %for.body.9, label %for.end.102

for.body.9:                                       ; preds = %for.cond.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load10 = load i32, i32* %15, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 37
  br i1 %cmp12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %for.body.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %17 = load i32, i32* %rtint16, align 4
  %cmp17 = icmp sgt i32 %17, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %line, align 8
  br label %if.end.97

if.else:                                          ; preds = %land.lhs.true.13, %for.body.9
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp ne i32 %bf.clear20, 37
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.96

land.lhs.true.22:                                 ; preds = %if.else
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %22 = load i32, i32* %rtint25, align 4
  %23 = load i32, i32* @old_max_uid, align 4
  %cmp26 = icmp slt i32 %22, %23
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.96

land.lhs.true.27:                                 ; preds = %land.lhs.true.22
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %25 = load i32, i32* %rtint30, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx31 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %26, i64 %idxprom
  %line_note = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx31, i32 0, i32 1
  %27 = load %struct.rtx_def*, %struct.rtx_def** %line_note, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %note, align 8
  %cmp32 = icmp ne %struct.rtx_def* %27, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.96

land.lhs.true.33:                                 ; preds = %land.lhs.true.27
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %cmp34 = icmp ne %struct.rtx_def* %28, %29
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.96

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %30 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %cmp36 = icmp eq %struct.rtx_def* %30, null
  br i1 %cmp36, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35
  %31 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 4
  %rtint39 = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %32 = load i32, i32* %rtint39, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 4
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %34 = load i32, i32* %rtint42, align 4
  %cmp43 = icmp ne i32 %32, %34
  br i1 %cmp43, label %if.then.51, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx46 to i8**
  %36 = load i8*, i8** %rtstr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtstr49 = bitcast %union.rtunion_def* %arrayidx48 to i8**
  %38 = load i8*, i8** %rtstr49, align 8
  %cmp50 = icmp ne i8* %36, %38
  br i1 %cmp50, label %if.then.51, label %if.end.96

if.then.51:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false, %land.lhs.true.35
  %39 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %line, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %prev, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtint57 = bitcast %union.rtunion_def* %arrayidx56 to i32*
  %43 = load i32, i32* %rtint57, align 4
  %idxprom58 = sext i32 %43 to i64
  %44 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx59 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %44, i64 %idxprom58
  %line_note60 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx59, i32 0, i32 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %line_note60, align 8
  %tobool61 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool61, label %if.then.62, label %if.else.81

if.then.62:                                       ; preds = %if.then.51
  %46 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %47 = load i32, i32* %rtint65, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx67 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %48, i64 %idxprom66
  %line_note68 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx67, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %line_note68, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  store %struct.rtx_def* %49, %struct.rtx_def** %rtx71, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 2
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  store %struct.rtx_def* %51, %struct.rtx_def** %rtx74, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  store %struct.rtx_def* %53, %struct.rtx_def** %rtx77, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 2
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  store %struct.rtx_def* %55, %struct.rtx_def** %rtx80, align 8
  br label %if.end.95

if.else.81:                                       ; preds = %if.then.51
  %57 = load i32, i32* %added_notes, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %added_notes, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 4
  %rtint84 = bitcast %union.rtunion_def* %arrayidx83 to i32*
  %59 = load i32, i32* %rtint84, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %call = call %struct.rtx_def* @emit_note_after(i32 %59, %struct.rtx_def* %60)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtstr87 = bitcast %union.rtunion_def* %arrayidx86 to i8**
  %62 = load i8*, i8** %rtstr87, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 3
  %rtstr90 = bitcast %union.rtunion_def* %arrayidx89 to i8**
  store i8* %62, i8** %rtstr90, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load91 = load i32, i32* %65, align 8
  %bf.lshr = lshr i32 %bf.load91, 30
  %bf.clear92 = and i32 %bf.lshr, 1
  %66 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load93 = load i32, i32* %67, align 8
  %bf.value = and i32 %bf.clear92, 1
  %bf.shl = shl i32 %bf.value, 30
  %bf.clear94 = and i32 %bf.load93, -1073741825
  %bf.set = or i32 %bf.clear94, %bf.shl
  store i32 %bf.set, i32* %67, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.81, %if.then.62
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %lor.lhs.false.44, %land.lhs.true.33, %land.lhs.true.27, %land.lhs.true.22, %if.else
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.18
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 2
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.end.102:                                      ; preds = %for.cond.7
  %70 = load i32, i32* @sched_verbose, align 4
  %tobool103 = icmp ne i32 %70, 0
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %for.end.102
  %71 = load i32, i32* %added_notes, align 4
  %tobool105 = icmp ne i32 %71, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %land.lhs.true.104
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %73 = load i32, i32* %added_notes, align 4
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 %73)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %land.lhs.true.104, %for.end.102
  ret void
}

declare %struct.rtx_def* @emit_note_after(i32, %struct.rtx_def*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rm_redundant_line_notes() #0 {
entry:
  %line = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %active_insn = alloca i32, align 4
  %notes = alloca i32, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %line, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %active_insn, align 4
  store i32 0, i32* %notes, align 4
  %call1 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %for.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.else.37

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %active_insn, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load i32, i32* %notes, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %notes, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  store i8* null, i8** %rtstr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 4
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  store i32 -99, i32* %rtint9, align 4
  br label %if.end.36

if.else:                                          ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %tobool10 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else.35

land.lhs.true.11:                                 ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 4
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %11 = load i32, i32* %rtint14, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 4
  %rtint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %13 = load i32, i32* %rtint17, align 4
  %cmp18 = icmp eq i32 %11, %13
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.35

land.lhs.true.19:                                 ; preds = %land.lhs.true.11
  %14 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtstr22 = bitcast %union.rtunion_def* %arrayidx21 to i8**
  %15 = load i8*, i8** %rtstr22, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtstr25 = bitcast %union.rtunion_def* %arrayidx24 to i8**
  %17 = load i8*, i8** %rtstr25, align 8
  %cmp26 = icmp eq i8* %15, %17
  br i1 %cmp26, label %if.then.27, label %if.else.35

if.then.27:                                       ; preds = %land.lhs.true.19
  %18 = load i32, i32* %notes, align 4
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, i32* %notes, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtstr31 = bitcast %union.rtunion_def* %arrayidx30 to i8**
  store i8* null, i8** %rtstr31, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 4
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  store i32 -99, i32* %rtint34, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %line, align 8
  br label %if.end

if.else.35:                                       ; preds = %land.lhs.true.19, %land.lhs.true.11, %if.else
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %line, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.4
  store i32 0, i32* %active_insn, align 4
  br label %if.end.65

if.else.37:                                       ; preds = %land.lhs.true, %for.body
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load38 = load i32, i32* %24, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 37
  br i1 %cmp40, label %land.lhs.true.41, label %lor.lhs.false

land.lhs.true.41:                                 ; preds = %if.else.37
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 4
  %rtint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %26 = load i32, i32* %rtint44, align 4
  %cmp45 = icmp eq i32 %26, -99
  br i1 %cmp45, label %if.end.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.41, %if.else.37
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load46 = load i32, i32* %28, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 32
  br i1 %cmp48, label %land.lhs.true.49, label %if.then.62

land.lhs.true.49:                                 ; preds = %lor.lhs.false
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load52 = load i32, i32* %31, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 48
  br i1 %cmp54, label %if.end.64, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 3
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load59 = load i32, i32* %34, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 49
  br i1 %cmp61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false
  %35 = load i32, i32* %active_insn, align 4
  %inc63 = add nsw i32 %35, 1
  store i32 %inc63, i32* %active_insn, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %lor.lhs.false.55, %land.lhs.true.49, %land.lhs.true.41
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* @sched_verbose, align 4
  %tobool69 = icmp ne i32 %38, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.74

land.lhs.true.70:                                 ; preds = %for.end
  %39 = load i32, i32* %notes, align 4
  %tobool71 = icmp ne i32 %39, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.70
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %41 = load i32, i32* %notes, align 4
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i32 %41)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.70, %for.end
  ret void
}

declare %struct.rtx_def* @get_insns() #2

declare %struct.rtx_def* @get_last_insn() #2

; Function Attrs: nounwind uwtable
define void @rm_other_notes(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @note_list, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 105
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %next_tail, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp4 = icmp ne %struct.rtx_def* %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 37
  br i1 %cmp8, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %for.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %prev, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %call = call %struct.rtx_def* @unlink_other_notes(%struct.rtx_def* %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp11 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.rm_other_notes, i32 0, i32 0)) #8
  unreachable

if.end.14:                                        ; preds = %if.then.10
  %17 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %cmp15 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1383, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.rm_other_notes, i32 0, i32 0)) #8
  unreachable

if.end.18:                                        ; preds = %if.end.14
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp19 = icmp eq %struct.rtx_def* %19, %20
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1385, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.rm_other_notes, i32 0, i32 0)) #8
  unreachable

if.end.22:                                        ; preds = %if.end.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @unlink_other_notes(%struct.rtx_def* %insn, %struct.rtx_def* %tail) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %next, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %10, %struct.rtx_def** %rtx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool8 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %13, %struct.rtx_def** %rtx12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %16 = load i32, i32* %rtint, align 4
  %cmp16 = icmp ne i32 %16, -96
  br i1 %cmp16, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 4
  %rtint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %18 = load i32, i32* %rtint19, align 4
  %cmp20 = icmp ne i32 %18, -95
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.51

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 4
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %20 = load i32, i32* %rtint24, align 4
  %cmp25 = icmp ne i32 %20, -83
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.51

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 4
  %rtint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %22 = load i32, i32* %rtint29, align 4
  %cmp30 = icmp ne i32 %22, -82
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.51

land.lhs.true.31:                                 ; preds = %land.lhs.true.26
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 4
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %24 = load i32, i32* %rtint34, align 4
  %cmp35 = icmp ne i32 %24, -86
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.51

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 4
  %rtint39 = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %26 = load i32, i32* %rtint39, align 4
  %cmp40 = icmp ne i32 %26, -85
  br i1 %cmp40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %land.lhs.true.36
  %27 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  store %struct.rtx_def* %27, %struct.rtx_def** %rtx44, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %tobool45 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.41
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 2
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  store %struct.rtx_def* %30, %struct.rtx_def** %rtx49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.then.41
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** @note_list, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true, %if.end.13
  %33 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %34
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @sched_emit_insn(%struct.rtx_def* %pat) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %call = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** @last_scheduled_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %3
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define void @schedule_block(i32 %b, i32 %rgn_n_insns) #0 {
entry:
  %b.addr = alloca i32, align 4
  %rgn_n_insns.addr = alloca i32, align 4
  %ready = alloca %struct.ready_list, align 8
  %can_issue_more = alloca i32, align 4
  %prev_head = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %cost = alloca i32, align 4
  %note_head = alloca %struct.rtx_def*, align 8
  store i32 %b, i32* %b.addr, align 4
  store i32 %rgn_n_insns, i32* %rgn_n_insns.addr, align 4
  %0 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %prev_head1 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %0, i32 0, i32 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %prev_head1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev_head, align 8
  %2 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %next_tail2 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %2, i32 0, i32 9
  %3 = load %struct.rtx_def*, %struct.rtx_def** %next_tail2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %next_tail, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %head, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %tail, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %cmp = icmp eq %struct.rtx_def* %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv, 105
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1668, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.schedule_block, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load i32, i32* @sched_verbose, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %16 = load i32, i32* %b.addr, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %18 = load i32, i32* %rtint, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %20 = load i32, i32* %rtint14, align 4
  %21 = load i32, i32* @reload_completed, align 4
  %tobool15 = icmp ne i32 %21, 0
  %cond = select i1 %tobool15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0), i32 %16, i32 %18, i32 %20, i8* %cond)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  call void @visualize_alloc()
  call void @init_block_visualization()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.9, %if.end
  call void @clear_units()
  %24 = load i32, i32* %rgn_n_insns.addr, align 4
  %add = add nsw i32 %24, 1
  %25 = load i32, i32* @issue_rate, align 4
  %add20 = add nsw i32 %add, %25
  %veclen = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 1
  store i32 %add20, i32* %veclen, align 4
  %veclen21 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 1
  %26 = load i32, i32* %veclen21, align 4
  %sub = sub nsw i32 %26, 1
  %first = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 2
  store i32 %sub, i32* %first, align 4
  %veclen22 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 1
  %27 = load i32, i32* %veclen22, align 4
  %conv23 = sext i32 %27 to i64
  %mul = mul i64 %conv23, 8
  %call24 = call noalias i8* @xmalloc(i64 %mul)
  %28 = bitcast i8* %call24 to %struct.rtx_def**
  %vec = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 0
  store %struct.rtx_def** %28, %struct.rtx_def*** %vec, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  store i32 0, i32* %n_ready, align 4
  %29 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %init_ready_list = getelementptr inbounds %struct.sched_info, %struct.sched_info* %29, i32 0, i32 0
  %30 = load void (%struct.ready_list*)*, void (%struct.ready_list*)** %init_ready_list, align 8
  call void %30(%struct.ready_list* %ready)
  %31 = load void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 4), align 8
  %tobool25 = icmp ne void (%struct._IO_FILE*, i32, i32)* %31, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.19
  %32 = load void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 4), align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %34 = load i32, i32* @sched_verbose, align 4
  %veclen27 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 1
  %35 = load i32, i32* %veclen27, align 4
  call void %32(%struct._IO_FILE* %33, i32 %34, i32 %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.19
  %36 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** @last_scheduled_insn, align 8
  store i32 0, i32* @q_ptr, align 4
  store i32 0, i32* @q_size, align 4
  store i32 0, i32* @last_clock_var, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([128 x %struct.rtx_def*]* @insn_queue to i8*), i8 0, i64 1024, i32 1, i1 false)
  store i32 -1, i32* @clock_var, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.100, %if.end.28
  %37 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %schedule_more_p = getelementptr inbounds %struct.sched_info, %struct.sched_info* %37, i32 0, i32 2
  %38 = load i32 ()*, i32 ()** %schedule_more_p, align 8
  %call29 = call i32 %38()
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %while.body, label %while.end.101

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* @clock_var, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @clock_var, align 4
  call void @queue_to_ready(%struct.ready_list* %ready)
  %n_ready31 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %40 = load i32, i32* %n_ready31, align 4
  %cmp32 = icmp eq i32 %40, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1723, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.schedule_block, i32 0, i32 0)) #8
  unreachable

if.end.35:                                        ; preds = %while.body
  %41 = load i32, i32* @sched_verbose, align 4
  %cmp36 = icmp sge i32 %41, 2
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  call void @debug_ready_list(%struct.ready_list* %ready)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  call void @ready_sort(%struct.ready_list* %ready)
  %43 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 6), align 8
  %tobool41 = icmp ne i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)* %43, null
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.40
  %44 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 6), align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %46 = load i32, i32* @sched_verbose, align 4
  %call43 = call %struct.rtx_def** @ready_lastpos(%struct.ready_list* %ready)
  %n_ready44 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %47 = load i32, i32* @clock_var, align 4
  %call45 = call i32 %44(%struct._IO_FILE* %45, i32 %46, %struct.rtx_def** %call43, i32* %n_ready44, i32 %47)
  store i32 %call45, i32* %can_issue_more, align 4
  br label %if.end.46

if.else:                                          ; preds = %if.end.40
  %48 = load i32, i32* @issue_rate, align 4
  store i32 %48, i32* %can_issue_more, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.42
  %49 = load i32, i32* @sched_verbose, align 4
  %tobool47 = icmp ne i32 %49, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %if.end.46
  %50 = load %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 8), align 8
  %tobool49 = icmp ne %struct.rtx_def* (i32, %struct.rtx_def*)* %50, null
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %land.lhs.true.48
  %51 = load %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 8), align 8
  %52 = load i32, i32* @clock_var, align 4
  %53 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %call51 = call %struct.rtx_def* %51(i32 %52, %struct.rtx_def* %53)
  store %struct.rtx_def* %call51, %struct.rtx_def** @last_scheduled_insn, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.end.46
  %54 = load i32, i32* @sched_verbose, align 4
  %tobool53 = icmp ne i32 %54, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.52
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %56 = load i32, i32* @clock_var, align 4
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %56)
  call void @debug_ready_list(%struct.ready_list* %ready)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.52
  br label %while.cond.57

while.cond.57:                                    ; preds = %if.end.97, %if.then.72, %if.end.56
  %n_ready58 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %57 = load i32, i32* %n_ready58, align 4
  %cmp59 = icmp ne i32 %57, 0
  br i1 %cmp59, label %land.lhs.true.61, label %land.end

land.lhs.true.61:                                 ; preds = %while.cond.57
  %58 = load i32, i32* %can_issue_more, align 4
  %tobool62 = icmp ne i32 %58, 0
  br i1 %tobool62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.61
  %59 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %schedule_more_p63 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %59, i32 0, i32 2
  %60 = load i32 ()*, i32 ()** %schedule_more_p63, align 8
  %call64 = call i32 %60()
  %tobool65 = icmp ne i32 %call64, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.61, %while.cond.57
  %61 = phi i1 [ false, %land.lhs.true.61 ], [ false, %while.cond.57 ], [ %tobool65, %land.rhs ]
  br i1 %61, label %while.body.66, label %while.end

while.body.66:                                    ; preds = %land.end
  %call67 = call %struct.rtx_def* @ready_remove_first(%struct.ready_list* %ready)
  store %struct.rtx_def* %call67, %struct.rtx_def** %insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call68 = call i32 @insn_unit(%struct.rtx_def* %62)
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %64 = load i32, i32* @clock_var, align 4
  %call69 = call i32 @actual_hazard(i32 %call68, %struct.rtx_def* %63, i32 %64, i32 0)
  store i32 %call69, i32* %cost, align 4
  %65 = load i32, i32* %cost, align 4
  %cmp70 = icmp sge i32 %65, 1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.body.66
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %67 = load i32, i32* %cost, align 4
  call void @queue_insn(%struct.rtx_def* %66, i32 %67)
  br label %while.cond.57

if.end.73:                                        ; preds = %while.body.66
  %68 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %can_schedule_ready_p = getelementptr inbounds %struct.sched_info, %struct.sched_info* %68, i32 0, i32 1
  %69 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %can_schedule_ready_p, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call74 = call i32 %69(%struct.rtx_def* %70)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  br label %next

if.end.77:                                        ; preds = %if.end.73
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %call78 = call %struct.rtx_def* @move_insn(%struct.rtx_def* %71, %struct.rtx_def* %72)
  store %struct.rtx_def* %call78, %struct.rtx_def** @last_scheduled_insn, align 8
  %73 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 3), align 8
  %tobool79 = icmp ne i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)* %73, null
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.end.77
  %74 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 3), align 8
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %76 = load i32, i32* @sched_verbose, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %78 = load i32, i32* %can_issue_more, align 4
  %call81 = call i32 %74(%struct._IO_FILE* %75, i32 %76, %struct.rtx_def* %77, i32 %78)
  store i32 %call81, i32* %can_issue_more, align 4
  br label %if.end.83

if.else.82:                                       ; preds = %if.end.77
  %79 = load i32, i32* %can_issue_more, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %can_issue_more, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.80
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %81 = load i32, i32* @clock_var, align 4
  call void @schedule_insn(%struct.rtx_def* %80, %struct.ready_list* %ready, i32 %81)
  br label %next

next:                                             ; preds = %if.end.83, %if.then.76
  %82 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 7), align 8
  %tobool84 = icmp ne i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)* %82, null
  br i1 %tobool84, label %if.then.85, label %if.end.97

if.then.85:                                       ; preds = %next
  %n_ready86 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %83 = load i32, i32* %n_ready86, align 4
  %cmp87 = icmp sgt i32 %83, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.85
  call void @ready_sort(%struct.ready_list* %ready)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.then.85
  %84 = load i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 7), align 8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %86 = load i32, i32* @sched_verbose, align 4
  %n_ready91 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %87 = load i32, i32* %n_ready91, align 4
  %tobool92 = icmp ne i32 %87, 0
  br i1 %tobool92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.90
  %call93 = call %struct.rtx_def** @ready_lastpos(%struct.ready_list* %ready)
  br label %cond.end

cond.false:                                       ; preds = %if.end.90
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond94 = phi %struct.rtx_def** [ %call93, %cond.true ], [ null, %cond.false ]
  %n_ready95 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 3
  %88 = load i32, i32* @clock_var, align 4
  %call96 = call i32 %84(%struct._IO_FILE* %85, i32 %86, %struct.rtx_def** %cond94, i32* %n_ready95, i32 %88)
  store i32 %call96, i32* %can_issue_more, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %cond.end, %next
  br label %while.cond.57

while.end:                                        ; preds = %land.end
  %89 = load i32, i32* @sched_verbose, align 4
  %tobool98 = icmp ne i32 %89, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %while.end
  %90 = load i32, i32* @clock_var, align 4
  call void @visualize_scheduled_insns(i32 %90)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %while.end
  br label %while.cond

while.end.101:                                    ; preds = %while.cond
  %91 = load void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 5), align 8
  %tobool102 = icmp ne void (%struct._IO_FILE*, i32)* %91, null
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %while.end.101
  %92 = load void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 5), align 8
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %94 = load i32, i32* @sched_verbose, align 4
  call void %92(%struct._IO_FILE* %93, i32 %94)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %while.end.101
  %95 = load i32, i32* @sched_verbose, align 4
  %tobool105 = icmp ne i32 %95, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  call void @debug_ready_list(%struct.ready_list* %ready)
  call void @print_block_visualization(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %97 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %queue_must_finish_empty = getelementptr inbounds %struct.sched_info, %struct.sched_info* %97, i32 0, i32 12
  %bf.load109 = load i8, i8* %queue_must_finish_empty, align 8
  %bf.clear110 = and i8 %bf.load109, 1
  %bf.cast = zext i8 %bf.clear110 to i32
  %tobool111 = icmp ne i32 %bf.cast, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %if.end.108
  %98 = load i32, i32* @q_size, align 4
  %cmp113 = icmp ne i32 %98, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.112
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.schedule_block, i32 0, i32 0)) #8
  unreachable

if.end.116:                                       ; preds = %land.lhs.true.112, %if.end.108
  %99 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 2
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  store %struct.rtx_def* %100, %struct.rtx_def** %head, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  store %struct.rtx_def* %101, %struct.rtx_def** %tail, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %cmp120 = icmp ne %struct.rtx_def* %102, null
  br i1 %cmp120, label %if.then.122, label %if.end.151

if.then.122:                                      ; preds = %if.end.116
  %103 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %note_head, align 8
  br label %while.cond.123

while.cond.123:                                   ; preds = %while.body.128, %if.then.122
  %104 = load %struct.rtx_def*, %struct.rtx_def** %note_head, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %tobool127 = icmp ne %struct.rtx_def* %105, null
  br i1 %tobool127, label %while.body.128, label %while.end.132

while.body.128:                                   ; preds = %while.cond.123
  %106 = load %struct.rtx_def*, %struct.rtx_def** %note_head, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %note_head, align 8
  br label %while.cond.123

while.end.132:                                    ; preds = %while.cond.123
  %108 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 1
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %note_head, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 1
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  store %struct.rtx_def* %109, %struct.rtx_def** %rtx138, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %note_head, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 1
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 2
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  store %struct.rtx_def* %111, %struct.rtx_def** %rtx144, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 1
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  store %struct.rtx_def* %114, %struct.rtx_def** %rtx147, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** @note_list, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 2
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  store %struct.rtx_def* %116, %struct.rtx_def** %rtx150, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %note_head, align 8
  store %struct.rtx_def* %118, %struct.rtx_def** %head, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %while.end.132, %if.end.116
  %119 = load i32, i32* @sched_verbose, align 4
  %tobool152 = icmp ne i32 %119, 0
  br i1 %tobool152, label %if.then.153, label %if.end.162

if.then.153:                                      ; preds = %if.end.151
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %121 = load i32, i32* @clock_var, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtint156 = bitcast %union.rtunion_def* %arrayidx155 to i32*
  %123 = load i32, i32* %rtint156, align 4
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %121, i32 %123)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtint160 = bitcast %union.rtunion_def* %arrayidx159 to i32*
  %126 = load i32, i32* %rtint160, align 4
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 %126)
  call void @visualize_free()
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.153, %if.end.151
  %127 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %128 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %head163 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %128, i32 0, i32 10
  store %struct.rtx_def* %127, %struct.rtx_def** %head163, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %130 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %tail164 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %130, i32 0, i32 11
  store %struct.rtx_def* %129, %struct.rtx_def** %tail164, align 8
  %vec165 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %ready, i32 0, i32 0
  %131 = load %struct.rtx_def**, %struct.rtx_def*** %vec165, align 8
  %132 = bitcast %struct.rtx_def** %131 to i8*
  call void @free(i8* %132) #4
  ret void
}

declare void @visualize_alloc() #2

declare void @init_block_visualization() #2

; Function Attrs: nounwind uwtable
define internal void @clear_units() #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* bitcast ([78 x %struct.rtx_def*]* @unit_last_insn to i8*), i8 0, i64 624, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([78 x i32]* @unit_tick to i8*), i8 0, i64 312, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([26 x i32]* @unit_n_insns to i8*), i8 0, i64 104, i32 1, i1 false)
  ret void
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @queue_to_ready(%struct.ready_list* %ready) #0 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %stalls = alloca i32, align 4
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load i32, i32* @q_ptr, align 4
  %add = add nsw i32 %0, 1
  %and = and i32 %add, 127
  store i32 %and, i32* @q_ptr, align 4
  %1 = load i32, i32* @q_ptr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  %6 = load i32, i32* @q_size, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* @q_size, align 4
  %7 = load i32, i32* @sched_verbose, align 4
  %cmp = icmp sge i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %9 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn = getelementptr inbounds %struct.sched_info, %struct.sched_info* %9, i32 0, i32 5
  %10 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i8* %10(%struct.rtx_def* %11, i32 0)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @ready_add(%struct.ready_list* %12, %struct.rtx_def* %13)
  %14 = load i32, i32* @sched_verbose, align 4
  %cmp3 = icmp sge i32 %14, 2
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* @q_ptr, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom10
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx11, align 8
  %19 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %19, i32 0, i32 3
  %20 = load i32, i32* %n_ready, align 4
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.63

if.then.13:                                       ; preds = %for.end
  store i32 1, i32* %stalls, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.54, %if.then.13
  %21 = load i32, i32* %stalls, align 4
  %cmp15 = icmp slt i32 %21, 128
  br i1 %cmp15, label %for.body.16, label %for.end.55

for.body.16:                                      ; preds = %for.cond.14
  %22 = load i32, i32* @q_ptr, align 4
  %23 = load i32, i32* %stalls, align 4
  %add17 = add nsw i32 %22, %23
  %and18 = and i32 %add17, 127
  %idxprom19 = sext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom19
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx20, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %link, align 8
  %tobool21 = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.53

if.then.22:                                       ; preds = %for.body.16
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.40, %if.then.22
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool24 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool24, label %for.body.25, label %for.end.44

for.body.25:                                      ; preds = %for.cond.23
  %26 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %insn, align 8
  %28 = load i32, i32* @q_size, align 4
  %sub29 = sub nsw i32 %28, 1
  store i32 %sub29, i32* @q_size, align 4
  %29 = load i32, i32* @sched_verbose, align 4
  %cmp30 = icmp sge i32 %29, 2
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %for.body.25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %31 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn32 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %31, i32 0, i32 5
  %32 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn32, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call33 = call i8* %32(%struct.rtx_def* %33, i32 0)
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %call33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %for.body.25
  %34 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @ready_add(%struct.ready_list* %34, %struct.rtx_def* %35)
  %36 = load i32, i32* @sched_verbose, align 4
  %cmp36 = icmp sge i32 %36, 2
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %38 = load i32, i32* %stalls, align 4
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i32 %38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %39 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %link, align 8
  br label %for.cond.23

for.end.44:                                       ; preds = %for.cond.23
  %41 = load i32, i32* @q_ptr, align 4
  %42 = load i32, i32* %stalls, align 4
  %add45 = add nsw i32 %41, %42
  %and46 = and i32 %add45, 127
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom47
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx48, align 8
  %43 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready49 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %43, i32 0, i32 3
  %44 = load i32, i32* %n_ready49, align 4
  %tobool50 = icmp ne i32 %44, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.end.44
  br label %for.end.55

if.end.52:                                        ; preds = %for.end.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %for.body.16
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %45 = load i32, i32* %stalls, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %stalls, align 4
  br label %for.cond.14

for.end.55:                                       ; preds = %if.then.51, %for.cond.14
  %46 = load i32, i32* @sched_verbose, align 4
  %tobool56 = icmp ne i32 %46, 0
  br i1 %tobool56, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.end.55
  %47 = load i32, i32* %stalls, align 4
  %tobool57 = icmp ne i32 %47, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %stalls, align 4
  call void @visualize_stall_cycles(i32 %48)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true, %for.end.55
  %49 = load i32, i32* @q_ptr, align 4
  %50 = load i32, i32* %stalls, align 4
  %add60 = add nsw i32 %49, %50
  %and61 = and i32 %add60, 127
  store i32 %and61, i32* @q_ptr, align 4
  %51 = load i32, i32* %stalls, align 4
  %52 = load i32, i32* @clock_var, align 4
  %add62 = add nsw i32 %52, %51
  store i32 %add62, i32* @clock_var, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.59, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @debug_ready_list(%struct.ready_list* %ready) #0 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %p = alloca %struct.rtx_def**, align 8
  %i = alloca i32, align 4
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %0, i32 0, i32 3
  %1 = load i32, i32* %n_ready, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %call = call %struct.rtx_def** @ready_lastpos(%struct.ready_list* %2)
  store %struct.rtx_def** %call, %struct.rtx_def*** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready1 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %4, i32 0, i32 3
  %5 = load i32, i32* %n_ready1, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %7 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn = getelementptr inbounds %struct.sched_info, %struct.sched_info* %7, i32 0, i32 5
  %8 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %p, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %10, i64 %idxprom
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  %call3 = call i8* %8(%struct.rtx_def* %11, i32 0)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ready_sort(%struct.ready_list* %ready) #3 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %first = alloca %struct.rtx_def**, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %call = call %struct.rtx_def** @ready_lastpos(%struct.ready_list* %0)
  store %struct.rtx_def** %call, %struct.rtx_def*** %first, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %1, i32 0, i32 3
  %2 = load i32, i32* %n_ready, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %first, align 8
  %4 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready1 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %4, i32 0, i32 3
  %5 = load i32, i32* %n_ready1, align 4
  call void @swap_sort(%struct.rtx_def** %3, i32 %5)
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready2 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %6, i32 0, i32 3
  %7 = load i32, i32* %n_ready2, align 4
  %cmp3 = icmp sgt i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %first, align 8
  %9 = bitcast %struct.rtx_def** %8 to i8*
  %10 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready5 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %10, i32 0, i32 3
  %11 = load i32, i32* %n_ready5, align 4
  call void @specqsort(i8* %9, i32 %11, i32 8, i32 (...)* bitcast (i32 (i8*, i8*)* @rank_for_schedule to i32 (...)*))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end.6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.rtx_def* @ready_remove_first(%struct.ready_list* %ready) #3 {
entry:
  %ready.addr = alloca %struct.ready_list*, align 8
  %t = alloca %struct.rtx_def*, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  %0 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready = getelementptr inbounds %struct.ready_list, %struct.ready_list* %0, i32 0, i32 3
  %1 = load i32, i32* %n_ready, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 935, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.ready_remove_first, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first = getelementptr inbounds %struct.ready_list, %struct.ready_list* %2, i32 0, i32 2
  %3 = load i32, i32* %first, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %first, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %vec = getelementptr inbounds %struct.ready_list, %struct.ready_list* %4, i32 0, i32 0
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %vec, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idxprom
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %t, align 8
  %7 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready1 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %7, i32 0, i32 3
  %8 = load i32, i32* %n_ready1, align 4
  %dec2 = add nsw i32 %8, -1
  store i32 %dec2, i32* %n_ready1, align 4
  %9 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %n_ready3 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %9, i32 0, i32 3
  %10 = load i32, i32* %n_ready3, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %veclen = getelementptr inbounds %struct.ready_list, %struct.ready_list* %11, i32 0, i32 1
  %12 = load i32, i32* %veclen, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %first6 = getelementptr inbounds %struct.ready_list, %struct.ready_list* %13, i32 0, i32 2
  store i32 %sub, i32* %first6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  ret %struct.rtx_def* %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @actual_hazard(i32 %unit, %struct.rtx_def* %insn, i32 %clock, i32 %cost) #3 {
entry:
  %unit.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %clock.addr = alloca i32, align 4
  %cost.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %instance = alloca i32, align 4
  %best_cost = alloca i32, align 4
  %this_cost = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %clock, i32* %clock.addr, align 4
  store i32 %cost, i32* %cost.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %unit.addr, align 4
  store i32 %1, i32* %instance, align 4
  %2 = load i32, i32* %unit.addr, align 4
  %3 = load i32, i32* %instance, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load i32, i32* %clock.addr, align 4
  %6 = load i32, i32* %cost.addr, align 4
  %call = call i32 @actual_hazard_this_instance(i32 %2, i32 %3, %struct.rtx_def* %4, i32 %5, i32 %6)
  store i32 %call, i32* %best_cost, align 4
  %7 = load i32, i32* %best_cost, align 4
  %8 = load i32, i32* %cost.addr, align 4
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.then
  %9 = load i32, i32* %unit.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %multiplicity = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 2
  %10 = load i32, i32* %multiplicity, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %11 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %instance, align 4
  %add = add nsw i32 %12, 26
  store i32 %add, i32* %instance, align 4
  %13 = load i32, i32* %unit.addr, align 4
  %14 = load i32, i32* %instance, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load i32, i32* %clock.addr, align 4
  %17 = load i32, i32* %cost.addr, align 4
  %call4 = call i32 @actual_hazard_this_instance(i32 %13, i32 %14, %struct.rtx_def* %15, i32 %16, i32 %17)
  store i32 %call4, i32* %this_cost, align 4
  %18 = load i32, i32* %this_cost, align 4
  %19 = load i32, i32* %best_cost, align 4
  %cmp5 = icmp slt i32 %18, %19
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.body
  %20 = load i32, i32* %this_cost, align 4
  store i32 %20, i32* %best_cost, align 4
  %21 = load i32, i32* %this_cost, align 4
  %22 = load i32, i32* %cost.addr, align 4
  %cmp7 = icmp sle i32 %21, %22
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  br label %for.end

if.end:                                           ; preds = %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then
  %24 = load i32, i32* %cost.addr, align 4
  %25 = load i32, i32* %best_cost, align 4
  %cmp11 = icmp sgt i32 %24, %25
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %26 = load i32, i32* %cost.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %27 = load i32, i32* %best_cost, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %cost.addr, align 4
  br label %if.end.20

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %28 = load i32, i32* %unit.addr, align 4
  %neg = xor i32 %28, -1
  store i32 %neg, i32* %unit.addr, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %if.else
  %29 = load i32, i32* %unit.addr, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %for.body.13, label %for.end.19

for.body.13:                                      ; preds = %for.cond.12
  %30 = load i32, i32* %unit.addr, align 4
  %and = and i32 %30, 1
  %cmp14 = icmp ne i32 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %for.body.13
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %33 = load i32, i32* %clock.addr, align 4
  %34 = load i32, i32* %cost.addr, align 4
  %call16 = call i32 @actual_hazard(i32 %31, %struct.rtx_def* %32, i32 %33, i32 %34)
  store i32 %call16, i32* %cost.addr, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.body.13
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  %36 = load i32, i32* %unit.addr, align 4
  %shr = ashr i32 %36, 1
  store i32 %shr, i32* %unit.addr, align 4
  br label %for.cond.12

for.end.19:                                       ; preds = %for.cond.12
  br label %if.end.20

if.end.20:                                        ; preds = %for.end.19, %cond.end
  %37 = load i32, i32* %cost.addr, align 4
  ret i32 %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @queue_insn(%struct.rtx_def* %insn, i32 %n_cycles) #3 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %n_cycles.addr = alloca i32, align 4
  %next_q = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %n_cycles, i32* %n_cycles.addr, align 4
  %0 = load i32, i32* @q_ptr, align 4
  %1 = load i32, i32* %n_cycles.addr, align 4
  %add = add nsw i32 %0, %1
  %and = and i32 %add, 127
  store i32 %and, i32* %next_q, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load i32, i32* %next_q, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %2, %struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %link, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %6 = load i32, i32* %next_q, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [128 x %struct.rtx_def*], [128 x %struct.rtx_def*]* @insn_queue, i32 0, i64 %idxprom1
  store %struct.rtx_def* %5, %struct.rtx_def** %arrayidx2, align 8
  %7 = load i32, i32* @q_size, align 4
  %add3 = add nsw i32 %7, 1
  store i32 %add3, i32* @q_size, align 4
  %8 = load i32, i32* @sched_verbose, align 4
  %cmp = icmp sge i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %10 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn = getelementptr inbounds %struct.sched_info, %struct.sched_info* %10, i32 0, i32 5
  %11 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call4 = call i8* %11(%struct.rtx_def* %12, i32 0)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* %call4)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %14 = load i32, i32* %n_cycles.addr, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @move_insn(%struct.rtx_def* %insn, %struct.rtx_def* %last) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  %retval1 = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %retval1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 28
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %prev, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %call = call %struct.rtx_def* @move_insn1(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %retval1, align 8
  %cmp = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call2 = call %struct.rtx_def* @reemit_notes(%struct.rtx_def* %7, %struct.rtx_def* %8)
  store %struct.rtx_def* %call2, %struct.rtx_def** %retval1, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call3 = call %struct.rtx_def* @reemit_notes(%struct.rtx_def* %9, %struct.rtx_def* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %call4 = call %struct.rtx_def* @move_insn1(%struct.rtx_def* %12, %struct.rtx_def* %13)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %retval1, align 8
  %cmp5 = icmp eq %struct.rtx_def* %14, null
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %while.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call7 = call %struct.rtx_def* @reemit_notes(%struct.rtx_def* %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call7, %struct.rtx_def** %retval1, align 8
  br label %if.end.10

if.else.8:                                        ; preds = %while.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call9 = call %struct.rtx_def* @reemit_notes(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.6
  %19 = load %struct.rtx_def*, %struct.rtx_def** %retval1, align 8
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define internal void @schedule_insn(%struct.rtx_def* %insn, %struct.ready_list* %ready, i32 %clock) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ready.addr = alloca %struct.ready_list*, align 8
  %clock.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %unit = alloca i32, align 4
  %next = alloca %struct.rtx_def*, align 8
  %cost = alloca i32, align 4
  %effective_cost = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.ready_list* %ready, %struct.ready_list** %ready.addr, align 8
  store i32 %clock, i32* %clock.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @insn_unit(%struct.rtx_def* %0)
  store i32 %call, i32* %unit, align 4
  %1 = load i32, i32* @sched_verbose, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i32 %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @insn_print_units(%struct.rtx_def* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* @sched_verbose, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %unit, align 4
  %cmp3 = icmp eq i32 %8, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @visualize_no_unit(%struct.rtx_def* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %10 = load i32, i32* %unit, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load i32, i32* %clock.addr, align 4
  call void @schedule_unit(i32 %10, %struct.rtx_def* %11, i32 %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %14 = load i32, i32* %rtint8, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx9 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %15, i64 %idxprom
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx9, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  %cmp10 = icmp eq %struct.rtx_def* %16, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  br label %if.end.84

if.end.12:                                        ; preds = %if.end.5
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %18 = load i32, i32* %rtint15, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx17 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %19, i64 %idxprom16
  %depend18 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx17, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %depend18, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %21 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %cmp19 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %next, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call22 = call i32 @insn_cost(%struct.rtx_def* %24, %struct.rtx_def* %25, %struct.rtx_def* %26)
  store i32 %call22, i32* %cost, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %28 = load i32, i32* %rtint25, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx27 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %29, i64 %idxprom26
  %tick = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx27, i32 0, i32 7
  %30 = load i32, i32* %tick, align 4
  %31 = load i32, i32* %clock.addr, align 4
  %32 = load i32, i32* %cost, align 4
  %add = add nsw i32 %31, %32
  %cmp28 = icmp sgt i32 %30, %add
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %34 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx33 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %35, i64 %idxprom32
  %tick34 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx33, i32 0, i32 7
  %36 = load i32, i32* %tick34, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %37 = load i32, i32* %clock.addr, align 4
  %38 = load i32, i32* %cost, align 4
  %add35 = add nsw i32 %37, %38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %add35, %cond.false ]
  %39 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %40 = load i32, i32* %rtint38, align 4
  %idxprom39 = sext i32 %40 to i64
  %41 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx40 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %41, i64 %idxprom39
  %tick41 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx40, i32 0, i32 7
  store i32 %cond, i32* %tick41, align 4
  %42 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %43 = load i32, i32* %rtint44, align 4
  %idxprom45 = sext i32 %43 to i64
  %44 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx46 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %44, i64 %idxprom45
  %dep_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx46, i32 0, i32 4
  %45 = load i32, i32* %dep_count, align 4
  %sub = sub nsw i32 %45, 1
  store i32 %sub, i32* %dep_count, align 4
  %cmp47 = icmp eq i32 %sub, 0
  br i1 %cmp47, label %if.then.48, label %if.end.74

if.then.48:                                       ; preds = %cond.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %47 = load i32, i32* %rtint51, align 4
  %idxprom52 = sext i32 %47 to i64
  %48 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx53 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %48, i64 %idxprom52
  %tick54 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx53, i32 0, i32 7
  %49 = load i32, i32* %tick54, align 4
  %50 = load i32, i32* %clock.addr, align 4
  %sub55 = sub nsw i32 %49, %50
  store i32 %sub55, i32* %effective_cost, align 4
  %51 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %new_ready = getelementptr inbounds %struct.sched_info, %struct.sched_info* %51, i32 0, i32 3
  %52 = load i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)** %new_ready, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call56 = call i32 %52(%struct.rtx_def* %53)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.48
  br label %for.inc

if.end.59:                                        ; preds = %if.then.48
  %54 = load i32, i32* @sched_verbose, align 4
  %cmp60 = icmp sge i32 %54, 2
  br i1 %cmp60, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %if.end.59
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %56 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %print_insn = getelementptr inbounds %struct.sched_info, %struct.sched_info* %56, i32 0, i32 5
  %57 = load i8* (%struct.rtx_def*, i32)*, i8* (%struct.rtx_def*, i32)** %print_insn, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call62 = call i8* %57(%struct.rtx_def* %58, i32 0)
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i8* %call62)
  %59 = load i32, i32* %effective_cost, align 4
  %cmp64 = icmp slt i32 %59, 1
  br i1 %cmp64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.then.61
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.68

if.else:                                          ; preds = %if.then.61
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8
  %62 = load i32, i32* %effective_cost, align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 %62)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.59
  %63 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  call void @adjust_priority(%struct.rtx_def* %63)
  %64 = load i32, i32* %effective_cost, align 4
  %cmp70 = icmp slt i32 %64, 1
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.69
  %65 = load %struct.ready_list*, %struct.ready_list** %ready.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  call void @ready_add(%struct.ready_list* %65, %struct.rtx_def* %66)
  br label %if.end.73

if.else.72:                                       ; preds = %if.end.69
  %67 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %68 = load i32, i32* %effective_cost, align 4
  call void @queue_insn(%struct.rtx_def* %67, i32 %68)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.74, %if.then.58
  %69 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load i32, i32* @reload_completed, align 4
  %tobool78 = icmp ne i32 %71, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.84

land.lhs.true.79:                                 ; preds = %for.end
  %72 = load i32, i32* @issue_rate, align 4
  %cmp80 = icmp sgt i32 %72, 1
  br i1 %cmp80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %land.lhs.true.79
  %73 = load i32, i32* %clock.addr, align 4
  %74 = load i32, i32* @last_clock_var, align 4
  %cmp82 = icmp sgt i32 %73, %74
  %cond83 = select i1 %cmp82, i32 6, i32 0
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load = load i32, i32* %76, align 8
  %bf.value = and i32 %cond83, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %76, align 8
  %77 = load i32, i32* %clock.addr, align 4
  store i32 %77, i32* @last_clock_var, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.11, %if.then.81, %land.lhs.true.79, %for.end
  ret void
}

declare void @visualize_scheduled_insns(i32) #2

declare void @print_block_visualization(i8*) #2

declare void @visualize_free() #2

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @set_priorities(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %n_insn = alloca i32, align 4
  %prev_head = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev_head, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %n_insn, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev_head, align 8
  %cmp4 = icmp ne %struct.rtx_def* %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 37
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.inc

if.end.11:                                        ; preds = %for.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load12 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load12, 28
  %bf.clear13 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %14 = load i32, i32* %n_insn, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %n_insn, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @priority(%struct.rtx_def* %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end.15, %if.then.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 1
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %n_insn, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @priority(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %this_priority = alloca i32, align 4
  %next = alloca %struct.rtx_def*, align 8
  %next_priority = alloca i32, align 4
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
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtint, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx4 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %5, i64 %idxprom3
  %priority_known = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx4, i32 0, i32 11
  %bf.load5 = load i8, i8* %priority_known, align 2
  %bf.lshr = lshr i8 %bf.load5, 3
  %bf.clear6 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear6 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.58, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %this_priority, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %7 = load i32, i32* %rtint10, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx12 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %8, i64 %idxprom11
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx12, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  %cmp13 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @insn_cost(%struct.rtx_def* %10, %struct.rtx_def* null, %struct.rtx_def* null)
  store i32 %call, i32* %this_priority, align 4
  br label %if.end.44

if.else:                                          ; preds = %if.then.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %12 = load i32, i32* %rtint18, align 4
  %idxprom19 = sext i32 %12 to i64
  %13 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx20 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %13, i64 %idxprom19
  %depend21 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx20, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %depend21, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool22 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load23 = load i32, i32* %17, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 30
  %bf.clear25 = and i32 %bf.lshr24, 1
  %tobool26 = icmp ne i32 %bf.clear25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  br label %for.inc

if.end.28:                                        ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %next, align 8
  %20 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %contributes_to_priority = getelementptr inbounds %struct.sched_info, %struct.sched_info* %20, i32 0, i32 6
  %21 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %contributes_to_priority, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call31 = call i32 %21(%struct.rtx_def* %22, %struct.rtx_def* %23)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.28
  br label %for.inc

if.end.34:                                        ; preds = %if.end.28
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call35 = call i32 @insn_cost(%struct.rtx_def* %24, %struct.rtx_def* %25, %struct.rtx_def* %26)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call36 = call i32 @priority(%struct.rtx_def* %27)
  %add = add nsw i32 %call35, %call36
  store i32 %add, i32* %next_priority, align 4
  %28 = load i32, i32* %next_priority, align 4
  %29 = load i32, i32* %this_priority, align 4
  %cmp37 = icmp sgt i32 %28, %29
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  %30 = load i32, i32* %next_priority, align 4
  store i32 %30, i32* %this_priority, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.40, %if.then.33, %if.then.27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.then.15
  %33 = load i32, i32* %this_priority, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtint47 = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %35 = load i32, i32* %rtint47, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx49 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %36, i64 %idxprom48
  %priority = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx49, i32 0, i32 3
  store i32 %33, i32* %priority, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtint52 = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %38 = load i32, i32* %rtint52, align 4
  %idxprom53 = sext i32 %38 to i64
  %39 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx54 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %39, i64 %idxprom53
  %priority_known55 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx54, i32 0, i32 11
  %bf.load56 = load i8, i8* %priority_known55, align 2
  %bf.clear57 = and i8 %bf.load56, -9
  %bf.set = or i8 %bf.clear57, 8
  store i8 %bf.set, i8* %priority_known55, align 2
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.44, %if.end
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %41 = load i32, i32* %rtint61, align 4
  %idxprom62 = sext i32 %41 to i64
  %42 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx63 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %42, i64 %idxprom62
  %priority64 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx63, i32 0, i32 3
  %43 = load i32, i32* %priority64, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define void @sched_init(%struct._IO_FILE* %dump_file) #0 {
entry:
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %luid = alloca i32, align 4
  %b = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %line = alloca %struct.rtx_def*, align 8
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8
  %0 = load i32, i32* @sched_verbose_param, align 4
  store i32 %0, i32* @sched_verbose, align 4
  %1 = load i32, i32* @sched_verbose_param, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @sched_verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* @sched_verbose_param, align 4
  %cmp1 = icmp sge i32 %3, 10
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %5, %cond.true ], [ %6, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** @sched_dump, align 8
  %7 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 2), align 8
  %tobool3 = icmp ne i32 ()* %7, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %cond.end
  %8 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 2), align 8
  %call = call i32 %8()
  store i32 %call, i32* @issue_rate, align 4
  br label %if.end.5

if.else:                                          ; preds = %cond.end
  store i32 1, i32* @issue_rate, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %call6 = call i32 @get_max_uid()
  %add = add nsw i32 %call6, 1
  store i32 %add, i32* @old_max_uid, align 4
  %9 = load i32, i32* @old_max_uid, align 4
  %conv = sext i32 %9 to i64
  %call7 = call noalias i8* @xcalloc(i64 %conv, i64 48)
  %10 = bitcast i8* %call7 to %struct.haifa_insn_data*
  store %struct.haifa_insn_data* %10, %struct.haifa_insn_data** @h_i_d, align 8
  %11 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %11, i64 0
  %luid8 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx, i32 0, i32 2
  store i32 0, i32* %luid8, align 4
  store i32 1, i32* %luid, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.end.5
  %12 = load i32, i32* %b, align 4
  %13 = load i32, i32* @n_basic_blocks, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %b, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %18 = load i32, i32* %luid, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %20 = load i32, i32* %rtint, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx15 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %21, i64 %idxprom14
  %luid16 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx15, i32 0, i32 2
  store i32 %18, i32* %luid16, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp17 = icmp ne i32 %bf.clear, 37
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.cond.12
  %24 = load i32, i32* %luid, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %luid, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.cond.12
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = load i32, i32* %b, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data22 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data22 to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 %idxprom21
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx24, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp25 = icmp eq %struct.rtx_def* %25, %29
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.20
  br label %for.end

if.end.28:                                        ; preds = %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %insn, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then.27
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %32 = load i32, i32* %b, align 4
  %inc32 = add nsw i32 %32, 1
  store i32 %inc32, i32* %b, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  %33 = load i32, i32* %luid, align 4
  call void @init_dependency_caches(i32 %33)
  %34 = load i32, i32* @old_max_uid, align 4
  call void @compute_bb_for_insn(i32 %34)
  call void @init_alias_analysis()
  %35 = load i32, i32* @write_symbols, align 4
  %cmp34 = icmp ne i32 %35, 0
  br i1 %cmp34, label %if.then.36, label %if.end.109

if.then.36:                                       ; preds = %for.end.33
  %36 = load i32, i32* @n_basic_blocks, align 4
  %conv37 = sext i32 %36 to i64
  %call38 = call noalias i8* @xcalloc(i64 %conv37, i64 8)
  %37 = bitcast i8* %call38 to %struct.rtx_def**
  store %struct.rtx_def** %37, %struct.rtx_def*** @line_note_head, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.106, %if.then.36
  %38 = load i32, i32* %b, align 4
  %39 = load i32, i32* @n_basic_blocks, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body.42, label %for.end.108

for.body.42:                                      ; preds = %for.cond.39
  %40 = load i32, i32* %b, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data44 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 4
  %bb45 = bitcast %union.varray_data_tag* %data44 to [1 x %struct.basic_block_def*]*
  %arrayidx46 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb45, i32 0, i64 %idxprom43
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx46, align 8
  %head47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %head47, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %line, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.65, %for.body.42
  %44 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %tobool49 = icmp ne %struct.rtx_def* %44, null
  br i1 %tobool49, label %for.body.50, label %for.end.69

for.body.50:                                      ; preds = %for.cond.48
  %45 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load51 = load i32, i32* %46, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 37
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.64

land.lhs.true.55:                                 ; preds = %for.body.50
  %47 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 4
  %rtint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %48 = load i32, i32* %rtint58, align 4
  %cmp59 = icmp sgt i32 %48, 0
  br i1 %cmp59, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %land.lhs.true.55
  %49 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %50 = load i32, i32* %b, align 4
  %idxprom62 = sext i32 %50 to i64
  %51 = load %struct.rtx_def**, %struct.rtx_def*** @line_note_head, align 8
  %arrayidx63 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %51, i64 %idxprom62
  store %struct.rtx_def* %49, %struct.rtx_def** %arrayidx63, align 8
  br label %for.end.69

if.end.64:                                        ; preds = %land.lhs.true.55, %for.body.50
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %52 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %line, align 8
  br label %for.cond.48

for.end.69:                                       ; preds = %if.then.61, %for.cond.48
  %54 = load i32, i32* %b, align 4
  %idxprom70 = sext i32 %54 to i64
  %55 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data71 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %55, i32 0, i32 4
  %bb72 = bitcast %union.varray_data_tag* %data71 to [1 x %struct.basic_block_def*]*
  %arrayidx73 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb72, i32 0, i64 %idxprom70
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx73, align 8
  %head74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 0
  %57 = load %struct.rtx_def*, %struct.rtx_def** %head74, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %line, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.101, %for.end.69
  %58 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %tobool76 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool76, label %for.body.77, label %for.end.105

for.body.77:                                      ; preds = %for.cond.75
  %59 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load78 = load i32, i32* %60, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %idxprom80 = sext i32 %bf.clear79 to i64
  %arrayidx81 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom80
  %61 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %61 to i32
  %cmp83 = icmp eq i32 %conv82, 105
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.77
  br label %for.end.105

if.end.86:                                        ; preds = %for.body.77
  %62 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load87 = load i32, i32* %63, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 37
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.100

land.lhs.true.91:                                 ; preds = %if.end.86
  %64 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 4
  %rtint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %65 = load i32, i32* %rtint94, align 4
  %cmp95 = icmp sgt i32 %65, 0
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %land.lhs.true.91
  %66 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %67 = load i32, i32* %b, align 4
  %idxprom98 = sext i32 %67 to i64
  %68 = load %struct.rtx_def**, %struct.rtx_def*** @line_note_head, align 8
  %arrayidx99 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %68, i64 %idxprom98
  store %struct.rtx_def* %66, %struct.rtx_def** %arrayidx99, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %land.lhs.true.91, %if.end.86
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %69 = load %struct.rtx_def*, %struct.rtx_def** %line, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 2
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %line, align 8
  br label %for.cond.75

for.end.105:                                      ; preds = %if.then.85, %for.cond.75
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %71 = load i32, i32* %b, align 4
  %inc107 = add nsw i32 %71, 1
  store i32 %inc107, i32* %b, align 4
  br label %for.cond.39

for.end.108:                                      ; preds = %for.cond.39
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %for.end.33
  %72 = load i32, i32* @sched_verbose, align 4
  %tobool110 = icmp ne i32 %72, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.109
  call void @init_target_units()
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.109
  %73 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %73, 1
  %idxprom113 = sext i32 %sub to i64
  %74 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data114 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %74, i32 0, i32 4
  %bb115 = bitcast %union.varray_data_tag* %data114 to [1 x %struct.basic_block_def*]*
  %arrayidx116 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb115, i32 0, i64 %idxprom113
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx116, align 8
  %end117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 1
  %76 = load %struct.rtx_def*, %struct.rtx_def** %end117, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %insn, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 2
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %cmp121 = icmp eq %struct.rtx_def* %78, null
  br i1 %cmp121, label %if.then.141, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.112
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load124 = load i32, i32* %80, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %cmp126 = icmp ne i32 %bf.clear125, 37
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.164

land.lhs.true.128:                                ; preds = %lor.lhs.false.123
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load129 = load i32, i32* %82, align 8
  %bf.clear130 = and i32 %bf.load129, 65535
  %cmp131 = icmp ne i32 %bf.clear130, 36
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.164

land.lhs.true.133:                                ; preds = %land.lhs.true.128
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 2
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load137 = load i32, i32* %85, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp ne i32 %bf.clear138, 35
  br i1 %cmp139, label %if.then.141, label %if.end.164

if.then.141:                                      ; preds = %land.lhs.true.133, %if.end.112
  %86 = load i32, i32* @n_basic_blocks, align 4
  %sub142 = sub nsw i32 %86, 1
  %idxprom143 = sext i32 %sub142 to i64
  %87 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data144 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %87, i32 0, i32 4
  %bb145 = bitcast %union.varray_data_tag* %data144 to [1 x %struct.basic_block_def*]*
  %arrayidx146 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb145, i32 0, i64 %idxprom143
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx146, align 8
  %end147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 1
  %89 = load %struct.rtx_def*, %struct.rtx_def** %end147, align 8
  %call148 = call %struct.rtx_def* @emit_note_after(i32 -99, %struct.rtx_def* %89)
  %90 = load i32, i32* @n_basic_blocks, align 4
  %sub149 = sub nsw i32 %90, 1
  %idxprom150 = sext i32 %sub149 to i64
  %91 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data151 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %91, i32 0, i32 4
  %bb152 = bitcast %union.varray_data_tag* %data151 to [1 x %struct.basic_block_def*]*
  %arrayidx153 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb152, i32 0, i64 %idxprom150
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx153, align 8
  %end154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 1
  %93 = load %struct.rtx_def*, %struct.rtx_def** %end154, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %95 = load i32, i32* @n_basic_blocks, align 4
  %sub158 = sub nsw i32 %95, 1
  %idxprom159 = sext i32 %sub158 to i64
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data160 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %bb161 = bitcast %union.varray_data_tag* %data160 to [1 x %struct.basic_block_def*]*
  %arrayidx162 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb161, i32 0, i64 %idxprom159
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx162, align 8
  %end163 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 1
  store %struct.rtx_def* %94, %struct.rtx_def** %end163, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.141, %land.lhs.true.133, %land.lhs.true.128, %lor.lhs.false.123
  %98 = load i32, i32* @n_basic_blocks, align 4
  %sub165 = sub nsw i32 %98, 1
  store i32 %sub165, i32* %b, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.170, %if.end.164
  %99 = load i32, i32* %b, align 4
  %cmp167 = icmp sge i32 %99, 0
  br i1 %cmp167, label %for.body.169, label %for.end.171

for.body.169:                                     ; preds = %for.cond.166
  %100 = load i32, i32* %b, align 4
  call void @find_insn_reg_weight(i32 %100)
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.169
  %101 = load i32, i32* %b, align 4
  %dec = add nsw i32 %101, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond.166

for.end.171:                                      ; preds = %for.cond.166
  ret void
}

declare i32 @get_max_uid() #2

declare noalias i8* @xcalloc(i64, i64) #2

declare void @init_dependency_caches(i32) #2

declare void @compute_bb_for_insn(i32) #2

declare void @init_alias_analysis() #2

declare void @init_target_units() #2

; Function Attrs: nounwind uwtable
define internal void @find_insn_reg_weight(i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %reg_weight = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  call void @get_block_head_tail(i32 %0, %struct.rtx_def** %head, %struct.rtx_def** %tail)
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next_tail, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %reg_weight, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.88

if.end:                                           ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %x, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load7 = load i32, i32* %12, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 47
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load11 = load i32, i32* %14, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 49
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %call = call i32 @register_operand(%struct.rtx_def* %16, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %reg_weight, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %reg_weight, align 4
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load19 = load i32, i32* %19, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 39
  br i1 %cmp21, label %if.then.23, label %if.end.56

if.then.23:                                       ; preds = %if.else
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 0
  %22 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.23
  %23 = load i32, i32* %j, align 4
  %cmp27 = icmp sge i32 %23, 0
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %24 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtvec36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec36, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom30
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %x, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load38 = load i32, i32* %30, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 47
  br i1 %cmp40, label %land.lhs.true.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %for.body.29
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load43 = load i32, i32* %32, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 49
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.55

land.lhs.true.47:                                 ; preds = %lor.lhs.false.42, %for.body.29
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %call51 = call i32 @register_operand(%struct.rtx_def* %34, i32 0)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true.47
  %35 = load i32, i32* %reg_weight, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, i32* %reg_weight, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %land.lhs.true.47, %lor.lhs.false.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %36 = load i32, i32* %j, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.18
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 6
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %x, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.77, %if.end.57
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool62 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool62, label %for.body.63, label %for.end.81

for.body.63:                                      ; preds = %for.cond.61
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load64 = load i32, i32* %41, align 8
  %bf.lshr = lshr i32 %bf.load64, 16
  %bf.clear65 = and i32 %bf.lshr, 255
  %cmp66 = icmp eq i32 %bf.clear65, 1
  br i1 %cmp66, label %if.then.74, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %for.body.63
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load69 = load i32, i32* %43, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 16
  %bf.clear71 = and i32 %bf.lshr70, 255
  %cmp72 = icmp eq i32 %bf.clear71, 10
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %lor.lhs.false.68, %for.body.63
  %44 = load i32, i32* %reg_weight, align 4
  %dec75 = add nsw i32 %44, -1
  store i32 %dec75, i32* %reg_weight, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %lor.lhs.false.68
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %x, align 8
  br label %for.cond.61

for.end.81:                                       ; preds = %for.cond.61
  %47 = load i32, i32* %reg_weight, align 4
  %conv82 = trunc i32 %47 to i16
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %49 = load i32, i32* %rtint, align 4
  %idxprom85 = sext i32 %49 to i64
  %50 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx86 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %50, i64 %idxprom85
  %reg_weight87 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx86, i32 0, i32 10
  store i16 %conv82, i16* %reg_weight87, align 2
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.81, %if.then
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 2
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sched_finish() #0 {
entry:
  %0 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %1 = bitcast %struct.haifa_insn_data* %0 to i8*
  call void @free(i8* %1) #4
  call void @free_dependency_caches()
  call void @end_alias_analysis()
  %2 = load i32, i32* @write_symbols, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def**, %struct.rtx_def*** @line_note_head, align 8
  %4 = bitcast %struct.rtx_def** %3 to i8*
  call void @free(i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free_dependency_caches() #2

declare void @end_alias_analysis() #2

declare void @visualize_stall_cycles(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @swap_sort(%struct.rtx_def** %a, i32 %n) #3 {
entry:
  %a.addr = alloca %struct.rtx_def**, align 8
  %n.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def** %a, %struct.rtx_def*** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %a.addr, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1, i64 %idxprom
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  %3 = load i32, i32* %n.addr, align 4
  %sub1 = sub nsw i32 %3, 2
  store i32 %sub1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %a.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idx.ext
  %7 = bitcast %struct.rtx_def** %add.ptr to i8*
  %8 = bitcast %struct.rtx_def** %insn to i8*
  %call = call i32 @rank_for_schedule(i8* %7, i8* %8)
  %cmp2 = icmp sge i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %11, i64 %idxprom3
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add to i64
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %14, i64 %idxprom5
  store %struct.rtx_def* %12, %struct.rtx_def** %arrayidx6, align 8
  %15 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %15, 1
  store i32 %sub7, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %17, 1
  %idxprom9 = sext i32 %add8 to i64
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %18, i64 %idxprom9
  store %struct.rtx_def* %16, %struct.rtx_def** %arrayidx10, align 8
  ret void
}

declare void @specqsort(i8*, i32, i32, i32 (...)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @rank_for_schedule(i8* %x, i8* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %tmp2 = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %tmp_class = alloca i32, align 4
  %tmp2_class = alloca i32, align 4
  %depend_count1 = alloca i32, align 4
  %depend_count2 = alloca i32, align 4
  %val = alloca i32, align 4
  %priority_val = alloca i32, align 4
  %weight_val = alloca i32, align 4
  %info_val = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %y.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %tmp, align 8
  %3 = load i8*, i8** %x.addr, align 8
  %4 = bitcast i8* %3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %tmp2, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx12 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %8, i64 %idxprom
  %priority = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx12, i32 0, i32 3
  %9 = load i32, i32* %priority, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %11 = load i32, i32* %rtint15, align 4
  %idxprom16 = sext i32 %11 to i64
  %12 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx17 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %12, i64 %idxprom16
  %priority18 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx17, i32 0, i32 3
  %13 = load i32, i32* %priority18, align 4
  %sub = sub nsw i32 %9, %13
  store i32 %sub, i32* %priority_val, align 4
  %14 = load i32, i32* %priority_val, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %priority_val, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, i32* @reload_completed, align 4
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtint22 = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %18 = load i32, i32* %rtint22, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx24 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %19, i64 %idxprom23
  %reg_weight = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx24, i32 0, i32 10
  %20 = load i16, i16* %reg_weight, align 2
  %conv = sext i16 %20 to i32
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %22 = load i32, i32* %rtint27, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx29 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %23, i64 %idxprom28
  %reg_weight30 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx29, i32 0, i32 10
  %24 = load i16, i16* %reg_weight30, align 2
  %conv31 = sext i16 %24 to i32
  %sub32 = sub nsw i32 %conv, %conv31
  store i32 %sub32, i32* %weight_val, align 4
  %tobool33 = icmp ne i32 %sub32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %weight_val, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true, %if.end
  %26 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %rank = getelementptr inbounds %struct.sched_info, %struct.sched_info* %26, i32 0, i32 4
  %27 = load i32 (%struct.rtx_def*, %struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)** %rank, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %call = call i32 %27(%struct.rtx_def* %28, %struct.rtx_def* %29)
  store i32 %call, i32* %info_val, align 4
  %30 = load i32, i32* %info_val, align 4
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %31 = load i32, i32* %info_val, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.35
  %32 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %tobool39 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool39, label %if.then.40, label %if.end.86

if.then.40:                                       ; preds = %if.end.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %35 = load i32, i32* %rtint43, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx45 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %36, i64 %idxprom44
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx45, i32 0, i32 0
  %37 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  %call46 = call %struct.rtx_def* @find_insn_list(%struct.rtx_def* %33, %struct.rtx_def* %37)
  store %struct.rtx_def* %call46, %struct.rtx_def** %link, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %cmp = icmp eq %struct.rtx_def* %38, null
  br i1 %cmp, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.40
  %39 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call48 = call i32 @insn_cost(%struct.rtx_def* %39, %struct.rtx_def* %40, %struct.rtx_def* %41)
  %cmp49 = icmp eq i32 %call48, 1
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %lor.lhs.false, %if.then.40
  store i32 3, i32* %tmp_class, align 4
  br label %if.end.57

if.else:                                          ; preds = %lor.lhs.false
  %42 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load = load i32, i32* %43, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp52 = icmp eq i32 %bf.clear, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else
  store i32 1, i32* %tmp_class, align 4
  br label %if.end.56

if.else.55:                                       ; preds = %if.else
  store i32 2, i32* %tmp_class, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.51
  %44 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtint60 = bitcast %union.rtunion_def* %arrayidx59 to i32*
  %46 = load i32, i32* %rtint60, align 4
  %idxprom61 = sext i32 %46 to i64
  %47 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx62 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %47, i64 %idxprom61
  %depend63 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx62, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %depend63, align 8
  %call64 = call %struct.rtx_def* @find_insn_list(%struct.rtx_def* %44, %struct.rtx_def* %48)
  store %struct.rtx_def* %call64, %struct.rtx_def** %link, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %cmp65 = icmp eq %struct.rtx_def* %49, null
  br i1 %cmp65, label %if.then.71, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.57
  %50 = load %struct.rtx_def*, %struct.rtx_def** @last_scheduled_insn, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %call68 = call i32 @insn_cost(%struct.rtx_def* %50, %struct.rtx_def* %51, %struct.rtx_def* %52)
  %cmp69 = icmp eq i32 %call68, 1
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %lor.lhs.false.67, %if.end.57
  store i32 3, i32* %tmp2_class, align 4
  br label %if.end.81

if.else.72:                                       ; preds = %lor.lhs.false.67
  %53 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load73 = load i32, i32* %54, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 16
  %bf.clear75 = and i32 %bf.lshr74, 255
  %cmp76 = icmp eq i32 %bf.clear75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.else.72
  store i32 1, i32* %tmp2_class, align 4
  br label %if.end.80

if.else.79:                                       ; preds = %if.else.72
  store i32 2, i32* %tmp2_class, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.71
  %55 = load i32, i32* %tmp2_class, align 4
  %56 = load i32, i32* %tmp_class, align 4
  %sub82 = sub nsw i32 %55, %56
  store i32 %sub82, i32* %val, align 4
  %tobool83 = icmp ne i32 %sub82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %57 = load i32, i32* %val, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.81
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.38
  store i32 0, i32* %depend_count1, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtint89 = bitcast %union.rtunion_def* %arrayidx88 to i32*
  %59 = load i32, i32* %rtint89, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx91 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %60, i64 %idxprom90
  %depend92 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx91, i32 0, i32 0
  %61 = load %struct.rtx_def*, %struct.rtx_def** %depend92, align 8
  store %struct.rtx_def* %61, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.86
  %62 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool93 = icmp ne %struct.rtx_def* %62, null
  br i1 %tobool93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %depend_count1, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %depend_count1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %depend_count2, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %67 = load i32, i32* %rtint98, align 4
  %idxprom99 = sext i32 %67 to i64
  %68 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx100 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %68, i64 %idxprom99
  %depend101 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx100, i32 0, i32 0
  %69 = load %struct.rtx_def*, %struct.rtx_def** %depend101, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %link, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.106, %for.end
  %70 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool103 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool103, label %for.body.104, label %for.end.110

for.body.104:                                     ; preds = %for.cond.102
  %71 = load i32, i32* %depend_count2, align 4
  %inc105 = add nsw i32 %71, 1
  store i32 %inc105, i32* %depend_count2, align 4
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.104
  %72 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %link, align 8
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  %74 = load i32, i32* %depend_count2, align 4
  %75 = load i32, i32* %depend_count1, align 4
  %sub111 = sub nsw i32 %74, %75
  store i32 %sub111, i32* %val, align 4
  %76 = load i32, i32* %val, align 4
  %tobool112 = icmp ne i32 %76, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %for.end.110
  %77 = load i32, i32* %val, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.114:                                       ; preds = %for.end.110
  %78 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 0
  %rtint117 = bitcast %union.rtunion_def* %arrayidx116 to i32*
  %79 = load i32, i32* %rtint117, align 4
  %idxprom118 = sext i32 %79 to i64
  %80 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx119 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %80, i64 %idxprom118
  %luid = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx119, i32 0, i32 2
  %81 = load i32, i32* %luid, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtint122 = bitcast %union.rtunion_def* %arrayidx121 to i32*
  %83 = load i32, i32* %rtint122, align 4
  %idxprom123 = sext i32 %83 to i64
  %84 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx124 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %84, i64 %idxprom123
  %luid125 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx124, i32 0, i32 2
  %85 = load i32, i32* %luid125, align 4
  %sub126 = sub nsw i32 %81, %85
  store i32 %sub126, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %if.then.113, %if.then.84, %if.then.37, %if.then.34, %if.then
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare %struct.rtx_def* @find_insn_list(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @move_insn1(%struct.rtx_def* %insn, %struct.rtx_def* %last) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %1, %struct.rtx_def** %rtx6, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  store %struct.rtx_def* %5, %struct.rtx_def** %rtx15, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 2
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 2
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx21, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 2
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx27, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 2
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  store %struct.rtx_def* %14, %struct.rtx_def** %rtx30, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  store %struct.rtx_def* %16, %struct.rtx_def** %rtx33, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %18
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @reemit_notes(%struct.rtx_def* %insn, %struct.rtx_def* %last) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %retval1 = alloca %struct.rtx_def*, align 8
  %note_type = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %retval1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.end.41

if.then:                                          ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx6 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %note_type, align 4
  %9 = load i32, i32* %note_type, align 4
  %cmp7 = icmp eq i32 %9, -83
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %note_type, align 4
  %cmp9 = icmp eq i32 %10, -82
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %11 = load i32, i32* %note_type, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %call = call %struct.rtx_def* @emit_note_before(i32 %11, %struct.rtx_def* %12)
  store %struct.rtx_def* %call, %struct.rtx_def** %last.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %13, %struct.rtx_def* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %note, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  store %struct.rtx_def* %18, %struct.rtx_def** %rtx20, align 8
  br label %if.end.40

if.else:                                          ; preds = %lor.lhs.false
  %20 = load i32, i32* %note_type, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %call21 = call %struct.rtx_def* @emit_note_before(i32 %20, %struct.rtx_def* %21)
  store %struct.rtx_def* %call21, %struct.rtx_def** %last.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %22, %struct.rtx_def* %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %note, align 8
  %26 = load i32, i32* %note_type, align 4
  %cmp25 = icmp eq i32 %26, -86
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.else
  %27 = load i32, i32* %note_type, align 4
  %cmp28 = icmp eq i32 %27, -85
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.else
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtwint36 = bitcast %union.rtunion_def* %arrayidx35 to i64*
  %30 = load i64, i64* %rtwint36, align 8
  %conv37 = trunc i64 %30 to i32
  %31 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  store i32 %conv37, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %lor.lhs.false.27
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then.11
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %32, %struct.rtx_def* %33)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.rtx_def*, %struct.rtx_def** %retval1, align 8
  ret %struct.rtx_def* %36
}

declare %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) #2

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #2

declare void @insn_print_units(%struct.rtx_def*) #2

declare void @visualize_no_unit(%struct.rtx_def*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @schedule_unit(i32 %unit, %struct.rtx_def* %insn, i32 %clock) #3 {
entry:
  %unit.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %clock.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %instance = alloca i32, align 4
  store i32 %unit, i32* %unit.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %clock, i32* %clock.addr, align 4
  %0 = load i32, i32* %unit.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %unit.addr, align 4
  store i32 %1, i32* %instance, align 4
  %2 = load i32, i32* %unit.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom
  %multiplicity = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx, i32 0, i32 2
  %3 = load i32, i32* %multiplicity, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %unit.addr, align 4
  %6 = load i32, i32* %instance, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = load i32, i32* %clock.addr, align 4
  %call = call i32 @actual_hazard_this_instance(i32 %5, i32 %6, %struct.rtx_def* %7, i32 %8, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %instance, align 4
  %add = add nsw i32 %9, 26
  store i32 %add, i32* %instance, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load i32, i32* %instance, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [78 x %struct.rtx_def*], [78 x %struct.rtx_def*]* @unit_last_insn, i32 0, i64 %idxprom3
  store %struct.rtx_def* %11, %struct.rtx_def** %arrayidx4, align 8
  %13 = load i32, i32* %clock.addr, align 4
  %14 = load i32, i32* %unit.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.function_unit_desc], [0 x %struct.function_unit_desc]* @function_units, i32 0, i64 %idxprom5
  %max_blockage = getelementptr inbounds %struct.function_unit_desc, %struct.function_unit_desc* %arrayidx6, i32 0, i32 8
  %15 = load i32, i32* %max_blockage, align 4
  %add7 = add nsw i32 %13, %15
  %16 = load i32, i32* %instance, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [78 x i32], [78 x i32]* @unit_tick, i32 0, i64 %idxprom8
  store i32 %add7, i32* %arrayidx9, align 4
  br label %if.end.18

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %17 = load i32, i32* %unit.addr, align 4
  %neg = xor i32 %17, -1
  store i32 %neg, i32* %unit.addr, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.16, %if.else
  %18 = load i32, i32* %unit.addr, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.10
  %19 = load i32, i32* %unit.addr, align 4
  %and = and i32 %19, 1
  %cmp13 = icmp ne i32 %and, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.12
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %22 = load i32, i32* %clock.addr, align 4
  call void @schedule_unit(i32 %20, %struct.rtx_def* %21, i32 %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.body.12
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load i32, i32* %unit.addr, align 4
  %shr = ashr i32 %24, 1
  store i32 %shr, i32* %unit.addr, align 4
  br label %for.cond.10

for.end.17:                                       ; preds = %for.cond.10
  br label %if.end.18

if.end.18:                                        ; preds = %for.end.17, %for.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @adjust_priority(%struct.rtx_def* %prev) #3 {
entry:
  %prev.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %prev, %struct.rtx_def** %prev.addr, align 8
  %0 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 1), align 8
  %tobool = icmp ne i32 (%struct.rtx_def*, i32)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 1, i32 1), align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %prev.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %prev.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx1 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %5, i64 %idxprom
  %priority = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx1, i32 0, i32 3
  %6 = load i32, i32* %priority, align 4
  %call = call i32 %1(%struct.rtx_def* %2, i32 %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %prev.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %8 = load i32, i32* %rtint4, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx6 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %9, i64 %idxprom5
  %priority7 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx6, i32 0, i32 3
  store i32 %call, i32* %priority7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @register_operand(%struct.rtx_def*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
