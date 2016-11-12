; ModuleID = './cmsio1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct._cmsStageCLutData = type { %union.anon, %struct._cms_interp_struc*, i32, i32 }
%union.anon = type { i16* }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"(Dest != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmsio1.c\00", align 1
@__PRETTY_FUNCTION__._cmsReadMediaWhitePoint = private unnamed_addr constant [58 x i8] c"cmsBool _cmsReadMediaWhitePoint(cmsCIEXYZ *, cmsHPROFILE)\00", align 1
@__PRETTY_FUNCTION__._cmsReadCHAD = private unnamed_addr constant [45 x i8] c"cmsBool _cmsReadCHAD(cmsMAT3 *, cmsHPROFILE)\00", align 1
@Device2PCS16 = internal constant [4 x i32] [i32 1093812784, i32 1093812785, i32 1093812786, i32 1093812785], align 16
@Device2PCSFloat = internal constant [4 x i32] [i32 1144144432, i32 1144144433, i32 1144144434, i32 1144144435], align 16
@PCS2Device16 = internal constant [4 x i32] [i32 1110589744, i32 1110589745, i32 1110589746, i32 1110589745], align 16
@PCS2DeviceFloat = internal constant [4 x i32] [i32 1110590512, i32 1110590513, i32 1110590514, i32 1110590515], align 16
@.str.2 = private unnamed_addr constant [26 x i8] c"Unexpected direction (%d)\00", align 1
@BuildGrayInputMatrixPipeline.Zero = private unnamed_addr constant [2 x i16] [i16 -32640, i16 -32640], align 2
@OneToThreeInputMatrix = internal constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@GrayInputMatrix = internal constant [3 x double] [double 0x3FDEDAD8D0328403, double 0x3FE0001000100010, double 0x3FDA65AF14FE2282], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"(r != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ = private unnamed_addr constant [53 x i8] c"cmsBool ReadICCMatrixRGB2XYZ(cmsMAT3 *, cmsHPROFILE)\00", align 1
@PickLstarMatrix = internal constant [3 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], align 16
@PickYMatrix = internal constant [3 x double] [double 0.000000e+00, double 0x3FFFFFE000000000, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ* %Dest, i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %Dest.addr = alloca %struct.cmsCIEXYZ*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Tag = alloca %struct.cmsCIEXYZ*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIEXYZ* %Dest, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIEXYZ** %Tag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIEXYZ* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__._cmsReadMediaWhitePoint, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i8* @cmsReadTag(i8* %3, i32 2004119668) #6
  %4 = bitcast i8* %call to %struct.cmsCIEXYZ*
  store %struct.cmsCIEXYZ* %4, %struct.cmsCIEXYZ** %Tag, align 8, !tbaa !1
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Tag, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.cmsCIEXYZ* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %call2 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %7 = bitcast %struct.cmsCIEXYZ* %6 to i8*
  %8 = bitcast %struct.cmsCIEXYZ* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false), !tbaa.struct !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetEncodedICCversion(i8* %9) #6
  %cmp4 = icmp ult i32 %call3, 67108864
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call6 = call i32 @cmsGetDeviceClass(i8* %10) #6
  %cmp7 = icmp eq i32 %call6, 1835955314
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.5
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %call9 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %12 = bitcast %struct.cmsCIEXYZ* %11 to i8*
  %13 = bitcast %struct.cmsCIEXYZ* %call9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false), !tbaa.struct !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Tag, align 8, !tbaa !1
  %16 = bitcast %struct.cmsCIEXYZ* %14 to i8*
  %17 = bitcast %struct.cmsCIEXYZ* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false), !tbaa.struct !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then
  %18 = bitcast %struct.cmsCIEXYZ** %Tag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i8* @cmsReadTag(i8*, i32) #3

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @cmsGetEncodedICCversion(i8*) #3

declare i32 @cmsGetDeviceClass(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_cmsReadCHAD(%struct.cmsMAT3* %Dest, i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %Dest.addr = alloca %struct.cmsMAT3*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Tag = alloca %struct.cmsMAT3*, align 8
  %cleanup.dest.slot = alloca i32
  %White = alloca %struct.cmsCIEXYZ*, align 8
  store %struct.cmsMAT3* %Dest, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3** %Tag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsMAT3* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__._cmsReadCHAD, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i8* @cmsReadTag(i8* %3, i32 1667785060) #6
  %4 = bitcast i8* %call to %struct.cmsMAT3*
  store %struct.cmsMAT3* %4, %struct.cmsMAT3** %Tag, align 8, !tbaa !1
  %5 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Tag, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmsMAT3* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Tag, align 8, !tbaa !1
  %8 = bitcast %struct.cmsMAT3* %6 to i8*
  %9 = bitcast %struct.cmsMAT3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 72, i32 8, i1 false), !tbaa.struct !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

if.end:                                           ; preds = %cond.end
  %10 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  call void @_cmsMAT3identity(%struct.cmsMAT3* %10) #6
  %11 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsGetEncodedICCversion(i8* %11) #6
  %cmp3 = icmp ult i32 %call2, 67108864
  br i1 %cmp3, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call5 = call i32 @cmsGetDeviceClass(i8* %12) #6
  %cmp6 = icmp eq i32 %call5, 1835955314
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.then.4
  %13 = bitcast %struct.cmsCIEXYZ** %White to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call8 = call i8* @cmsReadTag(i8* %14, i32 2004119668) #6
  %15 = bitcast i8* %call8 to %struct.cmsCIEXYZ*
  store %struct.cmsCIEXYZ* %15, %struct.cmsCIEXYZ** %White, align 8, !tbaa !1
  %16 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %White, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.cmsCIEXYZ* %16, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %17 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  call void @_cmsMAT3identity(%struct.cmsMAT3* %17) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  %18 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Dest.addr, align 8, !tbaa !1
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %White, align 8, !tbaa !1
  %call12 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %call13 = call i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %18, %struct.cmsMAT3* null, %struct.cmsCIEXYZ* %19, %struct.cmsCIEXYZ* %call12) #6
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %20 = bitcast %struct.cmsCIEXYZ** %White to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %cleanup.16

if.end.14:                                        ; preds = %if.then.4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %if.end.15, %cleanup, %if.then
  %21 = bitcast %struct.cmsMAT3** %Tag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @_cmsMAT3identity(%struct.cmsMAT3*) #3

declare i32 @_cmsAdaptationMatrix(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*) #3

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8* %hProfile, i32 %Intent) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %OriginalType = alloca i32, align 4
  %tag16 = alloca i32, align 4
  %tagFloat = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %nc = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %Lut34 = alloca %struct._cmsPipeline_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !10
  %0 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @Device2PCS16, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !9
  store i32 %3, i32* %tag16, align 4, !tbaa !9
  %4 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* @Device2PCSFloat, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !9
  store i32 %6, i32* %tagFloat, align 4, !tbaa !9
  %7 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %8) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetDeviceClass(i8* %9) #6
  %cmp = icmp eq i32 %call3, 1852662636
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %10 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i8* @cmsReadTag(i8* %12, i32 1852009522) #6
  %13 = bitcast i8* %call4 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %13, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %15, i32 0, i32 0) #6
  store %struct._cmsPipeline_struct* %call7, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._cmsPipeline_struct* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %17 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %17) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %call11 = call %struct._cmsStage_struct* @_cmsStageAllocNamedColor(%struct._cms_NAMEDCOLORLIST_struct* %19, i32 1) #6
  %call12 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 0, %struct._cmsStage_struct* %call11) #6
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %if.end.10
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %21) #6
  %call14 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %20, i32 1, %struct._cmsStage_struct* %call13) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.10
  %22 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %22) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %23, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.9, %if.then.6
  %24 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %cleanup.68

if.end.19:                                        ; preds = %entry
  %26 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %cmp20 = icmp ne i32 %26, -1
  br i1 %cmp20, label %if.then.21, label %if.end.61

if.then.21:                                       ; preds = %if.end.19
  %27 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %28 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call22 = call i32 @cmsIsTag(i8* %27, i32 %28) #6
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.21
  %29 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %30 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call25 = call %struct._cmsPipeline_struct* @_cmsReadFloatInputTag(i8* %29, i32 %30) #6
  store %struct._cmsPipeline_struct* %call25, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.26:                                        ; preds = %if.then.21
  %31 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %32 = load i32, i32* %tag16, align 4, !tbaa !9
  %call27 = call i32 @cmsIsTag(i8* %31, i32 %32) #6
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @Device2PCS16, i32 0, i64 0), align 4, !tbaa !9
  store i32 %33, i32* %tag16, align 4, !tbaa !9
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.26
  %34 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %35 = load i32, i32* %tag16, align 4, !tbaa !9
  %call31 = call i32 @cmsIsTag(i8* %34, i32 %35) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.60

