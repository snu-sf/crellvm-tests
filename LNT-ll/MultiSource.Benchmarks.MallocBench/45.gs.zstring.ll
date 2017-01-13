; ModuleID = './MultiSource.Benchmarks.MallocBench/45.gs.zstring.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@zstring_op_init.my_defs = internal global [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zanchorsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zsearch }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zstring }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @ztoken }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"2anchorsearch\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"2search\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1string\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1token\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zstring(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %sbody = alloca i8*, align 8
  %size = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
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
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval5 = bitcast %union.v* %value4 to i64*
  %5 = load i64, i64* %intval5, align 8
  %cmp6 = icmp ugt i64 %5, 4294967295
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval11 = bitcast %union.v* %value10 to i64*
  %7 = load i64, i64* %intval11, align 8
  %conv12 = trunc i64 %7 to i32
  store i32 %conv12, i32* %size, align 4
  %8 = load i32, i32* %size, align 4
  %call = call i8* @alloc(i32 %8, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  store i8* %call, i8** %sbody, align 8
  %9 = load i8*, i8** %sbody, align 8
  %cmp13 = icmp eq i8* %9, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 -25, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %10 = load i8*, i8** %sbody, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %bytes = bitcast %union.v* %value17 to i8**
  store i8* %10, i8** %bytes, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 822, i16* %type_attrs18, align 2
  %13 = load i32, i32* %size, align 4
  %conv19 = trunc i32 %13 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  store i16 %conv19, i16* %size20, align 2
  %15 = load i8*, i8** %sbody, align 8
  %16 = load i32, i32* %size, align 4
  %conv21 = zext i32 %16 to i64
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %conv21, i32 1, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.8, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i8* @alloc(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zanchorsearch(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 2
  %2 = load i16, i16* %size1, align 2
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %size, align 4
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs4, align 2
  %conv5 = zext i16 %6 to i32
  %neg = xor i32 %conv5, -1
  %and6 = and i32 %neg, 512
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs9, align 2
  %conv10 = zext i16 %8 to i32
  %and11 = and i32 %conv10, 252
  %cmp12 = icmp eq i32 %and11, 52
  br i1 %cmp12, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.8
  store i32 -20, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %10 to i32
  %neg18 = xor i32 %conv17, -1
  %and19 = and i32 %neg18, 512
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 -7, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %11 = load i32, i32* %size, align 4
  %12 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size23, align 2
  %conv24 = zext i16 %13 to i32
  %cmp25 = icmp ule i32 %11, %conv24
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.22
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %15 = load i8*, i8** %bytes, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %bytes28 = bitcast %union.v* %value27 to i8**
  %17 = load i8*, i8** %bytes28, align 8
  %18 = load i32, i32* %size, align 4
  %conv29 = zext i32 %18 to i64
  %call = call i32 @memcmp(i8* %15, i8* %17, i64 %conv29) #4
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %20 = load i16, i16* %type_attrs32, align 2
  %conv33 = zext i16 %20 to i32
  %or = or i32 %conv33, 32768
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, i16* %type_attrs32, align 2
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %23 = bitcast %struct.ref_s* %21 to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %25 = load i32, i32* %size, align 4
  %conv35 = trunc i32 %25 to i16
  %26 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 2
  store i16 %conv35, i16* %size36, align 2
  %27 = load i32, i32* %size, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %bytes38 = bitcast %union.v* %value37 to i8**
  %29 = load i8*, i8** %bytes38, align 8
  %idx.ext = zext i32 %27 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr39, i8** %bytes38, align 8
  %30 = load i32, i32* %size, align 4
  %31 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 2
  %32 = load i16, i16* %size40, align 2
  %conv41 = zext i16 %32 to i32
  %sub = sub i32 %conv41, %30
  %conv42 = trunc i32 %sub to i16
  store i16 %conv42, i16* %size40, align 2
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %add.ptr43, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr43, %struct.ref_s** @osp, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp44 = icmp ugt %struct.ref_s* %add.ptr43, %34
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.31
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %add.ptr47, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.31
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %index = bitcast %union.v* %value49 to i16*
  store i16 1, i16* %index, align 2
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  store i16 4, i16* %type_attrs50, align 2
  br label %if.end.54

if.else:                                          ; preds = %land.lhs.true, %if.end.22
  %38 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %index52 = bitcast %union.v* %value51 to i16*
  store i16 0, i16* %index52, align 2
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  store i16 4, i16* %type_attrs53, align 2
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.end.48
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.46, %if.then.21, %if.then.14, %if.then.7, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zsearch(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 2
  %2 = load i16, i16* %size1, align 2
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %size, align 4
  %3 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, 252
  %cmp = icmp eq i32 %and, 52
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs4, align 2
  %conv5 = zext i16 %6 to i32
  %neg = xor i32 %conv5, -1
  %and6 = and i32 %neg, 512
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %8 = load i16, i16* %type_attrs9, align 2
  %conv10 = zext i16 %8 to i32
  %and11 = and i32 %conv10, 252
  %cmp12 = icmp eq i32 %and11, 52
  br i1 %cmp12, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.8
  store i32 -20, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %10 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %10 to i32
  %neg18 = xor i32 %conv17, -1
  %and19 = and i32 %neg18, 512
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  store i32 -7, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %11 = load i32, i32* %size, align 4
  %12 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 2
  %13 = load i16, i16* %size23, align 2
  %conv24 = zext i16 %13 to i32
  %cmp25 = icmp ugt i32 %11, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.22
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 0, i16* %index, align 2
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 4, i16* %type_attrs28, align 2
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %16 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 2
  %17 = load i16, i16* %size30, align 2
  %conv31 = zext i16 %17 to i32
  %18 = load i32, i32* %size, align 4
  %sub = sub i32 %conv31, %18
  store i32 %sub, i32* %count, align 4
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %bytes = bitcast %union.v* %value32 to i8**
  %20 = load i8*, i8** %bytes, align 8
  store i8* %20, i8** %ptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.29
  %21 = load i8*, i8** %ptr, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %bytes34 = bitcast %union.v* %value33 to i8**
  %23 = load i8*, i8** %bytes34, align 8
  %24 = load i32, i32* %size, align 4
  %conv35 = zext i32 %24 to i64
  %call = call i32 @memcmp(i8* %21, i8* %23, i64 %conv35) #4
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %if.end.71, label %if.then.37

if.then.37:                                       ; preds = %do.body
  %25 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %26 = load i16, i16* %type_attrs38, align 2
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  store i16 %26, i16* %type_attrs39, align 2
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %29 = load i16, i16* %type_attrs40, align 2
  %conv41 = zext i16 %29 to i32
  %or = or i32 %conv41, 32768
  %conv42 = trunc i32 %or to i16
  store i16 %conv42, i16* %type_attrs40, align 2
  %30 = load i8*, i8** %ptr, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %bytes44 = bitcast %union.v* %value43 to i8**
  store i8* %30, i8** %bytes44, align 8
  %32 = load i32, i32* %size, align 4
  %conv45 = trunc i32 %32 to i16
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 2
  store i16 %conv45, i16* %size46, align 2
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1
  store %struct.ref_s* %add.ptr47, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr47, %struct.ref_s** @osp, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp48 = icmp ugt %struct.ref_s* %add.ptr47, %35
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.37
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  store %struct.ref_s* %add.ptr51, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.then.37
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %39 = bitcast %struct.ref_s* %37 to i8*
  %40 = bitcast %struct.ref_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = load i8*, i8** %ptr, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %bytes54 = bitcast %union.v* %value53 to i8**
  %43 = load i8*, i8** %bytes54, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i16
  %44 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 2
  store i16 %conv55, i16* %size56, align 2
  %45 = load i8*, i8** %ptr, align 8
  %46 = load i32, i32* %size, align 4
  %idx.ext = zext i32 %46 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  %47 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %bytes59 = bitcast %union.v* %value58 to i8**
  store i8* %add.ptr57, i8** %bytes59, align 8
  %48 = load i32, i32* %count, align 4
  %conv60 = trunc i32 %48 to i16
  %49 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %size61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 2
  store i16 %conv60, i16* %size61, align 2
  %50 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 1
  store %struct.ref_s* %add.ptr62, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr62, %struct.ref_s** @osp, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp63 = icmp ugt %struct.ref_s* %add.ptr62, %51
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.52
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  store %struct.ref_s* %add.ptr66, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.52
  %53 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %index69 = bitcast %union.v* %value68 to i16*
  store i16 1, i16* %index69, align 2
  %54 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  store i16 4, i16* %type_attrs70, align 2
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %do.body
  %55 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  %56 = load i32, i32* %count, align 4
  %dec = add i32 %56, -1
  store i32 %dec, i32* %count, align 4
  %tobool72 = icmp ne i32 %56, 0
  br i1 %tobool72, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %index74 = bitcast %union.v* %value73 to i16*
  store i16 0, i16* %index74, align 2
  %58 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 4, i16* %type_attrs75, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.67, %if.then.65, %if.then.50, %if.then.27, %if.then.21, %if.then.14, %if.then.7, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @ztoken(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %st = alloca %struct.stream_s, align 8
  %s = alloca %struct.stream_s*, align 8
  %code = alloca i32, align 4
  %token = alloca %struct.ref_s, align 8
  %pos = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  store %struct.stream_s* %st, %struct.stream_s** %s, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 3, label %sw.bb
    i32 13, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @ztoken_file to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %2)
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs2, align 2
  %conv3 = zext i16 %4 to i32
  %neg = xor i32 %conv3, -1
  %and4 = and i32 %neg, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %5 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %bytes, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv5 = zext i16 %9 to i32
  call void @sread_string(%struct.stream_s* %5, i8* %7, i32 %conv5)
  %10 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %call6 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* %10, i32 1, %struct.ref_s* %token)
  store i32 %call6, i32* %code, align 4
  switch i32 %call6, label %sw.default.29 [
    i32 0, label %sw.bb.7
    i32 1, label %sw.bb.25
  ]

sw.bb.7:                                          ; preds = %if.end
  %11 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cptr = getelementptr inbounds %struct.stream_s, %struct.stream_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %cptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %cbuf = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 2
  %14 = load i8*, i8** %cbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load %struct.stream_s*, %struct.stream_s** %s, align 8
  %position = getelementptr inbounds %struct.stream_s, %struct.stream_s* %15, i32 0, i32 6
  %16 = load i64, i64* %position, align 8
  %add = add nsw i64 %sub.ptr.sub, %16
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %pos, align 4
  %17 = load i32, i32* %pos, align 4
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %bytes10 = bitcast %union.v* %value9 to i8**
  %19 = load i8*, i8** %bytes10, align 8
  %idx.ext = zext i32 %17 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  store i8* %add.ptr11, i8** %bytes10, align 8
  %20 = load i32, i32* %pos, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  %22 = load i16, i16* %size12, align 2
  %conv13 = zext i16 %22 to i32
  %sub = sub i32 %conv13, %20
  %conv14 = trunc i32 %sub to i16
  store i16 %conv14, i16* %size12, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %24 = load i16, i16* %type_attrs15, align 2
  %conv16 = zext i16 %24 to i32
  %or = or i32 %conv16, 32768
  %conv17 = trunc i32 %or to i16
  store i16 %conv17, i16* %type_attrs15, align 2
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2
  store %struct.ref_s* %add.ptr18, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr18, %struct.ref_s** @osp, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr18, %26
  br i1 %cmp, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.bb.7
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -2
  store %struct.ref_s* %add.ptr21, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb.7
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %29 = bitcast %struct.ref_s* %arrayidx to i8*
  %30 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %index = bitcast %union.v* %value23 to i16*
  store i16 1, i16* %index, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 4, i16* %type_attrs24, align 2
  store i32 0, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %index27 = bitcast %union.v* %value26 to i16*
  store i16 0, i16* %index27, align 2
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  store i16 4, i16* %type_attrs28, align 2
  store i32 0, i32* %retval
  br label %return

sw.default.29:                                    ; preds = %if.end
  %35 = load i32, i32* %code, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %sw.default.29, %sw.bb.25, %if.end.22, %if.then.20, %if.then, %sw.bb, %sw.default
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @ztoken_file(...) #1

declare void @sread_string(%struct.stream_s*, i8*, i32) #1

declare i32 @scan_token(...) #1

; Function Attrs: nounwind uwtable
define void @zstring_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([5 x %struct.op_def], [5 x %struct.op_def]* @zstring_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
