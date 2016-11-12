; ModuleID = './cmssamp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsCIELab = type { double, double, double }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsCIExyY = type { double, double, double }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }

@CreateRoundtripXForm.States = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %BlackPoint, i8* %hProfile, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %devClass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !5
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %devClass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetDeviceClass(i8* %1) #5
  store i32 %call, i32* %devClass, align 4, !tbaa !7
  %2 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp = icmp eq i32 %2, 1818848875
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %3, 1633842036
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp3 = icmp eq i32 %4, 1852662636
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 2
  store double 0.000000e+00, double* %Z, align 8, !tbaa !8
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %6, i32 0, i32 1
  store double 0.000000e+00, double* %Y, align 8, !tbaa !11
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 0
  store double 0.000000e+00, double* %X, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %8 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %9, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.12

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %10, 2
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true.6
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z9 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 2
  store double 0.000000e+00, double* %Z9, align 8, !tbaa !8
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y10 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 1
  store double 0.000000e+00, double* %Y10, align 8, !tbaa !11
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 0
  store double 0.000000e+00, double* %X11, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %14 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call13 = call i32 @cmsGetEncodedICCversion(i8* %14) #5
  %cmp14 = icmp uge i32 %call13, 67108864
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.27

land.lhs.true.15:                                 ; preds = %if.end.12
  %15 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %15, 0
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15
  %16 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %16, 2
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.15
  %17 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call20 = call i32 @cmsIsMatrixShaper(i8* %17) #5
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.19
  %18 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %call22 = call i32 @BlackPointAsDarkerColorant(i8* %18, i32 1, %struct.cmsCIEXYZ* %19, i32 0) #5
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.19
  %20 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X24 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %20, i32 0, i32 0
  store double 3.360000e-03, double* %X24, align 8, !tbaa !12
  %21 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y25 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %21, i32 0, i32 1
  store double 3.473100e-03, double* %Y25, align 8, !tbaa !11
  %22 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z26 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %22, i32 0, i32 2
  store double 2.870000e-03, double* %Z26, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false.17, %if.end.12
  %23 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %23, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.37

land.lhs.true.29:                                 ; preds = %if.end.27
  %24 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call30 = call i32 @cmsGetDeviceClass(i8* %24) #5
  %cmp31 = icmp eq i32 %call30, 1886549106
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %25 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call33 = call i32 @cmsGetColorSpace(i8* %25) #5
  %cmp34 = icmp eq i32 %call33, 1129142603
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %26 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call36 = call i32 @BlackPointUsingPerceptualBlack(%struct.cmsCIEXYZ* %26, i8* %27) #5
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %land.lhs.true.32, %land.lhs.true.29, %if.end.27
  %28 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %29 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %30 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %31 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call38 = call i32 @BlackPointAsDarkerColorant(i8* %28, i32 %29, %struct.cmsCIEXYZ* %30, i32 %31) #5
  store i32 %call38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.35, %if.end.23, %if.then.21, %if.then.8, %if.then
  %32 = bitcast i32* %devClass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @cmsGetDeviceClass(i8*) #2

declare i32 @cmsGetEncodedICCversion(i8*) #2

