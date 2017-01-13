; ModuleID = './cmsgmt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsCIExyY = type { double, double, double }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct.cmsCIELab = type { double, double, double }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct.GAMUTCHAIN = type { i8*, i8*, i8*, double }
%struct.cmsTACestimator = type { i32, i8*, float, [16 x float] }
%struct.cmsCIELCh = type { double, double, double }
%union.anon = type { double }

@.str = private unnamed_addr constant [50 x i8] c"Wrong position of PCS. 1..255 expected, %d found.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid angle\00", align 1

; Function Attrs: nounwind uwtable
define i8* @_cmsChain2Lab(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32 %InputFormat, i32 %OutputFormat, i32* %Intents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32, align 4
  %OutputFormat.addr = alloca i32, align 4
  %Intents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %xform = alloca i8*, align 8
  %hLab = alloca i8*, align 8
  %ProfileList = alloca [256 x i8*], align 16
  %BPCList = alloca [256 x i32], align 16
  %AdaptationList = alloca [256 x double], align 16
  %IntentList = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !5
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !5
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !5
  store i32* %Intents, i32** %Intents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [256 x i8*]* %ProfileList to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #1
  %3 = bitcast [256 x i32]* %BPCList to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %3) #1
  %4 = bitcast [256 x double]* %AdaptationList to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %4) #1
  %5 = bitcast [256 x i32]* %IntentList to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %7, 254
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %8, %struct.cmsCIExyY* null) #5
  store i8* %call, i8** %hLab, align 8, !tbaa !1
  %9 = load i8*, i8** %hLab, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %cmp4 = icmp ult i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %12 to i64
  %13 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = zext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i64 %idxprom5
  store i8* %14, i8** %arrayidx6, align 8, !tbaa !1
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = zext i32 %16 to i64
  %17 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i64 %idxprom9
  store i32 %18, i32* %arrayidx10, align 4, !tbaa !5
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %20 to i64
  %21 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %21, i64 %idxprom11
  %22 = load double, double* %arrayidx12, align 8, !tbaa !7
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = zext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i64 %idxprom13
  store double %22, double* %arrayidx14, align 8, !tbaa !7
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = zext i32 %24 to i64
  %25 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %26 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = zext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i64 %idxprom17
  store i32 %26, i32* %arrayidx18, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %hLab, align 8, !tbaa !1
  %30 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %idxprom19 = zext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i64 %idxprom19
  store i8* %29, i8** %arrayidx20, align 8, !tbaa !1
  %31 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %idxprom21 = zext i32 %31 to i64
  %arrayidx22 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i64 %idxprom21
  store i32 0, i32* %arrayidx22, align 4, !tbaa !5
  %32 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %idxprom23 = zext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i64 %idxprom23
  store double 1.000000e+00, double* %arrayidx24, align 8, !tbaa !7
  %33 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %idxprom25 = zext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i64 %idxprom25
  store i32 1, i32* %arrayidx26, align 4, !tbaa !5
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %add = add i32 %35, 1
  %arraydecay = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i32 0
  %36 = load i32, i32* %InputFormat.addr, align 4, !tbaa !5
  %37 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !5
  %38 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call30 = call i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %34, i32 %add, i8** %arraydecay, i32* %arraydecay27, i32* %arraydecay28, double* %arraydecay29, i8* null, i32 0, i32 %36, i32 %37, i32 %38) #5
  store i8* %call30, i8** %xform, align 8, !tbaa !1
  %39 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call31 = call i32 @cmsCloseProfile(i8* %39) #5
  %40 = load i8*, i8** %xform, align 8, !tbaa !1
  store i8* %40, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.2, %if.then
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast [256 x i32]* %IntentList to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %42) #1
  %43 = bitcast [256 x double]* %AdaptationList to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %43) #1
  %44 = bitcast [256 x i32]* %BPCList to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %44) #1
  %45 = bitcast [256 x i8*]* %ProfileList to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %45) #1
  %46 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i8*, i8** %retval
  ret i8* %48
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct*, %struct.cmsCIExyY*) #2

declare i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct*, i32, i8**, i32*, i32*, double*, i8*, i32, i32, i32, i32) #2