if.then.33:                                       ; preds = %if.end.30
  %36 = bitcast %struct._cmsPipeline_struct** %Lut34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %38 = load i32, i32* %tag16, align 4, !tbaa !9
  %call35 = call i8* @cmsReadTag(i8* %37, i32 %38) #6
  %39 = bitcast i8* %call35 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %39, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %40 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %cmp36 = icmp eq %struct._cmsPipeline_struct* %40, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.38:                                        ; preds = %if.then.33
  %41 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %42 = load i32, i32* %tag16, align 4, !tbaa !9
  %call39 = call i32 @_cmsGetTagTrueType(i8* %41, i32 %42) #6
  store i32 %call39, i32* %OriginalType, align 4, !tbaa !9
  %43 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %call40 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %43) #6
  store %struct._cmsPipeline_struct* %call40, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %44 = load i32, i32* %OriginalType, align 4, !tbaa !9
  %cmp41 = icmp ne i32 %44, 1835430962
  br i1 %cmp41, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.38
  %45 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call43 = call i32 @cmsGetPCS(i8* %45) #6
  %cmp44 = icmp ne i32 %call43, 1281450528
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.end.38
  %46 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %46, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.46:                                        ; preds = %lor.lhs.false.42
  %47 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call47 = call i32 @cmsGetColorSpace(i8* %47) #6
  %cmp48 = icmp eq i32 %call47, 1281450528
  br i1 %cmp48, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.46
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %49 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call49 = call %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct* %49) #6
  %call50 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %48, i32 0, %struct._cmsStage_struct* %call49) #6
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true
  br label %Error

if.end.53:                                        ; preds = %land.lhs.true, %if.end.46
  %50 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call54 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %51) #6
  %call55 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %50, i32 1, %struct._cmsStage_struct* %call54) #6
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.53
  br label %Error

if.end.58:                                        ; preds = %if.end.53
  %52 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %52, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

Error:                                            ; preds = %if.then.57, %if.then.52
  %53 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut34, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %53) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %Error, %if.end.58, %if.then.45, %if.then.37
  %54 = bitcast %struct._cmsPipeline_struct** %Lut34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  br label %cleanup.68

if.end.60:                                        ; preds = %if.end.30
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.19
  %55 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call62 = call i32 @cmsGetColorSpace(i8* %55) #6
  %cmp63 = icmp eq i32 %call62, 1196573017
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.61
  %56 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call65 = call %struct._cmsPipeline_struct* @BuildGrayInputMatrixPipeline(i8* %56) #6
  store %struct._cmsPipeline_struct* %call65, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.66:                                        ; preds = %if.end.61
  %57 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call67 = call %struct._cmsPipeline_struct* @BuildRGBInputMatrixShaper(i8* %57) #6
  store %struct._cmsPipeline_struct* %call67, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.66, %if.then.64, %cleanup.59, %if.then.24, %cleanup
  %58 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %62
}

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #3

declare %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct*, i32, i32) #3

declare void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct*) #3

declare i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct*) #3

declare %struct._cmsStage_struct* @_cmsStageAllocNamedColor(%struct._cms_NAMEDCOLORLIST_struct*, i32) #3

declare %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct*) #3

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #3

declare i32 @cmsIsTag(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @_cmsReadFloatInputTag(i8* %hProfile, i32 %tagFloat) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %tagFloat.addr = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %spc = alloca i32, align 4
  %PCS = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %tagFloat, i32* %tagFloat.addr, align 4, !tbaa !9
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %1) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %4 = load i32, i32* %tagFloat.addr, align 4, !tbaa !9
  %call1 = call i8* @cmsReadTag(i8* %3, i32 %4) #6
  %5 = bitcast i8* %call1 to %struct._cmsPipeline_struct*
  %call2 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %5) #6
  store %struct._cmsPipeline_struct* %call2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %6 = bitcast i32* %spc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetColorSpace(i8* %7) #6
  store i32 %call3, i32* %spc, align 4, !tbaa !9
  %8 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsGetPCS(i8* %9) #6
  store i32 %call4, i32* %PCS, align 4, !tbaa !9
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %spc, align 4, !tbaa !9
  %cmp5 = icmp eq i32 %11, 1281450528
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call %struct._cmsStage_struct* @_cmsStageNormalizeToLabFloat(%struct._cmsContext_struct* %13) #6
  %call8 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %12, i32 0, %struct._cmsStage_struct* %call7) #6
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %Error

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %spc, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %14, 1482250784
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.else
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call %struct._cmsStage_struct* @_cmsStageNormalizeToXyzFloat(%struct._cmsContext_struct* %16) #6
  %call14 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %15, i32 0, %struct._cmsStage_struct* %call13) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  br label %Error

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.10
  %17 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %17, 1281450528
  br i1 %cmp20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.end.19
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call22 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromLabFloat(%struct._cmsContext_struct* %19) #6
  %call23 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 1, %struct._cmsStage_struct* %call22) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.21
  br label %Error

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.36

if.else.27:                                       ; preds = %if.end.19
  %20 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp28 = icmp eq i32 %20, 1482250784
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.else.27
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call30 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromXyzFloat(%struct._cmsContext_struct* %22) #6
  %call31 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %21, i32 1, %struct._cmsStage_struct* %call30) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  br label %Error

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %23, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.33, %if.then.25, %if.then.16, %if.then.9
  %24 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %24) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.36, %if.then
  %25 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %spc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %29
}

declare i32 @_cmsGetTagTrueType(i8*, i32) #3

declare %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct*) #3

declare i32 @cmsGetPCS(i8*) #3

declare i32 @cmsGetColorSpace(i8*) #3

declare %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct*) #3

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BuildGrayInputMatrixPipeline(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %GrayTRC = alloca %struct._cms_curve_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %Zero = alloca [2 x i16], align 2
  %EmptyTab = alloca %struct._cms_curve_struct*, align 8
  %LabCurves = alloca [3 x %struct._cms_curve_struct*], align 16
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct** %GrayTRC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %3) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @cmsReadTag(i8* %4, i32 1800688195) #6
  %5 = bitcast i8* %call1 to %struct._cms_curve_struct*
  store %struct._cms_curve_struct* %5, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

if.end:                                           ; preds = %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call2 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %7, i32 1, i32 3) #6
  store %struct._cmsPipeline_struct* %call2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cmsPipeline_struct* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %Error

if.end.5:                                         ; preds = %if.end
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call6 = call i32 @cmsGetPCS(i8* %9) #6
  %cmp7 = icmp eq i32 %call6, 1281450528
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %10 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([2 x i16]* @BuildGrayInputMatrixPipeline.Zero to i8*), i64 4, i32 2, i1 false)
  %12 = bitcast %struct._cms_curve_struct** %EmptyTab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast [3 x %struct._cms_curve_struct*]* %LabCurves to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %Zero, i32 0, i32 0
  %call9 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %14, i32 2, i16* %arraydecay) #6
  store %struct._cms_curve_struct* %call9, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  %15 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cms_curve_struct* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.8
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabCurves, i32 0, i64 0
  store %struct._cms_curve_struct* %16, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabCurves, i32 0, i64 1
  store %struct._cms_curve_struct* %17, %struct._cms_curve_struct** %arrayidx13, align 8, !tbaa !1
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabCurves, i32 0, i64 2
  store %struct._cms_curve_struct* %18, %struct._cms_curve_struct** %arrayidx14, align 8, !tbaa !1
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call15 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %20, i32 3, i32 1, double* getelementptr inbounds ([3 x double], [3 x double]* @OneToThreeInputMatrix, i32 0, i32 0), double* null) #6
  %call16 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %19, i32 1, %struct._cmsStage_struct* %call15) #6
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.21

lor.lhs.false:                                    ; preds = %if.end.12
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %arraydecay17 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabCurves, i32 0, i32 0
  %call18 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %22, i32 3, %struct._cms_curve_struct** %arraydecay17) #6
  %call19 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %21, i32 1, %struct._cmsStage_struct* %call18) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.12
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %23) #6
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %lor.lhs.false
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %24) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.21, %if.then.11, %if.end.22
  %25 = bitcast [3 x %struct._cms_curve_struct*]* %LabCurves to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #1
  %26 = bitcast %struct._cms_curve_struct** %EmptyTab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.35 [
    i32 0, label %cleanup.cont
    i32 2, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.else:                                          ; preds = %if.end.5
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call25 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %29, i32 1, %struct._cms_curve_struct** %GrayTRC) #6
  %call26 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %28, i32 1, %struct._cmsStage_struct* %call25) #6
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.32

lor.lhs.false.28:                                 ; preds = %if.else
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call29 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %31, i32 3, i32 1, double* getelementptr inbounds ([3 x double], [3 x double]* @GrayInputMatrix, i32 0, i32 0), double* null) #6
  %call30 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %30, i32 1, %struct._cmsStage_struct* %call29) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.28, %if.else
  br label %Error

