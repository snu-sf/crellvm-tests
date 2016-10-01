; ModuleID = './MultiSource.Benchmarks.MallocBench/53.gs.zrelbit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external global %struct.ref_s*, align 8
@zrelbit_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zand }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zbitshift }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zeq }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zge }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zgt }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zle }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zlt }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zmax }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmin }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zne }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @znot }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zxor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2and\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2bitshift\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2eq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2ge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2gt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2le\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2lt\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2max\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"2min\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2ne\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1not\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2or\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2xor\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zeq(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.epilog [
    i32 13, label %sw.bb
    i32 0, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %4 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 512
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %5)
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call, i32 0, i32 1
  %6 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %6 to i32
  %neg7 = xor i32 %conv6, -1
  %and8 = and i32 %neg7, 512
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.4
  store i32 -7, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.11, %entry, %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs12, align 2
  %conv13 = zext i16 %8 to i32
  %and14 = and i32 %conv13, 255
  %shr15 = ashr i32 %and14, 2
  switch i32 %shr15, label %sw.epilog.33 [
    i32 13, label %sw.bb.16
    i32 0, label %sw.bb.16
    i32 10, label %sw.bb.16
    i32 2, label %sw.bb.24
  ]

sw.bb.16:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %9 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs17, align 2
  %conv18 = zext i16 %10 to i32
  %neg19 = xor i32 %conv18, -1
  %and20 = and i32 %neg19, 512
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.16
  store i32 -7, i32* %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.16
  br label %sw.epilog.33

sw.bb.24:                                         ; preds = %sw.epilog
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %call25 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* %11)
  %type_attrs26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %call25, i32 0, i32 1
  %12 = load i16, i16* %type_attrs26, align 2
  %conv27 = zext i16 %12 to i32
  %neg28 = xor i32 %conv27, -1
  %and29 = and i32 %neg28, 512
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.24
  store i32 -7, i32* %retval
  br label %return

if.end.32:                                        ; preds = %sw.bb.24
  br label %sw.epilog.33

sw.epilog.33:                                     ; preds = %if.end.32, %sw.epilog, %if.end.23
  %13 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call34 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* %13, %struct.ref_s* %14)
  %tobool35 = icmp ne i32 %call34, 0
  %cond = select i1 %tobool35, i32 1, i32 0
  %conv36 = trunc i32 %cond to i16
  %15 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv36, i16* %index, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 4, i16* %type_attrs37, align 2
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %add.ptr38, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.33, %if.then.31, %if.then.22, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct.ref_s* @dict_access_ref(%struct.ref_s*) #1

declare i32 @obj_eq(...) #1

