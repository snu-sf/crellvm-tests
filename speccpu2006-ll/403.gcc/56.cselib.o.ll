; ModuleID = 'cselib.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.cselib_val_struct = type { i32, %union.anon, %struct.elt_loc_list*, %struct.elt_list* }
%union.anon = type { %struct.rtx_def* }
%struct.elt_loc_list = type { %struct.elt_loc_list*, %struct.rtx_def*, %struct.rtx_def* }
%struct.elt_list = type { %struct.elt_list*, %struct.cselib_val_struct* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.set = type { %struct.rtx_def*, %struct.rtx_def*, %struct.cselib_val_struct*, %struct.cselib_val_struct* }

@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"cselib.c\00", align 1
@__FUNCTION__.rtx_equal_for_cselib_p = private unnamed_addr constant [23 x i8] c"rtx_equal_for_cselib_p\00", align 1
@reg_values = internal global %struct.varray_head_tag* null, align 8
@__FUNCTION__.cselib_subst_to_values = private unnamed_addr constant [23 x i8] c"cselib_subst_to_values\00", align 1
@next_unknown_value = internal global i32 0, align 4
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@max_value_regs = internal global i32 0, align 4
@used_regs = internal global %struct.varray_head_tag* null, align 8
@hash_table = internal global %struct.htab* null, align 8
@cselib_current_insn = internal global %struct.rtx_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@callmem = internal global %struct.rtx_def* null, align 8
@n_useless_values = internal global i32 0, align 4
@cselib_nregs = internal global i32 0, align 4
@cselib_obstack = internal global %struct.obstack zeroinitializer, align 8
@cselib_startobj = internal global i8* null, align 8
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"reg_values\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"used_regs\00", align 1
@flag_float_store = external global i32, align 4
@empty_vals = internal global %struct.cselib_val_struct* null, align 8
@__FUNCTION__.new_cselib_val = private unnamed_addr constant [15 x i8] c"new_cselib_val\00", align 1
@empty_elt_loc_lists = internal global %struct.elt_loc_list* null, align 8
@empty_elt_lists = internal global %struct.elt_list* null, align 8
@__FUNCTION__.hash_rtx = private unnamed_addr constant [9 x i8] c"hash_rtx\00", align 1
@__FUNCTION__.wrap_constant = private unnamed_addr constant [14 x i8] c"wrap_constant\00", align 1
@reload_completed = external global i32, align 4
@reg_renumber = external global i16*, align 8
@__FUNCTION__.cselib_invalidate_regno = private unnamed_addr constant [24 x i8] c"cselib_invalidate_regno\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@values_became_useless = internal global i32 0, align 4
@__FUNCTION__.remove_useless_values = private unnamed_addr constant [22 x i8] c"remove_useless_values\00", align 1
@__FUNCTION__.entry_and_rtx_equal_p = private unnamed_addr constant [22 x i8] c"entry_and_rtx_equal_p\00", align 1

; Function Attrs: nounwind uwtable
define i32 @references_value_p(%struct.rtx_def* %x, i32 %only_useless) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %only_useless.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %only_useless, i32* %only_useless.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %fmt, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 60
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %only_useless.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx3 to %struct.cselib_val_struct**
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i32 0, i32 2
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  %cmp4 = icmp eq %struct.elt_loc_list* %9, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom5
  %11 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %12, 0
  br i1 %cmp7, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i8*, i8** %fmt, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 101
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 %idxprom15
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %19 = load i32, i32* %only_useless.addr, align 4
  %call = call i32 @references_value_p(%struct.rtx_def* %18, i32 %19)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.14, %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i8*, i8** %fmt, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom20
  %22 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %22 to i32
  %cmp23 = icmp eq i32 %conv22, 69
  br i1 %cmp23, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.25
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 %idxprom27
  %rtvec = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 0
  %27 = load i32, i32* %num_elem, align 4
  %cmp30 = icmp slt i32 %23, %27
  br i1 %cmp30, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.26
  %28 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 %idxprom34
  %rtvec37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtvec_def**
  %31 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec37, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %31, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom33
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8
  %33 = load i32, i32* %only_useless.addr, align 4
  %call39 = call i32 @references_value_p(%struct.rtx_def* %32, i32 %33)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.32
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %35 = load i32, i32* %i, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.41, %if.then.19, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %e = alloca %struct.cselib_val_struct*, align 8
  %e16 = alloca %struct.cselib_val_struct*, align 8
  %e47 = alloca %struct.cselib_val_struct*, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  %t = alloca %struct.rtx_def*, align 8
  %e73 = alloca %struct.cselib_val_struct*, align 8
  %l77 = alloca %struct.elt_loc_list*, align 8
  %t82 = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 66
  br i1 %cmp3, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  %call = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %4, i32 %bf.clear5, i32 0)
  store %struct.cselib_val_struct* %call, %struct.cselib_val_struct** %e, align 8
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %tobool = icmp ne %struct.cselib_val_struct* %7, null
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %8, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load8 = load i32, i32* %11, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 61
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.7
  %12 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load12 = load i32, i32* %13, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 66
  br i1 %cmp14, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %lor.lhs.false.11, %if.end.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load17 = load i32, i32* %16, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %call20 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %14, i32 %bf.clear19, i32 0)
  store %struct.cselib_val_struct* %call20, %struct.cselib_val_struct** %e16, align 8
  %17 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e16, align 8
  %tobool21 = icmp ne %struct.cselib_val_struct* %17, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.15
  %18 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e16, align 8
  %u23 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %18, i32 0, i32 1
  %val_rtx24 = bitcast %union.anon* %u23 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx24, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %y.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false.11
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp27 = icmp eq %struct.rtx_def* %20, %21
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load30 = load i32, i32* %23, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 60
  br i1 %cmp32, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.29
  %24 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load33 = load i32, i32* %25, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 60
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**
  %27 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rt_cselib39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.cselib_val_struct**
  %29 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib39, align 8
  %cmp40 = icmp eq %struct.cselib_val_struct* %27, %29
  %conv = zext i1 %cmp40 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true, %if.end.29
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load42 = load i32, i32* %31, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 60
  br i1 %cmp44, label %if.then.46, label %if.end.67

if.then.46:                                       ; preds = %if.end.41
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rt_cselib50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.cselib_val_struct**
  %33 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib50, align 8
  store %struct.cselib_val_struct* %33, %struct.cselib_val_struct** %e47, align 8
  %34 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e47, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %34, i32 0, i32 2
  %35 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  store %struct.elt_loc_list* %35, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.46
  %36 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool51 = icmp ne %struct.elt_loc_list* %36, null
  br i1 %tobool51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %37, i32 0, i32 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %t, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load52 = load i32, i32* %40, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 61
  br i1 %cmp54, label %if.then.61, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %for.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load57 = load i32, i32* %42, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 66
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %lor.lhs.false.56, %for.body
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false.56
  %43 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call62 = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %43, %struct.rtx_def* %44)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.else
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %for.inc

for.inc:                                          ; preds = %if.end.66, %if.then.61
  %45 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %45, i32 0, i32 0
  %46 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  store %struct.elt_loc_list* %46, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.41
  %47 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load68 = load i32, i32* %48, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 60
  br i1 %cmp70, label %if.then.72, label %if.end.103

if.then.72:                                       ; preds = %if.end.67
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rt_cselib76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.cselib_val_struct**
  %50 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib76, align 8
  store %struct.cselib_val_struct* %50, %struct.cselib_val_struct** %e73, align 8
  %51 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e73, align 8
  %locs78 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %51, i32 0, i32 2
  %52 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs78, align 8
  store %struct.elt_loc_list* %52, %struct.elt_loc_list** %l77, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.100, %if.then.72
  %53 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l77, align 8
  %tobool80 = icmp ne %struct.elt_loc_list* %53, null
  br i1 %tobool80, label %for.body.81, label %for.end.102

for.body.81:                                      ; preds = %for.cond.79
  %54 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l77, align 8
  %loc83 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %54, i32 0, i32 1
  %55 = load %struct.rtx_def*, %struct.rtx_def** %loc83, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %t82, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %t82, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load84 = load i32, i32* %57, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 61
  br i1 %cmp86, label %if.then.93, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %for.body.81
  %58 = load %struct.rtx_def*, %struct.rtx_def** %t82, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load89 = load i32, i32* %59, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 66
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %lor.lhs.false.88, %for.body.81
  br label %for.inc.100

if.else.94:                                       ; preds = %lor.lhs.false.88
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %t82, align 8
  %call95 = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %60, %struct.rtx_def* %61)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.else.94
  store i32 1, i32* %retval
  br label %return

if.end.98:                                        ; preds = %if.else.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99, %if.then.93
  %62 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l77, align 8
  %next101 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %62, i32 0, i32 0
  %63 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next101, align 8
  store %struct.elt_loc_list* %63, %struct.elt_loc_list** %l77, align 8
  br label %for.cond.79

for.end.102:                                      ; preds = %for.cond.79
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.67
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load104 = load i32, i32* %65, align 8
  %bf.clear105 = and i32 %bf.load104, 65535
  %66 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load106 = load i32, i32* %67, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp ne i32 %bf.clear105, %bf.clear107
  br i1 %cmp108, label %if.then.119, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.103
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load111 = load i32, i32* %69, align 8
  %bf.lshr112 = lshr i32 %bf.load111, 16
  %bf.clear113 = and i32 %bf.lshr112, 255
  %70 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load114 = load i32, i32* %71, align 8
  %bf.lshr115 = lshr i32 %bf.load114, 16
  %bf.clear116 = and i32 %bf.lshr115, 255
  %cmp117 = icmp ne i32 %bf.clear113, %bf.clear116
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %lor.lhs.false.110, %if.end.103
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %lor.lhs.false.110
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load121 = load i32, i32* %73, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %cmp123 = icmp eq i32 %bf.clear122, 67
  br i1 %cmp123, label %if.then.125, label %if.end.133

if.then.125:                                      ; preds = %if.end.120
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  %cmp131 = icmp eq %struct.rtx_def* %75, %77
  %conv132 = zext i1 %cmp131 to i32
  store i32 %conv132, i32* %retval
  br label %return

if.end.133:                                       ; preds = %if.end.120
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load134 = load i32, i32* %79, align 8
  %bf.clear135 = and i32 %bf.load134, 65535
  store i32 %bf.clear135, i32* %code, align 4
  %80 = load i32, i32* %code, align 4
  %idxprom = sext i32 %80 to i64
  %arrayidx136 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %81 = load i8*, i8** %arrayidx136, align 8
  store i8* %81, i8** %fmt, align 8
  %82 = load i32, i32* %code, align 4
  %idxprom137 = sext i32 %82 to i64
  %arrayidx138 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom137
  %83 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %83 to i32
  %sub = sub nsw i32 %conv139, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.238, %if.end.133
  %84 = load i32, i32* %i, align 4
  %cmp141 = icmp sge i32 %84, 0
  br i1 %cmp141, label %for.body.143, label %for.end.239

for.body.143:                                     ; preds = %for.cond.140
  %85 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %85 to i64
  %86 = load i8*, i8** %fmt, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %86, i64 %idxprom144
  %87 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %87 to i32
  switch i32 %conv146, label %sw.default [
    i32 119, label %sw.bb
    i32 110, label %sw.bb.158
    i32 105, label %sw.bb.158
    i32 86, label %sw.bb.170
    i32 69, label %sw.bb.170
    i32 101, label %sw.bb.211
    i32 83, label %sw.bb.224
    i32 115, label %sw.bb.224
    i32 117, label %sw.bb.236
    i32 48, label %sw.bb.237
    i32 116, label %sw.bb.237
  ]

sw.bb:                                            ; preds = %for.body.143
  %88 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %88 to i64
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 %idxprom147
  %rtwint = bitcast %union.rtunion_def* %arrayidx149 to i64*
  %90 = load i64, i64* %rtwint, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %91 to i64
  %92 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 %idxprom150
  %rtwint153 = bitcast %union.rtunion_def* %arrayidx152 to i64*
  %93 = load i64, i64* %rtwint153, align 8
  %cmp154 = icmp ne i64 %90, %93
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %sw.bb
  br label %sw.epilog

sw.bb.158:                                        ; preds = %for.body.143, %for.body.143
  %94 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 %idxprom159
  %rtint = bitcast %union.rtunion_def* %arrayidx161 to i32*
  %96 = load i32, i32* %rtint, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %97 to i64
  %98 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 %idxprom162
  %rtint165 = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %99 = load i32, i32* %rtint165, align 4
  %cmp166 = icmp ne i32 %96, %99
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %sw.bb.158
  store i32 0, i32* %retval
  br label %return

if.end.169:                                       ; preds = %sw.bb.158
  br label %sw.epilog

sw.bb.170:                                        ; preds = %for.body.143, %for.body.143
  %100 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %100 to i64
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 %idxprom171
  %rtvec = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtvec_def**
  %102 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %102, i32 0, i32 0
  %103 = load i32, i32* %num_elem, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %104 to i64
  %105 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 %idxprom174
  %rtvec177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtvec_def**
  %106 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec177, align 8
  %num_elem178 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %106, i32 0, i32 0
  %107 = load i32, i32* %num_elem178, align 4
  %cmp179 = icmp ne i32 %103, %107
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %sw.bb.170
  store i32 0, i32* %retval
  br label %return

if.end.182:                                       ; preds = %sw.bb.170
  store i32 0, i32* %j, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.209, %if.end.182
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %109 to i64
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 %idxprom184
  %rtvec187 = bitcast %union.rtunion_def* %arrayidx186 to %struct.rtvec_def**
  %111 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec187, align 8
  %num_elem188 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %111, i32 0, i32 0
  %112 = load i32, i32* %num_elem188, align 4
  %cmp189 = icmp slt i32 %108, %112
  br i1 %cmp189, label %for.body.191, label %for.end.210

for.body.191:                                     ; preds = %for.cond.183
  %113 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %113 to i64
  %114 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %114 to i64
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 %idxprom193
  %rtvec196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtvec_def**
  %116 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec196, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %116, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom192
  %117 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx197, align 8
  %118 = load i32, i32* %j, align 4
  %idxprom198 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %119 to i64
  %120 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 %idxprom199
  %rtvec202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtvec_def**
  %121 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec202, align 8
  %elem203 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %121, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem203, i32 0, i64 %idxprom198
  %122 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx204, align 8
  %call205 = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %117, %struct.rtx_def* %122)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end.208, label %if.then.207

if.then.207:                                      ; preds = %for.body.191
  store i32 0, i32* %retval
  br label %return

if.end.208:                                       ; preds = %for.body.191
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %123 = load i32, i32* %j, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.183

for.end.210:                                      ; preds = %for.cond.183
  br label %sw.epilog

sw.bb.211:                                        ; preds = %for.body.143
  %124 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %124 to i64
  %125 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 %idxprom212
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %127 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %127 to i64
  %128 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 %idxprom216
  %rtx219 = bitcast %union.rtunion_def* %arrayidx218 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx219, align 8
  %call220 = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %126, %struct.rtx_def* %129)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end.223, label %if.then.222

if.then.222:                                      ; preds = %sw.bb.211
  store i32 0, i32* %retval
  br label %return

if.end.223:                                       ; preds = %sw.bb.211
  br label %sw.epilog

sw.bb.224:                                        ; preds = %for.body.143, %for.body.143
  %130 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %130 to i64
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 %idxprom225
  %rtstr = bitcast %union.rtunion_def* %arrayidx227 to i8**
  %132 = load i8*, i8** %rtstr, align 8
  %133 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %133 to i64
  %134 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 %idxprom228
  %rtstr231 = bitcast %union.rtunion_def* %arrayidx230 to i8**
  %135 = load i8*, i8** %rtstr231, align 8
  %call232 = call i32 @strcmp(i8* %132, i8* %135) #5
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %sw.bb.224
  store i32 0, i32* %retval
  br label %return