declare i32 @cmsCloseProfile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @_cmsBuildKToneCurve(%struct._cmsContext_struct* %ContextID, i32 %nPoints, i32 %nProfiles, i32* %Intents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nPoints.addr = alloca i32, align 4
  %nProfiles.addr = alloca i32, align 4
  %Intents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %in = alloca %struct._cms_curve_struct*, align 8
  %out = alloca %struct._cms_curve_struct*, align 8
  %KTone = alloca %struct._cms_curve_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nPoints, i32* %nPoints.addr, align 4, !tbaa !5
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !5
  store i32* %Intents, i32** %Intents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast %struct._cms_curve_struct** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cms_curve_struct** %KTone to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call = call i32 @cmsGetColorSpace(i8* %4) #5
  %cmp = icmp ne i32 %call, 1129142603
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub = sub i32 %5, 1
  %idxprom = zext i32 %sub to i64
  %6 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %call2 = call i32 @cmsGetColorSpace(i8* %7) #5
  %cmp3 = icmp ne i32 %call2, 1129142603
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub4 = sub i32 %8, 1
  %idxprom5 = zext i32 %sub4 to i64
  %9 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %9, i64 %idxprom5
  %10 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  %call7 = call i32 @cmsGetDeviceClass(i8* %10) #5
  %cmp8 = icmp ne i32 %call7, 1886549106
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %12 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %13 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub11 = sub i32 %13, 1
  %14 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %15 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %16 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %17 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %18 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call12 = call %struct._cms_curve_struct* @ComputeKToLstar(%struct._cmsContext_struct* %11, i32 %12, i32 %sub11, i32* %14, i8** %15, i32* %16, double* %17, i32 %18) #5
  store %struct._cms_curve_struct* %call12, %struct._cms_curve_struct** %in, align 8, !tbaa !1
  %19 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %in, align 8, !tbaa !1
  %cmp13 = icmp eq %struct._cms_curve_struct* %19, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %21 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %22 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %23 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub16 = sub i32 %23, 1
  %idx.ext = zext i32 %sub16 to i64
  %add.ptr = getelementptr inbounds i32, i32* %22, i64 %idx.ext
  %24 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub17 = sub i32 %24, 1
  %idxprom18 = zext i32 %sub17 to i64
  %25 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8*, i8** %25, i64 %idxprom18
  %26 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %27 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub20 = sub i32 %27, 1
  %idx.ext21 = zext i32 %sub20 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %26, i64 %idx.ext21
  %28 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %29 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %sub23 = sub i32 %29, 1
  %idx.ext24 = zext i32 %sub23 to i64
  %add.ptr25 = getelementptr inbounds double, double* %28, i64 %idx.ext24
  %30 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call26 = call %struct._cms_curve_struct* @ComputeKToLstar(%struct._cmsContext_struct* %20, i32 %21, i32 1, i32* %add.ptr, i8** %arrayidx19, i32* %add.ptr22, double* %add.ptr25, i32 %30) #5
  store %struct._cms_curve_struct* %call26, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %31 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %cmp27 = icmp eq %struct._cms_curve_struct* %31, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.15
  %32 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %in, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %32) #5
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.15
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %in, align 8, !tbaa !1
  %35 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %36 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %call30 = call %struct._cms_curve_struct* @cmsJoinToneCurve(%struct._cmsContext_struct* %33, %struct._cms_curve_struct* %34, %struct._cms_curve_struct* %35, i32 %36) #5
  store %struct._cms_curve_struct* %call30, %struct._cms_curve_struct** %KTone, align 8, !tbaa !1
  %37 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %in, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %37) #5
  %38 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %38) #5
  %39 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !1
  %cmp31 = icmp eq %struct._cms_curve_struct* %39, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.29
  %40 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !1
  %call34 = call i32 @cmsIsToneCurveMonotonic(%struct._cms_curve_struct* %40) #5
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.33
  %41 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %41) #5
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.33
  %42 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !1
  store %struct._cms_curve_struct* %42, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.35, %if.then.32, %if.then.28, %if.then.14, %if.then.9, %if.then
  %43 = bitcast %struct._cms_curve_struct** %KTone to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct._cms_curve_struct** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %46
}

declare i32 @cmsGetColorSpace(i8*) #2

declare i32 @cmsGetDeviceClass(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._cms_curve_struct* @ComputeKToLstar(%struct._cmsContext_struct* %ContextID, i32 %nPoints, i32 %nProfiles, i32* %Intents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nPoints.addr = alloca i32, align 4
  %nProfiles.addr = alloca i32, align 4
  %Intents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %out = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %xform = alloca i8*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  %cmyk = alloca [4 x float], align 16
  %SampledPoints = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nPoints, i32* %nPoints.addr, align 4, !tbaa !5
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !5
  store i32* %Intents, i32** %Intents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !5
  %0 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast [4 x float]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast float** %SampledPoints to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !5
  %8 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %9 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %10 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %11 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %12 = load i32, i32* %dwFlags.addr, align 4, !tbaa !5
  %call = call i8* @_cmsChain2Lab(%struct._cmsContext_struct* %6, i32 %7, i32 4587556, i32 4849688, i32* %8, i8** %9, i32* %10, double* %11, i32 %12) #5
  store i8* %call, i8** %xform, align 8, !tbaa !1
  %13 = load i8*, i8** %xform, align 8, !tbaa !1
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %15 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %call1 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %14, i32 %15, i32 4) #5
  %16 = bitcast i8* %call1 to float*
  store float* %16, float** %SampledPoints, align 8, !tbaa !1
  %17 = load float*, float** %SampledPoints, align 8, !tbaa !1
  %cmp2 = icmp eq float* %17, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %18, %19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %cmyk, i32 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !9
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %cmyk, i32 0, i64 1
  store float 0.000000e+00, float* %arrayidx6, align 4, !tbaa !9
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %cmyk, i32 0, i64 2
  store float 0.000000e+00, float* %arrayidx7, align 4, !tbaa !9
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %conv = uitofp i32 %20 to double
  %mul = fmul double %conv, 1.000000e+02
  %21 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %sub = sub i32 %21, 1
  %conv8 = uitofp i32 %sub to double
  %div = fdiv double %mul, %conv8
  %conv9 = fptrunc double %div to float
  %arrayidx10 = getelementptr inbounds [4 x float], [4 x float]* %cmyk, i32 0, i64 3
  store float %conv9, float* %arrayidx10, align 4, !tbaa !9
  %22 = load i8*, i8** %xform, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %cmyk, i32 0, i32 0
  %23 = bitcast float* %arraydecay to i8*
  %24 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @cmsDoTransform(i8* %22, i8* %23, i8* %24, i32 1) #5
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %25 = load double, double* %L, align 8, !tbaa !11
  %div11 = fdiv double %25, 1.000000e+02
  %sub12 = fsub double 1.000000e+00, %div11
  %conv13 = fptrunc double %sub12 to float
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %26 to i64
  %27 = load float*, float** %SampledPoints, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %27, i64 %idxprom
  store float %conv13, float* %arrayidx14, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %30 = load i32, i32* %nPoints.addr, align 4, !tbaa !5
  %31 = load float*, float** %SampledPoints, align 8, !tbaa !1
  %call15 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurveFloat(%struct._cmsContext_struct* %29, i32 %30, float* %31) #5
  store %struct._cms_curve_struct* %call15, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  br label %Error

Error:                                            ; preds = %for.end, %if.then.3
  %32 = load i8*, i8** %xform, align 8, !tbaa !1
  call void @cmsDeleteTransform(i8* %32) #5
  %33 = load float*, float** %SampledPoints, align 8, !tbaa !1
  %tobool = icmp ne float* %33, null
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %Error
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load float*, float** %SampledPoints, align 8, !tbaa !1
  %36 = bitcast float* %35 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %34, i8* %36) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %Error
  %37 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  store %struct._cms_curve_struct* %37, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %38 = bitcast float** %SampledPoints to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [4 x float]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #1
  %40 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %40) #1
  %41 = bitcast i8** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %44
}

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #2

