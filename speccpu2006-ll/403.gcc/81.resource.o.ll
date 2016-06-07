; ModuleID = 'resource.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resources = type { i8, i8, i8, i8, i64 }
%struct.target_info = type { i32, %struct.target_info*, i64, i32, i32 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.param_info = type { i8*, i32, i8* }
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
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }

@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@.str = private unnamed_addr constant [11 x i8] c"resource.c\00", align 1
@__FUNCTION__.mark_referenced_resources = private unnamed_addr constant [26 x i8] c"mark_referenced_resources\00", align 1
@frame_pointer_needed = external global i32, align 4
@global_regs = external global [53 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@__FUNCTION__.mark_set_resources = private unnamed_addr constant [19 x i8] c"mark_set_resources\00", align 1
@end_of_function_needs = internal global %struct.resources zeroinitializer, align 8
@target_hash_table = internal global %struct.target_info** null, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@compiler_params = external global %struct.param_info*, align 8
@bb_ticks = internal global i32* null, align 8
@pending_dead_regs = internal global i64 0, align 8
@current_live_regs = internal global i64 0, align 8
@reg_renumber = external global i16*, align 8
@cfun = external global %struct.function*, align 8
@rtx_class = external constant [153 x i8], align 16
@regs_invalidated_by_call = external global i64, align 8
@start_of_epilogue_needs = internal global %struct.resources zeroinitializer, align 8
@current_function_sp_is_unchanging = external global i32, align 4
@n_basic_blocks = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @mark_referenced_resources(%struct.rtx_def* %x, %struct.resources* %res, i32 %include_delayed_effects) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %res.addr = alloca %struct.resources*, align 8
  %include_delayed_effects.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %last_regno = alloca i32, align 4
  %regno70 = alloca i32, align 4
  %last_regno73 = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %seq_size = alloca i32, align 4
  %i276 = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %slot_pat = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.resources* %res, %struct.resources** %res.addr, align 8
  store i32 %include_delayed_effects, i32* %include_delayed_effects.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 58, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 59, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 63, label %sw.bb.1
    i32 61, label %sw.bb.69
    i32 66, label %sw.bb.173
    i32 69, label %sw.bb.190
    i32 43, label %sw.bb.191
    i32 40, label %sw.bb.191
    i32 52, label %sw.bb.193
    i32 41, label %sw.bb.195
    i32 50, label %sw.bb.217
    i32 47, label %sw.bb.227
    i32 49, label %sw.bb.269
    i32 34, label %sw.bb.270
    i32 32, label %sw.bb.396
    i32 33, label %sw.bb.396
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %for.end.438

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp ne i32 %bf.clear3, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %8 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %7, %struct.resources* %8, i32 0)
  br label %if.end.68

if.else:                                          ; preds = %sw.bb.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @subreg_regno(%struct.rtx_def* %9)
  store i32 %call, i32* %regno, align 4
  %10 = load i32, i32* %regno, align 4
  %11 = load i32, i32* %regno, align 4
  %cmp7 = icmp uge i32 %11, 8
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, i32* %regno, align 4
  %cmp8 = icmp ule i32 %12, 15
  br i1 %cmp8, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %13 = load i32, i32* %regno, align 4
  %cmp9 = icmp uge i32 %13, 21
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %regno, align 4
  %cmp11 = icmp ule i32 %14, 28
  br i1 %cmp11, label %cond.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false
  %15 = load i32, i32* %regno, align 4
  %cmp13 = icmp uge i32 %15, 45
  br i1 %cmp13, label %land.lhs.true.14, label %lor.lhs.false.16

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %16 = load i32, i32* %regno, align 4
  %cmp15 = icmp ule i32 %16, 52
  br i1 %cmp15, label %cond.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %17 = load i32, i32* %regno, align 4
  %cmp17 = icmp uge i32 %17, 29
  br i1 %cmp17, label %land.lhs.true.18, label %cond.false

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16
  %18 = load i32, i32* %regno, align 4
  %cmp19 = icmp ule i32 %18, 36
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load20, 16
  %bf.clear21 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear21 to i64
  %arrayidx22 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %21, 5
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load24 = load i32, i32* %23, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %idxprom27 = sext i32 %bf.clear26 to i64
  %arrayidx28 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %24, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %25 = phi i1 [ true, %cond.true ], [ %cmp29, %lor.rhs ]
  %cond = select i1 %25, i32 2, i32 1
  br label %cond.end.60

cond.false:                                       ; preds = %land.lhs.true.18, %lor.lhs.false.16
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load30 = load i32, i32* %27, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 18
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.false
  %28 = load i32, i32* @target_flags, align 4
  %and = and i32 %28, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond35 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.58

cond.false.36:                                    ; preds = %cond.false
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load37 = load i32, i32* %30, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %bf.clear39 = and i32 %bf.lshr38, 255
  %cmp40 = icmp eq i32 %bf.clear39, 24
  br i1 %cmp40, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %cond.false.36
  %31 = load i32, i32* @target_flags, align 4
  %and42 = and i32 %31, 33554432
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 4, i32 6
  br label %cond.end

cond.false.45:                                    ; preds = %cond.false.36
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load46 = load i32, i32* %33, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %idxprom49 = sext i32 %bf.clear48 to i64
  %arrayidx50 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom49
  %34 = load i8, i8* %arrayidx50, align 1
  %conv = zext i8 %34 to i32
  %35 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %35, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 8, i32 4
  %add = add nsw i32 %conv, %cond53
  %sub = sub nsw i32 %add, 1
  %36 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %36, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 8, i32 4
  %div = sdiv i32 %sub, %cond56
  br label %cond.end

cond.end:                                         ; preds = %cond.false.45, %cond.true.41
  %cond57 = phi i32 [ %cond44, %cond.true.41 ], [ %div, %cond.false.45 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end, %cond.true.34
  %cond59 = phi i32 [ %cond35, %cond.true.34 ], [ %cond57, %cond.end ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %lor.end
  %cond61 = phi i32 [ %cond, %lor.end ], [ %cond59, %cond.end.58 ]
  %add62 = add i32 %10, %cond61
  store i32 %add62, i32* %last_regno, align 4
  %37 = load i32, i32* %last_regno, align 4
  %cmp63 = icmp ugt i32 %37, 53
  br i1 %cmp63, label %if.then.65, label %if.end

if.then.65:                                       ; preds = %cond.end.60
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.mark_referenced_resources, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end.60
  %38 = load i32, i32* %regno, align 4
  store i32 %38, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %39 = load i32, i32* %r, align 4
  %40 = load i32, i32* %last_regno, align 4
  %cmp66 = icmp ult i32 %39, %40
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %r, align 4
  %sh_prom = zext i32 %41 to i64
  %shl = shl i64 1, %sh_prom
  %42 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %42, i32 0, i32 4
  %43 = load i64, i64* %regs, align 8
  %or = or i64 %43, %shl
  store i64 %or, i64* %regs, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %r, align 4
  %inc = add i32 %44, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.then
  br label %for.end.438

sw.bb.69:                                         ; preds = %entry
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %46 = load i32, i32* %rtuint, align 4
  store i32 %46, i32* %regno70, align 4
  %47 = load i32, i32* %regno70, align 4
  %48 = load i32, i32* %regno70, align 4
  %cmp74 = icmp uge i32 %48, 8
  br i1 %cmp74, label %land.lhs.true.76, label %lor.lhs.false.79

land.lhs.true.76:                                 ; preds = %sw.bb.69
  %49 = load i32, i32* %regno70, align 4
  %cmp77 = icmp ule i32 %49, 15
  br i1 %cmp77, label %cond.true.97, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %land.lhs.true.76, %sw.bb.69
  %50 = load i32, i32* %regno70, align 4
  %cmp80 = icmp uge i32 %50, 21
  br i1 %cmp80, label %land.lhs.true.82, label %lor.lhs.false.85

land.lhs.true.82:                                 ; preds = %lor.lhs.false.79
  %51 = load i32, i32* %regno70, align 4
  %cmp83 = icmp ule i32 %51, 28
  br i1 %cmp83, label %cond.true.97, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.82, %lor.lhs.false.79
  %52 = load i32, i32* %regno70, align 4
  %cmp86 = icmp uge i32 %52, 45
  br i1 %cmp86, label %land.lhs.true.88, label %lor.lhs.false.91

land.lhs.true.88:                                 ; preds = %lor.lhs.false.85
  %53 = load i32, i32* %regno70, align 4
  %cmp89 = icmp ule i32 %53, 52
  br i1 %cmp89, label %cond.true.97, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.88, %lor.lhs.false.85
  %54 = load i32, i32* %regno70, align 4
  %cmp92 = icmp uge i32 %54, 29
  br i1 %cmp92, label %land.lhs.true.94, label %cond.false.115

land.lhs.true.94:                                 ; preds = %lor.lhs.false.91
  %55 = load i32, i32* %regno70, align 4
  %cmp95 = icmp ule i32 %55, 36
  br i1 %cmp95, label %cond.true.97, label %cond.false.115

cond.true.97:                                     ; preds = %land.lhs.true.94, %land.lhs.true.88, %land.lhs.true.82, %land.lhs.true.76
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load98 = load i32, i32* %57, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %idxprom101 = sext i32 %bf.clear100 to i64
  %arrayidx102 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom101
  %58 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp eq i32 %58, 5
  br i1 %cmp103, label %lor.end.113, label %lor.rhs.105

lor.rhs.105:                                      ; preds = %cond.true.97
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load106 = load i32, i32* %60, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %idxprom109 = sext i32 %bf.clear108 to i64
  %arrayidx110 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom109
  %61 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp eq i32 %61, 6
  br label %lor.end.113

lor.end.113:                                      ; preds = %lor.rhs.105, %cond.true.97
  %62 = phi i1 [ true, %cond.true.97 ], [ %cmp111, %lor.rhs.105 ]
  %cond114 = select i1 %62, i32 2, i32 1
  br label %cond.end.155

cond.false.115:                                   ; preds = %land.lhs.true.94, %lor.lhs.false.91
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load116 = load i32, i32* %64, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %cmp119 = icmp eq i32 %bf.clear118, 18
  br i1 %cmp119, label %cond.true.121, label %cond.false.125

cond.true.121:                                    ; preds = %cond.false.115
  %65 = load i32, i32* @target_flags, align 4
  %and122 = and i32 %65, 33554432
  %tobool123 = icmp ne i32 %and122, 0
  %cond124 = select i1 %tobool123, i32 2, i32 3
  br label %cond.end.153

cond.false.125:                                   ; preds = %cond.false.115
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load126 = load i32, i32* %67, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 16
  %bf.clear128 = and i32 %bf.lshr127, 255
  %cmp129 = icmp eq i32 %bf.clear128, 24
  br i1 %cmp129, label %cond.true.131, label %cond.false.135

cond.true.131:                                    ; preds = %cond.false.125
  %68 = load i32, i32* @target_flags, align 4
  %and132 = and i32 %68, 33554432
  %tobool133 = icmp ne i32 %and132, 0
  %cond134 = select i1 %tobool133, i32 4, i32 6
  br label %cond.end.151

cond.false.135:                                   ; preds = %cond.false.125
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load136 = load i32, i32* %70, align 8
  %bf.lshr137 = lshr i32 %bf.load136, 16
  %bf.clear138 = and i32 %bf.lshr137, 255
  %idxprom139 = sext i32 %bf.clear138 to i64
  %arrayidx140 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom139
  %71 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %71 to i32
  %72 = load i32, i32* @target_flags, align 4
  %and142 = and i32 %72, 33554432
  %tobool143 = icmp ne i32 %and142, 0
  %cond144 = select i1 %tobool143, i32 8, i32 4
  %add145 = add nsw i32 %conv141, %cond144
  %sub146 = sub nsw i32 %add145, 1
  %73 = load i32, i32* @target_flags, align 4
  %and147 = and i32 %73, 33554432
  %tobool148 = icmp ne i32 %and147, 0
  %cond149 = select i1 %tobool148, i32 8, i32 4
  %div150 = sdiv i32 %sub146, %cond149
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.135, %cond.true.131
  %cond152 = phi i32 [ %cond134, %cond.true.131 ], [ %div150, %cond.false.135 ]
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.end.151, %cond.true.121
  %cond154 = phi i32 [ %cond124, %cond.true.121 ], [ %cond152, %cond.end.151 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %lor.end.113
  %cond156 = phi i32 [ %cond114, %lor.end.113 ], [ %cond154, %cond.end.153 ]
  %add157 = add i32 %47, %cond156
  store i32 %add157, i32* %last_regno73, align 4
  %74 = load i32, i32* %last_regno73, align 4
  %cmp158 = icmp ugt i32 %74, 53
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end.155
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.mark_referenced_resources, i32 0, i32 0)) #5
  unreachable

if.end.161:                                       ; preds = %cond.end.155
  %75 = load i32, i32* %regno70, align 4
  store i32 %75, i32* %r, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.170, %if.end.161
  %76 = load i32, i32* %r, align 4
  %77 = load i32, i32* %last_regno73, align 4
  %cmp163 = icmp ult i32 %76, %77
  br i1 %cmp163, label %for.body.165, label %for.end.172

for.body.165:                                     ; preds = %for.cond.162
  %78 = load i32, i32* %r, align 4
  %sh_prom166 = zext i32 %78 to i64
  %shl167 = shl i64 1, %sh_prom166
  %79 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs168 = getelementptr inbounds %struct.resources, %struct.resources* %79, i32 0, i32 4
  %80 = load i64, i64* %regs168, align 8
  %or169 = or i64 %80, %shl167
  store i64 %or169, i64* %regs168, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.165
  %81 = load i32, i32* %r, align 4
  %inc171 = add i32 %81, 1
  store i32 %inc171, i32* %r, align 4
  br label %for.cond.162

for.end.172:                                      ; preds = %for.cond.162
  br label %for.end.438

sw.bb.173:                                        ; preds = %entry
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load174 = load i32, i32* %83, align 8
  %bf.lshr175 = lshr i32 %bf.load174, 26
  %bf.clear176 = and i32 %bf.lshr175, 1
  %tobool177 = icmp ne i32 %bf.clear176, 0
  br i1 %tobool177, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %sw.bb.173
  %84 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %84, i32 0, i32 1
  store i8 1, i8* %unch_memory, align 1
  br label %if.end.180

if.else.179:                                      ; preds = %sw.bb.173
  %85 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %memory = getelementptr inbounds %struct.resources, %struct.resources* %85, i32 0, i32 0
  store i8 1, i8* %memory, align 1
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.179, %if.then.178
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load181 = load i32, i32* %87, align 8
  %bf.lshr182 = lshr i32 %bf.load181, 27
  %bf.clear183 = and i32 %bf.lshr182, 1
  %88 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %88, i32 0, i32 2
  %89 = load i8, i8* %volatil, align 1
  %conv184 = sext i8 %89 to i32
  %or185 = or i32 %conv184, %bf.clear183
  %conv186 = trunc i32 %or185 to i8
  store i8 %conv186, i8* %volatil, align 1
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtx189 = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx189, align 8
  %92 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %91, %struct.resources* %92, i32 0)
  br label %for.end.438

sw.bb.190:                                        ; preds = %entry
  %93 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %cc = getelementptr inbounds %struct.resources, %struct.resources* %93, i32 0, i32 3
  store i8 1, i8* %cc, align 1
  br label %for.end.438

sw.bb.191:                                        ; preds = %entry, %entry
  %94 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil192 = getelementptr inbounds %struct.resources, %struct.resources* %94, i32 0, i32 2
  store i8 1, i8* %volatil192, align 1
  br label %for.end.438

sw.bb.193:                                        ; preds = %entry
  %95 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil194 = getelementptr inbounds %struct.resources, %struct.resources* %95, i32 0, i32 2
  store i8 1, i8* %volatil194, align 1
  br label %sw.epilog

sw.bb.195:                                        ; preds = %entry
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load196 = load i32, i32* %97, align 8
  %bf.lshr197 = lshr i32 %bf.load196, 27
  %bf.clear198 = and i32 %bf.lshr197, 1
  %98 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil199 = getelementptr inbounds %struct.resources, %struct.resources* %98, i32 0, i32 2
  %99 = load i8, i8* %volatil199, align 1
  %conv200 = sext i8 %99 to i32
  %or201 = or i32 %conv200, %bf.clear198
  %conv202 = trunc i32 %or201 to i8
  store i8 %conv202, i8* %volatil199, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.214, %sw.bb.195
  %100 = load i32, i32* %i, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx205 to %struct.rtvec_def**
  %102 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %102, i32 0, i32 0
  %103 = load i32, i32* %num_elem, align 4
  %cmp206 = icmp slt i32 %100, %103
  br i1 %cmp206, label %for.body.208, label %for.end.216

for.body.208:                                     ; preds = %for.cond.203
  %104 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %104 to i64
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld210 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld210, i32 0, i64 3
  %rtvec212 = bitcast %union.rtunion_def* %arrayidx211 to %struct.rtvec_def**
  %106 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec212, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %106, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom209
  %107 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx213, align 8
  %108 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %107, %struct.resources* %108, i32 0)
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.208
  %109 = load i32, i32* %i, align 4
  %inc215 = add nsw i32 %109, 1
  store i32 %inc215, i32* %i, align 4
  br label %for.cond.203

for.end.216:                                      ; preds = %for.cond.203
  br label %for.end.438

sw.bb.217:                                        ; preds = %entry
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 0
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %113 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %112, %struct.resources* %113, i32 0)
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 1
  %rtx226 = bitcast %union.rtunion_def* %arrayidx225 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx226, align 8
  %116 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %115, %struct.resources* %116, i32 0)
  br label %for.end.438

sw.bb.227:                                        ; preds = %entry
  %117 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 1
  %rtx230 = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx230, align 8
  %119 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %118, %struct.resources* %119, i32 0)
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  store %struct.rtx_def* %121, %struct.rtx_def** %x.addr, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load234 = load i32, i32* %123, align 8
  %bf.clear235 = and i32 %bf.load234, 65535
  %cmp236 = icmp eq i32 %bf.clear235, 132
  br i1 %cmp236, label %if.then.248, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %sw.bb.227
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load239 = load i32, i32* %125, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 133
  br i1 %cmp241, label %if.then.248, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.238
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load244 = load i32, i32* %127, align 8
  %bf.clear245 = and i32 %bf.load244, 65535
  %cmp246 = icmp eq i32 %bf.clear245, 64
  br i1 %cmp246, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %lor.lhs.false.243, %lor.lhs.false.238, %sw.bb.227
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %129 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %128, %struct.resources* %129, i32 0)
  br label %if.end.259

if.else.249:                                      ; preds = %lor.lhs.false.243
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load250 = load i32, i32* %131, align 8
  %bf.clear251 = and i32 %bf.load250, 65535
  %cmp252 = icmp eq i32 %bf.clear251, 63
  br i1 %cmp252, label %if.then.254, label %if.end.258

if.then.254:                                      ; preds = %if.else.249
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 0
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  store %struct.rtx_def* %133, %struct.rtx_def** %x.addr, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.254, %if.else.249
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.248
  %134 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load260 = load i32, i32* %135, align 8
  %bf.clear261 = and i32 %bf.load260, 65535
  %cmp262 = icmp eq i32 %bf.clear261, 66
  br i1 %cmp262, label %if.then.264, label %if.end.268

if.then.264:                                      ; preds = %if.end.259
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld265, i32 0, i64 0
  %rtx267 = bitcast %union.rtunion_def* %arrayidx266 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx267, align 8
  %138 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %137, %struct.resources* %138, i32 0)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.264, %if.end.259
  br label %for.end.438

sw.bb.269:                                        ; preds = %entry
  br label %for.end.438

sw.bb.270:                                        ; preds = %entry
  %139 = load i32, i32* %include_delayed_effects.addr, align 4
  %tobool271 = icmp ne i32 %139, 0
  br i1 %tobool271, label %if.then.272, label %if.end.395