if.end.33:                                        ; preds = %lor.lhs.false.28
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %cleanup.cont
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %32, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

Error:                                            ; preds = %cleanup, %if.then.32, %if.then.4
  %33 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %33) #6
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %34) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.35

cleanup.35:                                       ; preds = %Error, %if.end.34, %cleanup, %if.then
  %35 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct._cms_curve_struct** %GrayTRC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BuildRGBInputMatrixShaper(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %Mat = alloca %struct.cmsMAT3, align 8
  %Shapes = alloca [3 x %struct._cms_curve_struct*], align 16
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast [3 x %struct._cms_curve_struct*]* %Shapes to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %4) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @ReadICCMatrixRGB2XYZ(%struct.cmsMAT3* %Mat, i8* %7) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !10
  %cmp = icmp slt i32 %8, 3
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !10
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %9, 3
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4, !tbaa !10
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom5 = sext i32 %11 to i64
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Mat, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 %idxprom5
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom
  %12 = load double, double* %arrayidx6, align 8, !tbaa !6
  %mul = fmul double %12, 0x3FE0001000100010
  store double %mul, double* %arrayidx6, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %j, align 4, !tbaa !10
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4, !tbaa !10
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !10
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  %15 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call10 = call i8* @cmsReadTag(i8* %15, i32 1918128707) #6
  %16 = bitcast i8* %call10 to %struct._cms_curve_struct*
  %arrayidx11 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 0
  store %struct._cms_curve_struct* %16, %struct._cms_curve_struct** %arrayidx11, align 8, !tbaa !1
  %17 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call12 = call i8* @cmsReadTag(i8* %17, i32 1733579331) #6
  %18 = bitcast i8* %call12 to %struct._cms_curve_struct*
  %arrayidx13 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 1
  store %struct._cms_curve_struct* %18, %struct._cms_curve_struct** %arrayidx13, align 8, !tbaa !1
  %19 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call14 = call i8* @cmsReadTag(i8* %19, i32 1649693251) #6
  %20 = bitcast i8* %call14 to %struct._cms_curve_struct*
  %arrayidx15 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 2
  store %struct._cms_curve_struct* %20, %struct._cms_curve_struct** %arrayidx15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 0
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx16, align 8, !tbaa !1
  %tobool17 = icmp ne %struct._cms_curve_struct* %21, null
  br i1 %tobool17, label %lor.lhs.false, label %if.then.23

lor.lhs.false:                                    ; preds = %for.end.9
  %arrayidx18 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 1
  %22 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx18, align 8, !tbaa !1
  %tobool19 = icmp ne %struct._cms_curve_struct* %22, null
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.23

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %arrayidx21 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 2
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx21, align 8, !tbaa !1
  %tobool22 = icmp ne %struct._cms_curve_struct* %23, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %for.end.9
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.20
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call25 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %24, i32 3, i32 3) #6
  store %struct._cmsPipeline_struct* %call25, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp26 = icmp ne %struct._cmsPipeline_struct* %25, null
  br i1 %cmp26, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.end.24
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i32 0
  %call28 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %27, i32 3, %struct._cms_curve_struct** %arraydecay) #6
  %call29 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %26, i32 1, %struct._cmsStage_struct* %call28) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.then.35

lor.lhs.false.31:                                 ; preds = %if.then.27
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %30 = bitcast %struct.cmsMAT3* %Mat to double*
  %call32 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %29, i32 3, i32 3, double* %30, double* null) #6
  %call33 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %28, i32 1, %struct._cmsStage_struct* %call32) #6
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %lor.lhs.false.31, %if.then.27
  br label %Error

if.end.36:                                        ; preds = %lor.lhs.false.31
  %31 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call37 = call i32 @cmsGetPCS(i8* %31) #6
  %cmp38 = icmp eq i32 %call37, 1281450528
  br i1 %cmp38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.36
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call40 = call %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct* %33) #6
  %call41 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %32, i32 1, %struct._cmsStage_struct* %call40) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.then.39
  br label %Error

if.end.44:                                        ; preds = %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.24
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %34, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.43, %if.then.35
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %35) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.46, %if.then.23, %if.then
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [3 x %struct._cms_curve_struct*]* %Shapes to i8*
  call void @llvm.lifetime.end(i64 24, i8* %39) #1
  %40 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.end(i64 72, i8* %40) #1
  %41 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %42
}

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsReadOutputLUT(i8* %hProfile, i32 %Intent) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %OriginalType = alloca i32, align 4
  %tag16 = alloca i32, align 4
  %tagFloat = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !10
  %0 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @PCS2Device16, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !9
  store i32 %3, i32* %tag16, align 4, !tbaa !9
  %4 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* @PCS2DeviceFloat, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4, !tbaa !9
  store i32 %6, i32* %tagFloat, align 4, !tbaa !9
  %7 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %8) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %9 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %cmp = icmp ne i32 %9, -1
  br i1 %cmp, label %if.then, label %if.end.46

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %11 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call3 = call i32 @cmsIsTag(i8* %10, i32 %11) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %13 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call5 = call %struct._cmsPipeline_struct* @_cmsReadFloatOutputTag(i8* %12, i32 %13) #6
  store %struct._cmsPipeline_struct* %call5, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end:                                           ; preds = %if.then
  %14 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %15 = load i32, i32* %tag16, align 4, !tbaa !9
  %call6 = call i32 @cmsIsTag(i8* %14, i32 %15) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %16 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @PCS2Device16, i32 0, i64 0), align 4, !tbaa !9
  store i32 %16, i32* %tag16, align 4, !tbaa !9
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %17 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %18 = load i32, i32* %tag16, align 4, !tbaa !9
  %call10 = call i32 @cmsIsTag(i8* %17, i32 %18) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.45

if.then.12:                                       ; preds = %if.end.9
  %19 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %21 = load i32, i32* %tag16, align 4, !tbaa !9
  %call13 = call i8* @cmsReadTag(i8* %20, i32 %21) #6
  %22 = bitcast i8* %call13 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %22, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp14 = icmp eq %struct._cmsPipeline_struct* %23, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %24 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %25 = load i32, i32* %tag16, align 4, !tbaa !9
  %call17 = call i32 @_cmsGetTagTrueType(i8* %24, i32 %25) #6
  store i32 %call17, i32* %OriginalType, align 4, !tbaa !9
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %call18 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %26) #6
  store %struct._cmsPipeline_struct* %call18, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp19 = icmp eq %struct._cmsPipeline_struct* %27, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.16
  %28 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call22 = call i32 @cmsGetPCS(i8* %28) #6
  %cmp23 = icmp eq i32 %call22, 1281450528
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @ChangeInterpolationToTrilinear(%struct._cmsPipeline_struct* %29) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  %30 = load i32, i32* %OriginalType, align 4, !tbaa !9
  %cmp26 = icmp ne i32 %30, 1835430962
  br i1 %cmp26, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %31 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call27 = call i32 @cmsGetPCS(i8* %31) #6
  %cmp28 = icmp ne i32 %call27, 1281450528
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.25
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %32, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %lor.lhs.false
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call31 = call %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct* %34) #6
  %call32 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %33, i32 0, %struct._cmsStage_struct* %call31) #6
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.30
  br label %Error

if.end.35:                                        ; preds = %if.end.30
  %35 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call36 = call i32 @cmsGetColorSpace(i8* %35) #6
  %cmp37 = icmp eq i32 %call36, 1281450528
  br i1 %cmp37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.end.35
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call39 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %37) #6
  %call40 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %36, i32 1, %struct._cmsStage_struct* %call39) #6
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.then.38
  br label %Error

if.end.43:                                        ; preds = %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.35
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %38, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.42, %if.then.34
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %39) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.44, %if.then.29, %if.then.20, %if.then.15
  %40 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %cleanup.53

if.end.45:                                        ; preds = %if.end.9
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %entry
  %41 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call47 = call i32 @cmsGetColorSpace(i8* %41) #6
  %cmp48 = icmp eq i32 %call47, 1196573017
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %42 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call50 = call %struct._cmsPipeline_struct* @BuildGrayOutputPipeline(i8* %42) #6
  store %struct._cmsPipeline_struct* %call50, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

if.end.51:                                        ; preds = %if.end.46
  %43 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call52 = call %struct._cmsPipeline_struct* @BuildRGBOutputMatrixShaper(i8* %43) #6
  store %struct._cmsPipeline_struct* %call52, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.53

