; ModuleID = './MultiSource.Benchmarks.MallocBench/104.gs.zpaint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_image_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }

@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@esp = external global %struct.ref_s*, align 8
@estop = external global %struct.ref_s*, align 8
@gs_image_enum_sizeof = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"image_setup\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"image_continue(quit)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"image_continue(finished)\00", align 1
@zpaint_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zeofill }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zerasepage }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zfill }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcolorimage }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zimage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zimagemask }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zstroke }, %struct.op_def zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"0eofill\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0erasepage\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"0fill\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"7colorimage\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"5image\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"5imagemask\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0stroke\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zerasepage(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_erasepage(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_erasepage(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zfill(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_fill(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_fill(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zeofill(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_eofill(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_eofill(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zstroke(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_stroke(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_stroke(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcolorimage(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %spp = alloca i32, align 4
  %npop = alloca i32, align 4
  %procp = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 7, i32* %npop, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %procp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 252
  %cmp5 = icmp eq i32 %and4, 4
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %6 = load i64, i64* %intval, align 8
  %cmp9 = icmp ugt i64 %6, 4
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -15, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %intval14 = bitcast %union.v* %value13 to i64*
  %8 = load i64, i64* %intval14, align 8
  %conv15 = trunc i64 %8 to i32
  store i32 %conv15, i32* %spp, align 4
  switch i32 %conv15, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end.12
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @zimage(%struct.ref_s* %10)
  store i32 %call, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %if.end.12, %if.end.12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.12
  store i32 -15, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.17
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %index = bitcast %union.v* %value19 to i16*
  %12 = load i16, i16* %index, align 2
  %tobool = icmp ne i16 %12, 0
  br i1 %tobool, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %sw.epilog
  %13 = load i32, i32* %spp, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load i32, i32* %npop, align 4
  %add = add nsw i32 %14, %sub
  store i32 %add, i32* %npop, align 4
  %15 = load i32, i32* %spp, align 4
  %sub21 = sub nsw i32 %15, 1
  %16 = load %struct.ref_s*, %struct.ref_s** %procp, align 8
  %idx.ext = sext i32 %sub21 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idx.neg
  store %struct.ref_s* %add.ptr22, %struct.ref_s** %procp, align 8
  %17 = load i32, i32* %spp, align 4
  %sub23 = sub nsw i32 0, %17
  store i32 %sub23, i32* %spp, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %sw.epilog
  %18 = load %struct.ref_s*, %struct.ref_s** %procp, align 8
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %type_attrs26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 1
  %19 = load i16, i16* %type_attrs26, align 2
  %conv27 = zext i16 %19 to i32
  %and28 = and i32 %conv27, 252
  %cmp29 = icmp eq i32 %and28, 20
  br i1 %cmp29, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.24
  store i32 -20, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.24
  %20 = load %struct.ref_s*, %struct.ref_s** %procp, align 8
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %value34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx33, i32 0, i32 0
  %intval35 = bitcast %union.v* %value34 to i64*
  %21 = load i64, i64* %intval35, align 8
  %cmp36 = icmp ugt i64 %21, 8
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  store i32 -15, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.32
  %22 = load %struct.ref_s*, %struct.ref_s** %procp, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %procp, align 8
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %24 = load i64, i64* %intval42, align 8
  %conv43 = trunc i64 %24 to i32
  %25 = load i32, i32* %spp, align 4
  %call44 = call i32 @image_setup(%struct.ref_s* %22, i32 %conv43, i32 %25)
  store i32 %call44, i32* %code, align 4
  %26 = load i32, i32* %code, align 4
  %cmp45 = icmp sge i32 %26, 0
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.39
  %27 = load i32, i32* %npop, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %idx.ext48 = sext i32 %27 to i64
  %idx.neg49 = sub i64 0, %idx.ext48
  %add.ptr50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 %idx.neg49
  store %struct.ref_s* %add.ptr50, %struct.ref_s** @osp, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.39
  %29 = load i32, i32* %code, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.38, %if.then.31, %sw.default, %sw.bb, %if.then.11, %if.then.7, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @image_setup(%struct.ref_s* %op, i32 %param3, i32 %spp) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %param3.addr = alloca i32, align 4
  %spp.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %mat = alloca %struct.gs_matrix_s, align 8
  %px = alloca i32, align 4
  %pmax = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 %param3, i32* %param3.addr, align 4
  store i32 %spp, i32* %spp.addr, align 4
  %0 = load i32, i32* %spp.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %spp.addr, align 4
  %neg = xor i32 %1, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %neg, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %pmax, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 9
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -5, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %5 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 252
  %cmp2 = icmp eq i32 %and, 20
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -3
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs7, align 2
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 252
  %cmp10 = icmp eq i32 %and9, 20
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.5
  store i32 -20, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  store i32 0, i32* %px, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %8 = load i32, i32* %px, align 4
  %9 = load i32, i32* %pmax, align 4
  %cmp14 = icmp sle i32 %8, %9
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %11 = load i32, i32* %px, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 %idx.ext
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 1
  %12 = load i16, i16* %type_attrs17, align 2
  %conv18 = zext i16 %12 to i32
  %and19 = and i32 %conv18, 255
  %shr = ashr i32 %and19, 2
  %cmp20 = icmp ne i32 %shr, 13
  br i1 %cmp20, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %for.body
  %13 = load i32, i32* %px, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 %idxprom
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %15 = load i16, i16* %type_attrs24, align 2
  %conv25 = zext i16 %15 to i32
  %and26 = and i32 %conv25, 255
  %shr27 = ashr i32 %and26, 2
  switch i32 %shr27, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.then.22
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.then.22, %if.then.22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %16 = load i32, i32* %px, align 4
  %idxprom28 = sext i32 %16 to i64
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 %idxprom28
  %type_attrs30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx29, i32 0, i32 1
  %18 = load i16, i16* %type_attrs30, align 2
  %conv31 = zext i16 %18 to i32
  %neg32 = xor i32 %conv31, -1
  %and33 = and i32 %neg32, 3
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end.35:                                        ; preds = %sw.epilog
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %19 = load i32, i32* %px, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %px, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx37, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %21 = load i64, i64* %intval, align 8
  %cmp38 = icmp sle i64 %21, 0
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %23 = load i64, i64* %intval42, align 8
  %cmp43 = icmp slt i64 %23, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false, %for.end
  store i32 -23, i32* %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -3
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx47, i32 0, i32 0
  %intval49 = bitcast %union.v* %value48 to i64*
  %25 = load i64, i64* %intval49, align 8
  %cmp50 = icmp eq i64 %25, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.46
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr54, %struct.gs_matrix_s* %mat)
  store i32 %call, i32* %code, align 4
  %cmp55 = icmp slt i32 %call, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  %27 = load i32, i32* %code, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.53
  %28 = load i32, i32* @gs_image_enum_sizeof, align 4
  %call59 = call i8* @alloc(i32 1, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %29 = bitcast i8* %call59 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %29, %struct.gs_image_enum_s** %penum, align 8
  %cmp60 = icmp eq %struct.gs_image_enum_s* %29, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.58
  store i32 -25, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.58
  %30 = load i32, i32* %spp.addr, align 4
  %cmp64 = icmp eq i32 %30, 0
  br i1 %cmp64, label %cond.true.66, label %cond.false.76

cond.true.66:                                     ; preds = %if.end.63
  %31 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -4
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx67, i32 0, i32 0
  %intval69 = bitcast %union.v* %value68 to i64*
  %34 = load i64, i64* %intval69, align 8
  %conv70 = trunc i64 %34 to i32
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -3
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx71, i32 0, i32 0
  %intval73 = bitcast %union.v* %value72 to i64*
  %36 = load i64, i64* %intval73, align 8
  %conv74 = trunc i64 %36 to i32
  %37 = load i32, i32* %param3.addr, align 4
  %call75 = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* %31, %struct.gs_state_s* %32, i32 %conv70, i32 %conv74, i32 %37, %struct.gs_matrix_s* %mat)
  br label %cond.end.86