if.end.235:                                       ; preds = %sw.bb.224
  br label %sw.epilog

sw.bb.236:                                        ; preds = %for.body.143
  br label %sw.epilog

sw.bb.237:                                        ; preds = %for.body.143, %for.body.143
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.143
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 530, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.rtx_equal_for_cselib_p, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.237, %sw.bb.236, %if.end.235, %if.end.223, %for.end.210, %if.end.169, %if.end.157
  br label %for.inc.238

for.inc.238:                                      ; preds = %sw.epilog
  %136 = load i32, i32* %i, align 4
  %dec = add nsw i32 %136, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.140

for.end.239:                                      ; preds = %for.cond.140
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.239, %if.then.234, %if.then.222, %if.then.207, %if.then.181, %if.then.168, %if.then.156, %if.then.125, %if.then.119, %for.end.102, %if.then.97, %for.end, %if.then.64, %if.then.36, %if.then.28
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %x, i32 %mode, i32 %create) #0 {
entry:
  %retval = alloca %struct.cselib_val_struct*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %create.addr = alloca i32, align 4
  %slot = alloca i8**, align 8
  %e = alloca %struct.cselib_val_struct*, align 8
  %hashval = alloca i32, align 4
  %l = alloca %struct.elt_list*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %create, i32* %create.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  store i32 %bf.clear3, i32* %mode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 60
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  store %struct.cselib_val_struct* %7, %struct.cselib_val_struct** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 61
  br i1 %cmp11, label %if.then.12, label %if.end.110

if.then.12:                                       ; preds = %if.end.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %11 = load i32, i32* %rtuint, align 4
  store i32 %11, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %te = bitcast %union.varray_data_tag* %data to [1 x %struct.elt_list*]*
  %arrayidx15 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te, i32 0, i64 %idxprom
  %14 = load %struct.elt_list*, %struct.elt_list** %arrayidx15, align 8
  store %struct.elt_list* %14, %struct.elt_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %15 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %tobool = icmp ne %struct.elt_list* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %mode.addr, align 4
  %17 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %17, i32 0, i32 1
  %18 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %18, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load16 = load i32, i32* %20, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 16
  %bf.clear18 = and i32 %bf.lshr17, 255
  %cmp19 = icmp eq i32 %16, %bf.clear18
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body
  %21 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt21 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %21, i32 0, i32 1
  %22 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt21, align 8
  store %struct.cselib_val_struct* %22, %struct.cselib_val_struct** %retval
  br label %return

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %23 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %23, i32 0, i32 0
  %24 = load %struct.elt_list*, %struct.elt_list** %next, align 8
  store %struct.elt_list* %24, %struct.elt_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %create.addr, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %cmp26 = icmp ult i32 %26, 53
  br i1 %cmp26, label %if.then.27, label %if.end.75

if.then.27:                                       ; preds = %if.end.25
  %27 = load i32, i32* %i, align 4
  %cmp28 = icmp uge i32 %27, 8
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.27
  %28 = load i32, i32* %i, align 4
  %cmp29 = icmp ule i32 %28, 15
  br i1 %cmp29, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.27
  %29 = load i32, i32* %i, align 4
  %cmp30 = icmp uge i32 %29, 21
  br i1 %cmp30, label %land.lhs.true.31, label %lor.lhs.false.33

land.lhs.true.31:                                 ; preds = %lor.lhs.false
  %30 = load i32, i32* %i, align 4
  %cmp32 = icmp ule i32 %30, 28
  br i1 %cmp32, label %cond.true, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.31, %lor.lhs.false
  %31 = load i32, i32* %i, align 4
  %cmp34 = icmp uge i32 %31, 45
  br i1 %cmp34, label %land.lhs.true.35, label %lor.lhs.false.37

land.lhs.true.35:                                 ; preds = %lor.lhs.false.33
  %32 = load i32, i32* %i, align 4
  %cmp36 = icmp ule i32 %32, 52
  br i1 %cmp36, label %cond.true, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.35, %lor.lhs.false.33
  %33 = load i32, i32* %i, align 4
  %cmp38 = icmp uge i32 %33, 29
  br i1 %cmp38, label %land.lhs.true.39, label %cond.false

land.lhs.true.39:                                 ; preds = %lor.lhs.false.37
  %34 = load i32, i32* %i, align 4
  %cmp40 = icmp ule i32 %34, 36
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.39, %land.lhs.true.35, %land.lhs.true.31, %land.lhs.true
  %35 = load i32, i32* %mode.addr, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom41
  %36 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %36, 5
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %37 = load i32, i32* %mode.addr, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom44
  %38 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %38, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %39 = phi i1 [ true, %cond.true ], [ %cmp46, %lor.rhs ]
  %cond = select i1 %39, i32 2, i32 1
  br label %cond.end.69

cond.false:                                       ; preds = %land.lhs.true.39, %lor.lhs.false.37
  %40 = load i32, i32* %mode.addr, align 4
  %cmp47 = icmp eq i32 %40, 18
  br i1 %cmp47, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %cond.false
  %41 = load i32, i32* @target_flags, align 4
  %and = and i32 %41, 33554432
  %tobool49 = icmp ne i32 %and, 0
  %cond50 = select i1 %tobool49, i32 2, i32 3
  br label %cond.end.67

cond.false.51:                                    ; preds = %cond.false
  %42 = load i32, i32* %mode.addr, align 4
  %cmp52 = icmp eq i32 %42, 24
  br i1 %cmp52, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.false.51
  %43 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %43, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 4, i32 6
  br label %cond.end

cond.false.57:                                    ; preds = %cond.false.51
  %44 = load i32, i32* %mode.addr, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom58
  %45 = load i8, i8* %arrayidx59, align 1
  %conv = zext i8 %45 to i32
  %46 = load i32, i32* @target_flags, align 4
  %and60 = and i32 %46, 33554432
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 8, i32 4
  %add = add nsw i32 %conv, %cond62
  %sub = sub nsw i32 %add, 1
  %47 = load i32, i32* @target_flags, align 4
  %and63 = and i32 %47, 33554432
  %tobool64 = icmp ne i32 %and63, 0
  %cond65 = select i1 %tobool64, i32 8, i32 4
  %div = sdiv i32 %sub, %cond65
  br label %cond.end

cond.end:                                         ; preds = %cond.false.57, %cond.true.53
  %cond66 = phi i32 [ %cond56, %cond.true.53 ], [ %div, %cond.false.57 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end, %cond.true.48
  %cond68 = phi i32 [ %cond50, %cond.true.48 ], [ %cond66, %cond.end ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %lor.end
  %cond70 = phi i32 [ %cond, %lor.end ], [ %cond68, %cond.end.67 ]
  store i32 %cond70, i32* %n, align 4
  %48 = load i32, i32* %n, align 4
  %49 = load i32, i32* @max_value_regs, align 4
  %cmp71 = icmp ugt i32 %48, %49
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %cond.end.69
  %50 = load i32, i32* %n, align 4
  store i32 %50, i32* @max_value_regs, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %cond.end.69
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.25
  %51 = load i32, i32* @next_unknown_value, align 4
  %inc = add i32 %51, 1
  store i32 %inc, i32* @next_unknown_value, align 4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load76 = load i32, i32* %53, align 8
  %bf.lshr77 = lshr i32 %bf.load76, 16
  %bf.clear78 = and i32 %bf.lshr77, 255
  %call = call %struct.cselib_val_struct* @new_cselib_val(i32 %inc, i32 %bf.clear78)
  store %struct.cselib_val_struct* %call, %struct.cselib_val_struct** %e, align 8
  %54 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %54, i32 0, i32 2
  %55 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call79 = call %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %55, %struct.rtx_def* %56)
  %57 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %locs80 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %57, i32 0, i32 2
  store %struct.elt_loc_list* %call79, %struct.elt_loc_list** %locs80, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom81 = zext i32 %58 to i64
  %59 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data82 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %59, i32 0, i32 4
  %te83 = bitcast %union.varray_data_tag* %data82 to [1 x %struct.elt_list*]*
  %arrayidx84 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te83, i32 0, i64 %idxprom81
  %60 = load %struct.elt_list*, %struct.elt_list** %arrayidx84, align 8
  %cmp85 = icmp eq %struct.elt_list* %60, null
  br i1 %cmp85, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.end.75
  br label %do.body

do.body:                                          ; preds = %if.then.87
  %61 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %61, i32 0, i32 1
  %62 = load i64, i64* %elements_used, align 8
  %63 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %63, i32 0, i32 0
  %64 = load i64, i64* %num_elements, align 8
  %cmp88 = icmp uge i64 %62, %64
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %do.body
  %65 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %num_elements91 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 0
  %67 = load i64, i64* %num_elements91, align 8
  %mul = mul i64 2, %67
  %call92 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %65, i64 %mul)
  store %struct.varray_head_tag* %call92, %struct.varray_head_tag** @used_regs, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %do.body
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %69, i32 0, i32 1
  %70 = load i64, i64* %elements_used94, align 8
  %inc95 = add i64 %70, 1
  store i64 %inc95, i64* %elements_used94, align 8
  %71 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %data96 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %71, i32 0, i32 4
  %u97 = bitcast %union.varray_data_tag* %data96 to [1 x i32]*
  %arrayidx98 = getelementptr inbounds [1 x i32], [1 x i32]* %u97, i32 0, i64 %70
  store i32 %68, i32* %arrayidx98, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.93
  br label %if.end.99

if.end.99:                                        ; preds = %do.end, %if.end.75
  %72 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %72 to i64
  %73 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data101 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %73, i32 0, i32 4
  %te102 = bitcast %union.varray_data_tag* %data101 to [1 x %struct.elt_list*]*
  %arrayidx103 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te102, i32 0, i64 %idxprom100
  %74 = load %struct.elt_list*, %struct.elt_list** %arrayidx103, align 8
  %75 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %call104 = call %struct.elt_list* @new_elt_list(%struct.elt_list* %74, %struct.cselib_val_struct* %75)
  %76 = load i32, i32* %i, align 4
  %idxprom105 = zext i32 %76 to i64
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data106 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 4
  %te107 = bitcast %union.varray_data_tag* %data106 to [1 x %struct.elt_list*]*
  %arrayidx108 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te107, i32 0, i64 %idxprom105
  store %struct.elt_list* %call104, %struct.elt_list** %arrayidx108, align 8
  %78 = load %struct.htab*, %struct.htab** @hash_table, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i8*
  %81 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %value = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %81, i32 0, i32 0
  %82 = load i32, i32* %value, align 4
  %call109 = call i8** @htab_find_slot_with_hash(%struct.htab* %78, i8* %80, i32 %82, i32 1)
  store i8** %call109, i8*** %slot, align 8
  %83 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %84 = bitcast %struct.cselib_val_struct* %83 to i8*
  %85 = load i8**, i8*** %slot, align 8
  store i8* %84, i8** %85, align 8
  %86 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  store %struct.cselib_val_struct* %86, %struct.cselib_val_struct** %retval
  br label %return

if.end.110:                                       ; preds = %if.end.8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load111 = load i32, i32* %88, align 8
  %bf.clear112 = and i32 %bf.load111, 65535
  %cmp113 = icmp eq i32 %bf.clear112, 66
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.110
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %90 = load i32, i32* %create.addr, align 4
  %call116 = call %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %89, i32 %90)
  store %struct.cselib_val_struct* %call116, %struct.cselib_val_struct** %retval
  br label %return

if.end.117:                                       ; preds = %if.end.110
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %92 = load i32, i32* %mode.addr, align 4
  %93 = load i32, i32* %create.addr, align 4
  %call118 = call i32 @hash_rtx(%struct.rtx_def* %91, i32 %92, i32 %93)
  store i32 %call118, i32* %hashval, align 4
  %94 = load i32, i32* %hashval, align 4
  %tobool119 = icmp ne i32 %94, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %if.end.117
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end.121:                                       ; preds = %if.end.117
  %95 = load %struct.htab*, %struct.htab** @hash_table, align 8
  %96 = load i32, i32* %mode.addr, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call122 = call %struct.rtx_def* @wrap_constant(i32 %96, %struct.rtx_def* %97)
  %98 = bitcast %struct.rtx_def* %call122 to i8*
  %99 = load i32, i32* %hashval, align 4
  %100 = load i32, i32* %create.addr, align 4
  %tobool123 = icmp ne i32 %100, 0
  %cond124 = select i1 %tobool123, i32 1, i32 0
  %call125 = call i8** @htab_find_slot_with_hash(%struct.htab* %95, i8* %98, i32 %99, i32 %cond124)
  store i8** %call125, i8*** %slot, align 8
  %101 = load i8**, i8*** %slot, align 8
  %cmp126 = icmp eq i8** %101, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.121
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end.129:                                       ; preds = %if.end.121
  %102 = load i8**, i8*** %slot, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %104, %struct.cselib_val_struct** %e, align 8
  %105 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %tobool130 = icmp ne %struct.cselib_val_struct* %105, null
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  %106 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  store %struct.cselib_val_struct* %106, %struct.cselib_val_struct** %retval
  br label %return

if.end.132:                                       ; preds = %if.end.129
  %107 = load i32, i32* %hashval, align 4
  %108 = load i32, i32* %mode.addr, align 4
  %call133 = call %struct.cselib_val_struct* @new_cselib_val(i32 %107, i32 %108)
  store %struct.cselib_val_struct* %call133, %struct.cselib_val_struct** %e, align 8
  %109 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %110 = bitcast %struct.cselib_val_struct* %109 to i8*
  %111 = load i8**, i8*** %slot, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %locs134 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %112, i32 0, i32 2
  %113 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs134, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call135 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %114)
  %call136 = call %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %113, %struct.rtx_def* %call135)
  %115 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %locs137 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %115, i32 0, i32 2
  store %struct.elt_loc_list* %call136, %struct.elt_loc_list** %locs137, align 8
  %116 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  store %struct.cselib_val_struct* %116, %struct.cselib_val_struct** %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.131, %if.then.128, %if.then.120, %if.then.115, %if.end.99, %if.then.24, %if.then.20, %if.then.7
  %117 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %retval
  ret %struct.cselib_val_struct* %117
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %e = alloca %struct.cselib_val_struct*, align 8
  %l = alloca %struct.elt_list*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t75 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %fmt, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %copy, align 8
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default [
    i32 61, label %sw.bb
    i32 66, label %sw.bb.12
    i32 55, label %sw.bb.22
    i32 56, label %sw.bb.22
    i32 54, label %sw.bb.22
    i32 99, label %sw.bb.23
    i32 97, label %sw.bb.23
    i32 98, label %sw.bb.23
    i32 96, label %sw.bb.23
    i32 101, label %sw.bb.23
    i32 100, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %te = bitcast %union.varray_data_tag* %data to [1 x %struct.elt_list*]*
  %arrayidx3 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te, i32 0, i64 %idxprom2
  %9 = load %struct.elt_list*, %struct.elt_list** %arrayidx3, align 8
  store %struct.elt_list* %9, %struct.elt_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %10 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %tobool = icmp ne %struct.elt_list* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %11, i32 0, i32 1
  %12 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %12, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load4 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load6 = load i32, i32* %16, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 255
  %cmp = icmp eq i32 %bf.clear5, %bf.clear8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt9 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %17, i32 0, i32 1
  %18 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt9, align 8
  %u10 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %18, i32 0, i32 1
  %val_rtx11 = bitcast %union.anon* %u10 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx11, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %20, i32 0, i32 0
  %21 = load %struct.elt_list*, %struct.elt_list** %next, align 8
  store %struct.elt_list* %21, %struct.elt_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 806, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.cselib_subst_to_values, i32 0, i32 0)) #6
  unreachable

