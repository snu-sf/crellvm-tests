; ModuleID = './rinkj-screen-eb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RinkjDevice = type { i32 (%struct._RinkjDevice*, i8*)*, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)*, i32 (%struct._RinkjDevice*, i8**)*, i32 }
%struct._RinkjDeviceParams = type { i32, i32, i32, i8* }
%struct._RinkjScreenEb = type { %struct._RinkjDevice, i32, i32, i32, i32, %struct._RinkjDevice*, %struct._EvenBetterCtx*, i32**, double, double, i32, i32, i32 }
%struct._EvenBetterCtx = type opaque
%struct.EvenBetterParams = type { i32, i32, i32, i32, i32**, double, i32, i32*, i32, i32, i32, i32, %struct._IO_FILE*, i32, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Aspect\00", align 1
@rinkj_screen_eb_write.cmyk_permutation = private unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 16
@rinkj_screen_eb_write.ccmmyk_permutation = private unnamed_addr constant [6 x i32] [i32 3, i32 0, i32 1, i32 4, i32 5, i32 2], align 16
@rinkj_screen_eb_write.ccmmykk_permutation = private unnamed_addr constant [7 x i32] [i32 3, i32 6, i32 0, i32 1, i32 4, i32 5, i32 2], align 16
@rinkj_screen_eb_init.strengths4 = private unnamed_addr constant [4 x i32] [i32 128, i32 50, i32 50, i32 10], align 16
@rinkj_screen_eb_init.strengths6 = private unnamed_addr constant [6 x i32] [i32 128, i32 50, i32 50, i32 25, i32 25, i32 10], align 16
@rinkj_screen_eb_init.strengths7 = private unnamed_addr constant [7 x i32] [i32 128, i32 80, i32 50, i32 50, i32 25, i32 26, i32 10], align 16

; Function Attrs: nounwind uwtable
define %struct._RinkjDevice* @rinkj_screen_eb_new(%struct._RinkjDevice* %dev_out) #0 {
entry:
  %dev_out.addr = alloca %struct._RinkjDevice*, align 8
  %result = alloca %struct._RinkjScreenEb*, align 8
  store %struct._RinkjDevice* %dev_out, %struct._RinkjDevice** %dev_out.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjScreenEb** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 104) #7
  %1 = bitcast i8* %call to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %1, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %2 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %super = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %2, i32 0, i32 0
  %set = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super, i32 0, i32 0
  store i32 (%struct._RinkjDevice*, i8*)* @rinkj_screen_eb_set, i32 (%struct._RinkjDevice*, i8*)** %set, align 8, !tbaa !5
  %3 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %super1 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %3, i32 0, i32 0
  %write = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super1, i32 0, i32 2
  store i32 (%struct._RinkjDevice*, i8**)* @rinkj_screen_eb_write, i32 (%struct._RinkjDevice*, i8**)** %write, align 8, !tbaa !10
  %4 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %super2 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %4, i32 0, i32 0
  %init = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super2, i32 0, i32 1
  store i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)* @rinkj_screen_eb_init, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)** %init, align 8, !tbaa !11
  %5 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %super3 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %5, i32 0, i32 0
  %init_happened = getelementptr inbounds %struct._RinkjDevice, %struct._RinkjDevice* %super3, i32 0, i32 3
  store i32 0, i32* %init_happened, align 4, !tbaa !12
  %6 = load %struct._RinkjDevice*, %struct._RinkjDevice** %dev_out.addr, align 8, !tbaa !1
  %7 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %dev_out4 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %7, i32 0, i32 5
  store %struct._RinkjDevice* %6, %struct._RinkjDevice** %dev_out4, align 8, !tbaa !13
  %8 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %lut = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %8, i32 0, i32 7
  store i32** null, i32*** %lut, align 8, !tbaa !14
  %9 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %xscale = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %9, i32 0, i32 8
  store double 1.000000e+00, double* %xscale, align 8, !tbaa !15
  %10 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %yscale = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %10, i32 0, i32 9
  store double 1.000000e+00, double* %yscale, align 8, !tbaa !16
  %11 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %aspect = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %11, i32 0, i32 11
  store i32 1, i32* %aspect, align 4, !tbaa !17
  %12 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %12, i32 0, i32 12
  store i32 1, i32* %bps, align 4, !tbaa !18
  %13 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %result, align 8, !tbaa !1
  %super5 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %13, i32 0, i32 0
  %14 = bitcast %struct._RinkjScreenEb** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct._RinkjDevice* %super5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_screen_eb_set(%struct._RinkjDevice* %self, i8* %config) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %config.addr = alloca i8*, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  %p = alloca i8*, align 8
  %next = alloca i8*, align 8
  %key = alloca i8*, align 8
  %val = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %__s1_len41 = alloca i64, align 8
  %__s2_len43 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  %__s151 = alloca i8*, align 8
  %__result53 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %__s1_len99 = alloca i64, align 8
  %__s2_len101 = alloca i64, align 8
  %tmp102 = alloca i32, align 4
  %__s1109 = alloca i8*, align 8
  %__result111 = alloca i32, align 4
  %tmp149 = alloca i32, align 4
  %__s1_len162 = alloca i64, align 8
  %__s2_len164 = alloca i64, align 8
  %tmp165 = alloca i32, align 4
  %__s1172 = alloca i8*, align 8
  %__result174 = alloca i32, align 4
  %tmp212 = alloca i32, align 4
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8* %config, i8** %config.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %key to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %config.addr, align 8, !tbaa !1
  store i8* %7, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %call = call i8* @rinkj_config_keyval(i8* %8, i8** %val, i8** %next) #8
  store i8* %call, i8** %key, align 8, !tbaa !1
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #9
  store i64 %call1, i64* %__s2_len, align 8, !tbaa !19
  %11 = load i64, i64* %__s2_len, align 8, !tbaa !19
  %cmp = icmp ult i64 %11, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %12 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %13, i8** %__s1, align 8, !tbaa !1
  %14 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !21
  %conv = zext i8 %16 to i32
  %17 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !21
  %conv4 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv, %conv4
  store i32 %sub, i32* %__result, align 4, !tbaa !22
  %18 = load i64, i64* %__s2_len, align 8, !tbaa !19
  %cmp5 = icmp ugt i64 %18, 0
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.35

land.lhs.true.7:                                  ; preds = %cond.true
  %19 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true.7
  %20 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx10, align 1, !tbaa !21
  %conv11 = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !21
  %conv12 = zext i8 %22 to i32
  %sub13 = sub nsw i32 %conv11, %conv12
  store i32 %sub13, i32* %__result, align 4, !tbaa !22
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !19
  %cmp14 = icmp ugt i64 %23, 1
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.34

land.lhs.true.16:                                 ; preds = %if.then
  %24 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %land.lhs.true.16
  %25 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 2
  %26 = load i8, i8* %arrayidx20, align 1, !tbaa !21
  %conv21 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i64 2), align 1, !tbaa !21
  %conv22 = zext i8 %27 to i32
  %sub23 = sub nsw i32 %conv21, %conv22
  store i32 %sub23, i32* %__result, align 4, !tbaa !22
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !19
  %cmp24 = icmp ugt i64 %28, 2
  br i1 %cmp24, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %if.then.19
  %29 = load i32, i32* %__result, align 4, !tbaa !22
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true.26
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx30, align 1, !tbaa !21
  %conv31 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i64 3), align 1, !tbaa !21
  %conv32 = zext i8 %32 to i32
  %sub33 = sub nsw i32 %conv31, %conv32
  store i32 %sub33, i32* %__result, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.29, %land.lhs.true.26, %if.then.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %land.lhs.true.16, %if.then
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.7, %cond.true
  %33 = load i32, i32* %__result, align 4, !tbaa !22
  store i32 %33, i32* %tmp36, !tbaa !22
  %34 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %tmp36, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %37 = load i8*, i8** %key, align 8, !tbaa !1
  %call37 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.35
  %cond = phi i32 [ %36, %if.end.35 ], [ %call37, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !22
  %38 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %tmp, !tbaa !22
  %tobool38 = icmp ne i32 %40, 0
  br i1 %tobool38, label %if.else.160, label %if.then.39

if.then.39:                                       ; preds = %cond.end
  %41 = bitcast i64* %__s1_len41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast i64* %__s2_len43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.1 to i64)), i64 1), label %land.lhs.true.45, label %cond.false.92