cleanup.53:                                       ; preds = %if.end.51, %if.then.49, %cleanup, %if.then.4
  %44 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @_cmsReadFloatOutputTag(i8* %hProfile, i32 %tagFloat) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %tagFloat.addr = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %PCS = alloca i32, align 4
  %dataSpace = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %tagFloat, i32* %tagFloat.addr, align 4, !tbaa !9
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %1) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %4 = load i32, i32* %tagFloat.addr, align 4, !tbaa !9
  %call1 = call i8* @cmsReadTag(i8* %3, i32 %4) #6
  %5 = bitcast i8* %call1 to %struct._cmsPipeline_struct*
  %call2 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %5) #6
  store %struct._cmsPipeline_struct* %call2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %6 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetPCS(i8* %7) #6
  store i32 %call3, i32* %PCS, align 4, !tbaa !9
  %8 = bitcast i32* %dataSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsGetColorSpace(i8* %9) #6
  store i32 %call4, i32* %dataSpace, align 4, !tbaa !9
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp5 = icmp eq i32 %11, 1281450528
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call %struct._cmsStage_struct* @_cmsStageNormalizeToLabFloat(%struct._cmsContext_struct* %13) #6
  %call8 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %12, i32 0, %struct._cmsStage_struct* %call7) #6
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %Error

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %14, 1482250784
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.else
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call %struct._cmsStage_struct* @_cmsStageNormalizeToXyzFloat(%struct._cmsContext_struct* %16) #6
  %call14 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %15, i32 0, %struct._cmsStage_struct* %call13) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  br label %Error

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.10
  %17 = load i32, i32* %dataSpace, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %17, 1281450528
  br i1 %cmp20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.end.19
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call22 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromLabFloat(%struct._cmsContext_struct* %19) #6
  %call23 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 1, %struct._cmsStage_struct* %call22) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.21
  br label %Error

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.36

if.else.27:                                       ; preds = %if.end.19
  %20 = load i32, i32* %dataSpace, align 4, !tbaa !9
  %cmp28 = icmp eq i32 %20, 1482250784
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.else.27
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call30 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromXyzFloat(%struct._cmsContext_struct* %22) #6
  %call31 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %21, i32 1, %struct._cmsStage_struct* %call30) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  br label %Error

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %23, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.33, %if.then.25, %if.then.16, %if.then.9
  %24 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %24) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.36, %if.then
  %25 = bitcast i32* %dataSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %29
}

; Function Attrs: nounwind uwtable
define internal void @ChangeInterpolationToTrilinear(%struct._cmsPipeline_struct* %Lut) #0 {
entry:
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Stage = alloca %struct._cmsStage_struct*, align 8
  %CLUT = alloca %struct._cmsStageCLutData*, align 8
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %Stage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %1) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  %call1 = call i32 @cmsStageType(%struct._cmsStage_struct* %3) #6
  %cmp2 = icmp eq i32 %call1, 1668052340
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = bitcast %struct._cmsStageCLutData** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %5, i32 0, i32 8
  %6 = load i8*, i8** %Data, align 8, !tbaa !12
  %7 = bitcast i8* %6 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %7, %struct._cmsStageCLutData** %CLUT, align 8, !tbaa !1
  %8 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %CLUT, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %8, i32 0, i32 1
  %9 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !14
  %dwFlags = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %9, i32 0, i32 1
  %10 = load i32, i32* %dwFlags, align 4, !tbaa !16
  %or = or i32 %10, 256
  store i32 %or, i32* %dwFlags, align 4, !tbaa !16
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !18
  %13 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %CLUT, align 8, !tbaa !1
  %Params3 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %13, i32 0, i32 1
  %14 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params3, align 8, !tbaa !14
  %call4 = call i32 @_cmsSetInterpolationRoutine(%struct._cmsContext_struct* %12, %struct._cms_interp_struc* %14) #6
  %15 = bitcast %struct._cmsStageCLutData** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  %call5 = call %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct* %16) #6
  store %struct._cmsStage_struct* %call5, %struct._cmsStage_struct** %Stage, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast %struct._cmsStage_struct** %Stage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BuildGrayOutputPipeline(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %GrayTRC = alloca %struct._cms_curve_struct*, align 8
  %RevGrayTRC = alloca %struct._cms_curve_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct** %GrayTRC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cms_curve_struct** %RevGrayTRC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %4) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @cmsReadTag(i8* %5, i32 1800688195) #6
  %6 = bitcast i8* %call1 to %struct._cms_curve_struct*
  store %struct._cms_curve_struct* %6, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %GrayTRC, align 8, !tbaa !1
  %call2 = call %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %8) #6
  store %struct._cms_curve_struct* %call2, %struct._cms_curve_struct** %RevGrayTRC, align 8, !tbaa !1
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %RevGrayTRC, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_curve_struct* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call6 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %10, i32 3, i32 1) #6
  store %struct._cmsPipeline_struct* %call6, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._cmsPipeline_struct* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %RevGrayTRC, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %12) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %13 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call10 = call i32 @cmsGetPCS(i8* %13) #6
  %cmp11 = icmp eq i32 %call10, 1281450528
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %15, i32 1, i32 3, double* getelementptr inbounds ([3 x double], [3 x double]* @PickLstarMatrix, i32 0, i32 0), double* null) #6
  %call14 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %14, i32 1, %struct._cmsStage_struct* %call13) #6
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  br label %Error

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.22

if.else:                                          ; preds = %if.end.9
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call17 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %17, i32 1, i32 3, double* getelementptr inbounds ([3 x double], [3 x double]* @PickYMatrix, i32 0, i32 0), double* null) #6
  %call18 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %16, i32 1, %struct._cmsStage_struct* %call17) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.else
  br label %Error

if.end.21:                                        ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.16
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call23 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %19, i32 1, %struct._cms_curve_struct** %RevGrayTRC) #6
  %call24 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 1, %struct._cmsStage_struct* %call23) #6
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.22
  br label %Error

if.end.27:                                        ; preds = %if.end.22
  %20 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %RevGrayTRC, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %20) #6
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %21, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.26, %if.then.20, %if.then.15
  %22 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %RevGrayTRC, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %22) #6
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %23) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.27, %if.then.8, %if.then.4, %if.then
  %24 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct._cms_curve_struct** %RevGrayTRC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct._cms_curve_struct** %GrayTRC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BuildRGBOutputMatrixShaper(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %Shapes = alloca [3 x %struct._cms_curve_struct*], align 16
  %InvShapes = alloca [3 x %struct._cms_curve_struct*], align 16
  %Mat = alloca %struct.cmsMAT3, align 8
  %Inv = alloca %struct.cmsMAT3, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [3 x %struct._cms_curve_struct*]* %Shapes to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast [3 x %struct._cms_curve_struct*]* %InvShapes to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast %struct.cmsMAT3* %Inv to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %8) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @ReadICCMatrixRGB2XYZ(%struct.cmsMAT3* %Mat, i8* %9) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %Mat, %struct.cmsMAT3* %Inv) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.end.5
  %10 = load i32, i32* %i, align 4, !tbaa !10
  %cmp = icmp slt i32 %10, 3
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !10
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4, !tbaa !10
  %cmp7 = icmp slt i32 %11, 3
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %j, align 4, !tbaa !10
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom9 = sext i32 %13 to i64
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Inv, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 %idxprom9
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom
  %14 = load double, double* %arrayidx10, align 8, !tbaa !6
  %mul = fmul double %14, 0x3FFFFFE000000000
  store double %mul, double* %arrayidx10, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %15 = load i32, i32* %j, align 4, !tbaa !10
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4, !tbaa !10
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !10
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %17 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call14 = call i8* @cmsReadTag(i8* %17, i32 1918128707) #6
  %18 = bitcast i8* %call14 to %struct._cms_curve_struct*
  %arrayidx15 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 0
  store %struct._cms_curve_struct* %18, %struct._cms_curve_struct** %arrayidx15, align 8, !tbaa !1
  %19 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call16 = call i8* @cmsReadTag(i8* %19, i32 1733579331) #6
  %20 = bitcast i8* %call16 to %struct._cms_curve_struct*
  %arrayidx17 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 1
  store %struct._cms_curve_struct* %20, %struct._cms_curve_struct** %arrayidx17, align 8, !tbaa !1
  %21 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call18 = call i8* @cmsReadTag(i8* %21, i32 1649693251) #6
  %22 = bitcast i8* %call18 to %struct._cms_curve_struct*
  %arrayidx19 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 2
  store %struct._cms_curve_struct* %22, %struct._cms_curve_struct** %arrayidx19, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 0
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx20, align 8, !tbaa !1
  %tobool21 = icmp ne %struct._cms_curve_struct* %23, null
  br i1 %tobool21, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %for.end.13
  %arrayidx22 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 1
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx22, align 8, !tbaa !1
  %tobool23 = icmp ne %struct._cms_curve_struct* %24, null
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.27

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %arrayidx25 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 2
  %25 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx25, align 8, !tbaa !1
  %tobool26 = icmp ne %struct._cms_curve_struct* %25, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %for.end.13
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %lor.lhs.false.24
  %arrayidx29 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 0
  %26 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx29, align 8, !tbaa !1
  %call30 = call %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %26) #6
  %arrayidx31 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 0
  store %struct._cms_curve_struct* %call30, %struct._cms_curve_struct** %arrayidx31, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 1
  %27 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx32, align 8, !tbaa !1
  %call33 = call %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %27) #6
  %arrayidx34 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 1
  store %struct._cms_curve_struct* %call33, %struct._cms_curve_struct** %arrayidx34, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Shapes, i32 0, i64 2
  %28 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx35, align 8, !tbaa !1
  %call36 = call %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %28) #6
  %arrayidx37 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 2
  store %struct._cms_curve_struct* %call36, %struct._cms_curve_struct** %arrayidx37, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 0
  %29 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx38, align 8, !tbaa !1
  %tobool39 = icmp ne %struct._cms_curve_struct* %29, null
  br i1 %tobool39, label %lor.lhs.false.40, label %if.then.46