if.then.272:                                      ; preds = %sw.bb.270
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 1
  %rtx275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx275, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %sequence, align 8
  store i32 0, i32* %seq_size, align 4
  %142 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 2
  %rtx279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx279, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp280 = icmp ne %struct.rtx_def* %143, %144
  br i1 %cmp280, label %if.then.282, label %if.end.299

if.then.282:                                      ; preds = %if.then.272
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 2
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %fld286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld286, i32 0, i64 3
  %rtx288 = bitcast %union.rtunion_def* %arrayidx287 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx288, align 8
  store %struct.rtx_def* %147, %struct.rtx_def** %sequence, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld289, i32 0, i64 0
  %rtvec291 = bitcast %union.rtunion_def* %arrayidx290 to %struct.rtvec_def**
  %149 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec291, align 8
  %num_elem292 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %149, i32 0, i32 0
  %150 = load i32, i32* %num_elem292, align 4
  store i32 %150, i32* %seq_size, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load293 = load i32, i32* %152, align 8
  %bf.clear294 = and i32 %bf.load293, 65535
  %cmp295 = icmp ne i32 %bf.clear294, 24
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.then.282
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 338, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.mark_referenced_resources, i32 0, i32 0)) #5
  unreachable

if.end.298:                                       ; preds = %if.then.282
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then.272
  %153 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %memory300 = getelementptr inbounds %struct.resources, %struct.resources* %153, i32 0, i32 0
  store i8 1, i8* %memory300, align 1
  %154 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs301 = getelementptr inbounds %struct.resources, %struct.resources* %154, i32 0, i32 4
  %155 = load i64, i64* %regs301, align 8
  %or302 = or i64 %155, 128
  store i64 %or302, i64* %regs301, align 8
  %156 = load i32, i32* @frame_pointer_needed, align 4
  %tobool303 = icmp ne i32 %156, 0
  br i1 %tobool303, label %if.then.304, label %if.end.309

if.then.304:                                      ; preds = %if.end.299
  %157 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs305 = getelementptr inbounds %struct.resources, %struct.resources* %157, i32 0, i32 4
  %158 = load i64, i64* %regs305, align 8
  %or306 = or i64 %158, 1048576
  store i64 %or306, i64* %regs305, align 8
  %159 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs307 = getelementptr inbounds %struct.resources, %struct.resources* %159, i32 0, i32 4
  %160 = load i64, i64* %regs307, align 8
  %or308 = or i64 %160, 64
  store i64 %or308, i64* %regs307, align 8
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.304, %if.end.299
  store i32 0, i32* %i276, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.323, %if.end.309
  %161 = load i32, i32* %i276, align 4
  %cmp311 = icmp slt i32 %161, 53
  br i1 %cmp311, label %for.body.313, label %for.end.325

for.body.313:                                     ; preds = %for.cond.310
  %162 = load i32, i32* %i276, align 4
  %idxprom314 = sext i32 %162 to i64
  %arrayidx315 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom314
  %163 = load i8, i8* %arrayidx315, align 1
  %tobool316 = icmp ne i8 %163, 0
  br i1 %tobool316, label %if.then.317, label %if.end.322

if.then.317:                                      ; preds = %for.body.313
  %164 = load i32, i32* %i276, align 4
  %sh_prom318 = zext i32 %164 to i64
  %shl319 = shl i64 1, %sh_prom318
  %165 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs320 = getelementptr inbounds %struct.resources, %struct.resources* %165, i32 0, i32 4
  %166 = load i64, i64* %regs320, align 8
  %or321 = or i64 %166, %shl319
  store i64 %or321, i64* %regs320, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.317, %for.body.313
  br label %for.inc.323

for.inc.323:                                      ; preds = %if.end.322
  %167 = load i32, i32* %i276, align 4
  %inc324 = add nsw i32 %167, 1
  store i32 %inc324, i32* %i276, align 4
  br label %for.cond.310

for.end.325:                                      ; preds = %for.cond.310
  %168 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call326 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %168, i32 28, %struct.rtx_def* null)
  %tobool327 = icmp ne %struct.rtx_def* %call326, null
  br i1 %tobool327, label %if.then.328, label %if.end.330

if.then.328:                                      ; preds = %for.end.325
  %169 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs329 = getelementptr inbounds %struct.resources, %struct.resources* %169, i32 0, i32 4
  store i64 -1, i64* %regs329, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.328, %for.end.325
  %170 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld331, i32 0, i64 7
  %rtx333 = bitcast %union.rtunion_def* %arrayidx332 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rtx333, align 8
  store %struct.rtx_def* %171, %struct.rtx_def** %link, align 8
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.390, %if.end.330
  %172 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool335 = icmp ne %struct.rtx_def* %172, null
  br i1 %tobool335, label %for.body.336, label %for.end.394

for.body.336:                                     ; preds = %for.cond.334
  %173 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 0
  %rtx339 = bitcast %union.rtunion_def* %arrayidx338 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx339, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load340 = load i32, i32* %175, align 8
  %bf.clear341 = and i32 %bf.load340, 65535
  %cmp342 = icmp eq i32 %bf.clear341, 48
  br i1 %cmp342, label %if.then.344, label %if.end.389

if.then.344:                                      ; preds = %for.body.336
  store i32 1, i32* %i276, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.376, %if.then.344
  %176 = load i32, i32* %i276, align 4
  %177 = load i32, i32* %seq_size, align 4
  %cmp346 = icmp slt i32 %176, %177
  br i1 %cmp346, label %for.body.348, label %for.end.378

for.body.348:                                     ; preds = %for.cond.345
  %178 = load i32, i32* %i276, align 4
  %idxprom349 = sext i32 %178 to i64
  %179 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld350, i32 0, i64 0
  %rtvec352 = bitcast %union.rtunion_def* %arrayidx351 to %struct.rtvec_def**
  %180 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec352, align 8
  %elem353 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %180, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem353, i32 0, i64 %idxprom349
  %181 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx354, align 8
  %fld355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld355, i32 0, i64 3
  %rtx357 = bitcast %union.rtunion_def* %arrayidx356 to %struct.rtx_def**
  %182 = load %struct.rtx_def*, %struct.rtx_def** %rtx357, align 8
  store %struct.rtx_def* %182, %struct.rtx_def** %slot_pat, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %slot_pat, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %bf.load358 = load i32, i32* %184, align 8
  %bf.clear359 = and i32 %bf.load358, 65535
  %cmp360 = icmp eq i32 %bf.clear359, 47
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.375

land.lhs.true.362:                                ; preds = %for.body.348
  %185 = load %struct.rtx_def*, %struct.rtx_def** %slot_pat, align 8
  %fld363 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx364 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld363, i32 0, i64 0
  %rtx365 = bitcast %union.rtunion_def* %arrayidx364 to %struct.rtx_def**
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtx365, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 0
  %rtx371 = bitcast %union.rtunion_def* %arrayidx370 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx371, align 8
  %call372 = call i32 @rtx_equal_p(%struct.rtx_def* %186, %struct.rtx_def* %189)
  %tobool373 = icmp ne i32 %call372, 0
  br i1 %tobool373, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %land.lhs.true.362
  br label %for.end.378

if.end.375:                                       ; preds = %land.lhs.true.362, %for.body.348
  br label %for.inc.376

for.inc.376:                                      ; preds = %if.end.375
  %190 = load i32, i32* %i276, align 4
  %inc377 = add nsw i32 %190, 1
  store i32 %inc377, i32* %i276, align 4
  br label %for.cond.345

for.end.378:                                      ; preds = %if.then.374, %for.cond.345
  %191 = load i32, i32* %i276, align 4
  %192 = load i32, i32* %seq_size, align 4
  %cmp379 = icmp sge i32 %191, %192
  br i1 %cmp379, label %if.then.381, label %if.end.388

if.then.381:                                      ; preds = %for.end.378
  %193 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %193, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 0
  %rtx384 = bitcast %union.rtunion_def* %arrayidx383 to %struct.rtx_def**
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtx384, align 8
  %fld385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld385, i32 0, i64 0
  %rtx387 = bitcast %union.rtunion_def* %arrayidx386 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx387, align 8
  %196 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %195, %struct.resources* %196, i32 0)
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.381, %for.end.378
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %for.body.336
  br label %for.inc.390

for.inc.390:                                      ; preds = %if.end.389
  %197 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld391, i32 0, i64 1
  %rtx393 = bitcast %union.rtunion_def* %arrayidx392 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %rtx393, align 8
  store %struct.rtx_def* %198, %struct.rtx_def** %link, align 8
  br label %for.cond.334

for.end.394:                                      ; preds = %for.cond.334
  br label %if.end.395

if.end.395:                                       ; preds = %for.end.394, %sw.bb.270
  br label %sw.bb.396

sw.bb.396:                                        ; preds = %entry, %entry, %if.end.395
  %199 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld397 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld397, i32 0, i64 3
  %rtx399 = bitcast %union.rtunion_def* %arrayidx398 to %struct.rtx_def**
  %200 = load %struct.rtx_def*, %struct.rtx_def** %rtx399, align 8
  %201 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %202 = load i32, i32* %include_delayed_effects.addr, align 4
  call void @mark_referenced_resources(%struct.rtx_def* %200, %struct.resources* %201, i32 %202)
  br label %for.end.438

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.193
  %203 = load i32, i32* %code, align 4
  %idxprom400 = sext i32 %203 to i64
  %arrayidx401 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom400
  %204 = load i8*, i8** %arrayidx401, align 8
  store i8* %204, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.436, %sw.epilog
  %205 = load i32, i32* %i, align 4
  %206 = load i32, i32* %code, align 4
  %idxprom403 = sext i32 %206 to i64
  %arrayidx404 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom403
  %207 = load i8, i8* %arrayidx404, align 1
  %conv405 = zext i8 %207 to i32
  %cmp406 = icmp slt i32 %205, %conv405
  br i1 %cmp406, label %for.body.408, label %for.end.438

for.body.408:                                     ; preds = %for.cond.402
  %208 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %209 = load i8, i8* %208, align 1
  %conv409 = sext i8 %209 to i32
  switch i32 %conv409, label %sw.epilog.435 [
    i32 101, label %sw.bb.410
    i32 69, label %sw.bb.415
  ]

sw.bb.410:                                        ; preds = %for.body.408
  %210 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %210 to i64
  %211 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 %idxprom411
  %rtx414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx414, align 8
  %213 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %214 = load i32, i32* %include_delayed_effects.addr, align 4
  call void @mark_referenced_resources(%struct.rtx_def* %212, %struct.resources* %213, i32 %214)
  br label %sw.epilog.435

sw.bb.415:                                        ; preds = %for.body.408
  store i32 0, i32* %j, align 4
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.432, %sw.bb.415
  %215 = load i32, i32* %j, align 4
  %216 = load i32, i32* %i, align 4
  %idxprom417 = sext i32 %216 to i64
  %217 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld418, i32 0, i64 %idxprom417
  %rtvec420 = bitcast %union.rtunion_def* %arrayidx419 to %struct.rtvec_def**
  %218 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec420, align 8
  %num_elem421 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %218, i32 0, i32 0
  %219 = load i32, i32* %num_elem421, align 4
  %cmp422 = icmp slt i32 %215, %219
  br i1 %cmp422, label %for.body.424, label %for.end.434

for.body.424:                                     ; preds = %for.cond.416
  %220 = load i32, i32* %j, align 4
  %idxprom425 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom426 = sext i32 %221 to i64
  %222 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld427, i32 0, i64 %idxprom426
  %rtvec429 = bitcast %union.rtunion_def* %arrayidx428 to %struct.rtvec_def**
  %223 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec429, align 8
  %elem430 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %223, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem430, i32 0, i64 %idxprom425
  %224 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx431, align 8
  %225 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %226 = load i32, i32* %include_delayed_effects.addr, align 4
  call void @mark_referenced_resources(%struct.rtx_def* %224, %struct.resources* %225, i32 %226)
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.body.424
  %227 = load i32, i32* %j, align 4
  %inc433 = add nsw i32 %227, 1
  store i32 %inc433, i32* %j, align 4
  br label %for.cond.416

for.end.434:                                      ; preds = %for.cond.416
  br label %sw.epilog.435

sw.epilog.435:                                    ; preds = %for.body.408, %for.end.434, %sw.bb.410
  br label %for.inc.436

for.inc.436:                                      ; preds = %sw.epilog.435
  %228 = load i32, i32* %i, align 4
  %inc437 = add nsw i32 %228, 1
  store i32 %inc437, i32* %i, align 4
  br label %for.cond.402

for.end.438:                                      ; preds = %sw.bb, %if.end.68, %for.end.172, %if.end.180, %sw.bb.190, %sw.bb.191, %for.end.216, %sw.bb.217, %if.end.268, %sw.bb.269, %sw.bb.396, %for.cond.402
  ret void
}

declare i32 @subreg_regno(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @mark_set_resources(%struct.rtx_def* %x, %struct.resources* %res, i32 %in_dest, i32 %mark_type) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %res.addr = alloca %struct.resources*, align 8
  %in_dest.addr = alloca i32, align 4
  %mark_type.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %last_regno = alloca i32, align 4
  %regno284 = alloca i32, align 4
  %last_regno287 = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.resources* %res, %struct.resources** %res.addr, align 8
  store i32 %in_dest, i32* %in_dest.addr, align 4
  store i32 %mark_type, i32* %mark_type.addr, align 4
  br label %restart

restart:                                          ; preds = %if.then.54, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 37, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 48, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb.1
    i32 34, label %sw.bb.2
    i32 33, label %sw.bb.42
    i32 32, label %sw.bb.42
    i32 47, label %sw.bb.56
    i32 49, label %sw.bb.76
    i32 24, label %sw.bb.80
    i32 99, label %sw.bb.116
    i32 97, label %sw.bb.116
    i32 98, label %sw.bb.116
    i32 96, label %sw.bb.116
    i32 100, label %sw.bb.120
    i32 101, label %sw.bb.120
    i32 132, label %sw.bb.136
    i32 133, label %sw.bb.136
    i32 66, label %sw.bb.152
    i32 63, label %sw.bb.172
    i32 61, label %sw.bb.281
    i32 64, label %sw.bb.389
    i32 43, label %sw.bb.399
    i32 40, label %sw.bb.399
    i32 52, label %sw.bb.401
    i32 41, label %sw.bb.403
  ]

sw.bb:                                            ; preds = %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart
  br label %for.end.466

sw.bb.1:                                          ; preds = %restart
  %3 = load i32, i32* %in_dest.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %4 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %cc = getelementptr inbounds %struct.resources, %struct.resources* %4, i32 0, i32 3
  store i8 1, i8* %cc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %for.end.466

sw.bb.2:                                          ; preds = %restart
  %5 = load i32, i32* %mark_type.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then.3, label %if.end.41

if.then.3:                                        ; preds = %sw.bb.2
  %6 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %memory = getelementptr inbounds %struct.resources, %struct.resources* %6, i32 0, i32 0
  store i8 1, i8* %memory, align 1
  %7 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %cc4 = getelementptr inbounds %struct.resources, %struct.resources* %7, i32 0, i32 3
  store i8 1, i8* %cc4, align 1
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %8 = load i32, i32* %r, align 4
  %cmp5 = icmp ult i32 %8, 53
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %r, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, i32* %r, align 4
  %idxprom7 = zext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom7
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %for.body
  %13 = load i32, i32* %r, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %14 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %14, i32 0, i32 4
  %15 = load i64, i64* %regs, align 8
  %or = or i64 %15, %shl
  store i64 %or, i64* %regs, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %16 = load i32, i32* %r, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %link, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.32, %for.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool15 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool15, label %for.body.16, label %for.end.36

for.body.16:                                      ; preds = %for.cond.14
  %20 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load20 = load i32, i32* %22, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 49
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %for.body.16
  %23 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %26 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %25, %struct.resources* %26, i32 1, i32 0)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %for.body.16
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %27 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %link, align 8
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %29, i32 28, %struct.rtx_def* null)
  %tobool37 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %for.end.36
  %30 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs39 = getelementptr inbounds %struct.resources, %struct.resources* %30, i32 0, i32 4
  store i64 -1, i64* %regs39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %for.end.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %sw.bb.2
  br label %sw.bb.42

sw.bb.42:                                         ; preds = %restart, %restart, %if.end.41
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 3
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %x.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load46 = load i32, i32* %34, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp ne i32 %bf.clear47, 48
  br i1 %cmp48, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %sw.bb.42
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load50 = load i32, i32* %36, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp ne i32 %bf.clear51, 49
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true
  br label %restart

if.end.55:                                        ; preds = %land.lhs.true, %sw.bb.42
  br label %for.end.466

sw.bb.56:                                         ; preds = %restart
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %39 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %40 = load i32, i32* %mark_type.addr, align 4
  %cmp60 = icmp eq i32 %40, 1
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.56
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load65 = load i32, i32* %43, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp ne i32 %bf.clear66, 50
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.56
  %44 = phi i1 [ true, %sw.bb.56 ], [ %cmp67, %lor.rhs ]
  %lor.ext = zext i1 %44 to i32
  %45 = load i32, i32* %mark_type.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %38, %struct.resources* %39, i32 %lor.ext, i32 %45)
  %46 = load i32, i32* %mark_type.addr, align 4
  %cmp69 = icmp ne i32 %46, 2
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %lor.end
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 1
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %49 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %48, %struct.resources* %49, i32 0, i32 0)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %lor.end
  br label %for.end.466

sw.bb.76:                                         ; preds = %restart
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %52 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %51, %struct.resources* %52, i32 1, i32 0)
  br label %for.end.466

sw.bb.80:                                         ; preds = %restart
  store i32 0, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.113, %sw.bb.80
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtvec_def**
  %55 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %55, i32 0, i32 0
  %56 = load i32, i32* %num_elem, align 4
  %cmp84 = icmp slt i32 %53, %56
  br i1 %cmp84, label %for.body.86, label %for.end.115

for.body.86:                                      ; preds = %for.cond.81
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtvec89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtvec_def**
  %58 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec89, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %58, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx90, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load91 = load i32, i32* %60, align 8
  %bf.lshr = lshr i32 %bf.load91, 26
  %bf.clear92 = and i32 %bf.lshr, 1
  %tobool93 = icmp ne i32 %bf.clear92, 0
  br i1 %tobool93, label %land.lhs.true.94, label %if.then.105

land.lhs.true.94:                                 ; preds = %for.body.86
  %61 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %61 to i64
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtvec98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtvec_def**
  %63 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec98, align 8
  %elem99 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %63, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem99, i32 0, i64 %idxprom95
  %64 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx100, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load101 = load i32, i32* %65, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 28
  %bf.clear103 = and i32 %bf.lshr102, 1
  %tobool104 = icmp ne i32 %bf.clear103, 0
  br i1 %tobool104, label %if.end.112, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.94, %for.body.86
  %66 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %66 to i64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtvec109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtvec_def**
  %68 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec109, align 8
  %elem110 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %68, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem110, i32 0, i64 %idxprom106
  %69 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx111, align 8
  %70 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %71 = load i32, i32* %mark_type.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %69, %struct.resources* %70, i32 0, i32 %71)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.105, %land.lhs.true.94
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %72 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %72, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.81

for.end.115:                                      ; preds = %for.cond.81
  br label %for.end.466

sw.bb.116:                                        ; preds = %restart, %restart, %restart, %restart
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %75 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %74, %struct.resources* %75, i32 1, i32 0)
  br label %for.end.466

sw.bb.120:                                        ; preds = %restart, %restart
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %78 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %77, %struct.resources* %78, i32 1, i32 0)
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  %82 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %81, %struct.resources* %82, i32 0, i32 0)
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 1
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 1
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %86 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %85, %struct.resources* %86, i32 0, i32 0)
  br label %for.end.466

sw.bb.136:                                        ; preds = %restart, %restart
  %87 = load i32, i32* %mark_type.addr, align 4
  %cmp137 = icmp eq i32 %87, 2
  br i1 %cmp137, label %land.lhs.true.139, label %if.then.141