declare %struct._cms_curve_struct* @cmsJoinToneCurve(%struct._cmsContext_struct*, %struct._cms_curve_struct*, %struct._cms_curve_struct*, i32) #2

declare i32 @cmsIsToneCurveMonotonic(%struct._cms_curve_struct*) #2

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsCreateGamutCheckPipeline(%struct._cmsContext_struct* %ContextID, i8** %hProfiles, i32* %BPC, i32* %Intents, double* %AdaptationStates, i32 %nGamutPCSposition, i8* %hGamut) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %Intents.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %nGamutPCSposition.addr = alloca i32, align 4
  %hGamut.addr = alloca i8*, align 8
  %hLab = alloca i8*, align 8
  %Gamut = alloca %struct._cmsPipeline_struct*, align 8
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %dwFormat = alloca i32, align 4
  %Chain = alloca %struct.GAMUTCHAIN, align 8
  %nChannels = alloca i32, align 4
  %nGridpoints = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %i = alloca i32, align 4
  %ProfileList = alloca [256 x i8*], align 16
  %BPCList = alloca [256 x i32], align 16
  %AdaptationList = alloca [256 x double], align 16
  %IntentList = alloca [256 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store i32* %Intents, i32** %Intents.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %nGamutPCSposition, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  store i8* %hGamut, i8** %hGamut.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %Gamut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %dwFormat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.GAMUTCHAIN* %Chain to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nGridpoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [256 x i8*]* %ProfileList to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %9) #1
  %10 = bitcast [256 x i32]* %BPCList to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %10) #1
  %11 = bitcast [256 x double]* %AdaptationList to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %11) #1
  %12 = bitcast [256 x i32]* %IntentList to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %12) #1
  %13 = bitcast %struct.GAMUTCHAIN* %Chain to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 32) #6
  %14 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %15, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %17 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %16, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %17) #5
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call2 = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %18, %struct.cmsCIExyY* null) #5
  store i8* %call2, i8** %hLab, align 8, !tbaa !1
  %19 = load i8*, i8** %hLab, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %19, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %20 = load i8*, i8** %hGamut.addr, align 8, !tbaa !1
  %call6 = call i32 @cmsIsMatrixShaper(i8* %20) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %Thereshold = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 3
  store double 1.000000e+00, double* %Thereshold, align 8, !tbaa !13
  br label %if.end.9

if.else:                                          ; preds = %if.end.5
  %Thereshold8 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 3
  store double 5.000000e+00, double* %Thereshold8, align 8, !tbaa !13
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %21, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %24 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %25 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i64 %idxprom11
  store i8* %25, i8** %arrayidx12, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = zext i32 %27 to i64
  %28 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i32, i32* %28, i64 %idxprom13
  %29 = load i32, i32* %arrayidx14, align 4, !tbaa !5
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = zext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i64 %idxprom15
  store i32 %29, i32* %arrayidx16, align 4, !tbaa !5
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = zext i32 %31 to i64
  %32 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %32, i64 %idxprom17
  %33 = load double, double* %arrayidx18, align 8, !tbaa !7
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = zext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i64 %idxprom19
  store double %33, double* %arrayidx20, align 8, !tbaa !7
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = zext i32 %35 to i64
  %36 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i32, i32* %36, i64 %idxprom21
  %37 = load i32, i32* %arrayidx22, align 4, !tbaa !5
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = zext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i64 %idxprom23
  store i32 %37, i32* %arrayidx24, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i8*, i8** %hLab, align 8, !tbaa !1
  %41 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %idxprom25 = zext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i64 %idxprom25
  store i8* %40, i8** %arrayidx26, align 8, !tbaa !1
  %42 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %idxprom27 = zext i32 %42 to i64
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i64 %idxprom27
  store i32 0, i32* %arrayidx28, align 4, !tbaa !5
  %43 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %idxprom29 = zext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i64 %idxprom29
  store double 1.000000e+00, double* %arrayidx30, align 8, !tbaa !7
  %44 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %idxprom31 = zext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4, !tbaa !5
  %45 = load i8*, i8** %hGamut.addr, align 8, !tbaa !1
  %call33 = call i32 @cmsGetColorSpace(i8* %45) #5
  store i32 %call33, i32* %ColorSpace, align 4, !tbaa !15
  %46 = load i32, i32* %ColorSpace, align 4, !tbaa !15
  %call34 = call i32 @cmsChannelsOf(i32 %46) #5
  store i32 %call34, i32* %nChannels, align 4, !tbaa !5
  %47 = load i32, i32* %ColorSpace, align 4, !tbaa !15
  %call35 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %47, i32 1024) #5
  store i32 %call35, i32* %nGridpoints, align 4, !tbaa !5
  %48 = load i32, i32* %nChannels, align 4, !tbaa !5
  %shl = shl i32 %48, 3
  %or = or i32 %shl, 2
  store i32 %or, i32* %dwFormat, align 4, !tbaa !5
  %49 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %50 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !5
  %add = add i32 %50, 1
  %arraydecay = getelementptr inbounds [256 x i8*], [256 x i8*]* %ProfileList, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [256 x i32], [256 x i32]* %BPCList, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [256 x i32], [256 x i32]* %IntentList, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationList, i32 0, i32 0
  %51 = load i32, i32* %dwFormat, align 4, !tbaa !5
  %call39 = call i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %49, i32 %add, i8** %arraydecay, i32* %arraydecay36, i32* %arraydecay37, double* %arraydecay38, i8* null, i32 0, i32 %51, i32 4849688, i32 64) #5
  %hInput = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 0
  store i8* %call39, i8** %hInput, align 8, !tbaa !16
  %52 = load i32, i32* %nChannels, align 4, !tbaa !5
  %shl40 = shl i32 %52, 3
  %or41 = or i32 %shl40, 2
  store i32 %or41, i32* %dwFormat, align 4, !tbaa !5
  %53 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %hLab, align 8, !tbaa !1
  %55 = load i8*, i8** %hGamut.addr, align 8, !tbaa !1
  %56 = load i32, i32* %dwFormat, align 4, !tbaa !5
  %call42 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %53, i8* %54, i32 4849688, i8* %55, i32 %56, i32 1, i32 64) #5
  %hForward = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 1
  store i8* %call42, i8** %hForward, align 8, !tbaa !17
  %57 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %58 = load i8*, i8** %hGamut.addr, align 8, !tbaa !1
  %59 = load i32, i32* %dwFormat, align 4, !tbaa !5
  %60 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call43 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %57, i8* %58, i32 %59, i8* %60, i32 4849688, i32 1, i32 64) #5
  %hReverse = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 2
  store i8* %call43, i8** %hReverse, align 8, !tbaa !18
  %hInput44 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 0
  %61 = load i8*, i8** %hInput44, align 8, !tbaa !16
  %tobool45 = icmp ne i8* %61, null
  br i1 %tobool45, label %land.lhs.true, label %if.else.63