declare i32 @cmsIsMatrixShaper(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @BlackPointAsDarkerColorant(i8* %hInput, i32 %Intent, %struct.cmsCIEXYZ* %BlackPoint, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %hInput.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %dwFlags.addr = alloca i32, align 4
  %Black = alloca i16*, align 8
  %xform = alloca i8*, align 8
  %Space = alloca i32, align 4
  %nChannels = alloca i32, align 4
  %dwFormat = alloca i32, align 4
  %hLab = alloca i8*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  %BlackXYZ = alloca %struct.cmsCIEXYZ, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hInput, i8** %hInput.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !5
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast i16** %Black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %Space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %dwFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %hInput.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %9) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %10 = load i8*, i8** %hInput.addr, align 8, !tbaa !1
  %11 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %call1 = call i32 @cmsIsIntentSupported(i8* %10, i32 %11, i32 0) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 2
  store double 0.000000e+00, double* %Z, align 8, !tbaa !8
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 1
  store double 0.000000e+00, double* %Y, align 8, !tbaa !11
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %14, i32 0, i32 0
  store double 0.000000e+00, double* %X, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %hInput.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsFormatterForColorspaceOfProfile(i8* %15, i32 2, i32 0) #5
  store i32 %call2, i32* %dwFormat, align 4, !tbaa !5
  %16 = load i8*, i8** %hInput.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetColorSpace(i8* %16) #5
  store i32 %call3, i32* %Space, align 4, !tbaa !7
  %17 = load i32, i32* %Space, align 4, !tbaa !7
  %call4 = call i32 @_cmsEndPointsBySpace(i32 %17, i16** null, i16** %Black, i32* %nChannels) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %18 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z7 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %18, i32 0, i32 2
  store double 0.000000e+00, double* %Z7, align 8, !tbaa !8
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %19, i32 0, i32 1
  store double 0.000000e+00, double* %Y8, align 8, !tbaa !11
  %20 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X9 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %20, i32 0, i32 0
  store double 0.000000e+00, double* %X9, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %21 = load i32, i32* %nChannels, align 4, !tbaa !5
  %22 = load i32, i32* %dwFormat, align 4, !tbaa !5
  %shr = lshr i32 %22, 3
  %and = and i32 %shr, 15
  %cmp = icmp ne i32 %21, %and
  br i1 %cmp, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.10
  %23 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z12 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %23, i32 0, i32 2
  store double 0.000000e+00, double* %Z12, align 8, !tbaa !8
  %24 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %24, i32 0, i32 1
  store double 0.000000e+00, double* %Y13, align 8, !tbaa !11
  %25 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X14 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %25, i32 0, i32 0
  store double 0.000000e+00, double* %X14, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call16 = call i8* @cmsCreateLab2ProfileTHR(%struct._cmsContext_struct* %26, %struct.cmsCIExyY* null) #5
  store i8* %call16, i8** %hLab, align 8, !tbaa !1
  %27 = load i8*, i8** %hLab, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %27, null
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.15
  %28 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z19 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %28, i32 0, i32 2
  store double 0.000000e+00, double* %Z19, align 8, !tbaa !8
  %29 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y20 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %29, i32 0, i32 1
  store double 0.000000e+00, double* %Y20, align 8, !tbaa !11
  %30 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X21 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %30, i32 0, i32 0
  store double 0.000000e+00, double* %X21, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.15
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %32 = load i8*, i8** %hInput.addr, align 8, !tbaa !1
  %33 = load i32, i32* %dwFormat, align 4, !tbaa !5
  %34 = load i8*, i8** %hLab, align 8, !tbaa !1
  %35 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %call23 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %31, i8* %32, i32 %33, i8* %34, i32 4849688, i32 %35, i32 320) #5
  store i8* %call23, i8** %xform, align 8, !tbaa !1
  %36 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call24 = call i32 @cmsCloseProfile(i8* %36) #5
  %37 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %37, null
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.22
  %38 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z27 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %38, i32 0, i32 2
  store double 0.000000e+00, double* %Z27, align 8, !tbaa !8
  %39 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y28 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %39, i32 0, i32 1
  store double 0.000000e+00, double* %Y28, align 8, !tbaa !11
  %40 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X29 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %40, i32 0, i32 0
  store double 0.000000e+00, double* %X29, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.22
  %41 = load i8*, i8** %xform, align 8, !tbaa !1
  %42 = load i16*, i16** %Black, align 8, !tbaa !1
  %43 = bitcast i16* %42 to i8*
  %44 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @cmsDoTransform(i8* %41, i8* %43, i8* %44, i32 1) #5
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8, !tbaa !8
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double 0.000000e+00, double* %a, align 8, !tbaa !11
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %45 = load double, double* %L, align 8, !tbaa !12
  %cmp31 = fcmp ogt double %45, 5.000000e+01
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %L33 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double 5.000000e+01, double* %L33, align 8, !tbaa !12
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %46 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %46) #5
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* null, %struct.cmsCIEXYZ* %BlackXYZ, %struct.cmsCIELab* %Lab) #5
  %47 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %cmp35 = icmp ne %struct.cmsCIEXYZ* %47, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %48 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %49 = bitcast %struct.cmsCIEXYZ* %48 to i8*
  %50 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 8, i1 false), !tbaa.struct !13
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.26, %if.then.18, %if.then.11, %if.then.6, %if.then
  %51 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %52) #1
  %53 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %53) #1
  %54 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %dwFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %Space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i16** %Black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @cmsGetColorSpace(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @BlackPointUsingPerceptualBlack(%struct.cmsCIEXYZ* %BlackPoint, i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %hProfile.addr = alloca i8*, align 8
  %hRoundTrip = alloca i8*, align 8
  %LabIn = alloca %struct.cmsCIELab, align 8
  %LabOut = alloca %struct.cmsCIELab, align 8
  %BlackXYZ = alloca %struct.cmsCIEXYZ, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hRoundTrip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsCIELab* %LabIn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.cmsCIELab* %LabOut to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsIsIntentSupported(i8* %4, i32 0, i32 0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 2
  store double 0.000000e+00, double* %Z, align 8, !tbaa !8
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %6, i32 0, i32 1
  store double 0.000000e+00, double* %Y, align 8, !tbaa !11
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 0
  store double 0.000000e+00, double* %X, align 8, !tbaa !12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @CreateRoundtripXForm(i8* %8, i32 0) #5
  store i8* %call1, i8** %hRoundTrip, align 8, !tbaa !1
  %9 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %10, i32 0, i32 2
  store double 0.000000e+00, double* %Z3, align 8, !tbaa !8
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 1
  store double 0.000000e+00, double* %Y4, align 8, !tbaa !11
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X5 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 0
  store double 0.000000e+00, double* %X5, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabIn, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8, !tbaa !8
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabIn, i32 0, i32 1
  store double 0.000000e+00, double* %a, align 8, !tbaa !11
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabIn, i32 0, i32 0
  store double 0.000000e+00, double* %L, align 8, !tbaa !12
  %13 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  %14 = bitcast %struct.cmsCIELab* %LabIn to i8*
  %15 = bitcast %struct.cmsCIELab* %LabOut to i8*
  call void @cmsDoTransform(i8* %13, i8* %14, i8* %15, i32 1) #5
  %L7 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabOut, i32 0, i32 0
  %16 = load double, double* %L7, align 8, !tbaa !12
  %cmp8 = fcmp ogt double %16, 5.000000e+01
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %L10 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabOut, i32 0, i32 0
  store double 5.000000e+01, double* %L10, align 8, !tbaa !12
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %b12 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabOut, i32 0, i32 2
  store double 0.000000e+00, double* %b12, align 8, !tbaa !8
  %a13 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %LabOut, i32 0, i32 1
  store double 0.000000e+00, double* %a13, align 8, !tbaa !11
  %17 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %17) #5
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* null, %struct.cmsCIEXYZ* %BlackXYZ, %struct.cmsCIELab* %LabOut) #5
  %18 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %cmp14 = icmp ne %struct.cmsCIEXYZ* %18, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %20 = bitcast %struct.cmsCIEXYZ* %19 to i8*
  %21 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 8, i1 false), !tbaa.struct !13
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.2, %if.then
  %22 = bitcast %struct.cmsCIEXYZ* %BlackXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #1
  %23 = bitcast %struct.cmsCIELab* %LabOut to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #1
  %24 = bitcast %struct.cmsCIELab* %LabIn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %24) #1
  %25 = bitcast i8** %hRoundTrip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmsDetectDestinationBlackPoint(%struct.cmsCIEXYZ* %BlackPoint, i8* %hProfile, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %BlackPoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %hRoundTrip = alloca i8*, align 8
  %InitialLab = alloca %struct.cmsCIELab, align 8
  %destLab = alloca %struct.cmsCIELab, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  %inRamp = alloca [256 x double], align 16
  %outRamp = alloca [256 x double], align 16
  %MinL = alloca double, align 8
  %MaxL = alloca double, align 8
  %NearlyStraightMidrange = alloca i32, align 4
  %yRamp = alloca [256 x double], align 16
  %x = alloca [256 x double], align 16
  %y = alloca [256 x double], align 16
  %lo = alloca double, align 8
  %hi = alloca double, align 8
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %devClass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %IniXYZ = alloca %struct.cmsCIEXYZ, align 8
  %ff = alloca double, align 8
  store %struct.cmsCIEXYZ* %BlackPoint, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !5
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %hRoundTrip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %hRoundTrip, align 8, !tbaa !1
  %2 = bitcast %struct.cmsCIELab* %InitialLab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.cmsCIELab* %destLab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast [256 x double]* %inRamp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #1
  %6 = bitcast [256 x double]* %outRamp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %6) #1
  %7 = bitcast double* %MinL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %MaxL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %NearlyStraightMidrange to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1, i32* %NearlyStraightMidrange, align 4, !tbaa !5
  %10 = bitcast [256 x double]* %yRamp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %10) #1
  %11 = bitcast [256 x double]* %x to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %11) #1
  %12 = bitcast [256 x double]* %y to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %12) #1
  %13 = bitcast double* %lo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast double* %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %devClass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetDeviceClass(i8* %18) #5
  store i32 %call, i32* %devClass, align 4, !tbaa !7
  %19 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp = icmp eq i32 %19, 1818848875
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %20, 1633842036
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %21 = load i32, i32* %devClass, align 4, !tbaa !7
  %cmp3 = icmp eq i32 %21, 1852662636
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %22 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %22, i32 0, i32 2
  store double 0.000000e+00, double* %Z, align 8, !tbaa !8
  %23 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %23, i32 0, i32 1
  store double 0.000000e+00, double* %Y, align 8, !tbaa !11
  %24 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %24, i32 0, i32 0
  store double 0.000000e+00, double* %X, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end:                                           ; preds = %lor.lhs.false.2
  %25 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %25, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %26 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %26, 1
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.12

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %27 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %27, 2
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true.6
  %28 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z9 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %28, i32 0, i32 2
  store double 0.000000e+00, double* %Z9, align 8, !tbaa !8
  %29 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y10 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %29, i32 0, i32 1
  store double 0.000000e+00, double* %Y10, align 8, !tbaa !11
  %30 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %30, i32 0, i32 0
  store double 0.000000e+00, double* %X11, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.12:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  %31 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call13 = call i32 @cmsGetEncodedICCversion(i8* %31) #5
  %cmp14 = icmp uge i32 %call13, 67108864
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.27