land.lhs.true.139:                                ; preds = %sw.bb.136
  %88 = load i32, i32* %in_dest.addr, align 4
  %tobool140 = icmp ne i32 %88, 0
  br i1 %tobool140, label %if.end.151, label %if.then.141

if.then.141:                                      ; preds = %land.lhs.true.139, %sw.bb.136
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %91 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %92 = load i32, i32* %in_dest.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %90, %struct.resources* %91, i32 %92, i32 0)
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 1
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %95 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %94, %struct.resources* %95, i32 0, i32 0)
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 2
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %98 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %97, %struct.resources* %98, i32 0, i32 0)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.141, %land.lhs.true.139
  br label %for.end.466

sw.bb.152:                                        ; preds = %restart
  %99 = load i32, i32* %in_dest.addr, align 4
  %tobool153 = icmp ne i32 %99, 0
  br i1 %tobool153, label %if.then.154, label %if.end.168

if.then.154:                                      ; preds = %sw.bb.152
  %100 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %memory155 = getelementptr inbounds %struct.resources, %struct.resources* %100, i32 0, i32 0
  store i8 1, i8* %memory155, align 1
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load156 = load i32, i32* %102, align 8
  %bf.lshr157 = lshr i32 %bf.load156, 26
  %bf.clear158 = and i32 %bf.lshr157, 1
  %103 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %103, i32 0, i32 1
  %104 = load i8, i8* %unch_memory, align 1
  %conv159 = sext i8 %104 to i32
  %or160 = or i32 %conv159, %bf.clear158
  %conv161 = trunc i32 %or160 to i8
  store i8 %conv161, i8* %unch_memory, align 1
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load162 = load i32, i32* %106, align 8
  %bf.lshr163 = lshr i32 %bf.load162, 27
  %bf.clear164 = and i32 %bf.lshr163, 1
  %107 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %107, i32 0, i32 2
  %108 = load i8, i8* %volatil, align 1
  %conv165 = sext i8 %108 to i32
  %or166 = or i32 %conv165, %bf.clear164
  %conv167 = trunc i32 %or166 to i8
  store i8 %conv167, i8* %volatil, align 1
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.154, %sw.bb.152
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 0
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  %111 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %110, %struct.resources* %111, i32 0, i32 0)
  br label %for.end.466

sw.bb.172:                                        ; preds = %restart
  %112 = load i32, i32* %in_dest.addr, align 4
  %tobool173 = icmp ne i32 %112, 0
  br i1 %tobool173, label %if.then.174, label %if.end.280

if.then.174:                                      ; preds = %sw.bb.172
  %113 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load178 = load i32, i32* %115, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp ne i32 %bf.clear179, 61
  br i1 %cmp180, label %if.then.182, label %if.else

if.then.182:                                      ; preds = %if.then.174
  %116 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %118 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %119 = load i32, i32* %in_dest.addr, align 4
  %120 = load i32, i32* %mark_type.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %117, %struct.resources* %118, i32 %119, i32 %120)
  br label %if.end.279

if.else:                                          ; preds = %if.then.174
  %121 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call186 = call i32 @subreg_regno(%struct.rtx_def* %121)
  store i32 %call186, i32* %regno, align 4
  %122 = load i32, i32* %regno, align 4
  %123 = load i32, i32* %regno, align 4
  %cmp187 = icmp uge i32 %123, 8
  br i1 %cmp187, label %land.lhs.true.189, label %lor.lhs.false.192

land.lhs.true.189:                                ; preds = %if.else
  %124 = load i32, i32* %regno, align 4
  %cmp190 = icmp ule i32 %124, 15
  br i1 %cmp190, label %cond.true, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %land.lhs.true.189, %if.else
  %125 = load i32, i32* %regno, align 4
  %cmp193 = icmp uge i32 %125, 21
  br i1 %cmp193, label %land.lhs.true.195, label %lor.lhs.false.198

land.lhs.true.195:                                ; preds = %lor.lhs.false.192
  %126 = load i32, i32* %regno, align 4
  %cmp196 = icmp ule i32 %126, 28
  br i1 %cmp196, label %cond.true, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.195, %lor.lhs.false.192
  %127 = load i32, i32* %regno, align 4
  %cmp199 = icmp uge i32 %127, 45
  br i1 %cmp199, label %land.lhs.true.201, label %lor.lhs.false.204

land.lhs.true.201:                                ; preds = %lor.lhs.false.198
  %128 = load i32, i32* %regno, align 4
  %cmp202 = icmp ule i32 %128, 52
  br i1 %cmp202, label %cond.true, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %land.lhs.true.201, %lor.lhs.false.198
  %129 = load i32, i32* %regno, align 4
  %cmp205 = icmp uge i32 %129, 29
  br i1 %cmp205, label %land.lhs.true.207, label %cond.false

land.lhs.true.207:                                ; preds = %lor.lhs.false.204
  %130 = load i32, i32* %regno, align 4
  %cmp208 = icmp ule i32 %130, 36
  br i1 %cmp208, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.207, %land.lhs.true.201, %land.lhs.true.195, %land.lhs.true.189
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load210 = load i32, i32* %132, align 8
  %bf.lshr211 = lshr i32 %bf.load210, 16
  %bf.clear212 = and i32 %bf.lshr211, 255
  %idxprom213 = sext i32 %bf.clear212 to i64
  %arrayidx214 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom213
  %133 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp eq i32 %133, 5
  br i1 %cmp215, label %lor.end.225, label %lor.rhs.217

lor.rhs.217:                                      ; preds = %cond.true
  %134 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load218 = load i32, i32* %135, align 8
  %bf.lshr219 = lshr i32 %bf.load218, 16
  %bf.clear220 = and i32 %bf.lshr219, 255
  %idxprom221 = sext i32 %bf.clear220 to i64
  %arrayidx222 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom221
  %136 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp eq i32 %136, 6
  br label %lor.end.225

lor.end.225:                                      ; preds = %lor.rhs.217, %cond.true
  %137 = phi i1 [ true, %cond.true ], [ %cmp223, %lor.rhs.217 ]
  %cond = select i1 %137, i32 2, i32 1
  br label %cond.end.261

cond.false:                                       ; preds = %land.lhs.true.207, %lor.lhs.false.204
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load227 = load i32, i32* %139, align 8
  %bf.lshr228 = lshr i32 %bf.load227, 16
  %bf.clear229 = and i32 %bf.lshr228, 255
  %cmp230 = icmp eq i32 %bf.clear229, 18
  br i1 %cmp230, label %cond.true.232, label %cond.false.235

cond.true.232:                                    ; preds = %cond.false
  %140 = load i32, i32* @target_flags, align 4
  %and = and i32 %140, 33554432
  %tobool233 = icmp ne i32 %and, 0
  %cond234 = select i1 %tobool233, i32 2, i32 3
  br label %cond.end.259

cond.false.235:                                   ; preds = %cond.false
  %141 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load236 = load i32, i32* %142, align 8
  %bf.lshr237 = lshr i32 %bf.load236, 16
  %bf.clear238 = and i32 %bf.lshr237, 255
  %cmp239 = icmp eq i32 %bf.clear238, 24
  br i1 %cmp239, label %cond.true.241, label %cond.false.245

cond.true.241:                                    ; preds = %cond.false.235
  %143 = load i32, i32* @target_flags, align 4
  %and242 = and i32 %143, 33554432
  %tobool243 = icmp ne i32 %and242, 0
  %cond244 = select i1 %tobool243, i32 4, i32 6
  br label %cond.end

cond.false.245:                                   ; preds = %cond.false.235
  %144 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load246 = load i32, i32* %145, align 8
  %bf.lshr247 = lshr i32 %bf.load246, 16
  %bf.clear248 = and i32 %bf.lshr247, 255
  %idxprom249 = sext i32 %bf.clear248 to i64
  %arrayidx250 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom249
  %146 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %146 to i32
  %147 = load i32, i32* @target_flags, align 4
  %and252 = and i32 %147, 33554432
  %tobool253 = icmp ne i32 %and252, 0
  %cond254 = select i1 %tobool253, i32 8, i32 4
  %add = add nsw i32 %conv251, %cond254
  %sub = sub nsw i32 %add, 1
  %148 = load i32, i32* @target_flags, align 4
  %and255 = and i32 %148, 33554432
  %tobool256 = icmp ne i32 %and255, 0
  %cond257 = select i1 %tobool256, i32 8, i32 4
  %div = sdiv i32 %sub, %cond257
  br label %cond.end

cond.end:                                         ; preds = %cond.false.245, %cond.true.241
  %cond258 = phi i32 [ %cond244, %cond.true.241 ], [ %div, %cond.false.245 ]
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.end, %cond.true.232
  %cond260 = phi i32 [ %cond234, %cond.true.232 ], [ %cond258, %cond.end ]
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.end.259, %lor.end.225
  %cond262 = phi i32 [ %cond, %lor.end.225 ], [ %cond260, %cond.end.259 ]
  %add263 = add i32 %122, %cond262
  store i32 %add263, i32* %last_regno, align 4
  %149 = load i32, i32* %last_regno, align 4
  %cmp264 = icmp ugt i32 %149, 53
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %cond.end.261
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 779, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.mark_set_resources, i32 0, i32 0)) #5
  unreachable

if.end.267:                                       ; preds = %cond.end.261
  %150 = load i32, i32* %regno, align 4
  store i32 %150, i32* %r, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.276, %if.end.267
  %151 = load i32, i32* %r, align 4
  %152 = load i32, i32* %last_regno, align 4
  %cmp269 = icmp ult i32 %151, %152
  br i1 %cmp269, label %for.body.271, label %for.end.278

for.body.271:                                     ; preds = %for.cond.268
  %153 = load i32, i32* %r, align 4
  %sh_prom272 = zext i32 %153 to i64
  %shl273 = shl i64 1, %sh_prom272
  %154 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs274 = getelementptr inbounds %struct.resources, %struct.resources* %154, i32 0, i32 4
  %155 = load i64, i64* %regs274, align 8
  %or275 = or i64 %155, %shl273
  store i64 %or275, i64* %regs274, align 8
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.body.271
  %156 = load i32, i32* %r, align 4
  %inc277 = add i32 %156, 1
  store i32 %inc277, i32* %r, align 4
  br label %for.cond.268

for.end.278:                                      ; preds = %for.cond.268
  br label %if.end.279

if.end.279:                                       ; preds = %for.end.278, %if.then.182
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %sw.bb.172
  br label %for.end.466

sw.bb.281:                                        ; preds = %restart
  %157 = load i32, i32* %in_dest.addr, align 4
  %tobool282 = icmp ne i32 %157, 0
  br i1 %tobool282, label %if.then.283, label %if.end.388

if.then.283:                                      ; preds = %sw.bb.281
  %158 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld285, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx286 to i32*
  %159 = load i32, i32* %rtuint, align 4
  store i32 %159, i32* %regno284, align 4
  %160 = load i32, i32* %regno284, align 4
  %161 = load i32, i32* %regno284, align 4
  %cmp288 = icmp uge i32 %161, 8
  br i1 %cmp288, label %land.lhs.true.290, label %lor.lhs.false.293

land.lhs.true.290:                                ; preds = %if.then.283
  %162 = load i32, i32* %regno284, align 4
  %cmp291 = icmp ule i32 %162, 15
  br i1 %cmp291, label %cond.true.311, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %land.lhs.true.290, %if.then.283
  %163 = load i32, i32* %regno284, align 4
  %cmp294 = icmp uge i32 %163, 21
  br i1 %cmp294, label %land.lhs.true.296, label %lor.lhs.false.299

land.lhs.true.296:                                ; preds = %lor.lhs.false.293
  %164 = load i32, i32* %regno284, align 4
  %cmp297 = icmp ule i32 %164, 28
  br i1 %cmp297, label %cond.true.311, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %land.lhs.true.296, %lor.lhs.false.293
  %165 = load i32, i32* %regno284, align 4
  %cmp300 = icmp uge i32 %165, 45
  br i1 %cmp300, label %land.lhs.true.302, label %lor.lhs.false.305

land.lhs.true.302:                                ; preds = %lor.lhs.false.299
  %166 = load i32, i32* %regno284, align 4
  %cmp303 = icmp ule i32 %166, 52
  br i1 %cmp303, label %cond.true.311, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %land.lhs.true.302, %lor.lhs.false.299
  %167 = load i32, i32* %regno284, align 4
  %cmp306 = icmp uge i32 %167, 29
  br i1 %cmp306, label %land.lhs.true.308, label %cond.false.330

land.lhs.true.308:                                ; preds = %lor.lhs.false.305
  %168 = load i32, i32* %regno284, align 4
  %cmp309 = icmp ule i32 %168, 36
  br i1 %cmp309, label %cond.true.311, label %cond.false.330

cond.true.311:                                    ; preds = %land.lhs.true.308, %land.lhs.true.302, %land.lhs.true.296, %land.lhs.true.290
  %169 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load312 = load i32, i32* %170, align 8
  %bf.lshr313 = lshr i32 %bf.load312, 16
  %bf.clear314 = and i32 %bf.lshr313, 255
  %idxprom315 = sext i32 %bf.clear314 to i64
  %arrayidx316 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom315
  %171 = load i32, i32* %arrayidx316, align 4
  %cmp317 = icmp eq i32 %171, 5
  br i1 %cmp317, label %lor.end.327, label %lor.rhs.319

lor.rhs.319:                                      ; preds = %cond.true.311
  %172 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load320 = load i32, i32* %173, align 8
  %bf.lshr321 = lshr i32 %bf.load320, 16
  %bf.clear322 = and i32 %bf.lshr321, 255
  %idxprom323 = sext i32 %bf.clear322 to i64
  %arrayidx324 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom323
  %174 = load i32, i32* %arrayidx324, align 4
  %cmp325 = icmp eq i32 %174, 6
  br label %lor.end.327

lor.end.327:                                      ; preds = %lor.rhs.319, %cond.true.311
  %175 = phi i1 [ true, %cond.true.311 ], [ %cmp325, %lor.rhs.319 ]
  %cond329 = select i1 %175, i32 2, i32 1
  br label %cond.end.370

cond.false.330:                                   ; preds = %land.lhs.true.308, %lor.lhs.false.305
  %176 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load331 = load i32, i32* %177, align 8
  %bf.lshr332 = lshr i32 %bf.load331, 16
  %bf.clear333 = and i32 %bf.lshr332, 255
  %cmp334 = icmp eq i32 %bf.clear333, 18
  br i1 %cmp334, label %cond.true.336, label %cond.false.340

cond.true.336:                                    ; preds = %cond.false.330
  %178 = load i32, i32* @target_flags, align 4
  %and337 = and i32 %178, 33554432
  %tobool338 = icmp ne i32 %and337, 0
  %cond339 = select i1 %tobool338, i32 2, i32 3
  br label %cond.end.368

cond.false.340:                                   ; preds = %cond.false.330
  %179 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load341 = load i32, i32* %180, align 8
  %bf.lshr342 = lshr i32 %bf.load341, 16
  %bf.clear343 = and i32 %bf.lshr342, 255
  %cmp344 = icmp eq i32 %bf.clear343, 24
  br i1 %cmp344, label %cond.true.346, label %cond.false.350

cond.true.346:                                    ; preds = %cond.false.340
  %181 = load i32, i32* @target_flags, align 4
  %and347 = and i32 %181, 33554432
  %tobool348 = icmp ne i32 %and347, 0
  %cond349 = select i1 %tobool348, i32 4, i32 6
  br label %cond.end.366

cond.false.350:                                   ; preds = %cond.false.340
  %182 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %183 = bitcast %struct.rtx_def* %182 to i32*
  %bf.load351 = load i32, i32* %183, align 8
  %bf.lshr352 = lshr i32 %bf.load351, 16
  %bf.clear353 = and i32 %bf.lshr352, 255
  %idxprom354 = sext i32 %bf.clear353 to i64
  %arrayidx355 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom354
  %184 = load i8, i8* %arrayidx355, align 1
  %conv356 = zext i8 %184 to i32
  %185 = load i32, i32* @target_flags, align 4
  %and357 = and i32 %185, 33554432
  %tobool358 = icmp ne i32 %and357, 0
  %cond359 = select i1 %tobool358, i32 8, i32 4
  %add360 = add nsw i32 %conv356, %cond359
  %sub361 = sub nsw i32 %add360, 1
  %186 = load i32, i32* @target_flags, align 4
  %and362 = and i32 %186, 33554432
  %tobool363 = icmp ne i32 %and362, 0
  %cond364 = select i1 %tobool363, i32 8, i32 4
  %div365 = sdiv i32 %sub361, %cond364
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.false.350, %cond.true.346
  %cond367 = phi i32 [ %cond349, %cond.true.346 ], [ %div365, %cond.false.350 ]
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.end.366, %cond.true.336
  %cond369 = phi i32 [ %cond339, %cond.true.336 ], [ %cond367, %cond.end.366 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %lor.end.327
  %cond371 = phi i32 [ %cond329, %lor.end.327 ], [ %cond369, %cond.end.368 ]
  %add372 = add i32 %160, %cond371
  store i32 %add372, i32* %last_regno287, align 4
  %187 = load i32, i32* %last_regno287, align 4
  %cmp373 = icmp ugt i32 %187, 53
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %cond.end.370
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 794, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.mark_set_resources, i32 0, i32 0)) #5
  unreachable

if.end.376:                                       ; preds = %cond.end.370
  %188 = load i32, i32* %regno284, align 4
  store i32 %188, i32* %r, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.385, %if.end.376
  %189 = load i32, i32* %r, align 4
  %190 = load i32, i32* %last_regno287, align 4
  %cmp378 = icmp ult i32 %189, %190
  br i1 %cmp378, label %for.body.380, label %for.end.387

for.body.380:                                     ; preds = %for.cond.377
  %191 = load i32, i32* %r, align 4
  %sh_prom381 = zext i32 %191 to i64
  %shl382 = shl i64 1, %sh_prom381
  %192 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs383 = getelementptr inbounds %struct.resources, %struct.resources* %192, i32 0, i32 4
  %193 = load i64, i64* %regs383, align 8
  %or384 = or i64 %193, %shl382
  store i64 %or384, i64* %regs383, align 8
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.body.380
  %194 = load i32, i32* %r, align 4
  %inc386 = add i32 %194, 1
  store i32 %inc386, i32* %r, align 4
  br label %for.cond.377

for.end.387:                                      ; preds = %for.cond.377
  br label %if.end.388

if.end.388:                                       ; preds = %for.end.387, %sw.bb.281
  br label %for.end.466

sw.bb.389:                                        ; preds = %restart
  %195 = load i32, i32* %mark_type.addr, align 4
  %cmp390 = icmp eq i32 %195, 2
  br i1 %cmp390, label %land.lhs.true.392, label %if.then.394

land.lhs.true.392:                                ; preds = %sw.bb.389
  %196 = load i32, i32* %in_dest.addr, align 4
  %tobool393 = icmp ne i32 %196, 0
  br i1 %tobool393, label %if.end.398, label %if.then.394

if.then.394:                                      ; preds = %land.lhs.true.392, %sw.bb.389
  %197 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 0
  %rtx397 = bitcast %union.rtunion_def* %arrayidx396 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %rtx397, align 8
  %199 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %198, %struct.resources* %199, i32 0, i32 0)
  br label %for.end.466

if.end.398:                                       ; preds = %land.lhs.true.392
  br label %sw.bb.399

sw.bb.399:                                        ; preds = %restart, %restart, %if.end.398
  %200 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil400 = getelementptr inbounds %struct.resources, %struct.resources* %200, i32 0, i32 2
  store i8 1, i8* %volatil400, align 1
  br label %for.end.466

sw.bb.401:                                        ; preds = %restart
  %201 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil402 = getelementptr inbounds %struct.resources, %struct.resources* %201, i32 0, i32 2
  store i8 1, i8* %volatil402, align 1
  br label %sw.epilog