land.lhs.true:                                    ; preds = %for.end
  %hForward46 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 1
  %62 = load i8*, i8** %hForward46, align 8, !tbaa !17
  %tobool47 = icmp ne i8* %62, null
  br i1 %tobool47, label %land.lhs.true.48, label %if.else.63

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %hReverse49 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 2
  %63 = load i8*, i8** %hReverse49, align 8, !tbaa !18
  %tobool50 = icmp ne i8* %63, null
  br i1 %tobool50, label %if.then.51, label %if.else.63

if.then.51:                                       ; preds = %land.lhs.true.48
  %64 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call52 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %64, i32 3, i32 1) #5
  store %struct._cmsPipeline_struct* %call52, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  %65 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  %cmp53 = icmp ne %struct._cmsPipeline_struct* %65, null
  br i1 %cmp53, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.then.51
  %66 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %67 = load i32, i32* %nGridpoints, align 4, !tbaa !5
  %68 = load i32, i32* %nChannels, align 4, !tbaa !5
  %call55 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %66, i32 %67, i32 %68, i32 1, i16* null) #5
  store %struct._cmsStage_struct* %call55, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %69 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  %70 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call56 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %69, i32 0, %struct._cmsStage_struct* %70) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.54
  %71 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %71) #5
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  br label %if.end.61

if.else.59:                                       ; preds = %if.then.54
  %72 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %73 = bitcast %struct.GAMUTCHAIN* %Chain to i8*
  %call60 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %72, i32 (i16*, i16*, i8*)* @GamutSampler, i8* %73, i32 0) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.51
  br label %if.end.64

if.else.63:                                       ; preds = %land.lhs.true.48, %land.lhs.true, %for.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.end.62
  %hInput65 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 0
  %74 = load i8*, i8** %hInput65, align 8, !tbaa !16
  %tobool66 = icmp ne i8* %74, null
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %hInput68 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 0
  %75 = load i8*, i8** %hInput68, align 8, !tbaa !16
  call void @cmsDeleteTransform(i8* %75) #5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  %hForward70 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 1
  %76 = load i8*, i8** %hForward70, align 8, !tbaa !17
  %tobool71 = icmp ne i8* %76, null
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %hForward73 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 1
  %77 = load i8*, i8** %hForward73, align 8, !tbaa !17
  call void @cmsDeleteTransform(i8* %77) #5
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.69
  %hReverse75 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 2
  %78 = load i8*, i8** %hReverse75, align 8, !tbaa !18
  %tobool76 = icmp ne i8* %78, null
  br i1 %tobool76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.74
  %hReverse78 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %Chain, i32 0, i32 2
  %79 = load i8*, i8** %hReverse78, align 8, !tbaa !18
  call void @cmsDeleteTransform(i8* %79) #5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.74
  %80 = load i8*, i8** %hLab, align 8, !tbaa !1
  %tobool80 = icmp ne i8* %80, null
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %81 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call82 = call i32 @cmsCloseProfile(i8* %81) #5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %82 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Gamut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %82, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.then.4, %if.then
  %83 = bitcast [256 x i32]* %IntentList to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %83) #1
  %84 = bitcast [256 x double]* %AdaptationList to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %84) #1
  %85 = bitcast [256 x i32]* %BPCList to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %85) #1
  %86 = bitcast [256 x i8*]* %ProfileList to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %nGridpoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast %struct.GAMUTCHAIN* %Chain to i8*
  call void @llvm.lifetime.end(i64 32, i8* %91) #1
  %92 = bitcast i32* %dwFormat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct._cmsPipeline_struct** %Gamut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %96
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

declare i32 @cmsIsMatrixShaper(i8*) #2

declare i32 @cmsChannelsOf(i32) #2

declare i32 @_cmsReasonableGridpointsByColorspace(i32, i32) #2

declare i8* @cmsCreateTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i32, i32) #2

declare %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct*, i32, i32) #2

declare %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct*, i32, i32, i32, i16*) #2

declare i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct*) #2

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #2