land.lhs.true.15:                                 ; preds = %if.end.12
  %32 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %32, 0
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15
  %33 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %33, 2
  br i1 %cmp18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.15
  %34 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call20 = call i32 @cmsIsMatrixShaper(i8* %34) #5
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.19
  %35 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %36 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %call22 = call i32 @BlackPointAsDarkerColorant(i8* %35, i32 1, %struct.cmsCIEXYZ* %36, i32 0) #5
  store i32 %call22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.23:                                        ; preds = %if.then.19
  %37 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X24 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %37, i32 0, i32 0
  store double 3.360000e-03, double* %X24, align 8, !tbaa !12
  %38 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y25 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %38, i32 0, i32 1
  store double 3.473100e-03, double* %Y25, align 8, !tbaa !11
  %39 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z26 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %39, i32 0, i32 2
  store double 2.870000e-03, double* %Z26, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.27:                                        ; preds = %lor.lhs.false.17, %if.end.12
  %40 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call28 = call i32 @cmsGetColorSpace(i8* %40) #5
  store i32 %call28, i32* %ColorSpace, align 4, !tbaa !7
  %41 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %42 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %call29 = call i32 @cmsIsCLUT(i8* %41, i32 %42, i32 1) #5
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.then.37

lor.lhs.false.31:                                 ; preds = %if.end.27
  %43 = load i32, i32* %ColorSpace, align 4, !tbaa !7
  %cmp32 = icmp ne i32 %43, 1196573017
  br i1 %cmp32, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %44 = load i32, i32* %ColorSpace, align 4, !tbaa !7
  %cmp34 = icmp ne i32 %44, 1380401696
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.39

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %45 = load i32, i32* %ColorSpace, align 4, !tbaa !7
  %cmp36 = icmp ne i32 %45, 1129142603
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %land.lhs.true.35, %if.end.27
  %46 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %48 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %49 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call38 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %46, i8* %47, i32 %48, i32 %49) #5
  store i32 %call38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.39:                                        ; preds = %land.lhs.true.35, %land.lhs.true.33, %lor.lhs.false.31
  %50 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %50, 1
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.39
  %51 = bitcast %struct.cmsCIEXYZ* %IniXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %51) #1
  %52 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %53 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %54 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call42 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %IniXYZ, i8* %52, i32 %53, i32 %54) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.41
  call void @cmsXYZ2Lab(%struct.cmsCIEXYZ* null, %struct.cmsCIELab* %InitialLab, %struct.cmsCIEXYZ* %IniXYZ) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.44
  %55 = bitcast %struct.cmsCIEXYZ* %IniXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.228 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.else:                                          ; preds = %if.end.39
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 0
  store double 0.000000e+00, double* %L, align 8, !tbaa !12
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  store double 0.000000e+00, double* %a, align 8, !tbaa !11
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8, !tbaa !8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %cleanup.cont
  %56 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %57 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %call47 = call i8* @CreateRoundtripXForm(i8* %56, i32 %57) #5
  store i8* %call47, i8** %hRoundTrip, align 8, !tbaa !1
  %58 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %58, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.50:                                        ; preds = %if.end.46
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.50
  %59 = load i32, i32* %l, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %59, 256
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %l, align 4, !tbaa !5
  %conv = sitofp i32 %60 to double
  %mul = fmul double %conv, 1.000000e+02
  %div = fdiv double %mul, 2.550000e+02
  %L52 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %div, double* %L52, align 8, !tbaa !12
  %a53 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  %61 = load double, double* %a53, align 8, !tbaa !11
  %cmp54 = fcmp ogt double -5.000000e+01, %61
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %a56 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  %62 = load double, double* %a56, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ -5.000000e+01, %cond.true ], [ %62, %cond.false ]
  %cmp57 = fcmp olt double 5.000000e+01, %cond
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.end
  br label %cond.end.69

