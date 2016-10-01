; ModuleID = './MultiSource.Benchmarks.MallocBench/78.gs.zmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dstack = external global [0 x %struct.ref_s], align 8
@dsp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@osp = external global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [12 x i8] c"getenv name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getenv value\00", align 1
@zmisc_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zbind }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenttime }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetenv }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdebug }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1encrypt }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1decrypt }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zusertime }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"1bind\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0currenttime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1getenv\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"2setdebug\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"3type1encrypt\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"3type1decrypt\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zbind(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %bsp = alloca %struct.ref_s*, align 8
  %tp = alloca %struct.ref_s*, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %0, %struct.ref_s** %bsp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %3 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %bsp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %5 = bitcast %struct.ref_s* %incdec.ptr to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %sw.epilog
  %7 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %cmp = icmp ugt %struct.ref_s* %7, %8
  br i1 %cmp, label %while.body, label %while.end.63

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %sw.epilog.61, %while.body
  %9 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 2
  %10 = load i16, i16* %size, align 2
  %tobool = icmp ne i16 %10, 0
  br i1 %tobool, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.2
  %11 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %12 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %incdec.ptr4, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %12, %struct.ref_s** %tp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %size5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 2
  %14 = load i16, i16* %size5, align 2
  %dec = add i16 %14, -1
  store i16 %dec, i16* %size5, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %16 = load i16, i16* %type_attrs6, align 2
  %conv7 = zext i16 %16 to i32
  %and8 = and i32 %conv7, 255
  %shr9 = ashr i32 %and8, 2
  switch i32 %shr9, label %sw.epilog.61 [
    i32 7, label %sw.bb.10
    i32 0, label %sw.bb.37
    i32 10, label %sw.bb.45
  ]

sw.bb.10:                                         ; preds = %while.body.3
  %17 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %type_attrs11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %18 = load i16, i16* %type_attrs11, align 2
  %conv12 = zext i16 %18 to i32
  %neg = xor i32 %conv12, -1
  %and13 = and i32 %neg, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end.36, label %if.then

if.then:                                          ; preds = %sw.bb.10
  %19 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %call = call i32 @dict_lookup(%struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i32 0, i32 0), %struct.ref_s* %19, %struct.ref_s* %20, %struct.ref_s** %pvalue)
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %22 = load i16, i16* %type_attrs17, align 2
  %conv18 = zext i16 %22 to i32
  %and19 = and i32 %conv18, 255
  %shr20 = ashr i32 %and19, 2
  %cmp21 = icmp sge i32 %shr20, 16
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %23 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %type_attrs23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %24 = load i16, i16* %type_attrs23, align 2
  %conv24 = zext i16 %24 to i32
  %and25 = and i32 %conv24, 255
  %shr26 = ashr i32 %and25, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %shr26, %cond.false ]
  %cmp27 = icmp eq i32 %cond, 9
  br i1 %cmp27, label %land.lhs.true.29, label %if.end

land.lhs.true.29:                                 ; preds = %cond.end
  %25 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %type_attrs30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %26 = load i16, i16* %type_attrs30, align 2
  %conv31 = zext i16 %26 to i32
  %neg32 = xor i32 %conv31, -1
  %and33 = and i32 %neg32, 1
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.29
  %27 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8
  %29 = bitcast %struct.ref_s* %27 to i8*
  %30 = bitcast %struct.ref_s* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.35, %land.lhs.true.29, %cond.end, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %sw.bb.10
  br label %sw.epilog.61

sw.bb.37:                                         ; preds = %while.body.3
  %31 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %type_attrs38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %32 = load i16, i16* %type_attrs38, align 2
  %conv39 = zext i16 %32 to i32
  %neg40 = xor i32 %conv39, -1
  %and41 = and i32 %neg40, 256
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %sw.bb.37
  br label %sw.epilog.61

if.end.44:                                        ; preds = %sw.bb.37
  br label %sw.bb.45

