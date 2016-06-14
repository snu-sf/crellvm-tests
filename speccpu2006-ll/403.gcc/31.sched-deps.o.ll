; ModuleID = 'sched-deps.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.haifa_insn_data = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.sched_info = type { void (%struct.ready_list*)*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.ready_list = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.param_info = type { i8*, i32, i8* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.deps = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8, i32, %struct.deps_reg*, %struct.bitmap_head_def }
%struct.deps_reg = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.cselib_val_struct = type { i32, %union.anon, %struct.elt_loc_list*, %struct.elt_list* }
%union.anon = type { %struct.rtx_def* }
%struct.elt_loc_list = type { %struct.elt_loc_list*, %struct.rtx_def*, %struct.rtx_def* }
%struct.elt_list = type { %struct.elt_list*, %struct.cselib_val_struct* }

@true_dependency_cache = internal global %struct.simple_bitmap_def** null, align 8
@anti_dependency_cache = internal global %struct.simple_bitmap_def** null, align 8
@output_dependency_cache = internal global %struct.simple_bitmap_def** null, align 8
@.str = private unnamed_addr constant [13 x i8] c"sched-deps.c\00", align 1
@__FUNCTION__.add_dependence = private unnamed_addr constant [15 x i8] c"add_dependence\00", align 1
@h_i_d = external global %struct.haifa_insn_data*, align 8
@current_sched_info = external global %struct.sched_info*, align 8
@compiler_params = external global %struct.param_info*, align 8
@reg_pending_barrier = internal global i8 0, align 1
@global_regs = external global [53 x i8], align 16
@reg_pending_sets = internal global %struct.bitmap_head_def* null, align 8
@reg_pending_uses = internal global %struct.bitmap_head_def* null, align 8
@regs_invalidated_by_call = external global i64, align 8
@reg_pending_clobbers = internal global %struct.bitmap_head_def* null, align 8
@fixed_regs = external global [53 x i8], align 16
@reload_completed = external global i32, align 4
@frame_pointer_needed = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@n_basic_blocks = external global i32, align 4
@reg_pending_sets_head = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reg_pending_clobbers_head = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reg_pending_uses_head = internal global %struct.bitmap_head_def zeroinitializer, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@__FUNCTION__.sched_analyze_2 = private unnamed_addr constant [16 x i8] c"sched_analyze_2\00", align 1
@reg_known_equiv_p = external global i8*, align 8
@reg_known_value = external global %struct.rtx_def**, align 8
@reg_n_info = external global %struct.varray_head_tag*, align 8
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.sched_analyze_1 = private unnamed_addr constant [16 x i8] c"sched_analyze_1\00", align 1
@__FUNCTION__.remove_dependence = private unnamed_addr constant [18 x i8] c"remove_dependence\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_insn_list(%struct.rtx_def* %insn, %struct.rtx_def* %list) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %list.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %list, %struct.rtx_def** %list.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define void @add_dependence(%struct.rtx_def* %insn, %struct.rtx_def* %elem, i32 %dep_type) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %elem.addr = alloca %struct.rtx_def*, align 8
  %dep_type.addr = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %present_p = alloca i32, align 4
  %cond1 = alloca %struct.rtx_def*, align 8
  %cond2 = alloca %struct.rtx_def*, align 8
  %nnext = alloca %struct.rtx_def*, align 8
  %present_dep_type = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %elem, %struct.rtx_def** %elem.addr, align 8
  store i32 %dep_type, i32* %dep_type.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.460

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 37
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.460

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 34
  br i1 %cmp6, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 34
  br i1 %cmp9, label %if.then.10, label %if.end.25

if.then.10:                                       ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @get_condition(%struct.rtx_def* %8)
  store %struct.rtx_def* %call, %struct.rtx_def** %cond1, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %call11 = call %struct.rtx_def* @get_condition(%struct.rtx_def* %9)
  store %struct.rtx_def* %call11, %struct.rtx_def** %cond2, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %land.lhs.true.12, label %if.end.24

land.lhs.true.12:                                 ; preds = %if.then.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %tobool13 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.24

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %12 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %call15 = call i32 @conditions_mutex_p(%struct.rtx_def* %12, %struct.rtx_def* %13)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %call18 = call i32 @modified_in_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.24, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call21 = call i32 @modified_in_p(%struct.rtx_def* %16, %struct.rtx_def* %17)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %if.end.460

if.end.24:                                        ; preds = %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true.12, %if.then.10
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end.3
  %18 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %call26 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %18)
  store %struct.rtx_def* %call26, %struct.rtx_def** %next, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool27 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.50

land.lhs.true.28:                                 ; preds = %if.end.25
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load29 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load29, 28
  %bf.clear30 = and i32 %bf.lshr, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.50

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %22 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load33 = load i32, i32* %23, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp ne i32 %bf.clear34, 36
  br i1 %cmp35, label %if.then.36, label %if.end.50

if.then.36:                                       ; preds = %land.lhs.true.32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.36
  %24 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call37 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %24)
  store %struct.rtx_def* %call37, %struct.rtx_def** %nnext, align 8
  %cmp38 = icmp ne %struct.rtx_def* %call37, null
  br i1 %cmp38, label %land.lhs.true.39, label %land.end

land.lhs.true.39:                                 ; preds = %while.cond
  %25 = load %struct.rtx_def*, %struct.rtx_def** %nnext, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load40 = load i32, i32* %26, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 28
  %bf.clear42 = and i32 %bf.lshr41, 1
  %tobool43 = icmp ne i32 %bf.clear42, 0
  br i1 %tobool43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.39
  %27 = load %struct.rtx_def*, %struct.rtx_def** %nnext, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load44 = load i32, i32* %28, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp ne i32 %bf.clear45, 36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.39, %while.cond
  %29 = phi i1 [ false, %land.lhs.true.39 ], [ false, %while.cond ], [ %cmp46, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load %struct.rtx_def*, %struct.rtx_def** %nnext, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp47 = icmp eq %struct.rtx_def* %31, %32
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %while.end
  br label %if.end.460

if.end.49:                                        ; preds = %while.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %elem.addr, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true.32, %land.lhs.true.28, %if.end.25
  store i32 1, i32* %present_p, align 4
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %cmp51 = icmp ne %struct.simple_bitmap_def** %34, null
  br i1 %cmp51, label %if.then.52, label %if.end.146

if.then.52:                                       ; preds = %if.end.50
  store i32 0, i32* %present_dep_type, align 4
  %35 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %cmp53 = icmp eq %struct.simple_bitmap_def** %35, null
  br i1 %cmp53, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %cmp54 = icmp eq %struct.simple_bitmap_def** %36, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false, %if.then.52
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.add_dependence, i32 0, i32 0)) #4
  unreachable

if.end.56:                                        ; preds = %lor.lhs.false
  %37 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %38 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx57 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %39, i64 %idxprom
  %luid = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx57, i32 0, i32 2
  %40 = load i32, i32* %luid, align 4
  %div = udiv i32 %40, 64
  %idxprom58 = zext i32 %div to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %42 = load i32, i32* %rtint61, align 4
  %idxprom62 = sext i32 %42 to i64
  %43 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx63 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %43, i64 %idxprom62
  %luid64 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx63, i32 0, i32 2
  %44 = load i32, i32* %luid64, align 4
  %idxprom65 = sext i32 %44 to i64
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %arrayidx66 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %45, i64 %idxprom65
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx66, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %46, i32 0, i32 3
  %arrayidx67 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom58
  %47 = load i64, i64* %arrayidx67, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtint70 = bitcast %union.rtunion_def* %arrayidx69 to i32*
  %49 = load i32, i32* %rtint70, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx72 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %50, i64 %idxprom71
  %luid73 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx72, i32 0, i32 2
  %51 = load i32, i32* %luid73, align 4
  %rem = urem i32 %51, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %47, %sh_prom
  %and = and i64 %shr, 1
  %tobool74 = icmp ne i64 %and, 0
  br i1 %tobool74, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.56
  br label %if.end.140

if.else:                                          ; preds = %if.end.56
  %52 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtint78 = bitcast %union.rtunion_def* %arrayidx77 to i32*
  %53 = load i32, i32* %rtint78, align 4
  %idxprom79 = sext i32 %53 to i64
  %54 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx80 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %54, i64 %idxprom79
  %luid81 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx80, i32 0, i32 2
  %55 = load i32, i32* %luid81, align 4
  %div82 = udiv i32 %55, 64
  %idxprom83 = zext i32 %div82 to i64
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtint86 = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %57 = load i32, i32* %rtint86, align 4
  %idxprom87 = sext i32 %57 to i64
  %58 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx88 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %58, i64 %idxprom87
  %luid89 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx88, i32 0, i32 2
  %59 = load i32, i32* %luid89, align 4
  %idxprom90 = sext i32 %59 to i64
  %60 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %arrayidx91 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %60, i64 %idxprom90
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx91, align 8
  %elms92 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %61, i32 0, i32 3
  %arrayidx93 = getelementptr inbounds [1 x i64], [1 x i64]* %elms92, i32 0, i64 %idxprom83
  %62 = load i64, i64* %arrayidx93, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtint96 = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %64 = load i32, i32* %rtint96, align 4
  %idxprom97 = sext i32 %64 to i64
  %65 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx98 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %65, i64 %idxprom97
  %luid99 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx98, i32 0, i32 2
  %66 = load i32, i32* %luid99, align 4
  %rem100 = urem i32 %66, 64
  %sh_prom101 = zext i32 %rem100 to i64
  %shr102 = lshr i64 %62, %sh_prom101
  %and103 = and i64 %shr102, 1
  %tobool104 = icmp ne i64 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.else
  store i32 14, i32* %present_dep_type, align 4
  br label %if.end.139

if.else.106:                                      ; preds = %if.else
  %67 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtint109 = bitcast %union.rtunion_def* %arrayidx108 to i32*
  %68 = load i32, i32* %rtint109, align 4
  %idxprom110 = sext i32 %68 to i64
  %69 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx111 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %69, i64 %idxprom110
  %luid112 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx111, i32 0, i32 2
  %70 = load i32, i32* %luid112, align 4
  %div113 = udiv i32 %70, 64
  %idxprom114 = zext i32 %div113 to i64
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 0
  %rtint117 = bitcast %union.rtunion_def* %arrayidx116 to i32*
  %72 = load i32, i32* %rtint117, align 4
  %idxprom118 = sext i32 %72 to i64
  %73 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx119 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %73, i64 %idxprom118
  %luid120 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx119, i32 0, i32 2
  %74 = load i32, i32* %luid120, align 4
  %idxprom121 = sext i32 %74 to i64
  %75 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %arrayidx122 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %75, i64 %idxprom121
  %76 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx122, align 8
  %elms123 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %76, i32 0, i32 3
  %arrayidx124 = getelementptr inbounds [1 x i64], [1 x i64]* %elms123, i32 0, i64 %idxprom114
  %77 = load i64, i64* %arrayidx124, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtint127 = bitcast %union.rtunion_def* %arrayidx126 to i32*
  %79 = load i32, i32* %rtint127, align 4
  %idxprom128 = sext i32 %79 to i64
  %80 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx129 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %80, i64 %idxprom128
  %luid130 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx129, i32 0, i32 2
  %81 = load i32, i32* %luid130, align 4
  %rem131 = urem i32 %81, 64
  %sh_prom132 = zext i32 %rem131 to i64
  %shr133 = lshr i64 %77, %sh_prom132
  %and134 = and i64 %shr133, 1
  %tobool135 = icmp ne i64 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.else.106
  store i32 15, i32* %present_dep_type, align 4
  br label %if.end.138

if.else.137:                                      ; preds = %if.else.106
  store i32 0, i32* %present_p, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.then.136
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.105
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.75
  %82 = load i32, i32* %present_p, align 4
  %tobool141 = icmp ne i32 %82, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.145

land.lhs.true.142:                                ; preds = %if.end.140
  %83 = load i32, i32* %dep_type.addr, align 4
  %84 = load i32, i32* %present_dep_type, align 4
  %cmp143 = icmp sge i32 %83, %84
  br i1 %cmp143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %land.lhs.true.142
  br label %if.end.460

if.end.145:                                       ; preds = %land.lhs.true.142, %if.end.140
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.50
  %85 = load i32, i32* %present_p, align 4
  %tobool147 = icmp ne i32 %85, 0
  br i1 %tobool147, label %if.then.148, label %if.end.350

if.then.148:                                      ; preds = %if.end.146
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.148
  %88 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool151 = icmp ne %struct.rtx_def* %88, null
  br i1 %tobool151, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %cmp155 = icmp eq %struct.rtx_def* %90, %91
  br i1 %cmp155, label %if.then.156, label %if.end.346

if.then.156:                                      ; preds = %for.body
  %92 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %cmp157 = icmp ne %struct.simple_bitmap_def** %92, null
  br i1 %cmp157, label %if.then.158, label %if.end.231

if.then.158:                                      ; preds = %if.then.156
  %93 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load159 = load i32, i32* %94, align 8
  %bf.lshr160 = lshr i32 %bf.load159, 16
  %bf.clear161 = and i32 %bf.lshr160, 255
  %cmp162 = icmp eq i32 %bf.clear161, 14
  br i1 %cmp162, label %if.then.163, label %if.else.191

if.then.163:                                      ; preds = %if.then.158
  %95 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtint166 = bitcast %union.rtunion_def* %arrayidx165 to i32*
  %96 = load i32, i32* %rtint166, align 4
  %idxprom167 = sext i32 %96 to i64
  %97 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx168 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %97, i64 %idxprom167
  %luid169 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx168, i32 0, i32 2
  %98 = load i32, i32* %luid169, align 4
  %rem170 = urem i32 %98, 64
  %sh_prom171 = zext i32 %rem170 to i64
  %shl = shl i64 1, %sh_prom171
  %neg = xor i64 %shl, -1
  %99 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtint174 = bitcast %union.rtunion_def* %arrayidx173 to i32*
  %100 = load i32, i32* %rtint174, align 4
  %idxprom175 = sext i32 %100 to i64
  %101 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx176 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %101, i64 %idxprom175
  %luid177 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx176, i32 0, i32 2
  %102 = load i32, i32* %luid177, align 4
  %div178 = udiv i32 %102, 64
  %idxprom179 = zext i32 %div178 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtint182 = bitcast %union.rtunion_def* %arrayidx181 to i32*
  %104 = load i32, i32* %rtint182, align 4
  %idxprom183 = sext i32 %104 to i64
  %105 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx184 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %105, i64 %idxprom183
  %luid185 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx184, i32 0, i32 2
  %106 = load i32, i32* %luid185, align 4
  %idxprom186 = sext i32 %106 to i64
  %107 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %arrayidx187 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %107, i64 %idxprom186
  %108 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx187, align 8
  %elms188 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %108, i32 0, i32 3
  %arrayidx189 = getelementptr inbounds [1 x i64], [1 x i64]* %elms188, i32 0, i64 %idxprom179
  %109 = load i64, i64* %arrayidx189, align 8
  %and190 = and i64 %109, %neg
  store i64 %and190, i64* %arrayidx189, align 8
  br label %if.end.230

if.else.191:                                      ; preds = %if.then.158
  %110 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load192 = load i32, i32* %111, align 8
  %bf.lshr193 = lshr i32 %bf.load192, 16
  %bf.clear194 = and i32 %bf.lshr193, 255
  %cmp195 = icmp eq i32 %bf.clear194, 15
  br i1 %cmp195, label %land.lhs.true.196, label %if.else.228

land.lhs.true.196:                                ; preds = %if.else.191
  %112 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %tobool197 = icmp ne %struct.simple_bitmap_def** %112, null
  br i1 %tobool197, label %if.then.198, label %if.else.228

if.then.198:                                      ; preds = %land.lhs.true.196
  %113 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtint201 = bitcast %union.rtunion_def* %arrayidx200 to i32*
  %114 = load i32, i32* %rtint201, align 4
  %idxprom202 = sext i32 %114 to i64
  %115 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx203 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %115, i64 %idxprom202
  %luid204 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx203, i32 0, i32 2
  %116 = load i32, i32* %luid204, align 4
  %rem205 = urem i32 %116, 64
  %sh_prom206 = zext i32 %rem205 to i64
  %shl207 = shl i64 1, %sh_prom206
  %neg208 = xor i64 %shl207, -1
  %117 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtint211 = bitcast %union.rtunion_def* %arrayidx210 to i32*
  %118 = load i32, i32* %rtint211, align 4
  %idxprom212 = sext i32 %118 to i64
  %119 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx213 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %119, i64 %idxprom212
  %luid214 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx213, i32 0, i32 2
  %120 = load i32, i32* %luid214, align 4
  %div215 = udiv i32 %120, 64
  %idxprom216 = zext i32 %div215 to i64
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 0
  %rtint219 = bitcast %union.rtunion_def* %arrayidx218 to i32*
  %122 = load i32, i32* %rtint219, align 4
  %idxprom220 = sext i32 %122 to i64
  %123 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx221 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %123, i64 %idxprom220
  %luid222 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx221, i32 0, i32 2
  %124 = load i32, i32* %luid222, align 4
  %idxprom223 = sext i32 %124 to i64
  %125 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %arrayidx224 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %125, i64 %idxprom223
  %126 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx224, align 8
  %elms225 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %126, i32 0, i32 3
  %arrayidx226 = getelementptr inbounds [1 x i64], [1 x i64]* %elms225, i32 0, i64 %idxprom216
  %127 = load i64, i64* %arrayidx226, align 8
  %and227 = and i64 %127, %neg208
  store i64 %and227, i64* %arrayidx226, align 8
  br label %if.end.229

if.else.228:                                      ; preds = %land.lhs.true.196, %if.else.191
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.add_dependence, i32 0, i32 0)) #4
  unreachable

if.end.229:                                       ; preds = %if.then.198
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.163
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.156
  %128 = load i32, i32* %dep_type.addr, align 4
  %129 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load232 = load i32, i32* %130, align 8
  %bf.lshr233 = lshr i32 %bf.load232, 16
  %bf.clear234 = and i32 %bf.lshr233, 255
  %cmp235 = icmp slt i32 %128, %bf.clear234
  br i1 %cmp235, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %if.end.231
  %131 = load i32, i32* %dep_type.addr, align 4
  %132 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load237 = load i32, i32* %133, align 8
  %bf.value = and i32 %131, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear238 = and i32 %bf.load237, -16711681
  %bf.set = or i32 %bf.clear238, %bf.shl
  store i32 %bf.set, i32* %133, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %if.end.231
  %134 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %cmp240 = icmp ne %struct.simple_bitmap_def** %134, null
  br i1 %cmp240, label %if.then.241, label %if.end.345

if.then.241:                                      ; preds = %if.end.239
  %135 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load242 = load i32, i32* %136, align 8
  %bf.lshr243 = lshr i32 %bf.load242, 16
  %bf.clear244 = and i32 %bf.lshr243, 255
  %cmp245 = icmp eq i32 %bf.clear244, 0
  br i1 %cmp245, label %if.then.246, label %if.else.274

if.then.246:                                      ; preds = %if.then.241
  %137 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtint249 = bitcast %union.rtunion_def* %arrayidx248 to i32*
  %138 = load i32, i32* %rtint249, align 4
  %idxprom250 = sext i32 %138 to i64
  %139 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx251 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %139, i64 %idxprom250
  %luid252 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx251, i32 0, i32 2
  %140 = load i32, i32* %luid252, align 4
  %rem253 = urem i32 %140, 64
  %sh_prom254 = zext i32 %rem253 to i64
  %shl255 = shl i64 1, %sh_prom254
  %141 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld256, i32 0, i64 0
  %rtint258 = bitcast %union.rtunion_def* %arrayidx257 to i32*
  %142 = load i32, i32* %rtint258, align 4
  %idxprom259 = sext i32 %142 to i64
  %143 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx260 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %143, i64 %idxprom259
  %luid261 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx260, i32 0, i32 2
  %144 = load i32, i32* %luid261, align 4
  %div262 = udiv i32 %144, 64
  %idxprom263 = zext i32 %div262 to i64
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 0
  %rtint266 = bitcast %union.rtunion_def* %arrayidx265 to i32*
  %146 = load i32, i32* %rtint266, align 4
  %idxprom267 = sext i32 %146 to i64
  %147 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx268 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %147, i64 %idxprom267
  %luid269 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx268, i32 0, i32 2
  %148 = load i32, i32* %luid269, align 4
  %idxprom270 = sext i32 %148 to i64
  %149 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %arrayidx271 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %149, i64 %idxprom270
  %150 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx271, align 8
  %elms272 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %150, i32 0, i32 3
  %arrayidx273 = getelementptr inbounds [1 x i64], [1 x i64]* %elms272, i32 0, i64 %idxprom263
  %151 = load i64, i64* %arrayidx273, align 8
  %or = or i64 %151, %shl255
  store i64 %or, i64* %arrayidx273, align 8
  br label %if.end.344

if.else.274:                                      ; preds = %if.then.241
  %152 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load275 = load i32, i32* %153, align 8
  %bf.lshr276 = lshr i32 %bf.load275, 16
  %bf.clear277 = and i32 %bf.lshr276, 255
  %cmp278 = icmp eq i32 %bf.clear277, 14
  br i1 %cmp278, label %if.then.279, label %if.else.308

if.then.279:                                      ; preds = %if.else.274
  %154 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld280, i32 0, i64 0
  %rtint282 = bitcast %union.rtunion_def* %arrayidx281 to i32*
  %155 = load i32, i32* %rtint282, align 4
  %idxprom283 = sext i32 %155 to i64
  %156 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx284 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %156, i64 %idxprom283
  %luid285 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx284, i32 0, i32 2
  %157 = load i32, i32* %luid285, align 4
  %rem286 = urem i32 %157, 64
  %sh_prom287 = zext i32 %rem286 to i64
  %shl288 = shl i64 1, %sh_prom287
  %158 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld289, i32 0, i64 0
  %rtint291 = bitcast %union.rtunion_def* %arrayidx290 to i32*
  %159 = load i32, i32* %rtint291, align 4
  %idxprom292 = sext i32 %159 to i64
  %160 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx293 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %160, i64 %idxprom292
  %luid294 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx293, i32 0, i32 2
  %161 = load i32, i32* %luid294, align 4
  %div295 = udiv i32 %161, 64
  %idxprom296 = zext i32 %div295 to i64
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld297, i32 0, i64 0
  %rtint299 = bitcast %union.rtunion_def* %arrayidx298 to i32*
  %163 = load i32, i32* %rtint299, align 4
  %idxprom300 = sext i32 %163 to i64
  %164 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx301 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %164, i64 %idxprom300
  %luid302 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx301, i32 0, i32 2
  %165 = load i32, i32* %luid302, align 4
  %idxprom303 = sext i32 %165 to i64
  %166 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %arrayidx304 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %166, i64 %idxprom303
  %167 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx304, align 8
  %elms305 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %167, i32 0, i32 3
  %arrayidx306 = getelementptr inbounds [1 x i64], [1 x i64]* %elms305, i32 0, i64 %idxprom296
  %168 = load i64, i64* %arrayidx306, align 8
  %or307 = or i64 %168, %shl288
  store i64 %or307, i64* %arrayidx306, align 8
  br label %if.end.343

if.else.308:                                      ; preds = %if.else.274
  %169 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load309 = load i32, i32* %170, align 8
  %bf.lshr310 = lshr i32 %bf.load309, 16
  %bf.clear311 = and i32 %bf.lshr310, 255
  %cmp312 = icmp eq i32 %bf.clear311, 15
  br i1 %cmp312, label %if.then.313, label %if.end.342

if.then.313:                                      ; preds = %if.else.308
  %171 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 0
  %rtint316 = bitcast %union.rtunion_def* %arrayidx315 to i32*
  %172 = load i32, i32* %rtint316, align 4
  %idxprom317 = sext i32 %172 to i64
  %173 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx318 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %173, i64 %idxprom317
  %luid319 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx318, i32 0, i32 2
  %174 = load i32, i32* %luid319, align 4
  %rem320 = urem i32 %174, 64
  %sh_prom321 = zext i32 %rem320 to i64
  %shl322 = shl i64 1, %sh_prom321
  %175 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld323, i32 0, i64 0
  %rtint325 = bitcast %union.rtunion_def* %arrayidx324 to i32*
  %176 = load i32, i32* %rtint325, align 4
  %idxprom326 = sext i32 %176 to i64
  %177 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx327 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %177, i64 %idxprom326
  %luid328 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx327, i32 0, i32 2
  %178 = load i32, i32* %luid328, align 4
  %div329 = udiv i32 %178, 64
  %idxprom330 = zext i32 %div329 to i64
  %179 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld331, i32 0, i64 0
  %rtint333 = bitcast %union.rtunion_def* %arrayidx332 to i32*
  %180 = load i32, i32* %rtint333, align 4
  %idxprom334 = sext i32 %180 to i64
  %181 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx335 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %181, i64 %idxprom334
  %luid336 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx335, i32 0, i32 2
  %182 = load i32, i32* %luid336, align 4
  %idxprom337 = sext i32 %182 to i64
  %183 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %arrayidx338 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %183, i64 %idxprom337
  %184 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx338, align 8
  %elms339 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %184, i32 0, i32 3
  %arrayidx340 = getelementptr inbounds [1 x i64], [1 x i64]* %elms339, i32 0, i64 %idxprom330
  %185 = load i64, i64* %arrayidx340, align 8
  %or341 = or i64 %185, %shl322
  store i64 %or341, i64* %arrayidx340, align 8
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.313, %if.else.308
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.then.279
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.then.246
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.239
  br label %if.end.460