land.lhs.true.45:                                 ; preds = %if.then.39
  %call46 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #9
  store i64 %call46, i64* %__s2_len43, align 8, !tbaa !19
  %43 = load i64, i64* %__s2_len43, align 8, !tbaa !19
  %cmp47 = icmp ult i64 %43, 4
  br i1 %cmp47, label %cond.true.49, label %cond.false.92

cond.true.49:                                     ; preds = %land.lhs.true.45
  %44 = bitcast i8** %__s151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %val, align 8, !tbaa !1
  store i8* %45, i8** %__s151, align 8, !tbaa !1
  %46 = bitcast i32* %__result53 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i8*, i8** %__s151, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx54, align 1, !tbaa !21
  %conv55 = zext i8 %48 to i32
  %49 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), align 1, !tbaa !21
  %conv56 = zext i8 %49 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  store i32 %sub57, i32* %__result53, align 4, !tbaa !22
  %50 = load i64, i64* %__s2_len43, align 8, !tbaa !19
  %cmp58 = icmp ugt i64 %50, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.90

land.lhs.true.60:                                 ; preds = %cond.true.49
  %51 = load i32, i32* %__result53, align 4, !tbaa !22
  %cmp61 = icmp eq i32 %51, 0
  br i1 %cmp61, label %if.then.63, label %if.end.90

if.then.63:                                       ; preds = %land.lhs.true.60
  %52 = load i8*, i8** %__s151, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx64, align 1, !tbaa !21
  %conv65 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i64 1), align 1, !tbaa !21
  %conv66 = zext i8 %54 to i32
  %sub67 = sub nsw i32 %conv65, %conv66
  store i32 %sub67, i32* %__result53, align 4, !tbaa !22
  %55 = load i64, i64* %__s2_len43, align 8, !tbaa !19
  %cmp68 = icmp ugt i64 %55, 1
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.89

land.lhs.true.70:                                 ; preds = %if.then.63
  %56 = load i32, i32* %__result53, align 4, !tbaa !22
  %cmp71 = icmp eq i32 %56, 0
  br i1 %cmp71, label %if.then.73, label %if.end.89

if.then.73:                                       ; preds = %land.lhs.true.70
  %57 = load i8*, i8** %__s151, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx74, align 1, !tbaa !21
  %conv75 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 2), align 1, !tbaa !21
  %conv76 = zext i8 %59 to i32
  %sub77 = sub nsw i32 %conv75, %conv76
  store i32 %sub77, i32* %__result53, align 4, !tbaa !22
  %60 = load i64, i64* %__s2_len43, align 8, !tbaa !19
  %cmp78 = icmp ugt i64 %60, 2
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.88

land.lhs.true.80:                                 ; preds = %if.then.73
  %61 = load i32, i32* %__result53, align 4, !tbaa !22
  %cmp81 = icmp eq i32 %61, 0
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %land.lhs.true.80
  %62 = load i8*, i8** %__s151, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %62, i64 3
  %63 = load i8, i8* %arrayidx84, align 1, !tbaa !21
  %conv85 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 3), align 1, !tbaa !21
  %conv86 = zext i8 %64 to i32
  %sub87 = sub nsw i32 %conv85, %conv86
  store i32 %sub87, i32* %__result53, align 4, !tbaa !22
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %land.lhs.true.80, %if.then.73
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true.70, %if.then.63
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.60, %cond.true.49
  %65 = load i32, i32* %__result53, align 4, !tbaa !22
  store i32 %65, i32* %tmp91, !tbaa !22
  %66 = bitcast i32* %__result53 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8** %__s151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %tmp91, !tbaa !22
  br label %cond.end.94

cond.false.92:                                    ; preds = %land.lhs.true.45, %if.then.39
  %69 = load i8*, i8** %val, align 8, !tbaa !1
  %call93 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.92, %if.end.90
  %cond95 = phi i32 [ %68, %if.end.90 ], [ %call93, %cond.false.92 ]
  store i32 %cond95, i32* %tmp44, !tbaa !22
  %70 = bitcast i64* %__s2_len43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i64* %__s1_len41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %tmp44, !tbaa !22
  %tobool96 = icmp ne i32 %72, 0
  br i1 %tobool96, label %if.else, label %if.then.97

if.then.97:                                       ; preds = %cond.end.94
  %73 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %73, i32 0, i32 12
  store i32 1, i32* %bps, align 4, !tbaa !18
  br label %if.end.159

if.else:                                          ; preds = %cond.end.94
  %74 = bitcast i64* %__s1_len99 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = bitcast i64* %__s2_len101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.2 to i64)), i64 1), label %land.lhs.true.103, label %cond.false.150

land.lhs.true.103:                                ; preds = %if.else
  %call104 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #9
  store i64 %call104, i64* %__s2_len101, align 8, !tbaa !19
  %76 = load i64, i64* %__s2_len101, align 8, !tbaa !19
  %cmp105 = icmp ult i64 %76, 4
  br i1 %cmp105, label %cond.true.107, label %cond.false.150

cond.true.107:                                    ; preds = %land.lhs.true.103
  %77 = bitcast i8** %__s1109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i8*, i8** %val, align 8, !tbaa !1
  store i8* %78, i8** %__s1109, align 8, !tbaa !1
  %79 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %80, i64 0
  %81 = load i8, i8* %arrayidx112, align 1, !tbaa !21
  %conv113 = zext i8 %81 to i32
  %82 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), align 1, !tbaa !21
  %conv114 = zext i8 %82 to i32
  %sub115 = sub nsw i32 %conv113, %conv114
  store i32 %sub115, i32* %__result111, align 4, !tbaa !22
  %83 = load i64, i64* %__s2_len101, align 8, !tbaa !19
  %cmp116 = icmp ugt i64 %83, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.148

land.lhs.true.118:                                ; preds = %cond.true.107
  %84 = load i32, i32* %__result111, align 4, !tbaa !22
  %cmp119 = icmp eq i32 %84, 0
  br i1 %cmp119, label %if.then.121, label %if.end.148

if.then.121:                                      ; preds = %land.lhs.true.118
  %85 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx122, align 1, !tbaa !21
  %conv123 = zext i8 %86 to i32
  %87 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i64 1), align 1, !tbaa !21
  %conv124 = zext i8 %87 to i32
  %sub125 = sub nsw i32 %conv123, %conv124
  store i32 %sub125, i32* %__result111, align 4, !tbaa !22
  %88 = load i64, i64* %__s2_len101, align 8, !tbaa !19
  %cmp126 = icmp ugt i64 %88, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.147

land.lhs.true.128:                                ; preds = %if.then.121
  %89 = load i32, i32* %__result111, align 4, !tbaa !22
  %cmp129 = icmp eq i32 %89, 0
  br i1 %cmp129, label %if.then.131, label %if.end.147

if.then.131:                                      ; preds = %land.lhs.true.128
  %90 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %90, i64 2
  %91 = load i8, i8* %arrayidx132, align 1, !tbaa !21
  %conv133 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i64 2), align 1, !tbaa !21
  %conv134 = zext i8 %92 to i32
  %sub135 = sub nsw i32 %conv133, %conv134
  store i32 %sub135, i32* %__result111, align 4, !tbaa !22
  %93 = load i64, i64* %__s2_len101, align 8, !tbaa !19
  %cmp136 = icmp ugt i64 %93, 2
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.146

land.lhs.true.138:                                ; preds = %if.then.131
  %94 = load i32, i32* %__result111, align 4, !tbaa !22
  %cmp139 = icmp eq i32 %94, 0
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %land.lhs.true.138
  %95 = load i8*, i8** %__s1109, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i8, i8* %95, i64 3
  %96 = load i8, i8* %arrayidx142, align 1, !tbaa !21
  %conv143 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i64 3), align 1, !tbaa !21
  %conv144 = zext i8 %97 to i32
  %sub145 = sub nsw i32 %conv143, %conv144
  store i32 %sub145, i32* %__result111, align 4, !tbaa !22
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %land.lhs.true.138, %if.then.131
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.128, %if.then.121
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.118, %cond.true.107
  %98 = load i32, i32* %__result111, align 4, !tbaa !22
  store i32 %98, i32* %tmp149, !tbaa !22
  %99 = bitcast i32* %__result111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i8** %__s1109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = load i32, i32* %tmp149, !tbaa !22
  br label %cond.end.152

