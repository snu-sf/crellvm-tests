; ModuleID = './MultiSource.Benchmarks.MallocBench/91.gs.zht.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_screen_enum_s = type opaque
%struct.gs_point_s = type { float, float }

@gs_screen_enum_sizeof = external global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@igs = external global %struct.gs_state_s*, align 8
@esp = external global %struct.ref_s*, align 8
@estop = external global %struct.ref_s*, align 8
@osp = external global %struct.ref_s*, align 8
@istate = external global %struct.int_state_s, align 8
@ostop = external global %struct.ref_s*, align 8
@zht_op_init.my_defs = internal global [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetscreen }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zsetscreen(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %fa = alloca [2 x float], align 4
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_screen_enum_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %fa, i32 0, i32 0
  %call = call i32 @num_params(%struct.ref_s* %add.ptr, i32 2, float* %arraydecay)
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
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %4 = load i16, i16* %type_attrs, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 255
  %shr = ashr i32 %and, 2
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 10, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end
  store i32 -20, i32* %retval
  br label %return

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %6 = load i16, i16* %type_attrs1, align 2
  %conv2 = zext i16 %6 to i32
  %neg = xor i32 %conv2, -1
  %and3 = and i32 %neg, 3
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.epilog
  store i32 -7, i32* %retval
  br label %return

if.end.5:                                         ; preds = %sw.epilog
  %7 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %call6 = call i8* @alloc(i32 1, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %8 = bitcast i8* %call6 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %8, %struct.gs_screen_enum_s** %penum, align 8
  %9 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8
  %cmp7 = icmp eq %struct.gs_screen_enum_s* %9, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 -25, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %10 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %fa, i32 0, i64 0
  %12 = load float, float* %arrayidx, align 4
  %conv11 = fpext float %12 to double
  %arrayidx12 = getelementptr inbounds [2 x float], [2 x float]* %fa, i32 0, i64 1
  %13 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %13 to double
  %call14 = call i32 @gs_screen_init(%struct.gs_screen_enum_s* %10, %struct.gs_state_s* %11, double %conv11, double %conv13)
  store i32 %call14, i32* %code, align 4
  %14 = load i32, i32* %code, align 4
  %cmp15 = icmp slt i32 %14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  %15 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8
  %16 = bitcast %struct.gs_screen_enum_s* %15 to i8*
  %17 = load i32, i32* @gs_screen_enum_sizeof, align 4
  call void @alloc_free(i8* %16, i32 1, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %18 = load i32, i32* %code, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 3
  %20 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %cmp20 = icmp ugt %struct.ref_s* %add.ptr19, %20
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 -5, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %index = bitcast %union.v* %value to i16*
  store i16 0, i16* %index, align 2
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 33, i16* %type_attrs24, align 2
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %incdec.ptr25, %struct.ref_s** @esp, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %26 = bitcast %struct.ref_s* %incdec.ptr25 to i8*
  %27 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 1
  store %struct.ref_s* %incdec.ptr26, %struct.ref_s** @esp, align 8
  %29 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8
  %30 = bitcast %struct.gs_screen_enum_s* %29 to i8*
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %bytes = bitcast %union.v* %value27 to i8**
  store i8* %30, i8** %bytes, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 52, i16* %type_attrs28, align 2
  %33 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %conv29 = trunc i32 %33 to i16
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 2
  store i16 %conv29, i16* %size, align 2
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -3
  store %struct.ref_s* %add.ptr30, %struct.ref_s** @osp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -3
  store %struct.ref_s* %add.ptr31, %struct.ref_s** %op.addr, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call32 = call i32 @screen_sample(%struct.ref_s* %37)
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.17, %if.then.9, %if.then.4, %sw.default, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @num_params(%struct.ref_s*, i32, float*) #1

declare i8* @alloc(i32, i32, i8*) #1

declare i32 @gs_screen_init(%struct.gs_screen_enum_s*, %struct.gs_state_s*, double, double) #1

declare void @alloc_free(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @screen_sample(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_screen_enum_s*, align 8
  %pt = alloca %struct.gs_point_s, align 4
  %code = alloca i32, align 4
  %proc = alloca %struct.ref_s, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %bytes = bitcast %union.v* %value to i8**
  %1 = load i8*, i8** %bytes, align 8
  %2 = bitcast i8* %1 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %2, %struct.gs_screen_enum_s** %penum, align 8
  %3 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %penum, align 8
  %call = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* %3, %struct.gs_point_s* %pt)
  store i32 %call, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %code, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %8 = bitcast %struct.ref_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1) to i8*), i8* %8, i64 16, i32 8, i1 false)
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -3
  store %struct.ref_s* %add.ptr, %struct.ref_s** @esp, align 8
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 2
  store %struct.ref_s* %add.ptr4, %struct.ref_s** %op.addr, align 8
  store %struct.ref_s* %add.ptr4, %struct.ref_s** @osp, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %cmp5 = icmp ugt %struct.ref_s* %add.ptr4, %11
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  store %struct.ref_s* %add.ptr7, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 0
  %13 = load float, float* %x, align 4
  %14 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr9, i32 0, i32 0
  %realval = bitcast %union.v* %value10 to float*
  store float %13, float* %realval, align 4
  %15 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %add.ptr11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %type_attrs = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr11, i32 0, i32 1
  store i16 44, i16* %type_attrs, align 2
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %pt, i32 0, i32 1
  %16 = load float, float* %y, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %realval13 = bitcast %union.v* %value12 to float*
  store float %16, float* %realval13, align 4
  %18 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %type_attrs14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  store i16 44, i16* %type_attrs14, align 2
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %arrayidx15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %20 = bitcast %struct.ref_s* %proc to i8*
  %21 = bitcast %struct.ref_s* %arrayidx15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** @esp, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %opproc = bitcast %union.v* %value16 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @set_screen_continue, i32 (%struct.ref_s*)** %opproc, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %type_attrs17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 37, i16* %type_attrs17, align 2
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %size = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 2
  store i16 0, i16* %size, align 2
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %incdec.ptr18, %struct.ref_s** @esp, align 8
  %27 = bitcast %struct.ref_s* %incdec.ptr18 to i8*
  %28 = bitcast %struct.ref_s* %proc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.2, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i32 @set_screen_continue(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %value = alloca float, align 4
  %code = alloca i32, align 4
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call = call i32 @num_params(%struct.ref_s* %0, i32 1, float* %value)
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
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %bytes = bitcast %union.v* %value1 to i8**
  %4 = load i8*, i8** %bytes, align 8
  %5 = bitcast i8* %4 to %struct.gs_screen_enum_s*
  %6 = load float, float* %value, align 4
  %conv = fpext float %6 to double
  %call2 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* %5, double %conv)
  store i32 %call2, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %code, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %op.addr, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8
  %call7 = call i32 @screen_sample(%struct.ref_s* %11)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @gs_screen_next(%struct.gs_screen_enum_s*, double) #1

; Function Attrs: nounwind uwtable
define void @zht_op_init() #0 {
entry:
  %call = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* getelementptr inbounds ([2 x %struct.op_def], [2 x %struct.op_def]* @zht_op_init.my_defs, i32 0, i32 0))
  ret void
}

declare i32 @z_op_init(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