if.end.346:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.346
  %186 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 1
  %rtx349 = bitcast %union.rtunion_def* %arrayidx348 to %struct.rtx_def**
  %187 = load %struct.rtx_def*, %struct.rtx_def** %rtx349, align 8
  store %struct.rtx_def* %187, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.350

if.end.350:                                       ; preds = %for.end, %if.end.146
  %188 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld351, i32 0, i64 5
  %rtx353 = bitcast %union.rtunion_def* %arrayidx352 to %struct.rtx_def**
  %190 = load %struct.rtx_def*, %struct.rtx_def** %rtx353, align 8
  %call354 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %188, %struct.rtx_def* %190)
  store %struct.rtx_def* %call354, %struct.rtx_def** %link, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld355, i32 0, i64 5
  %rtx357 = bitcast %union.rtunion_def* %arrayidx356 to %struct.rtx_def**
  store %struct.rtx_def* %191, %struct.rtx_def** %rtx357, align 8
  %193 = load i32, i32* %dep_type.addr, align 4
  %194 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %bf.load358 = load i32, i32* %195, align 8
  %bf.value359 = and i32 %193, 255
  %bf.shl360 = shl i32 %bf.value359, 16
  %bf.clear361 = and i32 %bf.load358, -16711681
  %bf.set362 = or i32 %bf.clear361, %bf.shl360
  store i32 %bf.set362, i32* %195, align 8
  %196 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %cmp363 = icmp ne %struct.simple_bitmap_def** %196, null
  br i1 %cmp363, label %if.then.364, label %if.end.460

if.then.364:                                      ; preds = %if.end.350
  %197 = load i32, i32* %dep_type.addr, align 4
  %cmp365 = icmp eq i32 %197, 0
  br i1 %cmp365, label %if.then.366, label %if.else.395

if.then.366:                                      ; preds = %if.then.364
  %198 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld367, i32 0, i64 0
  %rtint369 = bitcast %union.rtunion_def* %arrayidx368 to i32*
  %199 = load i32, i32* %rtint369, align 4
  %idxprom370 = sext i32 %199 to i64
  %200 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx371 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %200, i64 %idxprom370
  %luid372 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx371, i32 0, i32 2
  %201 = load i32, i32* %luid372, align 4
  %rem373 = urem i32 %201, 64
  %sh_prom374 = zext i32 %rem373 to i64
  %shl375 = shl i64 1, %sh_prom374
  %202 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 0
  %rtint378 = bitcast %union.rtunion_def* %arrayidx377 to i32*
  %203 = load i32, i32* %rtint378, align 4
  %idxprom379 = sext i32 %203 to i64
  %204 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx380 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %204, i64 %idxprom379
  %luid381 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx380, i32 0, i32 2
  %205 = load i32, i32* %luid381, align 4
  %div382 = udiv i32 %205, 64
  %idxprom383 = zext i32 %div382 to i64
  %206 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 0
  %rtint386 = bitcast %union.rtunion_def* %arrayidx385 to i32*
  %207 = load i32, i32* %rtint386, align 4
  %idxprom387 = sext i32 %207 to i64
  %208 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx388 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %208, i64 %idxprom387
  %luid389 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx388, i32 0, i32 2
  %209 = load i32, i32* %luid389, align 4
  %idxprom390 = sext i32 %209 to i64
  %210 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %arrayidx391 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %210, i64 %idxprom390
  %211 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx391, align 8
  %elms392 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %211, i32 0, i32 3
  %arrayidx393 = getelementptr inbounds [1 x i64], [1 x i64]* %elms392, i32 0, i64 %idxprom383
  %212 = load i64, i64* %arrayidx393, align 8
  %or394 = or i64 %212, %shl375
  store i64 %or394, i64* %arrayidx393, align 8
  br label %if.end.459

if.else.395:                                      ; preds = %if.then.364
  %213 = load i32, i32* %dep_type.addr, align 4
  %cmp396 = icmp eq i32 %213, 14
  br i1 %cmp396, label %if.then.397, label %if.else.426

if.then.397:                                      ; preds = %if.else.395
  %214 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 0
  %rtint400 = bitcast %union.rtunion_def* %arrayidx399 to i32*
  %215 = load i32, i32* %rtint400, align 4
  %idxprom401 = sext i32 %215 to i64
  %216 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx402 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %216, i64 %idxprom401
  %luid403 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx402, i32 0, i32 2
  %217 = load i32, i32* %luid403, align 4
  %rem404 = urem i32 %217, 64
  %sh_prom405 = zext i32 %rem404 to i64
  %shl406 = shl i64 1, %sh_prom405
  %218 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld407 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld407, i32 0, i64 0
  %rtint409 = bitcast %union.rtunion_def* %arrayidx408 to i32*
  %219 = load i32, i32* %rtint409, align 4
  %idxprom410 = sext i32 %219 to i64
  %220 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx411 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %220, i64 %idxprom410
  %luid412 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx411, i32 0, i32 2
  %221 = load i32, i32* %luid412, align 4
  %div413 = udiv i32 %221, 64
  %idxprom414 = zext i32 %div413 to i64
  %222 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld415, i32 0, i64 0
  %rtint417 = bitcast %union.rtunion_def* %arrayidx416 to i32*
  %223 = load i32, i32* %rtint417, align 4
  %idxprom418 = sext i32 %223 to i64
  %224 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx419 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %224, i64 %idxprom418
  %luid420 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx419, i32 0, i32 2
  %225 = load i32, i32* %luid420, align 4
  %idxprom421 = sext i32 %225 to i64
  %226 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %arrayidx422 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %226, i64 %idxprom421
  %227 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx422, align 8
  %elms423 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %227, i32 0, i32 3
  %arrayidx424 = getelementptr inbounds [1 x i64], [1 x i64]* %elms423, i32 0, i64 %idxprom414
  %228 = load i64, i64* %arrayidx424, align 8
  %or425 = or i64 %228, %shl406
  store i64 %or425, i64* %arrayidx424, align 8
  br label %if.end.458

if.else.426:                                      ; preds = %if.else.395
  %229 = load i32, i32* %dep_type.addr, align 4
  %cmp427 = icmp eq i32 %229, 15
  br i1 %cmp427, label %if.then.428, label %if.end.457

if.then.428:                                      ; preds = %if.else.426
  %230 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld429 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx430 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld429, i32 0, i64 0
  %rtint431 = bitcast %union.rtunion_def* %arrayidx430 to i32*
  %231 = load i32, i32* %rtint431, align 4
  %idxprom432 = sext i32 %231 to i64
  %232 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx433 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %232, i64 %idxprom432
  %luid434 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx433, i32 0, i32 2
  %233 = load i32, i32* %luid434, align 4
  %rem435 = urem i32 %233, 64
  %sh_prom436 = zext i32 %rem435 to i64
  %shl437 = shl i64 1, %sh_prom436
  %234 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld438, i32 0, i64 0
  %rtint440 = bitcast %union.rtunion_def* %arrayidx439 to i32*
  %235 = load i32, i32* %rtint440, align 4
  %idxprom441 = sext i32 %235 to i64
  %236 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx442 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %236, i64 %idxprom441
  %luid443 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx442, i32 0, i32 2
  %237 = load i32, i32* %luid443, align 4
  %div444 = udiv i32 %237, 64
  %idxprom445 = zext i32 %div444 to i64
  %238 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 0
  %rtint448 = bitcast %union.rtunion_def* %arrayidx447 to i32*
  %239 = load i32, i32* %rtint448, align 4
  %idxprom449 = sext i32 %239 to i64
  %240 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx450 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %240, i64 %idxprom449
  %luid451 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx450, i32 0, i32 2
  %241 = load i32, i32* %luid451, align 4
  %idxprom452 = sext i32 %241 to i64
  %242 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %arrayidx453 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %242, i64 %idxprom452
  %243 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx453, align 8
  %elms454 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %243, i32 0, i32 3
  %arrayidx455 = getelementptr inbounds [1 x i64], [1 x i64]* %elms454, i32 0, i64 %idxprom445
  %244 = load i64, i64* %arrayidx455, align 8
  %or456 = or i64 %244, %shl437
  store i64 %or456, i64* %arrayidx455, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.428, %if.else.426
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %if.then.397
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.then.366
  br label %if.end.460

if.end.460:                                       ; preds = %if.then, %if.then.2, %if.then.23, %if.then.48, %if.then.144, %if.end.345, %if.end.459, %if.end.350
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @get_condition(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 38
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 33
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load12 = load i32, i32* %10, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp ne i32 %bf.clear13, 47
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp18 = icmp ne %struct.rtx_def* %12, %13
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.11
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load24 = load i32, i32* %16, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp ne i32 %bf.clear25, 72
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.20
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %pat, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %cond, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load38 = load i32, i32* %23, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 67
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.28
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 2
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp44 = icmp eq %struct.rtx_def* %25, %26
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  %27 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.28
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load49 = load i32, i32* %30, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 67
  br i1 %cmp51, label %land.lhs.true.52, label %if.else.69

land.lhs.true.52:                                 ; preds = %if.else
  %31 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp56 = icmp eq %struct.rtx_def* %32, %33
  br i1 %cmp56, label %if.then.57, label %if.else.69

if.then.57:                                       ; preds = %land.lhs.true.52
  %34 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load58 = load i32, i32* %35, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %call = call i32 @reverse_condition(i32 %bf.clear59)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load60 = load i32, i32* %37, align 8
  %bf.lshr = lshr i32 %bf.load60, 16
  %bf.clear61 = and i32 %bf.lshr, 255
  %38 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %call68 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %call, i32 %bf.clear61, %struct.rtx_def* %39, %struct.rtx_def* %41)
  store %struct.rtx_def* %call68, %struct.rtx_def** %retval
  br label %return

if.else.69:                                       ; preds = %land.lhs.true.52, %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else.69, %if.then.57, %if.then.45, %if.then.27, %if.then.19, %if.then.10, %if.then.2, %if.then
  %42 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %42
}

; Function Attrs: nounwind uwtable
define internal i32 @conditions_mutex_p(%struct.rtx_def* %cond1, %struct.rtx_def* %cond2) #0 {
entry:
  %retval = alloca i32, align 4
  %cond1.addr = alloca %struct.rtx_def*, align 8
  %cond2.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %cond1, %struct.rtx_def** %cond1.addr, align 8
  store %struct.rtx_def* %cond2, %struct.rtx_def** %cond2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %cond1.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %cond2.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 60
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %cond1.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load10 = load i32, i32* %7, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %8 = load %struct.rtx_def*, %struct.rtx_def** %cond2.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load12 = load i32, i32* %9, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %call = call i32 @reverse_condition(i32 %bf.clear13)
  %cmp14 = icmp eq i32 %bf.clear11, %call
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %cond1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %cond2.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %cmp21 = icmp eq %struct.rtx_def* %11, %13
  br i1 %cmp21, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %land.lhs.true.16
  %14 = load %struct.rtx_def*, %struct.rtx_def** %cond1.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %cond2.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %cmp30 = icmp eq %struct.rtx_def* %15, %17
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.23
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.23, %land.lhs.true.16, %land.lhs.true.9, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @modified_in_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @add_insn_mem_dependence(%struct.deps* %deps, %struct.rtx_def** %insn_list, %struct.rtx_def** %mem_list, %struct.rtx_def* %insn, %struct.rtx_def* %mem) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %insn_list.addr = alloca %struct.rtx_def**, align 8
  %mem_list.addr = alloca %struct.rtx_def**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %mem.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def** %insn_list, %struct.rtx_def*** %insn_list.addr, align 8
  store %struct.rtx_def** %mem_list, %struct.rtx_def*** %mem_list.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %insn_list.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %0, %struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %link, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %insn_list.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %4, align 8
  %5 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib = getelementptr inbounds %struct.sched_info, %struct.sched_info* %5, i32 0, i32 12
  %bf.load = load i8, i8* %use_cselib, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call1 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %6)
  store %struct.rtx_def* %call1, %struct.rtx_def** %mem.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call2 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  store %struct.rtx_def* %call2, %struct.rtx_def** %rtx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %mem_list.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %call6 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %10, %struct.rtx_def* %12)
  store %struct.rtx_def* %call6, %struct.rtx_def** %link, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %mem_list.addr, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %14, align 8
  %15 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_lists_length = getelementptr inbounds %struct.deps, %struct.deps* %15, i32 0, i32 4
  %16 = load i32, i32* %pending_lists_length, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pending_lists_length, align 4
  ret void
}

declare %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @sched_analyze(%struct.deps* %deps, %struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %loop_notes = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %rtx_region = alloca %struct.rtx_def*, align 8
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %tail, %struct.rtx_def** %tail.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %loop_notes, align 8
  %0 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib = getelementptr inbounds %struct.sched_info, %struct.sched_info* %0, i32 0, i32 12
  %bf.load = load i8, i8* %use_cselib, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @cselib_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.192, %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 32
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 33
  br i1 %cmp5, label %if.then.6, label %if.else.22

if.then.6:                                        ; preds = %lor.lhs.false, %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  call void @free_INSN_LIST_list(%struct.rtx_def** %rtx)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, -268435457
  store i32 %bf.clear8, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 33
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.6
  %11 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_flush_length = getelementptr inbounds %struct.deps, %struct.deps* %11, i32 0, i32 5
  %12 = load i32, i32* %pending_flush_length, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %pending_flush_length, align 4
  %13 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx13 = getelementptr inbounds %struct.param_info, %struct.param_info* %13, i64 3
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx13, i32 0, i32 1
  %14 = load i32, i32* %value, align 4
  %cmp14 = icmp sgt i32 %12, %14
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %15 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @flush_pending_lists(%struct.deps* %15, %struct.rtx_def* %16, i32 1, i32 1)
  br label %if.end.17

if.else:                                          ; preds = %if.then.12
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %18, i32 0, i32 6
  %19 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %17, %struct.rtx_def* %19)
  %20 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush16 = getelementptr inbounds %struct.deps, %struct.deps* %20, i32 0, i32 6
  store %struct.rtx_def* %call, %struct.rtx_def** %last_pending_memory_flush16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.6
  %21 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  call void @sched_analyze_insn(%struct.deps* %21, %struct.rtx_def* %23, %struct.rtx_def* %24, %struct.rtx_def* %25)
  store %struct.rtx_def* null, %struct.rtx_def** %loop_notes, align 8
  br label %if.end.171

if.else.22:                                       ; preds = %lor.lhs.false
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load23 = load i32, i32* %27, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 34
  br i1 %cmp25, label %if.then.26, label %if.else.81

if.then.26:                                       ; preds = %if.else.22
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load27 = load i32, i32* %29, align 8
  %bf.clear28 = and i32 %bf.load27, -268435457
  store i32 %bf.clear28, i32* %29, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %31 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx31 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %32, i64 %idxprom
  %cant_move = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx31, i32 0, i32 11
  %bf.load32 = load i8, i8* %cant_move, align 2
  %bf.clear33 = and i8 %bf.load32, -2
  %bf.set = or i8 %bf.clear33, 1
  store i8 %bf.set, i8* %cant_move, align 2
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 5
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  call void @free_INSN_LIST_list(%struct.rtx_def** %rtx36)
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call37 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %34, i32 28, %struct.rtx_def* null)
  %tobool38 = icmp ne %struct.rtx_def* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.26
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.68

if.else.40:                                       ; preds = %if.then.26
  store i32 0, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.else.40
  %35 = load i32, i32* %i, align 4
  %cmp42 = icmp slt i32 %35, 53
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.41
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom43
  %37 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %37, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %for.body
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %39 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %38, i32 %39)
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %41 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %40, i32 %41)
  br label %if.end.66

if.else.47:                                       ; preds = %for.body
  %42 = load i64, i64* @regs_invalidated_by_call, align 8
  %43 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %43 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %42, %shl
  %tobool48 = icmp ne i64 %and, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.else.47
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %45 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %44, i32 %45)
  br label %if.end.65

if.else.50:                                       ; preds = %if.else.47
  %46 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom51
  %47 = load i8, i8* %arrayidx52, align 1
  %tobool53 = icmp ne i8 %47, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.50
  %48 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %49 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %48, i32 %49)
  br label %if.end.64

if.else.55:                                       ; preds = %if.else.50
  %50 = load i32, i32* %i, align 4
  %cmp56 = icmp eq i32 %50, 20
  br i1 %cmp56, label %if.then.62, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.else.55
  %51 = load i32, i32* %i, align 4
  %cmp58 = icmp eq i32 %51, 6
  br i1 %cmp58, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %lor.lhs.false.57
  %52 = load i32, i32* @reload_completed, align 4
  %tobool59 = icmp ne i32 %52, 0
  br i1 %tobool59, label %lor.lhs.false.60, label %if.then.62

lor.lhs.false.60:                                 ; preds = %land.lhs.true
  %53 = load i32, i32* @frame_pointer_needed, align 4
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.60, %land.lhs.true, %if.else.55
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %55 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %54, i32 %55)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %lor.lhs.false.60, %lor.lhs.false.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.54
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.49
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %56 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %56, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.then.39
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %58 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %sched_before_next_call = getelementptr inbounds %struct.deps, %struct.deps* %58, i32 0, i32 8
  call void @add_dependence_list_and_free(%struct.rtx_def* %57, %struct.rtx_def** %sched_before_next_call, i32 14)
  %59 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 3
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  call void @sched_analyze_insn(%struct.deps* %59, %struct.rtx_def* %61, %struct.rtx_def* %62, %struct.rtx_def* %63)
  store %struct.rtx_def* null, %struct.rtx_def** %loop_notes, align 8
  %64 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load72 = load i32, i32* %67, align 8
  %bf.lshr73 = lshr i32 %bf.load72, 26
  %bf.clear74 = and i32 %bf.lshr73, 1
  %tobool75 = icmp ne i32 %bf.clear74, 0
  %lnot = xor i1 %tobool75, true
  %lnot.ext = zext i1 %lnot to i32
  call void @flush_pending_lists(%struct.deps* %64, %struct.rtx_def* %65, i32 1, i32 %lnot.ext)
  %68 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_function_call = getelementptr inbounds %struct.deps, %struct.deps* %68, i32 0, i32 7
  call void @free_INSN_LIST_list(%struct.rtx_def** %last_function_call)
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call76 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %69, %struct.rtx_def* null)
  %70 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_function_call77 = getelementptr inbounds %struct.deps, %struct.deps* %70, i32 0, i32 7
  store %struct.rtx_def* %call76, %struct.rtx_def** %last_function_call77, align 8
  %71 = load i32, i32* @reload_completed, align 4
  %tobool78 = icmp ne i32 %71, 0
  br i1 %tobool78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.68
  %72 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %in_post_call_group_p = getelementptr inbounds %struct.deps, %struct.deps* %72, i32 0, i32 9
  store i8 1, i8* %in_post_call_group_p, align 1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.68
  br label %if.end.170

if.else.81:                                       ; preds = %if.else.22
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load82 = load i32, i32* %74, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 37
  br i1 %cmp84, label %land.lhs.true.85, label %if.else.105

land.lhs.true.85:                                 ; preds = %if.else.81
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 4
  %rtint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %76 = load i32, i32* %rtint88, align 4
  %cmp89 = icmp eq i32 %76, -83
  br i1 %cmp89, label %if.then.95, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.85
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 4
  %rtint93 = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %78 = load i32, i32* %rtint93, align 4
  %cmp94 = icmp eq i32 %78, -82
  br i1 %cmp94, label %if.then.95, label %if.else.105

if.then.95:                                       ; preds = %lor.lhs.false.90, %land.lhs.true.85
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  %call99 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 24, %struct.rtx_def* %80, %struct.rtx_def* %81)
  store %struct.rtx_def* %call99, %struct.rtx_def** %loop_notes, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 4
  %rtint102 = bitcast %union.rtunion_def* %arrayidx101 to i32*
  %83 = load i32, i32* %rtint102, align 4
  %conv = sext i32 %83 to i64
  %call103 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %84 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  %call104 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 24, %struct.rtx_def* %call103, %struct.rtx_def* %84)
  store %struct.rtx_def* %call104, %struct.rtx_def** %loop_notes, align 8
  br label %if.end.169

if.else.105:                                      ; preds = %lor.lhs.false.90, %if.else.81
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load106 = load i32, i32* %86, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp eq i32 %bf.clear107, 37
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.168

land.lhs.true.110:                                ; preds = %if.else.105
  %87 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 4
  %rtint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %88 = load i32, i32* %rtint113, align 4
  %cmp114 = icmp eq i32 %88, -96
  br i1 %cmp114, label %if.then.134, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.110
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 4
  %rtint119 = bitcast %union.rtunion_def* %arrayidx118 to i32*
  %90 = load i32, i32* %rtint119, align 4
  %cmp120 = icmp eq i32 %90, -95
  br i1 %cmp120, label %if.then.134, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.116
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 4
  %rtint125 = bitcast %union.rtunion_def* %arrayidx124 to i32*
  %92 = load i32, i32* %rtint125, align 4
  %cmp126 = icmp eq i32 %92, -86
  br i1 %cmp126, label %if.then.134, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.122
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 4
  %rtint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %94 = load i32, i32* %rtint131, align 4
  %cmp132 = icmp eq i32 %94, -85
  br i1 %cmp132, label %if.then.134, label %if.end.168

if.then.134:                                      ; preds = %lor.lhs.false.128, %lor.lhs.false.122, %lor.lhs.false.116, %land.lhs.true.110
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 4
  %rtint137 = bitcast %union.rtunion_def* %arrayidx136 to i32*
  %96 = load i32, i32* %rtint137, align 4
  %cmp138 = icmp eq i32 %96, -86
  br i1 %cmp138, label %if.then.146, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.then.134
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 4
  %rtint143 = bitcast %union.rtunion_def* %arrayidx142 to i32*
  %98 = load i32, i32* %rtint143, align 4
  %cmp144 = icmp eq i32 %98, -85
  br i1 %cmp144, label %if.then.146, label %if.else.152

if.then.146:                                      ; preds = %lor.lhs.false.140, %if.then.134
  %99 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 3
  %rtint149 = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %100 = load i32, i32* %rtint149, align 4
  %conv150 = sext i32 %100 to i64
  %call151 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv150)
  store %struct.rtx_def* %call151, %struct.rtx_def** %rtx_region, align 8
  br label %if.end.154

if.else.152:                                      ; preds = %lor.lhs.false.140
  %call153 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 0)
  store %struct.rtx_def* %call153, %struct.rtx_def** %rtx_region, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.146
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx_region, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  %call155 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 24, %struct.rtx_def* %101, %struct.rtx_def* %102)
  store %struct.rtx_def* %call155, %struct.rtx_def** %loop_notes, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 4
  %rtint158 = bitcast %union.rtunion_def* %arrayidx157 to i32*
  %104 = load i32, i32* %rtint158, align 4
  %conv159 = sext i32 %104 to i64
  %call160 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv159)
  %105 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  %call161 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 24, %struct.rtx_def* %call160, %struct.rtx_def* %105)
  store %struct.rtx_def* %call161, %struct.rtx_def** %loop_notes, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load162 = load i32, i32* %107, align 8
  %bf.lshr163 = lshr i32 %bf.load162, 26
  %bf.clear164 = and i32 %bf.lshr163, 1
  %108 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load165 = load i32, i32* %109, align 8
  %bf.value = and i32 %bf.clear164, 1
  %bf.shl = shl i32 %bf.value, 26
  %bf.clear166 = and i32 %bf.load165, -67108865
  %bf.set167 = or i32 %bf.clear166, %bf.shl
  store i32 %bf.set167, i32* %109, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.154, %lor.lhs.false.128, %if.else.105
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.95
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.80
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.18
  %110 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib172 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %110, i32 0, i32 12
  %bf.load173 = load i8, i8* %use_cselib172, align 8
  %bf.lshr174 = lshr i8 %bf.load173, 1
  %bf.clear175 = and i8 %bf.lshr174, 1
  %bf.cast176 = zext i8 %bf.clear175 to i32
  %tobool177 = icmp ne i32 %bf.cast176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.171
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @cselib_process_insn(%struct.rtx_def* %111)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.171
  %112 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %tail.addr, align 8
  %cmp180 = icmp eq %struct.rtx_def* %112, %113
  br i1 %cmp180, label %if.then.182, label %if.end.191

if.then.182:                                      ; preds = %if.end.179
  %114 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib183 = getelementptr inbounds %struct.sched_info, %struct.sched_info* %114, i32 0, i32 12
  %bf.load184 = load i8, i8* %use_cselib183, align 8
  %bf.lshr185 = lshr i8 %bf.load184, 1
  %bf.clear186 = and i8 %bf.lshr185, 1
  %bf.cast187 = zext i8 %bf.clear186 to i32
  %tobool188 = icmp ne i32 %bf.cast187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.182
  call void @cselib_finish()
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.then.182
  ret void

if.end.191:                                       ; preds = %if.end.179
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191
  %115 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 2
  %rtx195 = bitcast %union.rtunion_def* %arrayidx194 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx195, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %insn, align 8
  br label %for.cond
}

declare void @cselib_init() #1

declare void @free_INSN_LIST_list(%struct.rtx_def**) #1