declare i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct*, i32 (i16*, i16*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @GamutSampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %t = alloca %struct.GAMUTCHAIN*, align 8
  %LabIn1 = alloca %struct.cmsCIELab, align 8
  %LabOut1 = alloca %struct.cmsCIELab, align 8
  %LabIn2 = alloca %struct.cmsCIELab, align 8
  %LabOut2 = alloca %struct.cmsCIELab, align 8
  %Proof = alloca [16 x i16], align 16
  %Proof2 = alloca [16 x i16], align 16
  %dE1 = alloca double, align 8
  %dE2 = alloca double, align 8
  %ErrorRatio = alloca double, align 8
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.GAMUTCHAIN** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.GAMUTCHAIN*
  store %struct.GAMUTCHAIN* %2, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %3 = bitcast %struct.cmsCIELab* %LabIn1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.cmsCIELab* %LabOut1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.cmsCIELab* %LabIn2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast %struct.cmsCIELab* %LabOut2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast [16 x i16]* %Proof to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast [16 x i16]* %Proof2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %8) #1
  %9 = bitcast double* %dE1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %dE2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %ErrorRatio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store double 1.000000e+00, double* %ErrorRatio, align 8, !tbaa !7
  %12 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %hInput = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %12, i32 0, i32 0
  %13 = load i8*, i8** %hInput, align 8, !tbaa !16
  %14 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %15 = bitcast i16* %14 to i8*
  %16 = bitcast %struct.cmsCIELab* %LabIn1 to i8*
  call void @cmsDoTransform(i8* %13, i8* %15, i8* %16, i32 1) #5
  %17 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %hForward = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %17, i32 0, i32 1
  %18 = load i8*, i8** %hForward, align 8, !tbaa !17
  %19 = bitcast %struct.cmsCIELab* %LabIn1 to i8*
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %Proof, i32 0, i32 0
  %20 = bitcast i16* %arraydecay to i8*
  call void @cmsDoTransform(i8* %18, i8* %19, i8* %20, i32 1) #5
  %21 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %hReverse = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %21, i32 0, i32 2
  %22 = load i8*, i8** %hReverse, align 8, !tbaa !18
  %arraydecay1 = getelementptr inbounds [16 x i16], [16 x i16]* %Proof, i32 0, i32 0
  %23 = bitcast i16* %arraydecay1 to i8*
  %24 = bitcast %struct.cmsCIELab* %LabOut1 to i8*
  call void @cmsDoTransform(i8* %22, i8* %23, i8* %24, i32 1) #5
  %25 = bitcast %struct.cmsCIELab* %LabIn2 to i8*
  %26 = bitcast %struct.cmsCIELab* %LabOut1 to i8*
  %call = call i8* @memmove(i8* %25, i8* %26, i64 24) #6
  %27 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %hForward2 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %27, i32 0, i32 1
  %28 = load i8*, i8** %hForward2, align 8, !tbaa !17
  %29 = bitcast %struct.cmsCIELab* %LabOut1 to i8*
  %arraydecay3 = getelementptr inbounds [16 x i16], [16 x i16]* %Proof2, i32 0, i32 0
  %30 = bitcast i16* %arraydecay3 to i8*
  call void @cmsDoTransform(i8* %28, i8* %29, i8* %30, i32 1) #5
  %31 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %hReverse4 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %31, i32 0, i32 2
  %32 = load i8*, i8** %hReverse4, align 8, !tbaa !18
  %arraydecay5 = getelementptr inbounds [16 x i16], [16 x i16]* %Proof2, i32 0, i32 0
  %33 = bitcast i16* %arraydecay5 to i8*
  %34 = bitcast %struct.cmsCIELab* %LabOut2 to i8*
  call void @cmsDoTransform(i8* %32, i8* %33, i8* %34, i32 1) #5
  %call6 = call double @cmsDeltaE(%struct.cmsCIELab* %LabIn1, %struct.cmsCIELab* %LabOut1) #5
  store double %call6, double* %dE1, align 8, !tbaa !7
  %call7 = call double @cmsDeltaE(%struct.cmsCIELab* %LabIn2, %struct.cmsCIELab* %LabOut2) #5
  store double %call7, double* %dE2, align 8, !tbaa !7
  %35 = load double, double* %dE1, align 8, !tbaa !7
  %36 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %36, i32 0, i32 3
  %37 = load double, double* %Thereshold, align 8, !tbaa !13
  %cmp = fcmp olt double %35, %37
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %38 = load double, double* %dE2, align 8, !tbaa !7
  %39 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold8 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %39, i32 0, i32 3
  %40 = load double, double* %Thereshold8, align 8, !tbaa !13
  %cmp9 = fcmp olt double %38, %40
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %41 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %41, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !19
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true, %entry
  %42 = load double, double* %dE1, align 8, !tbaa !7
  %43 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold10 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %43, i32 0, i32 3
  %44 = load double, double* %Thereshold10, align 8, !tbaa !13
  %cmp11 = fcmp olt double %42, %44
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.17

land.lhs.true.12:                                 ; preds = %if.else
  %45 = load double, double* %dE2, align 8, !tbaa !7
  %46 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold13 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %46, i32 0, i32 3
  %47 = load double, double* %Thereshold13, align 8, !tbaa !13
  %cmp14 = fcmp ogt double %45, %47
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %land.lhs.true.12
  %48 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %48, i64 0
  store i16 0, i16* %arrayidx16, align 2, !tbaa !19
  br label %if.end.46

if.else.17:                                       ; preds = %land.lhs.true.12, %if.else
  %49 = load double, double* %dE1, align 8, !tbaa !7
  %50 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold18 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %50, i32 0, i32 3
  %51 = load double, double* %Thereshold18, align 8, !tbaa !13
  %cmp19 = fcmp ogt double %49, %51
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.27

land.lhs.true.20:                                 ; preds = %if.else.17
  %52 = load double, double* %dE2, align 8, !tbaa !7
  %53 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold21 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %53, i32 0, i32 3
  %54 = load double, double* %Thereshold21, align 8, !tbaa !13
  %cmp22 = fcmp olt double %52, %54
  br i1 %cmp22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %land.lhs.true.20
  %55 = load double, double* %dE1, align 8, !tbaa !7
  %56 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold24 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %56, i32 0, i32 3
  %57 = load double, double* %Thereshold24, align 8, !tbaa !13
  %sub = fsub double %55, %57
  %add = fadd double %sub, 5.000000e-01
  %call25 = call i32 @_cmsQuickFloor(double %add) #5
  %conv = trunc i32 %call25 to i16
  %58 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %58, i64 0
  store i16 %conv, i16* %arrayidx26, align 2, !tbaa !19
  br label %if.end.45

if.else.27:                                       ; preds = %land.lhs.true.20, %if.else.17
  %59 = load double, double* %dE2, align 8, !tbaa !7
  %cmp28 = fcmp oeq double %59, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.27
  %60 = load double, double* %dE1, align 8, !tbaa !7
  store double %60, double* %ErrorRatio, align 8, !tbaa !7
  br label %if.end

if.else.31:                                       ; preds = %if.else.27
  %61 = load double, double* %dE1, align 8, !tbaa !7
  %62 = load double, double* %dE2, align 8, !tbaa !7
  %div = fdiv double %61, %62
  store double %div, double* %ErrorRatio, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.30
  %63 = load double, double* %ErrorRatio, align 8, !tbaa !7
  %64 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold32 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %64, i32 0, i32 3
  %65 = load double, double* %Thereshold32, align 8, !tbaa !13
  %cmp33 = fcmp ogt double %63, %65
  br i1 %cmp33, label %if.then.35, label %if.else.42