cond.false.60:                                    ; preds = %cond.end
  %a61 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  %63 = load double, double* %a61, align 8, !tbaa !11
  %cmp62 = fcmp ogt double -5.000000e+01, %63
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.false.60
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.false.60
  %a66 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  %64 = load double, double* %a66, align 8, !tbaa !11
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.64
  %cond68 = phi double [ -5.000000e+01, %cond.true.64 ], [ %64, %cond.false.65 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end.67, %cond.true.59
  %cond70 = phi double [ 5.000000e+01, %cond.true.59 ], [ %cond68, %cond.end.67 ]
  %a71 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %cond70, double* %a71, align 8, !tbaa !11
  %b72 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  %65 = load double, double* %b72, align 8, !tbaa !8
  %cmp73 = fcmp ogt double -5.000000e+01, %65
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.69
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end.69
  %b77 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  %66 = load double, double* %b77, align 8, !tbaa !8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi double [ -5.000000e+01, %cond.true.75 ], [ %66, %cond.false.76 ]
  %cmp80 = fcmp olt double 5.000000e+01, %cond79
  br i1 %cmp80, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.end.78
  br label %cond.end.92

cond.false.83:                                    ; preds = %cond.end.78
  %b84 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  %67 = load double, double* %b84, align 8, !tbaa !8
  %cmp85 = fcmp ogt double -5.000000e+01, %67
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.false.83
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.false.83
  %b89 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  %68 = load double, double* %b89, align 8, !tbaa !8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.87
  %cond91 = phi double [ -5.000000e+01, %cond.true.87 ], [ %68, %cond.false.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.82
  %cond93 = phi double [ 5.000000e+01, %cond.true.82 ], [ %cond91, %cond.end.90 ]
  %b94 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %cond93, double* %b94, align 8, !tbaa !8
  %69 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  %70 = bitcast %struct.cmsCIELab* %Lab to i8*
  %71 = bitcast %struct.cmsCIELab* %destLab to i8*
  call void @cmsDoTransform(i8* %69, i8* %70, i8* %71, i32 1) #5
  %L95 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %72 = load double, double* %L95, align 8, !tbaa !12
  %73 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %73 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* %inRamp, i32 0, i64 %idxprom
  store double %72, double* %arrayidx, align 8, !tbaa !14
  %L96 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %destLab, i32 0, i32 0
  %74 = load double, double* %L96, align 8, !tbaa !12
  %75 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom97 = sext i32 %75 to i64
  %arrayidx98 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom97
  store double %74, double* %arrayidx98, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %cond.end.92
  %76 = load i32, i32* %l, align 4, !tbaa !5
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 254, i32* %l, align 4, !tbaa !5
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.120, %for.end
  %77 = load i32, i32* %l, align 4, !tbaa !5
  %cmp100 = icmp sgt i32 %77, 0
  br i1 %cmp100, label %for.body.102, label %for.end.121

for.body.102:                                     ; preds = %for.cond.99
  %78 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom103 = sext i32 %78 to i64
  %arrayidx104 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom103
  %79 = load double, double* %arrayidx104, align 8, !tbaa !14
  %80 = load i32, i32* %l, align 4, !tbaa !5
  %add = add nsw i32 %80, 1
  %idxprom105 = sext i32 %add to i64
  %arrayidx106 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom105
  %81 = load double, double* %arrayidx106, align 8, !tbaa !14
  %cmp107 = fcmp olt double %79, %81
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %for.body.102
  %82 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom110 = sext i32 %82 to i64
  %arrayidx111 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom110
  %83 = load double, double* %arrayidx111, align 8, !tbaa !14
  br label %cond.end.116

cond.false.112:                                   ; preds = %for.body.102
  %84 = load i32, i32* %l, align 4, !tbaa !5
  %add113 = add nsw i32 %84, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom114
  %85 = load double, double* %arrayidx115, align 8, !tbaa !14
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.112, %cond.true.109
  %cond117 = phi double [ %83, %cond.true.109 ], [ %85, %cond.false.112 ]
  %86 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom118 = sext i32 %86 to i64
  %arrayidx119 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom118
  store double %cond117, double* %arrayidx119, align 8, !tbaa !14
  br label %for.inc.120

for.inc.120:                                      ; preds = %cond.end.116
  %87 = load i32, i32* %l, align 4, !tbaa !5
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %l, align 4, !tbaa !5
  br label %for.cond.99

for.end.121:                                      ; preds = %for.cond.99
  %arrayidx122 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 0
  %88 = load double, double* %arrayidx122, align 8, !tbaa !14
  %arrayidx123 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 255
  %89 = load double, double* %arrayidx123, align 8, !tbaa !14
  %cmp124 = fcmp olt double %88, %89
  br i1 %cmp124, label %if.end.130, label %if.then.126

if.then.126:                                      ; preds = %for.end.121
  %90 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %90) #5
  %91 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z127 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %91, i32 0, i32 2
  store double 0.000000e+00, double* %Z127, align 8, !tbaa !8
  %92 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y128 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %92, i32 0, i32 1
  store double 0.000000e+00, double* %Y128, align 8, !tbaa !11
  %93 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X129 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %93, i32 0, i32 0
  store double 0.000000e+00, double* %X129, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.130:                                       ; preds = %for.end.121
  store i32 1, i32* %NearlyStraightMidrange, align 4, !tbaa !5
  %arrayidx131 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 0
  %94 = load double, double* %arrayidx131, align 8, !tbaa !14
  store double %94, double* %MinL, align 8, !tbaa !14
  %arrayidx132 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 255
  %95 = load double, double* %arrayidx132, align 8, !tbaa !14
  store double %95, double* %MaxL, align 8, !tbaa !14
  %96 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %96, 1
  br i1 %cmp133, label %if.then.135, label %if.end.163

if.then.135:                                      ; preds = %if.end.130
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.157, %if.then.135
  %97 = load i32, i32* %l, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %97, 256
  br i1 %cmp137, label %for.body.139, label %for.end.159

for.body.139:                                     ; preds = %for.cond.136
  %98 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom140 = sext i32 %98 to i64
  %arrayidx141 = getelementptr inbounds [256 x double], [256 x double]* %inRamp, i32 0, i64 %idxprom140
  %99 = load double, double* %arrayidx141, align 8, !tbaa !14
  %100 = load double, double* %MinL, align 8, !tbaa !14
  %101 = load double, double* %MaxL, align 8, !tbaa !14
  %102 = load double, double* %MinL, align 8, !tbaa !14
  %sub = fsub double %101, %102
  %mul142 = fmul double 2.000000e-01, %sub
  %add143 = fadd double %100, %mul142
  %cmp144 = fcmp ole double %99, %add143
  br i1 %cmp144, label %if.end.156, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %for.body.139
  %103 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom147 = sext i32 %103 to i64
  %arrayidx148 = getelementptr inbounds [256 x double], [256 x double]* %inRamp, i32 0, i64 %idxprom147
  %104 = load double, double* %arrayidx148, align 8, !tbaa !14
  %105 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom149 = sext i32 %105 to i64
  %arrayidx150 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom149
  %106 = load double, double* %arrayidx150, align 8, !tbaa !14
  %sub151 = fsub double %104, %106
  %call152 = call double @fabs(double %sub151) #6
  %cmp153 = fcmp olt double %call152, 4.000000e+00
  br i1 %cmp153, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %lor.lhs.false.146
  store i32 0, i32* %NearlyStraightMidrange, align 4, !tbaa !5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %lor.lhs.false.146, %for.body.139
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %107 = load i32, i32* %l, align 4, !tbaa !5
  %inc158 = add nsw i32 %107, 1
  store i32 %inc158, i32* %l, align 4, !tbaa !5
  br label %for.cond.136

for.end.159:                                      ; preds = %for.cond.136
  %108 = load i32, i32* %NearlyStraightMidrange, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %108, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.end.159
  %109 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* null, %struct.cmsCIEXYZ* %109, %struct.cmsCIELab* %InitialLab) #5
  %110 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %110) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.162:                                       ; preds = %for.end.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.130
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.175, %if.end.163
  %111 = load i32, i32* %l, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %111, 256
  br i1 %cmp165, label %for.body.167, label %for.end.177