cond.false.150:                                   ; preds = %land.lhs.true.103, %if.else
  %102 = load i8*, i8** %val, align 8, !tbaa !1
  %call151 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #7
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %if.end.148
  %cond153 = phi i32 [ %101, %if.end.148 ], [ %call151, %cond.false.150 ]
  store i32 %cond153, i32* %tmp102, !tbaa !22
  %103 = bitcast i64* %__s2_len101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i64* %__s1_len99 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = load i32, i32* %tmp102, !tbaa !22
  %tobool154 = icmp ne i32 %105, 0
  br i1 %tobool154, label %if.end.158, label %if.then.155

if.then.155:                                      ; preds = %cond.end.152
  %106 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps156 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %106, i32 0, i32 12
  store i32 2, i32* %bps156, align 4, !tbaa !18
  %107 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dev_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %107, i32 0, i32 5
  %108 = load %struct._RinkjDevice*, %struct._RinkjDevice** %dev_out, align 8, !tbaa !13
  %call157 = call i32 @rinkj_device_set_param_int(%struct._RinkjDevice* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 2) #8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %cond.end.152
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.97
  br label %if.end.221

if.else.160:                                      ; preds = %cond.end
  %109 = bitcast i64* %__s1_len162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  %110 = bitcast i64* %__s2_len164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.166, label %cond.false.213

land.lhs.true.166:                                ; preds = %if.else.160
  %call167 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #9
  store i64 %call167, i64* %__s2_len164, align 8, !tbaa !19
  %111 = load i64, i64* %__s2_len164, align 8, !tbaa !19
  %cmp168 = icmp ult i64 %111, 4
  br i1 %cmp168, label %cond.true.170, label %cond.false.213

cond.true.170:                                    ; preds = %land.lhs.true.166
  %112 = bitcast i8** %__s1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load i8*, i8** %key, align 8, !tbaa !1
  store i8* %113, i8** %__s1172, align 8, !tbaa !1
  %114 = bitcast i32* %__result174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx175, align 1, !tbaa !21
  %conv176 = zext i8 %116 to i32
  %117 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), align 1, !tbaa !21
  %conv177 = zext i8 %117 to i32
  %sub178 = sub nsw i32 %conv176, %conv177
  store i32 %sub178, i32* %__result174, align 4, !tbaa !22
  %118 = load i64, i64* %__s2_len164, align 8, !tbaa !19
  %cmp179 = icmp ugt i64 %118, 0
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.211

land.lhs.true.181:                                ; preds = %cond.true.170
  %119 = load i32, i32* %__result174, align 4, !tbaa !22
  %cmp182 = icmp eq i32 %119, 0
  br i1 %cmp182, label %if.then.184, label %if.end.211

if.then.184:                                      ; preds = %land.lhs.true.181
  %120 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %120, i64 1
  %121 = load i8, i8* %arrayidx185, align 1, !tbaa !21
  %conv186 = zext i8 %121 to i32
  %122 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i64 1), align 1, !tbaa !21
  %conv187 = zext i8 %122 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  store i32 %sub188, i32* %__result174, align 4, !tbaa !22
  %123 = load i64, i64* %__s2_len164, align 8, !tbaa !19
  %cmp189 = icmp ugt i64 %123, 1
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.210

land.lhs.true.191:                                ; preds = %if.then.184
  %124 = load i32, i32* %__result174, align 4, !tbaa !22
  %cmp192 = icmp eq i32 %124, 0
  br i1 %cmp192, label %if.then.194, label %if.end.210

if.then.194:                                      ; preds = %land.lhs.true.191
  %125 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %125, i64 2
  %126 = load i8, i8* %arrayidx195, align 1, !tbaa !21
  %conv196 = zext i8 %126 to i32
  %127 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i64 2), align 1, !tbaa !21
  %conv197 = zext i8 %127 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  store i32 %sub198, i32* %__result174, align 4, !tbaa !22
  %128 = load i64, i64* %__s2_len164, align 8, !tbaa !19
  %cmp199 = icmp ugt i64 %128, 2
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.209

land.lhs.true.201:                                ; preds = %if.then.194
  %129 = load i32, i32* %__result174, align 4, !tbaa !22
  %cmp202 = icmp eq i32 %129, 0
  br i1 %cmp202, label %if.then.204, label %if.end.209

if.then.204:                                      ; preds = %land.lhs.true.201
  %130 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx205, align 1, !tbaa !21
  %conv206 = zext i8 %131 to i32
  %132 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i64 3), align 1, !tbaa !21
  %conv207 = zext i8 %132 to i32
  %sub208 = sub nsw i32 %conv206, %conv207
  store i32 %sub208, i32* %__result174, align 4, !tbaa !22
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.204, %land.lhs.true.201, %if.then.194
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.191, %if.then.184
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.181, %cond.true.170
  %133 = load i32, i32* %__result174, align 4, !tbaa !22
  store i32 %133, i32* %tmp212, !tbaa !22
  %134 = bitcast i32* %__result174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i8** %__s1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = load i32, i32* %tmp212, !tbaa !22
  br label %cond.end.215

cond.false.213:                                   ; preds = %land.lhs.true.166, %if.else.160
  %137 = load i8*, i8** %key, align 8, !tbaa !1
  %call214 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #7
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.213, %if.end.211
  %cond216 = phi i32 [ %136, %if.end.211 ], [ %call214, %cond.false.213 ]
  store i32 %cond216, i32* %tmp165, !tbaa !22
  %138 = bitcast i64* %__s2_len164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i64* %__s1_len162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = load i32, i32* %tmp165, !tbaa !22
  %tobool217 = icmp ne i32 %140, 0
  br i1 %tobool217, label %if.end.220, label %if.then.218

if.then.218:                                      ; preds = %cond.end.215
  %141 = load i8*, i8** %val, align 8, !tbaa !1
  %call219 = call i32 @atoi(i8* %141) #9
  %142 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %aspect = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %142, i32 0, i32 11
  store i32 %call219, i32* %aspect, align 4, !tbaa !17
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %cond.end.215
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.159
  %143 = load i8*, i8** %key, align 8, !tbaa !1
  call void @free(i8* %143) #7
  %144 = load i8*, i8** %val, align 8, !tbaa !1
  call void @free(i8* %144) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.221
  %145 = load i8*, i8** %next, align 8, !tbaa !1
  store i8* %145, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %146 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i8** %key to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_screen_eb_write(%struct._RinkjDevice* %self, i8** %data) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %data.addr = alloca i8**, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  %out_data = alloca i8**, align 8
  %out_buf = alloca i8**, align 8
  %i = alloca i32, align 4
  %n_planes = alloca i32, align 4
  %xs = alloca i32, align 4
  %xsb = alloca i32, align 4
  %status = alloca i32, align 4
  %data_permuted = alloca i8**, align 8
  %cmyk_permutation = alloca [4 x i32], align 16
  %ccmmyk_permutation = alloca [6 x i32], align 16
  %ccmmykk_permutation = alloca [7 x i32], align 16
  %permutation = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %pd = alloca i8*, align 8
  %pb = alloca i8*, align 8
  %x = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i8, align 1
  %j179 = alloca i32, align 4
  %b180 = alloca i8, align 1
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i8** %data, i8*** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = bitcast i8*** %out_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8*** %out_buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %n_planes1 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %7, i32 0, i32 4
  %8 = load i32, i32* %n_planes1, align 4, !tbaa !23
  store i32 %8, i32* %n_planes, align 4, !tbaa !22
  %9 = bitcast i32* %xs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %width_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %10, i32 0, i32 1
  %11 = load i32, i32* %width_out, align 4, !tbaa !24
  store i32 %11, i32* %xs, align 4, !tbaa !22
  %12 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i8*** %data_permuted to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [4 x i32]* %cmyk_permutation to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast [4 x i32]* %cmyk_permutation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x i32]* @rinkj_screen_eb_write.cmyk_permutation to i8*), i64 16, i32 16, i1 false)
  %17 = bitcast [6 x i32]* %ccmmyk_permutation to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #1
  %18 = bitcast [6 x i32]* %ccmmyk_permutation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([6 x i32]* @rinkj_screen_eb_write.ccmmyk_permutation to i8*), i64 24, i32 16, i1 false)
  %19 = bitcast [7 x i32]* %ccmmykk_permutation to i8*
  call void @llvm.lifetime.start(i64 28, i8* %19) #1
  %20 = bitcast [7 x i32]* %ccmmykk_permutation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([7 x i32]* @rinkj_screen_eb_write.ccmmykk_permutation to i8*), i64 28, i32 16, i1 false)
  %21 = bitcast i32** %permutation to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8** %22, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dev_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %23, i32 0, i32 5
  %24 = load %struct._RinkjDevice*, %struct._RinkjDevice** %dev_out, align 8, !tbaa !13
  %call = call i32 @rinkj_device_write(%struct._RinkjDevice* %24, i8** null) #8
  store i32 %call, i32* %status, align 4, !tbaa !22
  %25 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dither = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %25, i32 0, i32 6
  %26 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %dither, align 8, !tbaa !25
  call void @even_better_free(%struct._EvenBetterCtx* %26) #8
  %27 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %28 = bitcast %struct._RinkjDevice* %27 to i8*
  call void @free(i8* %28) #7
  %29 = load i32, i32* %status, align 4, !tbaa !22
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp2 = icmp eq i32 %30, 4
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %cmyk_permutation, i32 0, i32 0
  store i32* %arraydecay, i32** %permutation, align 8, !tbaa !1
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %31 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp4 = icmp eq i32 %31, 6
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %arraydecay6 = getelementptr inbounds [6 x i32], [6 x i32]* %ccmmyk_permutation, i32 0, i32 0
  store i32* %arraydecay6, i32** %permutation, align 8, !tbaa !1
  br label %if.end.13