cond.false.76:                                    ; preds = %if.end.63
  %38 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %39 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -4
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx77, i32 0, i32 0
  %intval79 = bitcast %union.v* %value78 to i64*
  %41 = load i64, i64* %intval79, align 8
  %conv80 = trunc i64 %41 to i32
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -3
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx81, i32 0, i32 0
  %intval83 = bitcast %union.v* %value82 to i64*
  %43 = load i64, i64* %intval83, align 8
  %conv84 = trunc i64 %43 to i32
  %44 = load i32, i32* %param3.addr, align 4
  %45 = load i32, i32* %spp.addr, align 4
  %call85 = call i32 @gs_image_init(%struct.gs_image_enum_s* %38, %struct.gs_state_s* %39, i32 %conv80, i32 %conv84, i32 %44, i32 %45, %struct.gs_matrix_s* %mat)
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.76, %cond.true.66
  %cond87 = phi i32 [ %call75, %cond.true.66 ], [ %call85, %cond.false.76 ]
  store i32 %cond87, i32* %code, align 4
  %46 = load i32, i32* %code, align 4
  %cmp88 = icmp slt i32 %46, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %cond.end.86
  %47 = load i32, i32* %code, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.91:                                        ; preds = %cond.end.86
  %48 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %index = bitcast %union.v* %value92 to i16*
  store i16 0, i16* %index, align 2
  %50 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  store i16 33, i16* %type_attrs93, align 2
  %51 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 1
  store %struct.ref_s* %incdec.ptr94, %struct.ref_s** @esp, align 8
  store i32 0, i32* %px, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.108, %if.end.91
  %52 = load i32, i32* %px, align 4
  %cmp96 = icmp slt i32 %52, 4
  br i1 %cmp96, label %for.body.98, label %for.end.111