; Function Attrs: nounwind uwtable
define internal void @flush_pending_lists(%struct.deps* %deps, %struct.rtx_def* %insn, i32 %for_read, i32 %for_write) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %for_read.addr = alloca i32, align 4
  %for_write.addr = alloca i32, align 4
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %for_read, i32* %for_read.addr, align 4
  store i32 %for_write, i32* %for_write.addr, align 4
  %0 = load i32, i32* %for_write.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %2, i32 0, i32 0
  call void @add_dependence_list_and_free(%struct.rtx_def* %1, %struct.rtx_def** %pending_read_insns, i32 14)
  %3 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 1
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_read_mems)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 2
  %6 = load i32, i32* %for_read.addr, align 4
  %tobool1 = icmp ne i32 %6, 0
  %cond = select i1 %tobool1, i32 14, i32 15
  call void @add_dependence_list_and_free(%struct.rtx_def* %4, %struct.rtx_def** %pending_write_insns, i32 %cond)
  %7 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %7, i32 0, i32 3
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_write_mems)
  %8 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_lists_length = getelementptr inbounds %struct.deps, %struct.deps* %8, i32 0, i32 4
  store i32 0, i32* %pending_lists_length, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %10, i32 0, i32 6
  %11 = load i32, i32* %for_read.addr, align 4
  %tobool2 = icmp ne i32 %11, 0
  %cond3 = select i1 %tobool2, i32 14, i32 15
  call void @add_dependence_list_and_free(%struct.rtx_def* %9, %struct.rtx_def** %last_pending_memory_flush, i32 %cond3)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %12, %struct.rtx_def* null)
  %13 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush4 = getelementptr inbounds %struct.deps, %struct.deps* %13, i32 0, i32 6
  store %struct.rtx_def* %call, %struct.rtx_def** %last_pending_memory_flush4, align 8
  %14 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_flush_length = getelementptr inbounds %struct.deps, %struct.deps* %14, i32 0, i32 5
  store i32 1, i32* %pending_flush_length, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sched_analyze_insn(%struct.deps* %deps, %struct.rtx_def* %x, %struct.rtx_def* %insn, %struct.rtx_def* %loop_notes) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loop_notes.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %i11 = alloca i32, align 4
  %sub15 = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %pending = alloca %struct.rtx_def*, align 8
  %pending_mem = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.bitmap_head_def, align 8
  %link124 = alloca %struct.rtx_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %reg_last = alloca %struct.deps_reg*, align 8
  %ptr_246 = alloca %struct.bitmap_element_def*, align 8
  %indx_250 = alloca i32, align 4
  %bit_num_252 = alloca i32, align 4
  %word_num_254 = alloca i32, align 4
  %word_277 = alloca i64, align 8
  %mask_287 = alloca i64, align 8
  %reg_last301 = alloca %struct.deps_reg*, align 8
  %reg_last328 = alloca %struct.deps_reg*, align 8
  %ptr_349 = alloca %struct.bitmap_element_def*, align 8
  %indx_352 = alloca i32, align 4
  %bit_num_354 = alloca i32, align 4
  %word_num_356 = alloca i32, align 4
  %word_379 = alloca i64, align 8
  %mask_389 = alloca i64, align 8
  %reg_last403 = alloca %struct.deps_reg*, align 8
  %ptr_431 = alloca %struct.bitmap_element_def*, align 8
  %indx_434 = alloca i32, align 4
  %bit_num_436 = alloca i32, align 4
  %word_num_438 = alloca i32, align 4
  %word_461 = alloca i64, align 8
  %mask_471 = alloca i64, align 8
  %reg_last485 = alloca %struct.deps_reg*, align 8
  %ptr_513 = alloca %struct.bitmap_element_def*, align 8
  %indx_516 = alloca i32, align 4
  %bit_num_518 = alloca i32, align 4
  %word_num_520 = alloca i32, align 4
  %word_543 = alloca i64, align 8
  %mask_553 = alloca i64, align 8
  %reg_last567 = alloca %struct.deps_reg*, align 8
  %ptr_595 = alloca %struct.bitmap_element_def*, align 8
  %indx_598 = alloca i32, align 4
  %bit_num_600 = alloca i32, align 4
  %word_num_602 = alloca i32, align 4
  %word_625 = alloca i64, align 8
  %mask_635 = alloca i64, align 8
  %reg_last649 = alloca %struct.deps_reg*, align 8
  %ptr_677 = alloca %struct.bitmap_element_def*, align 8
  %indx_680 = alloca i32, align 4
  %bit_num_682 = alloca i32, align 4
  %word_num_684 = alloca i32, align 4
  %word_707 = alloca i64, align 8
  %mask_717 = alloca i64, align 8
  %reg_last731 = alloca %struct.deps_reg*, align 8
  %ptr_777 = alloca %struct.bitmap_element_def*, align 8
  %indx_780 = alloca i32, align 4
  %bit_num_782 = alloca i32, align 4
  %word_num_784 = alloca i32, align 4
  %word_807 = alloca i64, align 8
  %mask_817 = alloca i64, align 8
  %reg_last831 = alloca %struct.deps_reg*, align 8
  %tmp872 = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %src_regno = alloca i32, align 4
  %dest_regno = alloca i32, align 4
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %loop_notes, %struct.rtx_def** %loop_notes.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %3, %struct.rtx_def* %5, %struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %x.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load4 = load i32, i32* %10, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  store i32 %bf.clear5, i32* %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %code, align 4
  %cmp6 = icmp eq i32 %11, 47
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %code, align 4
  %cmp7 = icmp eq i32 %12, 49
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %13, %struct.rtx_def* %14, %struct.rtx_def* %15)
  br label %if.end.41

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %code, align 4
  %cmp9 = icmp eq i32 %16, 39
  br i1 %cmp9, label %if.then.10, label %if.else.39

if.then.10:                                       ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtvec_def**
  %18 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i32 0, i32 0
  %19 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %19, 1
  store i32 %sub, i32* %i11, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %20 = load i32, i32* %i11, align 4
  %cmp14 = icmp sge i32 %20, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i11, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtvec18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec18, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %sub15, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load20 = load i32, i32* %26, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  store i32 %bf.clear21, i32* %code, align 4
  %27 = load i32, i32* %code, align 4
  %cmp22 = icmp eq i32 %27, 38
  br i1 %cmp22, label %if.then.23, label %if.end.32

if.then.23:                                       ; preds = %for.body
  %28 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %28, %struct.rtx_def* %30, %struct.rtx_def* %31)
  %32 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %sub15, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load30 = load i32, i32* %35, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  store i32 %bf.clear31, i32* %code, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.23, %for.body
  %36 = load i32, i32* %code, align 4
  %cmp33 = icmp eq i32 %36, 47
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.32
  %37 = load i32, i32* %code, align 4
  %cmp35 = icmp eq i32 %37, 49
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %lor.lhs.false.34, %if.end.32
  %38 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %38, %struct.rtx_def* %39, %struct.rtx_def* %40)
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false.34
  %41 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %sub15, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %41, %struct.rtx_def* %42, %struct.rtx_def* %43)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %44 = load i32, i32* %i11, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %i11, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.else.39:                                       ; preds = %if.else
  %45 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %45, %struct.rtx_def* %46, %struct.rtx_def* %47)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %for.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load42 = load i32, i32* %49, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 34
  br i1 %cmp44, label %if.then.45, label %if.end.74

if.then.45:                                       ; preds = %if.end.41
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 7
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %link, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.66, %if.then.45
  %52 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %52, null
  br i1 %tobool, label %for.body.50, label %for.end.70

for.body.50:                                      ; preds = %for.cond.49
  %53 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load54 = load i32, i32* %55, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 49
  br i1 %cmp56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %for.body.50
  %56 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %56, %struct.rtx_def* %58, %struct.rtx_def* %59)
  br label %if.end.65

if.else.61:                                       ; preds = %for.body.50
  %60 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %60, %struct.rtx_def* %62, %struct.rtx_def* %63)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.61, %if.then.57
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %64 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %link, align 8
  br label %for.cond.49

for.end.70:                                       ; preds = %for.cond.49
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %66, i32 28, %struct.rtx_def* null)
  %tobool71 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.end.70
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %for.end.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.41
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load75 = load i32, i32* %68, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 33
  br i1 %cmp77, label %if.then.78, label %if.end.120

if.then.78:                                       ; preds = %if.end.74
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call79 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %69)
  store %struct.rtx_def* %call79, %struct.rtx_def** %next, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool80 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool80, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %if.then.78
  %71 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load81 = load i32, i32* %72, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 35
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.119

if.else.85:                                       ; preds = %land.lhs.true, %if.then.78
  %call86 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %tmp)
  %73 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %compute_jump_reg_dependencies = getelementptr inbounds %struct.sched_info, %struct.sched_info* %73, i32 0, i32 7
  %74 = load void (%struct.rtx_def*, %struct.bitmap_head_def*)*, void (%struct.rtx_def*, %struct.bitmap_head_def*)** %compute_jump_reg_dependencies, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void %74(%struct.rtx_def* %75, %struct.bitmap_head_def* %tmp)
  %76 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %77 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %call87 = call i32 @bitmap_operation(%struct.bitmap_head_def* %76, %struct.bitmap_head_def* %77, %struct.bitmap_head_def* %tmp, i32 2)
  call void @bitmap_clear(%struct.bitmap_head_def* %tmp)
  %78 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %78, i32 0, i32 2
  %79 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_insns, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %pending, align 8
  %80 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %80, i32 0, i32 3
  %81 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_mems, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.85
  %82 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool88 = icmp ne %struct.rtx_def* %82, null
  br i1 %tobool88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  call void @add_dependence(%struct.rtx_def* %83, %struct.rtx_def* %85, i32 15)
  %86 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 1
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %pending, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %90 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %90, i32 0, i32 0
  %91 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_insns, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %pending, align 8
  %92 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %92, i32 0, i32 1
  %93 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_mems, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.98

while.cond.98:                                    ; preds = %if.end.111, %while.end
  %94 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool99 = icmp ne %struct.rtx_def* %94, null
  br i1 %tobool99, label %while.body.100, label %while.end.118

while.body.100:                                   ; preds = %while.cond.98
  %95 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load104 = load i32, i32* %97, align 8
  %bf.lshr = lshr i32 %bf.load104, 27
  %bf.clear105 = and i32 %bf.lshr, 1
  %tobool106 = icmp ne i32 %bf.clear105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %while.body.100
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  call void @add_dependence(%struct.rtx_def* %98, %struct.rtx_def* %100, i32 15)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %while.body.100
  %101 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 1
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %pending, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 1
  %rtx117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx117, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.98

while.end.118:                                    ; preds = %while.cond.98
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %106 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %106, i32 0, i32 6
  %107 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush, align 8
  call void @add_dependence_list(%struct.rtx_def* %105, %struct.rtx_def* %107, i32 14)
  br label %if.end.119

if.end.119:                                       ; preds = %while.end.118, %if.then.84
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.74
  %108 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes.addr, align 8
  %tobool121 = icmp ne %struct.rtx_def* %108, null
  br i1 %tobool121, label %if.then.122, label %if.end.176

if.then.122:                                      ; preds = %if.end.120
  %109 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes.addr, align 8
  store %struct.rtx_def* %109, %struct.rtx_def** %link124, align 8
  br label %while.cond.125

while.cond.125:                                   ; preds = %if.end.162, %if.then.122
  %110 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 1
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %tobool129 = icmp ne %struct.rtx_def* %111, null
  br i1 %tobool129, label %while.body.130, label %while.end.166

while.body.130:                                   ; preds = %while.cond.125
  %112 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx135 to i64*
  %114 = load i64, i64* %rtwint, align 8
  %cmp136 = icmp eq i64 %114, -96
  br i1 %cmp136, label %if.then.161, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %while.body.130
  %115 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 0
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx140, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtwint143 = bitcast %union.rtunion_def* %arrayidx142 to i64*
  %117 = load i64, i64* %rtwint143, align 8
  %cmp144 = icmp eq i64 %117, -95
  br i1 %cmp144, label %if.then.161, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.137
  %118 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtwint151 = bitcast %union.rtunion_def* %arrayidx150 to i64*
  %120 = load i64, i64* %rtwint151, align 8
  %cmp152 = icmp eq i64 %120, -86
  br i1 %cmp152, label %if.then.161, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %lor.lhs.false.145
  %121 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %122 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 0
  %rtwint159 = bitcast %union.rtunion_def* %arrayidx158 to i64*
  %123 = load i64, i64* %rtwint159, align 8
  %cmp160 = icmp eq i64 %123, -85
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %lor.lhs.false.153, %lor.lhs.false.145, %lor.lhs.false.137, %while.body.130
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %lor.lhs.false.153
  %124 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 1
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  store %struct.rtx_def* %125, %struct.rtx_def** %link124, align 8
  br label %while.cond.125

while.end.166:                                    ; preds = %while.cond.125
  %126 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 6
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %link124, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 1
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  store %struct.rtx_def* %127, %struct.rtx_def** %rtx172, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %loop_notes.addr, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 6
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  store %struct.rtx_def* %129, %struct.rtx_def** %rtx175, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %while.end.166, %if.end.120
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call177 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %131)
  br i1 %call177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.176
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.176
  %132 = load i8, i8* @reg_pending_barrier, align 1
  %tobool180 = trunc i8 %132 to i1
  br i1 %tobool180, label %if.then.181, label %if.else.339

if.then.181:                                      ; preds = %if.end.179
  %133 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 3
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load185 = load i32, i32* %135, align 8
  %bf.clear186 = and i32 %bf.load185, 65535
  %cmp187 = icmp eq i32 %bf.clear186, 38
  br i1 %cmp187, label %if.then.188, label %if.else.243

if.then.188:                                      ; preds = %if.then.181
  br label %do.body

do.body:                                          ; preds = %if.then.188
  %136 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use = getelementptr inbounds %struct.deps, %struct.deps* %136, i32 0, i32 12
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %reg_last_in_use, i32 0, i32 0
  %137 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %137, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond.193

while.cond.193:                                   ; preds = %while.body.196, %do.body
  %138 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp194 = icmp ne %struct.bitmap_element_def* %138, null
  br i1 %cmp194, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.193
  %139 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %139, i32 0, i32 2
  %140 = load i32, i32* %indx, align 4
  %141 = load i32, i32* %indx_, align 4
  %cmp195 = icmp ult i32 %140, %141
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.193
  %142 = phi i1 [ false, %while.cond.193 ], [ %cmp195, %land.rhs ]
  br i1 %142, label %while.body.196, label %while.end.198

while.body.196:                                   ; preds = %land.end
  %143 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next197 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %143, i32 0, i32 0
  %144 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next197, align 8
  store %struct.bitmap_element_def* %144, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond.193

while.end.198:                                    ; preds = %land.end
  %145 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp199 = icmp ne %struct.bitmap_element_def* %145, null
  br i1 %cmp199, label %land.lhs.true.200, label %if.end.204

land.lhs.true.200:                                ; preds = %while.end.198
  %146 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx201 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %146, i32 0, i32 2
  %147 = load i32, i32* %indx201, align 4
  %148 = load i32, i32* %indx_, align 4
  %cmp202 = icmp ne i32 %147, %148
  br i1 %cmp202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %land.lhs.true.200
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.203, %land.lhs.true.200, %while.end.198
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.240, %if.end.204
  %149 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp206 = icmp ne %struct.bitmap_element_def* %149, null
  br i1 %cmp206, label %for.body.207, label %for.end.242

for.body.207:                                     ; preds = %for.cond.205
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.237, %for.body.207
  %150 = load i32, i32* %word_num_, align 4
  %cmp209 = icmp ult i32 %150, 2
  br i1 %cmp209, label %for.body.210, label %for.end.239

for.body.210:                                     ; preds = %for.cond.208
  %151 = load i32, i32* %word_num_, align 4
  %idxprom212 = zext i32 %151 to i64
  %152 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %152, i32 0, i32 3
  %arrayidx213 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom212
  %153 = load i64, i64* %arrayidx213, align 8
  store i64 %153, i64* %word_, align 8
  %154 = load i64, i64* %word_, align 8
  %cmp214 = icmp ne i64 %154, 0
  br i1 %cmp214, label %if.then.215, label %if.end.236

if.then.215:                                      ; preds = %for.body.210
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.234, %if.then.215
  %155 = load i32, i32* %bit_num_, align 4
  %cmp217 = icmp ult i32 %155, 64
  br i1 %cmp217, label %for.body.218, label %for.end.235

for.body.218:                                     ; preds = %for.cond.216
  %156 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %156 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %157 = load i64, i64* %word_, align 8
  %158 = load i64, i64* %mask_, align 8
  %and = and i64 %157, %158
  %cmp220 = icmp ne i64 %and, 0
  br i1 %cmp220, label %if.then.221, label %if.end.233

if.then.221:                                      ; preds = %for.body.218
  %159 = load i64, i64* %mask_, align 8
  %neg = xor i64 %159, -1
  %160 = load i64, i64* %word_, align 8
  %and222 = and i64 %160, %neg
  store i64 %and222, i64* %word_, align 8
  %161 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx223 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %161, i32 0, i32 2
  %162 = load i32, i32* %indx223, align 4
  %mul = mul i32 %162, 128
  %163 = load i32, i32* %word_num_, align 4
  %mul224 = mul i32 %163, 64
  %add = add i32 %mul, %mul224
  %164 = load i32, i32* %bit_num_, align 4
  %add225 = add i32 %add, %164
  store i32 %add225, i32* %i, align 4
  %165 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %165 to i64
  %166 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last228 = getelementptr inbounds %struct.deps, %struct.deps* %166, i32 0, i32 11
  %167 = load %struct.deps_reg*, %struct.deps_reg** %reg_last228, align 8
  %arrayidx229 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %167, i64 %idxprom227
  store %struct.deps_reg* %arrayidx229, %struct.deps_reg** %reg_last, align 8
  %168 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %169 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %uses = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %169, i32 0, i32 0
  %170 = load %struct.rtx_def*, %struct.rtx_def** %uses, align 8
  call void @add_dependence_list(%struct.rtx_def* %168, %struct.rtx_def* %170, i32 14)
  %171 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %172 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %sets = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %172, i32 0, i32 1
  %173 = load %struct.rtx_def*, %struct.rtx_def** %sets, align 8
  call void @add_dependence_list(%struct.rtx_def* %171, %struct.rtx_def* %173, i32 0)
  %174 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %175 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %clobbers = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %175, i32 0, i32 2
  %176 = load %struct.rtx_def*, %struct.rtx_def** %clobbers, align 8
  call void @add_dependence_list(%struct.rtx_def* %174, %struct.rtx_def* %176, i32 0)
  %177 = load i64, i64* %word_, align 8
  %cmp230 = icmp eq i64 %177, 0
  br i1 %cmp230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.then.221
  br label %for.end.235

if.end.232:                                       ; preds = %if.then.221
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %for.body.218
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %178 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %178, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.216

for.end.235:                                      ; preds = %if.then.231, %for.cond.216
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.body.210
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.237

for.inc.237:                                      ; preds = %if.end.236
  %179 = load i32, i32* %word_num_, align 4
  %inc238 = add i32 %179, 1
  store i32 %inc238, i32* %word_num_, align 4
  br label %for.cond.208

for.end.239:                                      ; preds = %for.cond.208
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.end.239
  %180 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next241 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %180, i32 0, i32 0
  %181 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next241, align 8
  store %struct.bitmap_element_def* %181, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.205

for.end.242:                                      ; preds = %for.cond.205
  br label %do.end

do.end:                                           ; preds = %for.end.242
  br label %if.end.323

if.else.243:                                      ; preds = %if.then.181
  br label %do.body.244

do.body.244:                                      ; preds = %if.else.243
  %182 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use247 = getelementptr inbounds %struct.deps, %struct.deps* %182, i32 0, i32 12
  %first248 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %reg_last_in_use247, i32 0, i32 0
  %183 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first248, align 8
  store %struct.bitmap_element_def* %183, %struct.bitmap_element_def** %ptr_246, align 8
  store i32 0, i32* %indx_250, align 4
  store i32 0, i32* %bit_num_252, align 4
  store i32 0, i32* %word_num_254, align 4
  br label %while.cond.255

while.cond.255:                                   ; preds = %while.body.261, %do.body.244
  %184 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %cmp256 = icmp ne %struct.bitmap_element_def* %184, null
  br i1 %cmp256, label %land.rhs.257, label %land.end.260

land.rhs.257:                                     ; preds = %while.cond.255
  %185 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %indx258 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %185, i32 0, i32 2
  %186 = load i32, i32* %indx258, align 4
  %187 = load i32, i32* %indx_250, align 4
  %cmp259 = icmp ult i32 %186, %187
  br label %land.end.260

land.end.260:                                     ; preds = %land.rhs.257, %while.cond.255
  %188 = phi i1 [ false, %while.cond.255 ], [ %cmp259, %land.rhs.257 ]
  br i1 %188, label %while.body.261, label %while.end.263

while.body.261:                                   ; preds = %land.end.260
  %189 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %next262 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %189, i32 0, i32 0
  %190 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next262, align 8
  store %struct.bitmap_element_def* %190, %struct.bitmap_element_def** %ptr_246, align 8
  br label %while.cond.255

while.end.263:                                    ; preds = %land.end.260
  %191 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %cmp264 = icmp ne %struct.bitmap_element_def* %191, null
  br i1 %cmp264, label %land.lhs.true.265, label %if.end.269

land.lhs.true.265:                                ; preds = %while.end.263
  %192 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %indx266 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %192, i32 0, i32 2
  %193 = load i32, i32* %indx266, align 4
  %194 = load i32, i32* %indx_250, align 4
  %cmp267 = icmp ne i32 %193, %194
  br i1 %cmp267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %land.lhs.true.265
  store i32 0, i32* %bit_num_252, align 4
  store i32 0, i32* %word_num_254, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %land.lhs.true.265, %while.end.263
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.319, %if.end.269
  %195 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %cmp271 = icmp ne %struct.bitmap_element_def* %195, null
  br i1 %cmp271, label %for.body.272, label %for.end.321

for.body.272:                                     ; preds = %for.cond.270
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.316, %for.body.272
  %196 = load i32, i32* %word_num_254, align 4
  %cmp274 = icmp ult i32 %196, 2
  br i1 %cmp274, label %for.body.275, label %for.end.318

for.body.275:                                     ; preds = %for.cond.273
  %197 = load i32, i32* %word_num_254, align 4
  %idxprom278 = zext i32 %197 to i64
  %198 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %bits279 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %198, i32 0, i32 3
  %arrayidx280 = getelementptr inbounds [2 x i64], [2 x i64]* %bits279, i32 0, i64 %idxprom278
  %199 = load i64, i64* %arrayidx280, align 8
  store i64 %199, i64* %word_277, align 8
  %200 = load i64, i64* %word_277, align 8
  %cmp281 = icmp ne i64 %200, 0
  br i1 %cmp281, label %if.then.282, label %if.end.315

if.then.282:                                      ; preds = %for.body.275
  br label %for.cond.283

for.cond.283:                                     ; preds = %for.inc.312, %if.then.282
  %201 = load i32, i32* %bit_num_252, align 4
  %cmp284 = icmp ult i32 %201, 64
  br i1 %cmp284, label %for.body.285, label %for.end.314

for.body.285:                                     ; preds = %for.cond.283
  %202 = load i32, i32* %bit_num_252, align 4
  %sh_prom288 = zext i32 %202 to i64
  %shl289 = shl i64 1, %sh_prom288
  store i64 %shl289, i64* %mask_287, align 8
  %203 = load i64, i64* %word_277, align 8
  %204 = load i64, i64* %mask_287, align 8
  %and290 = and i64 %203, %204
  %cmp291 = icmp ne i64 %and290, 0
  br i1 %cmp291, label %if.then.292, label %if.end.311

if.then.292:                                      ; preds = %for.body.285
  %205 = load i64, i64* %mask_287, align 8
  %neg293 = xor i64 %205, -1
  %206 = load i64, i64* %word_277, align 8
  %and294 = and i64 %206, %neg293
  store i64 %and294, i64* %word_277, align 8
  %207 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %indx295 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %207, i32 0, i32 2
  %208 = load i32, i32* %indx295, align 4
  %mul296 = mul i32 %208, 128
  %209 = load i32, i32* %word_num_254, align 4
  %mul297 = mul i32 %209, 64
  %add298 = add i32 %mul296, %mul297
  %210 = load i32, i32* %bit_num_252, align 4
  %add299 = add i32 %add298, %210
  store i32 %add299, i32* %i, align 4
  %211 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %211 to i64
  %212 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last303 = getelementptr inbounds %struct.deps, %struct.deps* %212, i32 0, i32 11
  %213 = load %struct.deps_reg*, %struct.deps_reg** %reg_last303, align 8
  %arrayidx304 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %213, i64 %idxprom302
  store %struct.deps_reg* %arrayidx304, %struct.deps_reg** %reg_last301, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %215 = load %struct.deps_reg*, %struct.deps_reg** %reg_last301, align 8
  %uses305 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %215, i32 0, i32 0
  call void @add_dependence_list_and_free(%struct.rtx_def* %214, %struct.rtx_def** %uses305, i32 14)
  %216 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %217 = load %struct.deps_reg*, %struct.deps_reg** %reg_last301, align 8
  %sets306 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %217, i32 0, i32 1
  call void @add_dependence_list_and_free(%struct.rtx_def* %216, %struct.rtx_def** %sets306, i32 0)
  %218 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %219 = load %struct.deps_reg*, %struct.deps_reg** %reg_last301, align 8
  %clobbers307 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %219, i32 0, i32 2
  call void @add_dependence_list_and_free(%struct.rtx_def* %218, %struct.rtx_def** %clobbers307, i32 0)
  %220 = load %struct.deps_reg*, %struct.deps_reg** %reg_last301, align 8
  %uses_length = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %220, i32 0, i32 3
  store i32 0, i32* %uses_length, align 4
  %221 = load %struct.deps_reg*, %struct.deps_reg** %reg_last301, align 8
  %clobbers_length = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %221, i32 0, i32 4
  store i32 0, i32* %clobbers_length, align 4
  %222 = load i64, i64* %word_277, align 8
  %cmp308 = icmp eq i64 %222, 0
  br i1 %cmp308, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.then.292
  br label %for.end.314