sw.bb.45:                                         ; preds = %while.body.3, %if.end.44
  %33 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %type_attrs46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %34 = load i16, i16* %type_attrs46, align 2
  %conv47 = zext i16 %34 to i32
  %neg48 = xor i32 %conv47, -1
  %and49 = and i32 %neg48, 1
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.end.60, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %sw.bb.45
  %35 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp52 = icmp ult %struct.ref_s* %35, %36
  br i1 %cmp52, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %land.lhs.true.51
  %37 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %type_attrs55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %38 = load i16, i16* %type_attrs55, align 2
  %conv56 = zext i16 %38 to i32
  %and57 = and i32 %conv56, -257
  %conv58 = trunc i32 %and57 to i16
  store i16 %conv58, i16* %type_attrs55, align 2
  %39 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %incdec.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 1
  store %struct.ref_s* %incdec.ptr59, %struct.ref_s** %bsp, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %tp, align 8
  %41 = bitcast %struct.ref_s* %incdec.ptr59 to i8*
  %42 = bitcast %struct.ref_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %land.lhs.true.51, %sw.bb.45
  br label %sw.epilog.61

sw.epilog.61:                                     ; preds = %if.end.60, %while.body.3, %if.then.43, %if.end.36
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %43 = load %struct.ref_s*, %struct.ref_s** %bsp, align 8
  %incdec.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 -1
  store %struct.ref_s* %incdec.ptr62, %struct.ref_s** %bsp, align 8
  br label %while.cond