lor.lhs.false.40:                                 ; preds = %if.end.28
  %arrayidx41 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 1
  %30 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx41, align 8, !tbaa !1
  %tobool42 = icmp ne %struct._cms_curve_struct* %30, null
  br i1 %tobool42, label %lor.lhs.false.43, label %if.then.46

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %arrayidx44 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i64 2
  %31 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx44, align 8, !tbaa !1
  %tobool45 = icmp ne %struct._cms_curve_struct* %31, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.40, %if.end.28
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %lor.lhs.false.43
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call48 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %32, i32 3, i32 3) #6
  store %struct._cmsPipeline_struct* %call48, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp49 = icmp ne %struct._cmsPipeline_struct* %33, null
  br i1 %cmp49, label %if.then.50, label %if.end.69

if.then.50:                                       ; preds = %if.end.47
  %34 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call51 = call i32 @cmsGetPCS(i8* %34) #6
  %cmp52 = icmp eq i32 %call51, 1281450528
  br i1 %cmp52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %if.then.50
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call54 = call %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct* %36) #6
  %call55 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %35, i32 1, %struct._cmsStage_struct* %call54) #6
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.53
  br label %Error

if.end.58:                                        ; preds = %if.then.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.50
  %37 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %39 = bitcast %struct.cmsMAT3* %Inv to double*
  %call60 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %38, i32 3, i32 3, double* %39, double* null) #6
  %call61 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %37, i32 1, %struct._cmsStage_struct* %call60) #6
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.67

lor.lhs.false.63:                                 ; preds = %if.end.59
  %40 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i32 0
  %call64 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %41, i32 3, %struct._cms_curve_struct** %arraydecay) #6
  %call65 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %40, i32 1, %struct._cmsStage_struct* %call64) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %lor.lhs.false.63, %if.end.59
  br label %Error

if.end.68:                                        ; preds = %lor.lhs.false.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.47
  %arraydecay70 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i32 0
  call void @cmsFreeToneCurveTriple(%struct._cms_curve_struct** %arraydecay70) #6
  %42 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %42, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.67, %if.then.57
  %arraydecay71 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %InvShapes, i32 0, i32 0
  call void @cmsFreeToneCurveTriple(%struct._cms_curve_struct** %arraydecay71) #6
  %43 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %43) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.69, %if.then.46, %if.then.27, %if.then.4, %if.then
  %44 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.cmsMAT3* %Inv to i8*
  call void @llvm.lifetime.end(i64 72, i8* %47) #1
  %48 = bitcast %struct.cmsMAT3* %Mat to i8*
  call void @llvm.lifetime.end(i64 72, i8* %48) #1
  %49 = bitcast [3 x %struct._cms_curve_struct*]* %InvShapes to i8*
  call void @llvm.lifetime.end(i64 24, i8* %49) #1
  %50 = bitcast [3 x %struct._cms_curve_struct*]* %Shapes to i8*
  call void @llvm.lifetime.end(i64 24, i8* %50) #1
  %51 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %52
}

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsReadDevicelinkLUT(i8* %hProfile, i32 %Intent) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %OriginalType = alloca i32, align 4
  %tag16 = alloca i32, align 4
  %tagFloat = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %nc = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !10
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @Device2PCS16, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !9
  store i32 %4, i32* %tag16, align 4, !tbaa !9
  %5 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* @Device2PCSFloat, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4, !tbaa !9
  store i32 %7, i32* %tagFloat, align 4, !tbaa !9
  %8 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %9) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetDeviceClass(i8* %10) #6
  %cmp = icmp eq i32 %call3, 1852662636
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %11 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i8* @cmsReadTag(i8* %12, i32 1852009522) #6
  %13 = bitcast i8* %call4 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %13, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %15, i32 0, i32 0) #6
  store %struct._cmsPipeline_struct* %call7, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._cmsPipeline_struct* %16, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %Error

if.end.10:                                        ; preds = %if.end
  %17 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  %call11 = call %struct._cmsStage_struct* @_cmsStageAllocNamedColor(%struct._cms_NAMEDCOLORLIST_struct* %18, i32 0) #6
  %call12 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %17, i32 0, %struct._cmsStage_struct* %call11) #6
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %Error

if.end.14:                                        ; preds = %if.end.10
  %19 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call15 = call i32 @cmsGetColorSpace(i8* %19) #6
  %cmp16 = icmp eq i32 %call15, 1281450528
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call18 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %21) #6
  %call19 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %20, i32 1, %struct._cmsStage_struct* %call18) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.17
  br label %Error

if.end.22:                                        ; preds = %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.14
  %22 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %22, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.21, %if.then.13, %if.then.9
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %23) #6
  %24 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc, align 8, !tbaa !1
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %24) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.23, %if.then.6
  %25 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %cleanup.78

if.end.24:                                        ; preds = %entry
  %26 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %27 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call25 = call i32 @cmsIsTag(i8* %26, i32 %27) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %28 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %29 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call28 = call %struct._cmsPipeline_struct* @_cmsReadFloatDevicelinkTag(i8* %28, i32 %29) #6
  store %struct._cmsPipeline_struct* %call28, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.29:                                        ; preds = %if.end.24
  %30 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @Device2PCSFloat, i32 0, i64 0), align 4, !tbaa !9
  store i32 %30, i32* %tagFloat, align 4, !tbaa !9
  %31 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %32 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call30 = call i32 @cmsIsTag(i8* %31, i32 %32) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.29
  %33 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %34 = load i32, i32* %tagFloat, align 4, !tbaa !9
  %call33 = call i8* @cmsReadTag(i8* %33, i32 %34) #6
  %35 = bitcast i8* %call33 to %struct._cmsPipeline_struct*
  %call34 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %35) #6
  store %struct._cmsPipeline_struct* %call34, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.35:                                        ; preds = %if.end.29
  %36 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %37 = load i32, i32* %tag16, align 4, !tbaa !9
  %call36 = call i32 @cmsIsTag(i8* %36, i32 %37) #6
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.43, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %38 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @Device2PCS16, i32 0, i64 0), align 4, !tbaa !9
  store i32 %38, i32* %tag16, align 4, !tbaa !9
  %39 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %40 = load i32, i32* %tag16, align 4, !tbaa !9
  %call39 = call i32 @cmsIsTag(i8* %39, i32 %40) #6
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.then.38
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.42:                                        ; preds = %if.then.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.35
  %41 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %42 = load i32, i32* %tag16, align 4, !tbaa !9
  %call44 = call i8* @cmsReadTag(i8* %41, i32 %42) #6
  %43 = bitcast i8* %call44 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %43, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %44 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp45 = icmp eq %struct._cmsPipeline_struct* %44, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.47:                                        ; preds = %if.end.43
  %45 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %call48 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %45) #6
  store %struct._cmsPipeline_struct* %call48, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %46 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp49 = icmp eq %struct._cmsPipeline_struct* %46, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.51:                                        ; preds = %if.end.47
  %47 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call52 = call i32 @cmsGetPCS(i8* %47) #6
  %cmp53 = icmp eq i32 %call52, 1281450528
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @ChangeInterpolationToTrilinear(%struct._cmsPipeline_struct* %48) #6
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %49 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %50 = load i32, i32* %tag16, align 4, !tbaa !9
  %call56 = call i32 @_cmsGetTagTrueType(i8* %49, i32 %50) #6
  store i32 %call56, i32* %OriginalType, align 4, !tbaa !9
  %51 = load i32, i32* %OriginalType, align 4, !tbaa !9
  %cmp57 = icmp ne i32 %51, 1835430962
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  %52 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %52, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.59:                                        ; preds = %if.end.55
  %53 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call60 = call i32 @cmsGetColorSpace(i8* %53) #6
  %cmp61 = icmp eq i32 %call60, 1281450528
  br i1 %cmp61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.end.59
  %54 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %55 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call63 = call %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct* %55) #6
  %call64 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %54, i32 0, %struct._cmsStage_struct* %call63) #6
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.then.62
  br label %Error2