for.body.167:                                     ; preds = %for.cond.164
  %112 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom168 = sext i32 %112 to i64
  %arrayidx169 = getelementptr inbounds [256 x double], [256 x double]* %outRamp, i32 0, i64 %idxprom168
  %113 = load double, double* %arrayidx169, align 8, !tbaa !14
  %114 = load double, double* %MinL, align 8, !tbaa !14
  %sub170 = fsub double %113, %114
  %115 = load double, double* %MaxL, align 8, !tbaa !14
  %116 = load double, double* %MinL, align 8, !tbaa !14
  %sub171 = fsub double %115, %116
  %div172 = fdiv double %sub170, %sub171
  %117 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom173 = sext i32 %117 to i64
  %arrayidx174 = getelementptr inbounds [256 x double], [256 x double]* %yRamp, i32 0, i64 %idxprom173
  store double %div172, double* %arrayidx174, align 8, !tbaa !14
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.167
  %118 = load i32, i32* %l, align 4, !tbaa !5
  %inc176 = add nsw i32 %118, 1
  store i32 %inc176, i32* %l, align 4, !tbaa !5
  br label %for.cond.164

for.end.177:                                      ; preds = %for.cond.164
  %119 = load i32, i32* %Intent.addr, align 4, !tbaa !5
  %cmp178 = icmp eq i32 %119, 1
  br i1 %cmp178, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %for.end.177
  store double 1.000000e-01, double* %lo, align 8, !tbaa !14
  store double 5.000000e-01, double* %hi, align 8, !tbaa !14
  br label %if.end.182

if.else.181:                                      ; preds = %for.end.177
  store double 3.000000e-02, double* %lo, align 8, !tbaa !14
  store double 2.500000e-01, double* %hi, align 8, !tbaa !14
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181, %if.then.180
  store i32 0, i32* %n, align 4, !tbaa !5
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.205, %if.end.182
  %120 = load i32, i32* %l, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %120, 256
  br i1 %cmp184, label %for.body.186, label %for.end.207

for.body.186:                                     ; preds = %for.cond.183
  %121 = bitcast double* %ff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  %122 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom187 = sext i32 %122 to i64
  %arrayidx188 = getelementptr inbounds [256 x double], [256 x double]* %yRamp, i32 0, i64 %idxprom187
  %123 = load double, double* %arrayidx188, align 8, !tbaa !14
  store double %123, double* %ff, align 8, !tbaa !14
  %124 = load double, double* %ff, align 8, !tbaa !14
  %125 = load double, double* %lo, align 8, !tbaa !14
  %cmp189 = fcmp oge double %124, %125
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.204

land.lhs.true.191:                                ; preds = %for.body.186
  %126 = load double, double* %ff, align 8, !tbaa !14
  %127 = load double, double* %hi, align 8, !tbaa !14
  %cmp192 = fcmp olt double %126, %127
  br i1 %cmp192, label %if.then.194, label %if.end.204

if.then.194:                                      ; preds = %land.lhs.true.191
  %128 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom195 = sext i32 %128 to i64
  %arrayidx196 = getelementptr inbounds [256 x double], [256 x double]* %inRamp, i32 0, i64 %idxprom195
  %129 = load double, double* %arrayidx196, align 8, !tbaa !14
  %130 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom197 = sext i32 %130 to i64
  %arrayidx198 = getelementptr inbounds [256 x double], [256 x double]* %x, i32 0, i64 %idxprom197
  store double %129, double* %arrayidx198, align 8, !tbaa !14
  %131 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom199 = sext i32 %131 to i64
  %arrayidx200 = getelementptr inbounds [256 x double], [256 x double]* %yRamp, i32 0, i64 %idxprom199
  %132 = load double, double* %arrayidx200, align 8, !tbaa !14
  %133 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom201 = sext i32 %133 to i64
  %arrayidx202 = getelementptr inbounds [256 x double], [256 x double]* %y, i32 0, i64 %idxprom201
  store double %132, double* %arrayidx202, align 8, !tbaa !14
  %134 = load i32, i32* %n, align 4, !tbaa !5
  %inc203 = add nsw i32 %134, 1
  store i32 %inc203, i32* %n, align 4, !tbaa !5
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.194, %land.lhs.true.191, %for.body.186
  %135 = bitcast double* %ff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %136 = load i32, i32* %l, align 4, !tbaa !5
  %inc206 = add nsw i32 %136, 1
  store i32 %inc206, i32* %l, align 4, !tbaa !5
  br label %for.cond.183

for.end.207:                                      ; preds = %for.cond.183
  %137 = load i32, i32* %n, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %137, 3
  br i1 %cmp208, label %if.then.210, label %if.end.214