if.end.310:                                       ; preds = %if.then.292
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %for.body.285
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.311
  %223 = load i32, i32* %bit_num_252, align 4
  %inc313 = add i32 %223, 1
  store i32 %inc313, i32* %bit_num_252, align 4
  br label %for.cond.283

for.end.314:                                      ; preds = %if.then.309, %for.cond.283
  br label %if.end.315

if.end.315:                                       ; preds = %for.end.314, %for.body.275
  store i32 0, i32* %bit_num_252, align 4
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %224 = load i32, i32* %word_num_254, align 4
  %inc317 = add i32 %224, 1
  store i32 %inc317, i32* %word_num_254, align 4
  br label %for.cond.273

for.end.318:                                      ; preds = %for.cond.273
  store i32 0, i32* %word_num_254, align 4
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.end.318
  %225 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_246, align 8
  %next320 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %225, i32 0, i32 0
  %226 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next320, align 8
  store %struct.bitmap_element_def* %226, %struct.bitmap_element_def** %ptr_246, align 8
  br label %for.cond.270

for.end.321:                                      ; preds = %for.cond.270
  br label %do.end.322

do.end.322:                                       ; preds = %for.end.321
  br label %if.end.323

if.end.323:                                       ; preds = %do.end.322, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.336, %if.end.323
  %227 = load i32, i32* %i, align 4
  %228 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %max_reg = getelementptr inbounds %struct.deps, %struct.deps* %228, i32 0, i32 10
  %229 = load i32, i32* %max_reg, align 4
  %cmp325 = icmp slt i32 %227, %229
  br i1 %cmp325, label %for.body.326, label %for.end.338

for.body.326:                                     ; preds = %for.cond.324
  %230 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %230 to i64
  %231 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last330 = getelementptr inbounds %struct.deps, %struct.deps* %231, i32 0, i32 11
  %232 = load %struct.deps_reg*, %struct.deps_reg** %reg_last330, align 8
  %arrayidx331 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %232, i64 %idxprom329
  store %struct.deps_reg* %arrayidx331, %struct.deps_reg** %reg_last328, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %234 = load %struct.deps_reg*, %struct.deps_reg** %reg_last328, align 8
  %sets332 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %234, i32 0, i32 1
  %235 = load %struct.rtx_def*, %struct.rtx_def** %sets332, align 8
  %call333 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %233, %struct.rtx_def* %235)
  %236 = load %struct.deps_reg*, %struct.deps_reg** %reg_last328, align 8
  %sets334 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %236, i32 0, i32 1
  store %struct.rtx_def* %call333, %struct.rtx_def** %sets334, align 8
  %237 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use335 = getelementptr inbounds %struct.deps, %struct.deps* %237, i32 0, i32 12
  %238 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %reg_last_in_use335, i32 %238)
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.body.326
  %239 = load i32, i32* %i, align 4
  %inc337 = add nsw i32 %239, 1
  store i32 %inc337, i32* %i, align 4
  br label %for.cond.324

for.end.338:                                      ; preds = %for.cond.324
  %240 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %241 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @flush_pending_lists(%struct.deps* %240, %struct.rtx_def* %241, i32 1, i32 1)
  store i8 0, i8* @reg_pending_barrier, align 1
  br label %if.end.868

if.else.339:                                      ; preds = %if.end.179
  %242 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld340, i32 0, i64 3
  %rtx342 = bitcast %union.rtunion_def* %arrayidx341 to %struct.rtx_def**
  %243 = load %struct.rtx_def*, %struct.rtx_def** %rtx342, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load343 = load i32, i32* %244, align 8
  %bf.clear344 = and i32 %bf.load343, 65535
  %cmp345 = icmp eq i32 %bf.clear344, 38
  br i1 %cmp345, label %if.then.346, label %if.else.592

if.then.346:                                      ; preds = %if.else.339
  br label %do.body.347

do.body.347:                                      ; preds = %if.then.346
  %245 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %first350 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %245, i32 0, i32 0
  %246 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first350, align 8
  store %struct.bitmap_element_def* %246, %struct.bitmap_element_def** %ptr_349, align 8
  store i32 0, i32* %indx_352, align 4
  store i32 0, i32* %bit_num_354, align 4
  store i32 0, i32* %word_num_356, align 4
  br label %while.cond.357

while.cond.357:                                   ; preds = %while.body.363, %do.body.347
  %247 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %cmp358 = icmp ne %struct.bitmap_element_def* %247, null
  br i1 %cmp358, label %land.rhs.359, label %land.end.362

land.rhs.359:                                     ; preds = %while.cond.357
  %248 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %indx360 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %248, i32 0, i32 2
  %249 = load i32, i32* %indx360, align 4
  %250 = load i32, i32* %indx_352, align 4
  %cmp361 = icmp ult i32 %249, %250
  br label %land.end.362

land.end.362:                                     ; preds = %land.rhs.359, %while.cond.357
  %251 = phi i1 [ false, %while.cond.357 ], [ %cmp361, %land.rhs.359 ]
  br i1 %251, label %while.body.363, label %while.end.365

while.body.363:                                   ; preds = %land.end.362
  %252 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %next364 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %252, i32 0, i32 0
  %253 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next364, align 8
  store %struct.bitmap_element_def* %253, %struct.bitmap_element_def** %ptr_349, align 8
  br label %while.cond.357

while.end.365:                                    ; preds = %land.end.362
  %254 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %cmp366 = icmp ne %struct.bitmap_element_def* %254, null
  br i1 %cmp366, label %land.lhs.true.367, label %if.end.371

land.lhs.true.367:                                ; preds = %while.end.365
  %255 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %indx368 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %255, i32 0, i32 2
  %256 = load i32, i32* %indx368, align 4
  %257 = load i32, i32* %indx_352, align 4
  %cmp369 = icmp ne i32 %256, %257
  br i1 %cmp369, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %land.lhs.true.367
  store i32 0, i32* %bit_num_354, align 4
  store i32 0, i32* %word_num_356, align 4
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.370, %land.lhs.true.367, %while.end.365
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.425, %if.end.371
  %258 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %cmp373 = icmp ne %struct.bitmap_element_def* %258, null
  br i1 %cmp373, label %for.body.374, label %for.end.427

for.body.374:                                     ; preds = %for.cond.372
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.422, %for.body.374
  %259 = load i32, i32* %word_num_356, align 4
  %cmp376 = icmp ult i32 %259, 2
  br i1 %cmp376, label %for.body.377, label %for.end.424

for.body.377:                                     ; preds = %for.cond.375
  %260 = load i32, i32* %word_num_356, align 4
  %idxprom380 = zext i32 %260 to i64
  %261 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %bits381 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %261, i32 0, i32 3
  %arrayidx382 = getelementptr inbounds [2 x i64], [2 x i64]* %bits381, i32 0, i64 %idxprom380
  %262 = load i64, i64* %arrayidx382, align 8
  store i64 %262, i64* %word_379, align 8
  %263 = load i64, i64* %word_379, align 8
  %cmp383 = icmp ne i64 %263, 0
  br i1 %cmp383, label %if.then.384, label %if.end.421

if.then.384:                                      ; preds = %for.body.377
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.418, %if.then.384
  %264 = load i32, i32* %bit_num_354, align 4
  %cmp386 = icmp ult i32 %264, 64
  br i1 %cmp386, label %for.body.387, label %for.end.420

for.body.387:                                     ; preds = %for.cond.385
  %265 = load i32, i32* %bit_num_354, align 4
  %sh_prom390 = zext i32 %265 to i64
  %shl391 = shl i64 1, %sh_prom390
  store i64 %shl391, i64* %mask_389, align 8
  %266 = load i64, i64* %word_379, align 8
  %267 = load i64, i64* %mask_389, align 8
  %and392 = and i64 %266, %267
  %cmp393 = icmp ne i64 %and392, 0
  br i1 %cmp393, label %if.then.394, label %if.end.417

if.then.394:                                      ; preds = %for.body.387
  %268 = load i64, i64* %mask_389, align 8
  %neg395 = xor i64 %268, -1
  %269 = load i64, i64* %word_379, align 8
  %and396 = and i64 %269, %neg395
  store i64 %and396, i64* %word_379, align 8
  %270 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %indx397 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %270, i32 0, i32 2
  %271 = load i32, i32* %indx397, align 4
  %mul398 = mul i32 %271, 128
  %272 = load i32, i32* %word_num_356, align 4
  %mul399 = mul i32 %272, 64
  %add400 = add i32 %mul398, %mul399
  %273 = load i32, i32* %bit_num_354, align 4
  %add401 = add i32 %add400, %273
  store i32 %add401, i32* %i, align 4
  %274 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %274 to i64
  %275 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last405 = getelementptr inbounds %struct.deps, %struct.deps* %275, i32 0, i32 11
  %276 = load %struct.deps_reg*, %struct.deps_reg** %reg_last405, align 8
  %arrayidx406 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %276, i64 %idxprom404
  store %struct.deps_reg* %arrayidx406, %struct.deps_reg** %reg_last403, align 8
  %277 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %278 = load %struct.deps_reg*, %struct.deps_reg** %reg_last403, align 8
  %sets407 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %278, i32 0, i32 1
  %279 = load %struct.rtx_def*, %struct.rtx_def** %sets407, align 8
  call void @add_dependence_list(%struct.rtx_def* %277, %struct.rtx_def* %279, i32 0)
  %280 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %281 = load %struct.deps_reg*, %struct.deps_reg** %reg_last403, align 8
  %clobbers408 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %281, i32 0, i32 2
  %282 = load %struct.rtx_def*, %struct.rtx_def** %clobbers408, align 8
  call void @add_dependence_list(%struct.rtx_def* %280, %struct.rtx_def* %282, i32 0)
  %283 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %284 = load %struct.deps_reg*, %struct.deps_reg** %reg_last403, align 8
  %uses409 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %284, i32 0, i32 0
  %285 = load %struct.rtx_def*, %struct.rtx_def** %uses409, align 8
  %call410 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %283, %struct.rtx_def* %285)
  %286 = load %struct.deps_reg*, %struct.deps_reg** %reg_last403, align 8
  %uses411 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %286, i32 0, i32 0
  store %struct.rtx_def* %call410, %struct.rtx_def** %uses411, align 8
  %287 = load %struct.deps_reg*, %struct.deps_reg** %reg_last403, align 8
  %uses_length412 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %287, i32 0, i32 3
  %288 = load i32, i32* %uses_length412, align 4
  %inc413 = add nsw i32 %288, 1
  store i32 %inc413, i32* %uses_length412, align 4
  %289 = load i64, i64* %word_379, align 8
  %cmp414 = icmp eq i64 %289, 0
  br i1 %cmp414, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %if.then.394
  br label %for.end.420

if.end.416:                                       ; preds = %if.then.394
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %for.body.387
  br label %for.inc.418

for.inc.418:                                      ; preds = %if.end.417
  %290 = load i32, i32* %bit_num_354, align 4
  %inc419 = add i32 %290, 1
  store i32 %inc419, i32* %bit_num_354, align 4
  br label %for.cond.385

for.end.420:                                      ; preds = %if.then.415, %for.cond.385
  br label %if.end.421

if.end.421:                                       ; preds = %for.end.420, %for.body.377
  store i32 0, i32* %bit_num_354, align 4
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.421
  %291 = load i32, i32* %word_num_356, align 4
  %inc423 = add i32 %291, 1
  store i32 %inc423, i32* %word_num_356, align 4
  br label %for.cond.375

for.end.424:                                      ; preds = %for.cond.375
  store i32 0, i32* %word_num_356, align 4
  br label %for.inc.425

for.inc.425:                                      ; preds = %for.end.424
  %292 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_349, align 8
  %next426 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %292, i32 0, i32 0
  %293 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next426, align 8
  store %struct.bitmap_element_def* %293, %struct.bitmap_element_def** %ptr_349, align 8
  br label %for.cond.372

for.end.427:                                      ; preds = %for.cond.372
  br label %do.end.428

do.end.428:                                       ; preds = %for.end.427
  br label %do.body.429

do.body.429:                                      ; preds = %do.end.428
  %294 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %first432 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %294, i32 0, i32 0
  %295 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first432, align 8
  store %struct.bitmap_element_def* %295, %struct.bitmap_element_def** %ptr_431, align 8
  store i32 0, i32* %indx_434, align 4
  store i32 0, i32* %bit_num_436, align 4
  store i32 0, i32* %word_num_438, align 4
  br label %while.cond.439

while.cond.439:                                   ; preds = %while.body.445, %do.body.429
  %296 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %cmp440 = icmp ne %struct.bitmap_element_def* %296, null
  br i1 %cmp440, label %land.rhs.441, label %land.end.444

land.rhs.441:                                     ; preds = %while.cond.439
  %297 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %indx442 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %297, i32 0, i32 2
  %298 = load i32, i32* %indx442, align 4
  %299 = load i32, i32* %indx_434, align 4
  %cmp443 = icmp ult i32 %298, %299
  br label %land.end.444

land.end.444:                                     ; preds = %land.rhs.441, %while.cond.439
  %300 = phi i1 [ false, %while.cond.439 ], [ %cmp443, %land.rhs.441 ]
  br i1 %300, label %while.body.445, label %while.end.447

while.body.445:                                   ; preds = %land.end.444
  %301 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %next446 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %301, i32 0, i32 0
  %302 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next446, align 8
  store %struct.bitmap_element_def* %302, %struct.bitmap_element_def** %ptr_431, align 8
  br label %while.cond.439

while.end.447:                                    ; preds = %land.end.444
  %303 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %cmp448 = icmp ne %struct.bitmap_element_def* %303, null
  br i1 %cmp448, label %land.lhs.true.449, label %if.end.453

land.lhs.true.449:                                ; preds = %while.end.447
  %304 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %indx450 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %304, i32 0, i32 2
  %305 = load i32, i32* %indx450, align 4
  %306 = load i32, i32* %indx_434, align 4
  %cmp451 = icmp ne i32 %305, %306
  br i1 %cmp451, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %land.lhs.true.449
  store i32 0, i32* %bit_num_436, align 4
  store i32 0, i32* %word_num_438, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.452, %land.lhs.true.449, %while.end.447
  br label %for.cond.454

for.cond.454:                                     ; preds = %for.inc.507, %if.end.453
  %307 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %cmp455 = icmp ne %struct.bitmap_element_def* %307, null
  br i1 %cmp455, label %for.body.456, label %for.end.509

for.body.456:                                     ; preds = %for.cond.454
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.504, %for.body.456
  %308 = load i32, i32* %word_num_438, align 4
  %cmp458 = icmp ult i32 %308, 2
  br i1 %cmp458, label %for.body.459, label %for.end.506

for.body.459:                                     ; preds = %for.cond.457
  %309 = load i32, i32* %word_num_438, align 4
  %idxprom462 = zext i32 %309 to i64
  %310 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %bits463 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %310, i32 0, i32 3
  %arrayidx464 = getelementptr inbounds [2 x i64], [2 x i64]* %bits463, i32 0, i64 %idxprom462
  %311 = load i64, i64* %arrayidx464, align 8
  store i64 %311, i64* %word_461, align 8
  %312 = load i64, i64* %word_461, align 8
  %cmp465 = icmp ne i64 %312, 0
  br i1 %cmp465, label %if.then.466, label %if.end.503

if.then.466:                                      ; preds = %for.body.459
  br label %for.cond.467

for.cond.467:                                     ; preds = %for.inc.500, %if.then.466
  %313 = load i32, i32* %bit_num_436, align 4
  %cmp468 = icmp ult i32 %313, 64
  br i1 %cmp468, label %for.body.469, label %for.end.502

for.body.469:                                     ; preds = %for.cond.467
  %314 = load i32, i32* %bit_num_436, align 4
  %sh_prom472 = zext i32 %314 to i64
  %shl473 = shl i64 1, %sh_prom472
  store i64 %shl473, i64* %mask_471, align 8
  %315 = load i64, i64* %word_461, align 8
  %316 = load i64, i64* %mask_471, align 8
  %and474 = and i64 %315, %316
  %cmp475 = icmp ne i64 %and474, 0
  br i1 %cmp475, label %if.then.476, label %if.end.499

if.then.476:                                      ; preds = %for.body.469
  %317 = load i64, i64* %mask_471, align 8
  %neg477 = xor i64 %317, -1
  %318 = load i64, i64* %word_461, align 8
  %and478 = and i64 %318, %neg477
  store i64 %and478, i64* %word_461, align 8
  %319 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %indx479 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %319, i32 0, i32 2
  %320 = load i32, i32* %indx479, align 4
  %mul480 = mul i32 %320, 128
  %321 = load i32, i32* %word_num_438, align 4
  %mul481 = mul i32 %321, 64
  %add482 = add i32 %mul480, %mul481
  %322 = load i32, i32* %bit_num_436, align 4
  %add483 = add i32 %add482, %322
  store i32 %add483, i32* %i, align 4
  %323 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %323 to i64
  %324 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last487 = getelementptr inbounds %struct.deps, %struct.deps* %324, i32 0, i32 11
  %325 = load %struct.deps_reg*, %struct.deps_reg** %reg_last487, align 8
  %arrayidx488 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %325, i64 %idxprom486
  store %struct.deps_reg* %arrayidx488, %struct.deps_reg** %reg_last485, align 8
  %326 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %327 = load %struct.deps_reg*, %struct.deps_reg** %reg_last485, align 8
  %sets489 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %327, i32 0, i32 1
  %328 = load %struct.rtx_def*, %struct.rtx_def** %sets489, align 8
  call void @add_dependence_list(%struct.rtx_def* %326, %struct.rtx_def* %328, i32 15)
  %329 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %330 = load %struct.deps_reg*, %struct.deps_reg** %reg_last485, align 8
  %uses490 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %330, i32 0, i32 0
  %331 = load %struct.rtx_def*, %struct.rtx_def** %uses490, align 8
  call void @add_dependence_list(%struct.rtx_def* %329, %struct.rtx_def* %331, i32 14)
  %332 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %333 = load %struct.deps_reg*, %struct.deps_reg** %reg_last485, align 8
  %clobbers491 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %333, i32 0, i32 2
  %334 = load %struct.rtx_def*, %struct.rtx_def** %clobbers491, align 8
  %call492 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %332, %struct.rtx_def* %334)
  %335 = load %struct.deps_reg*, %struct.deps_reg** %reg_last485, align 8
  %clobbers493 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %335, i32 0, i32 2
  store %struct.rtx_def* %call492, %struct.rtx_def** %clobbers493, align 8
  %336 = load %struct.deps_reg*, %struct.deps_reg** %reg_last485, align 8
  %clobbers_length494 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %336, i32 0, i32 4
  %337 = load i32, i32* %clobbers_length494, align 4
  %inc495 = add nsw i32 %337, 1
  store i32 %inc495, i32* %clobbers_length494, align 4
  %338 = load i64, i64* %word_461, align 8
  %cmp496 = icmp eq i64 %338, 0
  br i1 %cmp496, label %if.then.497, label %if.end.498

if.then.497:                                      ; preds = %if.then.476
  br label %for.end.502

if.end.498:                                       ; preds = %if.then.476
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %for.body.469
  br label %for.inc.500

for.inc.500:                                      ; preds = %if.end.499
  %339 = load i32, i32* %bit_num_436, align 4
  %inc501 = add i32 %339, 1
  store i32 %inc501, i32* %bit_num_436, align 4
  br label %for.cond.467

for.end.502:                                      ; preds = %if.then.497, %for.cond.467
  br label %if.end.503

if.end.503:                                       ; preds = %for.end.502, %for.body.459
  store i32 0, i32* %bit_num_436, align 4
  br label %for.inc.504

for.inc.504:                                      ; preds = %if.end.503
  %340 = load i32, i32* %word_num_438, align 4
  %inc505 = add i32 %340, 1
  store i32 %inc505, i32* %word_num_438, align 4
  br label %for.cond.457

for.end.506:                                      ; preds = %for.cond.457
  store i32 0, i32* %word_num_438, align 4
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.end.506
  %341 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_431, align 8
  %next508 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %341, i32 0, i32 0
  %342 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next508, align 8
  store %struct.bitmap_element_def* %342, %struct.bitmap_element_def** %ptr_431, align 8
  br label %for.cond.454

for.end.509:                                      ; preds = %for.cond.454
  br label %do.end.510

do.end.510:                                       ; preds = %for.end.509
  br label %do.body.511

do.body.511:                                      ; preds = %do.end.510
  %343 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %first514 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %343, i32 0, i32 0
  %344 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first514, align 8
  store %struct.bitmap_element_def* %344, %struct.bitmap_element_def** %ptr_513, align 8
  store i32 0, i32* %indx_516, align 4
  store i32 0, i32* %bit_num_518, align 4
  store i32 0, i32* %word_num_520, align 4
  br label %while.cond.521

while.cond.521:                                   ; preds = %while.body.527, %do.body.511
  %345 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %cmp522 = icmp ne %struct.bitmap_element_def* %345, null
  br i1 %cmp522, label %land.rhs.523, label %land.end.526

land.rhs.523:                                     ; preds = %while.cond.521
  %346 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %indx524 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %346, i32 0, i32 2
  %347 = load i32, i32* %indx524, align 4
  %348 = load i32, i32* %indx_516, align 4
  %cmp525 = icmp ult i32 %347, %348
  br label %land.end.526

land.end.526:                                     ; preds = %land.rhs.523, %while.cond.521
  %349 = phi i1 [ false, %while.cond.521 ], [ %cmp525, %land.rhs.523 ]
  br i1 %349, label %while.body.527, label %while.end.529

while.body.527:                                   ; preds = %land.end.526
  %350 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %next528 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %350, i32 0, i32 0
  %351 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next528, align 8
  store %struct.bitmap_element_def* %351, %struct.bitmap_element_def** %ptr_513, align 8
  br label %while.cond.521

while.end.529:                                    ; preds = %land.end.526
  %352 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %cmp530 = icmp ne %struct.bitmap_element_def* %352, null
  br i1 %cmp530, label %land.lhs.true.531, label %if.end.535

land.lhs.true.531:                                ; preds = %while.end.529
  %353 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %indx532 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %353, i32 0, i32 2
  %354 = load i32, i32* %indx532, align 4
  %355 = load i32, i32* %indx_516, align 4
  %cmp533 = icmp ne i32 %354, %355
  br i1 %cmp533, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %land.lhs.true.531
  store i32 0, i32* %bit_num_518, align 4
  store i32 0, i32* %word_num_520, align 4
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.534, %land.lhs.true.531, %while.end.529
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.588, %if.end.535
  %356 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %cmp537 = icmp ne %struct.bitmap_element_def* %356, null
  br i1 %cmp537, label %for.body.538, label %for.end.590

for.body.538:                                     ; preds = %for.cond.536
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.585, %for.body.538
  %357 = load i32, i32* %word_num_520, align 4
  %cmp540 = icmp ult i32 %357, 2
  br i1 %cmp540, label %for.body.541, label %for.end.587

for.body.541:                                     ; preds = %for.cond.539
  %358 = load i32, i32* %word_num_520, align 4
  %idxprom544 = zext i32 %358 to i64
  %359 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %bits545 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %359, i32 0, i32 3
  %arrayidx546 = getelementptr inbounds [2 x i64], [2 x i64]* %bits545, i32 0, i64 %idxprom544
  %360 = load i64, i64* %arrayidx546, align 8
  store i64 %360, i64* %word_543, align 8
  %361 = load i64, i64* %word_543, align 8
  %cmp547 = icmp ne i64 %361, 0
  br i1 %cmp547, label %if.then.548, label %if.end.584

if.then.548:                                      ; preds = %for.body.541
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.581, %if.then.548
  %362 = load i32, i32* %bit_num_518, align 4
  %cmp550 = icmp ult i32 %362, 64
  br i1 %cmp550, label %for.body.551, label %for.end.583

for.body.551:                                     ; preds = %for.cond.549
  %363 = load i32, i32* %bit_num_518, align 4
  %sh_prom554 = zext i32 %363 to i64
  %shl555 = shl i64 1, %sh_prom554
  store i64 %shl555, i64* %mask_553, align 8
  %364 = load i64, i64* %word_543, align 8
  %365 = load i64, i64* %mask_553, align 8
  %and556 = and i64 %364, %365
  %cmp557 = icmp ne i64 %and556, 0
  br i1 %cmp557, label %if.then.558, label %if.end.580