while.end.63:                                     ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.63, %sw.default
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_lookup(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define i32 @zcurrenttime(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %date_time = alloca [2 x i64], align 16
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i32 0
  %call = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* %arraydecay)
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %conv = sitofp i64 %3 to double
  %mul = fmul double %conv, 1.440000e+03
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i64 1
  %4 = load i64, i64* %arrayidx2, align 8
  %conv3 = sitofp i64 %4 to double
  %div = fdiv double %conv3, 6.000000e+04
  %add = fadd double %mul, %div
  %conv4 = fptrunc double %add to float
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %conv4, float* %realval, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @gs_get_clock(...) #2

; Function Attrs: nounwind uwtable
define i32 @zgetenv(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %str = alloca i8*, align 8
  %value = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i8* @ref_to_string(%struct.ref_s* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -25, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load i8*, i8** %str, align 8
  %call11 = call i8* @getenv(i8* %6)
  store i8* %call11, i8** %value, align 8
  %7 = load i8*, i8** %str, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv12 = zext i16 %9 to i32
  %add = add nsw i32 %conv12, 1
  call void @alloc_free(i8* %7, i32 %add, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %10 = load i8*, i8** %value, align 8
  %cmp13 = icmp eq i8* %10, null
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.10
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %index = bitcast %union.v* %value16 to i16*
  store i16 0, i16* %index, align 2
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 4, i16* %type_attrs17, align 2
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %13 = load i8*, i8** %value, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call19 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* %13, %struct.ref_s* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call19, i32* %code, align 4
  %15 = load i32, i32* %code, align 4
  %cmp20 = icmp slt i32 %15, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %16 = load i32, i32* %code, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp24 = icmp ugt %struct.ref_s* %add.ptr, %18
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  store %struct.ref_s* %add.ptr27, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %index30 = bitcast %union.v* %value29 to i16*
  store i16 1, i16* %index30, align 2
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 4, i16* %type_attrs31, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.26, %if.then.22, %if.then.15, %if.then.9, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @ref_to_string(%struct.ref_s*, i8*) #2

declare i8* @getenv(i8*) #2

declare void @alloc_free(i8*, i32, i32, i8*) #2

declare i32 @string_to_ref(...) #2

; Function Attrs: nounwind uwtable
define i32 @zsetdebug(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %3 to i32
  %neg = xor i32 %conv4, -1
  %and5 = and i32 %neg, 512
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs8, align 2
  %conv9 = zext i16 %5 to i32
  %and10 = and i32 %conv9, 252
  %cmp11 = icmp eq i32 %and10, 4
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.7
  store i32 -20, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.6, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @ztype1encrypt(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @type1crypt(%struct.ref_s* %0, i32 (i8*, i8*, i32, i16*)* @gs_type1_encrypt)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @type1crypt(%struct.ref_s* %op, i32 (i8*, i8*, i32, i16*)* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %proc.addr = alloca i32 (i8*, i8*, i32, i16*)*, align 8
  %state = alloca i16, align 2
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 (i8*, i8*, i32, i16*)* %proc, i32 (i8*, i8*, i32, i16*)** %proc.addr, align 8
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
  %conv3 = trunc i64 %3 to i16
  store i16 %conv3, i16* %state, align 2
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -2
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %intval6 = bitcast %union.v* %value5 to i64*
  %5 = load i64, i64* %intval6, align 8
  %6 = load i16, i16* %state, align 2
  %conv7 = zext i16 %6 to i64
  %cmp8 = icmp ne i64 %5, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %8 = load i16, i16* %type_attrs13, align 2
  %conv14 = zext i16 %8 to i32
  %and15 = and i32 %conv14, 252
  %cmp16 = icmp eq i32 %and15, 52
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.11
  store i32 -20, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %type_attrs21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx20, i32 0, i32 1
  %10 = load i16, i16* %type_attrs21, align 2
  %conv22 = zext i16 %10 to i32
  %neg = xor i32 %conv22, -1
  %and23 = and i32 %neg, 512
  %tobool = icmp ne i32 %and23, 0
  br i1 %tobool, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  store i32 -7, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs26, align 2
  %conv27 = zext i16 %12 to i32
  %and28 = and i32 %conv27, 252
  %cmp29 = icmp eq i32 %and28, 52
  br i1 %cmp29, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.25
  store i32 -20, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.25
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %14 = load i16, i16* %type_attrs33, align 2
  %conv34 = zext i16 %14 to i32
  %neg35 = xor i32 %conv34, -1
  %and36 = and i32 %neg35, 256
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  store i32 -7, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.32
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 2
  %16 = load i16, i16* %size, align 2
  %conv40 = zext i16 %16 to i32
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %size42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx41, i32 0, i32 2
  %18 = load i16, i16* %size42, align 2
  %conv43 = zext i16 %18 to i32
  %cmp44 = icmp slt i32 %conv40, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  store i32 -15, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.39
  %19 = load i32 (i8*, i8*, i32, i16*)*, i32 (i8*, i8*, i32, i16*)** %proc.addr, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %bytes = bitcast %union.v* %value48 to i8**
  %21 = load i8*, i8** %bytes, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx49, i32 0, i32 0
  %bytes51 = bitcast %union.v* %value50 to i8**
  %23 = load i8*, i8** %bytes51, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %size53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx52, i32 0, i32 2
  %25 = load i16, i16* %size53, align 2
  %conv54 = zext i16 %25 to i32
  %call = call i32 %19(i8* %21, i8* %23, i32 %conv54, i16* %state)
  %26 = load i16, i16* %state, align 2
  %conv55 = zext i16 %26 to i64
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 0
  %intval58 = bitcast %union.v* %value57 to i64*
  store i64 %conv55, i64* %intval58, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %30 = bitcast %struct.ref_s* %arrayidx59 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 2
  %33 = load i16, i16* %size60, align 2
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %size62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx61, i32 0, i32 2
  store i16 %33, i16* %size62, align 2
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  %type_attrs63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %36 = load i16, i16* %type_attrs63, align 2
  %conv64 = zext i16 %36 to i32
  %or = or i32 %conv64, 32768
  %conv65 = trunc i32 %or to i16
  store i16 %conv65, i16* %type_attrs63, align 2
  %37 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %add.ptr66, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.then.38, %if.then.31, %if.then.24, %if.then.18, %if.then.10, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gs_type1_encrypt(i8*, i8*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @ztype1decrypt(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @type1crypt(%struct.ref_s* %0, i32 (i8*, i8*, i32, i16*)* @gs_type1_decrypt)
  ret i32 %call
}

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @zusertime(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %date_time = alloca [2 x i64], align 16
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i32 0
  %call = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* %arraydecay)
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i64 0
  %3 = load i64, i64* %arrayidx, align 8
  %mul = mul nsw i64 %3, 86400000
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %date_time, i32 0, i64 1
  %4 = load i64, i64* %arrayidx2, align 8
  %add = add nsw i64 %mul, %4
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %add, i64* %intval, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @zmisc_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zmisc_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