if.then.35:                                       ; preds = %if.end
  %66 = load double, double* %ErrorRatio, align 8, !tbaa !7
  %67 = load %struct.GAMUTCHAIN*, %struct.GAMUTCHAIN** %t, align 8, !tbaa !1
  %Thereshold36 = getelementptr inbounds %struct.GAMUTCHAIN, %struct.GAMUTCHAIN* %67, i32 0, i32 3
  %68 = load double, double* %Thereshold36, align 8, !tbaa !13
  %sub37 = fsub double %66, %68
  %add38 = fadd double %sub37, 5.000000e-01
  %call39 = call i32 @_cmsQuickFloor(double %add38) #5
  %conv40 = trunc i32 %call39 to i16
  %69 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %69, i64 0
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !19
  br label %if.end.44

if.else.42:                                       ; preds = %if.end
  %70 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %70, i64 0
  store i16 0, i16* %arrayidx43, align 2, !tbaa !19
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.23
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.15
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  %71 = bitcast double* %ErrorRatio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %dE2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %dE1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast [16 x i16]* %Proof2 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #1
  %75 = bitcast [16 x i16]* %Proof to i8*
  call void @llvm.lifetime.end(i64 32, i8* %75) #1
  %76 = bitcast %struct.cmsCIELab* %LabOut2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %76) #1
  %77 = bitcast %struct.cmsCIELab* %LabIn2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %77) #1
  %78 = bitcast %struct.cmsCIELab* %LabOut1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %78) #1
  %79 = bitcast %struct.cmsCIELab* %LabIn1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %79) #1
  %80 = bitcast %struct.GAMUTCHAIN** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  ret i32 1
}

declare void @cmsDeleteTransform(i8*) #2

; Function Attrs: nounwind uwtable
define double @cmsDetectTAC(i8* %hProfile) #0 {
entry:
  %retval = alloca double, align 8
  %hProfile.addr = alloca i8*, align 8
  %bp = alloca %struct.cmsTACestimator, align 8
  %dwFormatter = alloca i32, align 4
  %GridPoints = alloca [8 x i32], align 16
  %hLab = alloca i8*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsTACestimator* %bp to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i32* %dwFormatter to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [8 x i32]* %GridPoints to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %5) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsGetDeviceClass(i8* %6) #5
  %cmp = icmp ne i32 %call1, 1886549106
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsFormatterForColorspaceOfProfile(i8* %7, i32 4, i32 1) #5
  store i32 %call2, i32* %dwFormatter, align 4, !tbaa !5
  %8 = load i32, i32* %dwFormatter, align 4, !tbaa !5
  %shr = lshr i32 %8, 3
  %and = and i32 %shr, 15
  %nOutputChans = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 0
  store i32 %and, i32* %nOutputChans, align 4, !tbaa !21
  %MaxTAC = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 2
  store float 0.000000e+00, float* %MaxTAC, align 4, !tbaa !23
  %nOutputChans3 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 0
  %9 = load i32, i32* %nOutputChans3, align 4, !tbaa !21
  %cmp4 = icmp uge i32 %9, 16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %10, %struct.cmsCIExyY* null) #5
  store i8* %call7, i8** %hLab, align 8, !tbaa !1
  %11 = load i8*, i8** %hLab, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %13 = load i8*, i8** %hLab, align 8, !tbaa !1
  %14 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %15 = load i32, i32* %dwFormatter, align 4, !tbaa !5
  %call11 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %12, i8* %13, i32 655386, i8* %14, i32 %15, i32 0, i32 320) #5
  %hRoundTrip = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 1
  store i8* %call11, i8** %hRoundTrip, align 8, !tbaa !24
  %16 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call12 = call i32 @cmsCloseProfile(i8* %16) #5
  %hRoundTrip13 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 1
  %17 = load i8*, i8** %hRoundTrip13, align 8, !tbaa !24
  %cmp14 = icmp eq i8* %17, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %GridPoints, i32 0, i64 0
  store i32 6, i32* %arrayidx, align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %GridPoints, i32 0, i64 1
  store i32 74, i32* %arrayidx17, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %GridPoints, i32 0, i64 2
  store i32 74, i32* %arrayidx18, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %GridPoints, i32 0, i32 0
  %18 = bitcast %struct.cmsTACestimator* %bp to i8*
  %call19 = call i32 @cmsSliceSpace16(i32 3, i32* %arraydecay, i32 (i16*, i16*, i8*)* @EstimateTAC, i8* %18) #5
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.end.16
  %MaxTAC21 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 2
  store float 0.000000e+00, float* %MaxTAC21, align 4, !tbaa !23
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %hRoundTrip23 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 1
  %19 = load i8*, i8** %hRoundTrip23, align 8, !tbaa !24
  call void @cmsDeleteTransform(i8* %19) #5
  %MaxTAC24 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %bp, i32 0, i32 2
  %20 = load float, float* %MaxTAC24, align 4, !tbaa !23
  %conv = fpext float %20 to double
  store double %conv, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.15, %if.then.9, %if.then.5, %if.then
  %21 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast [8 x i32]* %GridPoints to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #1
  %24 = bitcast i32* %dwFormatter to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.cmsTACestimator* %bp to i8*
  call void @llvm.lifetime.end(i64 88, i8* %25) #1
  %26 = load double, double* %retval
  ret double %26
}

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #2

declare i32 @cmsFormatterForColorspaceOfProfile(i8*, i32, i32) #2