if.then.558:                                      ; preds = %for.body.551
  %366 = load i64, i64* %mask_553, align 8
  %neg559 = xor i64 %366, -1
  %367 = load i64, i64* %word_543, align 8
  %and560 = and i64 %367, %neg559
  store i64 %and560, i64* %word_543, align 8
  %368 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %indx561 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %368, i32 0, i32 2
  %369 = load i32, i32* %indx561, align 4
  %mul562 = mul i32 %369, 128
  %370 = load i32, i32* %word_num_520, align 4
  %mul563 = mul i32 %370, 64
  %add564 = add i32 %mul562, %mul563
  %371 = load i32, i32* %bit_num_518, align 4
  %add565 = add i32 %add564, %371
  store i32 %add565, i32* %i, align 4
  %372 = load i32, i32* %i, align 4
  %idxprom568 = sext i32 %372 to i64
  %373 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last569 = getelementptr inbounds %struct.deps, %struct.deps* %373, i32 0, i32 11
  %374 = load %struct.deps_reg*, %struct.deps_reg** %reg_last569, align 8
  %arrayidx570 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %374, i64 %idxprom568
  store %struct.deps_reg* %arrayidx570, %struct.deps_reg** %reg_last567, align 8
  %375 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %376 = load %struct.deps_reg*, %struct.deps_reg** %reg_last567, align 8
  %sets571 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %376, i32 0, i32 1
  %377 = load %struct.rtx_def*, %struct.rtx_def** %sets571, align 8
  call void @add_dependence_list(%struct.rtx_def* %375, %struct.rtx_def* %377, i32 15)
  %378 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %379 = load %struct.deps_reg*, %struct.deps_reg** %reg_last567, align 8
  %clobbers572 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %379, i32 0, i32 2
  %380 = load %struct.rtx_def*, %struct.rtx_def** %clobbers572, align 8
  call void @add_dependence_list(%struct.rtx_def* %378, %struct.rtx_def* %380, i32 15)
  %381 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %382 = load %struct.deps_reg*, %struct.deps_reg** %reg_last567, align 8
  %uses573 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %382, i32 0, i32 0
  %383 = load %struct.rtx_def*, %struct.rtx_def** %uses573, align 8
  call void @add_dependence_list(%struct.rtx_def* %381, %struct.rtx_def* %383, i32 14)
  %384 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %385 = load %struct.deps_reg*, %struct.deps_reg** %reg_last567, align 8
  %sets574 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %385, i32 0, i32 1
  %386 = load %struct.rtx_def*, %struct.rtx_def** %sets574, align 8
  %call575 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %384, %struct.rtx_def* %386)
  %387 = load %struct.deps_reg*, %struct.deps_reg** %reg_last567, align 8
  %sets576 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %387, i32 0, i32 1
  store %struct.rtx_def* %call575, %struct.rtx_def** %sets576, align 8
  %388 = load i64, i64* %word_543, align 8
  %cmp577 = icmp eq i64 %388, 0
  br i1 %cmp577, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %if.then.558
  br label %for.end.583

if.end.579:                                       ; preds = %if.then.558
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %for.body.551
  br label %for.inc.581

for.inc.581:                                      ; preds = %if.end.580
  %389 = load i32, i32* %bit_num_518, align 4
  %inc582 = add i32 %389, 1
  store i32 %inc582, i32* %bit_num_518, align 4
  br label %for.cond.549

for.end.583:                                      ; preds = %if.then.578, %for.cond.549
  br label %if.end.584

if.end.584:                                       ; preds = %for.end.583, %for.body.541
  store i32 0, i32* %bit_num_518, align 4
  br label %for.inc.585

for.inc.585:                                      ; preds = %if.end.584
  %390 = load i32, i32* %word_num_520, align 4
  %inc586 = add i32 %390, 1
  store i32 %inc586, i32* %word_num_520, align 4
  br label %for.cond.539

for.end.587:                                      ; preds = %for.cond.539
  store i32 0, i32* %word_num_520, align 4
  br label %for.inc.588

for.inc.588:                                      ; preds = %for.end.587
  %391 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_513, align 8
  %next589 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %391, i32 0, i32 0
  %392 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next589, align 8
  store %struct.bitmap_element_def* %392, %struct.bitmap_element_def** %ptr_513, align 8
  br label %for.cond.536

for.end.590:                                      ; preds = %for.cond.536
  br label %do.end.591

do.end.591:                                       ; preds = %for.end.590
  br label %if.end.858

if.else.592:                                      ; preds = %if.else.339
  br label %do.body.593

do.body.593:                                      ; preds = %if.else.592
  %393 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %first596 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %393, i32 0, i32 0
  %394 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first596, align 8
  store %struct.bitmap_element_def* %394, %struct.bitmap_element_def** %ptr_595, align 8
  store i32 0, i32* %indx_598, align 4
  store i32 0, i32* %bit_num_600, align 4
  store i32 0, i32* %word_num_602, align 4
  br label %while.cond.603

while.cond.603:                                   ; preds = %while.body.609, %do.body.593
  %395 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %cmp604 = icmp ne %struct.bitmap_element_def* %395, null
  br i1 %cmp604, label %land.rhs.605, label %land.end.608

land.rhs.605:                                     ; preds = %while.cond.603
  %396 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %indx606 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %396, i32 0, i32 2
  %397 = load i32, i32* %indx606, align 4
  %398 = load i32, i32* %indx_598, align 4
  %cmp607 = icmp ult i32 %397, %398
  br label %land.end.608

land.end.608:                                     ; preds = %land.rhs.605, %while.cond.603
  %399 = phi i1 [ false, %while.cond.603 ], [ %cmp607, %land.rhs.605 ]
  br i1 %399, label %while.body.609, label %while.end.611

while.body.609:                                   ; preds = %land.end.608
  %400 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %next610 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %400, i32 0, i32 0
  %401 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next610, align 8
  store %struct.bitmap_element_def* %401, %struct.bitmap_element_def** %ptr_595, align 8
  br label %while.cond.603

while.end.611:                                    ; preds = %land.end.608
  %402 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %cmp612 = icmp ne %struct.bitmap_element_def* %402, null
  br i1 %cmp612, label %land.lhs.true.613, label %if.end.617

land.lhs.true.613:                                ; preds = %while.end.611
  %403 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %indx614 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %403, i32 0, i32 2
  %404 = load i32, i32* %indx614, align 4
  %405 = load i32, i32* %indx_598, align 4
  %cmp615 = icmp ne i32 %404, %405
  br i1 %cmp615, label %if.then.616, label %if.end.617

if.then.616:                                      ; preds = %land.lhs.true.613
  store i32 0, i32* %bit_num_600, align 4
  store i32 0, i32* %word_num_602, align 4
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.616, %land.lhs.true.613, %while.end.611
  br label %for.cond.618

for.cond.618:                                     ; preds = %for.inc.671, %if.end.617
  %406 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %cmp619 = icmp ne %struct.bitmap_element_def* %406, null
  br i1 %cmp619, label %for.body.620, label %for.end.673

for.body.620:                                     ; preds = %for.cond.618
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.668, %for.body.620
  %407 = load i32, i32* %word_num_602, align 4
  %cmp622 = icmp ult i32 %407, 2
  br i1 %cmp622, label %for.body.623, label %for.end.670

for.body.623:                                     ; preds = %for.cond.621
  %408 = load i32, i32* %word_num_602, align 4
  %idxprom626 = zext i32 %408 to i64
  %409 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %bits627 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %409, i32 0, i32 3
  %arrayidx628 = getelementptr inbounds [2 x i64], [2 x i64]* %bits627, i32 0, i64 %idxprom626
  %410 = load i64, i64* %arrayidx628, align 8
  store i64 %410, i64* %word_625, align 8
  %411 = load i64, i64* %word_625, align 8
  %cmp629 = icmp ne i64 %411, 0
  br i1 %cmp629, label %if.then.630, label %if.end.667

if.then.630:                                      ; preds = %for.body.623
  br label %for.cond.631

for.cond.631:                                     ; preds = %for.inc.664, %if.then.630
  %412 = load i32, i32* %bit_num_600, align 4
  %cmp632 = icmp ult i32 %412, 64
  br i1 %cmp632, label %for.body.633, label %for.end.666

for.body.633:                                     ; preds = %for.cond.631
  %413 = load i32, i32* %bit_num_600, align 4
  %sh_prom636 = zext i32 %413 to i64
  %shl637 = shl i64 1, %sh_prom636
  store i64 %shl637, i64* %mask_635, align 8
  %414 = load i64, i64* %word_625, align 8
  %415 = load i64, i64* %mask_635, align 8
  %and638 = and i64 %414, %415
  %cmp639 = icmp ne i64 %and638, 0
  br i1 %cmp639, label %if.then.640, label %if.end.663

if.then.640:                                      ; preds = %for.body.633
  %416 = load i64, i64* %mask_635, align 8
  %neg641 = xor i64 %416, -1
  %417 = load i64, i64* %word_625, align 8
  %and642 = and i64 %417, %neg641
  store i64 %and642, i64* %word_625, align 8
  %418 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %indx643 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %418, i32 0, i32 2
  %419 = load i32, i32* %indx643, align 4
  %mul644 = mul i32 %419, 128
  %420 = load i32, i32* %word_num_602, align 4
  %mul645 = mul i32 %420, 64
  %add646 = add i32 %mul644, %mul645
  %421 = load i32, i32* %bit_num_600, align 4
  %add647 = add i32 %add646, %421
  store i32 %add647, i32* %i, align 4
  %422 = load i32, i32* %i, align 4
  %idxprom650 = sext i32 %422 to i64
  %423 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last651 = getelementptr inbounds %struct.deps, %struct.deps* %423, i32 0, i32 11
  %424 = load %struct.deps_reg*, %struct.deps_reg** %reg_last651, align 8
  %arrayidx652 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %424, i64 %idxprom650
  store %struct.deps_reg* %arrayidx652, %struct.deps_reg** %reg_last649, align 8
  %425 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %426 = load %struct.deps_reg*, %struct.deps_reg** %reg_last649, align 8
  %sets653 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %426, i32 0, i32 1
  %427 = load %struct.rtx_def*, %struct.rtx_def** %sets653, align 8
  call void @add_dependence_list(%struct.rtx_def* %425, %struct.rtx_def* %427, i32 0)
  %428 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %429 = load %struct.deps_reg*, %struct.deps_reg** %reg_last649, align 8
  %clobbers654 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %429, i32 0, i32 2
  %430 = load %struct.rtx_def*, %struct.rtx_def** %clobbers654, align 8
  call void @add_dependence_list(%struct.rtx_def* %428, %struct.rtx_def* %430, i32 0)
  %431 = load %struct.deps_reg*, %struct.deps_reg** %reg_last649, align 8
  %uses_length655 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %431, i32 0, i32 3
  %432 = load i32, i32* %uses_length655, align 4
  %inc656 = add nsw i32 %432, 1
  store i32 %inc656, i32* %uses_length655, align 4
  %433 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %434 = load %struct.deps_reg*, %struct.deps_reg** %reg_last649, align 8
  %uses657 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %434, i32 0, i32 0
  %435 = load %struct.rtx_def*, %struct.rtx_def** %uses657, align 8
  %call658 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %433, %struct.rtx_def* %435)
  %436 = load %struct.deps_reg*, %struct.deps_reg** %reg_last649, align 8
  %uses659 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %436, i32 0, i32 0
  store %struct.rtx_def* %call658, %struct.rtx_def** %uses659, align 8
  %437 = load i64, i64* %word_625, align 8
  %cmp660 = icmp eq i64 %437, 0
  br i1 %cmp660, label %if.then.661, label %if.end.662

if.then.661:                                      ; preds = %if.then.640
  br label %for.end.666

if.end.662:                                       ; preds = %if.then.640
  br label %if.end.663

if.end.663:                                       ; preds = %if.end.662, %for.body.633
  br label %for.inc.664

for.inc.664:                                      ; preds = %if.end.663
  %438 = load i32, i32* %bit_num_600, align 4
  %inc665 = add i32 %438, 1
  store i32 %inc665, i32* %bit_num_600, align 4
  br label %for.cond.631

for.end.666:                                      ; preds = %if.then.661, %for.cond.631
  br label %if.end.667

if.end.667:                                       ; preds = %for.end.666, %for.body.623
  store i32 0, i32* %bit_num_600, align 4
  br label %for.inc.668

for.inc.668:                                      ; preds = %if.end.667
  %439 = load i32, i32* %word_num_602, align 4
  %inc669 = add i32 %439, 1
  store i32 %inc669, i32* %word_num_602, align 4
  br label %for.cond.621

for.end.670:                                      ; preds = %for.cond.621
  store i32 0, i32* %word_num_602, align 4
  br label %for.inc.671

for.inc.671:                                      ; preds = %for.end.670
  %440 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_595, align 8
  %next672 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %440, i32 0, i32 0
  %441 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next672, align 8
  store %struct.bitmap_element_def* %441, %struct.bitmap_element_def** %ptr_595, align 8
  br label %for.cond.618

for.end.673:                                      ; preds = %for.cond.618
  br label %do.end.674

do.end.674:                                       ; preds = %for.end.673
  br label %do.body.675

do.body.675:                                      ; preds = %do.end.674
  %442 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %first678 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %442, i32 0, i32 0
  %443 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first678, align 8
  store %struct.bitmap_element_def* %443, %struct.bitmap_element_def** %ptr_677, align 8
  store i32 0, i32* %indx_680, align 4
  store i32 0, i32* %bit_num_682, align 4
  store i32 0, i32* %word_num_684, align 4
  br label %while.cond.685

while.cond.685:                                   ; preds = %while.body.691, %do.body.675
  %444 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %cmp686 = icmp ne %struct.bitmap_element_def* %444, null
  br i1 %cmp686, label %land.rhs.687, label %land.end.690

land.rhs.687:                                     ; preds = %while.cond.685
  %445 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %indx688 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %445, i32 0, i32 2
  %446 = load i32, i32* %indx688, align 4
  %447 = load i32, i32* %indx_680, align 4
  %cmp689 = icmp ult i32 %446, %447
  br label %land.end.690

land.end.690:                                     ; preds = %land.rhs.687, %while.cond.685
  %448 = phi i1 [ false, %while.cond.685 ], [ %cmp689, %land.rhs.687 ]
  br i1 %448, label %while.body.691, label %while.end.693

while.body.691:                                   ; preds = %land.end.690
  %449 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %next692 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %449, i32 0, i32 0
  %450 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next692, align 8
  store %struct.bitmap_element_def* %450, %struct.bitmap_element_def** %ptr_677, align 8
  br label %while.cond.685

while.end.693:                                    ; preds = %land.end.690
  %451 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %cmp694 = icmp ne %struct.bitmap_element_def* %451, null
  br i1 %cmp694, label %land.lhs.true.695, label %if.end.699

land.lhs.true.695:                                ; preds = %while.end.693
  %452 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %indx696 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %452, i32 0, i32 2
  %453 = load i32, i32* %indx696, align 4
  %454 = load i32, i32* %indx_680, align 4
  %cmp697 = icmp ne i32 %453, %454
  br i1 %cmp697, label %if.then.698, label %if.end.699

if.then.698:                                      ; preds = %land.lhs.true.695
  store i32 0, i32* %bit_num_682, align 4
  store i32 0, i32* %word_num_684, align 4
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.698, %land.lhs.true.695, %while.end.693
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.771, %if.end.699
  %455 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %cmp701 = icmp ne %struct.bitmap_element_def* %455, null
  br i1 %cmp701, label %for.body.702, label %for.end.773

for.body.702:                                     ; preds = %for.cond.700
  br label %for.cond.703

for.cond.703:                                     ; preds = %for.inc.768, %for.body.702
  %456 = load i32, i32* %word_num_684, align 4
  %cmp704 = icmp ult i32 %456, 2
  br i1 %cmp704, label %for.body.705, label %for.end.770

for.body.705:                                     ; preds = %for.cond.703
  %457 = load i32, i32* %word_num_684, align 4
  %idxprom708 = zext i32 %457 to i64
  %458 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %bits709 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %458, i32 0, i32 3
  %arrayidx710 = getelementptr inbounds [2 x i64], [2 x i64]* %bits709, i32 0, i64 %idxprom708
  %459 = load i64, i64* %arrayidx710, align 8
  store i64 %459, i64* %word_707, align 8
  %460 = load i64, i64* %word_707, align 8
  %cmp711 = icmp ne i64 %460, 0
  br i1 %cmp711, label %if.then.712, label %if.end.767

if.then.712:                                      ; preds = %for.body.705
  br label %for.cond.713

for.cond.713:                                     ; preds = %for.inc.764, %if.then.712
  %461 = load i32, i32* %bit_num_682, align 4
  %cmp714 = icmp ult i32 %461, 64
  br i1 %cmp714, label %for.body.715, label %for.end.766

for.body.715:                                     ; preds = %for.cond.713
  %462 = load i32, i32* %bit_num_682, align 4
  %sh_prom718 = zext i32 %462 to i64
  %shl719 = shl i64 1, %sh_prom718
  store i64 %shl719, i64* %mask_717, align 8
  %463 = load i64, i64* %word_707, align 8
  %464 = load i64, i64* %mask_717, align 8
  %and720 = and i64 %463, %464
  %cmp721 = icmp ne i64 %and720, 0
  br i1 %cmp721, label %if.then.722, label %if.end.763

if.then.722:                                      ; preds = %for.body.715
  %465 = load i64, i64* %mask_717, align 8
  %neg723 = xor i64 %465, -1
  %466 = load i64, i64* %word_707, align 8
  %and724 = and i64 %466, %neg723
  store i64 %and724, i64* %word_707, align 8
  %467 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %indx725 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %467, i32 0, i32 2
  %468 = load i32, i32* %indx725, align 4
  %mul726 = mul i32 %468, 128
  %469 = load i32, i32* %word_num_684, align 4
  %mul727 = mul i32 %469, 64
  %add728 = add i32 %mul726, %mul727
  %470 = load i32, i32* %bit_num_682, align 4
  %add729 = add i32 %add728, %470
  store i32 %add729, i32* %i, align 4
  %471 = load i32, i32* %i, align 4
  %idxprom732 = sext i32 %471 to i64
  %472 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last733 = getelementptr inbounds %struct.deps, %struct.deps* %472, i32 0, i32 11
  %473 = load %struct.deps_reg*, %struct.deps_reg** %reg_last733, align 8
  %arrayidx734 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %473, i64 %idxprom732
  store %struct.deps_reg* %arrayidx734, %struct.deps_reg** %reg_last731, align 8
  %474 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %475 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %sets735 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %475, i32 0, i32 1
  %476 = load %struct.rtx_def*, %struct.rtx_def** %sets735, align 8
  call void @add_dependence_list(%struct.rtx_def* %474, %struct.rtx_def* %476, i32 15)
  %477 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %478 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %uses736 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %478, i32 0, i32 0
  %479 = load %struct.rtx_def*, %struct.rtx_def** %uses736, align 8
  call void @add_dependence_list(%struct.rtx_def* %477, %struct.rtx_def* %479, i32 14)
  %480 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %uses_length737 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %480, i32 0, i32 3
  %481 = load i32, i32* %uses_length737, align 4
  %482 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx738 = getelementptr inbounds %struct.param_info, %struct.param_info* %482, i64 3
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx738, i32 0, i32 1
  %483 = load i32, i32* %value, align 4
  %cmp739 = icmp sgt i32 %481, %483
  br i1 %cmp739, label %if.then.745, label %lor.lhs.false.740

lor.lhs.false.740:                                ; preds = %if.then.722
  %484 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers_length741 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %484, i32 0, i32 4
  %485 = load i32, i32* %clobbers_length741, align 4
  %486 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx742 = getelementptr inbounds %struct.param_info, %struct.param_info* %486, i64 3
  %value743 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx742, i32 0, i32 1
  %487 = load i32, i32* %value743, align 4
  %cmp744 = icmp sgt i32 %485, %487
  br i1 %cmp744, label %if.then.745, label %if.else.751

if.then.745:                                      ; preds = %lor.lhs.false.740, %if.then.722
  %488 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %489 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %sets746 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %489, i32 0, i32 1
  call void @add_dependence_list_and_free(%struct.rtx_def* %488, %struct.rtx_def** %sets746, i32 15)
  %490 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %491 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %uses747 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %491, i32 0, i32 0
  call void @add_dependence_list_and_free(%struct.rtx_def* %490, %struct.rtx_def** %uses747, i32 14)
  %492 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %493 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers748 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %493, i32 0, i32 2
  call void @add_dependence_list_and_free(%struct.rtx_def* %492, %struct.rtx_def** %clobbers748, i32 15)
  %494 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers_length749 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %494, i32 0, i32 4
  store i32 0, i32* %clobbers_length749, align 4
  %495 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %uses_length750 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %495, i32 0, i32 3
  store i32 0, i32* %uses_length750, align 4
  br label %if.end.754

if.else.751:                                      ; preds = %lor.lhs.false.740
  %496 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %497 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %sets752 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %497, i32 0, i32 1
  %498 = load %struct.rtx_def*, %struct.rtx_def** %sets752, align 8
  call void @add_dependence_list(%struct.rtx_def* %496, %struct.rtx_def* %498, i32 15)
  %499 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %500 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %uses753 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %500, i32 0, i32 0
  %501 = load %struct.rtx_def*, %struct.rtx_def** %uses753, align 8
  call void @add_dependence_list(%struct.rtx_def* %499, %struct.rtx_def* %501, i32 14)
  br label %if.end.754

if.end.754:                                       ; preds = %if.else.751, %if.then.745
  %502 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers_length755 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %502, i32 0, i32 4
  %503 = load i32, i32* %clobbers_length755, align 4
  %inc756 = add nsw i32 %503, 1
  store i32 %inc756, i32* %clobbers_length755, align 4
  %504 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %505 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers757 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %505, i32 0, i32 2
  %506 = load %struct.rtx_def*, %struct.rtx_def** %clobbers757, align 8
  %call758 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %504, %struct.rtx_def* %506)
  %507 = load %struct.deps_reg*, %struct.deps_reg** %reg_last731, align 8
  %clobbers759 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %507, i32 0, i32 2
  store %struct.rtx_def* %call758, %struct.rtx_def** %clobbers759, align 8
  %508 = load i64, i64* %word_707, align 8
  %cmp760 = icmp eq i64 %508, 0
  br i1 %cmp760, label %if.then.761, label %if.end.762

if.then.761:                                      ; preds = %if.end.754
  br label %for.end.766

if.end.762:                                       ; preds = %if.end.754
  br label %if.end.763

if.end.763:                                       ; preds = %if.end.762, %for.body.715
  br label %for.inc.764

for.inc.764:                                      ; preds = %if.end.763
  %509 = load i32, i32* %bit_num_682, align 4
  %inc765 = add i32 %509, 1
  store i32 %inc765, i32* %bit_num_682, align 4
  br label %for.cond.713

for.end.766:                                      ; preds = %if.then.761, %for.cond.713
  br label %if.end.767

if.end.767:                                       ; preds = %for.end.766, %for.body.705
  store i32 0, i32* %bit_num_682, align 4
  br label %for.inc.768

for.inc.768:                                      ; preds = %if.end.767
  %510 = load i32, i32* %word_num_684, align 4
  %inc769 = add i32 %510, 1
  store i32 %inc769, i32* %word_num_684, align 4
  br label %for.cond.703

for.end.770:                                      ; preds = %for.cond.703
  store i32 0, i32* %word_num_684, align 4
  br label %for.inc.771

for.inc.771:                                      ; preds = %for.end.770
  %511 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_677, align 8
  %next772 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %511, i32 0, i32 0
  %512 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next772, align 8
  store %struct.bitmap_element_def* %512, %struct.bitmap_element_def** %ptr_677, align 8
  br label %for.cond.700

for.end.773:                                      ; preds = %for.cond.700
  br label %do.end.774

do.end.774:                                       ; preds = %for.end.773
  br label %do.body.775

do.body.775:                                      ; preds = %do.end.774
  %513 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %first778 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %513, i32 0, i32 0
  %514 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first778, align 8
  store %struct.bitmap_element_def* %514, %struct.bitmap_element_def** %ptr_777, align 8
  store i32 0, i32* %indx_780, align 4
  store i32 0, i32* %bit_num_782, align 4
  store i32 0, i32* %word_num_784, align 4
  br label %while.cond.785

while.cond.785:                                   ; preds = %while.body.791, %do.body.775
  %515 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %cmp786 = icmp ne %struct.bitmap_element_def* %515, null
  br i1 %cmp786, label %land.rhs.787, label %land.end.790

land.rhs.787:                                     ; preds = %while.cond.785
  %516 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %indx788 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %516, i32 0, i32 2
  %517 = load i32, i32* %indx788, align 4
  %518 = load i32, i32* %indx_780, align 4
  %cmp789 = icmp ult i32 %517, %518
  br label %land.end.790

land.end.790:                                     ; preds = %land.rhs.787, %while.cond.785
  %519 = phi i1 [ false, %while.cond.785 ], [ %cmp789, %land.rhs.787 ]
  br i1 %519, label %while.body.791, label %while.end.793

while.body.791:                                   ; preds = %land.end.790
  %520 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %next792 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %520, i32 0, i32 0
  %521 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next792, align 8
  store %struct.bitmap_element_def* %521, %struct.bitmap_element_def** %ptr_777, align 8
  br label %while.cond.785