if.else.7:                                        ; preds = %if.else
  %32 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp8 = icmp eq i32 %32, 7
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %arraydecay10 = getelementptr inbounds [7 x i32], [7 x i32]* %ccmmykk_permutation, i32 0, i32 0
  store i32* %arraydecay10, i32** %permutation, align 8, !tbaa !1
  br label %if.end.12

if.else.11:                                       ; preds = %if.else.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.3
  %33 = load i32, i32* %xs, align 4, !tbaa !22
  %34 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %34, i32 0, i32 12
  %35 = load i32, i32* %bps, align 4, !tbaa !18
  %mul = mul nsw i32 %33, %35
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %xsb, align 4, !tbaa !22
  %36 = load i32, i32* %n_planes, align 4, !tbaa !22
  %conv = sext i32 %36 to i64
  %mul15 = mul i64 %conv, 8
  %call16 = call noalias i8* @malloc(i64 %mul15) #7
  %37 = bitcast i8* %call16 to i8**
  store i8** %37, i8*** %out_data, align 8, !tbaa !1
  %38 = load i32, i32* %n_planes, align 4, !tbaa !22
  %conv17 = sext i32 %38 to i64
  %mul18 = mul i64 %conv17, 8
  %call19 = call noalias i8* @malloc(i64 %mul18) #7
  %39 = bitcast i8* %call19 to i8**
  store i8** %39, i8*** %out_buf, align 8, !tbaa !1
  %40 = load i32, i32* %n_planes, align 4, !tbaa !22
  %conv20 = sext i32 %40 to i64
  %mul21 = mul i64 %conv20, 8
  %call22 = call noalias i8* @malloc(i64 %mul21) #7
  %41 = bitcast i8* %call22 to i8**
  store i8** %41, i8*** %data_permuted, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %42 = load i32, i32* %i, align 4, !tbaa !22
  %43 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp23 = icmp slt i32 %42, %43
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %xsb, align 4, !tbaa !22
  %conv25 = sext i32 %44 to i64
  %call26 = call noalias i8* @malloc(i64 %conv25) #7
  %45 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %45 to i64
  %46 = load i8**, i8*** %out_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %46, i64 %idxprom
  store i8* %call26, i8** %arrayidx, align 8, !tbaa !1
  %47 = load i32, i32* %xs, align 4, !tbaa !22
  %conv27 = sext i32 %47 to i64
  %call28 = call noalias i8* @malloc(i64 %conv27) #7
  %48 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom29 = sext i32 %48 to i64
  %49 = load i8**, i8*** %out_buf, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8*, i8** %49, i64 %idxprom29
  store i8* %call28, i8** %arrayidx30, align 8, !tbaa !1
  %50 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom31 = sext i32 %50 to i64
  %51 = load i32*, i32** %permutation, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i32, i32* %51, i64 %idxprom31
  %52 = load i32, i32* %arrayidx32, align 4, !tbaa !22
  %idxprom33 = sext i32 %52 to i64
  %53 = load i8**, i8*** %data.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8*, i8** %53, i64 %idxprom33
  %54 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom35 = sext i32 %55 to i64
  %56 = load i8**, i8*** %data_permuted, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8*, i8** %56, i64 %idxprom35
  store i8* %54, i8** %arrayidx36, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %status, align 4, !tbaa !22
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.209, %for.end
  %58 = load i32, i32* %status, align 4, !tbaa !22
  %cmp38 = icmp sge i32 %58, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.37
  %59 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yrem = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %59, i32 0, i32 10
  %60 = load i32, i32* %yrem, align 4, !tbaa !26
  %61 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %height_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %61, i32 0, i32 3
  %62 = load i32, i32* %height_out, align 4, !tbaa !27
  %cmp40 = icmp slt i32 %60, %62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.37
  %63 = phi i1 [ false, %for.cond.37 ], [ %cmp40, %land.rhs ]
  br i1 %63, label %for.body.42, label %for.end.212

for.body.42:                                      ; preds = %land.end
  %64 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dither43 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %64, i32 0, i32 6
  %65 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %dither43, align 8, !tbaa !25
  %66 = load i8**, i8*** %out_buf, align 8, !tbaa !1
  %67 = bitcast i8** %66 to i8*
  %68 = bitcast i8* %67 to i8**
  %69 = load i8**, i8*** %data_permuted, align 8, !tbaa !1
  %70 = bitcast i8** %69 to i8*
  %71 = bitcast i8* %70 to i8**
  call void @even_better_line(%struct._EvenBetterCtx* %65, i8** %68, i8** %71) #8
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.204, %for.body.42
  %72 = load i32, i32* %i, align 4, !tbaa !22
  %73 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp45 = icmp slt i32 %72, %73
  br i1 %cmp45, label %for.body.47, label %for.end.206

for.body.47:                                      ; preds = %for.cond.44
  %74 = bitcast i8** %pd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom48 = sext i32 %75 to i64
  %76 = load i32*, i32** %permutation, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %76, i64 %idxprom48
  %77 = load i32, i32* %arrayidx49, align 4, !tbaa !22
  %idxprom50 = sext i32 %77 to i64
  %78 = load i8**, i8*** %out_data, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8*, i8** %78, i64 %idxprom50
  %79 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  store i8* %79, i8** %pd, align 8, !tbaa !1
  %80 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom52 = sext i32 %81 to i64
  %82 = load i8**, i8*** %out_buf, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8*, i8** %82, i64 %idxprom52
  %83 = load i8*, i8** %arrayidx53, align 8, !tbaa !1
  store i8* %83, i8** %pb, align 8, !tbaa !1
  %84 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps54 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %85, i32 0, i32 12
  %86 = load i32, i32* %bps54, align 4, !tbaa !18
  %cmp55 = icmp eq i32 %86, 2
  br i1 %cmp55, label %if.then.57, label %if.else.113

if.then.57:                                       ; preds = %for.body.47
  store i32 0, i32* %x, align 4, !tbaa !22
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.85, %if.then.57
  %87 = load i32, i32* %x, align 4, !tbaa !22
  %88 = load i32, i32* %xs, align 4, !tbaa !22
  %sub = sub nsw i32 %88, 3
  %cmp59 = icmp slt i32 %87, %sub
  br i1 %cmp59, label %for.body.61, label %for.end.87