if.end.67:                                        ; preds = %if.then.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.59
  %56 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call69 = call i32 @cmsGetPCS(i8* %56) #6
  %cmp70 = icmp eq i32 %call69, 1281450528
  br i1 %cmp70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %if.end.68
  %57 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %58 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call72 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %58) #6
  %call73 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %57, i32 1, %struct._cmsStage_struct* %call72) #6
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.then.71
  br label %Error2

if.end.76:                                        ; preds = %if.then.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.68
  %59 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %59, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

Error2:                                           ; preds = %if.then.75, %if.then.66
  %60 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %60) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %Error2, %if.end.77, %if.then.58, %if.then.50, %if.then.46, %if.then.41, %if.then.32, %if.then.27, %cleanup
  %61 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %tagFloat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %tag16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %OriginalType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @_cmsReadFloatDevicelinkTag(i8* %hProfile, i32 %tagFloat) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %tagFloat.addr = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %PCS = alloca i32, align 4
  %spc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %tagFloat, i32* %tagFloat.addr, align 4, !tbaa !9
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %1) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %4 = load i32, i32* %tagFloat.addr, align 4, !tbaa !9
  %call1 = call i8* @cmsReadTag(i8* %3, i32 %4) #6
  %5 = bitcast i8* %call1 to %struct._cmsPipeline_struct*
  %call2 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %5) #6
  store %struct._cmsPipeline_struct* %call2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %6 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsGetPCS(i8* %7) #6
  store i32 %call3, i32* %PCS, align 4, !tbaa !9
  %8 = bitcast i32* %spc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsGetColorSpace(i8* %9) #6
  store i32 %call4, i32* %spc, align 4, !tbaa !9
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %spc, align 4, !tbaa !9
  %cmp5 = icmp eq i32 %11, 1281450528
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call7 = call %struct._cmsStage_struct* @_cmsStageNormalizeToLabFloat(%struct._cmsContext_struct* %13) #6
  %call8 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %12, i32 0, %struct._cmsStage_struct* %call7) #6
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %Error

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %spc, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %14, 1482250784
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.else
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call %struct._cmsStage_struct* @_cmsStageNormalizeToXyzFloat(%struct._cmsContext_struct* %16) #6
  %call14 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %15, i32 0, %struct._cmsStage_struct* %call13) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  br label %Error

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.10
  %17 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %17, 1281450528
  br i1 %cmp20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.end.19
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call22 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromLabFloat(%struct._cmsContext_struct* %19) #6
  %call23 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 1, %struct._cmsStage_struct* %call22) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.21
  br label %Error

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.36

if.else.27:                                       ; preds = %if.end.19
  %20 = load i32, i32* %PCS, align 4, !tbaa !9
  %cmp28 = icmp eq i32 %20, 1482250784
  br i1 %cmp28, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.else.27
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call30 = call %struct._cmsStage_struct* @_cmsStageNormalizeFromXyzFloat(%struct._cmsContext_struct* %22) #6
  %call31 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %21, i32 1, %struct._cmsStage_struct* %call30) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.29
  br label %Error

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %23, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.33, %if.then.25, %if.then.16, %if.then.9
  %24 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %24) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.36, %if.then
  %25 = bitcast i32* %spc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %PCS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %29
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsMatrixShaper(i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetColorSpace(i8* %0) #6
  switch i32 %call, label %sw.default [
    i32 1196573017, label %sw.bb
    i32 1380401696, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsIsTag(i8* %1, i32 1800688195) #6
  store i32 %call1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call3 = call i32 @cmsIsTag(i8* %2, i32 1918392666) #6
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %sw.bb.2
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsIsTag(i8* %3, i32 1733843290) #6
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call7 = call i32 @cmsIsTag(i8* %4, i32 1649957210) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call10 = call i32 @cmsIsTag(i8* %5, i32 1918128707) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call13 = call i32 @cmsIsTag(i8* %6, i32 1733579331) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call15 = call i32 @cmsIsTag(i8* %7, i32 1649693251) #6
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true, %sw.bb.2
  %8 = phi i1 [ false, %land.lhs.true.12 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %sw.bb.2 ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %land.end, %sw.bb
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsCLUT(i8* %hProfile, i32 %Intent, i32 %UsedDirection) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %UsedDirection.addr = alloca i32, align 4
  %TagTable = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !10
  store i32 %UsedDirection, i32* %UsedDirection.addr, align 4, !tbaa !10
  %0 = bitcast i32** %TagTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetDeviceClass(i8* %1) #6
  %cmp = icmp eq i32 %call, 1818848875
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsGetHeaderRenderingIntent(i8* %2) #6
  %3 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %cmp2 = icmp eq i32 %call1, %3
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %UsedDirection.addr, align 4, !tbaa !10
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @Device2PCS16, i32 0, i32 0), i32** %TagTable, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @PCS2Device16, i32 0, i32 0), i32** %TagTable, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %6 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %call5 = call i32 @cmsIsIntentSupported(i8* %5, i32 %6, i32 0) #6
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.4
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call6 = call i32 @cmsIsIntentSupported(i8* %7, i32 1, i32 1) #6
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.4
  %8 = phi i1 [ false, %sw.bb.4 ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call8 = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %9) #6
  %10 = load i32, i32* %UsedDirection.addr, align 4, !tbaa !10
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %call8, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %10) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb
  %11 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %12 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %idxprom = zext i32 %12 to i64
  %13 = load i32*, i32** %TagTable, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %call9 = call i32 @cmsIsTag(i8* %11, i32 %14) #6
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %land.end, %if.then
  %15 = bitcast i32** %TagTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @cmsGetHeaderRenderingIntent(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @cmsIsIntentSupported(i8* %hProfile, i32 %Intent, i32 %UsedDirection) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Intent.addr = alloca i32, align 4
  %UsedDirection.addr = alloca i32, align 4
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !10
  store i32 %UsedDirection, i32* %UsedDirection.addr, align 4, !tbaa !10
  %0 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %1 = load i32, i32* %Intent.addr, align 4, !tbaa !10
  %2 = load i32, i32* %UsedDirection.addr, align 4, !tbaa !10
  %call = call i32 @cmsIsCLUT(i8* %0, i32 %1, i32 %2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsIsMatrixShaper(i8* %3) #6
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.cmsSEQ* @_cmsReadProfileSequence(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct.cmsSEQ*, align 8
  %hProfile.addr = alloca i8*, align 8
  %ProfileSeq = alloca %struct.cmsSEQ*, align 8
  %ProfileId = alloca %struct.cmsSEQ*, align 8
  %NewSeq = alloca %struct.cmsSEQ*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsSEQ** %ProfileSeq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsSEQ** %ProfileId to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.cmsSEQ** %NewSeq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i8* @cmsReadTag(i8* %4, i32 1886610801) #6
  %5 = bitcast i8* %call to %struct.cmsSEQ*
  store %struct.cmsSEQ* %5, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @cmsReadTag(i8* %6, i32 1886611812) #6
  %7 = bitcast i8* %call1 to %struct.cmsSEQ*
  store %struct.cmsSEQ* %7, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %8 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsSEQ* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.cmsSEQ* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.cmsSEQ* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %11 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %call5 = call %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ* %11) #6
  store %struct.cmsSEQ* %call5, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %cmp7 = icmp eq %struct.cmsSEQ* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %call9 = call %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ* %13) #6
  store %struct.cmsSEQ* %call9, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  %14 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %14, i32 0, i32 0
  %15 = load i32, i32* %n, align 4, !tbaa !20
  %16 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %n11 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %16, i32 0, i32 0
  %17 = load i32, i32* %n11, align 4, !tbaa !20
  %cmp12 = icmp ne i32 %15, %17
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %18 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %call14 = call %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ* %18) #6
  store %struct.cmsSEQ* %call14, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end.10
  %19 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %call16 = call %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ* %19) #6
  store %struct.cmsSEQ* %call16, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %20 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %cmp17 = icmp ne %struct.cmsSEQ* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %21 = load i32, i32* %i, align 4, !tbaa !10
  %22 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileSeq, align 8, !tbaa !1
  %n19 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %22, i32 0, i32 0
  %23 = load i32, i32* %n19, align 4, !tbaa !20
  %cmp20 = icmp ult i32 %21, %23
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %25, i32 0, i32 2
  %26 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %26, i64 %idxprom
  %ProfileID = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx, i32 0, i32 4
  %27 = bitcast %union.cmsProfileID* %ProfileID to i8*
  %28 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom21 = zext i32 %28 to i64
  %29 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %seq22 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %29, i32 0, i32 2
  %30 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq22, align 8, !tbaa !22
  %arrayidx23 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %30, i64 %idxprom21
  %ProfileID24 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx23, i32 0, i32 4
  %31 = bitcast %union.cmsProfileID* %ProfileID24 to i8*
  %call25 = call i8* @memmove(i8* %27, i8* %31, i64 16) #7
  %32 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom26 = zext i32 %32 to i64
  %33 = load %struct.cmsSEQ*, %struct.cmsSEQ** %ProfileId, align 8, !tbaa !1
  %seq27 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %33, i32 0, i32 2
  %34 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq27, align 8, !tbaa !22
  %arrayidx28 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %34, i64 %idxprom26
  %Description = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx28, i32 0, i32 7
  %35 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description, align 8, !tbaa !23
  %call29 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %35) #6
  %36 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom30 = zext i32 %36 to i64
  %37 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq31 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %37, i32 0, i32 2
  %38 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq31, align 8, !tbaa !22
  %arrayidx32 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %38, i64 %idxprom30
  %Description33 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx32, i32 0, i32 7
  store %struct._cms_MLU_struct* %call29, %struct._cms_MLU_struct** %Description33, align 8, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end.15
  %40 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  store %struct.cmsSEQ* %40, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.13, %if.then.8, %if.then.4, %if.then
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.cmsSEQ** %NewSeq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.cmsSEQ** %ProfileId to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.cmsSEQ** %ProfileSeq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load %struct.cmsSEQ*, %struct.cmsSEQ** %retval
  ret %struct.cmsSEQ* %45
}