sw.bb.403:                                        ; preds = %restart
  %202 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load404 = load i32, i32* %203, align 8
  %bf.lshr405 = lshr i32 %bf.load404, 27
  %bf.clear406 = and i32 %bf.lshr405, 1
  %204 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil407 = getelementptr inbounds %struct.resources, %struct.resources* %204, i32 0, i32 2
  %205 = load i8, i8* %volatil407, align 1
  %conv408 = sext i8 %205 to i32
  %or409 = or i32 %conv408, %bf.clear406
  %conv410 = trunc i32 %or409 to i8
  store i8 %conv410, i8* %volatil407, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.425, %sw.bb.403
  %206 = load i32, i32* %i, align 4
  %207 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 3
  %rtvec414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtvec_def**
  %208 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec414, align 8
  %num_elem415 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %208, i32 0, i32 0
  %209 = load i32, i32* %num_elem415, align 4
  %cmp416 = icmp slt i32 %206, %209
  br i1 %cmp416, label %for.body.418, label %for.end.427

for.body.418:                                     ; preds = %for.cond.411
  %210 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %210 to i64
  %211 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld420 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld420, i32 0, i64 3
  %rtvec422 = bitcast %union.rtunion_def* %arrayidx421 to %struct.rtvec_def**
  %212 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec422, align 8
  %elem423 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %212, i32 0, i32 1
  %arrayidx424 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem423, i32 0, i64 %idxprom419
  %213 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx424, align 8
  %214 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %215 = load i32, i32* %in_dest.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %213, %struct.resources* %214, i32 %215, i32 0)
  br label %for.inc.425

for.inc.425:                                      ; preds = %for.body.418
  %216 = load i32, i32* %i, align 4
  %inc426 = add nsw i32 %216, 1
  store i32 %inc426, i32* %i, align 4
  br label %for.cond.411

for.end.427:                                      ; preds = %for.cond.411
  br label %for.end.466

sw.default:                                       ; preds = %restart
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.401
  %217 = load i32, i32* %code, align 4
  %idxprom428 = sext i32 %217 to i64
  %arrayidx429 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom428
  %218 = load i8*, i8** %arrayidx429, align 8
  store i8* %218, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.430

for.cond.430:                                     ; preds = %for.inc.464, %sw.epilog
  %219 = load i32, i32* %i, align 4
  %220 = load i32, i32* %code, align 4
  %idxprom431 = sext i32 %220 to i64
  %arrayidx432 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom431
  %221 = load i8, i8* %arrayidx432, align 1
  %conv433 = zext i8 %221 to i32
  %cmp434 = icmp slt i32 %219, %conv433
  br i1 %cmp434, label %for.body.436, label %for.end.466

for.body.436:                                     ; preds = %for.cond.430
  %222 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %223 = load i8, i8* %222, align 1
  %conv437 = sext i8 %223 to i32
  switch i32 %conv437, label %sw.epilog.463 [
    i32 101, label %sw.bb.438
    i32 69, label %sw.bb.443
  ]

sw.bb.438:                                        ; preds = %for.body.436
  %224 = load i32, i32* %i, align 4
  %idxprom439 = sext i32 %224 to i64
  %225 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 %idxprom439
  %rtx442 = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %226 = load %struct.rtx_def*, %struct.rtx_def** %rtx442, align 8
  %227 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %228 = load i32, i32* %in_dest.addr, align 4
  %229 = load i32, i32* %mark_type.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %226, %struct.resources* %227, i32 %228, i32 %229)
  br label %sw.epilog.463

sw.bb.443:                                        ; preds = %for.body.436
  store i32 0, i32* %j, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.460, %sw.bb.443
  %230 = load i32, i32* %j, align 4
  %231 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %231 to i64
  %232 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 %idxprom445
  %rtvec448 = bitcast %union.rtunion_def* %arrayidx447 to %struct.rtvec_def**
  %233 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec448, align 8
  %num_elem449 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %233, i32 0, i32 0
  %234 = load i32, i32* %num_elem449, align 4
  %cmp450 = icmp slt i32 %230, %234
  br i1 %cmp450, label %for.body.452, label %for.end.462

for.body.452:                                     ; preds = %for.cond.444
  %235 = load i32, i32* %j, align 4
  %idxprom453 = sext i32 %235 to i64
  %236 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %236 to i64
  %237 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 %idxprom454
  %rtvec457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.rtvec_def**
  %238 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec457, align 8
  %elem458 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %238, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem458, i32 0, i64 %idxprom453
  %239 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx459, align 8
  %240 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %241 = load i32, i32* %in_dest.addr, align 4
  %242 = load i32, i32* %mark_type.addr, align 4
  call void @mark_set_resources(%struct.rtx_def* %239, %struct.resources* %240, i32 %241, i32 %242)
  br label %for.inc.460

for.inc.460:                                      ; preds = %for.body.452
  %243 = load i32, i32* %j, align 4
  %inc461 = add nsw i32 %243, 1
  store i32 %inc461, i32* %j, align 4
  br label %for.cond.444

for.end.462:                                      ; preds = %for.cond.444
  br label %sw.epilog.463

sw.epilog.463:                                    ; preds = %for.body.436, %for.end.462, %sw.bb.438
  br label %for.inc.464

for.inc.464:                                      ; preds = %sw.epilog.463
  %244 = load i32, i32* %i, align 4
  %inc465 = add nsw i32 %244, 1
  store i32 %inc465, i32* %i, align 4
  br label %for.cond.430

for.end.466:                                      ; preds = %sw.bb, %if.end, %if.end.55, %if.end.75, %sw.bb.76, %for.end.115, %sw.bb.116, %sw.bb.120, %if.end.151, %if.end.168, %if.end.280, %if.end.388, %if.then.394, %sw.bb.399, %for.end.427, %for.cond.430
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_target_live_regs(%struct.rtx_def* %insns, %struct.rtx_def* %target, %struct.resources* %res) #0 {
entry:
  %insns.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %res.addr = alloca %struct.resources*, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %tinfo = alloca %struct.target_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %jump_insn = alloca %struct.rtx_def*, align 8
  %jump_target = alloca %struct.rtx_def*, align 8
  %scratch = alloca i64, align 8
  %set = alloca %struct.resources, align 8
  %needed = alloca %struct.resources, align 8
  %regs_live = alloca %struct.bitmap_head_def*, align 8
  %j = alloca i32, align 4
  %regno = alloca i32, align 4
  %start_insn = alloca %struct.rtx_def*, align 8
  %stop_insn = alloca %struct.rtx_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %link = alloca %struct.rtx_def*, align 8
  %real_insn = alloca %struct.rtx_def*, align 8
  %first_regno = alloca i32, align 4
  %last_regno = alloca i32, align 4
  %first_regno548 = alloca i32, align 4
  %last_regno555 = alloca i32, align 4
  %new_resources = alloca %struct.resources, align 8
  %stop_insn728 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.resources* %res, %struct.resources** %res.addr, align 8
  store i32 -1, i32* %b, align 4
  store %struct.target_info* null, %struct.target_info** %tinfo, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %jump_insn, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %2 = bitcast %struct.resources* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 0), i64 16, i32 8, i1 false)
  br label %if.end.767

if.end:                                           ; preds = %entry
  %3 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %memory = getelementptr inbounds %struct.resources, %struct.resources* %3, i32 0, i32 0
  store i8 1, i8* %memory, align 1
  %4 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %4, i32 0, i32 1
  store i8 0, i8* %unch_memory, align 1
  %5 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %5, i32 0, i32 2
  store i8 0, i8* %volatil, align 1
  %6 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %cc = getelementptr inbounds %struct.resources, %struct.resources* %6, i32 0, i32 3
  store i8 0, i8* %cc, align 1
  %7 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %cmp1 = icmp ne %struct.target_info** %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.20

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %9 = load i32, i32* %rtint, align 4
  %rem = srem i32 %9, 257
  %idxprom = sext i32 %rem to i64
  %10 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %arrayidx3 = getelementptr inbounds %struct.target_info*, %struct.target_info** %10, i64 %idxprom
  %11 = load %struct.target_info*, %struct.target_info** %arrayidx3, align 8
  store %struct.target_info* %11, %struct.target_info** %tinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %12 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %tobool = icmp ne %struct.target_info* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %uid = getelementptr inbounds %struct.target_info, %struct.target_info* %13, i32 0, i32 0
  %14 = load i32, i32* %uid, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %16 = load i32, i32* %rtint6, align 4
  %cmp7 = icmp eq i32 %14, %16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %17 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %next = getelementptr inbounds %struct.target_info, %struct.target_info* %17, i32 0, i32 1
  %18 = load %struct.target_info*, %struct.target_info** %next, align 8
  store %struct.target_info* %18, %struct.target_info** %tinfo, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %19 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %tobool10 = icmp ne %struct.target_info* %19, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.end
  %20 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block = getelementptr inbounds %struct.target_info, %struct.target_info* %20, i32 0, i32 3
  %21 = load i32, i32* %block, align 4
  %cmp11 = icmp ne i32 %21, -1
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %22 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block13 = getelementptr inbounds %struct.target_info, %struct.target_info* %22, i32 0, i32 3
  %23 = load i32, i32* %block13, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx15 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom14
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx15, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool16 = icmp ne i32 %bf.clear, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.12
  %28 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block18 = getelementptr inbounds %struct.target_info, %struct.target_info* %28, i32 0, i32 3
  %29 = load i32, i32* %block18, align 4
  store i32 %29, i32* %b, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true.12, %land.lhs.true, %for.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %30 = load i32, i32* %b, align 4
  %cmp21 = icmp eq i32 %30, -1
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %31 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %32 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx23 = getelementptr inbounds %struct.param_info, %struct.param_info* %32, i64 2
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx23, i32 0, i32 1
  %33 = load i32, i32* %value, align 4
  %call = call i32 @find_basic_block(%struct.rtx_def* %31, i32 %33)
  store i32 %call, i32* %b, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %34 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %cmp25 = icmp ne %struct.target_info** %34, null
  br i1 %cmp25, label %if.then.26, label %if.end.59

if.then.26:                                       ; preds = %if.end.24
  %35 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %tobool27 = icmp ne %struct.target_info* %35, null
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.then.26
  %36 = load i32, i32* %b, align 4
  %37 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block29 = getelementptr inbounds %struct.target_info, %struct.target_info* %37, i32 0, i32 3
  %38 = load i32, i32* %block29, align 4
  %cmp30 = icmp eq i32 %36, %38
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %if.then.28
  %39 = load i32, i32* %b, align 4
  %cmp32 = icmp ne i32 %39, -1
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %40 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %bb_tick = getelementptr inbounds %struct.target_info, %struct.target_info* %40, i32 0, i32 4
  %41 = load i32, i32* %bb_tick, align 4
  %42 = load i32, i32* %b, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load i32*, i32** @bb_ticks, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %43, i64 %idxprom34
  %44 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %41, %44
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.33
  %45 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %live_regs = getelementptr inbounds %struct.target_info, %struct.target_info* %45, i32 0, i32 2
  %46 = load i64, i64* %live_regs, align 8
  %47 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %47, i32 0, i32 4
  store i64 %46, i64* %regs, align 8
  br label %if.end.767

if.end.38:                                        ; preds = %land.lhs.true.33, %land.lhs.true.31, %if.then.28
  br label %if.end.58

if.else:                                          ; preds = %if.then.26
  %call39 = call noalias i8* @xmalloc(i64 32)
  %48 = bitcast i8* %call39 to %struct.target_info*
  store %struct.target_info* %48, %struct.target_info** %tinfo, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %50 = load i32, i32* %rtint42, align 4
  %51 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %uid43 = getelementptr inbounds %struct.target_info, %struct.target_info* %51, i32 0, i32 0
  store i32 %50, i32* %uid43, align 4
  %52 = load i32, i32* %b, align 4
  %53 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block44 = getelementptr inbounds %struct.target_info, %struct.target_info* %53, i32 0, i32 3
  store i32 %52, i32* %block44, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtint47 = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %55 = load i32, i32* %rtint47, align 4
  %rem48 = srem i32 %55, 257
  %idxprom49 = sext i32 %rem48 to i64
  %56 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %arrayidx50 = getelementptr inbounds %struct.target_info*, %struct.target_info** %56, i64 %idxprom49
  %57 = load %struct.target_info*, %struct.target_info** %arrayidx50, align 8
  %58 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %next51 = getelementptr inbounds %struct.target_info, %struct.target_info* %58, i32 0, i32 1
  store %struct.target_info* %57, %struct.target_info** %next51, align 8
  %59 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %61 = load i32, i32* %rtint54, align 4
  %rem55 = srem i32 %61, 257
  %idxprom56 = sext i32 %rem55 to i64
  %62 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %arrayidx57 = getelementptr inbounds %struct.target_info*, %struct.target_info** %62, i64 %idxprom56
  store %struct.target_info* %59, %struct.target_info** %arrayidx57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.end.38
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.24
  store i64 0, i64* @pending_dead_regs, align 8
  %63 = load i32, i32* %b, align 4
  %cmp60 = icmp ne i32 %63, -1
  br i1 %cmp60, label %if.then.61, label %if.else.708

if.then.61:                                       ; preds = %if.end.59
  %64 = load i32, i32* %b, align 4
  %idxprom62 = sext i32 %64 to i64
  %65 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data63 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %65, i32 0, i32 4
  %bb64 = bitcast %union.varray_data_tag* %data63 to [1 x %struct.basic_block_def*]*
  %arrayidx65 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb64, i32 0, i64 %idxprom62
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx65, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 8
  %67 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  store %struct.bitmap_head_def* %67, %struct.bitmap_head_def** %regs_live, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.61
  store i64 0, i64* @current_live_regs, align 8
  %68 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_live, align 8
  call void @reg_set_to_hard_reg_set(i64* @current_live_regs, %struct.bitmap_head_def* %68)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.66

do.body.66:                                       ; preds = %do.end
  %69 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs_live, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %69, i32 0, i32 0
  %70 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %70, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.66
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp67 = icmp ne %struct.bitmap_element_def* %71, null
  br i1 %cmp67, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %72 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %72, i32 0, i32 2
  %73 = load i32, i32* %indx, align 4
  %74 = load i32, i32* %indx_, align 4
  %cmp68 = icmp ult i32 %73, %74
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %75 = phi i1 [ false, %while.cond ], [ %cmp68, %land.rhs ]
  br i1 %75, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %76 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next69 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %76, i32 0, i32 0
  %77 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next69, align 8
  store %struct.bitmap_element_def* %77, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %78 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp70 = icmp ne %struct.bitmap_element_def* %78, null
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.75

land.lhs.true.71:                                 ; preds = %while.end
  %79 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx72 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %79, i32 0, i32 2
  %80 = load i32, i32* %indx72, align 4
  %81 = load i32, i32* %indx_, align 4
  %cmp73 = icmp ne i32 %80, %81
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.71
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %land.lhs.true.71, %while.end
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.217, %if.end.75
  %82 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp77 = icmp ne %struct.bitmap_element_def* %82, null
  br i1 %cmp77, label %for.body.78, label %for.end.219

for.body.78:                                      ; preds = %for.cond.76
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.214, %for.body.78
  %83 = load i32, i32* %word_num_, align 4
  %cmp80 = icmp ult i32 %83, 2
  br i1 %cmp80, label %for.body.81, label %for.end.216

for.body.81:                                      ; preds = %for.cond.79
  %84 = load i32, i32* %word_num_, align 4
  %idxprom82 = zext i32 %84 to i64
  %85 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %85, i32 0, i32 3
  %arrayidx83 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom82
  %86 = load i64, i64* %arrayidx83, align 8
  store i64 %86, i64* %word_, align 8
  %87 = load i64, i64* %word_, align 8
  %cmp84 = icmp ne i64 %87, 0
  br i1 %cmp84, label %if.then.85, label %if.end.213

if.then.85:                                       ; preds = %for.body.81
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.210, %if.then.85
  %88 = load i32, i32* %bit_num_, align 4
  %cmp87 = icmp ult i32 %88, 64
  br i1 %cmp87, label %for.body.88, label %for.end.212

for.body.88:                                      ; preds = %for.cond.86
  %89 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %89 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %90 = load i64, i64* %word_, align 8
  %91 = load i64, i64* %mask_, align 8
  %and = and i64 %90, %91
  %cmp89 = icmp ne i64 %and, 0
  br i1 %cmp89, label %if.then.90, label %if.end.209

if.then.90:                                       ; preds = %for.body.88
  %92 = load i64, i64* %mask_, align 8
  %neg = xor i64 %92, -1
  %93 = load i64, i64* %word_, align 8
  %and91 = and i64 %93, %neg
  store i64 %and91, i64* %word_, align 8
  %94 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx92 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %94, i32 0, i32 2
  %95 = load i32, i32* %indx92, align 4
  %mul = mul i32 %95, 128
  %96 = load i32, i32* %word_num_, align 4
  %mul93 = mul i32 %96, 64
  %add = add i32 %mul, %mul93
  %97 = load i32, i32* %bit_num_, align 4
  %add94 = add i32 %add, %97
  store i32 %add94, i32* %i, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom95 = zext i32 %98 to i64
  %99 = load i16*, i16** @reg_renumber, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %99, i64 %idxprom95
  %100 = load i16, i16* %arrayidx96, align 2
  %conv = sext i16 %100 to i32
  %cmp97 = icmp sge i32 %conv, 0
  br i1 %cmp97, label %if.then.99, label %if.end.204

if.then.99:                                       ; preds = %if.then.90
  %101 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %101 to i64
  %102 = load i16*, i16** @reg_renumber, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %102, i64 %idxprom100
  %103 = load i16, i16* %arrayidx101, align 2
  %conv102 = sext i16 %103 to i32
  store i32 %conv102, i32* %regno, align 4
  %104 = load i32, i32* %regno, align 4
  store i32 %104, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.202, %if.then.99
  %105 = load i32, i32* %j, align 4
  %106 = load i32, i32* %regno, align 4
  %107 = load i32, i32* %regno, align 4
  %cmp104 = icmp uge i32 %107, 8
  br i1 %cmp104, label %land.lhs.true.106, label %lor.lhs.false

land.lhs.true.106:                                ; preds = %for.cond.103
  %108 = load i32, i32* %regno, align 4
  %cmp107 = icmp ule i32 %108, 15
  br i1 %cmp107, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.106, %for.cond.103
  %109 = load i32, i32* %regno, align 4
  %cmp109 = icmp uge i32 %109, 21
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.114

land.lhs.true.111:                                ; preds = %lor.lhs.false
  %110 = load i32, i32* %regno, align 4
  %cmp112 = icmp ule i32 %110, 28
  br i1 %cmp112, label %cond.true, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %land.lhs.true.111, %lor.lhs.false
  %111 = load i32, i32* %regno, align 4
  %cmp115 = icmp uge i32 %111, 45
  br i1 %cmp115, label %land.lhs.true.117, label %lor.lhs.false.120

land.lhs.true.117:                                ; preds = %lor.lhs.false.114
  %112 = load i32, i32* %regno, align 4
  %cmp118 = icmp ule i32 %112, 52
  br i1 %cmp118, label %cond.true, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.117, %lor.lhs.false.114
  %113 = load i32, i32* %regno, align 4
  %cmp121 = icmp uge i32 %113, 29
  br i1 %cmp121, label %land.lhs.true.123, label %cond.false

land.lhs.true.123:                                ; preds = %lor.lhs.false.120
  %114 = load i32, i32* %regno, align 4
  %cmp124 = icmp ule i32 %114, 36
  br i1 %cmp124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.123, %land.lhs.true.117, %land.lhs.true.111, %land.lhs.true.106
  %115 = load i32, i32* %i, align 4
  %idxprom126 = zext i32 %115 to i64
  %116 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %116, i32 0, i32 3
  %117 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %117, i32 0, i32 12
  %118 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx127 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %118, i64 %idxprom126
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx127, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load128 = load i32, i32* %120, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %idxprom131 = sext i32 %bf.clear130 to i64
  %arrayidx132 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom131
  %121 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %121, 5
  br i1 %cmp133, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %122 = load i32, i32* %i, align 4
  %idxprom135 = zext i32 %122 to i64
  %123 = load %struct.function*, %struct.function** @cfun, align 8
  %emit136 = getelementptr inbounds %struct.function, %struct.function* %123, i32 0, i32 3
  %124 = load %struct.emit_status*, %struct.emit_status** %emit136, align 8
  %x_regno_reg_rtx137 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %124, i32 0, i32 12
  %125 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx137, align 8
  %arrayidx138 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %125, i64 %idxprom135
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx138, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load139 = load i32, i32* %127, align 8
  %bf.lshr140 = lshr i32 %bf.load139, 16
  %bf.clear141 = and i32 %bf.lshr140, 255
  %idxprom142 = sext i32 %bf.clear141 to i64
  %arrayidx143 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom142
  %128 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %128, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %129 = phi i1 [ true, %cond.true ], [ %cmp144, %lor.rhs ]
  %cond = select i1 %129, i32 2, i32 1
  br label %cond.end.194

