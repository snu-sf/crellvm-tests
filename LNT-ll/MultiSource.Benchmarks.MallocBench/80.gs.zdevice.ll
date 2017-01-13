; ModuleID = './MultiSource.Benchmarks.MallocBench/80.gs.zdevice.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type opaque
%struct.gs_color_s = type opaque

@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [11 x i8] c"devicename\00", align 1
@zdevice_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopypage }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopyscanlines }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdevicename }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zdeviceparams }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zflushpage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetdevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakedevice }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakeimagedevice }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @znulldevice }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdevice }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"0copypage\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"3copyscanlines\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"0currentdevice\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1devicename\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"1deviceparams\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"0flushpage\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"1getdevice\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"4makedevice\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"4makeimagedevice\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"0.nulldevice\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"1.setdevice\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zcopypage(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_copypage(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_copypage(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zcopyscanlines(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %op2 = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %bytes_copied = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 -2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %op2, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 60
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  store %struct.gx_device_s* %5, %struct.gx_device_s** %dev, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %7 to i32
  %and5 = and i32 %conv4, 252
  %cmp6 = icmp eq i32 %and5, 20
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %intval = bitcast %union.v* %value10 to i64*
  %9 = load i64, i64* %intval, align 8
  %cmp11 = icmp slt i64 %9, 0
  br i1 %cmp11, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %10 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %intval14 = bitcast %union.v* %value13 to i64*
  %11 = load i64, i64* %intval14, align 8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 4
  %13 = load i32, i32* %height, align 4
  %conv15 = sext i32 %13 to i64
  %cmp16 = icmp sgt i64 %11, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.9
  store i32 -15, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %15 = load i16, i16* %type_attrs20, align 2
  %conv21 = zext i16 %15 to i32
  %and22 = and i32 %conv21, 252
  %cmp23 = icmp eq i32 %and22, 52
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.19
  store i32 -20, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.19
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %17 = load i16, i16* %type_attrs27, align 2
  %conv28 = zext i16 %17 to i32
  %neg = xor i32 %conv28, -1
  %and29 = and i32 %neg, 256
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  store i32 -7, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %intval33 = bitcast %union.v* %value32 to i64*
  %20 = load i64, i64* %intval33, align 8
  %conv34 = trunc i64 %20 to i32
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %bytes = bitcast %union.v* %value35 to i8**
  %22 = load i8*, i8** %bytes, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 2
  %24 = load i16, i16* %size, align 2
  %conv36 = zext i16 %24 to i32
  %call = call i32 @gs_copyscanlines(%struct.gx_device_s* %18, i32 %conv34, i8* %22, i32 %conv36, i32* null, i32* %bytes_copied)
  store i32 %call, i32* %code, align 4
  %25 = load i32, i32* %code, align 4
  %cmp37 = icmp slt i32 %25, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.31
  store i32 -20, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.31
  %26 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %28 = bitcast %struct.ref_s* %26 to i8*
  %29 = bitcast %struct.ref_s* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load i32, i32* %bytes_copied, align 4
  %conv41 = trunc i32 %30 to i16
  %31 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %size42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 2
  store i16 %conv41, i16* %size42, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** %op2, align 8
  %type_attrs43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %33 = load i16, i16* %type_attrs43, align 2
  %conv44 = zext i16 %33 to i32
  %or = or i32 %conv44, 32768
  %conv45 = trunc i32 %or to i16
  store i16 %conv45, i16* %type_attrs43, align 2
  %34 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  store %struct.ref_s* %add.ptr46, %struct.ref_s** @osp, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.then.30, %if.then.25, %if.then.18, %if.then.8, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gs_copyscanlines(%struct.gx_device_s*, i32, i8*, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @zcurrentdevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %0)
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  store %struct.gx_device_s* %4, %struct.gx_device_s** %pdevice, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 60, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zdevicename(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %dname = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 60
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %call = call i8* @gs_devicename(%struct.gx_device_s* %3)
  store i8* %call, i8** %dname, align 8
  %4 = load i8*, i8** %dname, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call2 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* %4, %struct.ref_s* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store i32 %call2, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i8* @gs_devicename(%struct.gx_device_s*) #1

declare i32 @string_to_ref(...) #1

; Function Attrs: nounwind uwtable
define i32 @zdeviceparams(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %pmat = alloca %struct.ref_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @write_matrix to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 252
  %cmp1 = icmp eq i32 %and, 60
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 0
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  call void @gs_deviceparams(%struct.gx_device_s* %6, %struct.gs_matrix_s* %imat, i32* %width, i32* %height)
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %refs = bitcast %union.v* %value6 to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %8, %struct.ref_s** %pmat, align 8
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 0
  %9 = load float, float* %xx, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 0
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %realval = bitcast %union.v* %value7 to float*
  store float %9, float* %realval, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 0
  %type_attrs9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 1
  store i16 44, i16* %type_attrs9, align 2
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 2
  %12 = load float, float* %xy, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr10, i32 0, i32 0
  %realval12 = bitcast %union.v* %value11 to float*
  store float %12, float* %realval12, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr13, i32 0, i32 1
  store i16 44, i16* %type_attrs14, align 2
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 4
  %15 = load float, float* %yx, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 2
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr15, i32 0, i32 0
  %realval17 = bitcast %union.v* %value16 to float*
  store float %15, float* %realval17, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 2
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 1
  store i16 44, i16* %type_attrs19, align 2
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 6
  %18 = load float, float* %yy, align 4
  %19 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr20, i32 0, i32 0
  %realval22 = bitcast %union.v* %value21 to float*
  store float %18, float* %realval22, align 4
  %20 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 3
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr23, i32 0, i32 1
  store i16 44, i16* %type_attrs24, align 2
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 8
  %21 = load float, float* %tx, align 4
  %22 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 4
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr25, i32 0, i32 0
  %realval27 = bitcast %union.v* %value26 to float*
  store float %21, float* %realval27, align 4
  %23 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 4
  %type_attrs29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 1
  store i16 44, i16* %type_attrs29, align 2
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %imat, i32 0, i32 10
  %24 = load float, float* %ty, align 4
  %25 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 5
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr30, i32 0, i32 0
  %realval32 = bitcast %union.v* %value31 to float*
  store float %24, float* %realval32, align 4
  %26 = load %struct.ref_s*, %struct.ref_s** %pmat, align 8
  %add.ptr33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 5
  %type_attrs34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr33, i32 0, i32 1
  store i16 44, i16* %type_attrs34, align 2
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 2
  store %struct.ref_s* %add.ptr35, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr35, %struct.ref_s** @osp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp36 = icmp ugt %struct.ref_s* %add.ptr35, %28
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.4
  %29 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  store %struct.ref_s* %add.ptr39, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.4
  %30 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr41, i32 0, i32 0
  %intval = bitcast %union.v* %value42 to i64*
  store i64 0, i64* %intval, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  %type_attrs44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr43, i32 0, i32 1
  store i16 24, i16* %type_attrs44, align 2
  %32 = load i32, i32* %width, align 4
  %conv45 = sext i32 %32 to i64
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 0
  %intval48 = bitcast %union.v* %value47 to i64*
  store i64 %conv45, i64* %intval48, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %type_attrs50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr49, i32 0, i32 1
  store i16 20, i16* %type_attrs50, align 2
  %35 = load i32, i32* %height, align 4
  %conv51 = sext i32 %35 to i64
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %intval53 = bitcast %union.v* %value52 to i64*
  store i64 %conv51, i64* %intval53, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  store i16 20, i16* %type_attrs54, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.38, %if.then.3, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @write_matrix(...) #1

declare void @gs_deviceparams(%struct.gx_device_s*, %struct.gs_matrix_s*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @zflushpage(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_flushpage(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_flushpage(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zgetdevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
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
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval3 = bitcast %union.v* %value2 to i64*
  %5 = load i64, i64* %intval3, align 8
  %conv4 = trunc i64 %5 to i32
  %conv5 = sext i32 %conv4 to i64
  %cmp6 = icmp ne i64 %3, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %intval11 = bitcast %union.v* %value10 to i64*
  %7 = load i64, i64* %intval11, align 8
  %conv12 = trunc i64 %7 to i32
  %call = call %struct.gx_device_s* @gs_getdevice(i32 %conv12)
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %cmp13 = icmp eq %struct.gx_device_s* %8, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 -15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %pdevice = bitcast %union.v* %value17 to %struct.gx_device_s**
  store %struct.gx_device_s* %9, %struct.gx_device_s** %pdevice, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 60, i16* %type_attrs18, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.8, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct.gx_device_s* @gs_getdevice(i32) #1

; Function Attrs: nounwind uwtable
define i32 @zmakedevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 60
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
  %and5 = and i32 %conv4, 252
  %cmp6 = icmp eq i32 %and5, 20
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %5 to i32
  %and12 = and i32 %conv11, 252
  %cmp13 = icmp eq i32 %and12, 20
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.9
  store i32 -20, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %7 = load i64, i64* %intval, align 8
  %cmp18 = icmp ugt i64 %7, 2147483647
  br i1 %cmp18, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %intval21 = bitcast %union.v* %value20 to i64*
  %9 = load i64, i64* %intval21, align 8
  %cmp22 = icmp ugt i64 %9, 2147483647
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.16
  store i32 -15, i32* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr, %struct.gs_matrix_s* %imat)
  store i32 %call, i32* %code, align 4
  %cmp26 = icmp slt i32 %call, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %11 = load i32, i32* %code, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  %value31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx30, i32 0, i32 0
  %pdevice = bitcast %union.v* %value31 to %struct.gx_device_s**
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx32, i32 0, i32 0
  %intval34 = bitcast %union.v* %value33 to i64*
  %15 = load i64, i64* %intval34, align 8
  %conv35 = trunc i64 %15 to i32
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %intval37 = bitcast %union.v* %value36 to i64*
  %17 = load i64, i64* %intval37, align 8
  %conv38 = trunc i64 %17 to i32
  %call39 = call i32 @gs_makedevice(%struct.gx_device_s** %new_dev, %struct.gx_device_s* %13, %struct.gs_matrix_s* %imat, i32 %conv35, i32 %conv38, i8* (i32, i32, i8*)* @alloc)
  store i32 %call39, i32* %code, align 4
  %18 = load i32, i32* %code, align 4
  %cmp40 = icmp eq i32 %18, 0
  br i1 %cmp40, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.29
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr43, i32 0, i32 0
  %pdevice45 = bitcast %union.v* %value44 to %struct.gx_device_s**
  store %struct.gx_device_s* %19, %struct.gx_device_s** %pdevice45, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %type_attrs47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr46, i32 0, i32 1
  store i16 60, i16* %type_attrs47, align 2
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -3
  store %struct.ref_s* %add.ptr48, %struct.ref_s** @osp, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.42, %if.end.29
  %23 = load i32, i32* %code, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.28, %if.then.24, %if.then.15, %if.then.8, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @read_matrix(...) #1

declare i32 @gs_makedevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_matrix_s*, i32, i32, i8* (i32, i32, i8*)*) #1

declare i8* @alloc(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @zmakeimagedevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %imat = alloca %struct.gs_matrix_s, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
  %colors = alloca [768 x float], align 16
  %num_colors = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %pc = alloca %struct.ref_s*, align 8
  %p = alloca float*, align 8
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
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %3 to i32
  %and5 = and i32 %conv4, 252
  %cmp6 = icmp eq i32 %and5, 20
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %5 = load i16, i16* %type_attrs10, align 2
  %conv11 = zext i16 %5 to i32
  %and12 = and i32 %conv11, 255
  %shr = ashr i32 %and12, 2
  %cmp13 = icmp eq i32 %shr, 8
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.9
  store i32 -24, i32* %num_colors, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.end.9
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %7 = load i16, i16* %type_attrs16, align 2
  %conv17 = zext i16 %7 to i32
  %and18 = and i32 %conv17, 255
  %shr19 = ashr i32 %and18, 2
  switch i32 %shr19, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.else, %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  %9 = load i16, i16* %size, align 2
  %conv20 = zext i16 %9 to i32
  store i32 %conv20, i32* %num_colors, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %sw.epilog, %if.then.15
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx22, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8
  %cmp23 = icmp ugt i64 %11, 2147483647
  br i1 %cmp23, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx25, i32 0, i32 0
  %intval27 = bitcast %union.v* %value26 to i64*
  %13 = load i64, i64* %intval27, align 8
  %cmp28 = icmp ugt i64 %13, 2147483647
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %14 = load i32, i32* %num_colors, align 4
  %cmp31 = icmp sgt i32 %14, 256
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false, %if.end.21
  store i32 -15, i32* %retval
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.30
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  %call = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* %add.ptr, %struct.gs_matrix_s* %imat)
  store i32 %call, i32* %code, align 4
  %cmp35 = icmp slt i32 %call, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  %16 = load i32, i32* %code, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.34
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %refs = bitcast %union.v* %value39 to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  store %struct.ref_s* %18, %struct.ref_s** %pc, align 8
  %arraydecay = getelementptr inbounds [768 x float], [768 x float]* %colors, i32 0, i32 0
  store float* %arraydecay, float** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %num_colors, align 4
  %cmp40 = icmp slt i32 %19, %20
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %pc, align 8
  %type_attrs42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %22 = load i16, i16* %type_attrs42, align 2
  %conv43 = zext i16 %22 to i32
  %and44 = and i32 %conv43, 252
  %cmp45 = icmp eq i32 %and44, 56
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %for.body
  store i32 -20, i32* %retval
  br label %return

if.end.48:                                        ; preds = %for.body
  %23 = load %struct.ref_s*, %struct.ref_s** %pc, align 8
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %pcolor = bitcast %union.v* %value49 to %struct.gs_color_s**
  %24 = load %struct.gs_color_s*, %struct.gs_color_s** %pcolor, align 8
  %25 = load float*, float** %p, align 8
  %call50 = call i32 (%struct.gs_color_s*, float*, ...) bitcast (i32 (...)* @gs_colorrgb to i32 (%struct.gs_color_s*, float*, ...)*)(%struct.gs_color_s* %24, float* %25)
  store i32 %call50, i32* %code, align 4
  %26 = load i32, i32* %code, align 4
  %cmp51 = icmp slt i32 %26, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.48
  %27 = load i32, i32* %code, align 4
  store i32 %27, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** %pc, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %pc, align 8
  %30 = load float*, float** %p, align 8
  %add.ptr55 = getelementptr inbounds float, float* %30, i64 3
  store float* %add.ptr55, float** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx56, i32 0, i32 0
  %intval58 = bitcast %union.v* %value57 to i64*
  %32 = load i64, i64* %intval58, align 8
  %conv59 = trunc i64 %32 to i32
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx60, i32 0, i32 0
  %intval62 = bitcast %union.v* %value61 to i64*
  %34 = load i64, i64* %intval62, align 8
  %conv63 = trunc i64 %34 to i32
  %arraydecay64 = getelementptr inbounds [768 x float], [768 x float]* %colors, i32 0, i32 0
  %35 = load i32, i32* %num_colors, align 4
  %call65 = call i32 @gs_makeimagedevice(%struct.gx_device_s** %new_dev, %struct.gs_matrix_s* %imat, i32 %conv59, i32 %conv63, float* %arraydecay64, i32 %35, i8* (i32, i32, i8*)* @alloc)
  store i32 %call65, i32* %code, align 4
  %36 = load i32, i32* %code, align 4
  %cmp66 = icmp eq i32 %36, 0
  br i1 %cmp66, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %for.end
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %pdevice = bitcast %union.v* %value70 to %struct.gx_device_s**
  store %struct.gx_device_s* %37, %struct.gx_device_s** %pdevice, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -3
  %type_attrs72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 1
  store i16 60, i16* %type_attrs72, align 2
  %40 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -3
  store %struct.ref_s* %add.ptr73, %struct.ref_s** @osp, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %for.end
  %41 = load i32, i32* %code, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.53, %if.then.47, %if.then.37, %if.then.33, %sw.default, %if.then.8, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gs_colorrgb(...) #1

declare i32 @gs_makeimagedevice(%struct.gx_device_s**, %struct.gs_matrix_s*, i32, i32, float*, i32, i8* (i32, i32, i8*)*) #1

; Function Attrs: nounwind uwtable
define i32 @znulldevice(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_nulldevice(%struct.gs_state_s* %0)
  ret i32 0
}

declare void @gs_nulldevice(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zsetdevice(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 1
  %1 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 252
  %cmp = icmp eq i32 %and, 60
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %pdevice = bitcast %union.v* %value to %struct.gx_device_s**
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdevice, align 8
  %call = call i32 @gs_setdevice(%struct.gs_state_s* %2, %struct.gx_device_s* %4)
  store i32 %call, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %7 = load i32, i32* %code, align 4
  store i32 %7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @gs_setdevice(%struct.gs_state_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define void @zdevice_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zdevice_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