while.end.793:                                    ; preds = %land.end.790
  %522 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %cmp794 = icmp ne %struct.bitmap_element_def* %522, null
  br i1 %cmp794, label %land.lhs.true.795, label %if.end.799

land.lhs.true.795:                                ; preds = %while.end.793
  %523 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %indx796 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %523, i32 0, i32 2
  %524 = load i32, i32* %indx796, align 4
  %525 = load i32, i32* %indx_780, align 4
  %cmp797 = icmp ne i32 %524, %525
  br i1 %cmp797, label %if.then.798, label %if.end.799

if.then.798:                                      ; preds = %land.lhs.true.795
  store i32 0, i32* %bit_num_782, align 4
  store i32 0, i32* %word_num_784, align 4
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.798, %land.lhs.true.795, %while.end.793
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.854, %if.end.799
  %526 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %cmp801 = icmp ne %struct.bitmap_element_def* %526, null
  br i1 %cmp801, label %for.body.802, label %for.end.856

for.body.802:                                     ; preds = %for.cond.800
  br label %for.cond.803

for.cond.803:                                     ; preds = %for.inc.851, %for.body.802
  %527 = load i32, i32* %word_num_784, align 4
  %cmp804 = icmp ult i32 %527, 2
  br i1 %cmp804, label %for.body.805, label %for.end.853

for.body.805:                                     ; preds = %for.cond.803
  %528 = load i32, i32* %word_num_784, align 4
  %idxprom808 = zext i32 %528 to i64
  %529 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %bits809 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %529, i32 0, i32 3
  %arrayidx810 = getelementptr inbounds [2 x i64], [2 x i64]* %bits809, i32 0, i64 %idxprom808
  %530 = load i64, i64* %arrayidx810, align 8
  store i64 %530, i64* %word_807, align 8
  %531 = load i64, i64* %word_807, align 8
  %cmp811 = icmp ne i64 %531, 0
  br i1 %cmp811, label %if.then.812, label %if.end.850

if.then.812:                                      ; preds = %for.body.805
  br label %for.cond.813

for.cond.813:                                     ; preds = %for.inc.847, %if.then.812
  %532 = load i32, i32* %bit_num_782, align 4
  %cmp814 = icmp ult i32 %532, 64
  br i1 %cmp814, label %for.body.815, label %for.end.849

for.body.815:                                     ; preds = %for.cond.813
  %533 = load i32, i32* %bit_num_782, align 4
  %sh_prom818 = zext i32 %533 to i64
  %shl819 = shl i64 1, %sh_prom818
  store i64 %shl819, i64* %mask_817, align 8
  %534 = load i64, i64* %word_807, align 8
  %535 = load i64, i64* %mask_817, align 8
  %and820 = and i64 %534, %535
  %cmp821 = icmp ne i64 %and820, 0
  br i1 %cmp821, label %if.then.822, label %if.end.846

if.then.822:                                      ; preds = %for.body.815
  %536 = load i64, i64* %mask_817, align 8
  %neg823 = xor i64 %536, -1
  %537 = load i64, i64* %word_807, align 8
  %and824 = and i64 %537, %neg823
  store i64 %and824, i64* %word_807, align 8
  %538 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %indx825 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %538, i32 0, i32 2
  %539 = load i32, i32* %indx825, align 4
  %mul826 = mul i32 %539, 128
  %540 = load i32, i32* %word_num_784, align 4
  %mul827 = mul i32 %540, 64
  %add828 = add i32 %mul826, %mul827
  %541 = load i32, i32* %bit_num_782, align 4
  %add829 = add i32 %add828, %541
  store i32 %add829, i32* %i, align 4
  %542 = load i32, i32* %i, align 4
  %idxprom832 = sext i32 %542 to i64
  %543 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last833 = getelementptr inbounds %struct.deps, %struct.deps* %543, i32 0, i32 11
  %544 = load %struct.deps_reg*, %struct.deps_reg** %reg_last833, align 8
  %arrayidx834 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %544, i64 %idxprom832
  store %struct.deps_reg* %arrayidx834, %struct.deps_reg** %reg_last831, align 8
  %545 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %546 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %sets835 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %546, i32 0, i32 1
  call void @add_dependence_list_and_free(%struct.rtx_def* %545, %struct.rtx_def** %sets835, i32 15)
  %547 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %548 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %clobbers836 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %548, i32 0, i32 2
  call void @add_dependence_list_and_free(%struct.rtx_def* %547, %struct.rtx_def** %clobbers836, i32 15)
  %549 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %550 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %uses837 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %550, i32 0, i32 0
  call void @add_dependence_list_and_free(%struct.rtx_def* %549, %struct.rtx_def** %uses837, i32 14)
  %551 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %552 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %sets838 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %552, i32 0, i32 1
  %553 = load %struct.rtx_def*, %struct.rtx_def** %sets838, align 8
  %call839 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %551, %struct.rtx_def* %553)
  %554 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %sets840 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %554, i32 0, i32 1
  store %struct.rtx_def* %call839, %struct.rtx_def** %sets840, align 8
  %555 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %uses_length841 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %555, i32 0, i32 3
  store i32 0, i32* %uses_length841, align 4
  %556 = load %struct.deps_reg*, %struct.deps_reg** %reg_last831, align 8
  %clobbers_length842 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %556, i32 0, i32 4
  store i32 0, i32* %clobbers_length842, align 4
  %557 = load i64, i64* %word_807, align 8
  %cmp843 = icmp eq i64 %557, 0
  br i1 %cmp843, label %if.then.844, label %if.end.845

if.then.844:                                      ; preds = %if.then.822
  br label %for.end.849

if.end.845:                                       ; preds = %if.then.822
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %for.body.815
  br label %for.inc.847

for.inc.847:                                      ; preds = %if.end.846
  %558 = load i32, i32* %bit_num_782, align 4
  %inc848 = add i32 %558, 1
  store i32 %inc848, i32* %bit_num_782, align 4
  br label %for.cond.813

for.end.849:                                      ; preds = %if.then.844, %for.cond.813
  br label %if.end.850

if.end.850:                                       ; preds = %for.end.849, %for.body.805
  store i32 0, i32* %bit_num_782, align 4
  br label %for.inc.851

for.inc.851:                                      ; preds = %if.end.850
  %559 = load i32, i32* %word_num_784, align 4
  %inc852 = add i32 %559, 1
  store i32 %inc852, i32* %word_num_784, align 4
  br label %for.cond.803

for.end.853:                                      ; preds = %for.cond.803
  store i32 0, i32* %word_num_784, align 4
  br label %for.inc.854

for.inc.854:                                      ; preds = %for.end.853
  %560 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_777, align 8
  %next855 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %560, i32 0, i32 0
  %561 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next855, align 8
  store %struct.bitmap_element_def* %561, %struct.bitmap_element_def** %ptr_777, align 8
  br label %for.cond.800

for.end.856:                                      ; preds = %for.cond.800
  br label %do.end.857

do.end.857:                                       ; preds = %for.end.856
  br label %if.end.858

if.end.858:                                       ; preds = %do.end.857, %do.end.591
  %562 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use859 = getelementptr inbounds %struct.deps, %struct.deps* %562, i32 0, i32 12
  %563 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use860 = getelementptr inbounds %struct.deps, %struct.deps* %563, i32 0, i32 12
  %564 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %call861 = call i32 @bitmap_operation(%struct.bitmap_head_def* %reg_last_in_use859, %struct.bitmap_head_def* %reg_last_in_use860, %struct.bitmap_head_def* %564, i32 2)
  %565 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use862 = getelementptr inbounds %struct.deps, %struct.deps* %565, i32 0, i32 12
  %566 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use863 = getelementptr inbounds %struct.deps, %struct.deps* %566, i32 0, i32 12
  %567 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %call864 = call i32 @bitmap_operation(%struct.bitmap_head_def* %reg_last_in_use862, %struct.bitmap_head_def* %reg_last_in_use863, %struct.bitmap_head_def* %567, i32 2)
  %568 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use865 = getelementptr inbounds %struct.deps, %struct.deps* %568, i32 0, i32 12
  %569 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use866 = getelementptr inbounds %struct.deps, %struct.deps* %569, i32 0, i32 12
  %570 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %call867 = call i32 @bitmap_operation(%struct.bitmap_head_def* %reg_last_in_use865, %struct.bitmap_head_def* %reg_last_in_use866, %struct.bitmap_head_def* %570, i32 2)
  br label %if.end.868

if.end.868:                                       ; preds = %if.end.858, %for.end.338
  %571 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %571)
  %572 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %572)
  %573 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %573)
  %574 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %in_post_call_group_p = getelementptr inbounds %struct.deps, %struct.deps* %574, i32 0, i32 9
  %575 = load i8, i8* %in_post_call_group_p, align 1
  %tobool869 = trunc i8 %575 to i1
  br i1 %tobool869, label %if.then.870, label %if.end.962

if.then.870:                                      ; preds = %if.end.868
  %576 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %577 = bitcast %struct.rtx_def* %576 to i32*
  %bf.load874 = load i32, i32* %577, align 8
  %bf.clear875 = and i32 %bf.load874, 65535
  %idxprom876 = sext i32 %bf.clear875 to i64
  %arrayidx877 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom876
  %578 = load i8, i8* %arrayidx877, align 1
  %conv = sext i8 %578 to i32
  %cmp878 = icmp eq i32 %conv, 105
  br i1 %cmp878, label %cond.true, label %cond.false.895

cond.true:                                        ; preds = %if.then.870
  %579 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld880 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %579, i32 0, i32 1
  %arrayidx881 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld880, i32 0, i64 3
  %rtx882 = bitcast %union.rtunion_def* %arrayidx881 to %struct.rtx_def**
  %580 = load %struct.rtx_def*, %struct.rtx_def** %rtx882, align 8
  %581 = bitcast %struct.rtx_def* %580 to i32*
  %bf.load883 = load i32, i32* %581, align 8
  %bf.clear884 = and i32 %bf.load883, 65535
  %cmp885 = icmp eq i32 %bf.clear884, 47
  br i1 %cmp885, label %cond.true.887, label %cond.false

cond.true.887:                                    ; preds = %cond.true
  %582 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld888 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %582, i32 0, i32 1
  %arrayidx889 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld888, i32 0, i64 3
  %rtx890 = bitcast %union.rtunion_def* %arrayidx889 to %struct.rtx_def**
  %583 = load %struct.rtx_def*, %struct.rtx_def** %rtx890, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %584 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %585 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld891 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %arrayidx892 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld891, i32 0, i64 3
  %rtx893 = bitcast %union.rtunion_def* %arrayidx892 to %struct.rtx_def**
  %586 = load %struct.rtx_def*, %struct.rtx_def** %rtx893, align 8
  %call894 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %584, %struct.rtx_def* %586)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.887
  %cond = phi %struct.rtx_def* [ %583, %cond.true.887 ], [ %call894, %cond.false ]
  br label %cond.end.896

cond.false.895:                                   ; preds = %if.then.870
  br label %cond.end.896

cond.end.896:                                     ; preds = %cond.false.895, %cond.end
  %cond897 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.895 ]
  store %struct.rtx_def* %cond897, %struct.rtx_def** %set, align 8
  %587 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp900 = icmp eq %struct.rtx_def* %587, null
  br i1 %cmp900, label %if.then.902, label %if.end.903

if.then.902:                                      ; preds = %cond.end.896
  br label %end_call_group

if.end.903:                                       ; preds = %cond.end.896
  %588 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %588, i32 0, i32 1
  %arrayidx905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld904, i32 0, i64 0
  %rtx906 = bitcast %union.rtunion_def* %arrayidx905 to %struct.rtx_def**
  %589 = load %struct.rtx_def*, %struct.rtx_def** %rtx906, align 8
  store %struct.rtx_def* %589, %struct.rtx_def** %tmp872, align 8
  %590 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %591 = bitcast %struct.rtx_def* %590 to i32*
  %bf.load907 = load i32, i32* %591, align 8
  %bf.clear908 = and i32 %bf.load907, 65535
  %cmp909 = icmp eq i32 %bf.clear908, 63
  br i1 %cmp909, label %if.then.911, label %if.end.915

if.then.911:                                      ; preds = %if.end.903
  %592 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %fld912 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %592, i32 0, i32 1
  %arrayidx913 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld912, i32 0, i64 0
  %rtx914 = bitcast %union.rtunion_def* %arrayidx913 to %struct.rtx_def**
  %593 = load %struct.rtx_def*, %struct.rtx_def** %rtx914, align 8
  store %struct.rtx_def* %593, %struct.rtx_def** %tmp872, align 8
  br label %if.end.915

if.end.915:                                       ; preds = %if.then.911, %if.end.903
  %594 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %595 = bitcast %struct.rtx_def* %594 to i32*
  %bf.load916 = load i32, i32* %595, align 8
  %bf.clear917 = and i32 %bf.load916, 65535
  %cmp918 = icmp eq i32 %bf.clear917, 61
  br i1 %cmp918, label %if.then.920, label %if.else.923

if.then.920:                                      ; preds = %if.end.915
  %596 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %fld921 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %596, i32 0, i32 1
  %arrayidx922 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld921, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx922 to i32*
  %597 = load i32, i32* %rtuint, align 4
  store i32 %597, i32* %dest_regno, align 4
  br label %if.end.924

if.else.923:                                      ; preds = %if.end.915
  br label %end_call_group

if.end.924:                                       ; preds = %if.then.920
  %598 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld925 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %598, i32 0, i32 1
  %arrayidx926 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld925, i32 0, i64 1
  %rtx927 = bitcast %union.rtunion_def* %arrayidx926 to %struct.rtx_def**
  %599 = load %struct.rtx_def*, %struct.rtx_def** %rtx927, align 8
  store %struct.rtx_def* %599, %struct.rtx_def** %tmp872, align 8
  %600 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %601 = bitcast %struct.rtx_def* %600 to i32*
  %bf.load928 = load i32, i32* %601, align 8
  %bf.clear929 = and i32 %bf.load928, 65535
  %cmp930 = icmp eq i32 %bf.clear929, 63
  br i1 %cmp930, label %if.then.932, label %if.end.936

if.then.932:                                      ; preds = %if.end.924
  %602 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %fld933 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %602, i32 0, i32 1
  %arrayidx934 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld933, i32 0, i64 0
  %rtx935 = bitcast %union.rtunion_def* %arrayidx934 to %struct.rtx_def**
  %603 = load %struct.rtx_def*, %struct.rtx_def** %rtx935, align 8
  store %struct.rtx_def* %603, %struct.rtx_def** %tmp872, align 8
  br label %if.end.936

if.end.936:                                       ; preds = %if.then.932, %if.end.924
  %604 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %605 = bitcast %struct.rtx_def* %604 to i32*
  %bf.load937 = load i32, i32* %605, align 8
  %bf.clear938 = and i32 %bf.load937, 65535
  %cmp939 = icmp eq i32 %bf.clear938, 61
  br i1 %cmp939, label %if.then.941, label %if.else.945

if.then.941:                                      ; preds = %if.end.936
  %606 = load %struct.rtx_def*, %struct.rtx_def** %tmp872, align 8
  %fld942 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %606, i32 0, i32 1
  %arrayidx943 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld942, i32 0, i64 0
  %rtuint944 = bitcast %union.rtunion_def* %arrayidx943 to i32*
  %607 = load i32, i32* %rtuint944, align 4
  store i32 %607, i32* %src_regno, align 4
  br label %if.end.946

if.else.945:                                      ; preds = %if.end.936
  br label %end_call_group

if.end.946:                                       ; preds = %if.then.941
  %608 = load i32, i32* %src_regno, align 4
  %cmp947 = icmp slt i32 %608, 53
  br i1 %cmp947, label %if.then.952, label %lor.lhs.false.949

lor.lhs.false.949:                                ; preds = %if.end.946
  %609 = load i32, i32* %dest_regno, align 4
  %cmp950 = icmp slt i32 %609, 53
  br i1 %cmp950, label %if.then.952, label %if.else.959

if.then.952:                                      ; preds = %lor.lhs.false.949, %if.end.946
  %610 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @set_sched_group_p(%struct.rtx_def* %610)
  %611 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld953 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %611, i32 0, i32 1
  %arrayidx954 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld953, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx954 to i32*
  %612 = load i32, i32* %rtint, align 4
  %idxprom955 = sext i32 %612 to i64
  %613 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx956 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %613, i64 %idxprom955
  %cant_move = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx956, i32 0, i32 11
  %bf.load957 = load i8, i8* %cant_move, align 2
  %bf.clear958 = and i8 %bf.load957, -2
  %bf.set = or i8 %bf.clear958, 1
  store i8 %bf.set, i8* %cant_move, align 2
  br label %if.end.961

if.else.959:                                      ; preds = %lor.lhs.false.949
  br label %end_call_group

end_call_group:                                   ; preds = %if.else.959, %if.else.945, %if.else.923, %if.then.902
  %614 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %in_post_call_group_p960 = getelementptr inbounds %struct.deps, %struct.deps* %614, i32 0, i32 9
  store i8 0, i8* %in_post_call_group_p960, align 1
  br label %if.end.961

if.end.961:                                       ; preds = %end_call_group, %if.then.952
  br label %if.end.962

if.end.962:                                       ; preds = %if.end.961, %if.end.868
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @add_dependence_list_and_free(%struct.rtx_def* %insn, %struct.rtx_def** %listp, i32 %dep_type) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %listp.addr = alloca %struct.rtx_def**, align 8
  %dep_type.addr = alloca i32, align 4
  %list = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %listp, %struct.rtx_def*** %listp.addr, align 8
  store i32 %dep_type, i32* %dep_type.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %list, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %listp.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %9 = load i32, i32* %dep_type.addr, align 4
  call void @add_dependence(%struct.rtx_def* %6, %struct.rtx_def* %8, i32 %9)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  call void @free_INSN_LIST_node(%struct.rtx_def* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare void @cselib_process_insn(%struct.rtx_def*) #1

declare void @cselib_finish() #1

; Function Attrs: nounwind uwtable
define void @compute_forward_dependences(%struct.rtx_def* %head, %struct.rtx_def* %tail) #0 {
entry:
  %head.addr = alloca %struct.rtx_def*, align 8
  %tail.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %next_tail = alloca %struct.rtx_def*, align 8
  %dep_type = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %new_link = alloca %struct.rtx_def*, align 8
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

for.cond:                                         ; preds = %for.inc.43, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %next_tail, align 8
  %cmp = icmp ne %struct.rtx_def* %3, %4
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.43

if.end:                                           ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @group_leader(%struct.rtx_def* %8)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 5
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %link, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.7
  %12 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %call12 = call %struct.rtx_def* @group_leader(%struct.rtx_def* %13)
  store %struct.rtx_def* %call12, %struct.rtx_def** %x, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %cmp16 = icmp ne %struct.rtx_def* %14, %16
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.8
  br label %for.inc

if.end.19:                                        ; preds = %for.body.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %19 = load i32, i32* %rtint, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx23 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %20, i64 %idxprom22
  %depend = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx23, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %depend, align 8
  %call24 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %17, %struct.rtx_def* %21)
  store %struct.rtx_def* %call24, %struct.rtx_def** %new_link, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load25 = load i32, i32* %23, align 8
  %bf.lshr = lshr i32 %bf.load25, 16
  %bf.clear26 = and i32 %bf.lshr, 255
  store i32 %bf.clear26, i32* %dep_type, align 4
  %24 = load i32, i32* %dep_type, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %new_link, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load27 = load i32, i32* %26, align 8
  %bf.value = and i32 %24, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear28 = and i32 %bf.load27, -16711681
  %bf.set = or i32 %bf.clear28, %bf.shl
  store i32 %bf.set, i32* %26, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %new_link, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %29 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx33 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %30, i64 %idxprom32
  %depend34 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx33, i32 0, i32 0
  store %struct.rtx_def* %27, %struct.rtx_def** %depend34, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %32 = load i32, i32* %rtint37, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx39 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %33, i64 %idxprom38
  %dep_count = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx39, i32 0, i32 4
  %34 = load i32, i32* %dep_count, align 4
  %add = add nsw i32 %34, 1
  store i32 %add, i32* %dep_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.19, %if.then.18
  %35 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %link, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end, %if.then
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 2
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @group_leader(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %prev, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 28
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp ne i32 %bf.clear3, 36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define void @init_deps(%struct.deps* %deps) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %max_reg = alloca i32, align 4
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 @max_reg_num()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 53, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %max_reg, align 4
  %1 = load i32, i32* %max_reg, align 4
  %2 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %max_reg1 = getelementptr inbounds %struct.deps, %struct.deps* %2, i32 0, i32 10
  store i32 %1, i32* %max_reg1, align 4
  %3 = load i32, i32* %max_reg, align 4
  %conv = sext i32 %3 to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv, i64 32)
  %4 = bitcast i8* %call2 to %struct.deps_reg*
  %5 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 11
  store %struct.deps_reg* %4, %struct.deps_reg** %reg_last, align 8
  %6 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use = getelementptr inbounds %struct.deps, %struct.deps* %6, i32 0, i32 12
  %call3 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %reg_last_in_use)
  %7 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %7, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %pending_read_insns, align 8
  %8 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %8, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %pending_read_mems, align 8
  %9 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %9, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %pending_write_insns, align 8
  %10 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %10, i32 0, i32 3
  store %struct.rtx_def* null, %struct.rtx_def** %pending_write_mems, align 8
  %11 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_lists_length = getelementptr inbounds %struct.deps, %struct.deps* %11, i32 0, i32 4
  store i32 0, i32* %pending_lists_length, align 4
  %12 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_flush_length = getelementptr inbounds %struct.deps, %struct.deps* %12, i32 0, i32 5
  store i32 0, i32* %pending_flush_length, align 4
  %13 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %13, i32 0, i32 6
  store %struct.rtx_def* null, %struct.rtx_def** %last_pending_memory_flush, align 8
  %14 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_function_call = getelementptr inbounds %struct.deps, %struct.deps* %14, i32 0, i32 7
  store %struct.rtx_def* null, %struct.rtx_def** %last_function_call, align 8
  %15 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %sched_before_next_call = getelementptr inbounds %struct.deps, %struct.deps* %15, i32 0, i32 8
  store %struct.rtx_def* null, %struct.rtx_def** %sched_before_next_call, align 8
  %16 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %in_post_call_group_p = getelementptr inbounds %struct.deps, %struct.deps* %16, i32 0, i32 9
  store i8 0, i8* %in_post_call_group_p, align 1
  ret void
}

declare i32 @max_reg_num() #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define void @free_deps(%struct.deps* %deps) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %reg_last = alloca %struct.deps_reg*, align 8
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  %0 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %0, i32 0, i32 0
  call void @free_INSN_LIST_list(%struct.rtx_def** %pending_read_insns)
  %1 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %1, i32 0, i32 1
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_read_mems)
  %2 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %2, i32 0, i32 2
  call void @free_INSN_LIST_list(%struct.rtx_def** %pending_write_insns)
  %3 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 3
  call void @free_EXPR_LIST_list(%struct.rtx_def** %pending_write_mems)
  %4 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %4, i32 0, i32 6
  call void @free_INSN_LIST_list(%struct.rtx_def** %last_pending_memory_flush)
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 12
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %reg_last_in_use, i32 0, i32 0
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %7, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i32 0, i32 2
  %9 = load i32, i32* %indx, align 4
  %10 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i32 0, i32 0
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %13, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i32 0, i32 2
  %16 = load i32, i32* %indx3, align 4
  %17 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %16, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %if.end
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp5 = icmp ne %struct.bitmap_element_def* %18, null
  br i1 %cmp5, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.28, %for.body
  %19 = load i32, i32* %word_num_, align 4
  %cmp7 = icmp ult i32 %19, 2
  br i1 %cmp7, label %for.body.8, label %for.end.30

for.body.8:                                       ; preds = %for.cond.6
  %20 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %20 to i64
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %22 = load i64, i64* %arrayidx, align 8
  store i64 %22, i64* %word_, align 8
  %23 = load i64, i64* %word_, align 8
  %cmp9 = icmp ne i64 %23, 0
  br i1 %cmp9, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %for.body.8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %24 = load i32, i32* %bit_num_, align 4
  %cmp12 = icmp ult i32 %24, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %25 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %25 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %26 = load i64, i64* %word_, align 8
  %27 = load i64, i64* %mask_, align 8
  %and = and i64 %26, %27
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %for.body.13
  %28 = load i64, i64* %mask_, align 8
  %neg = xor i64 %28, -1
  %29 = load i64, i64* %word_, align 8
  %and16 = and i64 %29, %neg
  store i64 %and16, i64* %word_, align 8
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i32 0, i32 2
  %31 = load i32, i32* %indx17, align 4
  %mul = mul i32 %31, 128
  %32 = load i32, i32* %word_num_, align 4
  %mul18 = mul i32 %32, 64
  %add = add i32 %mul, %mul18
  %33 = load i32, i32* %bit_num_, align 4
  %add19 = add i32 %add, %33
  store i32 %add19, i32* %i, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last21 = getelementptr inbounds %struct.deps, %struct.deps* %35, i32 0, i32 11
  %36 = load %struct.deps_reg*, %struct.deps_reg** %reg_last21, align 8
  %arrayidx22 = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %36, i64 %idxprom20
  store %struct.deps_reg* %arrayidx22, %struct.deps_reg** %reg_last, align 8
  %37 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %uses = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %37, i32 0, i32 0
  call void @free_INSN_LIST_list(%struct.rtx_def** %uses)
  %38 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %sets = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %38, i32 0, i32 1
  call void @free_INSN_LIST_list(%struct.rtx_def** %sets)
  %39 = load %struct.deps_reg*, %struct.deps_reg** %reg_last, align 8
  %clobbers = getelementptr inbounds %struct.deps_reg, %struct.deps_reg* %39, i32 0, i32 2
  call void @free_INSN_LIST_list(%struct.rtx_def** %clobbers)
  %40 = load i64, i64* %word_, align 8
  %cmp23 = icmp eq i64 %40, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.15
  br label %for.end