cond.false:                                       ; preds = %land.lhs.true.123, %lor.lhs.false.120
  %130 = load i32, i32* %i, align 4
  %idxprom146 = zext i32 %130 to i64
  %131 = load %struct.function*, %struct.function** @cfun, align 8
  %emit147 = getelementptr inbounds %struct.function, %struct.function* %131, i32 0, i32 3
  %132 = load %struct.emit_status*, %struct.emit_status** %emit147, align 8
  %x_regno_reg_rtx148 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %132, i32 0, i32 12
  %133 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx148, align 8
  %arrayidx149 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %133, i64 %idxprom146
  %134 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx149, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load150 = load i32, i32* %135, align 8
  %bf.lshr151 = lshr i32 %bf.load150, 16
  %bf.clear152 = and i32 %bf.lshr151, 255
  %cmp153 = icmp eq i32 %bf.clear152, 18
  br i1 %cmp153, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %cond.false
  %136 = load i32, i32* @target_flags, align 4
  %and156 = and i32 %136, 33554432
  %tobool157 = icmp ne i32 %and156, 0
  %cond158 = select i1 %tobool157, i32 2, i32 3
  br label %cond.end.192

cond.false.159:                                   ; preds = %cond.false
  %137 = load i32, i32* %i, align 4
  %idxprom160 = zext i32 %137 to i64
  %138 = load %struct.function*, %struct.function** @cfun, align 8
  %emit161 = getelementptr inbounds %struct.function, %struct.function* %138, i32 0, i32 3
  %139 = load %struct.emit_status*, %struct.emit_status** %emit161, align 8
  %x_regno_reg_rtx162 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %139, i32 0, i32 12
  %140 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx162, align 8
  %arrayidx163 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %140, i64 %idxprom160
  %141 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx163, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load164 = load i32, i32* %142, align 8
  %bf.lshr165 = lshr i32 %bf.load164, 16
  %bf.clear166 = and i32 %bf.lshr165, 255
  %cmp167 = icmp eq i32 %bf.clear166, 24
  br i1 %cmp167, label %cond.true.169, label %cond.false.173

cond.true.169:                                    ; preds = %cond.false.159
  %143 = load i32, i32* @target_flags, align 4
  %and170 = and i32 %143, 33554432
  %tobool171 = icmp ne i32 %and170, 0
  %cond172 = select i1 %tobool171, i32 4, i32 6
  br label %cond.end

cond.false.173:                                   ; preds = %cond.false.159
  %144 = load i32, i32* %i, align 4
  %idxprom174 = zext i32 %144 to i64
  %145 = load %struct.function*, %struct.function** @cfun, align 8
  %emit175 = getelementptr inbounds %struct.function, %struct.function* %145, i32 0, i32 3
  %146 = load %struct.emit_status*, %struct.emit_status** %emit175, align 8
  %x_regno_reg_rtx176 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %146, i32 0, i32 12
  %147 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx176, align 8
  %arrayidx177 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %147, i64 %idxprom174
  %148 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx177, align 8
  %149 = bitcast %struct.rtx_def* %148 to i32*
  %bf.load178 = load i32, i32* %149, align 8
  %bf.lshr179 = lshr i32 %bf.load178, 16
  %bf.clear180 = and i32 %bf.lshr179, 255
  %idxprom181 = sext i32 %bf.clear180 to i64
  %arrayidx182 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom181
  %150 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %150 to i32
  %151 = load i32, i32* @target_flags, align 4
  %and184 = and i32 %151, 33554432
  %tobool185 = icmp ne i32 %and184, 0
  %cond186 = select i1 %tobool185, i32 8, i32 4
  %add187 = add nsw i32 %conv183, %cond186
  %sub = sub nsw i32 %add187, 1
  %152 = load i32, i32* @target_flags, align 4
  %and188 = and i32 %152, 33554432
  %tobool189 = icmp ne i32 %and188, 0
  %cond190 = select i1 %tobool189, i32 8, i32 4
  %div = sdiv i32 %sub, %cond190
  br label %cond.end