declare %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ*) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

declare %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteProfileSequence(i8* %hProfile, %struct.cmsSEQ* %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %seq.addr = alloca %struct.cmsSEQ*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store %struct.cmsSEQ* %seq, %struct.cmsSEQ** %seq.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %1 = load %struct.cmsSEQ*, %struct.cmsSEQ** %seq.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cmsSEQ* %1 to i8*
  %call = call i32 @cmsWriteTag(i8* %0, i32 1886610801, i8* %2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call double @cmsGetProfileVersion(i8* %3) #6
  %cmp = fcmp oge double %call1, 4.000000e+00
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %5 = load %struct.cmsSEQ*, %struct.cmsSEQ** %seq.addr, align 8, !tbaa !1
  %6 = bitcast %struct.cmsSEQ* %5 to i8*
  %call3 = call i32 @cmsWriteTag(i8* %4, i32 1886611812, i8* %6) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @cmsWriteTag(i8*, i32, i8*) #3

declare double @cmsGetProfileVersion(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.cmsSEQ* @_cmsCompileProfileSequence(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i8** %hProfiles) #0 {
entry:
  %retval = alloca %struct.cmsSEQ*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %hProfiles.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.cmsSEQ*, align 8
  %cleanup.dest.slot = alloca i32
  %ps = alloca %struct.cmsPSEQDESC*, align 8
  %h = alloca i8*, align 8
  %techpt = alloca i32*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !10
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmsSEQ** %seq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %3 = load i32, i32* %nProfiles.addr, align 4, !tbaa !10
  %call = call %struct.cmsSEQ* @cmsAllocProfileSequenceDescription(%struct._cmsContext_struct* %2, i32 %3) #6
  store %struct.cmsSEQ* %call, %struct.cmsSEQ** %seq, align 8, !tbaa !1
  %4 = load %struct.cmsSEQ*, %struct.cmsSEQ** %seq, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsSEQ* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !10
  %6 = load i32, i32* %nProfiles.addr, align 4, !tbaa !10
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.cmsPSEQDESC** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.cmsSEQ*, %struct.cmsSEQ** %seq, align 8, !tbaa !1
  %seq2 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %9, i32 0, i32 2
  %10 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq2, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %10, i64 %idxprom
  store %struct.cmsPSEQDESC* %arrayidx, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %11 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom3 = zext i32 %12 to i64
  %13 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %13, i64 %idxprom3
  %14 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  store i8* %14, i8** %h, align 8, !tbaa !1
  %15 = bitcast i32** %techpt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %h, align 8, !tbaa !1
  %17 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %17, i32 0, i32 2
  call void @cmsGetHeaderAttributes(i8* %16, i64* %attributes) #6
  %18 = load i8*, i8** %h, align 8, !tbaa !1
  %19 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %ProfileID = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %19, i32 0, i32 4
  %ID8 = bitcast %union.cmsProfileID* %ProfileID to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ID8, i32 0, i32 0
  call void @cmsGetHeaderProfileID(i8* %18, i8* %arraydecay) #6
  %20 = load i8*, i8** %h, align 8, !tbaa !1
  %call5 = call i32 @cmsGetHeaderManufacturer(i8* %20) #6
  %21 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %deviceMfg = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %21, i32 0, i32 0
  store i32 %call5, i32* %deviceMfg, align 4, !tbaa !26
  %22 = load i8*, i8** %h, align 8, !tbaa !1
  %call6 = call i32 @cmsGetHeaderModel(i8* %22) #6
  %23 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %deviceModel = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %23, i32 0, i32 1
  store i32 %call6, i32* %deviceModel, align 4, !tbaa !27
  %24 = load i8*, i8** %h, align 8, !tbaa !1
  %call7 = call i8* @cmsReadTag(i8* %24, i32 1952801640) #6
  %25 = bitcast i8* %call7 to i32*
  store i32* %25, i32** %techpt, align 8, !tbaa !1
  %26 = load i32*, i32** %techpt, align 8, !tbaa !1
  %cmp8 = icmp eq i32* %26, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %27 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %technology = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %27, i32 0, i32 3
  store i32 0, i32* %technology, align 4, !tbaa !28
  br label %if.end.11

if.else:                                          ; preds = %for.body
  %28 = load i32*, i32** %techpt, align 8, !tbaa !1
  %29 = load i32, i32* %28, align 4, !tbaa !9
  %30 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %technology10 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %30, i32 0, i32 3
  store i32 %29, i32* %technology10, align 4, !tbaa !28
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %31 = load i8*, i8** %h, align 8, !tbaa !1
  %call12 = call %struct._cms_MLU_struct* @GetMLUFromProfile(i8* %31, i32 1684893284) #6
  %32 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %Manufacturer = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %32, i32 0, i32 5
  store %struct._cms_MLU_struct* %call12, %struct._cms_MLU_struct** %Manufacturer, align 8, !tbaa !29
  %33 = load i8*, i8** %h, align 8, !tbaa !1
  %call13 = call %struct._cms_MLU_struct* @GetMLUFromProfile(i8* %33, i32 1684890724) #6
  %34 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %Model = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %34, i32 0, i32 6
  store %struct._cms_MLU_struct* %call13, %struct._cms_MLU_struct** %Model, align 8, !tbaa !30
  %35 = load i8*, i8** %h, align 8, !tbaa !1
  %call14 = call %struct._cms_MLU_struct* @GetMLUFromProfile(i8* %35, i32 1684370275) #6
  %36 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %ps, align 8, !tbaa !1
  %Description = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %36, i32 0, i32 7
  store %struct._cms_MLU_struct* %call14, %struct._cms_MLU_struct** %Description, align 8, !tbaa !23
  %37 = bitcast i32** %techpt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.cmsPSEQDESC** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %40 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.cmsSEQ*, %struct.cmsSEQ** %seq, align 8, !tbaa !1
  store %struct.cmsSEQ* %41, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %42 = bitcast %struct.cmsSEQ** %seq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load %struct.cmsSEQ*, %struct.cmsSEQ** %retval
  ret %struct.cmsSEQ* %44
}

declare %struct.cmsSEQ* @cmsAllocProfileSequenceDescription(%struct._cmsContext_struct*, i32) #3

declare void @cmsGetHeaderAttributes(i8*, i64*) #3

declare void @cmsGetHeaderProfileID(i8*, i8*) #3

declare i32 @cmsGetHeaderManufacturer(i8*) #3

declare i32 @cmsGetHeaderModel(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._cms_MLU_struct* @GetMLUFromProfile(i8* %h, i32 %sig) #0 {
entry:
  %retval = alloca %struct._cms_MLU_struct*, align 8
  %h.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %mlu = alloca %struct._cms_MLU_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %h, i8** %h.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !9
  %0 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %h.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sig.addr, align 4, !tbaa !9
  %call = call i8* @cmsReadTag(i8* %1, i32 %2) #6
  %3 = bitcast i8* %call to %struct._cms_MLU_struct*
  store %struct._cms_MLU_struct* %3, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %call1 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %5) #6
  store %struct._cms_MLU_struct* %call1, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %retval
  ret %struct._cms_MLU_struct* %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetProfileInfo(i8* %hProfile, i32 %Info, i8* %LanguageCode, i8* %CountryCode, i32* %Buffer, i32 %BufferSize) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Info.addr = alloca i32, align 4
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %Buffer.addr = alloca i32*, align 8
  %BufferSize.addr = alloca i32, align 4
  %mlu = alloca %struct._cms_MLU_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Info, i32* %Info.addr, align 4, !tbaa !9
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i32* %Buffer, i32** %Buffer.addr, align 8, !tbaa !1
  store i32 %BufferSize, i32* %BufferSize.addr, align 4, !tbaa !10
  %0 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = load i32, i32* %Info.addr, align 4, !tbaa !9
  %call = call %struct._cms_MLU_struct* @GetInfo(i8* %1, i32 %2) #6
  store %struct._cms_MLU_struct* %call, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %5 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %7 = load i32*, i32** %Buffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %BufferSize.addr, align 4, !tbaa !10
  %call1 = call i32 @cmsMLUgetWide(%struct._cms_MLU_struct* %4, i8* %5, i8* %6, i32* %7, i32 %8) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct._cms_MLU_struct* @GetInfo(i8* %hProfile, i32 %Info) #0 {
entry:
  %retval = alloca %struct._cms_MLU_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Info.addr = alloca i32, align 4
  %sig = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Info, i32* %Info.addr, align 4, !tbaa !9
  %0 = bitcast i32* %sig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %Info.addr, align 4, !tbaa !9
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 1684370275, i32* %sig, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1684893284, i32* %sig, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 1684890724, i32* %sig, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 1668313716, i32* %sig, align 4, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %3 = load i32, i32* %sig, align 4, !tbaa !9
  %call = call i8* @cmsReadTag(i8* %2, i32 %3) #6
  %4 = bitcast i8* %call to %struct._cms_MLU_struct*
  store %struct._cms_MLU_struct* %4, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %5 = bitcast i32* %sig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %retval
  ret %struct._cms_MLU_struct* %6
}

declare i32 @cmsMLUgetWide(%struct._cms_MLU_struct*, i8*, i8*, i32*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @cmsGetProfileInfoASCII(i8* %hProfile, i32 %Info, i8* %LanguageCode, i8* %CountryCode, i8* %Buffer, i32 %BufferSize) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Info.addr = alloca i32, align 4
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %Buffer.addr = alloca i8*, align 8
  %BufferSize.addr = alloca i32, align 4
  %mlu = alloca %struct._cms_MLU_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Info, i32* %Info.addr, align 4, !tbaa !9
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %BufferSize, i32* %BufferSize.addr, align 4, !tbaa !10
  %0 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = load i32, i32* %Info.addr, align 4, !tbaa !9
  %call = call %struct._cms_MLU_struct* @GetInfo(i8* %1, i32 %2) #6
  store %struct._cms_MLU_struct* %call, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %5 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %BufferSize.addr, align 4, !tbaa !10
  %call1 = call i32 @cmsMLUgetASCII(%struct._cms_MLU_struct* %4, i8* %5, i8* %6, i8* %7, i32 %8) #6
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @cmsMLUgetASCII(%struct._cms_MLU_struct*, i8*, i8*, i8*, i32) #3

declare %struct._cmsStage_struct* @_cmsStageNormalizeToLabFloat(%struct._cmsContext_struct*) #3

declare %struct._cmsStage_struct* @_cmsStageNormalizeToXyzFloat(%struct._cmsContext_struct*) #3

declare %struct._cmsStage_struct* @_cmsStageNormalizeFromLabFloat(%struct._cmsContext_struct*) #3

declare %struct._cmsStage_struct* @_cmsStageNormalizeFromXyzFloat(%struct._cmsContext_struct*) #3

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct*, i32, i16*) #3

declare %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct*, i32, i32, double*, double*) #3