if.end.25:                                        ; preds = %if.then.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %41 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.24, %for.cond.11
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %for.body.8
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %42 = load i32, i32* %word_num_, align 4
  %inc29 = add i32 %42, 1
  store i32 %inc29, i32* %word_num_, align 4
  br label %for.cond.6

for.end.30:                                       ; preds = %for.cond.6
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.30
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next32 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i32 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next32, align 8
  store %struct.bitmap_element_def* %44, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.33
  %45 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last_in_use34 = getelementptr inbounds %struct.deps, %struct.deps* %45, i32 0, i32 12
  call void @bitmap_clear(%struct.bitmap_head_def* %reg_last_in_use34)
  %46 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %reg_last35 = getelementptr inbounds %struct.deps, %struct.deps* %46, i32 0, i32 11
  %47 = load %struct.deps_reg*, %struct.deps_reg** %reg_last35, align 8
  %48 = bitcast %struct.deps_reg* %47 to i8*
  call void @free(i8* %48) #5
  ret void
}

declare void @free_EXPR_LIST_list(%struct.rtx_def**) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @init_dependency_caches(i32 %luid) #0 {
entry:
  %luid.addr = alloca i32, align 4
  store i32 %luid, i32* %luid.addr, align 4
  %0 = load i32, i32* %luid.addr, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %div = sdiv i32 %0, %1
  %cmp = icmp sgt i32 %div, 500
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %luid.addr, align 4
  %3 = load i32, i32* %luid.addr, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %5 = load i32, i32* %luid.addr, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %4, i32 %5)
  %6 = load i32, i32* %luid.addr, align 4
  %7 = load i32, i32* %luid.addr, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %9 = load i32, i32* %luid.addr, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %8, i32 %9)
  %10 = load i32, i32* %luid.addr, align 4
  %11 = load i32, i32* %luid.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %10, i32 %11)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %13 = load i32, i32* %luid.addr, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define void @free_dependency_caches() #0 {
entry:
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %tobool = icmp ne %struct.simple_bitmap_def** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %2 = bitcast %struct.simple_bitmap_def** %1 to i8*
  call void @free(i8* %2) #5
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %4 = bitcast %struct.simple_bitmap_def** %3 to i8*
  call void @free(i8* %4) #5
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %6 = bitcast %struct.simple_bitmap_def** %5 to i8*
  call void @free(i8* %6) #5
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_deps_global() #0 {
entry:
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* @reg_pending_sets_head)
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %call1 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* @reg_pending_clobbers_head)
  store %struct.bitmap_head_def* %call1, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %call2 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* @reg_pending_uses_head)
  store %struct.bitmap_head_def* %call2, %struct.bitmap_head_def** @reg_pending_uses, align 8
  store i8 0, i8* @reg_pending_barrier, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @finish_deps_global() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %1)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @reg_pending_sets, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %tobool2 = icmp ne %struct.bitmap_head_def* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body.1
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %3)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.body.1
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %tobool7 = icmp ne %struct.bitmap_head_def* %4, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body.6
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %5)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @reg_pending_uses, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body.6
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  ret void
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reverse_condition(i32) #1

; Function Attrs: nounwind uwtable
define internal void @sched_analyze_2(%struct.deps* %deps, %struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %regno = alloca i32, align 4
  %i4 = alloca i32, align 4
  %u = alloca %struct.rtx_def*, align 8
  %pending = alloca %struct.rtx_def*, align 8
  %pending_mem = alloca %struct.rtx_def*, align 8
  %t = alloca %struct.rtx_def*, align 8
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.287

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 61, label %sw.bb.1
    i32 66, label %sw.bb.112
    i32 52, label %sw.bb.198
    i32 41, label %sw.bb.199
    i32 40, label %sw.bb.199
    i32 43, label %sw.bb.199
    i32 96, label %sw.bb.226
    i32 98, label %sw.bb.226
    i32 97, label %sw.bb.226
    i32 99, label %sw.bb.226
    i32 101, label %sw.bb.230
    i32 100, label %sw.bb.230
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.287

sw.bb.1:                                          ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %regno, align 4
  %6 = load i32, i32* %regno, align 4
  %cmp2 = icmp slt i32 %6, 53
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb.1
  %7 = load i32, i32* %regno, align 4
  %cmp5 = icmp sge i32 %7, 8
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.3
  %8 = load i32, i32* %regno, align 4
  %cmp6 = icmp sle i32 %8, 15
  br i1 %cmp6, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.3
  %9 = load i32, i32* %regno, align 4
  %cmp7 = icmp sge i32 %9, 21
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %regno, align 4
  %cmp9 = icmp sle i32 %10, 28
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false
  %11 = load i32, i32* %regno, align 4
  %cmp11 = icmp sge i32 %11, 45
  br i1 %cmp11, label %land.lhs.true.12, label %lor.lhs.false.14

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %12 = load i32, i32* %regno, align 4
  %cmp13 = icmp sle i32 %12, 52
  br i1 %cmp13, label %cond.true, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %13 = load i32, i32* %regno, align 4
  %cmp15 = icmp sge i32 %13, 29
  br i1 %cmp15, label %land.lhs.true.16, label %cond.false

land.lhs.true.16:                                 ; preds = %lor.lhs.false.14
  %14 = load i32, i32* %regno, align 4
  %cmp17 = icmp sle i32 %14, 36
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load18 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load18, 16
  %bf.clear19 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear19 to i64
  %arrayidx20 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %17, 5
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load22 = load i32, i32* %19, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %idxprom25 = sext i32 %bf.clear24 to i64
  %arrayidx26 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom25
  %20 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %20, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %21 = phi i1 [ true, %cond.true ], [ %cmp27, %lor.rhs ]
  %cond = select i1 %21, i32 2, i32 1
  br label %cond.end.58

cond.false:                                       ; preds = %land.lhs.true.16, %lor.lhs.false.14
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load28 = load i32, i32* %23, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 16
  %bf.clear30 = and i32 %bf.lshr29, 255
  %cmp31 = icmp eq i32 %bf.clear30, 18
  br i1 %cmp31, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.false
  %24 = load i32, i32* @target_flags, align 4
  %and = and i32 %24, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond33 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.56

cond.false.34:                                    ; preds = %cond.false
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load35 = load i32, i32* %26, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 16
  %bf.clear37 = and i32 %bf.lshr36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 24
  br i1 %cmp38, label %cond.true.39, label %cond.false.43

cond.true.39:                                     ; preds = %cond.false.34
  %27 = load i32, i32* @target_flags, align 4
  %and40 = and i32 %27, 33554432
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 4, i32 6
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false.34
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load44 = load i32, i32* %29, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 16
  %bf.clear46 = and i32 %bf.lshr45, 255
  %idxprom47 = sext i32 %bf.clear46 to i64
  %arrayidx48 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom47
  %30 = load i8, i8* %arrayidx48, align 1
  %conv = zext i8 %30 to i32
  %31 = load i32, i32* @target_flags, align 4
  %and49 = and i32 %31, 33554432
  %tobool50 = icmp ne i32 %and49, 0
  %cond51 = select i1 %tobool50, i32 8, i32 4
  %add = add nsw i32 %conv, %cond51
  %sub = sub nsw i32 %add, 1
  %32 = load i32, i32* @target_flags, align 4
  %and52 = and i32 %32, 33554432
  %tobool53 = icmp ne i32 %and52, 0
  %cond54 = select i1 %tobool53, i32 8, i32 4
  %div = sdiv i32 %sub, %cond54
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.39
  %cond55 = phi i32 [ %cond42, %cond.true.39 ], [ %div, %cond.false.43 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end, %cond.true.32
  %cond57 = phi i32 [ %cond33, %cond.true.32 ], [ %cond55, %cond.end ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %lor.end
  %cond59 = phi i32 [ %cond, %lor.end ], [ %cond57, %cond.end.56 ]
  store i32 %cond59, i32* %i4, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.58
  %33 = load i32, i32* %i4, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i4, align 4
  %cmp60 = icmp sge i32 %dec, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %35 = load i32, i32* %regno, align 4
  %36 = load i32, i32* %i4, align 4
  %add62 = add nsw i32 %35, %36
  call void @bitmap_set_bit(%struct.bitmap_head_def* %34, i32 %add62)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.111

if.else:                                          ; preds = %sw.bb.1
  %37 = load i32, i32* %regno, align 4
  %38 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %max_reg = getelementptr inbounds %struct.deps, %struct.deps* %38, i32 0, i32 10
  %39 = load i32, i32* %max_reg, align 4
  %cmp63 = icmp sge i32 %37, %39
  br i1 %cmp63, label %if.then.65, label %if.else.82

if.then.65:                                       ; preds = %if.else
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load68 = load i32, i32* %42, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp ne i32 %bf.clear69, 48
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.81

land.lhs.true.72:                                 ; preds = %if.then.65
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 3
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load76 = load i32, i32* %45, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp ne i32 %bf.clear77, 49
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.72
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 758, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.sched_analyze_2, i32 0, i32 0)) #4
  unreachable

if.end.81:                                        ; preds = %land.lhs.true.72, %if.then.65
  br label %if.end.110

if.else.82:                                       ; preds = %if.else
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_uses, align 8
  %47 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %46, i32 %47)
  %48 = load i32, i32* @reload_completed, align 4
  %tobool83 = icmp ne i32 %48, 0
  br i1 %tobool83, label %if.end.102, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %if.else.82
  %49 = load i32, i32* %regno, align 4
  %idxprom85 = sext i32 %49 to i64
  %50 = load i8*, i8** @reg_known_equiv_p, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %50, i64 %idxprom85
  %51 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %51 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.end.102

land.lhs.true.89:                                 ; preds = %land.lhs.true.84
  %52 = load i32, i32* %regno, align 4
  %idxprom90 = sext i32 %52 to i64
  %53 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx91 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %53, i64 %idxprom90
  %54 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx91, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load92 = load i32, i32* %55, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 66
  br i1 %cmp94, label %if.then.96, label %if.end.102

if.then.96:                                       ; preds = %land.lhs.true.89
  %56 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %57 = load i32, i32* %regno, align 4
  %idxprom97 = sext i32 %57 to i64
  %58 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx98 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %58, i64 %idxprom97
  %59 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx98, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %56, %struct.rtx_def* %60, %struct.rtx_def* %61)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.96, %land.lhs.true.89, %land.lhs.true.84, %if.else.82
  %62 = load i32, i32* %regno, align 4
  %idxprom103 = sext i32 %62 to i64
  %63 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %63, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx104 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom103
  %64 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx104, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %64, i32 0, i32 8
  %65 = load i32, i32* %calls_crossed, align 4
  %cmp105 = icmp eq i32 %65, 0
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.102
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %67 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %sched_before_next_call = getelementptr inbounds %struct.deps, %struct.deps* %67, i32 0, i32 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %sched_before_next_call, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %66, %struct.rtx_def* %68)
  %69 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %sched_before_next_call108 = getelementptr inbounds %struct.deps, %struct.deps* %69, i32 0, i32 8
  store %struct.rtx_def* %call, %struct.rtx_def** %sched_before_next_call108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.102
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.81
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %while.end
  br label %for.end.287

sw.bb.112:                                        ; preds = %if.end
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %t, align 8
  %71 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib = getelementptr inbounds %struct.sched_info, %struct.sched_info* %71, i32 0, i32 12
  %bf.load113 = load i8, i8* %use_cselib, align 8
  %bf.lshr114 = lshr i8 %bf.load113, 1
  %bf.clear115 = and i8 %bf.lshr114, 1
  %bf.cast = zext i8 %bf.clear115 to i32
  %tobool116 = icmp ne i32 %bf.cast, 0
  br i1 %tobool116, label %if.then.117, label %if.end.133

if.then.117:                                      ; preds = %sw.bb.112
  %72 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %call118 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %72)
  store %struct.rtx_def* %call118, %struct.rtx_def** %t, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %75 = load i32, i32* @target_flags, align 4
  %and122 = and i32 %75, 33554432
  %tobool123 = icmp ne i32 %and122, 0
  %cond124 = select i1 %tobool123, i32 5, i32 4
  %call125 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %74, i32 %cond124, i32 1)
  %76 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %call129 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %77)
  %78 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  store %struct.rtx_def* %call129, %struct.rtx_def** %rtx132, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.117, %sw.bb.112
  %79 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %79, i32 0, i32 0
  %80 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_insns, align 8
  store %struct.rtx_def* %80, %struct.rtx_def** %pending, align 8
  %81 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %81, i32 0, i32 1
  %82 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_mems, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.134

while.cond.134:                                   ; preds = %if.end.146, %if.end.133
  %83 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool135 = icmp ne %struct.rtx_def* %83, null
  br i1 %tobool135, label %while.body.136, label %while.end.153

while.body.136:                                   ; preds = %while.cond.134
  %84 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx139, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %call140 = call i32 @read_dependence(%struct.rtx_def* %85, %struct.rtx_def* %86)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %while.body.136
  %87 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  call void @add_dependence(%struct.rtx_def* %87, %struct.rtx_def* %89, i32 14)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.142, %while.body.136
  %90 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 1
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx149, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %pending, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 1
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.134

while.end.153:                                    ; preds = %while.cond.134
  %94 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %94, i32 0, i32 2
  %95 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_insns, align 8
  store %struct.rtx_def* %95, %struct.rtx_def** %pending, align 8
  %96 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %96, i32 0, i32 3
  %97 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_mems, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.154

while.cond.154:                                   ; preds = %if.end.166, %while.end.153
  %98 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool155 = icmp ne %struct.rtx_def* %98, null
  br i1 %tobool155, label %while.body.156, label %while.end.173

while.body.156:                                   ; preds = %while.cond.154
  %99 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 0
  %rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx159, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %call160 = call i32 @true_dependence(%struct.rtx_def* %100, i32 0, %struct.rtx_def* %101, i32 (%struct.rtx_def*, i32)* @rtx_varies_p)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.166

if.then.162:                                      ; preds = %while.body.156
  %102 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  call void @add_dependence(%struct.rtx_def* %102, %struct.rtx_def* %104, i32 0)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.162, %while.body.156
  %105 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 1
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %pending, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 1
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.154

while.end.173:                                    ; preds = %while.cond.154
  %109 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %109, i32 0, i32 6
  %110 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.173
  %111 = load %struct.rtx_def*, %struct.rtx_def** %u, align 8
  %tobool174 = icmp ne %struct.rtx_def* %111, null
  br i1 %tobool174, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %112 = load %struct.rtx_def*, %struct.rtx_def** %u, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load178 = load i32, i32* %114, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp ne i32 %bf.clear179, 33
  br i1 %cmp180, label %if.then.185, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %for.body
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call183 = call i32 @deps_may_trap_p(%struct.rtx_def* %115)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %lor.lhs.false.182, %for.body
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %u, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  call void @add_dependence(%struct.rtx_def* %116, %struct.rtx_def* %118, i32 14)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %lor.lhs.false.182
  br label %for.inc

for.inc:                                          ; preds = %if.end.189
  %119 = load %struct.rtx_def*, %struct.rtx_def** %u, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 1
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  store %struct.rtx_def* %120, %struct.rtx_def** %u, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %121 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %122 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns193 = getelementptr inbounds %struct.deps, %struct.deps* %122, i32 0, i32 0
  %123 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems194 = getelementptr inbounds %struct.deps, %struct.deps* %123, i32 0, i32 1
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @add_insn_mem_dependence(%struct.deps* %121, %struct.rtx_def** %pending_read_insns193, %struct.rtx_def** %pending_read_mems194, %struct.rtx_def* %124, %struct.rtx_def* %125)
  %126 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 0
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %126, %struct.rtx_def* %128, %struct.rtx_def* %129)
  br label %for.end.287

sw.bb.198:                                        ; preds = %if.end
  %130 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @flush_pending_lists(%struct.deps* %130, %struct.rtx_def* %131, i32 1, i32 0)
  br label %sw.epilog

sw.bb.199:                                        ; preds = %if.end, %if.end, %if.end
  %132 = load i32, i32* %code, align 4
  %cmp200 = icmp ne i32 %132, 41
  br i1 %cmp200, label %if.then.207, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %sw.bb.199
  %133 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load203 = load i32, i32* %134, align 8
  %bf.lshr204 = lshr i32 %bf.load203, 27
  %bf.clear205 = and i32 %bf.lshr204, 1
  %tobool206 = icmp ne i32 %bf.clear205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %lor.lhs.false.202, %sw.bb.199
  store i8 1, i8* @reg_pending_barrier, align 1
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.207, %lor.lhs.false.202
  %135 = load i32, i32* %code, align 4
  %cmp209 = icmp eq i32 %135, 41
  br i1 %cmp209, label %if.then.211, label %if.end.225

if.then.211:                                      ; preds = %if.end.208
  store i32 0, i32* %j, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.223, %if.then.211
  %136 = load i32, i32* %j, align 4
  %137 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtvec_def**
  %138 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %138, i32 0, i32 0
  %139 = load i32, i32* %num_elem, align 4
  %cmp215 = icmp slt i32 %136, %139
  br i1 %cmp215, label %for.body.217, label %for.end.224

for.body.217:                                     ; preds = %for.cond.212
  %140 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %141 = load i32, i32* %j, align 4
  %idxprom218 = sext i32 %141 to i64
  %142 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 3
  %rtvec221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtvec_def**
  %143 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec221, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %143, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom218
  %144 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx222, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %140, %struct.rtx_def* %144, %struct.rtx_def* %145)
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.217
  %146 = load i32, i32* %j, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.212

for.end.224:                                      ; preds = %for.cond.212
  br label %for.end.287

if.end.225:                                       ; preds = %if.end.208
  br label %sw.epilog

sw.bb.226:                                        ; preds = %if.end, %if.end, %if.end, %if.end
  %147 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 0
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %147, %struct.rtx_def* %149, %struct.rtx_def* %150)
  %151 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %151, %struct.rtx_def* %152, %struct.rtx_def* %153)
  br label %for.end.287

sw.bb.230:                                        ; preds = %if.end, %if.end
  %154 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %154, %struct.rtx_def* %156, %struct.rtx_def* %157)
  %158 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 1
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx236, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %158, %struct.rtx_def* %160, %struct.rtx_def* %161)
  %162 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %163 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %164 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %162, %struct.rtx_def* %163, %struct.rtx_def* %164)
  br label %for.end.287

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.225, %sw.bb.198
  %165 = load i32, i32* %code, align 4
  %idxprom237 = sext i32 %165 to i64
  %arrayidx238 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom237
  %166 = load i8*, i8** %arrayidx238, align 8
  store i8* %166, i8** %fmt, align 8
  %167 = load i32, i32* %code, align 4
  %idxprom239 = sext i32 %167 to i64
  %arrayidx240 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom239
  %168 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %168 to i32
  %sub242 = sub nsw i32 %conv241, 1
  store i32 %sub242, i32* %i, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.285, %sw.epilog
  %169 = load i32, i32* %i, align 4
  %cmp244 = icmp sge i32 %169, 0
  br i1 %cmp244, label %for.body.246, label %for.end.287

for.body.246:                                     ; preds = %for.cond.243
  %170 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %170 to i64
  %171 = load i8*, i8** %fmt, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %171, i64 %idxprom247
  %172 = load i8, i8* %arrayidx248, align 1
  %conv249 = sext i8 %172 to i32
  %cmp250 = icmp eq i32 %conv249, 101
  br i1 %cmp250, label %if.then.252, label %if.else.257

if.then.252:                                      ; preds = %for.body.246
  %173 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %174 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %174 to i64
  %175 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 %idxprom253
  %rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx256, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %173, %struct.rtx_def* %176, %struct.rtx_def* %177)
  br label %if.end.284

if.else.257:                                      ; preds = %for.body.246
  %178 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %178 to i64
  %179 = load i8*, i8** %fmt, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %179, i64 %idxprom258
  %180 = load i8, i8* %arrayidx259, align 1
  %conv260 = sext i8 %180 to i32
  %cmp261 = icmp eq i32 %conv260, 69
  br i1 %cmp261, label %if.then.263, label %if.end.283

if.then.263:                                      ; preds = %if.else.257
  store i32 0, i32* %j, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.280, %if.then.263
  %181 = load i32, i32* %j, align 4
  %182 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %182 to i64
  %183 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 %idxprom265
  %rtvec268 = bitcast %union.rtunion_def* %arrayidx267 to %struct.rtvec_def**
  %184 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec268, align 8
  %num_elem269 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %184, i32 0, i32 0
  %185 = load i32, i32* %num_elem269, align 4
  %cmp270 = icmp slt i32 %181, %185
  br i1 %cmp270, label %for.body.272, label %for.end.282

for.body.272:                                     ; preds = %for.cond.264
  %186 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %187 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %187 to i64
  %188 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %188 to i64
  %189 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 %idxprom274
  %rtvec277 = bitcast %union.rtunion_def* %arrayidx276 to %struct.rtvec_def**
  %190 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec277, align 8
  %elem278 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %190, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem278, i32 0, i64 %idxprom273
  %191 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx279, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %186, %struct.rtx_def* %191, %struct.rtx_def* %192)
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.body.272
  %193 = load i32, i32* %j, align 4
  %inc281 = add nsw i32 %193, 1
  store i32 %inc281, i32* %j, align 4
  br label %for.cond.264

for.end.282:                                      ; preds = %for.cond.264
  br label %if.end.283

if.end.283:                                       ; preds = %for.end.282, %if.else.257
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.252
  br label %for.inc.285

for.inc.285:                                      ; preds = %if.end.284
  %194 = load i32, i32* %i, align 4
  %dec286 = add nsw i32 %194, -1
  store i32 %dec286, i32* %i, align 4
  br label %for.cond.243

for.end.287:                                      ; preds = %if.then, %sw.bb, %if.end.111, %for.end, %for.end.224, %sw.bb.226, %sw.bb.230, %for.cond.243
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sched_analyze_1(%struct.deps* %deps, %struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %deps.addr = alloca %struct.deps*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %i75 = alloca i32, align 4
  %t = alloca %struct.rtx_def*, align 8
  %pending = alloca %struct.rtx_def*, align 8
  %pending_mem = alloca %struct.rtx_def*, align 8
  store %struct.deps* %deps, %struct.deps** %deps.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %dest, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.297

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 39
  br i1 %cmp3, label %if.then.4, label %if.end.35

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtvec10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtvec_def**
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec10, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %cmp15 = icmp ne %struct.rtx_def* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %for.body
  %16 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtvec20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec20, align 8
  %elem21 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem21, i32 0, i64 %idxprom17
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %21)
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_1(%struct.deps* %16, %struct.rtx_def* %call, %struct.rtx_def* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load27 = load i32, i32* %25, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 47
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.end
  %26 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %26, %struct.rtx_def* %28, %struct.rtx_def* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %for.end
  br label %if.end.297

if.end.35:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.end.35
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load36 = load i32, i32* %31, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 64
  br i1 %cmp38, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load39 = load i32, i32* %33, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 63
  br i1 %cmp41, label %lor.end, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load43 = load i32, i32* %35, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 133
  br i1 %cmp45, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.42
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load46 = load i32, i32* %37, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 132
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.42, %lor.lhs.false, %while.cond
  %38 = phi i1 [ true, %lor.lhs.false.42 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp48, %lor.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %39 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load49 = load i32, i32* %40, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 133
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %while.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load53 = load i32, i32* %42, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 132
  br i1 %cmp55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %lor.lhs.false.52, %while.body
  %43 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %43, %struct.rtx_def* %45, %struct.rtx_def* %46)
  %47 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 2
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %47, %struct.rtx_def* %49, %struct.rtx_def* %50)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.56, %lor.lhs.false.52
  %51 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %53 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load67 = load i32, i32* %54, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 61
  br i1 %cmp69, label %if.then.70, label %if.else.209

if.then.70:                                       ; preds = %while.end
  %55 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %56 = load i32, i32* %rtuint, align 4
  store i32 %56, i32* %regno, align 4
  %57 = load i32, i32* %regno, align 4
  %cmp73 = icmp slt i32 %57, 53
  br i1 %cmp73, label %if.then.74, label %if.else.154

if.then.74:                                       ; preds = %if.then.70
  %58 = load i32, i32* %regno, align 4
  %cmp76 = icmp sge i32 %58, 8
  br i1 %cmp76, label %land.lhs.true, label %lor.lhs.false.78

land.lhs.true:                                    ; preds = %if.then.74
  %59 = load i32, i32* %regno, align 4
  %cmp77 = icmp sle i32 %59, 15
  br i1 %cmp77, label %cond.true, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.lhs.true, %if.then.74
  %60 = load i32, i32* %regno, align 4
  %cmp79 = icmp sge i32 %60, 21
  br i1 %cmp79, label %land.lhs.true.80, label %lor.lhs.false.82