for.body.61:                                      ; preds = %for.cond.58
  %89 = load i32, i32* %x, align 4, !tbaa !22
  %idxprom62 = sext i32 %89 to i64
  %90 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %90, i64 %idxprom62
  %91 = load i8, i8* %arrayidx63, align 1, !tbaa !21
  %conv64 = zext i8 %91 to i32
  %shl = shl i32 %conv64, 6
  %92 = load i32, i32* %x, align 4, !tbaa !22
  %add65 = add nsw i32 %92, 1
  %idxprom66 = sext i32 %add65 to i64
  %93 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %93, i64 %idxprom66
  %94 = load i8, i8* %arrayidx67, align 1, !tbaa !21
  %conv68 = zext i8 %94 to i32
  %shl69 = shl i32 %conv68, 4
  %or = or i32 %shl, %shl69
  %95 = load i32, i32* %x, align 4, !tbaa !22
  %add70 = add nsw i32 %95, 2
  %idxprom71 = sext i32 %add70 to i64
  %96 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %96, i64 %idxprom71
  %97 = load i8, i8* %arrayidx72, align 1, !tbaa !21
  %conv73 = zext i8 %97 to i32
  %shl74 = shl i32 %conv73, 2
  %or75 = or i32 %or, %shl74
  %98 = load i32, i32* %x, align 4, !tbaa !22
  %add76 = add nsw i32 %98, 3
  %idxprom77 = sext i32 %add76 to i64
  %99 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %99, i64 %idxprom77
  %100 = load i8, i8* %arrayidx78, align 1, !tbaa !21
  %conv79 = zext i8 %100 to i32
  %or80 = or i32 %or75, %conv79
  %conv81 = trunc i32 %or80 to i8
  %101 = load i32, i32* %x, align 4, !tbaa !22
  %shr82 = ashr i32 %101, 2
  %idxprom83 = sext i32 %shr82 to i64
  %102 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %102, i64 %idxprom83
  store i8 %conv81, i8* %arrayidx84, align 1, !tbaa !21
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.61
  %103 = load i32, i32* %x, align 4, !tbaa !22
  %add86 = add nsw i32 %103, 4
  store i32 %add86, i32* %x, align 4, !tbaa !22
  br label %for.cond.58

for.end.87:                                       ; preds = %for.cond.58
  %104 = load i32, i32* %x, align 4, !tbaa !22
  %105 = load i32, i32* %xs, align 4, !tbaa !22
  %cmp88 = icmp slt i32 %104, %105
  br i1 %cmp88, label %if.then.90, label %if.end.112

if.then.90:                                       ; preds = %for.end.87
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  store i8 0, i8* %b, align 1, !tbaa !21
  store i32 0, i32* %j, align 4, !tbaa !22
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.106, %if.then.90
  %107 = load i32, i32* %j, align 4, !tbaa !22
  %108 = load i32, i32* %xs, align 4, !tbaa !22
  %109 = load i32, i32* %x, align 4, !tbaa !22
  %sub92 = sub nsw i32 %108, %109
  %cmp93 = icmp slt i32 %107, %sub92
  br i1 %cmp93, label %for.body.95, label %for.end.108

for.body.95:                                      ; preds = %for.cond.91
  %110 = load i32, i32* %x, align 4, !tbaa !22
  %111 = load i32, i32* %j, align 4, !tbaa !22
  %add96 = add nsw i32 %110, %111
  %idxprom97 = sext i32 %add96 to i64
  %112 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %112, i64 %idxprom97
  %113 = load i8, i8* %arrayidx98, align 1, !tbaa !21
  %conv99 = zext i8 %113 to i32
  %114 = load i32, i32* %j, align 4, !tbaa !22
  %sub100 = sub nsw i32 3, %114
  %shl101 = shl i32 %sub100, 1
  %shl102 = shl i32 %conv99, %shl101
  %115 = load i8, i8* %b, align 1, !tbaa !21
  %conv103 = zext i8 %115 to i32
  %or104 = or i32 %conv103, %shl102
  %conv105 = trunc i32 %or104 to i8
  store i8 %conv105, i8* %b, align 1, !tbaa !21
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.body.95
  %116 = load i32, i32* %j, align 4, !tbaa !22
  %inc107 = add nsw i32 %116, 1
  store i32 %inc107, i32* %j, align 4, !tbaa !22
  br label %for.cond.91

for.end.108:                                      ; preds = %for.cond.91
  %117 = load i8, i8* %b, align 1, !tbaa !21
  %118 = load i32, i32* %x, align 4, !tbaa !22
  %shr109 = ashr i32 %118, 2
  %idxprom110 = sext i32 %shr109 to i64
  %119 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %119, i64 %idxprom110
  store i8 %117, i8* %arrayidx111, align 1, !tbaa !21
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  %120 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.108, %for.end.87
  br label %if.end.203

if.else.113:                                      ; preds = %for.body.47
  %121 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps114 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %121, i32 0, i32 12
  %122 = load i32, i32* %bps114, align 4, !tbaa !18
  %cmp115 = icmp eq i32 %122, 1
  br i1 %cmp115, label %if.then.117, label %if.end.202

if.then.117:                                      ; preds = %if.else.113
  store i32 0, i32* %x, align 4, !tbaa !22
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.173, %if.then.117
  %123 = load i32, i32* %x, align 4, !tbaa !22
  %124 = load i32, i32* %xs, align 4, !tbaa !22
  %sub119 = sub nsw i32 %124, 7
  %cmp120 = icmp slt i32 %123, %sub119
  br i1 %cmp120, label %for.body.122, label %for.end.175

for.body.122:                                     ; preds = %for.cond.118
  %125 = load i32, i32* %x, align 4, !tbaa !22
  %idxprom123 = sext i32 %125 to i64
  %126 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %126, i64 %idxprom123
  %127 = load i8, i8* %arrayidx124, align 1, !tbaa !21
  %conv125 = zext i8 %127 to i32
  %shl126 = shl i32 %conv125, 7
  %128 = load i32, i32* %x, align 4, !tbaa !22
  %add127 = add nsw i32 %128, 1
  %idxprom128 = sext i32 %add127 to i64
  %129 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %129, i64 %idxprom128
  %130 = load i8, i8* %arrayidx129, align 1, !tbaa !21
  %conv130 = zext i8 %130 to i32
  %shl131 = shl i32 %conv130, 6
  %or132 = or i32 %shl126, %shl131
  %131 = load i32, i32* %x, align 4, !tbaa !22
  %add133 = add nsw i32 %131, 2
  %idxprom134 = sext i32 %add133 to i64
  %132 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %132, i64 %idxprom134
  %133 = load i8, i8* %arrayidx135, align 1, !tbaa !21
  %conv136 = zext i8 %133 to i32
  %shl137 = shl i32 %conv136, 5
  %or138 = or i32 %or132, %shl137
  %134 = load i32, i32* %x, align 4, !tbaa !22
  %add139 = add nsw i32 %134, 3
  %idxprom140 = sext i32 %add139 to i64
  %135 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %135, i64 %idxprom140
  %136 = load i8, i8* %arrayidx141, align 1, !tbaa !21
  %conv142 = zext i8 %136 to i32
  %shl143 = shl i32 %conv142, 4
  %or144 = or i32 %or138, %shl143
  %137 = load i32, i32* %x, align 4, !tbaa !22
  %add145 = add nsw i32 %137, 4
  %idxprom146 = sext i32 %add145 to i64
  %138 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %138, i64 %idxprom146
  %139 = load i8, i8* %arrayidx147, align 1, !tbaa !21
  %conv148 = zext i8 %139 to i32
  %shl149 = shl i32 %conv148, 3
  %or150 = or i32 %or144, %shl149
  %140 = load i32, i32* %x, align 4, !tbaa !22
  %add151 = add nsw i32 %140, 5
  %idxprom152 = sext i32 %add151 to i64
  %141 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %141, i64 %idxprom152
  %142 = load i8, i8* %arrayidx153, align 1, !tbaa !21
  %conv154 = zext i8 %142 to i32
  %shl155 = shl i32 %conv154, 2
  %or156 = or i32 %or150, %shl155
  %143 = load i32, i32* %x, align 4, !tbaa !22
  %add157 = add nsw i32 %143, 6
  %idxprom158 = sext i32 %add157 to i64
  %144 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %144, i64 %idxprom158
  %145 = load i8, i8* %arrayidx159, align 1, !tbaa !21
  %conv160 = zext i8 %145 to i32
  %shl161 = shl i32 %conv160, 1
  %or162 = or i32 %or156, %shl161
  %146 = load i32, i32* %x, align 4, !tbaa !22
  %add163 = add nsw i32 %146, 7
  %idxprom164 = sext i32 %add163 to i64
  %147 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %147, i64 %idxprom164
  %148 = load i8, i8* %arrayidx165, align 1, !tbaa !21
  %conv166 = zext i8 %148 to i32
  %shl167 = shl i32 %conv166, 0
  %or168 = or i32 %or162, %shl167
  %conv169 = trunc i32 %or168 to i8
  %149 = load i32, i32* %x, align 4, !tbaa !22
  %shr170 = ashr i32 %149, 3
  %idxprom171 = sext i32 %shr170 to i64
  %150 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %150, i64 %idxprom171
  store i8 %conv169, i8* %arrayidx172, align 1, !tbaa !21
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.122
  %151 = load i32, i32* %x, align 4, !tbaa !22
  %add174 = add nsw i32 %151, 8
  store i32 %add174, i32* %x, align 4, !tbaa !22
  br label %for.cond.118