declare %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct*, i32, %struct._cms_curve_struct**) #3

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ReadICCMatrixRGB2XYZ(%struct.cmsMAT3* %r, i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.cmsMAT3*, align 8
  %hProfile.addr = alloca i8*, align 8
  %PtrRed = alloca %struct.cmsCIEXYZ*, align 8
  %PtrGreen = alloca %struct.cmsCIEXYZ*, align 8
  %PtrBlue = alloca %struct.cmsCIEXYZ*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %r, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIEXYZ** %PtrRed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsCIEXYZ** %PtrGreen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.cmsCIEXYZ** %PtrBlue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsMAT3* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call i8* @cmsReadTag(i8* %5, i32 1918392666) #6
  %6 = bitcast i8* %call to %struct.cmsCIEXYZ*
  store %struct.cmsCIEXYZ* %6, %struct.cmsCIEXYZ** %PtrRed, align 8, !tbaa !1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call i8* @cmsReadTag(i8* %7, i32 1733843290) #6
  %8 = bitcast i8* %call1 to %struct.cmsCIEXYZ*
  store %struct.cmsCIEXYZ* %8, %struct.cmsCIEXYZ** %PtrGreen, align 8, !tbaa !1
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i8* @cmsReadTag(i8* %9, i32 1649957210) #6
  %10 = bitcast i8* %call2 to %struct.cmsCIEXYZ*
  store %struct.cmsCIEXYZ* %10, %struct.cmsCIEXYZ** %PtrBlue, align 8, !tbaa !1
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrRed, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.cmsCIEXYZ* %11, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrGreen, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.cmsCIEXYZ* %12, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrBlue, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.cmsCIEXYZ* %13, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.5
  %14 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %14, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrRed, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 0
  %16 = load double, double* %X, align 8, !tbaa !31
  %17 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrGreen, align 8, !tbaa !1
  %X7 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %17, i32 0, i32 0
  %18 = load double, double* %X7, align 8, !tbaa !31
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrBlue, align 8, !tbaa !1
  %X8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %19, i32 0, i32 0
  %20 = load double, double* %X8, align 8, !tbaa !31
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %16, double %18, double %20) #6
  %21 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v9 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %21, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v9, i32 0, i64 1
  %22 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrRed, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %22, i32 0, i32 1
  %23 = load double, double* %Y, align 8, !tbaa !33
  %24 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrGreen, align 8, !tbaa !1
  %Y11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %24, i32 0, i32 1
  %25 = load double, double* %Y11, align 8, !tbaa !33
  %26 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrBlue, align 8, !tbaa !1
  %Y12 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %26, i32 0, i32 1
  %27 = load double, double* %Y12, align 8, !tbaa !33
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx10, double %23, double %25, double %27) #6
  %28 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v13 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %28, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v13, i32 0, i64 2
  %29 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrRed, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %29, i32 0, i32 2
  %30 = load double, double* %Z, align 8, !tbaa !34
  %31 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrGreen, align 8, !tbaa !1
  %Z15 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %31, i32 0, i32 2
  %32 = load double, double* %Z15, align 8, !tbaa !34
  %33 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %PtrBlue, align 8, !tbaa !1
  %Z16 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %33, i32 0, i32 2
  %34 = load double, double* %Z16, align 8, !tbaa !34
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx14, double %30, double %32, double %34) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %35 = bitcast %struct.cmsCIEXYZ** %PtrBlue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.cmsCIEXYZ** %PtrGreen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.cmsCIEXYZ** %PtrRed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct*) #3

declare void @_cmsVEC3init(%struct.cmsVEC3*, double, double, double) #3

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct*) #3

declare i32 @cmsStageType(%struct._cmsStage_struct*) #3

declare i32 @_cmsSetInterpolationRoutine(%struct._cmsContext_struct*, %struct._cms_interp_struc*) #3

declare %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct*) #3

declare %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct*) #3

declare i32 @_cmsMAT3inverse(%struct.cmsMAT3*, %struct.cmsMAT3*) #3

declare %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct*) #3

declare void @cmsFreeToneCurveTriple(%struct._cms_curve_struct**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noreturn nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !3, i64 0}
!8 = !{i64 0, i64 72, !9}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !3, i64 0}
!12 = !{!13, !2, i64 48}
!13 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !11, i64 16, !11, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!14 = !{!15, !2, i64 8}
!15 = !{!"", !3, i64 0, !2, i64 8, !11, i64 16, !11, i64 20}
!16 = !{!17, !11, i64 8}
!17 = !{!"_cms_interp_struc", !2, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!18 = !{!19, !2, i64 56}
!19 = !{!"_cmsPipeline_struct", !2, i64 0, !11, i64 8, !11, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !11, i64 64}
!20 = !{!21, !11, i64 0}
!21 = !{!"", !11, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!21, !2, i64 16}
!23 = !{!24, !2, i64 56}
!24 = !{!"", !11, i64 0, !11, i64 4, !25, i64 8, !3, i64 16, !3, i64 20, !2, i64 40, !2, i64 48, !2, i64 56}
!25 = !{!"long", !3, i64 0}
!26 = !{!24, !11, i64 0}
!27 = !{!24, !11, i64 4}
!28 = !{!24, !3, i64 16}
!29 = !{!24, !2, i64 40}
!30 = !{!24, !2, i64 48}
!31 = !{!32, !7, i64 0}
!32 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!33 = !{!32, !7, i64 8}
!34 = !{!32, !7, i64 16}