land.lhs.true.80:                                 ; preds = %lor.lhs.false.78
  %61 = load i32, i32* %regno, align 4
  %cmp81 = icmp sle i32 %61, 28
  br i1 %cmp81, label %cond.true, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.80, %lor.lhs.false.78
  %62 = load i32, i32* %regno, align 4
  %cmp83 = icmp sge i32 %62, 45
  br i1 %cmp83, label %land.lhs.true.84, label %lor.lhs.false.86

land.lhs.true.84:                                 ; preds = %lor.lhs.false.82
  %63 = load i32, i32* %regno, align 4
  %cmp85 = icmp sle i32 %63, 52
  br i1 %cmp85, label %cond.true, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.84, %lor.lhs.false.82
  %64 = load i32, i32* %regno, align 4
  %cmp87 = icmp sge i32 %64, 29
  br i1 %cmp87, label %land.lhs.true.88, label %cond.false

land.lhs.true.88:                                 ; preds = %lor.lhs.false.86
  %65 = load i32, i32* %regno, align 4
  %cmp89 = icmp sle i32 %65, 36
  br i1 %cmp89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.88, %land.lhs.true.84, %land.lhs.true.80, %land.lhs.true
  %66 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load90 = load i32, i32* %67, align 8
  %bf.lshr = lshr i32 %bf.load90, 16
  %bf.clear91 = and i32 %bf.lshr, 255
  %idxprom92 = sext i32 %bf.clear91 to i64
  %arrayidx93 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom92
  %68 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %68, 5
  br i1 %cmp94, label %lor.end.102, label %lor.rhs.95

lor.rhs.95:                                       ; preds = %cond.true
  %69 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load96 = load i32, i32* %70, align 8
  %bf.lshr97 = lshr i32 %bf.load96, 16
  %bf.clear98 = and i32 %bf.lshr97, 255
  %idxprom99 = sext i32 %bf.clear98 to i64
  %arrayidx100 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom99
  %71 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp eq i32 %71, 6
  br label %lor.end.102

lor.end.102:                                      ; preds = %lor.rhs.95, %cond.true
  %72 = phi i1 [ true, %cond.true ], [ %cmp101, %lor.rhs.95 ]
  %cond = select i1 %72, i32 2, i32 1
  br label %cond.end.134

cond.false:                                       ; preds = %land.lhs.true.88, %lor.lhs.false.86
  %73 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load103 = load i32, i32* %74, align 8
  %bf.lshr104 = lshr i32 %bf.load103, 16
  %bf.clear105 = and i32 %bf.lshr104, 255
  %cmp106 = icmp eq i32 %bf.clear105, 18
  br i1 %cmp106, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %cond.false
  %75 = load i32, i32* @target_flags, align 4
  %and = and i32 %75, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond108 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.132

cond.false.109:                                   ; preds = %cond.false
  %76 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load110 = load i32, i32* %77, align 8
  %bf.lshr111 = lshr i32 %bf.load110, 16
  %bf.clear112 = and i32 %bf.lshr111, 255
  %cmp113 = icmp eq i32 %bf.clear112, 24
  br i1 %cmp113, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %cond.false.109
  %78 = load i32, i32* @target_flags, align 4
  %and115 = and i32 %78, 33554432
  %tobool116 = icmp ne i32 %and115, 0
  %cond117 = select i1 %tobool116, i32 4, i32 6
  br label %cond.end

cond.false.118:                                   ; preds = %cond.false.109
  %79 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load119 = load i32, i32* %80, align 8
  %bf.lshr120 = lshr i32 %bf.load119, 16
  %bf.clear121 = and i32 %bf.lshr120, 255
  %idxprom122 = sext i32 %bf.clear121 to i64
  %arrayidx123 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom122
  %81 = load i8, i8* %arrayidx123, align 1
  %conv = zext i8 %81 to i32
  %82 = load i32, i32* @target_flags, align 4
  %and124 = and i32 %82, 33554432
  %tobool125 = icmp ne i32 %and124, 0
  %cond126 = select i1 %tobool125, i32 8, i32 4
  %add = add nsw i32 %conv, %cond126
  %sub127 = sub nsw i32 %add, 1
  %83 = load i32, i32* @target_flags, align 4
  %and128 = and i32 %83, 33554432
  %tobool129 = icmp ne i32 %and128, 0
  %cond130 = select i1 %tobool129, i32 8, i32 4
  %div = sdiv i32 %sub127, %cond130
  br label %cond.end

cond.end:                                         ; preds = %cond.false.118, %cond.true.114
  %cond131 = phi i32 [ %cond117, %cond.true.114 ], [ %div, %cond.false.118 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end, %cond.true.107
  %cond133 = phi i32 [ %cond108, %cond.true.107 ], [ %cond131, %cond.end ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %lor.end.102
  %cond135 = phi i32 [ %cond, %lor.end.102 ], [ %cond133, %cond.end.132 ]
  store i32 %cond135, i32* %i75, align 4
  %84 = load i32, i32* %code, align 4
  %cmp136 = icmp eq i32 %84, 47
  br i1 %cmp136, label %if.then.138, label %if.else

if.then.138:                                      ; preds = %cond.end.134
  br label %while.cond.139

while.cond.139:                                   ; preds = %while.body.143, %if.then.138
  %85 = load i32, i32* %i75, align 4
  %dec140 = add nsw i32 %85, -1
  store i32 %dec140, i32* %i75, align 4
  %cmp141 = icmp sge i32 %dec140, 0
  br i1 %cmp141, label %while.body.143, label %while.end.145

while.body.143:                                   ; preds = %while.cond.139
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %87 = load i32, i32* %regno, align 4
  %88 = load i32, i32* %i75, align 4
  %add144 = add nsw i32 %87, %88
  call void @bitmap_set_bit(%struct.bitmap_head_def* %86, i32 %add144)
  br label %while.cond.139

while.end.145:                                    ; preds = %while.cond.139
  br label %if.end.153

if.else:                                          ; preds = %cond.end.134
  br label %while.cond.146

while.cond.146:                                   ; preds = %while.body.150, %if.else
  %89 = load i32, i32* %i75, align 4
  %dec147 = add nsw i32 %89, -1
  store i32 %dec147, i32* %i75, align 4
  %cmp148 = icmp sge i32 %dec147, 0
  br i1 %cmp148, label %while.body.150, label %while.end.152

while.body.150:                                   ; preds = %while.cond.146
  %90 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %91 = load i32, i32* %regno, align 4
  %92 = load i32, i32* %i75, align 4
  %add151 = add nsw i32 %91, %92
  call void @bitmap_set_bit(%struct.bitmap_head_def* %90, i32 %add151)
  br label %while.cond.146

while.end.152:                                    ; preds = %while.cond.146
  br label %if.end.153

if.end.153:                                       ; preds = %while.end.152, %while.end.145
  br label %if.end.208

if.else.154:                                      ; preds = %if.then.70
  %93 = load i32, i32* %regno, align 4
  %94 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %max_reg = getelementptr inbounds %struct.deps, %struct.deps* %94, i32 0, i32 10
  %95 = load i32, i32* %max_reg, align 4
  %cmp155 = icmp sge i32 %93, %95
  br i1 %cmp155, label %if.then.157, label %if.else.175

if.then.157:                                      ; preds = %if.else.154
  %96 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 3
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx160, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load161 = load i32, i32* %98, align 8
  %bf.clear162 = and i32 %bf.load161, 65535
  %cmp163 = icmp ne i32 %bf.clear162, 48
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.174

land.lhs.true.165:                                ; preds = %if.then.157
  %99 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 3
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load169 = load i32, i32* %101, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp ne i32 %bf.clear170, 49
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %land.lhs.true.165
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 620, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.sched_analyze_1, i32 0, i32 0)) #4
  unreachable

if.end.174:                                       ; preds = %land.lhs.true.165, %if.then.157
  br label %if.end.207

if.else.175:                                      ; preds = %if.else.154
  %102 = load i32, i32* %code, align 4
  %cmp176 = icmp eq i32 %102, 47
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %if.else.175
  %103 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_sets, align 8
  %104 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %103, i32 %104)
  br label %if.end.180

if.else.179:                                      ; preds = %if.else.175
  %105 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @reg_pending_clobbers, align 8
  %106 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %105, i32 %106)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.179, %if.then.178
  %107 = load i32, i32* @reload_completed, align 4
  %tobool181 = icmp ne i32 %107, 0
  br i1 %tobool181, label %if.end.200, label %land.lhs.true.182

land.lhs.true.182:                                ; preds = %if.end.180
  %108 = load i32, i32* %regno, align 4
  %idxprom183 = sext i32 %108 to i64
  %109 = load i8*, i8** @reg_known_equiv_p, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %109, i64 %idxprom183
  %110 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %110 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br i1 %tobool186, label %land.lhs.true.187, label %if.end.200

land.lhs.true.187:                                ; preds = %land.lhs.true.182
  %111 = load i32, i32* %regno, align 4
  %idxprom188 = sext i32 %111 to i64
  %112 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx189 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %112, i64 %idxprom188
  %113 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx189, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load190 = load i32, i32* %114, align 8
  %bf.clear191 = and i32 %bf.load190, 65535
  %cmp192 = icmp eq i32 %bf.clear191, 66
  br i1 %cmp192, label %if.then.194, label %if.end.200

if.then.194:                                      ; preds = %land.lhs.true.187
  %115 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %116 = load i32, i32* %regno, align 4
  %idxprom195 = sext i32 %116 to i64
  %117 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx196 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %117, i64 %idxprom195
  %118 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx196, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 0
  %rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx199, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %115, %struct.rtx_def* %119, %struct.rtx_def* %120)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.194, %land.lhs.true.187, %land.lhs.true.182, %if.end.180
  %121 = load i32, i32* %regno, align 4
  %idxprom201 = sext i32 %121 to i64
  %122 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %122, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx202 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom201
  %123 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx202, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %123, i32 0, i32 8
  %124 = load i32, i32* %calls_crossed, align 4
  %cmp203 = icmp eq i32 %124, 0
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.end.200
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %126 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_function_call = getelementptr inbounds %struct.deps, %struct.deps* %126, i32 0, i32 7
  %127 = load %struct.rtx_def*, %struct.rtx_def** %last_function_call, align 8
  call void @add_dependence_list(%struct.rtx_def* %125, %struct.rtx_def* %127, i32 14)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %if.end.200
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.174
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.153
  br label %if.end.288

if.else.209:                                      ; preds = %while.end
  %128 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load210 = load i32, i32* %129, align 8
  %bf.clear211 = and i32 %bf.load210, 65535
  %cmp212 = icmp eq i32 %bf.clear211, 66
  br i1 %cmp212, label %if.then.214, label %if.end.287

if.then.214:                                      ; preds = %if.else.209
  %130 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  store %struct.rtx_def* %130, %struct.rtx_def** %t, align 8
  %131 = load %struct.sched_info*, %struct.sched_info** @current_sched_info, align 8
  %use_cselib = getelementptr inbounds %struct.sched_info, %struct.sched_info* %131, i32 0, i32 12
  %bf.load215 = load i8, i8* %use_cselib, align 8
  %bf.lshr216 = lshr i8 %bf.load215, 1
  %bf.clear217 = and i8 %bf.lshr216, 1
  %bf.cast = zext i8 %bf.clear217 to i32
  %tobool218 = icmp ne i32 %bf.cast, 0
  br i1 %tobool218, label %if.then.219, label %if.end.235

if.then.219:                                      ; preds = %if.then.214
  %132 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call220 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %132)
  store %struct.rtx_def* %call220, %struct.rtx_def** %t, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 0
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %135 = load i32, i32* @target_flags, align 4
  %and224 = and i32 %135, 33554432
  %tobool225 = icmp ne i32 %and224, 0
  %cond226 = select i1 %tobool225, i32 5, i32 4
  %call227 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %134, i32 %cond226, i32 1)
  %136 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtx230 = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx230, align 8
  %call231 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %137)
  %138 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtx234 = bitcast %union.rtunion_def* %arrayidx233 to %struct.rtx_def**
  store %struct.rtx_def* %call231, %struct.rtx_def** %rtx234, align 8
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.219, %if.then.214
  %139 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_lists_length = getelementptr inbounds %struct.deps, %struct.deps* %139, i32 0, i32 4
  %140 = load i32, i32* %pending_lists_length, align 4
  %141 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx236 = getelementptr inbounds %struct.param_info, %struct.param_info* %141, i64 3
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx236, i32 0, i32 1
  %142 = load i32, i32* %value, align 4
  %cmp237 = icmp sgt i32 %140, %142
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %if.end.235
  %143 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @flush_pending_lists(%struct.deps* %143, %struct.rtx_def* %144, i32 0, i32 1)
  br label %if.end.283

if.else.240:                                      ; preds = %if.end.235
  %145 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_insns = getelementptr inbounds %struct.deps, %struct.deps* %145, i32 0, i32 0
  %146 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_insns, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %pending, align 8
  %147 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_read_mems = getelementptr inbounds %struct.deps, %struct.deps* %147, i32 0, i32 1
  %148 = load %struct.rtx_def*, %struct.rtx_def** %pending_read_mems, align 8
  store %struct.rtx_def* %148, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.241

while.cond.241:                                   ; preds = %if.end.253, %if.else.240
  %149 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool242 = icmp ne %struct.rtx_def* %149, null
  br i1 %tobool242, label %while.body.243, label %while.end.260

while.body.243:                                   ; preds = %while.cond.241
  %150 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx246, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %call247 = call i32 @anti_dependence(%struct.rtx_def* %151, %struct.rtx_def* %152)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %while.body.243
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %154 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 0
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %155 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  call void @add_dependence(%struct.rtx_def* %153, %struct.rtx_def* %155, i32 14)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.249, %while.body.243
  %156 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 1
  %rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx256, align 8
  store %struct.rtx_def* %157, %struct.rtx_def** %pending, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 1
  %rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**
  %159 = load %struct.rtx_def*, %struct.rtx_def** %rtx259, align 8
  store %struct.rtx_def* %159, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.241

while.end.260:                                    ; preds = %while.cond.241
  %160 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns = getelementptr inbounds %struct.deps, %struct.deps* %160, i32 0, i32 2
  %161 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_insns, align 8
  store %struct.rtx_def* %161, %struct.rtx_def** %pending, align 8
  %162 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems = getelementptr inbounds %struct.deps, %struct.deps* %162, i32 0, i32 3
  %163 = load %struct.rtx_def*, %struct.rtx_def** %pending_write_mems, align 8
  store %struct.rtx_def* %163, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.261

while.cond.261:                                   ; preds = %if.end.273, %while.end.260
  %164 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %tobool262 = icmp ne %struct.rtx_def* %164, null
  br i1 %tobool262, label %while.body.263, label %while.end.280

while.body.263:                                   ; preds = %while.cond.261
  %165 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 0
  %rtx266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx266, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %call267 = call i32 @output_dependence(%struct.rtx_def* %166, %struct.rtx_def* %167)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.273

if.then.269:                                      ; preds = %while.body.263
  %168 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld270, i32 0, i64 0
  %rtx272 = bitcast %union.rtunion_def* %arrayidx271 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx272, align 8
  call void @add_dependence(%struct.rtx_def* %168, %struct.rtx_def* %170, i32 15)
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.269, %while.body.263
  %171 = load %struct.rtx_def*, %struct.rtx_def** %pending, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 1
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx276, align 8
  store %struct.rtx_def* %172, %struct.rtx_def** %pending, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %pending_mem, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 1
  %rtx279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx279, align 8
  store %struct.rtx_def* %174, %struct.rtx_def** %pending_mem, align 8
  br label %while.cond.261

while.end.280:                                    ; preds = %while.cond.261
  %175 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %176 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %last_pending_memory_flush = getelementptr inbounds %struct.deps, %struct.deps* %176, i32 0, i32 6
  %177 = load %struct.rtx_def*, %struct.rtx_def** %last_pending_memory_flush, align 8
  call void @add_dependence_list(%struct.rtx_def* %175, %struct.rtx_def* %177, i32 14)
  %178 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %179 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_insns281 = getelementptr inbounds %struct.deps, %struct.deps* %179, i32 0, i32 2
  %180 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %pending_write_mems282 = getelementptr inbounds %struct.deps, %struct.deps* %180, i32 0, i32 3
  %181 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %182 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  call void @add_insn_mem_dependence(%struct.deps* %178, %struct.rtx_def** %pending_write_insns281, %struct.rtx_def** %pending_write_mems282, %struct.rtx_def* %181, %struct.rtx_def* %182)
  br label %if.end.283

if.end.283:                                       ; preds = %while.end.280, %if.then.239
  %183 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %183, %struct.rtx_def* %185, %struct.rtx_def* %186)
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.283, %if.else.209
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.208
  %187 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %188 = bitcast %struct.rtx_def* %187 to i32*
  %bf.load289 = load i32, i32* %188, align 8
  %bf.clear290 = and i32 %bf.load289, 65535
  %cmp291 = icmp eq i32 %bf.clear290, 47
  br i1 %cmp291, label %if.then.293, label %if.end.297

if.then.293:                                      ; preds = %if.end.288
  %189 = load %struct.deps*, %struct.deps** %deps.addr, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld294 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i32 0, i64 1
  %rtx296 = bitcast %union.rtunion_def* %arrayidx295 to %struct.rtx_def**
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtx296, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @sched_analyze_2(%struct.deps* %189, %struct.rtx_def* %191, %struct.rtx_def* %192)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then, %if.end.34, %if.then.293, %if.end.288
  ret void
}

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @add_dependence_list(%struct.rtx_def* %insn, %struct.rtx_def* %list, i32 %dep_type) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %list.addr = alloca %struct.rtx_def*, align 8
  %dep_type.addr = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %list, %struct.rtx_def** %list.addr, align 8
  store i32 %dep_type, i32* %dep_type.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load i32, i32* %dep_type.addr, align 4
  call void @add_dependence(%struct.rtx_def* %1, %struct.rtx_def* %3, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %list.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %list.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @set_sched_group_p(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, -268435457
  %bf.set = or i32 %bf.clear, 268435456
  store i32 %bf.set, i32* %1, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %prev, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call1 = call %struct.rtx_def* @find_insn_list(%struct.rtx_def* %3, %struct.rtx_def* %5)
  %tobool = icmp ne %struct.rtx_def* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  call void @remove_dependence(%struct.rtx_def* %6, %struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 5
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool5 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load9 = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load9, 16
  %bf.clear10 = and i32 %bf.lshr, 255
  call void @add_dependence(%struct.rtx_def* %11, %struct.rtx_def* %13, i32 %bf.clear10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def*, i32, i32) #1

declare i32 @read_dependence(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, i32 (%struct.rtx_def*, i32)*) #1

declare i32 @rtx_varies_p(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @deps_may_trap_p(%struct.rtx_def* %mem) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp3 = icmp uge i32 %5, 53
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %7 = load i32, i32* %rtuint7, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx8, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %11 = load i32, i32* %rtuint11, align 4
  %idxprom12 = zext i32 %11 to i64
  %12 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx13 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 %idxprom12
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call = call i32 @rtx_addr_can_trap_p(%struct.rtx_def* %14)
  ret i32 %call
}

declare i32 @rtx_addr_can_trap_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare i32 @anti_dependence(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @output_dependence(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @remove_dependence(%struct.rtx_def* %insn, %struct.rtx_def* %elem) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %elem.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %found = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %elem, %struct.rtx_def** %elem.addr, align 8
  store i32 0, i32* %found, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %prev, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
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
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp, label %if.then, label %if.else.112

if.then:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool7 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 5
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %cmp15 = icmp ne %struct.simple_bitmap_def** %13, null
  br i1 %cmp15, label %if.then.16, label %if.end.111

if.then.16:                                       ; preds = %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp17 = icmp eq i32 %bf.clear, 0
  br i1 %cmp17, label %if.then.18, label %if.else.38

if.then.18:                                       ; preds = %if.then.16
  %16 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %17 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx21 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %18, i64 %idxprom
  %luid = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx21, i32 0, i32 2
  %19 = load i32, i32* %luid, align 4
  %rem = urem i32 %19, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %21 = load i32, i32* %rtint24, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx26 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %22, i64 %idxprom25
  %luid27 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx26, i32 0, i32 2
  %23 = load i32, i32* %luid27, align 4
  %div = udiv i32 %23, 64
  %idxprom28 = zext i32 %div to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %25 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx33 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %26, i64 %idxprom32
  %luid34 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx33, i32 0, i32 2
  %27 = load i32, i32* %luid34, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @true_dependency_cache, align 8
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom35
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx36, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom28
  %30 = load i64, i64* %arrayidx37, align 8
  %and = and i64 %30, %neg
  store i64 %and, i64* %arrayidx37, align 8
  br label %if.end.110

if.else.38:                                       ; preds = %if.then.16
  %31 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load39 = load i32, i32* %32, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 16
  %bf.clear41 = and i32 %bf.lshr40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 14
  br i1 %cmp42, label %if.then.43, label %if.else.73

if.then.43:                                       ; preds = %if.else.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtint46 = bitcast %union.rtunion_def* %arrayidx45 to i32*
  %34 = load i32, i32* %rtint46, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx48 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %35, i64 %idxprom47
  %luid49 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx48, i32 0, i32 2
  %36 = load i32, i32* %luid49, align 4
  %rem50 = urem i32 %36, 64
  %sh_prom51 = zext i32 %rem50 to i64
  %shl52 = shl i64 1, %sh_prom51
  %neg53 = xor i64 %shl52, -1
  %37 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %38 = load i32, i32* %rtint56, align 4
  %idxprom57 = sext i32 %38 to i64
  %39 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx58 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %39, i64 %idxprom57
  %luid59 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx58, i32 0, i32 2
  %40 = load i32, i32* %luid59, align 4
  %div60 = udiv i32 %40, 64
  %idxprom61 = zext i32 %div60 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %42 = load i32, i32* %rtint64, align 4
  %idxprom65 = sext i32 %42 to i64
  %43 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx66 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %43, i64 %idxprom65
  %luid67 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx66, i32 0, i32 2
  %44 = load i32, i32* %luid67, align 4
  %idxprom68 = sext i32 %44 to i64
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @anti_dependency_cache, align 8
  %arrayidx69 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %45, i64 %idxprom68
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx69, align 8
  %elms70 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %46, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %elms70, i32 0, i64 %idxprom61
  %47 = load i64, i64* %arrayidx71, align 8
  %and72 = and i64 %47, %neg53
  store i64 %and72, i64* %arrayidx71, align 8
  br label %if.end.109

if.else.73:                                       ; preds = %if.else.38
  %48 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load74 = load i32, i32* %49, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 15
  br i1 %cmp77, label %if.then.78, label %if.end.108

if.then.78:                                       ; preds = %if.else.73
  %50 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %51 = load i32, i32* %rtint81, align 4
  %idxprom82 = sext i32 %51 to i64
  %52 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx83 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %52, i64 %idxprom82
  %luid84 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx83, i32 0, i32 2
  %53 = load i32, i32* %luid84, align 4
  %rem85 = urem i32 %53, 64
  %sh_prom86 = zext i32 %rem85 to i64
  %shl87 = shl i64 1, %sh_prom86
  %neg88 = xor i64 %shl87, -1
  %54 = load %struct.rtx_def*, %struct.rtx_def** %elem.addr, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %55 = load i32, i32* %rtint91, align 4
  %idxprom92 = sext i32 %55 to i64
  %56 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx93 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %56, i64 %idxprom92
  %luid94 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx93, i32 0, i32 2
  %57 = load i32, i32* %luid94, align 4
  %div95 = udiv i32 %57, 64
  %idxprom96 = zext i32 %div95 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtint99 = bitcast %union.rtunion_def* %arrayidx98 to i32*
  %59 = load i32, i32* %rtint99, align 4
  %idxprom100 = sext i32 %59 to i64
  %60 = load %struct.haifa_insn_data*, %struct.haifa_insn_data** @h_i_d, align 8
  %arrayidx101 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %60, i64 %idxprom100
  %luid102 = getelementptr inbounds %struct.haifa_insn_data, %struct.haifa_insn_data* %arrayidx101, i32 0, i32 2
  %61 = load i32, i32* %luid102, align 4
  %idxprom103 = sext i32 %61 to i64
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @output_dependency_cache, align 8
  %arrayidx104 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %62, i64 %idxprom103
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx104, align 8
  %elms105 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %63, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [1 x i64], [1 x i64]* %elms105, i32 0, i64 %idxprom96
  %64 = load i64, i64* %arrayidx106, align 8
  %and107 = and i64 %64, %neg88
  store i64 %and107, i64* %arrayidx106, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.78, %if.else.73
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.43
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.18
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end
  %65 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  call void @free_INSN_LIST_node(%struct.rtx_def* %65)
  store i32 1, i32* %found, align 4
  br label %if.end.113

if.else.112:                                      ; preds = %for.body
  %66 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %prev, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.end.111
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %67 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %found, align 4
  %tobool114 = icmp ne i32 %68, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 433, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.remove_dependence, i32 0, i32 0)) #4
  unreachable

if.end.116:                                       ; preds = %for.end
  ret void
}

declare void @free_INSN_LIST_node(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
