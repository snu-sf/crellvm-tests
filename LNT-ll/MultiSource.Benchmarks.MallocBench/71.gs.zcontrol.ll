; ModuleID = './MultiSource.Benchmarks.MallocBench/71.gs.zcontrol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp_nargs = external global [6 x %struct.ref_s*], align 16
@esp = external global %struct.ref_s*, align 8
@estop = external global %struct.ref_s*, align 8
@osp = external global %struct.ref_s*, align 8
@ostop = external global %struct.ref_s*, align 8
@estack = external global [0 x %struct.ref_s], align 8
@zcontrol_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcountexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zexec }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zexit }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zif }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zifelse }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zfor }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zloop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zquit }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zrepeat }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zstop }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zstopped }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0execstack\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0quit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zexec(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %7 = bitcast %struct.ref_s* %5 to i8*
  %8 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %add.ptr4, %struct.ref_s** @osp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @zif(%struct.ref_s* %op) #0 {
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
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %3 = load i16, i16* %index, align 2
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  %5 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp4 = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store i32 -5, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %9 = bitcast %struct.ref_s* %7 to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -2
  store %struct.ref_s* %add.ptr9, %struct.ref_s** @osp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @zifelse(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
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
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp2 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx6, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %6 = load i16, i16* %index, align 2
  %tobool = icmp ne i16 %6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 0
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %9 = bitcast %struct.ref_s* %arrayidx8 to i8*
  %10 = bitcast %struct.ref_s* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %13 = bitcast %struct.ref_s* %11 to i8*
  %14 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -3
  store %struct.ref_s* %add.ptr11, %struct.ref_s** @osp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @zfor(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %call = call i32 @num_params(%struct.ref_s* %add.ptr, i32 3, float* null)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %code, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 7
  %4 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp2 = icmp ugt %struct.ref_s* %add.ptr1, %4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 2, i16* %index, align 2
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 33, i16* %type_attrs, align 2
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 1
  store %struct.ref_s* %incdec.ptr5, %struct.ref_s** @esp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -3
  %10 = bitcast %struct.ref_s* %incdec.ptr5 to i8*
  %11 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 1
  store %struct.ref_s* %incdec.ptr6, %struct.ref_s** @esp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -2
  %14 = bitcast %struct.ref_s* %incdec.ptr6 to i8*
  %15 = bitcast %struct.ref_s* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %incdec.ptr8, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %18 = bitcast %struct.ref_s* %incdec.ptr8 to i8*
  %19 = bitcast %struct.ref_s* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 1
  store %struct.ref_s* %incdec.ptr10, %struct.ref_s** @esp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %22 = bitcast %struct.ref_s* %incdec.ptr10 to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -4
  store %struct.ref_s* %add.ptr11, %struct.ref_s** @osp, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -4
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op.addr, align 8
  %26 = load i32, i32* %code, align 4
  %cmp13 = icmp eq i32 %26, 7
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.4
  %27 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call15 = call i32 @for_int_continue(%struct.ref_s* %27)
  store i32 %call15, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %28 = load i32, i32* %code, align 4
  %and = and i32 %28, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.else
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -3
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 0
  %intval = bitcast %union.v* %value18 to i64*
  %30 = load i64, i64* %intval, align 8
  %conv = sitofp i64 %30 to float
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -3
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr19, i32 0, i32 0
  %realval = bitcast %union.v* %value20 to float*
  store float %conv, float* %realval, align 4
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -3
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  store i16 44, i16* %type_attrs22, align 2
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.else
  %33 = load i32, i32* %code, align 4
  %and24 = and i32 %33, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.23
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 0
  %intval29 = bitcast %union.v* %value28 to i64*
  %35 = load i64, i64* %intval29, align 8
  %conv30 = sitofp i64 %35 to float
  %36 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %realval33 = bitcast %union.v* %value32 to float*
  store float %conv30, float* %realval33, align 4
  %37 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -2
  %type_attrs35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 1
  store i16 44, i16* %type_attrs35, align 2
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.26, %if.end.23
  %38 = load i32, i32* %code, align 4
  %and37 = and i32 %38, 4
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.end.36
  %39 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 0
  %intval42 = bitcast %union.v* %value41 to i64*
  %40 = load i64, i64* %intval42, align 8
  %conv43 = sitofp i64 %40 to float
  %41 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr44, i32 0, i32 0
  %realval46 = bitcast %union.v* %value45 to float*
  store float %conv43, float* %realval46, align 4
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  %type_attrs48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr47, i32 0, i32 1
  store i16 44, i16* %type_attrs48, align 2
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %if.end.36
  %43 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call50 = call i32 @for_real_continue(%struct.ref_s* %43)
  store i32 %call50, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.14, %if.then.3, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @num_params(%struct.ref_s*, i32, float*) #2

; Function Attrs: nounwind uwtable
define i32 @for_int_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %proc = alloca %struct.ref_s, align 8
  %var = alloca i64, align 8
  %incr = alloca i64, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %1 = load i64, i64* %intval, align 8
  store i64 %1, i64* %var, align 8
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 0
  %intval3 = bitcast %union.v* %value2 to i64*
  %3 = load i64, i64* %intval3, align 8
  store i64 %3, i64* %incr, align 8
  %4 = load i64, i64* %incr, align 8
  %cmp = icmp sge i64 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %var, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %intval6 = bitcast %union.v* %value5 to i64*
  %7 = load i64, i64* %intval6, align 8
  %cmp7 = icmp sgt i64 %5, %7
  br i1 %cmp7, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %8 = load i64, i64* %var, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i32 0, i32 0
  %intval10 = bitcast %union.v* %value9 to i64*
  %10 = load i64, i64* %intval10, align 8
  %cmp11 = icmp slt i64 %8, %10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr12, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp13 = icmp ugt %struct.ref_s* %add.ptr12, %13
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr15, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %17 = bitcast %struct.ref_s* %15 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load i64, i64* %var, align 8
  %20 = load i64, i64* %incr, align 8
  %add = add nsw i64 %19, %20
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %intval20 = bitcast %union.v* %value19 to i64*
  store i64 %add, i64* %intval20, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = bitcast %struct.ref_s* %proc to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %opproc = bitcast %union.v* %value21 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_int_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 1
  store %struct.ref_s* %incdec.ptr22, %struct.ref_s** @esp, align 8
  %30 = bitcast %struct.ref_s* %incdec.ptr22 to i8*
  %31 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @for_real_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %proc = alloca %struct.ref_s, align 8
  %var = alloca float, align 4
  %incr = alloca float, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %realval = bitcast %union.v* %value to float*
  %1 = load float, float* %realval, align 4
  store float %1, float* %var, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %value2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx1, i32 0, i32 0
  %realval3 = bitcast %union.v* %value2 to float*
  %3 = load float, float* %realval3, align 4
  store float %3, float* %incr, align 4
  %4 = load float, float* %incr, align 4
  %cmp = fcmp oge float %4, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load float, float* %var, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx4, i32 0, i32 0
  %realval6 = bitcast %union.v* %value5 to float*
  %7 = load float, float* %realval6, align 4
  %cmp7 = fcmp ogt float %5, %7
  br i1 %cmp7, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  %8 = load float, float* %var, align 4
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i32 0, i32 0
  %realval10 = bitcast %union.v* %value9 to float*
  %10 = load float, float* %realval10, align 4
  %cmp11 = fcmp olt float %8, %10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -5
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 1
  store %struct.ref_s* %add.ptr12, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr12, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp13 = icmp ugt %struct.ref_s* %add.ptr12, %13
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr15, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %17 = bitcast %struct.ref_s* %15 to i8*
  %18 = bitcast %struct.ref_s* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = load float, float* %var, align 4
  %20 = load float, float* %incr, align 4
  %add = fadd float %19, %20
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -3
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx18, i32 0, i32 0
  %realval20 = bitcast %union.v* %value19 to float*
  store float %add, float* %realval20, align 4
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = bitcast %struct.ref_s* %proc to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %opproc = bitcast %union.v* %value21 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_real_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 1
  store %struct.ref_s* %incdec.ptr22, %struct.ref_s** @esp, align 8
  %30 = bitcast %struct.ref_s* %incdec.ptr22 to i8*
  %31 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @zrepeat(%struct.ref_s* %op) #0 {
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
  %cmp = icmp eq i32 %and, 20
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %3 = load i64, i64* %intval, align 8
  %cmp3 = icmp slt i64 %3, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 5
  %5 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp7 = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -5, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %index = bitcast %union.v* %value11 to i16*
  store i16 2, i16* %index, align 2
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  store i16 33, i16* %type_attrs12, align 2
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 1
  store %struct.ref_s* %incdec.ptr13, %struct.ref_s** @esp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %11 = bitcast %struct.ref_s* %incdec.ptr13 to i8*
  %12 = bitcast %struct.ref_s* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 1
  store %struct.ref_s* %incdec.ptr15, %struct.ref_s** @esp, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %15 = bitcast %struct.ref_s* %incdec.ptr15 to i8*
  %16 = bitcast %struct.ref_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  store %struct.ref_s* %add.ptr16, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %call = call i32 @repeat_continue(%struct.ref_s* %add.ptr17)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @repeat_continue(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %proc = alloca %struct.ref_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %1 = bitcast %struct.ref_s* %proc to i8*
  %2 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  %4 = load i64, i64* %intval, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %intval, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %opproc = bitcast %union.v* %value1 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @repeat_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 1
  store %struct.ref_s* %incdec.ptr2, %struct.ref_s** @esp, align 8
  %10 = bitcast %struct.ref_s* %incdec.ptr2 to i8*
  %11 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @zloop(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 4
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 2, i16* %index, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 33, i16* %type_attrs, align 2
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 1
  store %struct.ref_s* %incdec.ptr4, %struct.ref_s** @esp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %9 = bitcast %struct.ref_s* %incdec.ptr4 to i8*
  %10 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 8, i1 false)
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  store %struct.ref_s* %add.ptr5, %struct.ref_s** @osp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  %call = call i32 @loop_continue(%struct.ref_s* %add.ptr6)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @loop_continue(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %proc = alloca %struct.ref_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %1 = bitcast %struct.ref_s* %proc to i8*
  %2 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %opproc = bitcast %union.v* %value to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @loop_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 37, i16* %type_attrs, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 1
  store %struct.ref_s* %incdec.ptr1, %struct.ref_s** @esp, align 8
  %8 = bitcast %struct.ref_s* %incdec.ptr1 to i8*
  %9 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @zexit(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %0, %struct.ref_s** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %cmp = icmp uge %struct.ref_s* %1, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0)
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %5 = load i16, i16* %index, align 2
  %conv3 = zext i16 %5 to i32
  switch i32 %conv3, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  store %struct.ref_s* %6, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.then
  store i32 -8, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 -1
  store %struct.ref_s* %incdec.ptr5, %struct.ref_s** %ep, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -8, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.4, %sw.bb
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @zstop(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %ep = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %0, %struct.ref_s** %ep, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %entry
  %1 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %cmp = icmp uge %struct.ref_s* %1, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0)
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 1
  %3 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  %cmp1 = icmp eq i32 %shr, 8
  br i1 %cmp1, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  %5 = load i16, i16* %index, align 2
  %conv3 = zext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 3
  br i1 %cmp4, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  store %struct.ref_s* %add.ptr6, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr6, %struct.ref_s** @osp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp7 = icmp ugt %struct.ref_s* %add.ptr6, %8
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %add.ptr10, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %index12 = bitcast %union.v* %value11 to i16*
  store i16 1, i16* %index12, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 4, i16* %type_attrs13, align 2
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %while.body
  %12 = load %struct.ref_s*, %struct.ref_s** %ep, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %ep, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -8, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end, %if.then.9
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zstopped(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %1 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i32 0, i64 0), align 8
  %cmp = icmp ult %struct.ref_s* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 3
  %3 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp1 = icmp ugt %struct.ref_s* %add.ptr, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -5, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 3, i16* %index, align 2
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  store i16 33, i16* %type_attrs, align 2
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 1
  store %struct.ref_s* %incdec.ptr4, %struct.ref_s** @esp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %index6 = bitcast %union.v* %value5 to i16*
  store i16 0, i16* %index6, align 2
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  store i16 4, i16* %type_attrs7, align 2
  %10 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 1
  store %struct.ref_s* %incdec.ptr8, %struct.ref_s** @esp, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %12 = bitcast %struct.ref_s* %incdec.ptr8 to i8*
  %13 = bitcast %struct.ref_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr9, %struct.ref_s** @osp, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @zcountexecstack(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
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
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %4 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %intval = bitcast %union.v* %value to i64*
  store i64 %add, i64* %intval, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 20, i16* %type_attrs, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @zexecstack(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %depth = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %add = add nsw i64 %sub.ptr.div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %depth, align 4
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 1
  %2 = load i16, i16* %type_attrs, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 252
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs3, align 2
  %conv4 = zext i16 %4 to i32
  %neg = xor i32 %conv4, -1
  %and5 = and i32 %neg, 256
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %5 = load i32, i32* %depth, align 4
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv8 = zext i16 %7 to i32
  %cmp9 = icmp sgt i32 %5, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i32 -15, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %8 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp13 = icmp uge %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0), %8
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -5, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %9 = load i32, i32* %depth, align 4
  %conv17 = trunc i32 %9 to i16
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 2
  store i16 %conv17, i16* %size18, align 2
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %12 = load i16, i16* %type_attrs19, align 2
  %conv20 = zext i16 %12 to i32
  %or = or i32 %conv20, 32768
  %conv21 = trunc i32 %or to i16
  store i16 %conv21, i16* %type_attrs19, align 2
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %opproc = bitcast %union.v* %value to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @continue_execstack, i32 (%struct.ref_s*)** %opproc, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  store i16 37, i16* %type_attrs22, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 2
  store i16 0, i16* %size23, align 2
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.11, %if.then.6, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @continue_execstack(%struct.ref_s* %op) #0 {
entry:
  %op.addr = alloca %struct.ref_s*, align 8
  %depth = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 2
  %1 = load i16, i16* %size, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %depth, align 4
  %2 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %3 = load %struct.ref_s*, %struct.ref_s** %refs, align 8
  %4 = load i32, i32* %depth, align 4
  %call = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* %3, %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i32 0, i32 0), i32 %4)
  ret i32 0
}

declare i32 @refcpy(...) #2

; Function Attrs: nounwind uwtable
define i32 @zquit(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %call = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 0)
  %0 = load i32, i32* %retval
  ret i32 %0
}

declare i32 @gs_exit(...) #2

; Function Attrs: nounwind uwtable
define void @zcontrol_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zcontrol_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