cond.end:                                         ; preds = %cond.false.173, %cond.true.169
  %cond191 = phi i32 [ %cond172, %cond.true.169 ], [ %div, %cond.false.173 ]
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.end, %cond.true.155
  %cond193 = phi i32 [ %cond158, %cond.true.155 ], [ %cond191, %cond.end ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %lor.end
  %cond195 = phi i32 [ %cond, %lor.end ], [ %cond193, %cond.end.192 ]
  %add196 = add i32 %106, %cond195
  %cmp197 = icmp ult i32 %105, %add196
  br i1 %cmp197, label %for.body.199, label %for.end.203

for.body.199:                                     ; preds = %cond.end.194
  %153 = load i32, i32* %j, align 4
  %sh_prom200 = zext i32 %153 to i64
  %shl201 = shl i64 1, %sh_prom200
  %154 = load i64, i64* @current_live_regs, align 8
  %or = or i64 %154, %shl201
  store i64 %or, i64* @current_live_regs, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.199
  %155 = load i32, i32* %j, align 4
  %inc = add i32 %155, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.103

for.end.203:                                      ; preds = %cond.end.194
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %if.then.90
  %156 = load i64, i64* %word_, align 8
  %cmp205 = icmp eq i64 %156, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.end.204
  br label %for.end.212

if.end.208:                                       ; preds = %if.end.204
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %for.body.88
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %157 = load i32, i32* %bit_num_, align 4
  %inc211 = add i32 %157, 1
  store i32 %inc211, i32* %bit_num_, align 4
  br label %for.cond.86

for.end.212:                                      ; preds = %if.then.207, %for.cond.86
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %for.body.81
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %158 = load i32, i32* %word_num_, align 4
  %inc215 = add i32 %158, 1
  store i32 %inc215, i32* %word_num_, align 4
  br label %for.cond.79

for.end.216:                                      ; preds = %for.cond.79
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.end.216
  %159 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next218 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %159, i32 0, i32 0
  %160 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next218, align 8
  store %struct.bitmap_element_def* %160, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.76

for.end.219:                                      ; preds = %for.cond.76
  br label %do.end.220

do.end.220:                                       ; preds = %for.end.219
  %161 = load i32, i32* %b, align 4
  %cmp221 = icmp eq i32 %161, 0
  br i1 %cmp221, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %do.end.220
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  br label %cond.end.230

cond.false.224:                                   ; preds = %do.end.220
  %163 = load i32, i32* %b, align 4
  %idxprom225 = sext i32 %163 to i64
  %164 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data226 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %164, i32 0, i32 4
  %bb227 = bitcast %union.varray_data_tag* %data226 to [1 x %struct.basic_block_def*]*
  %arrayidx228 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb227, i32 0, i64 %idxprom225
  %165 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx228, align 8
  %head229 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %165, i32 0, i32 0
  %166 = load %struct.rtx_def*, %struct.rtx_def** %head229, align 8
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.224, %cond.true.223
  %cond231 = phi %struct.rtx_def* [ %162, %cond.true.223 ], [ %166, %cond.false.224 ]
  store %struct.rtx_def* %cond231, %struct.rtx_def** %start_insn, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %167, %struct.rtx_def** %stop_insn, align 8
  %168 = load %struct.rtx_def*, %struct.rtx_def** %start_insn, align 8
  %169 = bitcast %struct.rtx_def* %168 to i32*
  %bf.load232 = load i32, i32* %169, align 8
  %bf.clear233 = and i32 %bf.load232, 65535
  %cmp234 = icmp eq i32 %bf.clear233, 32
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.250

land.lhs.true.236:                                ; preds = %cond.end.230
  %170 = load %struct.rtx_def*, %struct.rtx_def** %start_insn, align 8
  %fld237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld237, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx238 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %bf.load239 = load i32, i32* %172, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 24
  br i1 %cmp241, label %if.then.243, label %if.end.250

if.then.243:                                      ; preds = %land.lhs.true.236
  %173 = load %struct.rtx_def*, %struct.rtx_def** %start_insn, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 3
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx246, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtvec_def**
  %175 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %175, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx249, align 8
  store %struct.rtx_def* %176, %struct.rtx_def** %start_insn, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.243, %land.lhs.true.236, %cond.end.230
  %177 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load251 = load i32, i32* %178, align 8
  %bf.clear252 = and i32 %bf.load251, 65535
  %cmp253 = icmp eq i32 %bf.clear252, 32
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.268

land.lhs.true.255:                                ; preds = %if.end.250
  %179 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn, align 8
  %fld256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld256, i32 0, i64 3
  %rtx258 = bitcast %union.rtunion_def* %arrayidx257 to %struct.rtx_def**
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtx258, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %bf.load259 = load i32, i32* %181, align 8
  %bf.clear260 = and i32 %bf.load259, 65535
  %cmp261 = icmp eq i32 %bf.clear260, 24
  br i1 %cmp261, label %if.then.263, label %if.end.268

if.then.263:                                      ; preds = %land.lhs.true.255
  %182 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 1
  %rtx266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtx266, align 8
  %call267 = call %struct.rtx_def* @next_insn(%struct.rtx_def* %183)
  store %struct.rtx_def* %call267, %struct.rtx_def** %stop_insn, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.263, %land.lhs.true.255, %if.end.250
  %184 = load %struct.rtx_def*, %struct.rtx_def** %start_insn, align 8
  store %struct.rtx_def* %184, %struct.rtx_def** %insn, align 8
  br label %for.cond.269

for.cond.269:                                     ; preds = %for.inc.696, %if.end.268
  %185 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn, align 8
  %cmp270 = icmp ne %struct.rtx_def* %185, %186
  br i1 %cmp270, label %for.body.272, label %for.end.698

for.body.272:                                     ; preds = %for.cond.269
  %187 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %187, %struct.rtx_def** %real_insn, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load273 = load i32, i32* %189, align 8
  %bf.lshr274 = lshr i32 %bf.load273, 28
  %bf.clear275 = and i32 %bf.lshr274, 1
  %tobool276 = icmp ne i32 %bf.clear275, 0
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %for.body.272
  br label %for.inc.696

if.end.278:                                       ; preds = %for.body.272
  %190 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %191 = bitcast %struct.rtx_def* %190 to i32*
  %bf.load279 = load i32, i32* %191, align 8
  %bf.clear280 = and i32 %bf.load279, 65535
  %cmp281 = icmp eq i32 %bf.clear280, 32
  br i1 %cmp281, label %land.lhs.true.283, label %if.end.312

land.lhs.true.283:                                ; preds = %if.end.278
  %192 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 3
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %193 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load287 = load i32, i32* %194, align 8
  %bf.clear288 = and i32 %bf.load287, 65535
  %cmp289 = icmp eq i32 %bf.clear288, 48
  br i1 %cmp289, label %land.lhs.true.291, label %if.end.312

land.lhs.true.291:                                ; preds = %land.lhs.true.283
  %195 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld292, i32 0, i64 3
  %rtx294 = bitcast %union.rtunion_def* %arrayidx293 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %rtx294, align 8
  %fld295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld295, i32 0, i64 0
  %rtx297 = bitcast %union.rtunion_def* %arrayidx296 to %struct.rtx_def**
  %197 = load %struct.rtx_def*, %struct.rtx_def** %rtx297, align 8
  %198 = bitcast %struct.rtx_def* %197 to i32*
  %bf.load298 = load i32, i32* %198, align 8
  %bf.clear299 = and i32 %bf.load298, 65535
  %idxprom300 = sext i32 %bf.clear299 to i64
  %arrayidx301 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom300
  %199 = load i8, i8* %arrayidx301, align 1
  %conv302 = sext i8 %199 to i32
  %cmp303 = icmp eq i32 %conv302, 105
  br i1 %cmp303, label %if.then.305, label %if.end.312

if.then.305:                                      ; preds = %land.lhs.true.291
  %200 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld306 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld306, i32 0, i64 3
  %rtx308 = bitcast %union.rtunion_def* %arrayidx307 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtx308, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 0
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  store %struct.rtx_def* %202, %struct.rtx_def** %real_insn, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.305, %land.lhs.true.291, %land.lhs.true.283, %if.end.278
  %203 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %204 = bitcast %struct.rtx_def* %203 to i32*
  %bf.load313 = load i32, i32* %204, align 8
  %bf.clear314 = and i32 %bf.load313, 65535
  %cmp315 = icmp eq i32 %bf.clear314, 34
  br i1 %cmp315, label %if.then.317, label %if.end.335

if.then.317:                                      ; preds = %if.end.312
  %205 = load i64, i64* @regs_invalidated_by_call, align 8
  %neg318 = xor i64 %205, -1
  %206 = load i64, i64* @current_live_regs, align 8
  %and319 = and i64 %206, %neg318
  store i64 %and319, i64* @current_live_regs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.332, %if.then.317
  %207 = load i32, i32* %i, align 4
  %cmp321 = icmp ult i32 %207, 53
  br i1 %cmp321, label %for.body.323, label %for.end.334

for.body.323:                                     ; preds = %for.cond.320
  %208 = load i32, i32* %i, align 4
  %idxprom324 = zext i32 %208 to i64
  %arrayidx325 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom324
  %209 = load i8, i8* %arrayidx325, align 1
  %tobool326 = icmp ne i8 %209, 0
  br i1 %tobool326, label %if.then.327, label %if.end.331

if.then.327:                                      ; preds = %for.body.323
  %210 = load i32, i32* %i, align 4
  %sh_prom328 = zext i32 %210 to i64
  %shl329 = shl i64 1, %sh_prom328
  %211 = load i64, i64* @current_live_regs, align 8
  %or330 = or i64 %211, %shl329
  store i64 %or330, i64* @current_live_regs, align 8
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.327, %for.body.323
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.end.331
  %212 = load i32, i32* %i, align 4
  %inc333 = add i32 %212, 1
  store i32 %inc333, i32* %i, align 4
  br label %for.cond.320

for.end.334:                                      ; preds = %for.cond.320
  br label %if.end.335

if.end.335:                                       ; preds = %for.end.334, %if.end.312
  %213 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load336 = load i32, i32* %214, align 8
  %bf.clear337 = and i32 %bf.load336, 65535
  %cmp338 = icmp eq i32 %bf.clear337, 32
  br i1 %cmp338, label %land.lhs.true.340, label %lor.lhs.false.356

land.lhs.true.340:                                ; preds = %if.end.335
  %215 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld341, i32 0, i64 3
  %rtx343 = bitcast %union.rtunion_def* %arrayidx342 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx343, align 8
  %217 = bitcast %struct.rtx_def* %216 to i32*
  %bf.load344 = load i32, i32* %217, align 8
  %bf.clear345 = and i32 %bf.load344, 65535
  %cmp346 = icmp ne i32 %bf.clear345, 48
  br i1 %cmp346, label %land.lhs.true.348, label %lor.lhs.false.356

land.lhs.true.348:                                ; preds = %land.lhs.true.340
  %218 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 3
  %rtx351 = bitcast %union.rtunion_def* %arrayidx350 to %struct.rtx_def**
  %219 = load %struct.rtx_def*, %struct.rtx_def** %rtx351, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load352 = load i32, i32* %220, align 8
  %bf.clear353 = and i32 %bf.load352, 65535
  %cmp354 = icmp ne i32 %bf.clear353, 49
  br i1 %cmp354, label %if.then.366, label %lor.lhs.false.356

lor.lhs.false.356:                                ; preds = %land.lhs.true.348, %land.lhs.true.340, %if.end.335
  %221 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %bf.load357 = load i32, i32* %222, align 8
  %bf.clear358 = and i32 %bf.load357, 65535
  %cmp359 = icmp eq i32 %bf.clear358, 33
  br i1 %cmp359, label %if.then.366, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %lor.lhs.false.356
  %223 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load362 = load i32, i32* %224, align 8
  %bf.clear363 = and i32 %bf.load362, 65535
  %cmp364 = icmp eq i32 %bf.clear363, 34
  br i1 %cmp364, label %if.then.366, label %if.else.672

if.then.366:                                      ; preds = %lor.lhs.false.361, %lor.lhs.false.356, %land.lhs.true.348
  %225 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld367, i32 0, i64 6
  %rtx369 = bitcast %union.rtunion_def* %arrayidx368 to %struct.rtx_def**
  %226 = load %struct.rtx_def*, %struct.rtx_def** %rtx369, align 8
  store %struct.rtx_def* %226, %struct.rtx_def** %link, align 8
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.511, %if.then.366
  %227 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool371 = icmp ne %struct.rtx_def* %227, null
  br i1 %tobool371, label %for.body.372, label %for.end.515

for.body.372:                                     ; preds = %for.cond.370
  %228 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load373 = load i32, i32* %229, align 8
  %bf.lshr374 = lshr i32 %bf.load373, 16
  %bf.clear375 = and i32 %bf.lshr374, 255
  %cmp376 = icmp eq i32 %bf.clear375, 1
  br i1 %cmp376, label %land.lhs.true.378, label %if.end.510

land.lhs.true.378:                                ; preds = %for.body.372
  %230 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 0
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %231 = load %struct.rtx_def*, %struct.rtx_def** %rtx381, align 8
  %232 = bitcast %struct.rtx_def* %231 to i32*
  %bf.load382 = load i32, i32* %232, align 8
  %bf.clear383 = and i32 %bf.load382, 65535
  %cmp384 = icmp eq i32 %bf.clear383, 61
  br i1 %cmp384, label %land.lhs.true.386, label %if.end.510

land.lhs.true.386:                                ; preds = %land.lhs.true.378
  %233 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld387, i32 0, i64 0
  %rtx389 = bitcast %union.rtunion_def* %arrayidx388 to %struct.rtx_def**
  %234 = load %struct.rtx_def*, %struct.rtx_def** %rtx389, align 8
  %fld390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld390, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx391 to i32*
  %235 = load i32, i32* %rtuint, align 4
  %cmp392 = icmp ult i32 %235, 53
  br i1 %cmp392, label %if.then.394, label %if.end.510

if.then.394:                                      ; preds = %land.lhs.true.386
  %236 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 0
  %rtx397 = bitcast %union.rtunion_def* %arrayidx396 to %struct.rtx_def**
  %237 = load %struct.rtx_def*, %struct.rtx_def** %rtx397, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 0
  %rtuint400 = bitcast %union.rtunion_def* %arrayidx399 to i32*
  %238 = load i32, i32* %rtuint400, align 4
  store i32 %238, i32* %first_regno, align 4
  %239 = load i32, i32* %first_regno, align 4
  %240 = load i32, i32* %first_regno, align 4
  %cmp401 = icmp uge i32 %240, 8
  br i1 %cmp401, label %land.lhs.true.403, label %lor.lhs.false.406

land.lhs.true.403:                                ; preds = %if.then.394
  %241 = load i32, i32* %first_regno, align 4
  %cmp404 = icmp ule i32 %241, 15
  br i1 %cmp404, label %cond.true.424, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %land.lhs.true.403, %if.then.394
  %242 = load i32, i32* %first_regno, align 4
  %cmp407 = icmp uge i32 %242, 21
  br i1 %cmp407, label %land.lhs.true.409, label %lor.lhs.false.412

land.lhs.true.409:                                ; preds = %lor.lhs.false.406
  %243 = load i32, i32* %first_regno, align 4
  %cmp410 = icmp ule i32 %243, 28
  br i1 %cmp410, label %cond.true.424, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %land.lhs.true.409, %lor.lhs.false.406
  %244 = load i32, i32* %first_regno, align 4
  %cmp413 = icmp uge i32 %244, 45
  br i1 %cmp413, label %land.lhs.true.415, label %lor.lhs.false.418

land.lhs.true.415:                                ; preds = %lor.lhs.false.412
  %245 = load i32, i32* %first_regno, align 4
  %cmp416 = icmp ule i32 %245, 52
  br i1 %cmp416, label %cond.true.424, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %land.lhs.true.415, %lor.lhs.false.412
  %246 = load i32, i32* %first_regno, align 4
  %cmp419 = icmp uge i32 %246, 29
  br i1 %cmp419, label %land.lhs.true.421, label %cond.false.448

land.lhs.true.421:                                ; preds = %lor.lhs.false.418
  %247 = load i32, i32* %first_regno, align 4
  %cmp422 = icmp ule i32 %247, 36
  br i1 %cmp422, label %cond.true.424, label %cond.false.448

cond.true.424:                                    ; preds = %land.lhs.true.421, %land.lhs.true.415, %land.lhs.true.409, %land.lhs.true.403
  %248 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld425, i32 0, i64 0
  %rtx427 = bitcast %union.rtunion_def* %arrayidx426 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtx427, align 8
  %250 = bitcast %struct.rtx_def* %249 to i32*
  %bf.load428 = load i32, i32* %250, align 8
  %bf.lshr429 = lshr i32 %bf.load428, 16
  %bf.clear430 = and i32 %bf.lshr429, 255
  %idxprom431 = sext i32 %bf.clear430 to i64
  %arrayidx432 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom431
  %251 = load i32, i32* %arrayidx432, align 4
  %cmp433 = icmp eq i32 %251, 5
  br i1 %cmp433, label %lor.end.446, label %lor.rhs.435

lor.rhs.435:                                      ; preds = %cond.true.424
  %252 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld436 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx437 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld436, i32 0, i64 0
  %rtx438 = bitcast %union.rtunion_def* %arrayidx437 to %struct.rtx_def**
  %253 = load %struct.rtx_def*, %struct.rtx_def** %rtx438, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load439 = load i32, i32* %254, align 8
  %bf.lshr440 = lshr i32 %bf.load439, 16
  %bf.clear441 = and i32 %bf.lshr440, 255
  %idxprom442 = sext i32 %bf.clear441 to i64
  %arrayidx443 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom442
  %255 = load i32, i32* %arrayidx443, align 4
  %cmp444 = icmp eq i32 %255, 6
  br label %lor.end.446

lor.end.446:                                      ; preds = %lor.rhs.435, %cond.true.424
  %256 = phi i1 [ true, %cond.true.424 ], [ %cmp444, %lor.rhs.435 ]
  %cond447 = select i1 %256, i32 2, i32 1
  br label %cond.end.497

cond.false.448:                                   ; preds = %land.lhs.true.421, %lor.lhs.false.418
  %257 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load452 = load i32, i32* %259, align 8
  %bf.lshr453 = lshr i32 %bf.load452, 16
  %bf.clear454 = and i32 %bf.lshr453, 255
  %cmp455 = icmp eq i32 %bf.clear454, 18
  br i1 %cmp455, label %cond.true.457, label %cond.false.461

cond.true.457:                                    ; preds = %cond.false.448
  %260 = load i32, i32* @target_flags, align 4
  %and458 = and i32 %260, 33554432
  %tobool459 = icmp ne i32 %and458, 0
  %cond460 = select i1 %tobool459, i32 2, i32 3
  br label %cond.end.495

cond.false.461:                                   ; preds = %cond.false.448
  %261 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld462 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx463 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld462, i32 0, i64 0
  %rtx464 = bitcast %union.rtunion_def* %arrayidx463 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx464, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load465 = load i32, i32* %263, align 8
  %bf.lshr466 = lshr i32 %bf.load465, 16
  %bf.clear467 = and i32 %bf.lshr466, 255
  %cmp468 = icmp eq i32 %bf.clear467, 24
  br i1 %cmp468, label %cond.true.470, label %cond.false.474

cond.true.470:                                    ; preds = %cond.false.461
  %264 = load i32, i32* @target_flags, align 4
  %and471 = and i32 %264, 33554432
  %tobool472 = icmp ne i32 %and471, 0
  %cond473 = select i1 %tobool472, i32 4, i32 6
  br label %cond.end.493

cond.false.474:                                   ; preds = %cond.false.461
  %265 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %bf.load478 = load i32, i32* %267, align 8
  %bf.lshr479 = lshr i32 %bf.load478, 16
  %bf.clear480 = and i32 %bf.lshr479, 255
  %idxprom481 = sext i32 %bf.clear480 to i64
  %arrayidx482 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom481
  %268 = load i8, i8* %arrayidx482, align 1
  %conv483 = zext i8 %268 to i32
  %269 = load i32, i32* @target_flags, align 4
  %and484 = and i32 %269, 33554432
  %tobool485 = icmp ne i32 %and484, 0
  %cond486 = select i1 %tobool485, i32 8, i32 4
  %add487 = add nsw i32 %conv483, %cond486
  %sub488 = sub nsw i32 %add487, 1
  %270 = load i32, i32* @target_flags, align 4
  %and489 = and i32 %270, 33554432
  %tobool490 = icmp ne i32 %and489, 0
  %cond491 = select i1 %tobool490, i32 8, i32 4
  %div492 = sdiv i32 %sub488, %cond491
  br label %cond.end.493

cond.end.493:                                     ; preds = %cond.false.474, %cond.true.470
  %cond494 = phi i32 [ %cond473, %cond.true.470 ], [ %div492, %cond.false.474 ]
  br label %cond.end.495

cond.end.495:                                     ; preds = %cond.end.493, %cond.true.457
  %cond496 = phi i32 [ %cond460, %cond.true.457 ], [ %cond494, %cond.end.493 ]
  br label %cond.end.497

cond.end.497:                                     ; preds = %cond.end.495, %lor.end.446
  %cond498 = phi i32 [ %cond447, %lor.end.446 ], [ %cond496, %cond.end.495 ]
  %add499 = add i32 %239, %cond498
  store i32 %add499, i32* %last_regno, align 4
  %271 = load i32, i32* %first_regno, align 4
  store i32 %271, i32* %i, align 4
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.507, %cond.end.497
  %272 = load i32, i32* %i, align 4
  %273 = load i32, i32* %last_regno, align 4
  %cmp501 = icmp ult i32 %272, %273
  br i1 %cmp501, label %for.body.503, label %for.end.509

for.body.503:                                     ; preds = %for.cond.500
  %274 = load i32, i32* %i, align 4
  %sh_prom504 = zext i32 %274 to i64
  %shl505 = shl i64 1, %sh_prom504
  %275 = load i64, i64* @pending_dead_regs, align 8
  %or506 = or i64 %275, %shl505
  store i64 %or506, i64* @pending_dead_regs, align 8
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.body.503
  %276 = load i32, i32* %i, align 4
  %inc508 = add i32 %276, 1
  store i32 %inc508, i32* %i, align 4
  br label %for.cond.500

for.end.509:                                      ; preds = %for.cond.500
  br label %if.end.510

if.end.510:                                       ; preds = %for.end.509, %land.lhs.true.386, %land.lhs.true.378, %for.body.372
  br label %for.inc.511

for.inc.511:                                      ; preds = %if.end.510
  %277 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld512 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld512, i32 0, i64 1
  %rtx514 = bitcast %union.rtunion_def* %arrayidx513 to %struct.rtx_def**
  %278 = load %struct.rtx_def*, %struct.rtx_def** %rtx514, align 8
  store %struct.rtx_def* %278, %struct.rtx_def** %link, align 8
  br label %for.cond.370

for.end.515:                                      ; preds = %for.cond.370
  %279 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld516 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld516, i32 0, i64 3
  %rtx518 = bitcast %union.rtunion_def* %arrayidx517 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx518, align 8
  call void @note_stores(%struct.rtx_def* %280, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @update_live_status, i8* null)
  %281 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld519 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld519, i32 0, i64 6
  %rtx521 = bitcast %union.rtunion_def* %arrayidx520 to %struct.rtx_def**
  %282 = load %struct.rtx_def*, %struct.rtx_def** %rtx521, align 8
  store %struct.rtx_def* %282, %struct.rtx_def** %link, align 8
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.667, %for.end.515
  %283 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool523 = icmp ne %struct.rtx_def* %283, null
  br i1 %tobool523, label %for.body.524, label %for.end.671

for.body.524:                                     ; preds = %for.cond.522
  %284 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %285 = bitcast %struct.rtx_def* %284 to i32*
  %bf.load525 = load i32, i32* %285, align 8
  %bf.lshr526 = lshr i32 %bf.load525, 16
  %bf.clear527 = and i32 %bf.lshr526, 255
  %cmp528 = icmp eq i32 %bf.clear527, 10
  br i1 %cmp528, label %land.lhs.true.530, label %if.end.666

land.lhs.true.530:                                ; preds = %for.body.524
  %286 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld531 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %arrayidx532 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld531, i32 0, i64 0
  %rtx533 = bitcast %union.rtunion_def* %arrayidx532 to %struct.rtx_def**
  %287 = load %struct.rtx_def*, %struct.rtx_def** %rtx533, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load534 = load i32, i32* %288, align 8
  %bf.clear535 = and i32 %bf.load534, 65535
  %cmp536 = icmp eq i32 %bf.clear535, 61
  br i1 %cmp536, label %land.lhs.true.538, label %if.end.666

land.lhs.true.538:                                ; preds = %land.lhs.true.530
  %289 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld539 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld539, i32 0, i64 0
  %rtx541 = bitcast %union.rtunion_def* %arrayidx540 to %struct.rtx_def**
  %290 = load %struct.rtx_def*, %struct.rtx_def** %rtx541, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 0
  %rtuint544 = bitcast %union.rtunion_def* %arrayidx543 to i32*
  %291 = load i32, i32* %rtuint544, align 4
  %cmp545 = icmp ult i32 %291, 53
  br i1 %cmp545, label %if.then.547, label %if.end.666

if.then.547:                                      ; preds = %land.lhs.true.538
  %292 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld549, i32 0, i64 0
  %rtx551 = bitcast %union.rtunion_def* %arrayidx550 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx551, align 8
  %fld552 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %293, i32 0, i32 1
  %arrayidx553 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld552, i32 0, i64 0
  %rtuint554 = bitcast %union.rtunion_def* %arrayidx553 to i32*
  %294 = load i32, i32* %rtuint554, align 4
  store i32 %294, i32* %first_regno548, align 4
  %295 = load i32, i32* %first_regno548, align 4
  %296 = load i32, i32* %first_regno548, align 4
  %cmp556 = icmp uge i32 %296, 8
  br i1 %cmp556, label %land.lhs.true.558, label %lor.lhs.false.561

land.lhs.true.558:                                ; preds = %if.then.547
  %297 = load i32, i32* %first_regno548, align 4
  %cmp559 = icmp ule i32 %297, 15
  br i1 %cmp559, label %cond.true.579, label %lor.lhs.false.561

lor.lhs.false.561:                                ; preds = %land.lhs.true.558, %if.then.547
  %298 = load i32, i32* %first_regno548, align 4
  %cmp562 = icmp uge i32 %298, 21
  br i1 %cmp562, label %land.lhs.true.564, label %lor.lhs.false.567

land.lhs.true.564:                                ; preds = %lor.lhs.false.561
  %299 = load i32, i32* %first_regno548, align 4
  %cmp565 = icmp ule i32 %299, 28
  br i1 %cmp565, label %cond.true.579, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %land.lhs.true.564, %lor.lhs.false.561
  %300 = load i32, i32* %first_regno548, align 4
  %cmp568 = icmp uge i32 %300, 45
  br i1 %cmp568, label %land.lhs.true.570, label %lor.lhs.false.573

land.lhs.true.570:                                ; preds = %lor.lhs.false.567
  %301 = load i32, i32* %first_regno548, align 4
  %cmp571 = icmp ule i32 %301, 52
  br i1 %cmp571, label %cond.true.579, label %lor.lhs.false.573

lor.lhs.false.573:                                ; preds = %land.lhs.true.570, %lor.lhs.false.567
  %302 = load i32, i32* %first_regno548, align 4
  %cmp574 = icmp uge i32 %302, 29
  br i1 %cmp574, label %land.lhs.true.576, label %cond.false.603

land.lhs.true.576:                                ; preds = %lor.lhs.false.573
  %303 = load i32, i32* %first_regno548, align 4
  %cmp577 = icmp ule i32 %303, 36
  br i1 %cmp577, label %cond.true.579, label %cond.false.603

cond.true.579:                                    ; preds = %land.lhs.true.576, %land.lhs.true.570, %land.lhs.true.564, %land.lhs.true.558
  %304 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld580, i32 0, i64 0
  %rtx582 = bitcast %union.rtunion_def* %arrayidx581 to %struct.rtx_def**
  %305 = load %struct.rtx_def*, %struct.rtx_def** %rtx582, align 8
  %306 = bitcast %struct.rtx_def* %305 to i32*
  %bf.load583 = load i32, i32* %306, align 8
  %bf.lshr584 = lshr i32 %bf.load583, 16
  %bf.clear585 = and i32 %bf.lshr584, 255
  %idxprom586 = sext i32 %bf.clear585 to i64
  %arrayidx587 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom586
  %307 = load i32, i32* %arrayidx587, align 4
  %cmp588 = icmp eq i32 %307, 5
  br i1 %cmp588, label %lor.end.601, label %lor.rhs.590

lor.rhs.590:                                      ; preds = %cond.true.579
  %308 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld591 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx592 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld591, i32 0, i64 0
  %rtx593 = bitcast %union.rtunion_def* %arrayidx592 to %struct.rtx_def**
  %309 = load %struct.rtx_def*, %struct.rtx_def** %rtx593, align 8
  %310 = bitcast %struct.rtx_def* %309 to i32*
  %bf.load594 = load i32, i32* %310, align 8
  %bf.lshr595 = lshr i32 %bf.load594, 16
  %bf.clear596 = and i32 %bf.lshr595, 255
  %idxprom597 = sext i32 %bf.clear596 to i64
  %arrayidx598 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom597
  %311 = load i32, i32* %arrayidx598, align 4
  %cmp599 = icmp eq i32 %311, 6
  br label %lor.end.601

lor.end.601:                                      ; preds = %lor.rhs.590, %cond.true.579
  %312 = phi i1 [ true, %cond.true.579 ], [ %cmp599, %lor.rhs.590 ]
  %cond602 = select i1 %312, i32 2, i32 1
  br label %cond.end.652

cond.false.603:                                   ; preds = %land.lhs.true.576, %lor.lhs.false.573
  %313 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %313, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld604, i32 0, i64 0
  %rtx606 = bitcast %union.rtunion_def* %arrayidx605 to %struct.rtx_def**
  %314 = load %struct.rtx_def*, %struct.rtx_def** %rtx606, align 8
  %315 = bitcast %struct.rtx_def* %314 to i32*
  %bf.load607 = load i32, i32* %315, align 8
  %bf.lshr608 = lshr i32 %bf.load607, 16
  %bf.clear609 = and i32 %bf.lshr608, 255
  %cmp610 = icmp eq i32 %bf.clear609, 18
  br i1 %cmp610, label %cond.true.612, label %cond.false.616

cond.true.612:                                    ; preds = %cond.false.603
  %316 = load i32, i32* @target_flags, align 4
  %and613 = and i32 %316, 33554432
  %tobool614 = icmp ne i32 %and613, 0
  %cond615 = select i1 %tobool614, i32 2, i32 3
  br label %cond.end.650

cond.false.616:                                   ; preds = %cond.false.603
  %317 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 0
  %rtx619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.rtx_def**
  %318 = load %struct.rtx_def*, %struct.rtx_def** %rtx619, align 8
  %319 = bitcast %struct.rtx_def* %318 to i32*
  %bf.load620 = load i32, i32* %319, align 8
  %bf.lshr621 = lshr i32 %bf.load620, 16
  %bf.clear622 = and i32 %bf.lshr621, 255
  %cmp623 = icmp eq i32 %bf.clear622, 24
  br i1 %cmp623, label %cond.true.625, label %cond.false.629

cond.true.625:                                    ; preds = %cond.false.616
  %320 = load i32, i32* @target_flags, align 4
  %and626 = and i32 %320, 33554432
  %tobool627 = icmp ne i32 %and626, 0
  %cond628 = select i1 %tobool627, i32 4, i32 6
  br label %cond.end.648

cond.false.629:                                   ; preds = %cond.false.616
  %321 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld630 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %arrayidx631 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld630, i32 0, i64 0
  %rtx632 = bitcast %union.rtunion_def* %arrayidx631 to %struct.rtx_def**
  %322 = load %struct.rtx_def*, %struct.rtx_def** %rtx632, align 8
  %323 = bitcast %struct.rtx_def* %322 to i32*
  %bf.load633 = load i32, i32* %323, align 8
  %bf.lshr634 = lshr i32 %bf.load633, 16
  %bf.clear635 = and i32 %bf.lshr634, 255
  %idxprom636 = sext i32 %bf.clear635 to i64
  %arrayidx637 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom636
  %324 = load i8, i8* %arrayidx637, align 1
  %conv638 = zext i8 %324 to i32
  %325 = load i32, i32* @target_flags, align 4
  %and639 = and i32 %325, 33554432
  %tobool640 = icmp ne i32 %and639, 0
  %cond641 = select i1 %tobool640, i32 8, i32 4
  %add642 = add nsw i32 %conv638, %cond641
  %sub643 = sub nsw i32 %add642, 1
  %326 = load i32, i32* @target_flags, align 4
  %and644 = and i32 %326, 33554432
  %tobool645 = icmp ne i32 %and644, 0
  %cond646 = select i1 %tobool645, i32 8, i32 4
  %div647 = sdiv i32 %sub643, %cond646
  br label %cond.end.648

cond.end.648:                                     ; preds = %cond.false.629, %cond.true.625
  %cond649 = phi i32 [ %cond628, %cond.true.625 ], [ %div647, %cond.false.629 ]
  br label %cond.end.650

cond.end.650:                                     ; preds = %cond.end.648, %cond.true.612
  %cond651 = phi i32 [ %cond615, %cond.true.612 ], [ %cond649, %cond.end.648 ]
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.end.650, %lor.end.601
  %cond653 = phi i32 [ %cond602, %lor.end.601 ], [ %cond651, %cond.end.650 ]
  %add654 = add i32 %295, %cond653
  store i32 %add654, i32* %last_regno555, align 4
  %327 = load i32, i32* %first_regno548, align 4
  store i32 %327, i32* %i, align 4
  br label %for.cond.655

for.cond.655:                                     ; preds = %for.inc.663, %cond.end.652
  %328 = load i32, i32* %i, align 4
  %329 = load i32, i32* %last_regno555, align 4
  %cmp656 = icmp ult i32 %328, %329
  br i1 %cmp656, label %for.body.658, label %for.end.665

for.body.658:                                     ; preds = %for.cond.655
  %330 = load i32, i32* %i, align 4
  %sh_prom659 = zext i32 %330 to i64
  %shl660 = shl i64 1, %sh_prom659
  %neg661 = xor i64 %shl660, -1
  %331 = load i64, i64* @current_live_regs, align 8
  %and662 = and i64 %331, %neg661
  store i64 %and662, i64* @current_live_regs, align 8
  br label %for.inc.663

for.inc.663:                                      ; preds = %for.body.658
  %332 = load i32, i32* %i, align 4
  %inc664 = add i32 %332, 1
  store i32 %inc664, i32* %i, align 4
  br label %for.cond.655

for.end.665:                                      ; preds = %for.cond.655
  br label %if.end.666

if.end.666:                                       ; preds = %for.end.665, %land.lhs.true.538, %land.lhs.true.530, %for.body.524
  br label %for.inc.667

for.inc.667:                                      ; preds = %if.end.666
  %333 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld668 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %333, i32 0, i32 1
  %arrayidx669 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld668, i32 0, i64 1
  %rtx670 = bitcast %union.rtunion_def* %arrayidx669 to %struct.rtx_def**
  %334 = load %struct.rtx_def*, %struct.rtx_def** %rtx670, align 8
  store %struct.rtx_def* %334, %struct.rtx_def** %link, align 8
  br label %for.cond.522

for.end.671:                                      ; preds = %for.cond.522
  br label %if.end.695

if.else.672:                                      ; preds = %lor.lhs.false.361
  %335 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %336 = bitcast %struct.rtx_def* %335 to i32*
  %bf.load673 = load i32, i32* %336, align 8
  %bf.clear674 = and i32 %bf.load673, 65535
  %cmp675 = icmp eq i32 %bf.clear674, 36
  br i1 %cmp675, label %if.then.677, label %if.else.680

if.then.677:                                      ; preds = %if.else.672
  %337 = load i64, i64* @pending_dead_regs, align 8
  %neg678 = xor i64 %337, -1
  %338 = load i64, i64* @current_live_regs, align 8
  %and679 = and i64 %338, %neg678
  store i64 %and679, i64* @current_live_regs, align 8
  store i64 0, i64* @pending_dead_regs, align 8
  br label %if.end.694

if.else.680:                                      ; preds = %if.else.672
  %339 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %bf.load681 = load i32, i32* %340, align 8
  %bf.clear682 = and i32 %bf.load681, 65535
  %cmp683 = icmp eq i32 %bf.clear682, 37
  br i1 %cmp683, label %land.lhs.true.685, label %if.end.693

land.lhs.true.685:                                ; preds = %if.else.680
  %341 = load %struct.rtx_def*, %struct.rtx_def** %real_insn, align 8
  %fld686 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %341, i32 0, i32 1
  %arrayidx687 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld686, i32 0, i64 4
  %rtint688 = bitcast %union.rtunion_def* %arrayidx687 to i32*
  %342 = load i32, i32* %rtint688, align 4
  %cmp689 = icmp eq i32 %342, -89
  br i1 %cmp689, label %if.then.691, label %if.end.693

if.then.691:                                      ; preds = %land.lhs.true.685
  %343 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @start_of_epilogue_needs, i32 0, i32 4), align 8
  %344 = load i64, i64* @current_live_regs, align 8
  %or692 = or i64 %344, %343
  store i64 %or692, i64* @current_live_regs, align 8
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.691, %land.lhs.true.685, %if.else.680
  br label %if.end.694