for.body.98:                                      ; preds = %for.cond.95
  %53 = load i32, i32* %px, align 4
  %54 = load i32, i32* %pmax, align 4
  %cmp99 = icmp sle i32 %53, %54
  br i1 %cmp99, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %for.body.98
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = load i32, i32* %px, align 4
  %idxprom102 = sext i32 %56 to i64
  %57 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 %idxprom102
  %58 = bitcast %struct.ref_s* %55 to i8*
  %59 = bitcast %struct.ref_s* %arrayidx103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false)
  br label %if.end.107

if.else:                                          ; preds = %for.body.98
  %60 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %intval105 = bitcast %union.v* %value104 to i64*
  store i64 0, i64* %intval105, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 1
  store i16 32, i16* %type_attrs106, align 2
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.101
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 1
  store %struct.ref_s* %incdec.ptr109, %struct.ref_s** @esp, align 8
  %63 = load i32, i32* %px, align 4
  %inc110 = add nsw i32 %63, 1
  store i32 %inc110, i32* %px, align 4
  br label %for.cond.95

for.end.111:                                      ; preds = %for.cond.95
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %intval113 = bitcast %union.v* %value112 to i64*
  store i64 0, i64* %intval113, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 1
  store i16 20, i16* %type_attrs114, align 2
  %66 = load i32, i32* %pmax, align 4
  %conv115 = trunc i32 %66 to i16
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 2
  store i16 %conv115, i16* %size, align 2
  %68 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 1
  store %struct.ref_s* %incdec.ptr116, %struct.ref_s** @esp, align 8
  %69 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %70 = bitcast %struct.gs_image_enum_s* %69 to i8*
  %71 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %bytes = bitcast %union.v* %value117 to i8**
  store i8* %70, i8** %bytes, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 1
  store i16 52, i16* %type_attrs118, align 2
  %73 = load i32, i32* @gs_image_enum_sizeof, align 4
  %conv119 = trunc i32 %73 to i16
  %74 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size120 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 2
  store i16 %conv119, i16* %size120, align 2
  %75 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i32 1
  store %struct.ref_s* %incdec.ptr121, %struct.ref_s** @esp, align 8
  %76 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 0, i32 0
  %opproc = bitcast %union.v* %value122 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %77 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %77, i32 0, i32 1
  store i16 37, i16* %type_attrs123, align 2
  %78 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 0, i32 2
  store i16 0, i16* %size124, align 2
  %79 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i32 1
  store %struct.ref_s* %incdec.ptr125, %struct.ref_s** @esp, align 8
  %80 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %81 = bitcast %struct.ref_s* %incdec.ptr125 to i8*
  %82 = bitcast %struct.ref_s* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.111, %if.then.90, %if.then.62, %if.then.57, %if.then.52, %if.then.45, %if.then.34, %sw.default, %if.then.12, %if.then.4, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define i32 @zimage(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp3 = icmp ugt i64 %3, 8
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %value8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx7, i32 0, i32 0
  %intval9 = bitcast %union.v* %value8 to i64*
  %6 = load i64, i64* %intval9, align 8
  %conv10 = trunc i64 %6 to i32
  %call = call i32 @image_setup(%struct.ref_s* %4, i32 %conv10, i32 1)
  store i32 %call, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp11 = icmp sge i32 %7, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.6
  %9 = load i32, i32* %code, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.5, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @zimagemask(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %4 = load i16, i16* %index, align 2
  %conv3 = zext i16 %4 to i32
  %call = call i32 @image_setup(%struct.ref_s* %2, i32 %conv3, i32 0)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp4 = icmp sge i32 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @read_matrix(...) #1

declare i8* @alloc(i32, i32, i8*) #1

declare i32 @gs_imagemask_init(%struct.gs_image_enum_s*, %struct.gs_state_s*, i32, i32, i32, %struct.gs_matrix_s*) #1

declare i32 @gs_image_init(%struct.gs_image_enum_s*, %struct.gs_state_s*, i32, i32, i32, i32, %struct.gs_matrix_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @image_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_image_enum_s*, align 8
  %code = alloca i32, align 4
  %px = alloca i32, align 4
  %pproc = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_image_enum_s*
  store %struct.gs_image_enum_s* %2, %struct.gs_image_enum_s** %penum, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp = icmp ne i32 %shr, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -7
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  %6 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %7 = bitcast %struct.gs_image_enum_s* %6 to i8*
  %8 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* %7, i32 1, i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %bytes3 = bitcast %union.v* %value2 to i8**
  %11 = load i8*, i8** %bytes3, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size, align 2
  %conv4 = zext i16 %13 to i32
  %call = call i32 @gs_image_next(%struct.gs_image_enum_s* %9, i8* %11, i32 %conv4)
  store i32 %call, i32* %code, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  %15 = load i16, i16* %size5, align 2
  %conv6 = zext i16 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %code, align 4
  %cmp9 = icmp sgt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -7
  store %struct.ref_s* %add.ptr12, %struct.ref_s** @esp, align 8
  %18 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %penum, align 8
  %19 = bitcast %struct.gs_image_enum_s* %18 to i8*
  %20 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* %19, i32 1, i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %intval = bitcast %union.v* %value13 to i64*
  %22 = load i64, i64* %intval, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %intval, align 8
  %conv14 = trunc i64 %inc to i32
  store i32 %conv14, i32* %px, align 4
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -5
  store %struct.ref_s* %add.ptr15, %struct.ref_s** %pproc, align 8
  %24 = load i32, i32* %px, align 4
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  %size17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 2
  %26 = load i16, i16* %size17, align 2
  %conv18 = zext i16 %26 to i32
  %cmp19 = icmp sgt i32 %24, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.else
  store i32 0, i32* %px, align 4
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 0
  %intval24 = bitcast %union.v* %value23 to i64*
  store i64 0, i64* %intval24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %opproc = bitcast %union.v* %value26 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  store i16 37, i16* %type_attrs27, align 2
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 2
  store i16 0, i16* %size28, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 1
  store %struct.ref_s* %incdec.ptr29, %struct.ref_s** @esp, align 8
  %33 = load i32, i32* %px, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.ref_s*, %struct.ref_s** %pproc, align 8
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 %idxprom
  %35 = bitcast %struct.ref_s* %incdec.ptr29 to i8*
  %36 = bitcast %struct.ref_s* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.25, %if.then.11
  %37 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr32, %struct.ref_s** @osp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @alloc_free(i8*, i32, i32, i8*) #1

declare i32 @gs_image_next(%struct.gs_image_enum_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @zpaint_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zpaint_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