sw.bb.12:                                         ; preds = %entry
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %22, i32 0)
  store %struct.cselib_val_struct* %call, %struct.cselib_val_struct** %e, align 8
  %23 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %tobool13 = icmp ne %struct.cselib_val_struct* %23, null
  br i1 %tobool13, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.12
  %24 = load i32, i32* @next_unknown_value, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* @next_unknown_value, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load15 = load i32, i32* %26, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %call18 = call %struct.cselib_val_struct* @new_cselib_val(i32 %inc, i32 %bf.clear17)
  store %struct.cselib_val_struct* %call18, %struct.cselib_val_struct** %e, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %sw.bb.12
  %27 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u20 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %27, i32 0, i32 1
  %val_rtx21 = bitcast %union.anon* %u20 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx21, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry, %entry, %entry
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %30 = load i32, i32* @next_unknown_value, align 4
  %inc24 = add i32 %30, 1
  store i32 %inc24, i32* @next_unknown_value, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load25 = load i32, i32* %32, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 16
  %bf.clear27 = and i32 %bf.lshr26, 255
  %call28 = call %struct.cselib_val_struct* @new_cselib_val(i32 %inc24, i32 %bf.clear27)
  store %struct.cselib_val_struct* %call28, %struct.cselib_val_struct** %e, align 8
  %33 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u29 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %33, i32 0, i32 1
  %val_rtx30 = bitcast %union.anon* %u29 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx30, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %35 = load i32, i32* %code, align 4
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom31
  %36 = load i8, i8* %arrayidx32, align 1
  %conv = zext i8 %36 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.153, %sw.epilog
  %37 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %37, 0
  br i1 %cmp34, label %for.body.36, label %for.end.154

for.body.36:                                      ; preds = %for.cond.33
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load i8*, i8** %fmt, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %39, i64 %idxprom37
  %40 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %40 to i32
  %cmp40 = icmp eq i32 %conv39, 101
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.body.36
  %41 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 %idxprom43
  %rtx = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call46 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %43)
  store %struct.rtx_def* %call46, %struct.rtx_def** %t, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 %idxprom47
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %cmp51 = icmp ne %struct.rtx_def* %44, %47
  br i1 %cmp51, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %if.then.42
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %cmp53 = icmp eq %struct.rtx_def* %48, %49
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call56 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %50)
  store %struct.rtx_def* %call56, %struct.rtx_def** %copy, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true, %if.then.42
  %51 = load %struct.rtx_def*, %struct.rtx_def** %t, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 %idxprom58
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  store %struct.rtx_def* %51, %struct.rtx_def** %rtx61, align 8
  br label %if.end.152

if.else:                                          ; preds = %for.body.36
  %54 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load i8*, i8** %fmt, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %55, i64 %idxprom62
  %56 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %56 to i32
  %cmp65 = icmp eq i32 %conv64, 69
  br i1 %cmp65, label %if.then.67, label %if.end.151

if.then.67:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.148, %if.then.67
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 %idxprom69
  %rtvec = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %60, i32 0, i32 0
  %61 = load i32, i32* %num_elem, align 4
  %cmp72 = icmp slt i32 %57, %61
  br i1 %cmp72, label %for.body.74, label %for.end.150

for.body.74:                                      ; preds = %for.cond.68
  %62 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %63 to i64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 %idxprom77
  %rtvec80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtvec_def**
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec80, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom76
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx81, align 8
  %call82 = call %struct.rtx_def* @cselib_subst_to_values(%struct.rtx_def* %66)
  store %struct.rtx_def* %call82, %struct.rtx_def** %t75, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %t75, align 8
  %68 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 %idxprom84
  %rtvec87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec87, align 8
  %elem88 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %71, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem88, i32 0, i64 %idxprom83
  %72 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx89, align 8
  %cmp90 = icmp ne %struct.rtx_def* %67, %72
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.140

land.lhs.true.92:                                 ; preds = %for.body.74
  %73 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %73 to i64
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 %idxprom93
  %rtvec96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtvec_def**
  %75 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec96, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 %idxprom97
  %rtvec100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec100, align 8
  %cmp101 = icmp eq %struct.rtvec_def* %75, %78
  br i1 %cmp101, label %if.then.103, label %if.end.140

if.then.103:                                      ; preds = %land.lhs.true.92
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %cmp104 = icmp eq %struct.rtx_def* %79, %80
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.then.103
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call107 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %81)
  store %struct.rtx_def* %call107, %struct.rtx_def** %copy, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.then.103
  %82 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %82 to i64
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 %idxprom109
  %rtvec112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtvec_def**
  %84 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec112, align 8
  %num_elem113 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %84, i32 0, i32 0
  %85 = load i32, i32* %num_elem113, align 4
  %call114 = call %struct.rtvec_def* @rtvec_alloc(i32 %85)
  %86 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %86 to i64
  %87 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 %idxprom115
  %rtvec118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtvec_def**
  store %struct.rtvec_def* %call114, %struct.rtvec_def** %rtvec118, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.137, %if.end.108
  %88 = load i32, i32* %k, align 4
  %89 = load i32, i32* %j, align 4
  %cmp120 = icmp slt i32 %88, %89
  br i1 %cmp120, label %for.body.122, label %for.end.139

for.body.122:                                     ; preds = %for.cond.119
  %90 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %91 to i64
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 %idxprom124
  %rtvec127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtvec_def**
  %93 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec127, align 8
  %elem128 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %93, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem128, i32 0, i64 %idxprom123
  %94 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx129, align 8
  %95 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %96 to i64
  %97 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 %idxprom131
  %rtvec134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtvec_def**
  %98 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec134, align 8
  %elem135 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %98, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem135, i32 0, i64 %idxprom130
  store %struct.rtx_def* %94, %struct.rtx_def** %arrayidx136, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.122
  %99 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %99, 1
  store i32 %inc138, i32* %k, align 4
  br label %for.cond.119

for.end.139:                                      ; preds = %for.cond.119
  br label %if.end.140

if.end.140:                                       ; preds = %for.end.139, %land.lhs.true.92, %for.body.74
  %100 = load %struct.rtx_def*, %struct.rtx_def** %t75, align 8
  %101 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 %idxprom142
  %rtvec145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtvec_def**
  %104 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec145, align 8
  %elem146 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %104, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem146, i32 0, i64 %idxprom141
  store %struct.rtx_def* %100, %struct.rtx_def** %arrayidx147, align 8
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.140
  %105 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %105, 1
  store i32 %inc149, i32* %j, align 4
  br label %for.cond.68

for.end.150:                                      ; preds = %for.cond.68
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %if.else
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.57
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %106 = load i32, i32* %i, align 4
  %dec = add nsw i32 %106, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.33

for.end.154:                                      ; preds = %for.cond.33
  %107 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.154, %sw.bb.23, %sw.bb.22, %if.end.19, %if.then
  %108 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %108
}

; Function Attrs: nounwind uwtable
define internal %struct.cselib_val_struct* @cselib_lookup_mem(%struct.rtx_def* %x, i32 %create) #0 {
entry:
  %retval = alloca %struct.cselib_val_struct*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %create.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %slot = alloca i8**, align 8
  %addr = alloca %struct.cselib_val_struct*, align 8
  %mem_elt = alloca %struct.cselib_val_struct*, align 8
  %l = alloca %struct.elt_list*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %create, i32* %create.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 27
  %bf.clear3 = and i32 %bf.lshr2, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %4, 51
  br i1 %cmp, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %7 = load i32, i32* %mode, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %8, 6
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %9 = load i32, i32* %mode, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp eq i32 %10, 8
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false.4
  %11 = load i32, i32* @flag_float_store, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.10
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %14 = load i32, i32* %mode, align 4
  %15 = load i32, i32* %create.addr, align 4
  %call = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %13, i32 %14, i32 %15)
  store %struct.cselib_val_struct* %call, %struct.cselib_val_struct** %addr, align 8
  %16 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr, align 8
  %tobool16 = icmp ne %struct.cselib_val_struct* %16, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %17 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr, align 8
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %17, i32 0, i32 3
  %18 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8
  store %struct.elt_list* %18, %struct.elt_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %19 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %tobool19 = icmp ne %struct.elt_list* %19, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %20, i32 0, i32 1
  %21 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %21, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load20 = load i32, i32* %23, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 255
  %24 = load i32, i32* %mode, align 4
  %cmp23 = icmp eq i32 %bf.clear22, %24
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.body
  %25 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %elt25 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %25, i32 0, i32 1
  %26 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt25, align 8
  store %struct.cselib_val_struct* %26, %struct.cselib_val_struct** %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %27 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %27, i32 0, i32 0
  %28 = load %struct.elt_list*, %struct.elt_list** %next, align 8
  store %struct.elt_list* %28, %struct.elt_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %create.addr, align 4
  %tobool27 = icmp ne i32 %29, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %for.end
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %retval
  br label %return

if.end.29:                                        ; preds = %for.end
  %30 = load i32, i32* @next_unknown_value, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* @next_unknown_value, align 4
  %31 = load i32, i32* %mode, align 4
  %call30 = call %struct.cselib_val_struct* @new_cselib_val(i32 %inc, i32 %31)
  store %struct.cselib_val_struct* %call30, %struct.cselib_val_struct** %mem_elt, align 8
  %32 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr, align 8
  %33 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @add_mem_for_addr(%struct.cselib_val_struct* %32, %struct.cselib_val_struct* %33, %struct.rtx_def* %34)
  %35 = load %struct.htab*, %struct.htab** @hash_table, align 8
  %36 = load i32, i32* %mode, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call31 = call %struct.rtx_def* @wrap_constant(i32 %36, %struct.rtx_def* %37)
  %38 = bitcast %struct.rtx_def* %call31 to i8*
  %39 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt, align 8
  %value = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %39, i32 0, i32 0
  %40 = load i32, i32* %value, align 4
  %call32 = call i8** @htab_find_slot_with_hash(%struct.htab* %35, i8* %38, i32 %40, i32 1)
  store i8** %call32, i8*** %slot, align 8
  %41 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt, align 8
  %42 = bitcast %struct.cselib_val_struct* %41 to i8*
  %43 = load i8**, i8*** %slot, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt, align 8
  store %struct.cselib_val_struct* %44, %struct.cselib_val_struct** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.24, %if.then.17, %if.then
  %45 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %retval
  ret %struct.cselib_val_struct* %45
}

; Function Attrs: nounwind uwtable
define internal %struct.cselib_val_struct* @new_cselib_val(i32 %value, i32 %mode) #0 {
entry:
  %value.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %e = alloca %struct.cselib_val_struct*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value7 = alloca i8*, align 8
  %tmp38 = alloca i8*, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @empty_vals, align 8
  store %struct.cselib_val_struct* %0, %struct.cselib_val_struct** %e, align 8
  %1 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %tobool = icmp ne %struct.cselib_val_struct* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %2, i32 0, i32 1
  %next_free = bitcast %union.anon* %u to %struct.cselib_val_struct**
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %next_free, align 8
  store %struct.cselib_val_struct* %3, %struct.cselib_val_struct** @empty_vals, align 8
  br label %if.end.39

if.else:                                          ; preds = %entry
  store %struct.obstack* @cselib_obstack, %struct.obstack** %__h, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %4, %struct.obstack** %__o, align 8
  store i32 32, i32* %__len, align 4
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free1 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i32, i32* %__len, align 4
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %11 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load i32, i32* %__len, align 4
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 3
  %14 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %15, %struct.obstack** %__o1, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 2
  %17 = load i8*, i8** %object_base, align 8
  store i8* %17, i8** %value7, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free8 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free8, align 8
  %20 = load i8*, i8** %value7, align 8
  %cmp9 = icmp eq i8* %19, %20
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free13 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %23 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast14, 0
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask, align 4
  %conv16 = sext i32 %25 to i64
  %add = add nsw i64 %sub.ptr.sub15, %conv16
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask17, align 4
  %neg = xor i32 %27, -1
  %conv18 = sext i32 %neg to i64
  %and = and i64 %add, %conv18
  %add.ptr19 = getelementptr inbounds i8, i8* null, i64 %and
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  store i8* %add.ptr19, i8** %next_free20, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free21, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 1
  %32 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %33 = bitcast %struct._obstack_chunk* %32 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %33 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit25 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 4
  %35 = load i8*, i8** %chunk_limit25, align 8
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk26 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 1
  %37 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk26, align 8
  %38 = bitcast %struct._obstack_chunk* %37 to i8*
  %sub.ptr.lhs.cast27 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %38 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp sgt i64 %sub.ptr.sub24, %sub.ptr.sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.12
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  store i8* %40, i8** %next_free34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.12
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  %43 = load i8*, i8** %next_free36, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base37 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 2
  store i8* %43, i8** %object_base37, align 8
  %45 = load i8*, i8** %value7, align 8
  store i8* %45, i8** %tmp38
  %46 = load i8*, i8** %tmp38
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = bitcast i8* %47 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %48, %struct.cselib_val_struct** %e, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.35, %if.then
  %49 = load i32, i32* %value.addr, align 4
  %cmp40 = icmp eq i32 %49, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 710, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.new_cselib_val, i32 0, i32 0)) #6
  unreachable

if.end.43:                                        ; preds = %if.end.39
  %50 = load i32, i32* %value.addr, align 4
  %51 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %value44 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %51, i32 0, i32 0
  store i32 %50, i32* %value44, align 4
  %52 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_fmt_0(i32 60, i32 %52)
  %53 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u45 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %53, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u45 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %val_rtx, align 8
  %54 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %55 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %u46 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %55, i32 0, i32 1
  %val_rtx47 = bitcast %union.anon* %u46 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx47, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**
  store %struct.cselib_val_struct* %54, %struct.cselib_val_struct** %rt_cselib, align 8
  %57 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %57, i32 0, i32 3
  store %struct.elt_list* null, %struct.elt_list** %addr_list, align 8
  %58 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %58, i32 0, i32 2
  store %struct.elt_loc_list* null, %struct.elt_loc_list** %locs, align 8
  %59 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  ret %struct.cselib_val_struct* %59
}

declare %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def*) #3

declare %struct.rtvec_def* @rtvec_alloc(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %next, %struct.rtx_def* %loc) #0 {
entry:
  %next.addr = alloca %struct.elt_loc_list*, align 8
  %loc.addr = alloca %struct.rtx_def*, align 8
  %el = alloca %struct.elt_loc_list*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  store %struct.elt_loc_list* %next, %struct.elt_loc_list** %next.addr, align 8
  store %struct.rtx_def* %loc, %struct.rtx_def** %loc.addr, align 8
  %0 = load %struct.elt_loc_list*, %struct.elt_loc_list** @empty_elt_loc_lists, align 8
  store %struct.elt_loc_list* %0, %struct.elt_loc_list** %el, align 8
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  %tobool = icmp ne %struct.elt_loc_list* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  %next1 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %2, i32 0, i32 0
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next1, align 8
  store %struct.elt_loc_list* %3, %struct.elt_loc_list** @empty_elt_loc_lists, align 8
  br label %if.end.38