if.end.694:                                       ; preds = %if.end.693, %if.then.677
  br label %if.end.695

if.end.695:                                       ; preds = %if.end.694, %for.end.671
  br label %for.inc.696

for.inc.696:                                      ; preds = %if.end.695, %if.then.277
  %345 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call697 = call %struct.rtx_def* @next_insn_no_annul(%struct.rtx_def* %345)
  store %struct.rtx_def* %call697, %struct.rtx_def** %insn, align 8
  br label %for.cond.269

for.end.698:                                      ; preds = %for.cond.269
  %346 = load i64, i64* @current_live_regs, align 8
  %347 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs699 = getelementptr inbounds %struct.resources, %struct.resources* %347, i32 0, i32 4
  store i64 %346, i64* %regs699, align 8
  %348 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %cmp700 = icmp ne %struct.target_info* %348, null
  br i1 %cmp700, label %if.then.702, label %if.end.707

if.then.702:                                      ; preds = %for.end.698
  %349 = load i32, i32* %b, align 4
  %350 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block703 = getelementptr inbounds %struct.target_info, %struct.target_info* %350, i32 0, i32 3
  store i32 %349, i32* %block703, align 4
  %351 = load i32, i32* %b, align 4
  %idxprom704 = sext i32 %351 to i64
  %352 = load i32*, i32** @bb_ticks, align 8
  %arrayidx705 = getelementptr inbounds i32, i32* %352, i64 %idxprom704
  %353 = load i32, i32* %arrayidx705, align 4
  %354 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %bb_tick706 = getelementptr inbounds %struct.target_info, %struct.target_info* %354, i32 0, i32 4
  store i32 %353, i32* %bb_tick706, align 4
  br label %if.end.707

if.end.707:                                       ; preds = %if.then.702, %for.end.698
  br label %if.end.710

if.else.708:                                      ; preds = %if.end.59
  %355 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs709 = getelementptr inbounds %struct.resources, %struct.resources* %355, i32 0, i32 4
  store i64 -1, i64* %regs709, align 8
  br label %if.end.710

if.end.710:                                       ; preds = %if.else.708, %if.end.707
  br label %do.body.711

do.body.711:                                      ; preds = %if.end.710
  %cc712 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 3
  store i8 0, i8* %cc712, align 1
  %volatil713 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 2
  store i8 0, i8* %volatil713, align 1
  %unch_memory714 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 1
  store i8 0, i8* %unch_memory714, align 1
  %memory715 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 0
  store i8 0, i8* %memory715, align 1
  %regs716 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 4
  store i64 0, i64* %regs716, align 8
  br label %do.end.717

do.end.717:                                       ; preds = %do.body.711
  br label %do.body.718

do.body.718:                                      ; preds = %do.end.717
  %cc719 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 3
  store i8 0, i8* %cc719, align 1
  %volatil720 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 2
  store i8 0, i8* %volatil720, align 1
  %unch_memory721 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 1
  store i8 0, i8* %unch_memory721, align 1
  %memory722 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 0
  store i8 0, i8* %memory722, align 1
  %regs723 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  store i64 0, i64* %regs723, align 8
  br label %do.end.724

do.end.724:                                       ; preds = %do.body.718
  %356 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %357 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %358 = bitcast %struct.resources* %set to { i64, i64 }*
  %359 = getelementptr { i64, i64 }, { i64, i64 }* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 1
  %361 = getelementptr { i64, i64 }, { i64, i64 }* %358, i32 0, i32 1
  %362 = load i64, i64* %361, align 1
  %call725 = call %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %356, %struct.resources* %357, %struct.rtx_def** %jump_target, i32 0, i64 %360, i64 %362, %struct.resources* byval align 8 %needed)
  store %struct.rtx_def* %call725, %struct.rtx_def** %jump_insn, align 8
  %363 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %tobool726 = icmp ne %struct.rtx_def* %363, null
  br i1 %tobool726, label %if.then.727, label %if.end.761

if.then.727:                                      ; preds = %do.end.724
  %364 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %call729 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %364)
  store %struct.rtx_def* %call729, %struct.rtx_def** %stop_insn728, align 8
  %365 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %366 = load %struct.rtx_def*, %struct.rtx_def** %jump_target, align 8
  %call730 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %366)
  call void @mark_target_live_regs(%struct.rtx_def* %365, %struct.rtx_def* %call730, %struct.resources* %new_resources)
  br label %do.body.731

do.body.731:                                      ; preds = %if.then.727
  %cc732 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 3
  store i8 0, i8* %cc732, align 1
  %volatil733 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 2
  store i8 0, i8* %volatil733, align 1
  %unch_memory734 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 1
  store i8 0, i8* %unch_memory734, align 1
  %memory735 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 0
  store i8 0, i8* %memory735, align 1
  %regs736 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 4
  store i64 0, i64* %regs736, align 8
  br label %do.end.737

do.end.737:                                       ; preds = %do.body.731
  br label %do.body.738

do.body.738:                                      ; preds = %do.end.737
  %cc739 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 3
  store i8 0, i8* %cc739, align 1
  %volatil740 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 2
  store i8 0, i8* %volatil740, align 1
  %unch_memory741 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 1
  store i8 0, i8* %unch_memory741, align 1
  %memory742 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 0
  store i8 0, i8* %memory742, align 1
  %regs743 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  store i64 0, i64* %regs743, align 8
  br label %do.end.744

do.end.744:                                       ; preds = %do.body.738
  %367 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %367, %struct.rtx_def** %insn, align 8
  br label %for.cond.745

for.cond.745:                                     ; preds = %for.inc.755, %do.end.744
  %368 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %369 = load %struct.rtx_def*, %struct.rtx_def** %stop_insn728, align 8
  %cmp746 = icmp ne %struct.rtx_def* %368, %369
  br i1 %cmp746, label %for.body.748, label %for.end.757

for.body.748:                                     ; preds = %for.cond.745
  %370 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %370, %struct.resources* %needed, i32 1)
  %regs749 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  %371 = load i64, i64* %regs749, align 8
  store i64 %371, i64* %scratch, align 8
  %regs750 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 4
  %372 = load i64, i64* %regs750, align 8
  %neg751 = xor i64 %372, -1
  %373 = load i64, i64* %scratch, align 8
  %and752 = and i64 %373, %neg751
  store i64 %and752, i64* %scratch, align 8
  %374 = load i64, i64* %scratch, align 8
  %regs753 = getelementptr inbounds %struct.resources, %struct.resources* %new_resources, i32 0, i32 4
  %375 = load i64, i64* %regs753, align 8
  %or754 = or i64 %375, %374
  store i64 %or754, i64* %regs753, align 8
  %376 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_set_resources(%struct.rtx_def* %376, %struct.resources* %set, i32 0, i32 1)
  br label %for.inc.755

for.inc.755:                                      ; preds = %for.body.748
  %377 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call756 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %377)
  store %struct.rtx_def* %call756, %struct.rtx_def** %insn, align 8
  br label %for.cond.745

for.end.757:                                      ; preds = %for.cond.745
  %regs758 = getelementptr inbounds %struct.resources, %struct.resources* %new_resources, i32 0, i32 4
  %378 = load i64, i64* %regs758, align 8
  %379 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs759 = getelementptr inbounds %struct.resources, %struct.resources* %379, i32 0, i32 4
  %380 = load i64, i64* %regs759, align 8
  %or760 = or i64 %380, %378
  store i64 %or760, i64* %regs759, align 8
  br label %if.end.761

if.end.761:                                       ; preds = %for.end.757, %do.end.724
  %381 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %cmp762 = icmp ne %struct.target_info* %381, null
  br i1 %cmp762, label %if.then.764, label %if.end.767

if.then.764:                                      ; preds = %if.end.761
  %382 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs765 = getelementptr inbounds %struct.resources, %struct.resources* %382, i32 0, i32 4
  %383 = load i64, i64* %regs765, align 8
  %384 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %live_regs766 = getelementptr inbounds %struct.target_info, %struct.target_info* %384, i32 0, i32 2
  store i64 %383, i64* %live_regs766, align 8
  br label %if.end.767

if.end.767:                                       ; preds = %if.then, %if.then.37, %if.then.764, %if.end.761
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_basic_block(%struct.rtx_def* %insn, i32 %search_limit) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %search_limit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %search_limit, i32* %search_limit.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 35
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %search_limit.addr, align 4
  %cmp1 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call2 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %6)
  store %struct.rtx_def* %call2, %struct.rtx_def** %insn.addr, align 8
  %7 = load i32, i32* %search_limit.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %search_limit.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %8 = load i32, i32* %search_limit.addr, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp4 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call7 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %10)
  store %struct.rtx_def* %call7, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.24, %if.end.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool9 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool9, label %land.rhs.10, label %land.end.14

land.rhs.10:                                      ; preds = %for.cond.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load11 = load i32, i32* %13, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 36
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.10, %for.cond.8
  %14 = phi i1 [ false, %for.cond.8 ], [ %cmp13, %land.rhs.10 ]
  br i1 %14, label %for.body.15, label %for.end.26

for.body.15:                                      ; preds = %land.end.14
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.22, %for.body.15
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* @n_basic_blocks, align 4
  %cmp17 = icmp slt i32 %15, %16
  br i1 %cmp17, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.16
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp19 = icmp eq %struct.rtx_def* %17, %21
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body.18
  %22 = load i32, i32* %i, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body.18
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.16

for.end.23:                                       ; preds = %for.cond.16
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call25 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %24)
  store %struct.rtx_def* %call25, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond.8

for.end.26:                                       ; preds = %land.end.14
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.20, %if.then.5, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare noalias i8* @xmalloc(i64) #1

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