if.then.210:                                      ; preds = %for.end.207
  %138 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %138) #5
  %139 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Z211 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %139, i32 0, i32 2
  store double 0.000000e+00, double* %Z211, align 8, !tbaa !8
  %140 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %Y212 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %140, i32 0, i32 1
  store double 0.000000e+00, double* %Y212, align 8, !tbaa !11
  %141 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  %X213 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %141, i32 0, i32 0
  store double 0.000000e+00, double* %X213, align 8, !tbaa !12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.214:                                       ; preds = %for.end.207
  %142 = load i32, i32* %n, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [256 x double], [256 x double]* %x, i32 0, i32 0
  %arraydecay215 = getelementptr inbounds [256 x double], [256 x double]* %y, i32 0, i32 0
  %call216 = call double @RootOfLeastSquaresFitQuadraticCurve(i32 %142, double* %arraydecay, double* %arraydecay215) #5
  %L217 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %call216, double* %L217, align 8, !tbaa !12
  %L218 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %143 = load double, double* %L218, align 8, !tbaa !12
  %cmp219 = fcmp olt double %143, 0.000000e+00
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %if.end.214
  %L222 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double 0.000000e+00, double* %L222, align 8, !tbaa !12
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %if.end.214
  %a224 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 1
  %144 = load double, double* %a224, align 8, !tbaa !11
  %a225 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %144, double* %a225, align 8, !tbaa !11
  %b226 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %InitialLab, i32 0, i32 2
  %145 = load double, double* %b226, align 8, !tbaa !8
  %b227 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %145, double* %b227, align 8, !tbaa !8
  %146 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPoint.addr, align 8, !tbaa !1
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* null, %struct.cmsCIEXYZ* %146, %struct.cmsCIELab* %Lab) #5
  %147 = load i8*, i8** %hRoundTrip, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %147) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

cleanup.228:                                      ; preds = %if.end.223, %if.then.210, %if.then.161, %if.then.126, %if.then.49, %cleanup, %if.then.37, %if.end.23, %if.then.21, %if.then.8, %if.then
  %148 = bitcast i32* %devClass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast double* %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast double* %lo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast [256 x double]* %y to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %153) #1
  %154 = bitcast [256 x double]* %x to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %154) #1
  %155 = bitcast [256 x double]* %yRamp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %155) #1
  %156 = bitcast i32* %NearlyStraightMidrange to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast double* %MaxL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast double* %MinL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast [256 x double]* %outRamp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %159) #1
  %160 = bitcast [256 x double]* %inRamp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %160) #1
  %161 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %161) #1
  %162 = bitcast %struct.cmsCIELab* %destLab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %162) #1
  %163 = bitcast %struct.cmsCIELab* %InitialLab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %163) #1
  %164 = bitcast i8** %hRoundTrip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = load i32, i32* %retval
  ret i32 %166
}

declare i32 @cmsIsCLUT(i8*, i32, i32) #2

declare void @cmsXYZ2Lab(%struct.cmsCIEXYZ*, %struct.cmsCIELab*, %struct.cmsCIEXYZ*) #2

; Function Attrs: nounwind uwtable
define internal i8* @CreateRoundtripXForm(i8* %hProfile, i32 %nIntent) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %nIntent.addr = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %hLab = alloca i8*, align 8
  %xform = alloca i8*, align 8
  %BPC = alloca [4 x i32], align 16
  %States = alloca [4 x double], align 16
  %hProfiles = alloca [4 x i8*], align 16
  %Intents = alloca [4 x i32], align 16
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %nIntent, i32* %nIntent.addr, align 4, !tbaa !5
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %1) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %2 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call1 = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %3, %struct.cmsCIExyY* null) #5
  store i8* %call1, i8** %hLab, align 8, !tbaa !1
  %4 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [4 x i32]* %BPC to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast [4 x i32]* %BPC to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 16, i1 false)
  %7 = bitcast [4 x double]* %States to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast [4 x double]* %States to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([4 x double]* @CreateRoundtripXForm.States to i8*), i64 32, i32 16, i1 false)
  %9 = bitcast [4 x i8*]* %hProfiles to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast [4 x i32]* %Intents to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = load i8*, i8** %hLab, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %hProfiles, i32 0, i64 0
  store i8* %11, i8** %arrayidx, align 8, !tbaa !1
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hProfiles, i32 0, i64 1
  store i8* %12, i8** %arrayidx2, align 8, !tbaa !1
  %13 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hProfiles, i32 0, i64 2
  store i8* %13, i8** %arrayidx3, align 8, !tbaa !1
  %14 = load i8*, i8** %hLab, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hProfiles, i32 0, i64 3
  store i8* %14, i8** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 0
  store i32 1, i32* %arrayidx5, align 4, !tbaa !5
  %15 = load i32, i32* %nIntent.addr, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 1
  store i32 %15, i32* %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 2
  store i32 1, i32* %arrayidx7, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 3
  store i32 1, i32* %arrayidx8, align 4, !tbaa !5
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %hProfiles, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x double], [4 x double]* %States, i32 0, i32 0
  %call12 = call i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %16, i32 4, i8** %arraydecay, i32* %arraydecay9, i32* %arraydecay10, double* %arraydecay11, i8* null, i32 0, i32 4849688, i32 4849688, i32 320) #5
  store i8* %call12, i8** %xform, align 8, !tbaa !1
  %17 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call13 = call i32 @cmsCloseProfile(i8* %17) #5
  %18 = load i8*, i8** %xform, align 8, !tbaa !1
  %19 = bitcast [4 x i32]* %Intents to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast [4 x i8*]* %hProfiles to i8*
  call void @llvm.lifetime.end(i64 32, i8* %20) #1
  %21 = bitcast [4 x double]* %States to i8*
  call void @llvm.lifetime.end(i64 32, i8* %21) #1
  %22 = bitcast [4 x i32]* %BPC to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %18
}

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #2

declare void @cmsDeleteTransform(i8*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @cmsLab2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*, %struct.cmsCIELab*) #2

