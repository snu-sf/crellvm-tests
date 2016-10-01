; ModuleID = './MultiSource.Benchmarks.MiBench/21.consumer-lame.timestatus.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ts_times = type { float, float, float, float }

@ts_real_time.initial_time = internal global i64 0, align 8
@ts_process_time.initial_time = internal global i64 0, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [75 x i8] c"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0D%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d \00", align 1

; Function Attrs: nounwind uwtable
define float @ts_real_time(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8, !tbaa !1
  %0 = bitcast i64* %current_time to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call i64 @time(i64* %current_time) #1
  %1 = load i64, i64* %frame.addr, align 8, !tbaa !1
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %current_time, align 8, !tbaa !1
  store i64 %2, i64* @ts_real_time.initial_time, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %current_time, align 8, !tbaa !1
  %4 = load i64, i64* @ts_real_time.initial_time, align 8, !tbaa !1
  %call1 = call double @difftime(i64 %3, i64 %4) #5
  %conv = fptrunc double %call1 to float
  %5 = bitcast i64* %current_time to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret float %conv
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define float @ts_process_time(i64 %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i64 %frame, i64* %frame.addr, align 8, !tbaa !1
  %0 = bitcast i64* %current_time to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call i64 @clock() #1
  store i64 %call, i64* %current_time, align 8, !tbaa !1
  %1 = load i64, i64* %frame.addr, align 8, !tbaa !1
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %current_time, align 8, !tbaa !1
  store i64 %2, i64* @ts_process_time.initial_time, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %current_time, align 8, !tbaa !1
  %4 = load i64, i64* @ts_process_time.initial_time, align 8, !tbaa !1
  %sub = sub nsw i64 %3, %4
  %conv = sitofp i64 %sub to float
  %div = fdiv float %conv, 1.000000e+06
  %5 = bitcast i64* %current_time to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret float %div
}

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: nounwind uwtable
define void @ts_calc_times(%struct.ts_times* %time, i32 %samp_rate, i64 %frame, i64 %frames, i32 %framesize) #0 {
entry:
  %time.addr = alloca %struct.ts_times*, align 8
  %samp_rate.addr = alloca i32, align 4
  %frame.addr = alloca i64, align 8
  %frames.addr = alloca i64, align 8
  %framesize.addr = alloca i32, align 4
  store %struct.ts_times* %time, %struct.ts_times** %time.addr, align 8, !tbaa !5
  store i32 %samp_rate, i32* %samp_rate.addr, align 4, !tbaa !7
  store i64 %frame, i64* %frame.addr, align 8, !tbaa !1
  store i64 %frames, i64* %frames.addr, align 8, !tbaa !1
  store i32 %framesize, i32* %framesize.addr, align 4, !tbaa !7
  %0 = load i64, i64* %frame.addr, align 8, !tbaa !1
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %1 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %so_far = getelementptr inbounds %struct.ts_times, %struct.ts_times* %1, i32 0, i32 0
  %2 = load float, float* %so_far, align 4, !tbaa !9
  %3 = load i64, i64* %frames.addr, align 8, !tbaa !1
  %conv = sitofp i64 %3 to float
  %mul = fmul float %2, %conv
  %4 = load i64, i64* %frame.addr, align 8, !tbaa !1
  %conv1 = sitofp i64 %4 to float
  %div = fdiv float %mul, %conv1
  %5 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %estimated = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i32 0, i32 1
  store float %div, float* %estimated, align 4, !tbaa !12
  %6 = load i32, i32* %samp_rate.addr, align 4, !tbaa !7
  %conv2 = sitofp i32 %6 to float
  %7 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %estimated3 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %7, i32 0, i32 1
  %8 = load float, float* %estimated3, align 4, !tbaa !12
  %mul4 = fmul float %conv2, %8
  %cmp5 = fcmp ogt float %mul4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load i64, i64* %frames.addr, align 8, !tbaa !1
  %10 = load i32, i32* %framesize.addr, align 4, !tbaa !7
  %conv8 = sext i32 %10 to i64
  %mul9 = mul nsw i64 %9, %conv8
  %conv10 = sitofp i64 %mul9 to float
  %11 = load i32, i32* %samp_rate.addr, align 4, !tbaa !7
  %conv11 = sitofp i32 %11 to float
  %12 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %estimated12 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %12, i32 0, i32 1
  %13 = load float, float* %estimated12, align 4, !tbaa !12
  %mul13 = fmul float %conv11, %13
  %div14 = fdiv float %conv10, %mul13
  %14 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %speed = getelementptr inbounds %struct.ts_times, %struct.ts_times* %14, i32 0, i32 2
  store float %div14, float* %speed, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %speed15 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %15, i32 0, i32 2
  store float 0.000000e+00, float* %speed15, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %16 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %estimated16 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %16, i32 0, i32 1
  %17 = load float, float* %estimated16, align 4, !tbaa !12
  %18 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %so_far17 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %18, i32 0, i32 0
  %19 = load float, float* %so_far17, align 4, !tbaa !9
  %sub = fsub float %17, %19
  %20 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %eta = getelementptr inbounds %struct.ts_times, %struct.ts_times* %20, i32 0, i32 3
  store float %sub, float* %eta, align 4, !tbaa !14
  br label %if.end.22

if.else.18:                                       ; preds = %entry
  %21 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %estimated19 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %21, i32 0, i32 1
  store float 0.000000e+00, float* %estimated19, align 4, !tbaa !12
  %22 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %speed20 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %22, i32 0, i32 2
  store float 0.000000e+00, float* %speed20, align 4, !tbaa !13
  %23 = load %struct.ts_times*, %struct.ts_times** %time.addr, align 8, !tbaa !5
  %eta21 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %23, i32 0, i32 3
  store float 0.000000e+00, float* %eta21, align 4, !tbaa !14
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @timestatus(i32 %samp_rate, i64 %frameNum, i64 %totalframes, i32 %framesize) #0 {
entry:
  %samp_rate.addr = alloca i32, align 4
  %frameNum.addr = alloca i64, align 8
  %totalframes.addr = alloca i64, align 8
  %framesize.addr = alloca i32, align 4
  %real_time = alloca %struct.ts_times, align 4
  %process_time = alloca %struct.ts_times, align 4
  %percent = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %samp_rate, i32* %samp_rate.addr, align 4, !tbaa !7
  store i64 %frameNum, i64* %frameNum.addr, align 8, !tbaa !1
  store i64 %totalframes, i64* %totalframes.addr, align 8, !tbaa !1
  store i32 %framesize, i32* %framesize.addr, align 4, !tbaa !7
  %0 = bitcast %struct.ts_times* %real_time to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ts_times* %process_time to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %percent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %call = call float @ts_real_time(i64 %3)
  %so_far = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 0
  store float %call, float* %so_far, align 4, !tbaa !9
  %4 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %call1 = call float @ts_process_time(i64 %4)
  %so_far2 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 0
  store float %call1, float* %so_far2, align 4, !tbaa !9
  %5 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %samp_rate.addr, align 4, !tbaa !7
  %8 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %9 = load i64, i64* %totalframes.addr, align 8, !tbaa !1
  %10 = load i32, i32* %framesize.addr, align 4, !tbaa !7
  call void @ts_calc_times(%struct.ts_times* %real_time, i32 %7, i64 %8, i64 %9, i32 %10)
  %11 = load i32, i32* %samp_rate.addr, align 4, !tbaa !7
  %12 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %13 = load i64, i64* %totalframes.addr, align 8, !tbaa !1
  %14 = load i32, i32* %framesize.addr, align 4, !tbaa !7
  call void @ts_calc_times(%struct.ts_times* %process_time, i32 %11, i64 %12, i64 %13, i32 %14)
  %15 = load i64, i64* %totalframes.addr, align 8, !tbaa !1
  %cmp4 = icmp sgt i64 %15, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %16 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %conv = sitofp i64 %16 to double
  %mul = fmul double 1.000000e+02, %conv
  %17 = load i64, i64* %totalframes.addr, align 8, !tbaa !1
  %sub = sub nsw i64 %17, 1
  %conv6 = sitofp i64 %sub to double
  %div = fdiv double %mul, %conv6
  %conv7 = fptosi double %div to i32
  store i32 %conv7, i32* %percent, align 4, !tbaa !7
  br label %if.end.8

if.else:                                          ; preds = %if.end
  store i32 100, i32* %percent, align 4, !tbaa !7
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %19 = load i64, i64* %frameNum.addr, align 8, !tbaa !1
  %20 = load i64, i64* %totalframes.addr, align 8, !tbaa !1
  %sub9 = sub nsw i64 %20, 1
  %21 = load i32, i32* %percent, align 4, !tbaa !7
  %so_far10 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 0
  %22 = load float, float* %so_far10, align 4, !tbaa !9
  %conv11 = fpext float %22 to double
  %add = fadd double %conv11, 5.000000e-01
  %conv12 = fptosi double %add to i64
  %div13 = sdiv i64 %conv12, 3600
  %conv14 = trunc i64 %div13 to i32
  %so_far15 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 0
  %23 = load float, float* %so_far15, align 4, !tbaa !9
  %conv16 = fpext float %23 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %div18 = fdiv double %add17, 6.000000e+01
  %conv19 = fptosi double %div18 to i64
  %rem = srem i64 %conv19, 60
  %conv20 = trunc i64 %rem to i32
  %so_far21 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 0
  %24 = load float, float* %so_far21, align 4, !tbaa !9
  %conv22 = fpext float %24 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %conv24 = fptosi double %add23 to i64
  %rem25 = srem i64 %conv24, 60
  %conv26 = trunc i64 %rem25 to i32
  %estimated = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 1
  %25 = load float, float* %estimated, align 4, !tbaa !12
  %conv27 = fpext float %25 to double
  %add28 = fadd double %conv27, 5.000000e-01
  %conv29 = fptosi double %add28 to i64
  %div30 = sdiv i64 %conv29, 3600
  %conv31 = trunc i64 %div30 to i32
  %estimated32 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 1
  %26 = load float, float* %estimated32, align 4, !tbaa !12
  %conv33 = fpext float %26 to double
  %add34 = fadd double %conv33, 5.000000e-01
  %div35 = fdiv double %add34, 6.000000e+01
  %conv36 = fptosi double %div35 to i64
  %rem37 = srem i64 %conv36, 60
  %conv38 = trunc i64 %rem37 to i32
  %estimated39 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 1
  %27 = load float, float* %estimated39, align 4, !tbaa !12
  %conv40 = fpext float %27 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %conv42 = fptosi double %add41 to i64
  %rem43 = srem i64 %conv42, 60
  %conv44 = trunc i64 %rem43 to i32
  %so_far45 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 0
  %28 = load float, float* %so_far45, align 4, !tbaa !9
  %conv46 = fpext float %28 to double
  %add47 = fadd double %conv46, 5.000000e-01
  %conv48 = fptosi double %add47 to i64
  %div49 = sdiv i64 %conv48, 3600
  %conv50 = trunc i64 %div49 to i32
  %so_far51 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 0
  %29 = load float, float* %so_far51, align 4, !tbaa !9
  %conv52 = fpext float %29 to double
  %add53 = fadd double %conv52, 5.000000e-01
  %div54 = fdiv double %add53, 6.000000e+01
  %conv55 = fptosi double %div54 to i64
  %rem56 = srem i64 %conv55, 60
  %conv57 = trunc i64 %rem56 to i32
  %so_far58 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 0
  %30 = load float, float* %so_far58, align 4, !tbaa !9
  %conv59 = fpext float %30 to double
  %add60 = fadd double %conv59, 5.000000e-01
  %conv61 = fptosi double %add60 to i64
  %rem62 = srem i64 %conv61, 60
  %conv63 = trunc i64 %rem62 to i32
  %estimated64 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 1
  %31 = load float, float* %estimated64, align 4, !tbaa !12
  %conv65 = fpext float %31 to double
  %add66 = fadd double %conv65, 5.000000e-01
  %conv67 = fptosi double %add66 to i64
  %div68 = sdiv i64 %conv67, 3600
  %conv69 = trunc i64 %div68 to i32
  %estimated70 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 1
  %32 = load float, float* %estimated70, align 4, !tbaa !12
  %conv71 = fpext float %32 to double
  %add72 = fadd double %conv71, 5.000000e-01
  %div73 = fdiv double %add72, 6.000000e+01
  %conv74 = fptosi double %div73 to i64
  %rem75 = srem i64 %conv74, 60
  %conv76 = trunc i64 %rem75 to i32
  %estimated77 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 1
  %33 = load float, float* %estimated77, align 4, !tbaa !12
  %conv78 = fpext float %33 to double
  %add79 = fadd double %conv78, 5.000000e-01
  %conv80 = fptosi double %add79 to i64
  %rem81 = srem i64 %conv80, 60
  %conv82 = trunc i64 %rem81 to i32
  %speed = getelementptr inbounds %struct.ts_times, %struct.ts_times* %process_time, i32 0, i32 2
  %34 = load float, float* %speed, align 4, !tbaa !13
  %conv83 = fpext float %34 to double
  %eta = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 3
  %35 = load float, float* %eta, align 4, !tbaa !14
  %conv84 = fpext float %35 to double
  %add85 = fadd double %conv84, 5.000000e-01
  %conv86 = fptosi double %add85 to i64
  %div87 = sdiv i64 %conv86, 3600
  %conv88 = trunc i64 %div87 to i32
  %eta89 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 3
  %36 = load float, float* %eta89, align 4, !tbaa !14
  %conv90 = fpext float %36 to double
  %add91 = fadd double %conv90, 5.000000e-01
  %div92 = fdiv double %add91, 6.000000e+01
  %conv93 = fptosi double %div92 to i64
  %rem94 = srem i64 %conv93, 60
  %conv95 = trunc i64 %rem94 to i32
  %eta96 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %real_time, i32 0, i32 3
  %37 = load float, float* %eta96, align 4, !tbaa !14
  %conv97 = fpext float %37 to double
  %add98 = fadd double %conv97, 5.000000e-01
  %conv99 = fptosi double %add98 to i64
  %rem100 = srem i64 %conv99, 60
  %conv101 = trunc i64 %rem100 to i32
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i32 0, i32 0), i64 %19, i64 %sub9, i32 %21, i32 %conv14, i32 %conv20, i32 %conv26, i32 %conv31, i32 %conv38, i32 %conv44, i32 %conv50, i32 %conv57, i32 %conv63, i32 %conv69, i32 %conv76, i32 %conv82, double %conv83, i32 %conv88, i32 %conv95, i32 %conv101)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call103 = call i32 @fflush(%struct._IO_FILE* %38)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %39 = bitcast i32* %percent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.ts_times* %process_time to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #1
  %41 = bitcast %struct.ts_times* %real_time to i8*
  call void @llvm.lifetime.end(i64 16, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"ts_times", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"float", !3, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !11, i64 12}