declare %struct.rtx_def* @next_insn(%struct.rtx_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @update_live_status(%struct.rtx_def* %dest, %struct.rtx_def* %x, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %first_regno = alloca i32, align 4
  %last_regno = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 61
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %if.end.94

if.end:                                           ; preds = %lor.lhs.false, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 63
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call = call i32 @subreg_regno(%struct.rtx_def* %9)
  store i32 %call, i32* %first_regno, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %11 = load i32, i32* %rtuint, align 4
  store i32 %11, i32* %first_regno, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.10
  %12 = load i32, i32* %first_regno, align 4
  %13 = load i32, i32* %first_regno, align 4
  %cmp14 = icmp sge i32 %13, 8
  br i1 %cmp14, label %land.lhs.true.15, label %lor.lhs.false.17

land.lhs.true.15:                                 ; preds = %if.end.13
  %14 = load i32, i32* %first_regno, align 4
  %cmp16 = icmp sle i32 %14, 15
  br i1 %cmp16, label %cond.true, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15, %if.end.13
  %15 = load i32, i32* %first_regno, align 4
  %cmp18 = icmp sge i32 %15, 21
  br i1 %cmp18, label %land.lhs.true.19, label %lor.lhs.false.21

land.lhs.true.19:                                 ; preds = %lor.lhs.false.17
  %16 = load i32, i32* %first_regno, align 4
  %cmp20 = icmp sle i32 %16, 28
  br i1 %cmp20, label %cond.true, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.19, %lor.lhs.false.17
  %17 = load i32, i32* %first_regno, align 4
  %cmp22 = icmp sge i32 %17, 45
  br i1 %cmp22, label %land.lhs.true.23, label %lor.lhs.false.25

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21
  %18 = load i32, i32* %first_regno, align 4
  %cmp24 = icmp sle i32 %18, 52
  br i1 %cmp24, label %cond.true, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.23, %lor.lhs.false.21
  %19 = load i32, i32* %first_regno, align 4
  %cmp26 = icmp sge i32 %19, 29
  br i1 %cmp26, label %land.lhs.true.27, label %cond.false

land.lhs.true.27:                                 ; preds = %lor.lhs.false.25
  %20 = load i32, i32* %first_regno, align 4
  %cmp28 = icmp sle i32 %20, 36
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.27, %land.lhs.true.23, %land.lhs.true.19, %land.lhs.true.15
  %21 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load29 = load i32, i32* %22, align 8
  %bf.lshr = lshr i32 %bf.load29, 16
  %bf.clear30 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear30 to i64
  %arrayidx31 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %23 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %23, 5
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load33 = load i32, i32* %25, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  %idxprom36 = sext i32 %bf.clear35 to i64
  %arrayidx37 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom36
  %26 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %26, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %27 = phi i1 [ true, %cond.true ], [ %cmp38, %lor.rhs ]
  %cond = select i1 %27, i32 2, i32 1
  br label %cond.end.69

cond.false:                                       ; preds = %land.lhs.true.27, %lor.lhs.false.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load39 = load i32, i32* %29, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 16
  %bf.clear41 = and i32 %bf.lshr40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 18
  br i1 %cmp42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.false
  %30 = load i32, i32* @target_flags, align 4
  %and = and i32 %30, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond44 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.67

cond.false.45:                                    ; preds = %cond.false
  %31 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load46 = load i32, i32* %32, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %cmp49 = icmp eq i32 %bf.clear48, 24
  br i1 %cmp49, label %cond.true.50, label %cond.false.54

cond.true.50:                                     ; preds = %cond.false.45
  %33 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %33, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 4, i32 6
  br label %cond.end

cond.false.54:                                    ; preds = %cond.false.45
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load55 = load i32, i32* %35, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %idxprom58 = sext i32 %bf.clear57 to i64
  %arrayidx59 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom58
  %36 = load i8, i8* %arrayidx59, align 1
  %conv = zext i8 %36 to i32
  %37 = load i32, i32* @target_flags, align 4
  %and60 = and i32 %37, 33554432
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 8, i32 4
  %add = add nsw i32 %conv, %cond62
  %sub = sub nsw i32 %add, 1
  %38 = load i32, i32* @target_flags, align 4
  %and63 = and i32 %38, 33554432
  %tobool64 = icmp ne i32 %and63, 0
  %cond65 = select i1 %tobool64, i32 8, i32 4
  %div = sdiv i32 %sub, %cond65
  br label %cond.end

cond.end:                                         ; preds = %cond.false.54, %cond.true.50
  %cond66 = phi i32 [ %cond53, %cond.true.50 ], [ %div, %cond.false.54 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end, %cond.true.43
  %cond68 = phi i32 [ %cond44, %cond.true.43 ], [ %cond66, %cond.end ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %lor.end
  %cond70 = phi i32 [ %cond, %lor.end ], [ %cond68, %cond.end.67 ]
  %add71 = add nsw i32 %12, %cond70
  store i32 %add71, i32* %last_regno, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load72 = load i32, i32* %40, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 49
  br i1 %cmp74, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %cond.end.69
  %41 = load i32, i32* %first_regno, align 4
  store i32 %41, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.76
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %last_regno, align 4
  %cmp77 = icmp slt i32 %42, %43
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %44 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %45 = load i64, i64* @current_live_regs, align 8
  %and79 = and i64 %45, %neg
  store i64 %and79, i64* @current_live_regs, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.94

if.else.80:                                       ; preds = %cond.end.69
  %47 = load i32, i32* %first_regno, align 4
  store i32 %47, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.91, %if.else.80
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %last_regno, align 4
  %cmp82 = icmp slt i32 %48, %49
  br i1 %cmp82, label %for.body.84, label %for.end.93

for.body.84:                                      ; preds = %for.cond.81
  %50 = load i32, i32* %i, align 4
  %sh_prom85 = zext i32 %50 to i64
  %shl86 = shl i64 1, %sh_prom85
  %51 = load i64, i64* @current_live_regs, align 8
  %or = or i64 %51, %shl86
  store i64 %or, i64* @current_live_regs, align 8
  %52 = load i32, i32* %i, align 4
  %sh_prom87 = zext i32 %52 to i64
  %shl88 = shl i64 1, %sh_prom87
  %neg89 = xor i64 %shl88, -1
  %53 = load i64, i64* @pending_dead_regs, align 8
  %and90 = and i64 %53, %neg89
  store i64 %and90, i64* @pending_dead_regs, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.84
  %54 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %54, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.81

for.end.93:                                       ; preds = %for.cond.81
  br label %if.end.94

if.end.94:                                        ; preds = %if.then, %for.end.93, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @next_insn_no_annul(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %5, %6
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.5
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 2
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 28
  %bf.clear11 = and i32 %bf.lshr10, 1
  %tobool12 = icmp ne i32 %bf.clear11, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 2
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %land.lhs.true, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 2
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool19 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.38

land.lhs.true.20:                                 ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 32
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.38

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 24
  br i1 %cmp30, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %land.lhs.true.24
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %insn.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %land.lhs.true.24, %land.lhs.true.20, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %24
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %target, %struct.resources* %res, %struct.rtx_def** %jump_target, i32 %jump_count, i64 %set.coerce0, i64 %set.coerce1, %struct.resources* byval align 8 %needed) #0 {
entry:
  %set = alloca %struct.resources, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %res.addr = alloca %struct.resources*, align 8
  %jump_target.addr = alloca %struct.rtx_def**, align 8
  %jump_count.addr = alloca i32, align 4
  %scratch = alloca i64, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %jump_insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %this_jump_insn = alloca %struct.rtx_def*, align 8
  %target_set = alloca %struct.resources, align 8
  %target_res = alloca %struct.resources, align 8
  %fallthrough_res = alloca %struct.resources, align 8
  %0 = bitcast %struct.resources* %set to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %set.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %set.coerce1, i64* %2
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.resources* %res, %struct.resources** %res.addr, align 8
  store %struct.rtx_def** %jump_target, %struct.rtx_def*** %jump_target.addr, align 8
  store i32 %jump_count, i32* %jump_count.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %jump_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.244, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end.245

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %this_jump_insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %next, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call zeroext i1 @can_throw_internal(%struct.rtx_def* %8)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.245

if.end:                                           ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 36, label %sw.bb
    i32 35, label %sw.bb.4
    i32 37, label %sw.bb.4
    i32 32, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  %11 = load i64, i64* %regs, align 8
  %neg = xor i64 %11, -1
  %12 = load i64, i64* @pending_dead_regs, align 8
  %and = and i64 %12, %neg
  store i64 %and, i64* @pending_dead_regs, align 8
  %13 = load i64, i64* @pending_dead_regs, align 8
  %neg1 = xor i64 %13, -1
  %14 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs2 = getelementptr inbounds %struct.resources, %struct.resources* %14, i32 0, i32 4
  %15 = load i64, i64* %regs2, align 8
  %and3 = and i64 %15, %neg1
  store i64 %and3, i64* %regs2, align 8
  store i64 0, i64* @pending_dead_regs, align 8
  br label %for.inc.244

sw.bb.4:                                          ; preds = %if.end, %if.end
  br label %for.inc.244

sw.bb.5:                                          ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load9 = load i32, i32* %18, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp = icmp eq i32 %bf.clear10, 48
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.5
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load18 = load i32, i32* %22, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %idxprom = sext i32 %bf.clear19 to i64
  %arrayidx20 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv, 105
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.then.11
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %27 = load %struct.resources*, %struct.resources** %res.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %26, %struct.resources* %27, i32 0, i32 1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.23, %if.then.11
  br label %for.inc.244

if.else:                                          ; preds = %sw.bb.5
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load34 = load i32, i32* %30, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 49
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else
  br label %for.inc.244

if.else.39:                                       ; preds = %if.else
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 3
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load43 = load i32, i32* %33, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 24
  br i1 %cmp45, label %if.then.47, label %if.end.71

if.then.47:                                       ; preds = %if.else.39
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.then.47
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 3
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 0
  %38 = load i32, i32* %num_elem, align 4
  %cmp54 = icmp slt i32 %34, %38
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.48
  %39 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 3
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtvec63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec63, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom57
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx64, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %this_jump_insn, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load65 = load i32, i32* %45, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 33
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.56
  br label %for.end

if.end.70:                                        ; preds = %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.48

for.end:                                          ; preds = %if.then.69, %for.cond.48
  br label %if.end.71

if.end.71:                                        ; preds = %for.end, %if.else.39
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %sw.default

sw.default:                                       ; preds = %if.end, %if.end.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %47 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load74 = load i32, i32* %48, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 33
  br i1 %cmp76, label %if.then.78, label %if.end.236

if.then.78:                                       ; preds = %sw.epilog
  %49 = load i32, i32* %jump_count.addr, align 4
  %inc79 = add nsw i32 %49, 1
  store i32 %inc79, i32* %jump_count.addr, align 4
  %cmp80 = icmp slt i32 %49, 10
  br i1 %cmp80, label %if.then.82, label %if.else.234

if.then.82:                                       ; preds = %if.then.78
  %50 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %call83 = call i32 @any_uncondjump_p(%struct.rtx_def* %50)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.82
  %51 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load88 = load i32, i32* %53, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 51
  br i1 %cmp90, label %if.then.92, label %if.else.106

if.then.92:                                       ; preds = %lor.lhs.false, %if.then.82
  %54 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 7
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %next, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %cmp96 = icmp eq %struct.rtx_def* %56, null
  br i1 %cmp96, label %if.then.98, label %if.end.105

if.then.98:                                       ; preds = %if.then.92
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %jump_insn, align 8
  %58 = load %struct.rtx_def**, %struct.rtx_def*** %jump_target.addr, align 8
  %tobool99 = icmp ne %struct.rtx_def** %58, null
  br i1 %tobool99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.then.98
  %59 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 7
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %jump_target.addr, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %61, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.then.98
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.92
  br label %if.end.233

if.else.106:                                      ; preds = %lor.lhs.false
  %62 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %call107 = call i32 @any_condjump_p(%struct.rtx_def* %62)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.232

if.then.109:                                      ; preds = %if.else.106
  %63 = load i32, i32* %jump_count.addr, align 4
  %add = add nsw i32 %63, 4
  store i32 %add, i32* %jump_count.addr, align 4
  %64 = load i32, i32* %jump_count.addr, align 4
  %cmp110 = icmp sge i32 %64, 10
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.109
  br label %for.end.245

if.end.113:                                       ; preds = %if.then.109
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %65, %struct.resources* %needed, i32 1)
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 3
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load117 = load i32, i32* %68, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 24
  br i1 %cmp119, label %land.lhs.true, label %if.else.206

land.lhs.true:                                    ; preds = %if.end.113
  %69 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load121 = load i32, i32* %70, align 8
  %bf.lshr = lshr i32 %bf.load121, 26
  %bf.clear122 = and i32 %bf.lshr, 1
  %tobool123 = icmp ne i32 %bf.clear122, 0
  br i1 %tobool123, label %if.then.124, label %if.else.206

if.then.124:                                      ; preds = %land.lhs.true
  store i32 1, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.160, %if.then.124
  %71 = load i32, i32* %i, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 3
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtvec131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec131, align 8
  %num_elem132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 0
  %75 = load i32, i32* %num_elem132, align 4
  %cmp133 = icmp slt i32 %71, %75
  br i1 %cmp133, label %for.body.135, label %for.end.162

for.body.135:                                     ; preds = %for.cond.125
  %76 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 3
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx139, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 0
  %rtvec142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtvec_def**
  %79 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec142, align 8
  %elem143 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %79, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem143, i32 0, i64 %idxprom136
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx144, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load145 = load i32, i32* %81, align 8
  %bf.lshr146 = lshr i32 %bf.load145, 28
  %bf.clear147 = and i32 %bf.lshr146, 1
  %tobool148 = icmp ne i32 %bf.clear147, 0
  %lnot = xor i1 %tobool148, true
  %lnot.ext = zext i1 %lnot to i32
  %82 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %82 to i64
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 3
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtvec155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtvec_def**
  %85 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec155, align 8
  %elem156 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %85, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem156, i32 0, i64 %idxprom149
  %86 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx157, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load158 = load i32, i32* %87, align 8
  %bf.value = and i32 %lnot.ext, 1
  %bf.shl = shl i32 %bf.value, 28
  %bf.clear159 = and i32 %bf.load158, -268435457
  %bf.set = or i32 %bf.clear159, %bf.shl
  store i32 %bf.set, i32* %87, align 8
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.135
  %88 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %88, 1
  store i32 %inc161, i32* %i, align 4
  br label %for.cond.125

for.end.162:                                      ; preds = %for.cond.125
  %89 = bitcast %struct.resources* %target_set to i8*
  %90 = bitcast %struct.resources* %set to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 16, i32 8, i1 false)
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_set_resources(%struct.rtx_def* %91, %struct.resources* %target_set, i32 0, i32 1)
  store i32 1, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.203, %for.end.162
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 3
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx166, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtvec169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtvec_def**
  %95 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec169, align 8
  %num_elem170 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %95, i32 0, i32 0
  %96 = load i32, i32* %num_elem170, align 4
  %cmp171 = icmp slt i32 %92, %96
  br i1 %cmp171, label %for.body.173, label %for.end.205

for.body.173:                                     ; preds = %for.cond.163
  %97 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %97 to i64
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 3
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtvec180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtvec_def**
  %100 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec180, align 8
  %elem181 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %100, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem181, i32 0, i64 %idxprom174
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx182, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load183 = load i32, i32* %102, align 8
  %bf.lshr184 = lshr i32 %bf.load183, 28
  %bf.clear185 = and i32 %bf.lshr184, 1
  %tobool186 = icmp ne i32 %bf.clear185, 0
  %lnot187 = xor i1 %tobool186, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %103 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %103 to i64
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 3
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 0
  %rtvec195 = bitcast %union.rtunion_def* %arrayidx194 to %struct.rtvec_def**
  %106 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec195, align 8
  %elem196 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %106, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem196, i32 0, i64 %idxprom189
  %107 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx197, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load198 = load i32, i32* %108, align 8
  %bf.value199 = and i32 %lnot.ext188, 1
  %bf.shl200 = shl i32 %bf.value199, 28
  %bf.clear201 = and i32 %bf.load198, -268435457
  %bf.set202 = or i32 %bf.clear201, %bf.shl200
  store i32 %bf.set202, i32* %108, align 8
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.173
  %109 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %109, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond.163

for.end.205:                                      ; preds = %for.cond.163
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_set_resources(%struct.rtx_def* %110, %struct.resources* %set, i32 0, i32 1)
  br label %if.end.207

if.else.206:                                      ; preds = %land.lhs.true, %if.end.113
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_set_resources(%struct.rtx_def* %111, %struct.resources* %set, i32 0, i32 1)
  %112 = bitcast %struct.resources* %target_set to i8*
  %113 = bitcast %struct.resources* %set to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 16, i32 8, i1 false)
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.206, %for.end.205
  %114 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %115 = bitcast %struct.resources* %target_res to i8*
  %116 = bitcast %struct.resources* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 16, i32 8, i1 false)
  %regs208 = getelementptr inbounds %struct.resources, %struct.resources* %target_set, i32 0, i32 4
  %117 = load i64, i64* %regs208, align 8
  store i64 %117, i64* %scratch, align 8
  %regs209 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  %118 = load i64, i64* %regs209, align 8
  %neg210 = xor i64 %118, -1
  %119 = load i64, i64* %scratch, align 8
  %and211 = and i64 %119, %neg210
  store i64 %and211, i64* %scratch, align 8
  %120 = load i64, i64* %scratch, align 8
  %neg212 = xor i64 %120, -1
  %regs213 = getelementptr inbounds %struct.resources, %struct.resources* %target_res, i32 0, i32 4
  %121 = load i64, i64* %regs213, align 8
  %and214 = and i64 %121, %neg212
  store i64 %and214, i64* %regs213, align 8
  %122 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %123 = bitcast %struct.resources* %fallthrough_res to i8*
  %124 = bitcast %struct.resources* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 16, i32 8, i1 false)
  %regs215 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 4
  %125 = load i64, i64* %regs215, align 8
  store i64 %125, i64* %scratch, align 8
  %regs216 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  %126 = load i64, i64* %regs216, align 8
  %neg217 = xor i64 %126, -1
  %127 = load i64, i64* %scratch, align 8
  %and218 = and i64 %127, %neg217
  store i64 %and218, i64* %scratch, align 8
  %128 = load i64, i64* %scratch, align 8
  %neg219 = xor i64 %128, -1
  %regs220 = getelementptr inbounds %struct.resources, %struct.resources* %fallthrough_res, i32 0, i32 4
  %129 = load i64, i64* %regs220, align 8
  %and221 = and i64 %129, %neg219
  store i64 %and221, i64* %regs220, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %this_jump_insn, align 8
  %fld222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld222, i32 0, i64 7
  %rtx224 = bitcast %union.rtunion_def* %arrayidx223 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx224, align 8
  %132 = load i32, i32* %jump_count.addr, align 4
  %133 = bitcast %struct.resources* %target_set to { i64, i64 }*
  %134 = getelementptr { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 1
  %136 = getelementptr { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 1
  %call225 = call %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %131, %struct.resources* %target_res, %struct.rtx_def** null, i32 %132, i64 %135, i64 %137, %struct.resources* byval align 8 %needed)
  %138 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %139 = load i32, i32* %jump_count.addr, align 4
  %140 = bitcast %struct.resources* %set to { i64, i64 }*
  %141 = getelementptr { i64, i64 }, { i64, i64 }* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 1
  %143 = getelementptr { i64, i64 }, { i64, i64 }* %140, i32 0, i32 1
  %144 = load i64, i64* %143, align 1
  %call226 = call %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %138, %struct.resources* %fallthrough_res, %struct.rtx_def** null, i32 %139, i64 %142, i64 %144, %struct.resources* byval align 8 %needed)
  %regs227 = getelementptr inbounds %struct.resources, %struct.resources* %target_res, i32 0, i32 4
  %145 = load i64, i64* %regs227, align 8
  %regs228 = getelementptr inbounds %struct.resources, %struct.resources* %fallthrough_res, i32 0, i32 4
  %146 = load i64, i64* %regs228, align 8
  %or = or i64 %146, %145
  store i64 %or, i64* %regs228, align 8
  %regs229 = getelementptr inbounds %struct.resources, %struct.resources* %fallthrough_res, i32 0, i32 4
  %147 = load i64, i64* %regs229, align 8
  %148 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs230 = getelementptr inbounds %struct.resources, %struct.resources* %148, i32 0, i32 4
  %149 = load i64, i64* %regs230, align 8
  %and231 = and i64 %149, %147
  store i64 %and231, i64* %regs230, align 8
  br label %for.end.245

if.else.232:                                      ; preds = %if.else.106
  br label %for.end.245

if.end.233:                                       ; preds = %if.end.105
  br label %if.end.235

if.else.234:                                      ; preds = %if.then.78
  store %struct.rtx_def* null, %struct.rtx_def** %jump_insn, align 8
  br label %for.end.245

if.end.235:                                       ; preds = %if.end.233
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %sw.epilog
  %150 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %150, %struct.resources* %needed, i32 1)
  %151 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @mark_set_resources(%struct.rtx_def* %151, %struct.resources* %set, i32 0, i32 1)
  %regs237 = getelementptr inbounds %struct.resources, %struct.resources* %set, i32 0, i32 4
  %152 = load i64, i64* %regs237, align 8
  store i64 %152, i64* %scratch, align 8
  %regs238 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i32 0, i32 4
  %153 = load i64, i64* %regs238, align 8
  %neg239 = xor i64 %153, -1
  %154 = load i64, i64* %scratch, align 8
  %and240 = and i64 %154, %neg239
  store i64 %and240, i64* %scratch, align 8
  %155 = load i64, i64* %scratch, align 8
  %neg241 = xor i64 %155, -1
  %156 = load %struct.resources*, %struct.resources** %res.addr, align 8
  %regs242 = getelementptr inbounds %struct.resources, %struct.resources* %156, i32 0, i32 4
  %157 = load i64, i64* %regs242, align 8
  %and243 = and i64 %157, %neg241
  store i64 %and243, i64* %regs242, align 8
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.236, %if.then.38, %if.end.30, %sw.bb.4, %sw.bb
  %158 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.245:                                      ; preds = %if.else.234, %if.else.232, %if.end.207, %if.then.112, %if.then, %for.cond
  %159 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  ret %struct.rtx_def* %159
}

declare %struct.rtx_def* @next_active_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @init_resource_info(%struct.rtx_def* %epilogue_insn) #0 {
entry:
  %epilogue_insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %epilogue_insn, %struct.rtx_def** %epilogue_insn.addr, align 8
  store i8 0, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 3), align 1
  store i8 1, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 0), align 1
  store i8 0, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 1), align 1
  store i64 0, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %0 = load i32, i32* @frame_pointer_needed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %or = or i64 %1, 1048576
  store i64 %or, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %or1 = or i64 %2, 64
  store i64 %or1, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %3 = load i32, i32* @current_function_sp_is_unchanging, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %or4 = or i64 %4, 128
  store i64 %or4, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %or5 = or i64 %5, 128
  store i64 %or5, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 14
  %7 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.6
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx8 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 14
  %9 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx8, align 8
  call void @mark_referenced_resources(%struct.rtx_def* %9, %struct.resources* @end_of_function_needs, i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %10, 53
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %tobool11 = icmp ne i8 %12, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %14 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  %or13 = or i64 %14, %shl
  store i64 %or13, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 4), align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds (%struct.resources, %struct.resources* @start_of_epilogue_needs, i32 0, i32 0), i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i32 0, i32 0), i64 16, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %16)
  store %struct.rtx_def* %call, %struct.rtx_def** %epilogue_insn.addr, align 8
  %tobool15 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_insn.addr, align 8
  call void @mark_set_resources(%struct.rtx_def* %17, %struct.resources* @end_of_function_needs, i32 0, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call noalias i8* @xcalloc(i64 257, i64 8)
  %18 = bitcast i8* %call16 to %struct.target_info**
  store %struct.target_info** %18, %struct.target_info*** @target_hash_table, align 8
  %19 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %19 to i64
  %call17 = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %20 = bitcast i8* %call17 to i32*
  store i32* %20, i32** @bb_ticks, align 8
  ret void
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @free_resource_info() #0 {
entry:
  %i = alloca i32, align 4
  %ti = alloca %struct.target_info*, align 8
  %next = alloca %struct.target_info*, align 8
  %0 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %cmp = icmp ne %struct.target_info** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 257
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.target_info*, %struct.target_info** %3, i64 %idxprom
  %4 = load %struct.target_info*, %struct.target_info** %arrayidx, align 8
  store %struct.target_info* %4, %struct.target_info** %ti, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load %struct.target_info*, %struct.target_info** %ti, align 8
  %tobool = icmp ne %struct.target_info* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.target_info*, %struct.target_info** %ti, align 8
  %next2 = getelementptr inbounds %struct.target_info, %struct.target_info* %6, i32 0, i32 1
  %7 = load %struct.target_info*, %struct.target_info** %next2, align 8
  store %struct.target_info* %7, %struct.target_info** %next, align 8
  %8 = load %struct.target_info*, %struct.target_info** %ti, align 8
  %9 = bitcast %struct.target_info* %8 to i8*
  call void @free(i8* %9) #3
  %10 = load %struct.target_info*, %struct.target_info** %next, align 8
  store %struct.target_info* %10, %struct.target_info** %ti, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %13 = bitcast %struct.target_info** %12 to i8*
  call void @free(i8* %13) #3
  store %struct.target_info** null, %struct.target_info*** @target_hash_table, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load i32*, i32** @bb_ticks, align 8
  %cmp3 = icmp ne i32* %14, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %15 = load i32*, i32** @bb_ticks, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16) #3
  store i32* null, i32** @bb_ticks, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @clear_hashed_info_for_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %tinfo = alloca %struct.target_info*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %cmp = icmp ne %struct.target_info** %0, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtint, align 4
  %rem = srem i32 %2, 257
  %idxprom = sext i32 %rem to i64
  %3 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.target_info*, %struct.target_info** %3, i64 %idxprom
  %4 = load %struct.target_info*, %struct.target_info** %arrayidx1, align 8
  store %struct.target_info* %4, %struct.target_info** %tinfo, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %tobool = icmp ne %struct.target_info* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %uid = getelementptr inbounds %struct.target_info, %struct.target_info* %6, i32 0, i32 0
  %7 = load i32, i32* %uid, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %9 = load i32, i32* %rtint4, align 4
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %next = getelementptr inbounds %struct.target_info, %struct.target_info* %10, i32 0, i32 1
  %11 = load %struct.target_info*, %struct.target_info** %next, align 8
  store %struct.target_info* %11, %struct.target_info** %tinfo, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %12 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %tobool7 = icmp ne %struct.target_info* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  %13 = load %struct.target_info*, %struct.target_info** %tinfo, align 8
  %block = getelementptr inbounds %struct.target_info, %struct.target_info* %13, i32 0, i32 3
  store i32 -1, i32* %block, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @incr_ticks_for_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %b = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 2
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %value, align 4
  %call = call i32 @find_basic_block(%struct.rtx_def* %0, i32 %2)
  store i32 %call, i32* %b, align 4
  %3 = load i32, i32* %b, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @bb_ticks, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx1, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %arrayidx1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_end_of_function_resources(%struct.rtx_def* %trial, i32 %include_delayed_effects) #0 {
entry:
  %trial.addr = alloca %struct.rtx_def*, align 8
  %include_delayed_effects.addr = alloca i32, align 4
  store %struct.rtx_def* %trial, %struct.rtx_def** %trial.addr, align 8
  store i32 %include_delayed_effects, i32* %include_delayed_effects.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %1 = load i32, i32* %include_delayed_effects.addr, align 4
  call void @mark_referenced_resources(%struct.rtx_def* %0, %struct.resources* @end_of_function_needs, i32 %1)
  ret void
}

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