declare i32 @cmsSliceSpace16(i32, i32*, i32 (i16*, i16*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @EstimateTAC(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %bp = alloca %struct.cmsTACestimator*, align 8
  %RoundTrip = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %Sum = alloca float, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsTACestimator** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsTACestimator*
  store %struct.cmsTACestimator* %2, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %3 = bitcast [16 x float]* %RoundTrip to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %Sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %hRoundTrip = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %6, i32 0, i32 1
  %7 = load i8*, i8** %hRoundTrip, align 8, !tbaa !24
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %9 = bitcast i16* %8 to i8*
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %RoundTrip, i32 0, i32 0
  %10 = bitcast float* %arraydecay to i8*
  call void @cmsDoTransform(i8* %7, i8* %9, i8* %10, i32 1) #5
  store float 0.000000e+00, float* %Sum, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %12 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %nOutputChans = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %12, i32 0, i32 0
  %13 = load i32, i32* %nOutputChans, align 4, !tbaa !21
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %RoundTrip, i32 0, i64 %idxprom
  %15 = load float, float* %arrayidx, align 4, !tbaa !9
  %16 = load float, float* %Sum, align 4, !tbaa !9
  %add = fadd float %16, %15
  store float %add, float* %Sum, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load float, float* %Sum, align 4, !tbaa !9
  %19 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %MaxTAC = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %19, i32 0, i32 2
  %20 = load float, float* %MaxTAC, align 4, !tbaa !23
  %cmp1 = fcmp ogt float %18, %20
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load float, float* %Sum, align 4, !tbaa !9
  %22 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %MaxTAC2 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %22, i32 0, i32 2
  store float %21, float* %MaxTAC2, align 4, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %if.then
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %nOutputChans4 = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %24, i32 0, i32 0
  %25 = load i32, i32* %nOutputChans4, align 4, !tbaa !21
  %cmp5 = icmp ult i32 %23, %25
  br i1 %cmp5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.3
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = zext i32 %26 to i64
  %27 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %27, i64 %idxprom7
  %28 = load i16, i16* %arrayidx8, align 2, !tbaa !19
  %conv = uitofp i16 %28 to float
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %29 to i64
  %30 = load %struct.cmsTACestimator*, %struct.cmsTACestimator** %bp, align 8, !tbaa !1
  %MaxInput = getelementptr inbounds %struct.cmsTACestimator, %struct.cmsTACestimator* %30, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %MaxInput, i32 0, i64 %idxprom9
  store float %conv, float* %arrayidx10, align 4, !tbaa !9
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.6
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add i32 %31, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond.3

for.end.13:                                       ; preds = %for.cond.3
  br label %if.end

if.end:                                           ; preds = %for.end.13, %for.end
  %32 = bitcast float* %Sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast [16 x float]* %RoundTrip to i8*
  call void @llvm.lifetime.end(i64 64, i8* %34) #1
  %35 = bitcast %struct.cmsTACestimator** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @cmsDesaturateLab(%struct.cmsCIELab* %Lab, double %amax, double %amin, double %bmax, double %bmin) #0 {
entry:
  %retval = alloca i32, align 4
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %amax.addr = alloca double, align 8
  %amin.addr = alloca double, align 8
  %bmax.addr = alloca double, align 8
  %bmin.addr = alloca double, align 8
  %LCh = alloca %struct.cmsCIELCh, align 8
  %h = alloca double, align 8
  %slope = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  store double %amax, double* %amax.addr, align 8, !tbaa !7
  store double %amin, double* %amin.addr, align 8, !tbaa !7
  store double %bmax, double* %bmax.addr, align 8, !tbaa !7
  store double %bmin, double* %bmin.addr, align 8, !tbaa !7
  %0 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %0, i32 0, i32 0
  %1 = load double, double* %L, align 8, !tbaa !11
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %2, i32 0, i32 2
  store double 0.000000e+00, double* %b, align 8, !tbaa !25
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 1
  store double 0.000000e+00, double* %a, align 8, !tbaa !26
  %4 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %4, i32 0, i32 0
  store double 0.000000e+00, double* %L1, align 8, !tbaa !11
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L2 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 0
  %6 = load double, double* %L2, align 8, !tbaa !11
  %cmp3 = fcmp ogt double %6, 1.000000e+02
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %7, i32 0, i32 0
  store double 1.000000e+02, double* %L5, align 8, !tbaa !11
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a7 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %8, i32 0, i32 1
  %9 = load double, double* %a7, align 8, !tbaa !26
  %10 = load double, double* %amin.addr, align 8, !tbaa !7
  %cmp8 = fcmp olt double %9, %10
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a9 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %11, i32 0, i32 1
  %12 = load double, double* %a9, align 8, !tbaa !26
  %13 = load double, double* %amax.addr, align 8, !tbaa !7
  %cmp10 = fcmp ogt double %12, %13
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %14 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b12 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %14, i32 0, i32 2
  %15 = load double, double* %b12, align 8, !tbaa !25
  %16 = load double, double* %bmin.addr, align 8, !tbaa !7
  %cmp13 = fcmp olt double %15, %16
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %17 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b15 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %17, i32 0, i32 2
  %18 = load double, double* %b15, align 8, !tbaa !25
  %19 = load double, double* %bmax.addr, align 8, !tbaa !7
  %cmp16 = fcmp ogt double %18, %19
  br i1 %cmp16, label %if.then.17, label %if.end.67

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %if.end.6
  %20 = bitcast %struct.cmsCIELCh* %LCh to i8*
  call void @llvm.lifetime.start(i64 24, i8* %20) #1
  %21 = bitcast double* %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast double* %slope to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a18 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %23, i32 0, i32 1
  %24 = load double, double* %a18, align 8, !tbaa !26
  %cmp19 = fcmp oeq double %24, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.17
  %25 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b21 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %25, i32 0, i32 2
  %26 = load double, double* %b21, align 8, !tbaa !25
  %cmp22 = fcmp olt double %26, 0.000000e+00
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %27 = load double, double* %bmin.addr, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %28 = load double, double* %bmax.addr, align 8, !tbaa !7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %27, %cond.true ], [ %28, %cond.false ]
  %29 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b23 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %29, i32 0, i32 2
  store double %cond, double* %b23, align 8, !tbaa !25
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.then.17
  %30 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh, %struct.cmsCIELab* %30) #5
  %31 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b25 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %31, i32 0, i32 2
  %32 = load double, double* %b25, align 8, !tbaa !25
  %33 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a26 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %33, i32 0, i32 1
  %34 = load double, double* %a26, align 8, !tbaa !26
  %div = fdiv double %32, %34
  store double %div, double* %slope, align 8, !tbaa !7
  %h27 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh, i32 0, i32 2
  %35 = load double, double* %h27, align 8, !tbaa !25
  store double %35, double* %h, align 8, !tbaa !7
  %36 = load double, double* %h, align 8, !tbaa !7
  %cmp28 = fcmp oge double %36, 0.000000e+00
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false.30

land.lhs.true:                                    ; preds = %if.end.24
  %37 = load double, double* %h, align 8, !tbaa !7
  %cmp29 = fcmp olt double %37, 4.500000e+01
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true, %if.end.24
  %38 = load double, double* %h, align 8, !tbaa !7
  %cmp31 = fcmp oge double %38, 3.150000e+02
  br i1 %cmp31, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %lor.lhs.false.30
  %39 = load double, double* %h, align 8, !tbaa !7
  %cmp33 = fcmp ole double %39, 3.600000e+02
  br i1 %cmp33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true.32, %land.lhs.true
  %40 = load double, double* %amax.addr, align 8, !tbaa !7
  %41 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a35 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %41, i32 0, i32 1
  store double %40, double* %a35, align 8, !tbaa !26
  %42 = load double, double* %amax.addr, align 8, !tbaa !7
  %43 = load double, double* %slope, align 8, !tbaa !7
  %mul = fmul double %42, %43
  %44 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b36 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %44, i32 0, i32 2
  store double %mul, double* %b36, align 8, !tbaa !25
  br label %if.end.64

if.else:                                          ; preds = %land.lhs.true.32, %lor.lhs.false.30
  %45 = load double, double* %h, align 8, !tbaa !7
  %cmp37 = fcmp oge double %45, 4.500000e+01
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.44

land.lhs.true.38:                                 ; preds = %if.else
  %46 = load double, double* %h, align 8, !tbaa !7
  %cmp39 = fcmp olt double %46, 1.350000e+02
  br i1 %cmp39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %land.lhs.true.38
  %47 = load double, double* %bmax.addr, align 8, !tbaa !7
  %48 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b41 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %48, i32 0, i32 2
  store double %47, double* %b41, align 8, !tbaa !25
  %49 = load double, double* %bmax.addr, align 8, !tbaa !7
  %50 = load double, double* %slope, align 8, !tbaa !7
  %div42 = fdiv double %49, %50
  %51 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a43 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %51, i32 0, i32 1
  store double %div42, double* %a43, align 8, !tbaa !26
  br label %if.end.63

if.else.44:                                       ; preds = %land.lhs.true.38, %if.else
  %52 = load double, double* %h, align 8, !tbaa !7
  %cmp45 = fcmp oge double %52, 1.350000e+02
  br i1 %cmp45, label %land.lhs.true.46, label %if.else.52

land.lhs.true.46:                                 ; preds = %if.else.44
  %53 = load double, double* %h, align 8, !tbaa !7
  %cmp47 = fcmp olt double %53, 2.250000e+02
  br i1 %cmp47, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %land.lhs.true.46
  %54 = load double, double* %amin.addr, align 8, !tbaa !7
  %55 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a49 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %55, i32 0, i32 1
  store double %54, double* %a49, align 8, !tbaa !26
  %56 = load double, double* %amin.addr, align 8, !tbaa !7
  %57 = load double, double* %slope, align 8, !tbaa !7
  %mul50 = fmul double %56, %57
  %58 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b51 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %58, i32 0, i32 2
  store double %mul50, double* %b51, align 8, !tbaa !25
  br label %if.end.62

if.else.52:                                       ; preds = %land.lhs.true.46, %if.else.44
  %59 = load double, double* %h, align 8, !tbaa !7
  %cmp53 = fcmp oge double %59, 2.250000e+02
  br i1 %cmp53, label %land.lhs.true.54, label %if.else.60

land.lhs.true.54:                                 ; preds = %if.else.52
  %60 = load double, double* %h, align 8, !tbaa !7
  %cmp55 = fcmp olt double %60, 3.150000e+02
  br i1 %cmp55, label %if.then.56, label %if.else.60

if.then.56:                                       ; preds = %land.lhs.true.54
  %61 = load double, double* %bmin.addr, align 8, !tbaa !7
  %62 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b57 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %62, i32 0, i32 2
  store double %61, double* %b57, align 8, !tbaa !25
  %63 = load double, double* %bmin.addr, align 8, !tbaa !7
  %64 = load double, double* %slope, align 8, !tbaa !7
  %div58 = fdiv double %63, %64
  %65 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a59 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %65, i32 0, i32 1
  store double %div58, double* %a59, align 8, !tbaa !26
  br label %if.end.61

if.else.60:                                       ; preds = %land.lhs.true.54, %if.else.52
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.then.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.48
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.40
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.else.60, %cond.end
  %66 = bitcast double* %slope to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast double* %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.cmsCIELCh* %LCh to i8*
  call void @llvm.lifetime.end(i64 24, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.67

if.end.67:                                        ; preds = %cleanup.cont, %lor.lhs.false.14
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %cleanup, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @cmsLab2LCh(%struct.cmsCIELCh*, %struct.cmsCIELab*) #2

declare i8* @_cmsCalloc(%struct._cmsContext_struct*, i32, i32) #2

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #2

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurveFloat(%struct._cmsContext_struct*, i32, float*) #2

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #3

declare double @cmsDeltaE(%struct.cmsCIELab*, %struct.cmsCIELab*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #4 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !7
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !7
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !7
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !7
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!13 = !{!14, !8, i64 24}
!14 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24}
!15 = !{!3, !3, i64 0}
!16 = !{!14, !2, i64 0}
!17 = !{!14, !2, i64 8}
!18 = !{!14, !2, i64 16}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !3, i64 0}
!21 = !{!22, !6, i64 0}
!22 = !{!"", !6, i64 0, !2, i64 8, !10, i64 16, !3, i64 20}
!23 = !{!22, !10, i64 16}
!24 = !{!22, !2, i64 8}
!25 = !{!12, !8, i64 16}
!26 = !{!12, !8, i64 8}