if.else:                                          ; preds = %entry
  store %struct.obstack* @cselib_obstack, %struct.obstack** %__h, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %4, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i32, i32* %__len, align 4
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %11 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load i32, i32* %__len, align 4
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 3
  %14 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %15, %struct.obstack** %__o1, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 2
  %17 = load i8*, i8** %object_base, align 8
  store i8* %17, i8** %value, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free7, align 8
  %20 = load i8*, i8** %value, align 8
  %cmp8 = icmp eq i8* %19, %20
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %23 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast13, 0
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask, align 4
  %conv15 = sext i32 %25 to i64
  %add = add nsw i64 %sub.ptr.sub14, %conv15
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %27, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free20, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 1
  %32 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %33 = bitcast %struct._obstack_chunk* %32 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %33 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 4
  %35 = load i8*, i8** %chunk_limit24, align 8
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 1
  %37 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %38 = bitcast %struct._obstack_chunk* %37 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %38 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.11
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit32, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  store i8* %40, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.11
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  %43 = load i8*, i8** %next_free35, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 2
  store i8* %43, i8** %object_base36, align 8
  %45 = load i8*, i8** %value, align 8
  store i8* %45, i8** %tmp37
  %46 = load i8*, i8** %tmp37
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = bitcast i8* %47 to %struct.elt_loc_list*
  store %struct.elt_loc_list* %48, %struct.elt_loc_list** %el, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %if.then
  %49 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next.addr, align 8
  %50 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  %next39 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %50, i32 0, i32 0
  store %struct.elt_loc_list* %49, %struct.elt_loc_list** %next39, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %52 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  %loc40 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %52, i32 0, i32 1
  store %struct.rtx_def* %51, %struct.rtx_def** %loc40, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** @cselib_current_insn, align 8
  %54 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  %setting_insn = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %54, i32 0, i32 2
  store %struct.rtx_def* %53, %struct.rtx_def** %setting_insn, align 8
  %55 = load %struct.elt_loc_list*, %struct.elt_loc_list** %el, align 8
  ret %struct.elt_loc_list* %55
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.elt_list* @new_elt_list(%struct.elt_list* %next, %struct.cselib_val_struct* %elt) #0 {
entry:
  %next.addr = alloca %struct.elt_list*, align 8
  %elt.addr = alloca %struct.cselib_val_struct*, align 8
  %el = alloca %struct.elt_list*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  store %struct.elt_list* %next, %struct.elt_list** %next.addr, align 8
  store %struct.cselib_val_struct* %elt, %struct.cselib_val_struct** %elt.addr, align 8
  %0 = load %struct.elt_list*, %struct.elt_list** @empty_elt_lists, align 8
  store %struct.elt_list* %0, %struct.elt_list** %el, align 8
  %1 = load %struct.elt_list*, %struct.elt_list** %el, align 8
  %tobool = icmp ne %struct.elt_list* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.elt_list*, %struct.elt_list** %el, align 8
  %next1 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %2, i32 0, i32 0
  %3 = load %struct.elt_list*, %struct.elt_list** %next1, align 8
  store %struct.elt_list* %3, %struct.elt_list** @empty_elt_lists, align 8
  br label %if.end.38

if.else:                                          ; preds = %entry
  store %struct.obstack* @cselib_obstack, %struct.obstack** %__h, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %4, %struct.obstack** %__o, align 8
  store i32 16, i32* %__len, align 4
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i32, i32* %__len, align 4
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %11 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load i32, i32* %__len, align 4
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 3
  %14 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %15, %struct.obstack** %__o1, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 2
  %17 = load i8*, i8** %object_base, align 8
  store i8* %17, i8** %value, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free7, align 8
  %20 = load i8*, i8** %value, align 8
  %cmp8 = icmp eq i8* %19, %20
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %23 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast13, 0
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask, align 4
  %conv15 = sext i32 %25 to i64
  %add = add nsw i64 %sub.ptr.sub14, %conv15
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %27, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free20, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 1
  %32 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %33 = bitcast %struct._obstack_chunk* %32 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %33 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 4
  %35 = load i8*, i8** %chunk_limit24, align 8
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 1
  %37 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %38 = bitcast %struct._obstack_chunk* %37 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %38 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.11
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit32, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  store i8* %40, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.11
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  %43 = load i8*, i8** %next_free35, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 2
  store i8* %43, i8** %object_base36, align 8
  %45 = load i8*, i8** %value, align 8
  store i8* %45, i8** %tmp37
  %46 = load i8*, i8** %tmp37
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = bitcast i8* %47 to %struct.elt_list*
  store %struct.elt_list* %48, %struct.elt_list** %el, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %if.then
  %49 = load %struct.elt_list*, %struct.elt_list** %next.addr, align 8
  %50 = load %struct.elt_list*, %struct.elt_list** %el, align 8
  %next39 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %50, i32 0, i32 0
  store %struct.elt_list* %49, %struct.elt_list** %next39, align 8
  %51 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt.addr, align 8
  %52 = load %struct.elt_list*, %struct.elt_list** %el, align 8
  %elt40 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %52, i32 0, i32 1
  store %struct.cselib_val_struct* %51, %struct.cselib_val_struct** %elt40, align 8
  %53 = load %struct.elt_list*, %struct.elt_list** %el, align 8
  ret %struct.elt_list* %53
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @hash_rtx(%struct.rtx_def* %x, i32 %mode, i32 %create) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %create.addr = alloca i32, align 4
  %e = alloca %struct.cselib_val_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %hash = alloca i32, align 4
  %units = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %tem_hash = alloca i32, align 4
  %tem_hash143 = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %create, i32* %create.addr, align 4
  store i32 0, i32* %hash, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %add = add i32 %2, %bf.clear2
  %5 = load i32, i32* %hash, align 4
  %add3 = add i32 %5, %add
  store i32 %add3, i32* %hash, align 4
  %6 = load i32, i32* %code, align 4
  switch i32 %6, label %sw.default [
    i32 66, label %sw.bb
    i32 61, label %sw.bb
    i32 54, label %sw.bb.7
    i32 55, label %sw.bb.14
    i32 56, label %sw.bb.50
    i32 67, label %sw.bb.70
    i32 68, label %sw.bb.82
    i32 96, label %sw.bb.94
    i32 97, label %sw.bb.94
    i32 98, label %sw.bb.94
    i32 99, label %sw.bb.94
    i32 101, label %sw.bb.94
    i32 100, label %sw.bb.94
    i32 59, label %sw.bb.94
    i32 69, label %sw.bb.94
    i32 50, label %sw.bb.94
    i32 43, label %sw.bb.94
    i32 41, label %sw.bb.95
  ]

sw.bb:                                            ; preds = %entry, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  %10 = load i32, i32* %create.addr, align 4
  %call = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %7, i32 %bf.clear6, i32 %10)
  store %struct.cselib_val_struct* %call, %struct.cselib_val_struct** %e, align 8
  %11 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %tobool = icmp ne %struct.cselib_val_struct* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %12 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %e, align 8
  %value = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %12, i32 0, i32 0
  %13 = load i32, i32* %value, align 4
  store i32 %13, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %14 = load i32, i32* %mode.addr, align 4
  %add8 = add i32 6912, %14
  %conv = zext i32 %add8 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %16 = load i64, i64* %rtwint, align 8
  %add9 = add nsw i64 %conv, %16
  %17 = load i32, i32* %hash, align 4
  %conv10 = zext i32 %17 to i64
  %add11 = add nsw i64 %conv10, %add9
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* %hash, align 4
  %18 = load i32, i32* %hash, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.7
  %19 = load i32, i32* %hash, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 54, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %20 = load i32, i32* %code, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load15 = load i32, i32* %22, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %add18 = add i32 %20, %bf.clear17
  %23 = load i32, i32* %hash, align 4
  %add19 = add i32 %23, %add18
  store i32 %add19, i32* %hash, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load20 = load i32, i32* %25, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 255
  %cmp = icmp ne i32 %bf.clear22, 0
  br i1 %cmp, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %sw.bb.14
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %26 = load i32, i32* %i, align 4
  %27 = load i8, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @rtx_length, i32 0, i64 55), align 1
  %conv25 = zext i8 %27 to i32
  %cmp26 = icmp slt i32 %26, %conv25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 %idxprom
  %rtwint30 = bitcast %union.rtunion_def* %arrayidx29 to i64*
  %30 = load i64, i64* %rtwint30, align 8
  %31 = load i32, i32* %hash, align 4
  %conv31 = zext i32 %31 to i64
  %add32 = add nsw i64 %conv31, %30
  %conv33 = trunc i64 %add32 to i32
  store i32 %conv33, i32* %hash, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.else:                                          ; preds = %sw.bb.14
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtwint36 = bitcast %union.rtunion_def* %arrayidx35 to i64*
  %34 = load i64, i64* %rtwint36, align 8
  %conv37 = trunc i64 %34 to i32
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtwint40 = bitcast %union.rtunion_def* %arrayidx39 to i64*
  %36 = load i64, i64* %rtwint40, align 8
  %conv41 = trunc i64 %36 to i32
  %add42 = add i32 %conv37, %conv41
  %37 = load i32, i32* %hash, align 4
  %add43 = add i32 %37, %add42
  store i32 %add43, i32* %hash, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %for.end
  %38 = load i32, i32* %hash, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.end.44
  %39 = load i32, i32* %hash, align 4
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.end.44
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi i32 [ %39, %cond.true.46 ], [ 55, %cond.false.47 ]
  store i32 %cond49, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %entry
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 0
  %42 = load i32, i32* %num_elem, align 4
  store i32 %42, i32* %units, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.67, %sw.bb.50
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %units, align 4
  %cmp54 = icmp slt i32 %43, %44
  br i1 %cmp54, label %for.body.56, label %for.end.69

for.body.56:                                      ; preds = %for.cond.53
  %45 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtvec60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec60, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom57
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx61, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %elt, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load62 = load i32, i32* %51, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 16
  %bf.clear64 = and i32 %bf.lshr63, 255
  %call65 = call i32 @hash_rtx(%struct.rtx_def* %49, i32 %bf.clear64, i32 0)
  %52 = load i32, i32* %hash, align 4
  %add66 = add i32 %52, %call65
  store i32 %add66, i32* %hash, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.56
  %53 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %53, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.53

for.end.69:                                       ; preds = %for.cond.53
  %54 = load i32, i32* %hash, align 4
  store i32 %54, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %entry
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %57 = ptrtoint %struct.rtx_def* %56 to i64
  %add73 = add i64 8576, %57
  %58 = load i32, i32* %hash, align 4
  %conv74 = zext i32 %58 to i64
  %add75 = add i64 %conv74, %add73
  %conv76 = trunc i64 %add75 to i32
  store i32 %conv76, i32* %hash, align 4
  %59 = load i32, i32* %hash, align 4
  %tobool77 = icmp ne i32 %59, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %sw.bb.70
  %60 = load i32, i32* %hash, align 4
  br label %cond.end.80

cond.false.79:                                    ; preds = %sw.bb.70
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.78
  %cond81 = phi i32 [ %60, %cond.true.78 ], [ 67, %cond.false.79 ]
  store i32 %cond81, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %entry
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx84 to i8**
  %62 = load i8*, i8** %rtstr, align 8
  %63 = ptrtoint i8* %62 to i64
  %add85 = add i64 8704, %63
  %64 = load i32, i32* %hash, align 4
  %conv86 = zext i32 %64 to i64
  %add87 = add i64 %conv86, %add85
  %conv88 = trunc i64 %add87 to i32
  store i32 %conv88, i32* %hash, align 4
  %65 = load i32, i32* %hash, align 4
  %tobool89 = icmp ne i32 %65, 0
  br i1 %tobool89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %sw.bb.82
  %66 = load i32, i32* %hash, align 4
  br label %cond.end.92

cond.false.91:                                    ; preds = %sw.bb.82
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi i32 [ %66, %cond.true.90 ], [ 68, %cond.false.91 ]
  store i32 %cond93, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.95:                                         ; preds = %entry
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load96 = load i32, i32* %68, align 8
  %bf.lshr97 = lshr i32 %bf.load96, 27
  %bf.clear98 = and i32 %bf.lshr97, 1
  %tobool99 = icmp ne i32 %bf.clear98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %sw.bb.95
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %sw.bb.95
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.101
  %69 = load i32, i32* %code, align 4
  %idxprom102 = sext i32 %69 to i64
  %arrayidx103 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom102
  %70 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %70 to i32
  %sub = sub nsw i32 %conv104, 1
  store i32 %sub, i32* %i, align 4
  %71 = load i32, i32* %code, align 4
  %idxprom105 = sext i32 %71 to i64
  %arrayidx106 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom105
  %72 = load i8*, i8** %arrayidx106, align 8
  store i8* %72, i8** %fmt, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.206, %sw.epilog
  %73 = load i32, i32* %i, align 4
  %cmp108 = icmp sge i32 %73, 0
  br i1 %cmp108, label %for.body.110, label %for.end.207

for.body.110:                                     ; preds = %for.cond.107
  %74 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %74 to i64
  %75 = load i8*, i8** %fmt, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %75, i64 %idxprom111
  %76 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %76 to i32
  %cmp114 = icmp eq i32 %conv113, 101
  br i1 %cmp114, label %if.then.116, label %if.else.127

if.then.116:                                      ; preds = %for.body.110
  %77 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %77 to i64
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 %idxprom117
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %tem, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %81 = load i32, i32* %create.addr, align 4
  %call121 = call i32 @hash_rtx(%struct.rtx_def* %80, i32 0, i32 %81)
  store i32 %call121, i32* %tem_hash, align 4
  %82 = load i32, i32* %tem_hash, align 4
  %cmp122 = icmp eq i32 %82, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.116
  store i32 0, i32* %retval
  br label %return

if.end.125:                                       ; preds = %if.then.116
  %83 = load i32, i32* %tem_hash, align 4
  %84 = load i32, i32* %hash, align 4
  %add126 = add i32 %84, %83
  store i32 %add126, i32* %hash, align 4
  br label %if.end.205

if.else.127:                                      ; preds = %for.body.110
  %85 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %85 to i64
  %86 = load i8*, i8** %fmt, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %86, i64 %idxprom128
  %87 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %87 to i32
  %cmp131 = icmp eq i32 %conv130, 69
  br i1 %cmp131, label %if.then.133, label %if.else.160

if.then.133:                                      ; preds = %if.else.127
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.157, %if.then.133
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %89 to i64
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 %idxprom135
  %rtvec138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtvec_def**
  %91 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec138, align 8
  %num_elem139 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %91, i32 0, i32 0
  %92 = load i32, i32* %num_elem139, align 4
  %cmp140 = icmp slt i32 %88, %92
  br i1 %cmp140, label %for.body.142, label %for.end.159

for.body.142:                                     ; preds = %for.cond.134
  %93 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 %idxprom145
  %rtvec148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec148, align 8
  %elem149 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem149, i32 0, i64 %idxprom144
  %97 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx150, align 8
  %98 = load i32, i32* %create.addr, align 4
  %call151 = call i32 @hash_rtx(%struct.rtx_def* %97, i32 0, i32 %98)
  store i32 %call151, i32* %tem_hash143, align 4
  %99 = load i32, i32* %tem_hash143, align 4
  %cmp152 = icmp eq i32 %99, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %for.body.142
  store i32 0, i32* %retval
  br label %return

if.end.155:                                       ; preds = %for.body.142
  %100 = load i32, i32* %tem_hash143, align 4
  %101 = load i32, i32* %hash, align 4
  %add156 = add i32 %101, %100
  store i32 %add156, i32* %hash, align 4
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.155
  %102 = load i32, i32* %j, align 4
  %inc158 = add nsw i32 %102, 1
  store i32 %inc158, i32* %j, align 4
  br label %for.cond.134

for.end.159:                                      ; preds = %for.cond.134
  br label %if.end.204