for.end.175:                                      ; preds = %for.cond.118
  %152 = load i32, i32* %x, align 4, !tbaa !22
  %153 = load i32, i32* %xs, align 4, !tbaa !22
  %cmp176 = icmp slt i32 %152, %153
  br i1 %cmp176, label %if.then.178, label %if.end.201

if.then.178:                                      ; preds = %for.end.175
  %154 = bitcast i32* %j179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  call void @llvm.lifetime.start(i64 1, i8* %b180) #1
  store i8 0, i8* %b180, align 1, !tbaa !21
  store i32 0, i32* %j179, align 4, !tbaa !22
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.195, %if.then.178
  %155 = load i32, i32* %j179, align 4, !tbaa !22
  %156 = load i32, i32* %xs, align 4, !tbaa !22
  %157 = load i32, i32* %x, align 4, !tbaa !22
  %sub182 = sub nsw i32 %156, %157
  %cmp183 = icmp slt i32 %155, %sub182
  br i1 %cmp183, label %for.body.185, label %for.end.197

for.body.185:                                     ; preds = %for.cond.181
  %158 = load i32, i32* %x, align 4, !tbaa !22
  %159 = load i32, i32* %j179, align 4, !tbaa !22
  %add186 = add nsw i32 %158, %159
  %idxprom187 = sext i32 %add186 to i64
  %160 = load i8*, i8** %pb, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %160, i64 %idxprom187
  %161 = load i8, i8* %arrayidx188, align 1, !tbaa !21
  %conv189 = zext i8 %161 to i32
  %162 = load i32, i32* %j179, align 4, !tbaa !22
  %sub190 = sub nsw i32 7, %162
  %shl191 = shl i32 %conv189, %sub190
  %163 = load i8, i8* %b180, align 1, !tbaa !21
  %conv192 = zext i8 %163 to i32
  %or193 = or i32 %conv192, %shl191
  %conv194 = trunc i32 %or193 to i8
  store i8 %conv194, i8* %b180, align 1, !tbaa !21
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.185
  %164 = load i32, i32* %j179, align 4, !tbaa !22
  %inc196 = add nsw i32 %164, 1
  store i32 %inc196, i32* %j179, align 4, !tbaa !22
  br label %for.cond.181

for.end.197:                                      ; preds = %for.cond.181
  %165 = load i8, i8* %b180, align 1, !tbaa !21
  %166 = load i32, i32* %x, align 4, !tbaa !22
  %shr198 = ashr i32 %166, 3
  %idxprom199 = sext i32 %shr198 to i64
  %167 = load i8*, i8** %pd, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %167, i64 %idxprom199
  store i8 %165, i8* %arrayidx200, align 1, !tbaa !21
  call void @llvm.lifetime.end(i64 1, i8* %b180) #1
  %168 = bitcast i32* %j179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  br label %if.end.201

if.end.201:                                       ; preds = %for.end.197, %for.end.175
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.else.113
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.112
  %169 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %pb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i8** %pd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %172 = load i32, i32* %i, align 4, !tbaa !22
  %inc205 = add nsw i32 %172, 1
  store i32 %inc205, i32* %i, align 4, !tbaa !22
  br label %for.cond.44

for.end.206:                                      ; preds = %for.cond.44
  %173 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dev_out207 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %173, i32 0, i32 5
  %174 = load %struct._RinkjDevice*, %struct._RinkjDevice** %dev_out207, align 8, !tbaa !13
  %175 = load i8**, i8*** %out_data, align 8, !tbaa !1
  %call208 = call i32 @rinkj_device_write(%struct._RinkjDevice* %174, i8** %175) #8
  store i32 %call208, i32* %status, align 4, !tbaa !22
  br label %for.inc.209

for.inc.209:                                      ; preds = %for.end.206
  %176 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %height_in = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %176, i32 0, i32 2
  %177 = load i32, i32* %height_in, align 4, !tbaa !28
  %178 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yrem210 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %178, i32 0, i32 10
  %179 = load i32, i32* %yrem210, align 4, !tbaa !26
  %add211 = add nsw i32 %179, %177
  store i32 %add211, i32* %yrem210, align 4, !tbaa !26
  br label %for.cond.37

for.end.212:                                      ; preds = %land.end
  %180 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %height_out213 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %180, i32 0, i32 3
  %181 = load i32, i32* %height_out213, align 4, !tbaa !27
  %182 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yrem214 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %182, i32 0, i32 10
  %183 = load i32, i32* %yrem214, align 4, !tbaa !26
  %sub215 = sub nsw i32 %183, %181
  store i32 %sub215, i32* %yrem214, align 4, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.224, %for.end.212
  %184 = load i32, i32* %i, align 4, !tbaa !22
  %185 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp217 = icmp slt i32 %184, %185
  br i1 %cmp217, label %for.body.219, label %for.end.226

for.body.219:                                     ; preds = %for.cond.216
  %186 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom220 = sext i32 %186 to i64
  %187 = load i8**, i8*** %out_data, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8*, i8** %187, i64 %idxprom220
  %188 = load i8*, i8** %arrayidx221, align 8, !tbaa !1
  call void @free(i8* %188) #7
  %189 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom222 = sext i32 %189 to i64
  %190 = load i8**, i8*** %out_buf, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8*, i8** %190, i64 %idxprom222
  %191 = load i8*, i8** %arrayidx223, align 8, !tbaa !1
  call void @free(i8* %191) #7
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.body.219
  %192 = load i32, i32* %i, align 4, !tbaa !22
  %inc225 = add nsw i32 %192, 1
  store i32 %inc225, i32* %i, align 4, !tbaa !22
  br label %for.cond.216

