; ModuleID = './MultiSource.Benchmarks.MallocBench/60.gs.zpath2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
%struct.gs_path_enum_s = type opaque

@igs = external global %struct.gs_state_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@osp_nargs = external global [6 x %struct.ref_s*], align 16
@esp = external global %struct.ref_s*, align 8
@estop = external global %struct.ref_s*, align 8
@gs_path_enum_sizeof = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"pathforall\00", align 1
@zpath2_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zclippath }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zeoclip }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zflattenpath }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zinitclip }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zpathbbox }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zpathforall }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zreversepath }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zstrokepath }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"0clip\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0clippath\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0eoclip\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0flattenpath\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0initclip\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0pathbbox\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4pathforall\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0reversepath\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0strokepath\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zflattenpath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_flattenpath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_flattenpath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zreversepath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_reversepath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_reversepath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zstrokepath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_strokepath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_strokepath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zclippath(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_clippath(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_clippath(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zpathbbox(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %box = alloca %struct.gs_rect_s, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_pathbbox(%struct.gs_state_s* %0, %struct.gs_rect_s* %box)
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
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %4
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -4
  store %struct.ref_s* %add.ptr3, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %6 = load float, float* %x, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr5, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %6, float* %realval, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -3
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr6, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %p7 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p7, i32 0, i32 1
  %9 = load float, float* %y, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -2
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr8, i32 0, i32 0
  %realval10 = bitcast %union.v* %value9 to float*
  store float %9, float* %realval10, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 1
  store i16 44, i16* %type_attrs12, align 2
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %12 = load float, float* %x13, align 4
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr14, i32 0, i32 0
  %realval16 = bitcast %union.v* %value15 to float*
  store float %12, float* %realval16, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %type_attrs18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 1
  store i16 44, i16* %type_attrs18, align 2
  %q19 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %box, i32 0, i32 1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q19, i32 0, i32 1
  %15 = load float, float* %y20, align 4
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %realval22 = bitcast %union.v* %value21 to float*
  store float %15, float* %realval22, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 44, i16* %type_attrs23, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_pathbbox(%struct.gs_state_s*, %struct.gs_rect_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zpathforall(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_path_enum_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 3), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 8
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* @gs_path_enum_sizeof, align 4
  %call = call i8* @alloc(i32 1, i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %5 = bitcast i8* %call to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %5, %struct.gs_path_enum_s** %penum, align 8
  %cmp4 = icmp eq %struct.gs_path_enum_s* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 -25, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %6 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  call void @gs_path_enum_init(%struct.gs_path_enum_s* %6, %struct.gs_state_s* %7)
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 2, i16* %index, align 2
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  store i16 33, i16* %type_attrs, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 1
  store %struct.ref_s* %incdec.ptr7, %struct.ref_s** @esp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  %13 = bitcast %struct.ref_s* %incdec.ptr7 to i8*
  %14 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %incdec.ptr8, %struct.ref_s** @esp, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %17 = bitcast %struct.ref_s* %incdec.ptr8 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %incdec.ptr10, %struct.ref_s** @esp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %21 = bitcast %struct.ref_s* %incdec.ptr10 to i8*
  %22 = bitcast %struct.ref_s* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 1
  store %struct.ref_s* %incdec.ptr12, %struct.ref_s** @esp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %25 = bitcast %struct.ref_s* %incdec.ptr12 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 1
  store %struct.ref_s* %incdec.ptr13, %struct.ref_s** @esp, align 8
  %28 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8
  %29 = bitcast %struct.gs_path_enum_s* %28 to i8*
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %bytes = bitcast %union.v* %value14 to i8**
  store i8* %29, i8** %bytes, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  store i16 20, i16* %type_attrs15, align 2
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -4
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -4
  store %struct.ref_s* %add.ptr17, %struct.ref_s** %op.addr, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call18 = call i32 @path_continue(%struct.ref_s* %34)
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then.2, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i8* @alloc(i32, i32, i8*) #1

declare void @gs_path_enum_init(%struct.gs_path_enum_s*, %struct.gs_state_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @path_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_path_enum_s*, align 8
  %ppts = alloca [3 x %struct.gs_point_s], align 16
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_path_enum_s*
  store %struct.gs_path_enum_s* %2, %struct.gs_path_enum_s** %penum, align 8
  %3 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  %call = call i32 @gs_path_enum_next(%struct.gs_path_enum_s* %3, %struct.gs_point_s* %arraydecay)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.gs_path_enum_s*, %struct.gs_path_enum_s** %penum, align 8
  %6 = bitcast %struct.gs_path_enum_s* %5 to i8*
  %7 = load i32, i32* @gs_path_enum_sizeof, align 4
  call void @alloc_free(i8* %6, i32 1, i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -6
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %9 = load i32, i32* %code, align 4
  store i32 %9, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 2
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -4
  %12 = bitcast %struct.ref_s* %arrayidx to i8*
  %13 = bitcast %struct.ref_s* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %arraydecay3 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call4 = call i32 @pf_push(%struct.gs_point_s* %arraydecay3, i32 1, %struct.ref_s* %14)
  store i32 %call4, i32* %code, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %17 = bitcast %struct.ref_s* %arrayidx6 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %arraydecay8 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call9 = call i32 @pf_push(%struct.gs_point_s* %arraydecay8, i32 1, %struct.ref_s* %19)
  store i32 %call9, i32* %code, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 2
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %22 = bitcast %struct.ref_s* %arrayidx11 to i8*
  %23 = bitcast %struct.ref_s* %arrayidx12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %arraydecay13 = getelementptr inbounds [3 x %struct.gs_point_s], [3 x %struct.gs_point_s]* %ppts, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call14 = call i32 @pf_push(%struct.gs_point_s* %arraydecay13, i32 3, %struct.ref_s* %24)
  store i32 %call14, i32* %code, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %27 = bitcast %struct.ref_s* %arrayidx16 to i8*
  %28 = bitcast %struct.ref_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  store i32 0, i32* %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.15, %sw.bb.10, %sw.bb.5, %sw.bb.1
  %29 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %30 = load i32, i32* %code, align 4
  store i32 %30, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %opproc = bitcast %union.v* %value18 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @path_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 1
  store %struct.ref_s* %incdec.ptr19, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then, %sw.default, %sw.bb
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gs_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_point_s*) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @pf_push(%struct.gs_point_s* %ppts, i32 %n, %struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %ppts.addr = alloca %struct.gs_point_s*, align 8
  %n.addr = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.gs_point_s* %ppts, %struct.gs_point_s** %ppts.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 2
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -2
  store %struct.ref_s* %add.ptr1, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 0
  %5 = load float, float* %x, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr2, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  store float %5, float* %realval, align 4
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr3, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i32 0, i32 1
  %9 = load float, float* %y, align 4
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %realval5 = bitcast %union.v* %value4 to float*
  store float %9, float* %realval5, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 44, i16* %type_attrs6, align 2
  %12 = load %struct.gs_point_s*, %struct.gs_point_s** %ppts.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %12, i32 1
  store %struct.gs_point_s* %incdec.ptr, %struct.gs_point_s** %ppts.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zinitclip(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_initclip(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_initclip(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zclip(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_clip(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_clip(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define i32 @zeoclip(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %call = call i32 @gs_eoclip(%struct.gs_state_s* %0)
  ret i32 %call
}

declare i32 @gs_eoclip(%struct.gs_state_s*) #1

; Function Attrs: nounwind uwtable
define void @zpath2_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zpath2_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