if.else.160:                                      ; preds = %if.else.127
  %103 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %103 to i64
  %104 = load i8*, i8** %fmt, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %104, i64 %idxprom161
  %105 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %105 to i32
  %cmp164 = icmp eq i32 %conv163, 115
  br i1 %cmp164, label %if.then.166, label %if.else.177

if.then.166:                                      ; preds = %if.else.160
  %106 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %106 to i64
  %107 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 %idxprom167
  %rtstr170 = bitcast %union.rtunion_def* %arrayidx169 to i8**
  %108 = load i8*, i8** %rtstr170, align 8
  store i8* %108, i8** %p, align 8
  %109 = load i8*, i8** %p, align 8
  %tobool171 = icmp ne i8* %109, null
  br i1 %tobool171, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %if.then.166
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.172
  %110 = load i8*, i8** %p, align 8
  %111 = load i8, i8* %110, align 1
  %tobool173 = icmp ne i8 %111, 0
  br i1 %tobool173, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %113 = load i8, i8* %112, align 1
  %conv174 = zext i8 %113 to i32
  %114 = load i32, i32* %hash, align 4
  %add175 = add i32 %114, %conv174
  store i32 %add175, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.176

if.end.176:                                       ; preds = %while.end, %if.then.166
  br label %if.end.203

if.else.177:                                      ; preds = %if.else.160
  %115 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %115 to i64
  %116 = load i8*, i8** %fmt, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %116, i64 %idxprom178
  %117 = load i8, i8* %arrayidx179, align 1
  %conv180 = sext i8 %117 to i32
  %cmp181 = icmp eq i32 %conv180, 105
  br i1 %cmp181, label %if.then.183, label %if.else.188

if.then.183:                                      ; preds = %if.else.177
  %118 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %118 to i64
  %119 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 %idxprom184
  %rtint = bitcast %union.rtunion_def* %arrayidx186 to i32*
  %120 = load i32, i32* %rtint, align 4
  %121 = load i32, i32* %hash, align 4
  %add187 = add i32 %121, %120
  store i32 %add187, i32* %hash, align 4
  br label %if.end.202

if.else.188:                                      ; preds = %if.else.177
  %122 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %122 to i64
  %123 = load i8*, i8** %fmt, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %123, i64 %idxprom189
  %124 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %124 to i32
  %cmp192 = icmp eq i32 %conv191, 48
  br i1 %cmp192, label %if.then.199, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.188
  %125 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %125 to i64
  %126 = load i8*, i8** %fmt, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %126, i64 %idxprom194
  %127 = load i8, i8* %arrayidx195, align 1
  %conv196 = sext i8 %127 to i32
  %cmp197 = icmp eq i32 %conv196, 116
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %lor.lhs.false, %if.else.188
  br label %if.end.201

if.else.200:                                      ; preds = %lor.lhs.false
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.hash_rtx, i32 0, i32 0)) #6
  unreachable

if.end.201:                                       ; preds = %if.then.199
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.183
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.176
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %for.end.159
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end.125
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205
  %128 = load i32, i32* %i, align 4
  %dec = add nsw i32 %128, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.107

for.end.207:                                      ; preds = %for.cond.107
  %129 = load i32, i32* %hash, align 4
  %tobool208 = icmp ne i32 %129, 0
  br i1 %tobool208, label %cond.true.209, label %cond.false.210

cond.true.209:                                    ; preds = %for.end.207
  %130 = load i32, i32* %hash, align 4
  br label %cond.end.214

cond.false.210:                                   ; preds = %for.end.207
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load211 = load i32, i32* %132, align 8
  %bf.clear212 = and i32 %bf.load211, 65535
  %add213 = add i32 1, %bf.clear212
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.210, %cond.true.209
  %cond215 = phi i32 [ %130, %cond.true.209 ], [ %add213, %cond.false.210 ]
  store i32 %cond215, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.214, %if.then.154, %if.then.124, %if.then.100, %sw.bb.94, %cond.end.92, %cond.end.80, %for.end.69, %cond.end.48, %cond.end, %if.end, %if.then
  %133 = load i32, i32* %retval
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @wrap_constant(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 54
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 55
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  %cmp6 = icmp ne i32 %bf.clear5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 548, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.wrap_constant, i32 0, i32 0)) #6
  unreachable

if.end.9:                                         ; preds = %if.end
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_e(i32 58, i32 %8, %struct.rtx_def* %9)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define void @cselib_process_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** @cselib_current_insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 34
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.4

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %5, i32 28, %struct.rtx_def* null)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 32
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %lor.lhs.false.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 41
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load16, 27
  %bf.clear17 = and i32 %bf.lshr, 1
  %tobool18 = icmp ne i32 %bf.clear17, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12, %land.lhs.true, %entry
  call void @clear_table(i32 0)
  br label %if.end.80

if.end:                                           ; preds = %land.lhs.true.12, %land.lhs.true.8, %lor.lhs.false.4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load19 = load i32, i32* %15, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %idxprom = sext i32 %bf.clear20 to i64
  %arrayidx21 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx21, align 1
  %conv = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv, 105
  br i1 %cmp22, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8
  br label %if.end.80