for.end.226:                                      ; preds = %for.cond.216
  %193 = load i8**, i8*** %out_data, align 8, !tbaa !1
  %194 = bitcast i8** %193 to i8*
  call void @free(i8* %194) #7
  %195 = load i8**, i8*** %out_buf, align 8, !tbaa !1
  %196 = bitcast i8** %195 to i8*
  call void @free(i8* %196) #7
  %197 = load i8**, i8*** %data_permuted, align 8, !tbaa !1
  %198 = bitcast i8** %197 to i8*
  call void @free(i8* %198) #7
  %199 = load i32, i32* %status, align 4, !tbaa !22
  store i32 %199, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.226, %if.else.11, %if.then
  %200 = bitcast i32** %permutation to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast [7 x i32]* %ccmmykk_permutation to i8*
  call void @llvm.lifetime.end(i64 28, i8* %201) #1
  %202 = bitcast [6 x i32]* %ccmmyk_permutation to i8*
  call void @llvm.lifetime.end(i64 24, i8* %202) #1
  %203 = bitcast [4 x i32]* %cmyk_permutation to i8*
  call void @llvm.lifetime.end(i64 16, i8* %203) #1
  %204 = bitcast i8*** %data_permuted to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %xs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i8*** %out_buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i8*** %out_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = load i32, i32* %retval
  ret i32 %213
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_screen_eb_init(%struct._RinkjDevice* %self, %struct._RinkjDeviceParams* %params) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  %n_planes = alloca i32, align 4
  %ebp = alloca %struct.EvenBetterParams, align 8
  %strengths4 = alloca [4 x i32], align 16
  %strengths6 = alloca [6 x i32], align 16
  %strengths7 = alloca [7 x i32], align 16
  %strengths = alloca i32*, align 8
  %out_params = alloca %struct._RinkjDeviceParams, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %n_planes1 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %4, i32 0, i32 2
  %5 = load i32, i32* %n_planes1, align 4, !tbaa !29
  store i32 %5, i32* %n_planes, align 4, !tbaa !22
  %6 = bitcast %struct.EvenBetterParams* %ebp to i8*
  call void @llvm.lifetime.start(i64 88, i8* %6) #1
  %7 = bitcast [4 x i32]* %strengths4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast [4 x i32]* %strengths4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([4 x i32]* @rinkj_screen_eb_init.strengths4 to i8*), i64 16, i32 16, i1 false)
  %9 = bitcast [6 x i32]* %strengths6 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = bitcast [6 x i32]* %strengths6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([6 x i32]* @rinkj_screen_eb_init.strengths6 to i8*), i64 24, i32 16, i1 false)
  %11 = bitcast [7 x i32]* %strengths7 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast [7 x i32]* %strengths7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([7 x i32]* @rinkj_screen_eb_init.strengths7 to i8*), i64 28, i32 16, i1 false)
  %13 = bitcast i32** %strengths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct._RinkjDeviceParams* %out_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %xscale = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %15, i32 0, i32 8
  %16 = load double, double* %xscale, align 8, !tbaa !15
  %17 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %17, i32 0, i32 0
  %18 = load i32, i32* %width, align 4, !tbaa !31
  %conv = sitofp i32 %18 to double
  %mul = fmul double %16, %conv
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #10
  %conv2 = fptosi double %call to i32
  %width3 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 0
  store i32 %conv2, i32* %width3, align 4, !tbaa !31
  %19 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yscale = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %19, i32 0, i32 9
  %20 = load double, double* %yscale, align 8, !tbaa !16
  %21 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %21, i32 0, i32 1
  %22 = load i32, i32* %height, align 4, !tbaa !32
  %conv4 = sitofp i32 %22 to double
  %mul5 = fmul double %20, %conv4
  %add6 = fadd double %mul5, 5.000000e-01
  %call7 = call double @floor(double %add6) #10
  %conv8 = fptosi double %call7 to i32
  %height9 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 1
  store i32 %conv8, i32* %height9, align 4, !tbaa !32
  %23 = load i32, i32* %n_planes, align 4, !tbaa !22
  %n_planes10 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 2
  store i32 %23, i32* %n_planes10, align 4, !tbaa !29
  %24 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %plane_names = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %24, i32 0, i32 3
  %25 = load i8*, i8** %plane_names, align 8, !tbaa !33
  %plane_names11 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 3
  store i8* %25, i8** %plane_names11, align 8, !tbaa !33
  %26 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height12 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %26, i32 0, i32 1
  %27 = load i32, i32* %height12, align 4, !tbaa !32
  %shr = ashr i32 %27, 1
  %28 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yrem = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %28, i32 0, i32 10
  store i32 %shr, i32* %yrem, align 4, !tbaa !26
  %29 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp = icmp eq i32 %29, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %strengths4, i32 0, i32 0
  store i32* %arraydecay, i32** %strengths, align 8, !tbaa !1
  br label %if.end.24

if.else:                                          ; preds = %entry
  %30 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp14 = icmp eq i32 %30, 6
  br i1 %cmp14, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else
  %arraydecay17 = getelementptr inbounds [6 x i32], [6 x i32]* %strengths6, i32 0, i32 0
  store i32* %arraydecay17, i32** %strengths, align 8, !tbaa !1
  br label %if.end.23