; Function Attrs: nounwind uwtable
define internal double @RootOfLeastSquaresFitQuadraticCurve(i32 %n, double* %x, double* %y) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %sum_x = alloca double, align 8
  %sum_x2 = alloca double, align 8
  %sum_x3 = alloca double, align 8
  %sum_x4 = alloca double, align 8
  %sum_y = alloca double, align 8
  %sum_yx = alloca double, align 8
  %sum_yx2 = alloca double, align 8
  %d = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %i = alloca i32, align 4
  %m = alloca %struct.cmsMAT3, align 8
  %v = alloca %struct.cmsVEC3, align 8
  %res = alloca %struct.cmsVEC3, align 8
  %cleanup.dest.slot = alloca i32
  %xn = alloca double, align 8
  %yn = alloca double, align 8
  %rt = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store double* %x, double** %x.addr, align 8, !tbaa !1
  store double* %y, double** %y.addr, align 8, !tbaa !1
  %0 = bitcast double* %sum_x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0.000000e+00, double* %sum_x, align 8, !tbaa !14
  %1 = bitcast double* %sum_x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store double 0.000000e+00, double* %sum_x2, align 8, !tbaa !14
  %2 = bitcast double* %sum_x3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store double 0.000000e+00, double* %sum_x3, align 8, !tbaa !14
  %3 = bitcast double* %sum_x4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store double 0.000000e+00, double* %sum_x4, align 8, !tbaa !14
  %4 = bitcast double* %sum_y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store double 0.000000e+00, double* %sum_y, align 8, !tbaa !14
  %5 = bitcast double* %sum_yx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store double 0.000000e+00, double* %sum_yx, align 8, !tbaa !14
  %6 = bitcast double* %sum_yx2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store double 0.000000e+00, double* %sum_yx2, align 8, !tbaa !14
  %7 = bitcast double* %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.start(i64 72, i8* %12) #1
  %13 = bitcast %struct.cmsVEC3* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast %struct.cmsVEC3* %res to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %16, %17
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast double* %xn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load double*, double** %x.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom
  %21 = load double, double* %arrayidx, align 8, !tbaa !14
  store double %21, double* %xn, align 8, !tbaa !14
  %22 = bitcast double* %yn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %23 to i64
  %24 = load double*, double** %y.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %24, i64 %idxprom2
  %25 = load double, double* %arrayidx3, align 8, !tbaa !14
  store double %25, double* %yn, align 8, !tbaa !14
  %26 = load double, double* %xn, align 8, !tbaa !14
  %27 = load double, double* %sum_x, align 8, !tbaa !14
  %add = fadd double %27, %26
  store double %add, double* %sum_x, align 8, !tbaa !14
  %28 = load double, double* %xn, align 8, !tbaa !14
  %29 = load double, double* %xn, align 8, !tbaa !14
  %mul = fmul double %28, %29
  %30 = load double, double* %sum_x2, align 8, !tbaa !14
  %add4 = fadd double %30, %mul
  store double %add4, double* %sum_x2, align 8, !tbaa !14
  %31 = load double, double* %xn, align 8, !tbaa !14
  %32 = load double, double* %xn, align 8, !tbaa !14
  %mul5 = fmul double %31, %32
  %33 = load double, double* %xn, align 8, !tbaa !14
  %mul6 = fmul double %mul5, %33
  %34 = load double, double* %sum_x3, align 8, !tbaa !14
  %add7 = fadd double %34, %mul6
  store double %add7, double* %sum_x3, align 8, !tbaa !14
  %35 = load double, double* %xn, align 8, !tbaa !14
  %36 = load double, double* %xn, align 8, !tbaa !14
  %mul8 = fmul double %35, %36
  %37 = load double, double* %xn, align 8, !tbaa !14
  %mul9 = fmul double %mul8, %37
  %38 = load double, double* %xn, align 8, !tbaa !14
  %mul10 = fmul double %mul9, %38
  %39 = load double, double* %sum_x4, align 8, !tbaa !14
  %add11 = fadd double %39, %mul10
  store double %add11, double* %sum_x4, align 8, !tbaa !14
  %40 = load double, double* %yn, align 8, !tbaa !14
  %41 = load double, double* %sum_y, align 8, !tbaa !14
  %add12 = fadd double %41, %40
  store double %add12, double* %sum_y, align 8, !tbaa !14
  %42 = load double, double* %yn, align 8, !tbaa !14
  %43 = load double, double* %xn, align 8, !tbaa !14
  %mul13 = fmul double %42, %43
  %44 = load double, double* %sum_yx, align 8, !tbaa !14
  %add14 = fadd double %44, %mul13
  store double %add14, double* %sum_yx, align 8, !tbaa !14
  %45 = load double, double* %yn, align 8, !tbaa !14
  %46 = load double, double* %xn, align 8, !tbaa !14
  %mul15 = fmul double %45, %46
  %47 = load double, double* %xn, align 8, !tbaa !14
  %mul16 = fmul double %mul15, %47
  %48 = load double, double* %sum_yx2, align 8, !tbaa !14
  %add17 = fadd double %48, %mul16
  store double %add17, double* %sum_yx2, align 8, !tbaa !14
  %49 = bitcast double* %yn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast double* %xn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %v18 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %m, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v18, i32 0, i64 0
  %52 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv = sitofp i32 %52 to double
  %53 = load double, double* %sum_x, align 8, !tbaa !14
  %54 = load double, double* %sum_x2, align 8, !tbaa !14
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx19, double %conv, double %53, double %54) #5
  %v20 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %m, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v20, i32 0, i64 1
  %55 = load double, double* %sum_x, align 8, !tbaa !14
  %56 = load double, double* %sum_x2, align 8, !tbaa !14
  %57 = load double, double* %sum_x3, align 8, !tbaa !14
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx21, double %55, double %56, double %57) #5
  %v22 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %m, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v22, i32 0, i64 2
  %58 = load double, double* %sum_x2, align 8, !tbaa !14
  %59 = load double, double* %sum_x3, align 8, !tbaa !14
  %60 = load double, double* %sum_x4, align 8, !tbaa !14
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx23, double %58, double %59, double %60) #5
  %61 = load double, double* %sum_y, align 8, !tbaa !14
  %62 = load double, double* %sum_yx, align 8, !tbaa !14
  %63 = load double, double* %sum_yx2, align 8, !tbaa !14
  call void @_cmsVEC3init(%struct.cmsVEC3* %v, double %61, double %62, double %63) #5
  %call = call i32 @_cmsMAT3solve(%struct.cmsVEC3* %res, %struct.cmsMAT3* %m, %struct.cmsVEC3* %v) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.end
  %n26 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %res, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %n26, i32 0, i64 2
  %64 = load double, double* %arrayidx27, align 8, !tbaa !14
  store double %64, double* %a, align 8, !tbaa !14
  %n28 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %res, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %n28, i32 0, i64 1
  %65 = load double, double* %arrayidx29, align 8, !tbaa !14
  store double %65, double* %b, align 8, !tbaa !14
  %n30 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %res, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %n30, i32 0, i64 0
  %66 = load double, double* %arrayidx31, align 8, !tbaa !14
  store double %66, double* %c, align 8, !tbaa !14
  %67 = load double, double* %a, align 8, !tbaa !14
  %call32 = call double @fabs(double %67) #6
  %cmp33 = fcmp olt double %call32, 1.000000e-10
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.25
  %68 = load double, double* %c, align 8, !tbaa !14
  %sub = fsub double -0.000000e+00, %68
  %69 = load double, double* %b, align 8, !tbaa !14
  %div = fdiv double %sub, %69
  %cmp36 = fcmp ogt double 5.000000e+01, %div
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %70 = load double, double* %c, align 8, !tbaa !14
  %sub38 = fsub double -0.000000e+00, %70
  %71 = load double, double* %b, align 8, !tbaa !14
  %div39 = fdiv double %sub38, %71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 5.000000e+01, %cond.true ], [ %div39, %cond.false ]
  %cmp40 = fcmp olt double 0.000000e+00, %cond
  br i1 %cmp40, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end
  br label %cond.end.54