if.end.25:                                        ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load26 = load i32, i32* %18, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 34
  br i1 %cmp28, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %if.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %19 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %19, 53
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom33
  %21 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %21, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  call void @cselib_invalidate_regno(i32 %22, i32 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load38 = load i32, i32* %25, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 26
  %bf.clear40 = and i32 %bf.lshr39, 1
  %tobool41 = icmp ne i32 %bf.clear40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %for.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** @callmem, align 8
  call void @cselib_invalidate_mem(%struct.rtx_def* %26)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.25
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @cselib_record_sets(%struct.rtx_def* %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load45 = load i32, i32* %29, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 34
  br i1 %cmp47, label %if.then.49, label %if.end.76

if.then.49:                                       ; preds = %if.end.44
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 7
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %x, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.71, %if.then.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool54 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool54, label %for.body.55, label %for.end.75

for.body.55:                                      ; preds = %for.cond.53
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load59 = load i32, i32* %35, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 49
  br i1 %cmp61, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %for.body.55
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  call void @cselib_invalidate_rtx(%struct.rtx_def* %38, %struct.rtx_def* null, i8* null)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.63, %for.body.55
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 1
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %x, align 8
  br label %for.cond.53

for.end.75:                                       ; preds = %for.cond.53
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %if.end.44
  store %struct.rtx_def* null, %struct.rtx_def** @cselib_current_insn, align 8
  %41 = load i32, i32* @n_useless_values, align 4
  %cmp77 = icmp sgt i32 %41, 32
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.76
  call void @remove_useless_values()
  br label %if.end.80

if.end.80:                                        ; preds = %if.then, %if.then.24, %if.then.79, %if.end.76
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #3

; Function Attrs: nounwind uwtable
define internal void @clear_table(i32 %clear_all) #0 {
entry:
  %clear_all.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store i32 %clear_all, i32* %clear_all.addr, align 4
  %0 = load i32, i32* %clear_all.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @cselib_nregs, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %te = bitcast %union.varray_data_tag* %data to [1 x %struct.elt_list*]*
  %arrayidx = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te, i32 0, i64 %idxprom
  store %struct.elt_list* null, %struct.elt_list** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.12, %if.else
  %6 = load i32, i32* %i, align 4
  %conv = zext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 1
  %8 = load i64, i64* %elements_used, align 8
  %cmp2 = icmp ult i64 %conv, %8
  br i1 %cmp2, label %for.body.4, label %for.end.14

for.body.4:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %data6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %u = bitcast %union.varray_data_tag* %data6 to [1 x i32]*
  %arrayidx7 = getelementptr inbounds [1 x i32], [1 x i32]* %u, i32 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = zext i32 %11 to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %te10 = bitcast %union.varray_data_tag* %data9 to [1 x %struct.elt_list*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te10, i32 0, i64 %idxprom8
  store %struct.elt_list* null, %struct.elt_list** %arrayidx11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.4
  %13 = load i32, i32* %i, align 4
  %inc13 = add i32 %13, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.1

for.end.14:                                       ; preds = %for.cond.1
  br label %if.end

if.end:                                           ; preds = %for.end.14, %for.end
  store i32 0, i32* @max_value_regs, align 4
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 1
  store i64 0, i64* %elements_used15, align 8
  %15 = load %struct.htab*, %struct.htab** @hash_table, align 8
  call void @htab_empty(%struct.htab* %15)
  store %struct.obstack* @cselib_obstack, %struct.obstack** %__o, align 8
  %16 = load i8*, i8** @cselib_startobj, align 8
  store i8* %16, i8** %__obj, align 8
  %17 = load i8*, i8** %__obj, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 1
  %19 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %20 = bitcast %struct._obstack_chunk* %19 to i8*
  %cmp16 = icmp ugt i8* %17, %20
  br i1 %cmp16, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.end
  %21 = load i8*, i8** %__obj, align 8
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 4
  %23 = load i8*, i8** %chunk_limit, align 8
  %cmp18 = icmp ult i8* %21, %23
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true
  %24 = load i8*, i8** %__obj, align 8
  %25 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 2
  store i8* %24, i8** %object_base, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %24, i8** %next_free, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %land.lhs.true, %if.end
  %27 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %28 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %27, i8* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** @empty_vals, align 8
  store %struct.elt_list* null, %struct.elt_list** @empty_elt_lists, align 8
  store %struct.elt_loc_list* null, %struct.elt_loc_list** @empty_elt_loc_lists, align 8
  store i32 0, i32* @n_useless_values, align 4
  store i32 0, i32* @next_unknown_value, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cselib_invalidate_regno(i32 %regno, i32 %mode) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %endregno = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca %struct.elt_list**, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  %p = alloca %struct.elt_loc_list**, align 8
  %this_last = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp = icmp uge i32 %1, 53
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i16*, i16** @reg_renumber, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp2 = icmp sge i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 968, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.cselib_invalidate_regno, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %5 = load i32, i32* %regno.addr, align 4
  %cmp4 = icmp ult i32 %5, 53
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.73

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp ne i32 %6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.73

if.then.9:                                        ; preds = %land.lhs.true.6
  %7 = load i32, i32* %regno.addr, align 4
  %8 = load i32, i32* @max_value_regs, align 4
  %cmp10 = icmp ult i32 %7, %8
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  store i32 0, i32* %i, align 4
  br label %if.end.13

if.else:                                          ; preds = %if.then.9
  %9 = load i32, i32* %regno.addr, align 4
  %10 = load i32, i32* @max_value_regs, align 4
  %sub = sub i32 %9, %10
  store i32 %sub, i32* %i, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %11 = load i32, i32* %regno.addr, align 4
  %12 = load i32, i32* %regno.addr, align 4
  %cmp14 = icmp uge i32 %12, 8
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false

land.lhs.true.16:                                 ; preds = %if.end.13
  %13 = load i32, i32* %regno.addr, align 4
  %cmp17 = icmp ule i32 %13, 15
  br i1 %cmp17, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16, %if.end.13
  %14 = load i32, i32* %regno.addr, align 4
  %cmp19 = icmp uge i32 %14, 21
  br i1 %cmp19, label %land.lhs.true.21, label %lor.lhs.false.24

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %regno.addr, align 4
  %cmp22 = icmp ule i32 %15, 28
  br i1 %cmp22, label %cond.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true.21, %lor.lhs.false
  %16 = load i32, i32* %regno.addr, align 4
  %cmp25 = icmp uge i32 %16, 45
  br i1 %cmp25, label %land.lhs.true.27, label %lor.lhs.false.30

land.lhs.true.27:                                 ; preds = %lor.lhs.false.24
  %17 = load i32, i32* %regno.addr, align 4
  %cmp28 = icmp ule i32 %17, 52
  br i1 %cmp28, label %cond.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true.27, %lor.lhs.false.24
  %18 = load i32, i32* %regno.addr, align 4
  %cmp31 = icmp uge i32 %18, 29
  br i1 %cmp31, label %land.lhs.true.33, label %cond.false

land.lhs.true.33:                                 ; preds = %lor.lhs.false.30
  %19 = load i32, i32* %regno.addr, align 4
  %cmp34 = icmp ule i32 %19, 36
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.33, %land.lhs.true.27, %land.lhs.true.21, %land.lhs.true.16
  %20 = load i32, i32* %mode.addr, align 4
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom36
  %21 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %21, 5
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %22 = load i32, i32* %mode.addr, align 4
  %idxprom40 = sext i32 %22 to i64
  %arrayidx41 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom40
  %23 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp eq i32 %23, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %24 = phi i1 [ true, %cond.true ], [ %cmp42, %lor.rhs ]
  %cond = select i1 %24, i32 2, i32 1
  br label %cond.end.70

cond.false:                                       ; preds = %land.lhs.true.33, %lor.lhs.false.30
  %25 = load i32, i32* %mode.addr, align 4
  %cmp44 = icmp eq i32 %25, 18
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool47 = icmp ne i32 %and, 0
  %cond48 = select i1 %tobool47, i32 2, i32 3
  br label %cond.end.68

cond.false.49:                                    ; preds = %cond.false
  %27 = load i32, i32* %mode.addr, align 4
  %cmp50 = icmp eq i32 %27, 24
  br i1 %cmp50, label %cond.true.52, label %cond.false.56

cond.true.52:                                     ; preds = %cond.false.49
  %28 = load i32, i32* @target_flags, align 4
  %and53 = and i32 %28, 33554432
  %tobool54 = icmp ne i32 %and53, 0
  %cond55 = select i1 %tobool54, i32 4, i32 6
  br label %cond.end

cond.false.56:                                    ; preds = %cond.false.49
  %29 = load i32, i32* %mode.addr, align 4
  %idxprom57 = sext i32 %29 to i64
  %arrayidx58 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom57
  %30 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %30 to i32
  %31 = load i32, i32* @target_flags, align 4
  %and60 = and i32 %31, 33554432
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 8, i32 4
  %add = add nsw i32 %conv59, %cond62
  %sub63 = sub nsw i32 %add, 1
  %32 = load i32, i32* @target_flags, align 4
  %and64 = and i32 %32, 33554432
  %tobool65 = icmp ne i32 %and64, 0
  %cond66 = select i1 %tobool65, i32 8, i32 4
  %div = sdiv i32 %sub63, %cond66
  br label %cond.end

cond.end:                                         ; preds = %cond.false.56, %cond.true.52
  %cond67 = phi i32 [ %cond55, %cond.true.52 ], [ %div, %cond.false.56 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end, %cond.true.46
  %cond69 = phi i32 [ %cond48, %cond.true.46 ], [ %cond67, %cond.end ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end.68, %lor.end
  %cond71 = phi i32 [ %cond, %lor.end ], [ %cond69, %cond.end.68 ]
  %add72 = add i32 %11, %cond71
  store i32 %add72, i32* %endregno, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.6, %if.end
  %33 = load i32, i32* %regno.addr, align 4
  store i32 %33, i32* %i, align 4
  %34 = load i32, i32* %regno.addr, align 4
  %add74 = add i32 %34, 1
  store i32 %add74, i32* %endregno, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %cond.end.70
  br label %for.cond

for.cond:                                         ; preds = %for.inc.196, %if.end.75
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %endregno, align 4
  %cmp76 = icmp ult i32 %35, %36
  br i1 %cmp76, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %37 to i64
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 4
  %te = bitcast %union.varray_data_tag* %data to [1 x %struct.elt_list*]*
  %arrayidx79 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te, i32 0, i64 %idxprom78
  store %struct.elt_list** %arrayidx79, %struct.elt_list*** %l, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.195, %if.then.177, %for.body
  %39 = load %struct.elt_list**, %struct.elt_list*** %l, align 8
  %40 = load %struct.elt_list*, %struct.elt_list** %39, align 8
  %tobool80 = icmp ne %struct.elt_list* %40, null
  br i1 %tobool80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load %struct.elt_list**, %struct.elt_list*** %l, align 8
  %42 = load %struct.elt_list*, %struct.elt_list** %41, align 8
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %42, i32 0, i32 1
  %43 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8
  store %struct.cselib_val_struct* %43, %struct.cselib_val_struct** %v, align 8
  %44 = load i32, i32* %i, align 4
  store i32 %44, i32* %this_last, align 4
  %45 = load i32, i32* %i, align 4
  %cmp81 = icmp ult i32 %45, 53
  br i1 %cmp81, label %if.then.83, label %if.end.174

if.then.83:                                       ; preds = %while.body
  %46 = load i32, i32* %i, align 4
  %cmp84 = icmp uge i32 %46, 8
  br i1 %cmp84, label %land.lhs.true.86, label %lor.lhs.false.89

land.lhs.true.86:                                 ; preds = %if.then.83
  %47 = load i32, i32* %i, align 4
  %cmp87 = icmp ule i32 %47, 15
  br i1 %cmp87, label %cond.true.107, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.86, %if.then.83
  %48 = load i32, i32* %i, align 4
  %cmp90 = icmp uge i32 %48, 21
  br i1 %cmp90, label %land.lhs.true.92, label %lor.lhs.false.95

land.lhs.true.92:                                 ; preds = %lor.lhs.false.89
  %49 = load i32, i32* %i, align 4
  %cmp93 = icmp ule i32 %49, 28
  br i1 %cmp93, label %cond.true.107, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %land.lhs.true.92, %lor.lhs.false.89
  %50 = load i32, i32* %i, align 4
  %cmp96 = icmp uge i32 %50, 45
  br i1 %cmp96, label %land.lhs.true.98, label %lor.lhs.false.101

land.lhs.true.98:                                 ; preds = %lor.lhs.false.95
  %51 = load i32, i32* %i, align 4
  %cmp99 = icmp ule i32 %51, 52
  br i1 %cmp99, label %cond.true.107, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true.98, %lor.lhs.false.95
  %52 = load i32, i32* %i, align 4
  %cmp102 = icmp uge i32 %52, 29
  br i1 %cmp102, label %land.lhs.true.104, label %cond.false.124

land.lhs.true.104:                                ; preds = %lor.lhs.false.101
  %53 = load i32, i32* %i, align 4
  %cmp105 = icmp ule i32 %53, 36
  br i1 %cmp105, label %cond.true.107, label %cond.false.124

cond.true.107:                                    ; preds = %land.lhs.true.104, %land.lhs.true.98, %land.lhs.true.92, %land.lhs.true.86
  %54 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %54, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load = load i32, i32* %56, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom108 = sext i32 %bf.clear to i64
  %arrayidx109 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom108
  %57 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp eq i32 %57, 5
  br i1 %cmp110, label %lor.end.122, label %lor.rhs.112

lor.rhs.112:                                      ; preds = %cond.true.107
  %58 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u113 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %58, i32 0, i32 1
  %val_rtx114 = bitcast %union.anon* %u113 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx114, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load115 = load i32, i32* %60, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 16
  %bf.clear117 = and i32 %bf.lshr116, 255
  %idxprom118 = sext i32 %bf.clear117 to i64
  %arrayidx119 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom118
  %61 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp eq i32 %61, 6
  br label %lor.end.122

lor.end.122:                                      ; preds = %lor.rhs.112, %cond.true.107
  %62 = phi i1 [ true, %cond.true.107 ], [ %cmp120, %lor.rhs.112 ]
  %cond123 = select i1 %62, i32 2, i32 1
  br label %cond.end.170

cond.false.124:                                   ; preds = %land.lhs.true.104, %lor.lhs.false.101
  %63 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u125 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %63, i32 0, i32 1
  %val_rtx126 = bitcast %union.anon* %u125 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx126, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load127 = load i32, i32* %65, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %cmp130 = icmp eq i32 %bf.clear129, 18
  br i1 %cmp130, label %cond.true.132, label %cond.false.136

cond.true.132:                                    ; preds = %cond.false.124
  %66 = load i32, i32* @target_flags, align 4
  %and133 = and i32 %66, 33554432
  %tobool134 = icmp ne i32 %and133, 0
  %cond135 = select i1 %tobool134, i32 2, i32 3
  br label %cond.end.168

cond.false.136:                                   ; preds = %cond.false.124
  %67 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u137 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %67, i32 0, i32 1
  %val_rtx138 = bitcast %union.anon* %u137 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx138, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load139 = load i32, i32* %69, align 8
  %bf.lshr140 = lshr i32 %bf.load139, 16
  %bf.clear141 = and i32 %bf.lshr140, 255
  %cmp142 = icmp eq i32 %bf.clear141, 24
  br i1 %cmp142, label %cond.true.144, label %cond.false.148

cond.true.144:                                    ; preds = %cond.false.136
  %70 = load i32, i32* @target_flags, align 4
  %and145 = and i32 %70, 33554432
  %tobool146 = icmp ne i32 %and145, 0
  %cond147 = select i1 %tobool146, i32 4, i32 6
  br label %cond.end.166

cond.false.148:                                   ; preds = %cond.false.136
  %71 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u149 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %71, i32 0, i32 1
  %val_rtx150 = bitcast %union.anon* %u149 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx150, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load151 = load i32, i32* %73, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 16
  %bf.clear153 = and i32 %bf.lshr152, 255
  %idxprom154 = sext i32 %bf.clear153 to i64
  %arrayidx155 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom154
  %74 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %74 to i32
  %75 = load i32, i32* @target_flags, align 4
  %and157 = and i32 %75, 33554432
  %tobool158 = icmp ne i32 %and157, 0
  %cond159 = select i1 %tobool158, i32 8, i32 4
  %add160 = add nsw i32 %conv156, %cond159
  %sub161 = sub nsw i32 %add160, 1
  %76 = load i32, i32* @target_flags, align 4
  %and162 = and i32 %76, 33554432
  %tobool163 = icmp ne i32 %and162, 0
  %cond164 = select i1 %tobool163, i32 8, i32 4
  %div165 = sdiv i32 %sub161, %cond164
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.148, %cond.true.144
  %cond167 = phi i32 [ %cond147, %cond.true.144 ], [ %div165, %cond.false.148 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.132
  %cond169 = phi i32 [ %cond135, %cond.true.132 ], [ %cond167, %cond.end.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %lor.end.122
  %cond171 = phi i32 [ %cond123, %lor.end.122 ], [ %cond169, %cond.end.168 ]
  %sub172 = sub nsw i32 %cond171, 1
  %77 = load i32, i32* %this_last, align 4
  %add173 = add i32 %77, %sub172
  store i32 %add173, i32* %this_last, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %cond.end.170, %while.body
  %78 = load i32, i32* %this_last, align 4
  %79 = load i32, i32* %regno.addr, align 4
  %cmp175 = icmp ult i32 %78, %79
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.174
  %80 = load %struct.elt_list**, %struct.elt_list*** %l, align 8
  %81 = load %struct.elt_list*, %struct.elt_list** %80, align 8
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %81, i32 0, i32 0
  store %struct.elt_list** %next, %struct.elt_list*** %l, align 8
  br label %while.cond

if.end.178:                                       ; preds = %if.end.174
  %82 = load %struct.elt_list**, %struct.elt_list*** %l, align 8
  call void @unchain_one_elt_list(%struct.elt_list** %82)
  %83 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %83, i32 0, i32 2
  store %struct.elt_loc_list** %locs, %struct.elt_loc_list*** %p, align 8
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc, %if.end.178
  %84 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %85 = load %struct.elt_loc_list*, %struct.elt_loc_list** %84, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %85, i32 0, i32 1
  %86 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %x, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load180 = load i32, i32* %88, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %cmp182 = icmp eq i32 %bf.clear181, 61
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.189

land.lhs.true.184:                                ; preds = %for.cond.179
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx185 to i32*
  %90 = load i32, i32* %rtuint, align 4
  %91 = load i32, i32* %i, align 4
  %cmp186 = icmp eq i32 %90, %91
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %land.lhs.true.184
  %92 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  call void @unchain_one_elt_loc_list(%struct.elt_loc_list** %92)
  br label %for.end

if.end.189:                                       ; preds = %land.lhs.true.184, %for.cond.179
  br label %for.inc

for.inc:                                          ; preds = %if.end.189
  %93 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %94 = load %struct.elt_loc_list*, %struct.elt_loc_list** %93, align 8
  %next190 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %94, i32 0, i32 0
  store %struct.elt_loc_list** %next190, %struct.elt_loc_list*** %p, align 8
  br label %for.cond.179

for.end:                                          ; preds = %if.then.188
  %95 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs191 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %95, i32 0, i32 2
  %96 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs191, align 8
  %cmp192 = icmp eq %struct.elt_loc_list* %96, null
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %for.end
  %97 = load i32, i32* @n_useless_values, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* @n_useless_values, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.196

for.inc.196:                                      ; preds = %while.end
  %98 = load i32, i32* %i, align 4
  %inc197 = add i32 %98, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond

for.end.198:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cselib_invalidate_mem(%struct.rtx_def* %mem_rtx) #0 {
entry:
  %mem_rtx.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem_rtx, %struct.rtx_def** %mem_rtx.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @hash_table, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mem_rtx.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i8*
  call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* @cselib_invalidate_mem_1, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cselib_record_sets(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %n_sets = alloca i32, align 4
  %i = alloca i32, align 4
  %sets = alloca [106 x %struct.set], align 16
  %body = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %dest55 = alloca %struct.rtx_def*, align 8
  %src80 = alloca %struct.rtx_def*, align 8
  %dest118 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 0, i32* %n_sets, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %cond, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %body, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %cond, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %body, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 47
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %arrayidx17 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 0
  %src = getelementptr inbounds %struct.set, %struct.set* %arrayidx17, i32 0, i32 0
  store %struct.rtx_def* %13, %struct.rtx_def** %src, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %arrayidx21 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 0
  %dest = getelementptr inbounds %struct.set, %struct.set* %arrayidx21, i32 0, i32 1
  store %struct.rtx_def* %15, %struct.rtx_def** %dest, align 8
  store i32 1, i32* %n_sets, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 39
  br i1 %cmp24, label %if.then.25, label %if.end.50

if.then.25:                                       ; preds = %if.else
  %18 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %20, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %21 = load i32, i32* %i, align 4
  %cmp28 = icmp sge i32 %21, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtvec31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec31, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx32, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %x, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load33 = load i32, i32* %27, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 47
  br i1 %cmp35, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %for.body
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %30 = load i32, i32* %n_sets, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom40
  %src42 = getelementptr inbounds %struct.set, %struct.set* %arrayidx41, i32 0, i32 0
  store %struct.rtx_def* %29, %struct.rtx_def** %src42, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %33 = load i32, i32* %n_sets, align 4
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom46
  %dest48 = getelementptr inbounds %struct.set, %struct.set* %arrayidx47, i32 0, i32 1
  store %struct.rtx_def* %32, %struct.rtx_def** %dest48, align 8
  %34 = load i32, i32* %n_sets, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %n_sets, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %35 = load i32, i32* %i, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.50

if.end.50:                                        ; preds = %for.end, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.13
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.112, %if.end.51
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %n_sets, align 4
  %cmp53 = icmp slt i32 %36, %37
  br i1 %cmp53, label %for.body.54, label %for.end.114

for.body.54:                                      ; preds = %for.cond.52
  %38 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom56
  %dest58 = getelementptr inbounds %struct.set, %struct.set* %arrayidx57, i32 0, i32 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %dest58, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %dest55, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom59
  %dest61 = getelementptr inbounds %struct.set, %struct.set* %arrayidx60, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %dest61, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load62 = load i32, i32* %42, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 64
  br i1 %cmp64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %for.body.54
  %43 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %dest55, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %45 to i64
  %arrayidx70 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom69
  %dest71 = getelementptr inbounds %struct.set, %struct.set* %arrayidx70, i32 0, i32 1
  store %struct.rtx_def* %44, %struct.rtx_def** %dest71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %for.body.54
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load73 = load i32, i32* %47, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 61
  br i1 %cmp75, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.72
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load76 = load i32, i32* %49, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 66
  br i1 %cmp78, label %if.then.79, label %if.end.111

if.then.79:                                       ; preds = %lor.lhs.false, %if.end.72
  %50 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom81
  %src83 = getelementptr inbounds %struct.set, %struct.set* %arrayidx82, i32 0, i32 0
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src83, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %src80, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool = icmp ne %struct.rtx_def* %52, null
  br i1 %tobool, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.then.79
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src80, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load85 = load i32, i32* %54, align 8
  %bf.lshr = lshr i32 %bf.load85, 16
  %bf.clear86 = and i32 %bf.lshr, 255
  %55 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %src80, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_eee(i32 72, i32 %bf.clear86, %struct.rtx_def* %55, %struct.rtx_def* %56, %struct.rtx_def* %57)
  store %struct.rtx_def* %call, %struct.rtx_def** %src80, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.then.79
  %58 = load %struct.rtx_def*, %struct.rtx_def** %src80, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load88 = load i32, i32* %60, align 8
  %bf.lshr89 = lshr i32 %bf.load88, 16
  %bf.clear90 = and i32 %bf.lshr89, 255
  %call91 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %58, i32 %bf.clear90, i32 1)
  %61 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %61 to i64
  %arrayidx93 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom92
  %src_elt = getelementptr inbounds %struct.set, %struct.set* %arrayidx93, i32 0, i32 2
  store %struct.cselib_val_struct* %call91, %struct.cselib_val_struct** %src_elt, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load94 = load i32, i32* %63, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp eq i32 %bf.clear95, 66
  br i1 %cmp96, label %if.then.97, label %if.else.106

if.then.97:                                       ; preds = %if.end.87
  %64 = load %struct.rtx_def*, %struct.rtx_def** %dest55, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %66 = load i32, i32* @target_flags, align 4
  %and = and i32 %66, 33554432
  %tobool101 = icmp ne i32 %and, 0
  %cond102 = select i1 %tobool101, i32 5, i32 4
  %call103 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %65, i32 %cond102, i32 1)
  %67 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %67 to i64
  %arrayidx105 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom104
  %dest_addr_elt = getelementptr inbounds %struct.set, %struct.set* %arrayidx105, i32 0, i32 3
  store %struct.cselib_val_struct* %call103, %struct.cselib_val_struct** %dest_addr_elt, align 8
  br label %if.end.110

if.else.106:                                      ; preds = %if.end.87
  %68 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %68 to i64
  %arrayidx108 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom107
  %dest_addr_elt109 = getelementptr inbounds %struct.set, %struct.set* %arrayidx108, i32 0, i32 3
  store %struct.cselib_val_struct* null, %struct.cselib_val_struct** %dest_addr_elt109, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.106, %if.then.97
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %lor.lhs.false
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %69 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %69, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.52

for.end.114:                                      ; preds = %for.cond.52
  %70 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  call void @note_stores(%struct.rtx_def* %70, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @cselib_invalidate_rtx, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.137, %for.end.114
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %n_sets, align 4
  %cmp116 = icmp slt i32 %71, %72
  br i1 %cmp116, label %for.body.117, label %for.end.139

for.body.117:                                     ; preds = %for.cond.115
  %73 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %73 to i64
  %arrayidx120 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom119
  %dest121 = getelementptr inbounds %struct.set, %struct.set* %arrayidx120, i32 0, i32 1
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest121, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %dest118, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %dest118, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load122 = load i32, i32* %76, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 61
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %for.body.117
  %77 = load %struct.rtx_def*, %struct.rtx_def** %dest118, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load126 = load i32, i32* %78, align 8
  %bf.clear127 = and i32 %bf.load126, 65535
  %cmp128 = icmp eq i32 %bf.clear127, 66
  br i1 %cmp128, label %if.then.129, label %if.end.136

if.then.129:                                      ; preds = %lor.lhs.false.125, %for.body.117
  %79 = load %struct.rtx_def*, %struct.rtx_def** %dest118, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %80 to i64
  %arrayidx131 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom130
  %src_elt132 = getelementptr inbounds %struct.set, %struct.set* %arrayidx131, i32 0, i32 2
  %81 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt132, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %82 to i64
  %arrayidx134 = getelementptr inbounds [106 x %struct.set], [106 x %struct.set]* %sets, i32 0, i64 %idxprom133
  %dest_addr_elt135 = getelementptr inbounds %struct.set, %struct.set* %arrayidx134, i32 0, i32 3
  %83 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %dest_addr_elt135, align 8
  call void @cselib_record_set(%struct.rtx_def* %79, %struct.cselib_val_struct* %81, %struct.cselib_val_struct* %83)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.129, %lor.lhs.false.125
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %84 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %84, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond.115

for.end.139:                                      ; preds = %for.cond.115
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cselib_invalidate_rtx(%struct.rtx_def* %dest, %struct.rtx_def* %ignore, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %ignore.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %ignore, %struct.rtx_def** %ignore.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 64
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 132
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 133
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 63
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
  %cmp13 = icmp eq i32 %bf.clear12, 61
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %14 = load i32, i32* %rtuint, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load16 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load16, 16
  %bf.clear17 = and i32 %bf.lshr, 255
  call void @cselib_invalidate_regno(i32 %14, i32 %bf.clear17)
  br label %if.end.22

if.else:                                          ; preds = %while.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load18 = load i32, i32* %18, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 66
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  call void @cselib_invalidate_mem(%struct.rtx_def* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load23 = load i32, i32* %22, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %call = call i32 @push_operand(%struct.rtx_def* %20, i32 %bf.clear25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  %23 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  call void @cselib_invalidate_rtx(%struct.rtx_def* %23, %struct.rtx_def* null, i8* null)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_useless_values() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* @values_became_useless, align 4
  %0 = load %struct.htab*, %struct.htab** @hash_table, align 8
  call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* @discard_useless_locs, i8* null)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* @values_became_useless, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load %struct.htab*, %struct.htab** @hash_table, align 8
  call void @htab_traverse(%struct.htab* %2, i32 (i8**, i8*)* @discard_useless_values, i8* null)
  %3 = load i32, i32* @n_useless_values, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 394, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.remove_useless_values, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @cselib_update_varray_sizes() #0 {
entry:
  %nregs = alloca i32, align 4
  %call = call i32 @max_reg_num()
  store i32 %call, i32* %nregs, align 4
  %0 = load i32, i32* %nregs, align 4
  %1 = load i32, i32* @cselib_nregs, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %nregs, align 4
  store i32 %2, i32* @cselib_nregs, align 4
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %4 = load i32, i32* %nregs, align 4
  %conv = zext i32 %4 to i64
  %call1 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %3, i64 %conv)
  store %struct.varray_head_tag* %call1, %struct.varray_head_tag** @reg_values, align 8
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %6 = load i32, i32* %nregs, align 4
  %conv2 = zext i32 %6 to i64
  %call3 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %5, i64 %conv2)
  store %struct.varray_head_tag* %call3, %struct.varray_head_tag** @used_regs, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @max_reg_num() #3

; Function Attrs: nounwind uwtable
define void @cselib_init() #0 {
entry:
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp36 = alloca i8*, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @callmem, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.end.37, label %if.then

if.then:                                          ; preds = %entry
  call void @gcc_obstack_init(%struct.obstack* @cselib_obstack)
  store %struct.obstack* @cselib_obstack, %struct.obstack** %__h, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %1, %struct.obstack** %__o, align 8
  store i32 0, i32* %__len, align 4
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
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
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
  store i8* %44, i8** @cselib_startobj, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %45)
  store %struct.rtx_def* %call, %struct.rtx_def** @callmem, align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** @callmem, i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.33, %entry
  %call38 = call i32 @max_reg_num()
  store i32 %call38, i32* @cselib_nregs, align 4
  %46 = load i32, i32* @cselib_nregs, align 4
  %conv39 = zext i32 %46 to i64
  %call40 = call %struct.varray_head_tag* @varray_init(i64 %conv39, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call40, %struct.varray_head_tag** @reg_values, align 8
  %47 = load i32, i32* @cselib_nregs, align 4
  %conv41 = zext i32 %47 to i64
  %call42 = call %struct.varray_head_tag* @varray_init(i64 %conv41, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  store %struct.varray_head_tag* %call42, %struct.varray_head_tag** @used_regs, align 8
  %call43 = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @get_value_hash, i32 (i8*, i8*)* @entry_and_rtx_equal_p, void (i8*)* null)
  store %struct.htab* %call43, %struct.htab** @hash_table, align 8
  call void @clear_table(i32 1)
  ret void
}

declare void @gcc_obstack_init(%struct.obstack*) #3

declare void @_obstack_newchunk(%struct.obstack*, i32) #3

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #3

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #3

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #3

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_value_hash(i8* %entry1) #0 {
entry:
  %entry.addr = alloca i8*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load i8*, i8** %entry.addr, align 8
  %1 = bitcast i8* %0 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %1, %struct.cselib_val_struct** %v, align 8
  %2 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %value = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %value, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @entry_and_rtx_equal_p(i8* %entry1, i8* %x_arg) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca i8*, align 8
  %x_arg.addr = alloca i8*, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  store i8* %entry1, i8** %entry.addr, align 8
  store i8* %x_arg, i8** %x_arg.addr, align 8
  %0 = load i8*, i8** %entry.addr, align 8
  %1 = bitcast i8* %0 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %1, %struct.cselib_val_struct** %v, align 8
  %2 = load i8*, i8** %x_arg.addr, align 8
  %3 = bitcast i8* %2 to %struct.rtx_def*
  store %struct.rtx_def* %3, %struct.rtx_def** %x, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp eq i32 %bf.clear3, 54
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %mode, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load5 = load i32, i32* %10, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 55
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 265, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.entry_and_rtx_equal_p, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load i32, i32* %mode, align 4
  %12 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %12, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 255
  %cmp11 = icmp ne i32 %11, %bf.clear10
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 58
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.32

land.lhs.true.17:                                 ; preds = %if.end.13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load18 = load i32, i32* %19, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 54
  br i1 %cmp20, label %if.then.28, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.17
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load25 = load i32, i32* %22, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 55
  br i1 %cmp27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %lor.lhs.false.21, %land.lhs.true.17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %x, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %lor.lhs.false.21, %if.end.13
  %25 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %25, i32 0, i32 2
  %26 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  store %struct.elt_loc_list* %26, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %27 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool = icmp ne %struct.elt_loc_list* %27, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %29, %struct.rtx_def* %30)
  %tobool33 = icmp ne i32 %call, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %31 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %31, i32 0, i32 0
  %32 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  store %struct.elt_loc_list* %32, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.34, %if.then.12
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define void @cselib_finish() #0 {
entry:
  call void @clear_table(i32 0)
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %2 = bitcast %struct.varray_head_tag* %1 to i8*
  call void @free(i8* %2) #7
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @reg_values, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %tobool2 = icmp ne %struct.varray_head_tag* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.body.1
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %5 = bitcast %struct.varray_head_tag* %4 to i8*
  call void @free(i8* %5) #7
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @used_regs, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %do.body.1
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %6 = load %struct.htab*, %struct.htab** @hash_table, align 8
  call void @htab_delete(%struct.htab* %6)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @htab_delete(%struct.htab*) #3

; Function Attrs: nounwind uwtable
define internal void @add_mem_for_addr(%struct.cselib_val_struct* %addr_elt, %struct.cselib_val_struct* %mem_elt, %struct.rtx_def* %x) #0 {
entry:
  %addr_elt.addr = alloca %struct.cselib_val_struct*, align 8
  %mem_elt.addr = alloca %struct.cselib_val_struct*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  store %struct.cselib_val_struct* %addr_elt, %struct.cselib_val_struct** %addr_elt.addr, align 8
  store %struct.cselib_val_struct* %mem_elt, %struct.cselib_val_struct** %mem_elt.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt.addr, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %0, i32 0, i32 2
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  store %struct.elt_loc_list* %1, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool = icmp ne %struct.elt_loc_list* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %3, i32 0, i32 1
  %4 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc1 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %loc1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx3 to %struct.cselib_val_struct**
  %9 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  %10 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr_elt.addr, align 8
  %cmp4 = icmp eq %struct.cselib_val_struct* %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %11, i32 0, i32 0
  %12 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  store %struct.elt_loc_list* %12, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr_elt.addr, align 8
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %13, i32 0, i32 3
  %14 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8
  %15 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt.addr, align 8
  %call = call %struct.elt_list* @new_elt_list(%struct.elt_list* %14, %struct.cselib_val_struct* %15)
  %16 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr_elt.addr, align 8
  %addr_list5 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %16, i32 0, i32 3
  store %struct.elt_list* %call, %struct.elt_list** %addr_list5, align 8
  %17 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt.addr, align 8
  %locs6 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %17, i32 0, i32 2
  %18 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs6, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr_elt.addr, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %20, i32 0, i32 1
  %val_rtx = bitcast %union.anon* %u to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %val_rtx, align 8
  %call7 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %19, %struct.rtx_def* %21)
  %call8 = call %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %18, %struct.rtx_def* %call7)
  %22 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %mem_elt.addr, align 8
  %locs9 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %22, i32 0, i32 2
  store %struct.elt_loc_list* %call8, %struct.elt_loc_list** %locs9, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) #3

declare %struct.rtx_def* @gen_rtx_fmt_0(i32, i32) #3

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #3

declare void @htab_empty(%struct.htab*) #3

declare void @obstack_free(%struct.obstack*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @unchain_one_elt_list(%struct.elt_list** %pl) #0 {
entry:
  %pl.addr = alloca %struct.elt_list**, align 8
  %l = alloca %struct.elt_list*, align 8
  store %struct.elt_list** %pl, %struct.elt_list*** %pl.addr, align 8
  %0 = load %struct.elt_list**, %struct.elt_list*** %pl.addr, align 8
  %1 = load %struct.elt_list*, %struct.elt_list** %0, align 8
  store %struct.elt_list* %1, %struct.elt_list** %l, align 8
  %2 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_list, %struct.elt_list* %2, i32 0, i32 0
  %3 = load %struct.elt_list*, %struct.elt_list** %next, align 8
  %4 = load %struct.elt_list**, %struct.elt_list*** %pl.addr, align 8
  store %struct.elt_list* %3, %struct.elt_list** %4, align 8
  %5 = load %struct.elt_list*, %struct.elt_list** @empty_elt_lists, align 8
  %6 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  %next1 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %6, i32 0, i32 0
  store %struct.elt_list* %5, %struct.elt_list** %next1, align 8
  %7 = load %struct.elt_list*, %struct.elt_list** %l, align 8
  store %struct.elt_list* %7, %struct.elt_list** @empty_elt_lists, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unchain_one_elt_loc_list(%struct.elt_loc_list** %pl) #0 {
entry:
  %pl.addr = alloca %struct.elt_loc_list**, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  store %struct.elt_loc_list** %pl, %struct.elt_loc_list*** %pl.addr, align 8
  %0 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %pl.addr, align 8
  %1 = load %struct.elt_loc_list*, %struct.elt_loc_list** %0, align 8
  store %struct.elt_loc_list* %1, %struct.elt_loc_list** %l, align 8
  %2 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %2, i32 0, i32 0
  %3 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  %4 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %pl.addr, align 8
  store %struct.elt_loc_list* %3, %struct.elt_loc_list** %4, align 8
  %5 = load %struct.elt_loc_list*, %struct.elt_loc_list** @empty_elt_loc_lists, align 8
  %6 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next1 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %6, i32 0, i32 0
  store %struct.elt_loc_list* %5, %struct.elt_loc_list** %next1, align 8
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  store %struct.elt_loc_list* %7, %struct.elt_loc_list** @empty_elt_loc_lists, align 8
  ret void
}

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cselib_invalidate_mem_1(i8** %slot, i8* %info) #0 {
entry:
  %slot.addr = alloca i8**, align 8
  %info.addr = alloca i8*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  %mem_rtx = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.elt_loc_list**, align 8
  %had_locs = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.cselib_val_struct*, align 8
  %mem_chain = alloca %struct.elt_list**, align 8
  store i8** %slot, i8*** %slot.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %0 = load i8**, i8*** %slot.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %2, %struct.cselib_val_struct** %v, align 8
  %3 = load i8*, i8** %info.addr, align 8
  %4 = bitcast i8* %3 to %struct.rtx_def*
  store %struct.rtx_def* %4, %struct.rtx_def** %mem_rtx, align 8
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %5, i32 0, i32 2
  store %struct.elt_loc_list** %locs, %struct.elt_loc_list*** %p, align 8
  %6 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs1 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %6, i32 0, i32 2
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs1, align 8
  %cmp = icmp ne %struct.elt_loc_list* %7, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %had_locs, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then, %entry
  %8 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %8, align 8
  %tobool = icmp ne %struct.elt_loc_list* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %11 = load %struct.elt_loc_list*, %struct.elt_loc_list** %10, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %x, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp ne i32 %bf.clear, 66
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem_rtx, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call i32 @cselib_mem_conflict_p(%struct.rtx_def* %15, %struct.rtx_def* %16)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %17 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %18 = load %struct.elt_loc_list*, %struct.elt_loc_list** %17, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %18, i32 0, i32 0
  store %struct.elt_loc_list** %next, %struct.elt_loc_list*** %p, align 8
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call5 = call %struct.cselib_val_struct* @cselib_lookup(%struct.rtx_def* %20, i32 0, i32 0)
  store %struct.cselib_val_struct* %call5, %struct.cselib_val_struct** %addr, align 8
  %21 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %addr, align 8
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %21, i32 0, i32 3
  store %struct.elt_list** %addr_list, %struct.elt_list*** %mem_chain, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.9, %if.end
  %22 = load %struct.elt_list**, %struct.elt_list*** %mem_chain, align 8
  %23 = load %struct.elt_list*, %struct.elt_list** %22, align 8
  %elt = getelementptr inbounds %struct.elt_list, %struct.elt_list* %23, i32 0, i32 1
  %24 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %elt, align 8
  %25 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %cmp6 = icmp eq %struct.cselib_val_struct* %24, %25
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.cond
  %26 = load %struct.elt_list**, %struct.elt_list*** %mem_chain, align 8
  call void @unchain_one_elt_list(%struct.elt_list** %26)
  br label %for.end

if.end.9:                                         ; preds = %for.cond
  %27 = load %struct.elt_list**, %struct.elt_list*** %mem_chain, align 8
  %28 = load %struct.elt_list*, %struct.elt_list** %27, align 8
  %next10 = getelementptr inbounds %struct.elt_list, %struct.elt_list* %28, i32 0, i32 0
  store %struct.elt_list** %next10, %struct.elt_list*** %mem_chain, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8
  %29 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  call void @unchain_one_elt_loc_list(%struct.elt_loc_list** %29)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %had_locs, align 4
  %tobool11 = icmp ne i32 %30, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %while.end
  %31 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs12 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %31, i32 0, i32 2
  %32 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs12, align 8
  %cmp13 = icmp eq %struct.elt_loc_list* %32, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %33 = load i32, i32* @n_useless_values, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* @n_useless_values, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %while.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @cselib_mem_conflict_p(%struct.rtx_def* %mem_base, %struct.rtx_def* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %mem_base.addr = alloca %struct.rtx_def*, align 8
  %val.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %mem_base, %struct.rtx_def** %mem_base.addr, align 8
  store %struct.rtx_def* %val, %struct.rtx_def** %val.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 61, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 62, label %sw.bb
    i32 58, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 66, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %mem_base.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load2, 16
  %bf.clear3 = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear3, 51
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 51
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mem_base.addr, align 8
  %call = call i32 @anti_dependence(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %sw.bb.1
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %9 = load i32, i32* %code, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  store i8* %10, i8** %fmt, align 8
  %11 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %12 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %sw.epilog
  %13 = load i32, i32* %i, align 4
  %cmp11 = icmp sge i32 %13, 0
  br i1 %cmp11, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load i8*, i8** %fmt, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %idxprom13
  %16 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 101
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %mem_base.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom19
  %rtx = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call21 = call i32 @cselib_mem_conflict_p(%struct.rtx_def* %17, %struct.rtx_def* %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.49

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %fmt, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 69
  br i1 %cmp28, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.30
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom32
  %rtvec = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 0
  %28 = load i32, i32* %num_elem, align 4
  %cmp35 = icmp slt i32 %24, %28
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %mem_base.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 %idxprom39
  %rtvec42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec42, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom38
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  %call44 = call i32 @cselib_mem_conflict_p(%struct.rtx_def* %29, %struct.rtx_def* %34)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body.37
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.24
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %36 = load i32, i32* %i, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.51, %if.then.46, %if.then.23, %if.then, %sw.bb
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @anti_dependence(%struct.rtx_def*, %struct.rtx_def*) #3

declare %struct.rtx_def* @gen_rtx_fmt_eee(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #3

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cselib_record_set(%struct.rtx_def* %dest, %struct.cselib_val_struct* %src_elt, %struct.cselib_val_struct* %dest_addr_elt) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src_elt.addr = alloca %struct.cselib_val_struct*, align 8
  %dest_addr_elt.addr = alloca %struct.cselib_val_struct*, align 8
  %dreg = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.cselib_val_struct* %src_elt, %struct.cselib_val_struct** %src_elt.addr, align 8
  store %struct.cselib_val_struct* %dest_addr_elt, %struct.cselib_val_struct** %dest_addr_elt.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %dreg, align 4
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %cmp1 = icmp eq %struct.cselib_val_struct* %4, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call = call i32 @side_effects_p(%struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  br label %if.end.116

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %dreg, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %7 = load i32, i32* %dreg, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %te = bitcast %union.varray_data_tag* %data to [1 x %struct.elt_list*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te, i32 0, i64 %idxprom
  %9 = load %struct.elt_list*, %struct.elt_list** %arrayidx4, align 8
  %cmp5 = icmp eq %struct.elt_list* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %if.then.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used, align 8
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 0
  %13 = load i64, i64* %num_elements, align 8
  %cmp7 = icmp uge i64 %11, %13
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.body
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %num_elements9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 0
  %16 = load i64, i64* %num_elements9, align 8
  %mul = mul i64 2, %16
  %call10 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %14, i64 %mul)
  store %struct.varray_head_tag* %call10, %struct.varray_head_tag** @used_regs, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.body
  %17 = load i32, i32* %dreg, align 4
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %elements_used12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 1
  %19 = load i64, i64* %elements_used12, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %elements_used12, align 8
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @used_regs, align 8
  %data13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %u = bitcast %union.varray_data_tag* %data13 to [1 x i32]*
  %arrayidx14 = getelementptr inbounds [1 x i32], [1 x i32]* %u, i32 0, i64 %19
  store i32 %17, i32* %arrayidx14, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.then.3
  %21 = load i32, i32* %dreg, align 4
  %cmp16 = icmp slt i32 %21, 53
  br i1 %cmp16, label %if.then.17, label %if.end.84

if.then.17:                                       ; preds = %if.end.15
  %22 = load i32, i32* %dreg, align 4
  %cmp18 = icmp sge i32 %22, 8
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false.20

land.lhs.true:                                    ; preds = %if.then.17
  %23 = load i32, i32* %dreg, align 4
  %cmp19 = icmp sle i32 %23, 15
  br i1 %cmp19, label %cond.true.32, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true, %if.then.17
  %24 = load i32, i32* %dreg, align 4
  %cmp21 = icmp sge i32 %24, 21
  br i1 %cmp21, label %land.lhs.true.22, label %lor.lhs.false.24

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %25 = load i32, i32* %dreg, align 4
  %cmp23 = icmp sle i32 %25, 28
  br i1 %cmp23, label %cond.true.32, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true.22, %lor.lhs.false.20
  %26 = load i32, i32* %dreg, align 4
  %cmp25 = icmp sge i32 %26, 45
  br i1 %cmp25, label %land.lhs.true.26, label %lor.lhs.false.28

land.lhs.true.26:                                 ; preds = %lor.lhs.false.24
  %27 = load i32, i32* %dreg, align 4
  %cmp27 = icmp sle i32 %27, 52
  br i1 %cmp27, label %cond.true.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %land.lhs.true.26, %lor.lhs.false.24
  %28 = load i32, i32* %dreg, align 4
  %cmp29 = icmp sge i32 %28, 29
  br i1 %cmp29, label %land.lhs.true.30, label %cond.false.45

land.lhs.true.30:                                 ; preds = %lor.lhs.false.28
  %29 = load i32, i32* %dreg, align 4
  %cmp31 = icmp sle i32 %29, 36
  br i1 %cmp31, label %cond.true.32, label %cond.false.45

cond.true.32:                                     ; preds = %land.lhs.true.30, %land.lhs.true.26, %land.lhs.true.22, %land.lhs.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load33 = load i32, i32* %31, align 8
  %bf.lshr = lshr i32 %bf.load33, 16
  %bf.clear34 = and i32 %bf.lshr, 255
  %idxprom35 = sext i32 %bf.clear34 to i64
  %arrayidx36 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom35
  %32 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %32, 5
  br i1 %cmp37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.32
  %33 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load38 = load i32, i32* %34, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 16
  %bf.clear40 = and i32 %bf.lshr39, 255
  %idxprom41 = sext i32 %bf.clear40 to i64
  %arrayidx42 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom41
  %35 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %35, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.32
  %36 = phi i1 [ true, %cond.true.32 ], [ %cmp43, %lor.rhs ]
  %cond44 = select i1 %36, i32 2, i32 1
  br label %cond.end.78

cond.false.45:                                    ; preds = %land.lhs.true.30, %lor.lhs.false.28
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load46 = load i32, i32* %38, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %cmp49 = icmp eq i32 %bf.clear48, 18
  br i1 %cmp49, label %cond.true.50, label %cond.false.53

cond.true.50:                                     ; preds = %cond.false.45
  %39 = load i32, i32* @target_flags, align 4
  %and = and i32 %39, 33554432
  %tobool51 = icmp ne i32 %and, 0
  %cond52 = select i1 %tobool51, i32 2, i32 3
  br label %cond.end.76

cond.false.53:                                    ; preds = %cond.false.45
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load54 = load i32, i32* %41, align 8
  %bf.lshr55 = lshr i32 %bf.load54, 16
  %bf.clear56 = and i32 %bf.lshr55, 255
  %cmp57 = icmp eq i32 %bf.clear56, 24
  br i1 %cmp57, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %cond.false.53
  %42 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %42, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 4, i32 6
  br label %cond.end.74

cond.false.62:                                    ; preds = %cond.false.53
  %43 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load63 = load i32, i32* %44, align 8
  %bf.lshr64 = lshr i32 %bf.load63, 16
  %bf.clear65 = and i32 %bf.lshr64, 255
  %idxprom66 = sext i32 %bf.clear65 to i64
  %arrayidx67 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom66
  %45 = load i8, i8* %arrayidx67, align 1
  %conv = zext i8 %45 to i32
  %46 = load i32, i32* @target_flags, align 4
  %and68 = and i32 %46, 33554432
  %tobool69 = icmp ne i32 %and68, 0
  %cond70 = select i1 %tobool69, i32 8, i32 4
  %add = add nsw i32 %conv, %cond70
  %sub = sub nsw i32 %add, 1
  %47 = load i32, i32* @target_flags, align 4
  %and71 = and i32 %47, 33554432
  %tobool72 = icmp ne i32 %and71, 0
  %cond73 = select i1 %tobool72, i32 8, i32 4
  %div = sdiv i32 %sub, %cond73
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.62, %cond.true.58
  %cond75 = phi i32 [ %cond61, %cond.true.58 ], [ %div, %cond.false.62 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.50
  %cond77 = phi i32 [ %cond52, %cond.true.50 ], [ %cond75, %cond.end.74 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %lor.end
  %cond79 = phi i32 [ %cond44, %lor.end ], [ %cond77, %cond.end.76 ]
  store i32 %cond79, i32* %n, align 4
  %48 = load i32, i32* %n, align 4
  %49 = load i32, i32* @max_value_regs, align 4
  %cmp80 = icmp ugt i32 %48, %49
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %cond.end.78
  %50 = load i32, i32* %n, align 4
  store i32 %50, i32* @max_value_regs, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %cond.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.15
  %51 = load i32, i32* %dreg, align 4
  %idxprom85 = sext i32 %51 to i64
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data86 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %52, i32 0, i32 4
  %te87 = bitcast %union.varray_data_tag* %data86 to [1 x %struct.elt_list*]*
  %arrayidx88 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te87, i32 0, i64 %idxprom85
  %53 = load %struct.elt_list*, %struct.elt_list** %arrayidx88, align 8
  %54 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %call89 = call %struct.elt_list* @new_elt_list(%struct.elt_list* %53, %struct.cselib_val_struct* %54)
  %55 = load i32, i32* %dreg, align 4
  %idxprom90 = sext i32 %55 to i64
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_values, align 8
  %data91 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %te92 = bitcast %union.varray_data_tag* %data91 to [1 x %struct.elt_list*]*
  %arrayidx93 = getelementptr inbounds [1 x %struct.elt_list*], [1 x %struct.elt_list*]* %te92, i32 0, i64 %idxprom90
  store %struct.elt_list* %call89, %struct.elt_list** %arrayidx93, align 8
  %57 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %57, i32 0, i32 2
  %58 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  %cmp94 = icmp eq %struct.elt_loc_list* %58, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.84
  %59 = load i32, i32* @n_useless_values, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* @n_useless_values, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.84
  %60 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %locs98 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %60, i32 0, i32 2
  %61 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs98, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call99 = call %struct.elt_loc_list* @new_elt_loc_list(%struct.elt_loc_list* %61, %struct.rtx_def* %62)
  %63 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %locs100 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %63, i32 0, i32 2
  store %struct.elt_loc_list* %call99, %struct.elt_loc_list** %locs100, align 8
  br label %if.end.116

if.else:                                          ; preds = %if.end
  %64 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load101 = load i32, i32* %65, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 66
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.115

land.lhs.true.105:                                ; preds = %if.else
  %66 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %dest_addr_elt.addr, align 8
  %cmp106 = icmp ne %struct.cselib_val_struct* %66, null
  br i1 %cmp106, label %if.then.108, label %if.end.115

if.then.108:                                      ; preds = %land.lhs.true.105
  %67 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %locs109 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %67, i32 0, i32 2
  %68 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs109, align 8
  %cmp110 = icmp eq %struct.elt_loc_list* %68, null
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.108
  %69 = load i32, i32* @n_useless_values, align 4
  %dec113 = add nsw i32 %69, -1
  store i32 %dec113, i32* @n_useless_values, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.108
  %70 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %dest_addr_elt.addr, align 8
  %71 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %src_elt.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  call void @add_mem_for_addr(%struct.cselib_val_struct* %70, %struct.cselib_val_struct* %71, %struct.rtx_def* %72)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %land.lhs.true.105, %if.else
  br label %if.end.116

if.end.116:                                       ; preds = %if.then, %if.end.115, %if.end.97
  ret void
}

declare i32 @side_effects_p(%struct.rtx_def*) #3

declare i32 @push_operand(%struct.rtx_def*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @discard_useless_locs(i8** %x, i8* %info) #0 {
entry:
  %x.addr = alloca i8**, align 8
  %info.addr = alloca i8*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  %p = alloca %struct.elt_loc_list**, align 8
  %had_locs = alloca i32, align 4
  store i8** %x, i8*** %x.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %0 = load i8**, i8*** %x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %2, %struct.cselib_val_struct** %v, align 8
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %3, i32 0, i32 2
  store %struct.elt_loc_list** %locs, %struct.elt_loc_list*** %p, align 8
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs1 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %4, i32 0, i32 2
  %5 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs1, align 8
  %cmp = icmp ne %struct.elt_loc_list* %5, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %had_locs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %6, align 8
  %tobool = icmp ne %struct.elt_loc_list* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %9 = load %struct.elt_loc_list*, %struct.elt_loc_list** %8, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %call = call i32 @references_value_p(%struct.rtx_def* %10, i32 1)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  call void @unchain_one_elt_loc_list(%struct.elt_loc_list** %11)
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load %struct.elt_loc_list**, %struct.elt_loc_list*** %p, align 8
  %13 = load %struct.elt_loc_list*, %struct.elt_loc_list** %12, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %13, i32 0, i32 0
  store %struct.elt_loc_list** %next, %struct.elt_loc_list*** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %had_locs, align 4
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %while.end
  %15 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs4 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %15, i32 0, i32 2
  %16 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs4, align 8
  %cmp5 = icmp eq %struct.elt_loc_list* %16, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* @n_useless_values, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* @n_useless_values, align 4
  store i32 1, i32* @values_became_useless, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true, %while.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @discard_useless_values(i8** %x, i8* %info) #0 {
entry:
  %x.addr = alloca i8**, align 8
  %info.addr = alloca i8*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  store i8** %x, i8*** %x.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %0 = load i8**, i8*** %x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.cselib_val_struct*
  store %struct.cselib_val_struct* %2, %struct.cselib_val_struct** %v, align 8
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %3, i32 0, i32 2
  %4 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  %cmp = icmp eq %struct.elt_loc_list* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.htab*, %struct.htab** @hash_table, align 8
  %6 = load i8**, i8*** %x.addr, align 8
  call void @htab_clear_slot(%struct.htab* %5, i8** %6)
  %7 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  call void @unchain_one_value(%struct.cselib_val_struct* %7)
  %8 = load i32, i32* @n_useless_values, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @n_useless_values, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @htab_clear_slot(%struct.htab*, i8**) #3

; Function Attrs: nounwind uwtable
define internal void @unchain_one_value(%struct.cselib_val_struct* %v) #0 {
entry:
  %v.addr = alloca %struct.cselib_val_struct*, align 8
  store %struct.cselib_val_struct* %v, %struct.cselib_val_struct** %v.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v.addr, align 8
  %addr_list = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %0, i32 0, i32 3
  %1 = load %struct.elt_list*, %struct.elt_list** %addr_list, align 8
  %tobool = icmp ne %struct.elt_list* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v.addr, align 8
  %addr_list1 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %2, i32 0, i32 3
  call void @unchain_one_elt_list(%struct.elt_list** %addr_list1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** @empty_vals, align 8
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v.addr, align 8
  %u = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %4, i32 0, i32 1
  %next_free = bitcast %union.anon* %u to %struct.cselib_val_struct**
  store %struct.cselib_val_struct* %3, %struct.cselib_val_struct** %next_free, align 8
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v.addr, align 8
  store %struct.cselib_val_struct* %5, %struct.cselib_val_struct** @empty_vals, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