; Function Attrs: nounwind uwtable
define i32 @zne(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @zeq(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %3 = load i16, i16* %index, align 2
  %conv = zext i16 %3 to i32
  %xor = xor i32 %conv, 1
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, i16* %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %code, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @zge(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 6)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %conv = trunc i32 %3 to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zgt(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 4)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %conv = trunc i32 %3 to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zle(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 3)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %conv = trunc i32 %3 to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zlt(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 1)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %conv = trunc i32 %3 to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 %conv, i16* %index, align 2
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr1, i32 0, i32 1
  store i16 4, i16* %type_attrs, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr2, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @zmax(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 1)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %6 = bitcast %struct.ref_s* %arrayidx to i8*
  %7 = bitcast %struct.ref_s* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zmin(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @obj_compare(%struct.ref_s* %0, i32 4)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0
  %6 = bitcast %struct.ref_s* %arrayidx to i8*
  %7 = bitcast %struct.ref_s* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @zand(%struct.ref_s* %op) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr = ashr i32 %and3, 2
  %shl = shl i32 %shr, 2
  %cmp = icmp eq i32 %and, %shl
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 255
  %shr8 = ashr i32 %and7, 2
  switch i32 %shr8, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %7 = load i16, i16* %index, align 2
  %conv9 = zext i16 %7 to i32
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %index12 = bitcast %union.v* %value11 to i16*
  %9 = load i16, i16* %index12, align 2
  %conv13 = zext i16 %9 to i32
  %and14 = and i32 %conv13, %conv9
  %conv15 = trunc i32 %and14 to i16
  store i16 %conv15, i16* %index12, align 2
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value17 to i64*
  %11 = load i64, i64* %intval, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %intval20 = bitcast %union.v* %value19 to i64*
  %13 = load i64, i64* %intval20, align 8
  %and21 = and i64 %13, %11
  store i64 %and21, i64* %intval20, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.16, %sw.bb
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @znot(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %3 = load i16, i16* %index, align 2
  %tobool = icmp ne i16 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1 = trunc i32 %lnot.ext to i16
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %index3 = bitcast %union.v* %value2 to i16*
  store i16 %conv1, i16* %index3, align 2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %intval = bitcast %union.v* %value5 to i64*
  %6 = load i64, i64* %intval, align 8
  %neg = xor i64 %6, -1
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %intval7 = bitcast %union.v* %value6 to i64*
  store i64 %neg, i64* %intval7, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.4, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @zor(%struct.ref_s* %op) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr = ashr i32 %and3, 2
  %shl = shl i32 %shr, 2
  %cmp = icmp eq i32 %and, %shl
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 255
  %shr8 = ashr i32 %and7, 2
  switch i32 %shr8, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %7 = load i16, i16* %index, align 2
  %conv9 = zext i16 %7 to i32
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %index12 = bitcast %union.v* %value11 to i16*
  %9 = load i16, i16* %index12, align 2
  %conv13 = zext i16 %9 to i32
  %or = or i32 %conv13, %conv9
  %conv14 = trunc i32 %or to i16
  store i16 %conv14, i16* %index12, align 2
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value16 to i64*
  %11 = load i64, i64* %intval, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %intval19 = bitcast %union.v* %value18 to i64*
  %13 = load i64, i64* %intval19, align 8
  %or20 = or i64 %13, %11
  store i64 %or20, i64* %intval19, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zxor(%struct.ref_s* %op) #0 {
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
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr = ashr i32 %and3, 2
  %shl = shl i32 %shr, 2
  %cmp = icmp eq i32 %and, %shl
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs5, align 2
  %conv6 = zext i16 %5 to i32
  %and7 = and i32 %conv6, 255
  %shr8 = ashr i32 %and7, 2
  switch i32 %shr8, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %7 = load i16, i16* %index, align 2
  %conv9 = zext i16 %7 to i32
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx10, i32 0, i32 0
  %index12 = bitcast %union.v* %value11 to i16*
  %9 = load i16, i16* %index12, align 2
  %conv13 = zext i16 %9 to i32
  %xor = xor i32 %conv13, %conv9
  %conv14 = trunc i32 %xor to i16
  store i16 %conv14, i16* %index12, align 2
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval = bitcast %union.v* %value16 to i64*
  %11 = load i64, i64* %intval, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %intval19 = bitcast %union.v* %value18 to i64*
  %13 = load i64, i64* %intval19, align 8
  %xor20 = xor i64 %13, %11
  store i64 %xor20, i64* %intval19, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zbitshift(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %shift = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
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
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, 252
  %cmp5 = icmp eq i32 %and4, 20
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8
  %cmp9 = icmp slt i64 %5, -31
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval12 = bitcast %union.v* %value11 to i64*
  %7 = load i64, i64* %intval12, align 8
  %cmp13 = icmp sgt i64 %7, 31
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx16, i32 0, i32 0
  %intval18 = bitcast %union.v* %value17 to i64*
  store i64 0, i64* %intval18, align 8
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %intval20 = bitcast %union.v* %value19 to i64*
  %10 = load i64, i64* %intval20, align 8
  %conv21 = trunc i64 %10 to i32
  store i32 %conv21, i32* %shift, align 4
  %cmp22 = icmp slt i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %if.else
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 0
  %intval27 = bitcast %union.v* %value26 to i64*
  %12 = load i64, i64* %intval27, align 8
  %13 = load i32, i32* %shift, align 4
  %sub = sub nsw i32 0, %13
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %12, %sh_prom
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx28, i32 0, i32 0
  %intval30 = bitcast %union.v* %value29 to i64*
  store i64 %shr, i64* %intval30, align 8
  br label %if.end.36

if.else.31:                                       ; preds = %if.else
  %15 = load i32, i32* %shift, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %intval34 = bitcast %union.v* %value33 to i64*
  %17 = load i64, i64* %intval34, align 8
  %sh_prom35 = zext i32 %15 to i64
  %shl = shl i64 %17, %sh_prom35
  store i64 %shl, i64* %intval34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.15
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.7, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @zrelbit_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zrelbit_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

; Function Attrs: nounwind uwtable
define i32 @obj_compare(%struct.ref_s* %op, i32 %mask) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %mask.addr = alloca i32, align 4
  %real1 = alloca float, align 4
  %real2 = alloca float, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default.76 [
    i32 5, label %sw.bb
    i32 11, label %sw.bb.28
    i32 13, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %3 to i32
  %and3 = and i32 %conv2, 255
  %shr4 = ashr i32 %and3, 2
  switch i32 %shr4, label %sw.default [
    i32 5, label %sw.bb.5
    i32 11, label %sw.bb.22
  ]

sw.bb.5:                                          ; preds = %sw.bb
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %5 = load i64, i64* %intval, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval8 = bitcast %union.v* %value7 to i64*
  %7 = load i64, i64* %intval8, align 8
  %cmp = icmp sgt i64 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %8 = load i32, i32* %mask.addr, align 4
  %shr10 = ashr i32 %8, 2
  store i32 %shr10, i32* %mask.addr, align 4
  br label %if.end.20

if.else:                                          ; preds = %sw.bb.5
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 0
  %intval13 = bitcast %union.v* %value12 to i64*
  %10 = load i64, i64* %intval13, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %intval15 = bitcast %union.v* %value14 to i64*
  %12 = load i64, i64* %intval15, align 8
  %cmp16 = icmp eq i64 %10, %12
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %13 = load i32, i32* %mask.addr, align 4
  %shr19 = ashr i32 %13, 1
  store i32 %shr19, i32* %mask.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %14 = load i32, i32* %mask.addr, align 4
  %and21 = and i32 %14, 1
  store i32 %and21, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 0
  %intval25 = bitcast %union.v* %value24 to i64*
  %16 = load i64, i64* %intval25, align 8
  %conv26 = sitofp i64 %16 to float
  store float %conv26, float* %real1, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %realval = bitcast %union.v* %value27 to float*
  %18 = load float, float* %realval, align 4
  store float %18, float* %real2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 -20, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.22
  br label %sw.epilog.77

sw.bb.28:                                         ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr29, i32 0, i32 0
  %realval31 = bitcast %union.v* %value30 to float*
  %20 = load float, float* %realval31, align 4
  store float %20, float* %real1, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %22 = load i16, i16* %type_attrs32, align 2
  %conv33 = zext i16 %22 to i32
  %and34 = and i32 %conv33, 255
  %shr35 = ashr i32 %and34, 2
  switch i32 %shr35, label %sw.default.43 [
    i32 5, label %sw.bb.36
    i32 11, label %sw.bb.40
  ]

sw.bb.36:                                         ; preds = %sw.bb.28
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %intval38 = bitcast %union.v* %value37 to i64*
  %24 = load i64, i64* %intval38, align 8
  %conv39 = sitofp i64 %24 to float
  store float %conv39, float* %real2, align 4
  br label %sw.epilog.44

sw.bb.40:                                         ; preds = %sw.bb.28
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %realval42 = bitcast %union.v* %value41 to float*
  %26 = load float, float* %realval42, align 4
  store float %26, float* %real2, align 4
  br label %sw.epilog.44

sw.default.43:                                    ; preds = %sw.bb.28
  store i32 -20, i32* %retval
  br label %return

sw.epilog.44:                                     ; preds = %sw.bb.40, %sw.bb.36
  br label %sw.epilog.77

sw.bb.45:                                         ; preds = %entry
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %type_attrs47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 1
  %28 = load i16, i16* %type_attrs47, align 2
  %conv48 = zext i16 %28 to i32
  %neg = xor i32 %conv48, -1
  %and49 = and i32 %neg, 512
  %tobool = icmp ne i32 %and49, 0
  br i1 %tobool, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %sw.bb.45
  store i32 -7, i32* %retval
  br label %return

if.end.51:                                        ; preds = %sw.bb.45
  %29 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %30 = load i16, i16* %type_attrs52, align 2
  %conv53 = zext i16 %30 to i32
  %and54 = and i32 %conv53, 252
  %cmp55 = icmp eq i32 %and54, 52
  br i1 %cmp55, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.51
  store i32 -20, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.51
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %32 = load i16, i16* %type_attrs59, align 2
  %conv60 = zext i16 %32 to i32
  %neg61 = xor i32 %conv60, -1
  %and62 = and i32 %neg61, 512
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.58
  store i32 -7, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.58
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 0
  %bytes = bitcast %union.v* %value67 to i8**
  %34 = load i8*, i8** %bytes, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr68, i32 0, i32 2
  %36 = load i16, i16* %size, align 2
  %conv69 = zext i16 %36 to i32
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %bytes71 = bitcast %union.v* %value70 to i8**
  %38 = load i8*, i8** %bytes71, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 2
  %40 = load i16, i16* %size72, align 2
  %conv73 = zext i16 %40 to i32
  %call = call i32 (i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @bytes_compare to i32 (i8*, i32, i8*, i32, ...)*)(i8* %34, i32 %conv69, i8* %38, i32 %conv73)
  %add = add nsw i32 %call, 1
  %41 = load i32, i32* %mask.addr, align 4
  %shr74 = ashr i32 %41, %add
  store i32 %shr74, i32* %mask.addr, align 4
  %42 = load i32, i32* %mask.addr, align 4
  %and75 = and i32 %42, 1
  store i32 %and75, i32* %retval
  br label %return

sw.default.76:                                    ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.epilog.77:                                     ; preds = %sw.epilog.44, %sw.epilog
  %43 = load float, float* %real1, align 4
  %44 = load float, float* %real2, align 4
  %cmp78 = fcmp ogt float %43, %44
  br i1 %cmp78, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %sw.epilog.77
  %45 = load i32, i32* %mask.addr, align 4
  %shr81 = ashr i32 %45, 2
  store i32 %shr81, i32* %mask.addr, align 4
  br label %if.end.88

if.else.82:                                       ; preds = %sw.epilog.77
  %46 = load float, float* %real1, align 4
  %47 = load float, float* %real2, align 4
  %cmp83 = fcmp oeq float %46, %47
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.else.82
  %48 = load i32, i32* %mask.addr, align 4
  %shr86 = ashr i32 %48, 1
  store i32 %shr86, i32* %mask.addr, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.else.82
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.80
  %49 = load i32, i32* %mask.addr, align 4
  %and89 = and i32 %49, 1
  store i32 %and89, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %sw.default.76, %if.end.65, %if.then.64, %if.then.57, %if.then.50, %sw.default.43, %sw.default, %if.end.20
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @bytes_compare(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