cond.false.43:                                    ; preds = %cond.end
  %72 = load double, double* %c, align 8, !tbaa !14
  %sub44 = fsub double -0.000000e+00, %72
  %73 = load double, double* %b, align 8, !tbaa !14
  %div45 = fdiv double %sub44, %73
  %cmp46 = fcmp ogt double 5.000000e+01, %div45
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false.43
  br label %cond.end.52

cond.false.49:                                    ; preds = %cond.false.43
  %74 = load double, double* %c, align 8, !tbaa !14
  %sub50 = fsub double -0.000000e+00, %74
  %75 = load double, double* %b, align 8, !tbaa !14
  %div51 = fdiv double %sub50, %75
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.48
  %cond53 = phi double [ 5.000000e+01, %cond.true.48 ], [ %div51, %cond.false.49 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.42
  %cond55 = phi double [ 0.000000e+00, %cond.true.42 ], [ %cond53, %cond.end.52 ]
  store double %cond55, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.25
  %76 = load double, double* %b, align 8, !tbaa !14
  %77 = load double, double* %b, align 8, !tbaa !14
  %mul56 = fmul double %76, %77
  %78 = load double, double* %a, align 8, !tbaa !14
  %mul57 = fmul double 4.000000e+00, %78
  %79 = load double, double* %c, align 8, !tbaa !14
  %mul58 = fmul double %mul57, %79
  %sub59 = fsub double %mul56, %mul58
  store double %sub59, double* %d, align 8, !tbaa !14
  %80 = load double, double* %d, align 8, !tbaa !14
  %cmp60 = fcmp ole double %80, 0.000000e+00
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.63:                                       ; preds = %if.else
  %81 = bitcast double* %rt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load double, double* %b, align 8, !tbaa !14
  %sub64 = fsub double -0.000000e+00, %82
  %83 = load double, double* %d, align 8, !tbaa !14
  %call65 = call double @sqrt(double %83) #7
  %add66 = fadd double %sub64, %call65
  %84 = load double, double* %a, align 8, !tbaa !14
  %mul67 = fmul double 2.000000e+00, %84
  %div68 = fdiv double %add66, %mul67
  store double %div68, double* %rt, align 8, !tbaa !14
  %85 = load double, double* %rt, align 8, !tbaa !14
  %cmp69 = fcmp olt double 5.000000e+01, %85
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %if.else.63
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.else.63
  %86 = load double, double* %rt, align 8, !tbaa !14
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi double [ 5.000000e+01, %cond.true.71 ], [ %86, %cond.false.72 ]
  %cmp75 = fcmp ogt double 0.000000e+00, %cond74
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.end.73
  br label %cond.end.85

cond.false.78:                                    ; preds = %cond.end.73
  %87 = load double, double* %rt, align 8, !tbaa !14
  %cmp79 = fcmp olt double 5.000000e+01, %87
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.false.78
  br label %cond.end.83

cond.false.82:                                    ; preds = %cond.false.78
  %88 = load double, double* %rt, align 8, !tbaa !14
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi double [ 5.000000e+01, %cond.true.81 ], [ %88, %cond.false.82 ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %cond.true.77
  %cond86 = phi double [ 0.000000e+00, %cond.true.77 ], [ %cond84, %cond.end.83 ]
  store double %cond86, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  %89 = bitcast double* %rt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  br label %cleanup

cleanup:                                          ; preds = %cond.end.85, %if.then.62, %cond.end.54, %if.then.24, %if.then
  %90 = bitcast %struct.cmsVEC3* %res to i8*
  call void @llvm.lifetime.end(i64 24, i8* %90) #1
  %91 = bitcast %struct.cmsVEC3* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %91) #1
  %92 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.end(i64 72, i8* %92) #1
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast double* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %sum_yx2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %sum_yx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast double* %sum_y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast double* %sum_x4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast double* %sum_x3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %sum_x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %sum_x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = load double, double* %retval
  ret double %105
}

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #2

declare i32 @cmsIsIntentSupported(i8*, i32, i32) #2

declare i32 @cmsFormatterForColorspaceOfProfile(i8*, i32, i32) #2

declare i32 @_cmsEndPointsBySpace(i32, i16**, i16**, i32*) #2

declare i8* @cmsCreateLab2ProfileTHR(%struct._cmsContext_struct*, %struct.cmsCIExyY*) #2

declare i8* @cmsCreateTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i32, i32) #2

declare i32 @cmsCloseProfile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct*, %struct.cmsCIExyY*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct*, i32, i8**, i32*, i32*, double*, i8*, i32, i32, i32, i32) #2

declare void @_cmsVEC3init(%struct.cmsVEC3*, double, double, double) #2

declare i32 @_cmsMAT3solve(%struct.cmsVEC3*, %struct.cmsMAT3*, %struct.cmsVEC3*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !10, i64 16}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !3, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !10, i64 0}
!13 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14}
!14 = !{!10, !10, i64 0}