if.else.18:                                       ; preds = %if.else
  %31 = load i32, i32* %n_planes, align 4, !tbaa !22
  %cmp19 = icmp eq i32 %31, 7
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else.18
  %arraydecay22 = getelementptr inbounds [7 x i32], [7 x i32]* %strengths7, i32 0, i32 0
  store i32* %arraydecay22, i32** %strengths, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  %32 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %width25 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %32, i32 0, i32 0
  %33 = load i32, i32* %width25, align 4, !tbaa !31
  %source_width = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 0
  store i32 %33, i32* %source_width, align 4, !tbaa !34
  %width26 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 0
  %34 = load i32, i32* %width26, align 4, !tbaa !31
  %dest_width = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 1
  store i32 %34, i32* %dest_width, align 4, !tbaa !36
  %35 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %35, i32 0, i32 12
  %36 = load i32, i32* %bps, align 4, !tbaa !18
  %shl = shl i32 1, %36
  %levels = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 3
  store i32 %shl, i32* %levels, align 4, !tbaa !37
  %37 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %37, i32 0, i32 7
  %38 = load i32**, i32*** %lut, align 8, !tbaa !14
  %luts = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 4
  store i32** %38, i32*** %luts, align 8, !tbaa !38
  %39 = load i32, i32* %n_planes, align 4, !tbaa !22
  %n_planes27 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 2
  store i32 %39, i32* %n_planes27, align 4, !tbaa !39
  %40 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %aspect = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %40, i32 0, i32 11
  %41 = load i32, i32* %aspect, align 4, !tbaa !17
  %aspect28 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 6
  store i32 %41, i32* %aspect28, align 4, !tbaa !40
  %rbscale = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 5
  store double 0.000000e+00, double* %rbscale, align 8, !tbaa !41
  %42 = load i32*, i32** %strengths, align 8, !tbaa !1
  %strengths29 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 7
  store i32* %42, i32** %strengths29, align 8, !tbaa !42
  %rand_scale = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 8
  store i32 0, i32* %rand_scale, align 4, !tbaa !43
  %even_c1_scale = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 9
  store i32 1, i32* %even_c1_scale, align 4, !tbaa !44
  %do_shadows = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 10
  store i32 0, i32* %do_shadows, align 4, !tbaa !45
  %dump_file = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 12
  store %struct._IO_FILE* null, %struct._IO_FILE** %dump_file, align 8, !tbaa !46
  %gamma = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %ebp, i32 0, i32 14
  store double 0.000000e+00, double* %gamma, align 8, !tbaa !47
  %call30 = call %struct._EvenBetterCtx* @even_better_new(%struct.EvenBetterParams* %ebp) #8
  %43 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dither = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %43, i32 0, i32 6
  store %struct._EvenBetterCtx* %call30, %struct._EvenBetterCtx** %dither, align 8, !tbaa !25
  %width31 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 0
  %44 = load i32, i32* %width31, align 4, !tbaa !31
  %45 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %width_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %45, i32 0, i32 1
  store i32 %44, i32* %width_out, align 4, !tbaa !24
  %46 = load %struct._RinkjDeviceParams*, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %height32 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %46, i32 0, i32 1
  %47 = load i32, i32* %height32, align 4, !tbaa !32
  %48 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %height_in = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %48, i32 0, i32 2
  store i32 %47, i32* %height_in, align 4, !tbaa !28
  %height33 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %out_params, i32 0, i32 1
  %49 = load i32, i32* %height33, align 4, !tbaa !32
  %50 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %height_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %50, i32 0, i32 3
  store i32 %49, i32* %height_out, align 4, !tbaa !27
  %51 = load i32, i32* %n_planes, align 4, !tbaa !22
  %52 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %n_planes34 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %52, i32 0, i32 4
  store i32 %51, i32* %n_planes34, align 4, !tbaa !23
  %53 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %dev_out = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %53, i32 0, i32 5
  %54 = load %struct._RinkjDevice*, %struct._RinkjDevice** %dev_out, align 8, !tbaa !13
  %call35 = call i32 @rinkj_device_init(%struct._RinkjDevice* %54, %struct._RinkjDeviceParams* %out_params) #8
  %55 = bitcast %struct._RinkjDeviceParams* %out_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  %56 = bitcast i32** %strengths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast [7 x i32]* %strengths7 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %57) #1
  %58 = bitcast [6 x i32]* %strengths6 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %58) #1
  %59 = bitcast [4 x i32]* %strengths4 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #1
  %60 = bitcast %struct.EvenBetterParams* %ebp to i8*
  call void @llvm.lifetime.end(i64 88, i8* %60) #1
  %61 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  ret i32 %call35
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @rinkj_screen_eb_set_scale(%struct._RinkjDevice* %self, double %xscale, double %yscale) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %xscale.addr = alloca double, align 8
  %yscale.addr = alloca double, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store double %xscale, double* %xscale.addr, align 8, !tbaa !48
  store double %yscale, double* %yscale.addr, align 8, !tbaa !48
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = load double, double* %xscale.addr, align 8, !tbaa !48
  %4 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %xscale1 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %4, i32 0, i32 8
  store double %3, double* %xscale1, align 8, !tbaa !15
  %5 = load double, double* %yscale.addr, align 8, !tbaa !48
  %6 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %yscale2 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %6, i32 0, i32 9
  store double %5, double* %yscale2, align 8, !tbaa !16
  %7 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @rinkj_screen_eb_set_gamma(%struct._RinkjDevice* %self, i32 %plane, double %gamma, double %max) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %plane.addr = alloca i32, align 4
  %gamma.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca double, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !22
  store double %gamma, double* %gamma.addr, align 8, !tbaa !48
  store double %max, double* %max.addr, align 8, !tbaa !48
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %cmp = icmp sge i32 %4, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %5, i32 0, i32 7
  %6 = load i32**, i32*** %lut, align 8, !tbaa !14
  %cmp1 = icmp eq i32** %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call = call noalias i8* @malloc(i64 128) #7
  %7 = bitcast i8* %call to i32**
  %8 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut3 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %8, i32 0, i32 7
  store i32** %7, i32*** %lut3, align 8, !tbaa !14
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %call5 = call noalias i8* @malloc(i64 1024) #7
  %9 = bitcast i8* %call5 to i32*
  %10 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut6 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %11, i32 0, i32 7
  %12 = load i32**, i32*** %lut6, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  store i32* %9, i32** %arrayidx, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %13 = load i32, i32* %i, align 4, !tbaa !22
  %cmp7 = icmp slt i32 %13, 256
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %conv = sitofp i32 %15 to double
  %mul = fmul double %conv, 0x3F70101010101010
  %16 = load double, double* %gamma.addr, align 8, !tbaa !48
  %call8 = call double @pow(double %mul, double %16) #7
  store double %call8, double* %v, align 8, !tbaa !48
  %17 = load double, double* %v, align 8, !tbaa !48
  %sub = fsub double 1.000000e+00, %17
  %18 = load double, double* %max.addr, align 8, !tbaa !48
  %sub9 = fsub double 1.000000e+00, %18
  %mul10 = fmul double %sub, %sub9
  %19 = load double, double* %v, align 8, !tbaa !48
  %add = fadd double %19, %mul10
  store double %add, double* %v, align 8, !tbaa !48
  %20 = load double, double* %v, align 8, !tbaa !48
  %mul11 = fmul double 0x4170000000000000, %20
  %add12 = fadd double 5.000000e-01, %mul11
  %call13 = call double @floor(double %add12) #10
  %conv14 = fptosi double %call13 to i32
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut17 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %23, i32 0, i32 7
  %24 = load i32**, i32*** %lut17, align 8, !tbaa !14
  %arrayidx18 = getelementptr inbounds i32*, i32** %24, i64 %idxprom16
  %25 = load i32*, i32** %arrayidx18, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  store i32 %conv14, i32* %arrayidx19, align 4, !tbaa !22
  %26 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
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

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define void @rinkj_screen_eb_set_lut(%struct._RinkjDevice* %self, i32 %plane, double* %lut) #0 {
entry:
  %self.addr = alloca %struct._RinkjDevice*, align 8
  %plane.addr = alloca i32, align 4
  %lut.addr = alloca double*, align 8
  %z = alloca %struct._RinkjScreenEb*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %v = alloca double, align 8
  store %struct._RinkjDevice* %self, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !22
  store double* %lut, double** %lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._RinkjDevice*, %struct._RinkjDevice** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct._RinkjDevice* %1 to %struct._RinkjScreenEb*
  store %struct._RinkjScreenEb* %2, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %cmp = icmp sge i32 %4, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut1 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %5, i32 0, i32 7
  %6 = load i32**, i32*** %lut1, align 8, !tbaa !14
  %cmp2 = icmp eq i32** %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call = call noalias i8* @malloc(i64 128) #7
  %7 = bitcast i8* %call to i32**
  %8 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut4 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %8, i32 0, i32 7
  store i32** %7, i32*** %lut4, align 8, !tbaa !14
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %call6 = call noalias i8* @malloc(i64 1024) #7
  %9 = bitcast i8* %call6 to i32*
  %10 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut7 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %11, i32 0, i32 7
  %12 = load i32**, i32*** %lut7, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  store i32* %9, i32** %arrayidx, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %13 = load i32, i32* %i, align 4, !tbaa !22
  %cmp8 = icmp slt i32 %13, 256
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast double* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom9 = sext i32 %15 to i64
  %16 = load double*, double** %lut.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 %idxprom9
  %17 = load double, double* %arrayidx10, align 8, !tbaa !48
  %sub = fsub double 1.000000e+00, %17
  store double %sub, double* %v, align 8, !tbaa !48
  %18 = load double, double* %v, align 8, !tbaa !48
  %mul = fmul double 0x4170000000000000, %18
  %add = fadd double 5.000000e-01, %mul
  %call11 = call double @floor(double %add) #10
  %conv = fptosi double %call11 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32, i32* %plane.addr, align 4, !tbaa !22
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct._RinkjScreenEb*, %struct._RinkjScreenEb** %z, align 8, !tbaa !1
  %lut14 = getelementptr inbounds %struct._RinkjScreenEb, %struct._RinkjScreenEb* %21, i32 0, i32 7
  %22 = load i32**, i32*** %lut14, align 8, !tbaa !14
  %arrayidx15 = getelementptr inbounds i32*, i32** %22, i64 %idxprom13
  %23 = load i32*, i32** %arrayidx15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom12
  store i32 %conv, i32* %arrayidx16, align 4, !tbaa !22
  %24 = bitcast double* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct._RinkjScreenEb** %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
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

declare i8* @rinkj_config_keyval(i8*, i8**, i8**) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

declare i32 @rinkj_device_set_param_int(%struct._RinkjDevice*, i8*, i32) #4

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #6 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @rinkj_device_write(%struct._RinkjDevice*, i8**) #4

declare void @even_better_free(%struct._EvenBetterCtx*) #4

declare void @even_better_line(%struct._EvenBetterCtx*, i8**, i8**) #4

declare %struct._EvenBetterCtx* @even_better_new(%struct.EvenBetterParams*) #4

declare i32 @rinkj_device_init(%struct._RinkjDevice*, %struct._RinkjDeviceParams*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"_RinkjScreenEb", !7, i64 0, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !2, i64 48, !2, i64 56, !2, i64 64, !9, i64 72, !9, i64 80, !8, i64 88, !8, i64 92, !8, i64 96}
!7 = !{!"_RinkjDevice", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24}
!8 = !{!"int", !3, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!6, !2, i64 16}
!11 = !{!6, !2, i64 8}
!12 = !{!6, !8, i64 24}
!13 = !{!6, !2, i64 48}
!14 = !{!6, !2, i64 64}
!15 = !{!6, !9, i64 72}
!16 = !{!6, !9, i64 80}
!17 = !{!6, !8, i64 92}
!18 = !{!6, !8, i64 96}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !3, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!8, !8, i64 0}
!23 = !{!6, !8, i64 44}
!24 = !{!6, !8, i64 32}
!25 = !{!6, !2, i64 56}
!26 = !{!6, !8, i64 88}
!27 = !{!6, !8, i64 40}
!28 = !{!6, !8, i64 36}
!29 = !{!30, !8, i64 8}
!30 = !{!"_RinkjDeviceParams", !8, i64 0, !8, i64 4, !8, i64 8, !2, i64 16}
!31 = !{!30, !8, i64 0}
!32 = !{!30, !8, i64 4}
!33 = !{!30, !2, i64 16}
!34 = !{!35, !8, i64 0}
!35 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !2, i64 16, !9, i64 24, !8, i64 32, !2, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !2, i64 64, !3, i64 72, !9, i64 80}
!36 = !{!35, !8, i64 4}
!37 = !{!35, !8, i64 12}
!38 = !{!35, !2, i64 16}
!39 = !{!35, !8, i64 8}
!40 = !{!35, !8, i64 32}
!41 = !{!35, !9, i64 24}
!42 = !{!35, !2, i64 40}
!43 = !{!35, !8, i64 48}
!44 = !{!35, !8, i64 52}
!45 = !{!35, !8, i64 56}
!46 = !{!35, !2, i64 64}
!47 = !{!35, !9, i64 80}
!48 = !{!9, !9, i64 0}
