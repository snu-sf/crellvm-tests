; ModuleID = './cmsvirt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsCIExyYTRIPLE = type { %struct.cmsCIExyY, %struct.cmsCIExyY, %struct.cmsCIExyY }
%struct.cmsCIExyY = type { double, double, double }
%struct.cmsAllowedLUT = type { i32, i32, i32, i32, [5 x i32] }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct.cmsCIEXYZTRIPLE = type { %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ }
%struct.cmsCIEXYZ = type { double, double, double }
%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct.BCHSWADJUSTS = type { double, double, double, double, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ }
%struct.cmsCIELab = type { double, double, double }
%struct.cmsCIELCh = type { double, double, double }
%struct._cmstransform_struct = type { i32, i32, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, %struct._cmsCACHE, %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*, %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct*, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsSEQ*, i32, double, i32, %struct._cmsContext_struct*, i8*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%union.anon = type { double }

@.str = private unnamed_addr constant [13 x i32] [i32 82, i32 71, i32 66, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i32] [i32 103, i32 114, i32 97, i32 121, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [23 x i32] [i32 76, i32 105, i32 110, i32 101, i32 97, i32 114, i32 105, i32 122, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Linearization built-in\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"InkLimiting: Only CMYK currently supported\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"InkLimiting: Limit should be between 0..400\00", align 1
@.str.6 = private unnamed_addr constant [22 x i32] [i32 105, i32 110, i32 107, i32 45, i32 108, i32 105, i32 109, i32 105, i32 116, i32 105, i32 110, i32 103, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"ink-limiting built-in\00", align 1
@.str.8 = private unnamed_addr constant [22 x i32] [i32 76, i32 97, i32 98, i32 32, i32 105, i32 100, i32 101, i32 110, i32 116, i32 105, i32 116, i32 121, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.9 = private unnamed_addr constant [22 x i32] [i32 88, i32 89, i32 90, i32 32, i32 105, i32 100, i32 101, i32 110, i32 116, i32 105, i32 116, i32 121, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@cmsCreate_sRGBProfileTHR.Rec709Primaries = private unnamed_addr constant %struct.cmsCIExyYTRIPLE { %struct.cmsCIExyY { double 6.400000e-01, double 3.300000e-01, double 1.000000e+00 }, %struct.cmsCIExyY { double 3.000000e-01, double 6.000000e-01, double 1.000000e+00 }, %struct.cmsCIExyY { double 1.500000e-01, double 6.000000e-02, double 1.000000e+00 } }, align 8
@.str.10 = private unnamed_addr constant [14 x i32] [i32 115, i32 82, i32 71, i32 66, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.11 = private unnamed_addr constant [14 x i32] [i32 66, i32 67, i32 72, i32 83, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.12 = private unnamed_addr constant [22 x i32] [i32 78, i32 85, i32 76, i32 76, i32 32, i32 112, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 32, i32 98, i32 117, i32 105, i32 108, i32 116, i32 45, i32 105, i32 110, i32 0], align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"(hTransform != ((void*)0))\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"./lcms2/src/cmsvirt.c\00", align 1
@__PRETTY_FUNCTION__.cmsTransform2DeviceLink = private unnamed_addr constant [86 x i8] c"cmsHPROFILE cmsTransform2DeviceLink(cmsHTRANSFORM, cmsFloat64Number, cmsUInt32Number)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i32] [i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 108, i32 105, i32 110, i32 107, i32 0], align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.18 = private unnamed_addr constant [25 x i32] [i32 78, i32 111, i32 32, i32 99, i32 111, i32 112, i32 121, i32 114, i32 105, i32 103, i32 104, i32 116, i32 44, i32 32, i32 117, i32 115, i32 101, i32 32, i32 102, i32 114, i32 101, i32 101, i32 108, i32 121, i32 0], align 4
@.str.19 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Little CMS\00", align 1
@.str.21 = private unnamed_addr constant [23 x i32] [i32 78, i32 97, i32 109, i32 101, i32 100, i32 32, i32 99, i32 111, i32 108, i32 111, i32 114, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 108, i32 105, i32 110, i32 107, i32 0], align 4
@AllowedLUTTypes = internal constant [11 x %struct.cmsAllowedLUT] [%struct.cmsAllowedLUT { i32 0, i32 0, i32 1835430962, i32 4, [5 x i32] [i32 1835103334, i32 1668707188, i32 1668052340, i32 1668707188, i32 0] }, %struct.cmsAllowedLUT { i32 0, i32 0, i32 1835430962, i32 3, [5 x i32] [i32 1668707188, i32 1668052340, i32 1668707188, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 0, i32 0, i32 1835430962, i32 2, [5 x i32] [i32 1668707188, i32 1668052340, i32 0, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 0, i32 1832993312, i32 1, [5 x i32] [i32 1668707188, i32 0, i32 0, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1093812784, i32 1832993312, i32 3, [5 x i32] [i32 1668707188, i32 1835103334, i32 1668707188, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1093812784, i32 1832993312, i32 3, [5 x i32] [i32 1668707188, i32 1668052340, i32 1668707188, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1093812784, i32 1832993312, i32 5, [5 x i32] [i32 1668707188, i32 1668052340, i32 1668707188, i32 1835103334, i32 1668707188] }, %struct.cmsAllowedLUT { i32 1, i32 1110589744, i32 1833058592, i32 1, [5 x i32] [i32 1668707188, i32 0, i32 0, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1110589744, i32 1833058592, i32 3, [5 x i32] [i32 1668707188, i32 1835103334, i32 1668707188, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1110589744, i32 1833058592, i32 3, [5 x i32] [i32 1668707188, i32 1668052340, i32 1668707188, i32 0, i32 0] }, %struct.cmsAllowedLUT { i32 1, i32 1110589744, i32 1833058592, i32 5, [5 x i32] [i32 1668707188, i32 1835103334, i32 1668707188, i32 1668052340, i32 1668707188] }], align 16

; Function Attrs: nounwind uwtable
define i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* %ContextID, %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyYTRIPLE* %Primaries, %struct._cms_curve_struct** %TransferFunction) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %Primaries.addr = alloca %struct.cmsCIExyYTRIPLE*, align 8
  %TransferFunction.addr = alloca %struct._cms_curve_struct**, align 8
  %hICC = alloca i8*, align 8
  %MColorants = alloca %struct.cmsMAT3, align 8
  %Colorants = alloca %struct.cmsCIEXYZTRIPLE, align 8
  %MaxWhite = alloca %struct.cmsCIExyY, align 8
  %CHAD = alloca %struct.cmsMAT3, align 8
  %WhitePointXYZ = alloca %struct.cmsCIEXYZ, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsCIExyYTRIPLE* %Primaries, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %TransferFunction, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsMAT3* %MColorants to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast %struct.cmsCIEXYZTRIPLE* %Colorants to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast %struct.cmsCIExyY* %MaxWhite to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.cmsMAT3* %CHAD to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast %struct.cmsCIEXYZ* %WhitePointXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %6) #5
  store i8* %call, i8** %hICC, align 8, !tbaa !1
  %7 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %8, double 4.300000e+00) #5
  %9 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %9, i32 1835955314) #5
  %10 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %10, i32 1380401696) #5
  %11 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %11, i32 1482250784) #5
  %12 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetHeaderRenderingIntent(i8* %12, i32 0) #5
  %13 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call1 = call i32 @SetTextTags(i8* %13, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @.str, i32 0, i32 0)) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %14 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %tobool5 = icmp ne %struct.cmsCIExyY* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.end.4
  %15 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call7 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  %16 = bitcast %struct.cmsCIEXYZ* %call7 to i8*
  %call8 = call i32 @cmsWriteTag(i8* %15, i32 2004119668, i8* %16) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.6
  br label %Error

if.end.11:                                        ; preds = %if.then.6
  %17 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %WhitePointXYZ, %struct.cmsCIExyY* %17) #5
  %call12 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  %call13 = call i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %CHAD, %struct.cmsMAT3* null, %struct.cmsCIEXYZ* %WhitePointXYZ, %struct.cmsCIEXYZ* %call12) #5
  %18 = load i8*, i8** %hICC, align 8, !tbaa !1
  %19 = bitcast %struct.cmsMAT3* %CHAD to i8*
  %call14 = call i32 @cmsWriteTag(i8* %18, i32 1667785060, i8* %19) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.11
  br label %Error

if.end.17:                                        ; preds = %if.end.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.4
  %20 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %tobool19 = icmp ne %struct.cmsCIExyY* %20, null
  br i1 %tobool19, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.end.18
  %21 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  %tobool20 = icmp ne %struct.cmsCIExyYTRIPLE* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end.89

if.then.21:                                       ; preds = %land.lhs.true
  %22 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %22, i32 0, i32 0
  %23 = load double, double* %x, align 8, !tbaa !5
  %x22 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %MaxWhite, i32 0, i32 0
  store double %23, double* %x22, align 8, !tbaa !5
  %24 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %24, i32 0, i32 1
  %25 = load double, double* %y, align 8, !tbaa !8
  %y23 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %MaxWhite, i32 0, i32 1
  store double %25, double* %y23, align 8, !tbaa !8
  %Y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %MaxWhite, i32 0, i32 2
  store double 1.000000e+00, double* %Y, align 8, !tbaa !9
  %26 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  %call24 = call i32 @_cmsBuildRGB2XYZtransferMatrix(%struct.cmsMAT3* %MColorants, %struct.cmsCIExyY* %MaxWhite, %struct.cmsCIExyYTRIPLE* %26) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.21
  br label %Error

if.end.27:                                        ; preds = %if.then.21
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %27 = load double, double* %arrayidx28, align 8, !tbaa !10
  %Red = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 0
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Red, i32 0, i32 0
  store double %27, double* %X, align 8, !tbaa !11
  %v29 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v29, i32 0, i64 1
  %n31 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %n31, i32 0, i64 0
  %28 = load double, double* %arrayidx32, align 8, !tbaa !10
  %Red33 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 0
  %Y34 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Red33, i32 0, i32 1
  store double %28, double* %Y34, align 8, !tbaa !13
  %v35 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v35, i32 0, i64 2
  %n37 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %n37, i32 0, i64 0
  %29 = load double, double* %arrayidx38, align 8, !tbaa !10
  %Red39 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 0
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Red39, i32 0, i32 2
  store double %29, double* %Z, align 8, !tbaa !14
  %v40 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v40, i32 0, i64 0
  %n42 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %n42, i32 0, i64 1
  %30 = load double, double* %arrayidx43, align 8, !tbaa !10
  %Green = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 1
  %X44 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Green, i32 0, i32 0
  store double %30, double* %X44, align 8, !tbaa !15
  %v45 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v45, i32 0, i64 1
  %n47 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx46, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %n47, i32 0, i64 1
  %31 = load double, double* %arrayidx48, align 8, !tbaa !10
  %Green49 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 1
  %Y50 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Green49, i32 0, i32 1
  store double %31, double* %Y50, align 8, !tbaa !16
  %v51 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v51, i32 0, i64 2
  %n53 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %n53, i32 0, i64 1
  %32 = load double, double* %arrayidx54, align 8, !tbaa !10
  %Green55 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 1
  %Z56 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Green55, i32 0, i32 2
  store double %32, double* %Z56, align 8, !tbaa !17
  %v57 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v57, i32 0, i64 0
  %n59 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %n59, i32 0, i64 2
  %33 = load double, double* %arrayidx60, align 8, !tbaa !10
  %Blue = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 2
  %X61 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Blue, i32 0, i32 0
  store double %33, double* %X61, align 8, !tbaa !18
  %v62 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v62, i32 0, i64 1
  %n64 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx63, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %n64, i32 0, i64 2
  %34 = load double, double* %arrayidx65, align 8, !tbaa !10
  %Blue66 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 2
  %Y67 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Blue66, i32 0, i32 1
  store double %34, double* %Y67, align 8, !tbaa !19
  %v68 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %MColorants, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v68, i32 0, i64 2
  %n70 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx69, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %n70, i32 0, i64 2
  %35 = load double, double* %arrayidx71, align 8, !tbaa !10
  %Blue72 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 2
  %Z73 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Blue72, i32 0, i32 2
  store double %35, double* %Z73, align 8, !tbaa !20
  %36 = load i8*, i8** %hICC, align 8, !tbaa !1
  %Red74 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 0
  %37 = bitcast %struct.cmsCIEXYZ* %Red74 to i8*
  %call75 = call i32 @cmsWriteTag(i8* %36, i32 1918392666, i8* %37) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.27
  br label %Error

if.end.78:                                        ; preds = %if.end.27
  %38 = load i8*, i8** %hICC, align 8, !tbaa !1
  %Blue79 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 2
  %39 = bitcast %struct.cmsCIEXYZ* %Blue79 to i8*
  %call80 = call i32 @cmsWriteTag(i8* %38, i32 1649957210, i8* %39) #5
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.78
  br label %Error

if.end.83:                                        ; preds = %if.end.78
  %40 = load i8*, i8** %hICC, align 8, !tbaa !1
  %Green84 = getelementptr inbounds %struct.cmsCIEXYZTRIPLE, %struct.cmsCIEXYZTRIPLE* %Colorants, i32 0, i32 1
  %41 = bitcast %struct.cmsCIEXYZ* %Green84 to i8*
  %call85 = call i32 @cmsWriteTag(i8* %40, i32 1733843290, i8* %41) #5
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.83
  br label %Error

if.end.88:                                        ; preds = %if.end.83
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true, %if.end.18
  %42 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %tobool90 = icmp ne %struct._cms_curve_struct** %42, null
  br i1 %tobool90, label %if.then.91, label %if.end.125

if.then.91:                                       ; preds = %if.end.89
  %43 = load i8*, i8** %hICC, align 8, !tbaa !1
  %44 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %44, i64 0
  %45 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx92, align 8, !tbaa !1
  %46 = bitcast %struct._cms_curve_struct* %45 to i8*
  %call93 = call i32 @cmsWriteTag(i8* %43, i32 1918128707, i8* %46) #5
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.then.91
  br label %Error

if.end.96:                                        ; preds = %if.then.91
  %47 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %47, i64 1
  %48 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx97, align 8, !tbaa !1
  %49 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %49, i64 0
  %50 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx98, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %48, %50
  br i1 %cmp, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %if.end.96
  %51 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call100 = call i32 @cmsLinkTag(i8* %51, i32 1733579331, i32 1918128707) #5
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.then.99
  br label %Error

if.end.103:                                       ; preds = %if.then.99
  br label %if.end.109

if.else:                                          ; preds = %if.end.96
  %52 = load i8*, i8** %hICC, align 8, !tbaa !1
  %53 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %53, i64 1
  %54 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx104, align 8, !tbaa !1
  %55 = bitcast %struct._cms_curve_struct* %54 to i8*
  %call105 = call i32 @cmsWriteTag(i8* %52, i32 1733579331, i8* %55) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.else
  br label %Error

if.end.108:                                       ; preds = %if.else
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.103
  %56 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %56, i64 2
  %57 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx110, align 8, !tbaa !1
  %58 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %58, i64 0
  %59 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx111, align 8, !tbaa !1
  %cmp112 = icmp eq %struct._cms_curve_struct* %57, %59
  br i1 %cmp112, label %if.then.113, label %if.else.118

if.then.113:                                      ; preds = %if.end.109
  %60 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call114 = call i32 @cmsLinkTag(i8* %60, i32 1649693251, i32 1918128707) #5
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.then.113
  br label %Error

if.end.117:                                       ; preds = %if.then.113
  br label %if.end.124

if.else.118:                                      ; preds = %if.end.109
  %61 = load i8*, i8** %hICC, align 8, !tbaa !1
  %62 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %62, i64 2
  %63 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx119, align 8, !tbaa !1
  %64 = bitcast %struct._cms_curve_struct* %63 to i8*
  %call120 = call i32 @cmsWriteTag(i8* %61, i32 1649693251, i8* %64) #5
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.end.123, label %if.then.122

if.then.122:                                      ; preds = %if.else.118
  br label %Error

if.end.123:                                       ; preds = %if.else.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.117
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.89
  %65 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  %tobool126 = icmp ne %struct.cmsCIExyYTRIPLE* %65, null
  br i1 %tobool126, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.end.125
  %66 = load i8*, i8** %hICC, align 8, !tbaa !1
  %67 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  %68 = bitcast %struct.cmsCIExyYTRIPLE* %67 to i8*
  %call128 = call i32 @cmsWriteTag(i8* %66, i32 1667789421, i8* %68) #5
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.then.127
  br label %Error

if.end.131:                                       ; preds = %if.then.127
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.125
  %69 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %69, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.130, %if.then.122, %if.then.116, %if.then.107, %if.then.102, %if.then.95, %if.then.87, %if.then.82, %if.then.77, %if.then.26, %if.then.16, %if.then.10, %if.then.3
  %70 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool133 = icmp ne i8* %70, null
  br i1 %tobool133, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %Error
  %71 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call135 = call i32 @cmsCloseProfile(i8* %71) #5
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %Error
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.136, %if.end.132, %if.then
  %72 = bitcast %struct.cmsCIEXYZ* %WhitePointXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %72) #1
  %73 = bitcast %struct.cmsMAT3* %CHAD to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #1
  %74 = bitcast %struct.cmsCIExyY* %MaxWhite to i8*
  call void @llvm.lifetime.end(i64 24, i8* %74) #1
  %75 = bitcast %struct.cmsCIEXYZTRIPLE* %Colorants to i8*
  call void @llvm.lifetime.end(i64 72, i8* %75) #1
  %76 = bitcast %struct.cmsMAT3* %MColorants to i8*
  call void @llvm.lifetime.end(i64 72, i8* %76) #1
  %77 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i8*, i8** %retval
  ret i8* %78
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct*) #2

declare void @cmsSetProfileVersion(i8*, double) #2

declare void @cmsSetDeviceClass(i8*, i32) #2

declare void @cmsSetColorSpace(i8*, i32) #2

declare void @cmsSetPCS(i8*, i32) #2

declare void @cmsSetHeaderRenderingIntent(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @SetTextTags(i8* %hProfile, i32* %Description) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Description.addr = alloca i32*, align 8
  %DescriptionMLU = alloca %struct._cms_MLU_struct*, align 8
  %CopyrightMLU = alloca %struct._cms_MLU_struct*, align 8
  %rc = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32* %Description, i32** %Description.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_MLU_struct** %DescriptionMLU to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cms_MLU_struct** %CopyrightMLU to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %rc, align 4, !tbaa !21
  %3 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %4) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call1 = call %struct._cms_MLU_struct* @cmsMLUalloc(%struct._cmsContext_struct* %5, i32 1) #5
  store %struct._cms_MLU_struct* %call1, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call2 = call %struct._cms_MLU_struct* @cmsMLUalloc(%struct._cmsContext_struct* %6, i32 1) #5
  store %struct._cms_MLU_struct* %call2, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_MLU_struct* %8, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %Error

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  %10 = load i32*, i32** %Description.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsMLUsetWide(%struct._cms_MLU_struct* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %10) #5
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %Error

if.end.6:                                         ; preds = %if.end
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  %call7 = call i32 @cmsMLUsetWide(%struct._cms_MLU_struct* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* getelementptr inbounds ([25 x i32], [25 x i32]* @.str.18, i32 0, i32 0)) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %Error

if.end.10:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  %14 = bitcast %struct._cms_MLU_struct* %13 to i8*
  %call11 = call i32 @cmsWriteTag(i8* %12, i32 1684370275, i8* %14) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %Error

if.end.14:                                        ; preds = %if.end.10
  %15 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %16 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  %17 = bitcast %struct._cms_MLU_struct* %16 to i8*
  %call15 = call i32 @cmsWriteTag(i8* %15, i32 1668313716, i8* %17) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  br label %Error

if.end.18:                                        ; preds = %if.end.14
  store i32 1, i32* %rc, align 4, !tbaa !21
  br label %Error

Error:                                            ; preds = %if.end.18, %if.then.17, %if.then.13, %if.then.9, %if.then.5, %if.then
  %18 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  %tobool19 = icmp ne %struct._cms_MLU_struct* %18, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %Error
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DescriptionMLU, align 8, !tbaa !1
  call void @cmsMLUfree(%struct._cms_MLU_struct* %19) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %Error
  %20 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  %tobool22 = icmp ne %struct._cms_MLU_struct* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %21 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %CopyrightMLU, align 8, !tbaa !1
  call void @cmsMLUfree(%struct._cms_MLU_struct* %21) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %22 = load i32, i32* %rc, align 4, !tbaa !21
  %23 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct._cms_MLU_struct** %CopyrightMLU to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct._cms_MLU_struct** %DescriptionMLU to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 %22
}

declare i32 @cmsWriteTag(i8*, i32, i8*) #2

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #2

declare void @cmsxyY2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIExyY*) #2

declare i32 @_cmsAdaptationMatrix(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*) #2

declare i32 @_cmsBuildRGB2XYZtransferMatrix(%struct.cmsMAT3*, %struct.cmsCIExyY*, %struct.cmsCIExyYTRIPLE*) #2

declare i32 @cmsLinkTag(i8*, i32, i32) #2

declare i32 @cmsCloseProfile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i8* @cmsCreateRGBProfile(%struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyYTRIPLE* %Primaries, %struct._cms_curve_struct** %TransferFunction) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %Primaries.addr = alloca %struct.cmsCIExyYTRIPLE*, align 8
  %TransferFunction.addr = alloca %struct._cms_curve_struct**, align 8
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsCIExyYTRIPLE* %Primaries, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %TransferFunction, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %1 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primaries.addr, align 8, !tbaa !1
  %2 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunction.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* null, %struct.cmsCIExyY* %0, %struct.cmsCIExyYTRIPLE* %1, %struct._cms_curve_struct** %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateGrayProfileTHR(%struct._cmsContext_struct* %ContextID, %struct.cmsCIExyY* %WhitePoint, %struct._cms_curve_struct* %TransferFunction) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %TransferFunction.addr = alloca %struct._cms_curve_struct*, align 8
  %hICC = alloca i8*, align 8
  %tmp = alloca %struct.cmsCIEXYZ, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %TransferFunction, %struct._cms_curve_struct** %TransferFunction.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.cmsCIEXYZ* %tmp to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #5
  store i8* %call, i8** %hICC, align 8, !tbaa !1
  %3 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %4, double 4.300000e+00) #5
  %5 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %5, i32 1835955314) #5
  %6 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %6, i32 1196573017) #5
  %7 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %7, i32 1482250784) #5
  %8 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetHeaderRenderingIntent(i8* %8, i32 0) #5
  %9 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call1 = call i32 @SetTextTags(i8* %9, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.1, i32 0, i32 0)) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %tobool5 = icmp ne %struct.cmsCIExyY* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %tmp, %struct.cmsCIExyY* %11) #5
  %12 = load i8*, i8** %hICC, align 8, !tbaa !1
  %13 = bitcast %struct.cmsCIEXYZ* %tmp to i8*
  %call7 = call i32 @cmsWriteTag(i8* %12, i32 2004119668, i8* %13) #5
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %Error

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.4
  %14 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %TransferFunction.addr, align 8, !tbaa !1
  %tobool12 = icmp ne %struct._cms_curve_struct* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.11
  %15 = load i8*, i8** %hICC, align 8, !tbaa !1
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %TransferFunction.addr, align 8, !tbaa !1
  %17 = bitcast %struct._cms_curve_struct* %16 to i8*
  %call14 = call i32 @cmsWriteTag(i8* %15, i32 1800688195, i8* %17) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  br label %Error

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %18 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %18, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.16, %if.then.9, %if.then.3
  %19 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool19 = icmp ne i8* %19, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %Error
  %20 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call21 = call i32 @cmsCloseProfile(i8* %20) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %Error
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.end.18, %if.then
  %21 = bitcast %struct.cmsCIEXYZ* %tmp to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateGrayProfile(%struct.cmsCIExyY* %WhitePoint, %struct._cms_curve_struct* %TransferFunction) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %TransferFunction.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %TransferFunction, %struct._cms_curve_struct** %TransferFunction.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %1 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %TransferFunction.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateGrayProfileTHR(%struct._cmsContext_struct* null, %struct.cmsCIExyY* %0, %struct._cms_curve_struct* %1) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLinearizationDeviceLinkTHR(%struct._cmsContext_struct* %ContextID, i32 %ColorSpace, %struct._cms_curve_struct** %TransferFunctions) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ColorSpace.addr = alloca i32, align 4
  %TransferFunctions.addr = alloca %struct._cms_curve_struct**, align 8
  %hICC = alloca i8*, align 8
  %Pipeline = alloca %struct._cmsPipeline_struct*, align 8
  %nChannels = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  store %struct._cms_curve_struct** %TransferFunctions, %struct._cms_curve_struct*** %TransferFunctions.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %Pipeline to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %3) #5
  store i8* %call, i8** %hICC, align 8, !tbaa !1
  %4 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %5, double 4.300000e+00) #5
  %6 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %6, i32 1818848875) #5
  %7 = load i8*, i8** %hICC, align 8, !tbaa !1
  %8 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %7, i32 %8) #5
  %9 = load i8*, i8** %hICC, align 8, !tbaa !1
  %10 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %9, i32 %10) #5
  %11 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetHeaderRenderingIntent(i8* %11, i32 0) #5
  %12 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %call1 = call i32 @cmsChannelsOf(i32 %12) #5
  store i32 %call1, i32* %nChannels, align 4, !tbaa !21
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %14 = load i32, i32* %nChannels, align 4, !tbaa !21
  %15 = load i32, i32* %nChannels, align 4, !tbaa !21
  %call2 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %13, i32 %14, i32 %15) #5
  store %struct._cmsPipeline_struct* %call2, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %16, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %17 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %19 = load i32, i32* %nChannels, align 4, !tbaa !21
  %20 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunctions.addr, align 8, !tbaa !1
  %call5 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %18, i32 %19, %struct._cms_curve_struct** %20) #5
  %call6 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %17, i32 0, %struct._cmsStage_struct* %call5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  br label %Error

if.end.9:                                         ; preds = %if.end.4
  %21 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call10 = call i32 @SetTextTags(i8* %21, i32* getelementptr inbounds ([23 x i32], [23 x i32]* @.str.2, i32 0, i32 0)) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %Error

if.end.13:                                        ; preds = %if.end.9
  %22 = load i8*, i8** %hICC, align 8, !tbaa !1
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %24 = bitcast %struct._cmsPipeline_struct* %23 to i8*
  %call14 = call i32 @cmsWriteTag(i8* %22, i32 1093812784, i8* %24) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %Error

if.end.17:                                        ; preds = %if.end.13
  %25 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call18 = call i32 @SetSeqDescTag(i8* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %Error

if.end.21:                                        ; preds = %if.end.17
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %26) #5
  %27 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %27, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.20, %if.then.16, %if.then.12, %if.then.8, %if.then.3
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %28) #5
  %29 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool22 = icmp ne i8* %29, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %Error
  %30 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call24 = call i32 @cmsCloseProfile(i8* %30) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %Error
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.end.21, %if.then
  %31 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct._cmsPipeline_struct** %Pipeline to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare i32 @cmsChannelsOf(i32) #2

declare %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct*, i32, i32) #2

declare i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct*) #2

declare %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct*, i32, %struct._cms_curve_struct**) #2

; Function Attrs: nounwind uwtable
define internal i32 @SetSeqDescTag(i8* %hProfile, i8* %Model) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Model.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %Seq = alloca %struct.cmsSEQ*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i8* %Model, i8** %Model.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %rc, align 4, !tbaa !21
  %1 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %2) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %3 = bitcast %struct.cmsSEQ** %Seq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call1 = call %struct.cmsSEQ* @cmsAllocProfileSequenceDescription(%struct._cmsContext_struct* %4, i32 1) #5
  store %struct.cmsSEQ* %call1, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %5 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsSEQ* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %6, i32 0, i32 2
  %7 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %7, i64 0
  %deviceMfg = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx, i32 0, i32 0
  store i32 0, i32* %deviceMfg, align 4, !tbaa !26
  %8 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq2 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %8, i32 0, i32 2
  %9 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq2, align 8, !tbaa !24
  %arrayidx3 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %9, i64 0
  %deviceModel = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx3, i32 0, i32 1
  store i32 0, i32* %deviceModel, align 4, !tbaa !29
  %10 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq4 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %10, i32 0, i32 2
  %11 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq4, align 8, !tbaa !24
  %arrayidx5 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %11, i64 0
  %attributes = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx5, i32 0, i32 2
  store i64 0, i64* %attributes, align 8, !tbaa !30
  %12 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq6 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %12, i32 0, i32 2
  %13 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq6, align 8, !tbaa !24
  %arrayidx7 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %13, i64 0
  %technology = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx7, i32 0, i32 3
  store i32 0, i32* %technology, align 4, !tbaa !31
  %14 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq8 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %14, i32 0, i32 2
  %15 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq8, align 8, !tbaa !24
  %arrayidx9 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %15, i64 0
  %Manufacturer = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx9, i32 0, i32 5
  %16 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Manufacturer, align 8, !tbaa !32
  %call10 = call i32 @cmsMLUsetASCII(%struct._cms_MLU_struct* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #5
  %17 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq11 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %17, i32 0, i32 2
  %18 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq11, align 8, !tbaa !24
  %arrayidx12 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %18, i64 0
  %Model13 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx12, i32 0, i32 6
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Model13, align 8, !tbaa !33
  %20 = load i8*, i8** %Model.addr, align 8, !tbaa !1
  %call14 = call i32 @cmsMLUsetASCII(%struct._cms_MLU_struct* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* %20) #5
  %21 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %22 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %call15 = call i32 @_cmsWriteProfileSequence(i8* %21, %struct.cmsSEQ* %22) #5
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end
  br label %Error

if.end.17:                                        ; preds = %if.end
  store i32 1, i32* %rc, align 4, !tbaa !21
  br label %Error

Error:                                            ; preds = %if.end.17, %if.then.16
  %23 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %tobool18 = icmp ne %struct.cmsSEQ* %23, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %Error
  %24 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  call void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ* %24) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %Error
  %25 = load i32, i32* %rc, align 4, !tbaa !21
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then
  %26 = bitcast %struct.cmsSEQ** %Seq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLinearizationDeviceLink(i32 %ColorSpace, %struct._cms_curve_struct** %TransferFunctions) #0 {
entry:
  %ColorSpace.addr = alloca i32, align 4
  %TransferFunctions.addr = alloca %struct._cms_curve_struct**, align 8
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  store %struct._cms_curve_struct** %TransferFunctions, %struct._cms_curve_struct*** %TransferFunctions.addr, align 8, !tbaa !1
  %0 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %1 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TransferFunctions.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateLinearizationDeviceLinkTHR(%struct._cmsContext_struct* null, i32 %0, %struct._cms_curve_struct** %1) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateInkLimitingDeviceLinkTHR(%struct._cmsContext_struct* %ContextID, i32 %ColorSpace, double %Limit) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ColorSpace.addr = alloca i32, align 4
  %Limit.addr = alloca double, align 8
  %hICC = alloca i8*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %nChannels = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  store double %Limit, double* %Limit.addr, align 8, !tbaa !10
  %0 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %cmp = icmp ne i32 %4, 1129142603
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %5, i32 9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load double, double* %Limit.addr, align 8, !tbaa !10
  %cmp1 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load double, double* %Limit.addr, align 8, !tbaa !10
  %cmp2 = fcmp ogt double %7, 4.000000e+02
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %8, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0)) #5
  %9 = load double, double* %Limit.addr, align 8, !tbaa !10
  %cmp4 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  store double 0.000000e+00, double* %Limit.addr, align 8, !tbaa !10
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %10 = load double, double* %Limit.addr, align 8, !tbaa !10
  %cmp7 = fcmp ogt double %10, 4.000000e+02
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store double 4.000000e+02, double* %Limit.addr, align 8, !tbaa !10
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %lor.lhs.false
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %11) #5
  store i8* %call, i8** %hICC, align 8, !tbaa !1
  %12 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.10
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.10
  %13 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %13, double 4.300000e+00) #5
  %14 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %14, i32 1818848875) #5
  %15 = load i8*, i8** %hICC, align 8, !tbaa !1
  %16 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %15, i32 %16) #5
  %17 = load i8*, i8** %hICC, align 8, !tbaa !1
  %18 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %17, i32 %18) #5
  %19 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetHeaderRenderingIntent(i8* %19, i32 0) #5
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call13 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %20, i32 4, i32 4) #5
  store %struct._cmsPipeline_struct* %call13, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp14 = icmp eq %struct._cmsPipeline_struct* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %Error

if.end.16:                                        ; preds = %if.end.12
  %22 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %call17 = call i32 @cmsChannelsOf(i32 %22) #5
  store i32 %call17, i32* %nChannels, align 4, !tbaa !21
  %23 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %24 = load i32, i32* %nChannels, align 4, !tbaa !21
  %25 = load i32, i32* %nChannels, align 4, !tbaa !21
  %call18 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %23, i32 17, i32 %24, i32 %25, i16* null) #5
  store %struct._cmsStage_struct* %call18, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %cmp19 = icmp eq %struct._cmsStage_struct* %26, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  br label %Error

if.end.21:                                        ; preds = %if.end.16
  %27 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %28 = bitcast double* %Limit.addr to i8*
  %call22 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %27, i32 (i16*, i16*, i8*)* @InkLimitingSampler, i8* %28, i32 0) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %Error

if.end.25:                                        ; preds = %if.end.21
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %31 = load i32, i32* %nChannels, align 4, !tbaa !21
  %call26 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %30, i32 %31) #5
  %call27 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %29, i32 0, %struct._cmsStage_struct* %call26) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %lor.lhs.false.29, label %if.then.36

lor.lhs.false.29:                                 ; preds = %if.end.25
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %33 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call30 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %32, i32 1, %struct._cmsStage_struct* %33) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %lor.lhs.false.32, label %if.then.36

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.29
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %36 = load i32, i32* %nChannels, align 4, !tbaa !21
  %call33 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %35, i32 %36) #5
  %call34 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %34, i32 1, %struct._cmsStage_struct* %call33) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.29, %if.end.25
  br label %Error

if.end.37:                                        ; preds = %lor.lhs.false.32
  %37 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call38 = call i32 @SetTextTags(i8* %37, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @.str.6, i32 0, i32 0)) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  br label %Error

if.end.41:                                        ; preds = %if.end.37
  %38 = load i8*, i8** %hICC, align 8, !tbaa !1
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %40 = bitcast %struct._cmsPipeline_struct* %39 to i8*
  %call42 = call i32 @cmsWriteTag(i8* %38, i32 1093812784, i8* %40) #5
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  br label %Error

if.end.45:                                        ; preds = %if.end.41
  %41 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call46 = call i32 @SetSeqDescTag(i8* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #5
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  br label %Error

if.end.49:                                        ; preds = %if.end.45
  %42 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %42) #5
  %43 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %43, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.48, %if.then.44, %if.then.40, %if.then.36, %if.then.24, %if.then.20, %if.then.15
  %44 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp50 = icmp ne %struct._cmsPipeline_struct* %44, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %Error
  %45 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %45) #5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %Error
  %46 = load i8*, i8** %hICC, align 8, !tbaa !1
  %cmp53 = icmp ne i8* %46, null
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.52
  %47 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call55 = call i32 @cmsCloseProfile(i8* %47) #5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.52
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.end.49, %if.then.11, %if.then
  %48 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i8*, i8** %retval
  ret i8* %52
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

declare %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct*, i32, i32, i32, i16*) #2

declare i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct*, i32 (i16*, i16*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @InkLimitingSampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %InkLimit = alloca double, align 8
  %SumCMY = alloca double, align 8
  %SumCMYK = alloca double, align 8
  %Ratio = alloca double, align 8
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast double* %InkLimit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to double*
  %3 = load double, double* %2, align 8, !tbaa !10
  store double %3, double* %InkLimit, align 8, !tbaa !10
  %4 = bitcast double* %SumCMY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %SumCMYK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %Ratio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load double, double* %InkLimit, align 8, !tbaa !10
  %mul = fmul double %7, 6.553500e+02
  store double %mul, double* %InkLimit, align 8, !tbaa !10
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = zext i16 %9 to i32
  %10 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx1, align 2, !tbaa !34
  %conv2 = zext i16 %11 to i32
  %add = add nsw i32 %conv, %conv2
  %12 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 2
  %13 = load i16, i16* %arrayidx3, align 2, !tbaa !34
  %conv4 = zext i16 %13 to i32
  %add5 = add nsw i32 %add, %conv4
  %conv6 = sitofp i32 %add5 to double
  store double %conv6, double* %SumCMY, align 8, !tbaa !10
  %14 = load double, double* %SumCMY, align 8, !tbaa !10
  %15 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %15, i64 3
  %16 = load i16, i16* %arrayidx7, align 2, !tbaa !34
  %conv8 = zext i16 %16 to i32
  %conv9 = sitofp i32 %conv8 to double
  %add10 = fadd double %14, %conv9
  store double %add10, double* %SumCMYK, align 8, !tbaa !10
  %17 = load double, double* %SumCMYK, align 8, !tbaa !10
  %18 = load double, double* %InkLimit, align 8, !tbaa !10
  %cmp = fcmp ogt double %17, %18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load double, double* %SumCMYK, align 8, !tbaa !10
  %20 = load double, double* %InkLimit, align 8, !tbaa !10
  %sub = fsub double %19, %20
  %21 = load double, double* %SumCMY, align 8, !tbaa !10
  %div = fdiv double %sub, %21
  %sub12 = fsub double 1.000000e+00, %div
  store double %sub12, double* %Ratio, align 8, !tbaa !10
  %22 = load double, double* %Ratio, align 8, !tbaa !10
  %cmp13 = fcmp olt double %22, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  store double 0.000000e+00, double* %Ratio, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  store double 1.000000e+00, double* %Ratio, align 8, !tbaa !10
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  %23 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx17, align 2, !tbaa !34
  %conv18 = zext i16 %24 to i32
  %conv19 = sitofp i32 %conv18 to double
  %25 = load double, double* %Ratio, align 8, !tbaa !10
  %mul20 = fmul double %conv19, %25
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul20) #5
  %26 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %26, i64 0
  store i16 %call, i16* %arrayidx21, align 2, !tbaa !34
  %27 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %27, i64 1
  %28 = load i16, i16* %arrayidx22, align 2, !tbaa !34
  %conv23 = zext i16 %28 to i32
  %conv24 = sitofp i32 %conv23 to double
  %29 = load double, double* %Ratio, align 8, !tbaa !10
  %mul25 = fmul double %conv24, %29
  %call26 = call zeroext i16 @_cmsQuickSaturateWord(double %mul25) #5
  %30 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i16, i16* %30, i64 1
  store i16 %call26, i16* %arrayidx27, align 2, !tbaa !34
  %31 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %31, i64 2
  %32 = load i16, i16* %arrayidx28, align 2, !tbaa !34
  %conv29 = zext i16 %32 to i32
  %conv30 = sitofp i32 %conv29 to double
  %33 = load double, double* %Ratio, align 8, !tbaa !10
  %mul31 = fmul double %conv30, %33
  %call32 = call zeroext i16 @_cmsQuickSaturateWord(double %mul31) #5
  %34 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %34, i64 2
  store i16 %call32, i16* %arrayidx33, align 2, !tbaa !34
  %35 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %35, i64 3
  %36 = load i16, i16* %arrayidx34, align 2, !tbaa !34
  %37 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %37, i64 3
  store i16 %36, i16* %arrayidx35, align 2, !tbaa !34
  %38 = bitcast double* %Ratio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast double* %SumCMYK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %SumCMY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast double* %InkLimit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret i32 1
}

declare %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreateInkLimitingDeviceLink(i32 %ColorSpace, double %Limit) #0 {
entry:
  %ColorSpace.addr = alloca i32, align 4
  %Limit.addr = alloca double, align 8
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  store double %Limit, double* %Limit.addr, align 8, !tbaa !10
  %0 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %1 = load double, double* %Limit.addr, align 8, !tbaa !10
  %call = call i8* @cmsCreateInkLimitingDeviceLinkTHR(%struct._cmsContext_struct* null, i32 %0, double %1) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLab2ProfileTHR(%struct._cmsContext_struct* %ContextID, %struct.cmsCIExyY* %WhitePoint) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %hProfile = alloca i8*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %3 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsCIExyY* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call %struct.cmsCIExyY* @cmsD50_xyY() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cmsCIExyY* [ %call, %cond.true ], [ %4, %cond.false ]
  %call1 = call i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* %2, %struct.cmsCIExyY* %cond, %struct.cmsCIExyYTRIPLE* null, %struct._cms_curve_struct** null) #5
  store i8* %call1, i8** %hProfile, align 8, !tbaa !1
  %5 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %6, double 2.100000e+00) #5
  %7 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %7, i32 1633842036) #5
  %8 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %8, i32 1281450528) #5
  %9 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %9, i32 1281450528) #5
  %10 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call3 = call i32 @SetTextTags(i8* %10, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @.str.8, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call6 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %11, i32 3, i32 3) #5
  store %struct._cmsPipeline_struct* %call6, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._cmsPipeline_struct* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  br label %Error

if.end.9:                                         ; preds = %if.end.5
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call10 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCLut(%struct._cmsContext_struct* %14, i32 3) #5
  %call11 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %13, i32 0, %struct._cmsStage_struct* %call10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  br label %Error

if.end.14:                                        ; preds = %if.end.9
  %15 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %17 = bitcast %struct._cmsPipeline_struct* %16 to i8*
  %call15 = call i32 @cmsWriteTag(i8* %15, i32 1093812784, i8* %17) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  br label %Error

if.end.18:                                        ; preds = %if.end.14
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %18) #5
  %19 = load i8*, i8** %hProfile, align 8, !tbaa !1
  store i8* %19, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.17, %if.then.13, %if.then.8
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp19 = icmp ne %struct._cmsPipeline_struct* %20, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %Error
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %21) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %Error
  %22 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp22 = icmp ne i8* %22, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %23 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call24 = call i32 @cmsCloseProfile(i8* %23) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.end.18, %if.then.4, %if.then
  %24 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i8*, i8** %retval
  ret i8* %26
}

declare %struct.cmsCIExyY* @cmsD50_xyY() #2

declare %struct._cmsStage_struct* @_cmsStageAllocIdentityCLut(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLab2Profile(%struct.cmsCIExyY* %WhitePoint) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateLab2ProfileTHR(%struct._cmsContext_struct* null, %struct.cmsCIExyY* %0) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %ContextID, %struct.cmsCIExyY* %WhitePoint) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %hProfile = alloca i8*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %3 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsCIExyY* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call %struct.cmsCIExyY* @cmsD50_xyY() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cmsCIExyY* [ %call, %cond.true ], [ %4, %cond.false ]
  %call1 = call i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* %2, %struct.cmsCIExyY* %cond, %struct.cmsCIExyYTRIPLE* null, %struct._cms_curve_struct** null) #5
  store i8* %call1, i8** %hProfile, align 8, !tbaa !1
  %5 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %6, double 4.300000e+00) #5
  %7 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %7, i32 1633842036) #5
  %8 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %8, i32 1281450528) #5
  %9 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %9, i32 1281450528) #5
  %10 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call3 = call i32 @SetTextTags(i8* %10, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @.str.8, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %Error

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call6 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %11, i32 3, i32 3) #5
  store %struct._cmsPipeline_struct* %call6, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._cmsPipeline_struct* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  br label %Error

if.end.9:                                         ; preds = %if.end.5
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call10 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %14, i32 3) #5
  %call11 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %13, i32 0, %struct._cmsStage_struct* %call10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  br label %Error

if.end.14:                                        ; preds = %if.end.9
  %15 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %17 = bitcast %struct._cmsPipeline_struct* %16 to i8*
  %call15 = call i32 @cmsWriteTag(i8* %15, i32 1093812784, i8* %17) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  br label %Error

if.end.18:                                        ; preds = %if.end.14
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %18) #5
  %19 = load i8*, i8** %hProfile, align 8, !tbaa !1
  store i8* %19, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.17, %if.then.13, %if.then.8, %if.then.4
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp19 = icmp ne %struct._cmsPipeline_struct* %20, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %Error
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %21) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %Error
  %22 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp22 = icmp ne i8* %22, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %23 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call24 = call i32 @cmsCloseProfile(i8* %23) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.end.18, %if.then
  %24 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateLab4Profile(%struct.cmsCIExyY* %WhitePoint) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* null, %struct.cmsCIExyY* %0) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateXYZProfileTHR(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile = alloca i8*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct.cmsCIExyY* @cmsD50_xyY() #5
  %call1 = call i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* %2, %struct.cmsCIExyY* %call, %struct.cmsCIExyYTRIPLE* null, %struct._cms_curve_struct** null) #5
  store i8* %call1, i8** %hProfile, align 8, !tbaa !1
  %3 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %4, double 4.300000e+00) #5
  %5 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %5, i32 1633842036) #5
  %6 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %6, i32 1482250784) #5
  %7 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %7, i32 1482250784) #5
  %8 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call2 = call i32 @SetTextTags(i8* %8, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @.str.9, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call5 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %9, i32 3, i32 3) #5
  store %struct._cmsPipeline_struct* %call5, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cmsPipeline_struct* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %Error

if.end.8:                                         ; preds = %if.end.4
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call9 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %12, i32 3) #5
  %call10 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %11, i32 0, %struct._cmsStage_struct* %call9) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  br label %Error

if.end.13:                                        ; preds = %if.end.8
  %13 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %15 = bitcast %struct._cmsPipeline_struct* %14 to i8*
  %call14 = call i32 @cmsWriteTag(i8* %13, i32 1093812784, i8* %15) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %Error

if.end.17:                                        ; preds = %if.end.13
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %16) #5
  %17 = load i8*, i8** %hProfile, align 8, !tbaa !1
  store i8* %17, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.16, %if.then.12, %if.then.7, %if.then.3
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp18 = icmp ne %struct._cmsPipeline_struct* %18, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %Error
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %19) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %Error
  %20 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp21 = icmp ne i8* %20, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %21 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call23 = call i32 @cmsCloseProfile(i8* %21) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.end.17, %if.then
  %22 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateXYZProfile() #0 {
entry:
  %call = call i8* @cmsCreateXYZProfileTHR(%struct._cmsContext_struct* null) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreate_sRGBProfileTHR(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %D65 = alloca %struct.cmsCIExyY, align 8
  %Rec709Primaries = alloca %struct.cmsCIExyYTRIPLE, align 8
  %Gamma22 = alloca [3 x %struct._cms_curve_struct*], align 16
  %hsRGB = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIExyY* %D65 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.cmsCIExyYTRIPLE* %Rec709Primaries to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast %struct.cmsCIExyYTRIPLE* %Rec709Primaries to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.cmsCIExyYTRIPLE* @cmsCreate_sRGBProfileTHR.Rec709Primaries to i8*), i64 72, i32 8, i1 false)
  %3 = bitcast [3 x %struct._cms_curve_struct*]* %Gamma22 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i8** %hsRGB to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %call = call i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY* %D65, double 6.504000e+03) #5
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_curve_struct* @Build_sRGBGamma(%struct._cmsContext_struct* %5) #5
  %arrayidx = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i64 2
  store %struct._cms_curve_struct* %call1, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i64 1
  store %struct._cms_curve_struct* %call1, %struct._cms_curve_struct** %arrayidx2, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i64 0
  store %struct._cms_curve_struct* %call1, %struct._cms_curve_struct** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i64 0
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx4, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i32 0
  %call5 = call i8* @cmsCreateRGBProfileTHR(%struct._cmsContext_struct* %7, %struct.cmsCIExyY* %D65, %struct.cmsCIExyYTRIPLE* %Rec709Primaries, %struct._cms_curve_struct** %arraydecay) #5
  store i8* %call5, i8** %hsRGB, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %Gamma22, i32 0, i64 0
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx6, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %8) #5
  %9 = load i8*, i8** %hsRGB, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %10 = load i8*, i8** %hsRGB, align 8, !tbaa !1
  %call10 = call i32 @SetTextTags(i8* %10, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.10, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %11 = load i8*, i8** %hsRGB, align 8, !tbaa !1
  %call12 = call i32 @cmsCloseProfile(i8* %11) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %12 = load i8*, i8** %hsRGB, align 8, !tbaa !1
  store i8* %12, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.8, %if.then
  %13 = bitcast i8** %hsRGB to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast [3 x %struct._cms_curve_struct*]* %Gamma22 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %14) #1
  %15 = bitcast %struct.cmsCIExyYTRIPLE* %Rec709Primaries to i8*
  call void @llvm.lifetime.end(i64 72, i8* %15) #1
  %16 = bitcast %struct.cmsCIExyY* %D65 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #1
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY*, double) #2

; Function Attrs: nounwind uwtable
define internal %struct._cms_curve_struct* @Build_sRGBGamma(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Parameters = alloca [5 x double], align 16
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast [5 x double]* %Parameters to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i64 0
  store double 2.400000e+00, double* %arrayidx, align 8, !tbaa !10
  %arrayidx1 = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i64 1
  store double 0x3FEE54EDCD0AEB60, double* %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i64 2
  store double 0x3FAAB1232F514A03, double* %arrayidx2, align 8, !tbaa !10
  %arrayidx3 = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i64 3
  store double 0x3FB3D0722149B580, double* %arrayidx3, align 8, !tbaa !10
  %arrayidx4 = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i64 4
  store double 4.045000e-02, double* %arrayidx4, align 8, !tbaa !10
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %Parameters, i32 0, i32 0
  %call = call %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %1, i32 4, double* %arraydecay) #5
  %2 = bitcast [5 x double]* %Parameters to i8*
  call void @llvm.lifetime.end(i64 40, i8* %2) #1
  ret %struct._cms_curve_struct* %call
}

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreate_sRGBProfile() #0 {
entry:
  %call = call i8* @cmsCreate_sRGBProfileTHR(%struct._cmsContext_struct* null) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateBCHSWabstractProfileTHR(%struct._cmsContext_struct* %ContextID, i32 %nLUTPoints, double %Bright, double %Contrast, double %Hue, double %Saturation, i32 %TempSrc, i32 %TempDest) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nLUTPoints.addr = alloca i32, align 4
  %Bright.addr = alloca double, align 8
  %Contrast.addr = alloca double, align 8
  %Hue.addr = alloca double, align 8
  %Saturation.addr = alloca double, align 8
  %TempSrc.addr = alloca i32, align 4
  %TempDest.addr = alloca i32, align 4
  %hICC = alloca i8*, align 8
  %Pipeline = alloca %struct._cmsPipeline_struct*, align 8
  %bchsw = alloca %struct.BCHSWADJUSTS, align 8
  %WhitePnt = alloca %struct.cmsCIExyY, align 8
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %Dimensions = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nLUTPoints, i32* %nLUTPoints.addr, align 4, !tbaa !21
  store double %Bright, double* %Bright.addr, align 8, !tbaa !10
  store double %Contrast, double* %Contrast.addr, align 8, !tbaa !10
  store double %Hue, double* %Hue.addr, align 8, !tbaa !10
  store double %Saturation, double* %Saturation.addr, align 8, !tbaa !10
  store i32 %TempSrc, i32* %TempSrc.addr, align 4, !tbaa !21
  store i32 %TempDest, i32* %TempDest.addr, align 4, !tbaa !21
  %0 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %Pipeline to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.BCHSWADJUSTS* %bchsw to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #1
  %3 = bitcast %struct.cmsCIExyY* %WhitePnt to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load double, double* %Bright.addr, align 8, !tbaa !10
  %Brightness = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 0
  store double %7, double* %Brightness, align 8, !tbaa !36
  %8 = load double, double* %Contrast.addr, align 8, !tbaa !10
  %Contrast1 = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 1
  store double %8, double* %Contrast1, align 8, !tbaa !38
  %9 = load double, double* %Hue.addr, align 8, !tbaa !10
  %Hue2 = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 2
  store double %9, double* %Hue2, align 8, !tbaa !39
  %10 = load double, double* %Saturation.addr, align 8, !tbaa !10
  %Saturation3 = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 3
  store double %10, double* %Saturation3, align 8, !tbaa !40
  %11 = load i32, i32* %TempSrc.addr, align 4, !tbaa !21
  %conv = sitofp i32 %11 to double
  %call = call i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY* %WhitePnt, double %conv) #5
  %WPsrc = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 4
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %WPsrc, %struct.cmsCIExyY* %WhitePnt) #5
  %12 = load i32, i32* %TempDest.addr, align 4, !tbaa !21
  %conv4 = sitofp i32 %12 to double
  %call5 = call i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY* %WhitePnt, double %conv4) #5
  %WPdest = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %bchsw, i32 0, i32 5
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %WPdest, %struct.cmsCIExyY* %WhitePnt) #5
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call6 = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %13) #5
  store i8* %call6, i8** %hICC, align 8, !tbaa !1
  %14 = load i8*, i8** %hICC, align 8, !tbaa !1
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %15, i32 1633842036) #5
  %16 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %16, i32 1281450528) #5
  %17 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %17, i32 1281450528) #5
  %18 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetHeaderRenderingIntent(i8* %18, i32 0) #5
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call7 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %19, i32 3, i32 3) #5
  store %struct._cmsPipeline_struct* %call7, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %20, null
  br i1 %cmp, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %21 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call10 = call i32 @cmsCloseProfile(i8* %21) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %22 = load i32, i32* %i, align 4, !tbaa !21
  %cmp12 = icmp slt i32 %22, 8
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %nLUTPoints.addr, align 4, !tbaa !21
  %24 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i64 %idxprom
  store i32 %23, i32* %arrayidx, align 4, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i32 0
  %call14 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bitGranular(%struct._cmsContext_struct* %26, i32* %arraydecay, i32 3, i32 3, i16* null) #5
  store %struct._cmsStage_struct* %call14, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %27 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %cmp15 = icmp eq %struct._cmsStage_struct* %27, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.end
  %28 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %29 = bitcast %struct.BCHSWADJUSTS* %bchsw to i8*
  %call19 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %28, i32 (i16*, i16*, i8*)* @bchswSampler, i8* %29, i32 0) #5
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  br label %Error

if.end.22:                                        ; preds = %if.end.18
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %31 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call23 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %30, i32 1, %struct._cmsStage_struct* %31) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  br label %Error

if.end.26:                                        ; preds = %if.end.22
  %32 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call27 = call i32 @SetTextTags(i8* %32, i32* getelementptr inbounds ([14 x i32], [14 x i32]* @.str.11, i32 0, i32 0)) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %33 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call31 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  %34 = bitcast %struct.cmsCIEXYZ* %call31 to i8*
  %call32 = call i32 @cmsWriteTag(i8* %33, i32 2004119668, i8* %34) #5
  %35 = load i8*, i8** %hICC, align 8, !tbaa !1
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  %37 = bitcast %struct._cmsPipeline_struct* %36 to i8*
  %call33 = call i32 @cmsWriteTag(i8* %35, i32 1093812784, i8* %37) #5
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %38) #5
  %39 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %39, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.25, %if.then.21
  %40 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Pipeline, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %40) #5
  %41 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call34 = call i32 @cmsCloseProfile(i8* %41) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.30, %if.then.29, %if.then.17, %if.then.9, %if.then
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.end(i64 32, i8* %43) #1
  %44 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct.cmsCIExyY* %WhitePnt to i8*
  call void @llvm.lifetime.end(i64 24, i8* %45) #1
  %46 = bitcast %struct.BCHSWADJUSTS* %bchsw to i8*
  call void @llvm.lifetime.end(i64 80, i8* %46) #1
  %47 = bitcast %struct._cmsPipeline_struct** %Pipeline to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i8*, i8** %retval
  ret i8* %49
}

declare %struct._cmsStage_struct* @cmsStageAllocCLut16bitGranular(%struct._cmsContext_struct*, i32*, i32, i32, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @bchswSampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %LabIn = alloca %struct.cmsCIELab, align 8
  %LabOut = alloca %struct.cmsCIELab, align 8
  %LChIn = alloca %struct.cmsCIELCh, align 8
  %LChOut = alloca %struct.cmsCIELCh, align 8
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %bchsw = alloca %struct.BCHSWADJUSTS*, align 8
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELab* %LabIn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.cmsCIELab* %LabOut to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.cmsCIELCh* %LChIn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.cmsCIELCh* %LChOut to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.BCHSWADJUSTS** %bchsw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.BCHSWADJUSTS*
  store %struct.BCHSWADJUSTS* %7, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  call void @cmsLabEncoded2Float(%struct.cmsCIELab* %LabIn, i16* %8) #5
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LChIn, %struct.cmsCIELab* %LabIn) #5
  %L = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChIn, i32 0, i32 0
  %9 = load double, double* %L, align 8, !tbaa !5
  %10 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %Contrast = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %10, i32 0, i32 1
  %11 = load double, double* %Contrast, align 8, !tbaa !38
  %mul = fmul double %9, %11
  %12 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %Brightness = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %12, i32 0, i32 0
  %13 = load double, double* %Brightness, align 8, !tbaa !36
  %add = fadd double %mul, %13
  %L1 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChOut, i32 0, i32 0
  store double %add, double* %L1, align 8, !tbaa !5
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChIn, i32 0, i32 1
  %14 = load double, double* %C, align 8, !tbaa !8
  %15 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %Saturation = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %15, i32 0, i32 3
  %16 = load double, double* %Saturation, align 8, !tbaa !40
  %add2 = fadd double %14, %16
  %C3 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChOut, i32 0, i32 1
  store double %add2, double* %C3, align 8, !tbaa !8
  %h = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChIn, i32 0, i32 2
  %17 = load double, double* %h, align 8, !tbaa !9
  %18 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %Hue = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %18, i32 0, i32 2
  %19 = load double, double* %Hue, align 8, !tbaa !39
  %add4 = fadd double %17, %19
  %h5 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LChOut, i32 0, i32 2
  store double %add4, double* %h5, align 8, !tbaa !9
  call void @cmsLCh2Lab(%struct.cmsCIELab* %LabOut, %struct.cmsCIELCh* %LChOut) #5
  %20 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %WPsrc = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %20, i32 0, i32 4
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* %WPsrc, %struct.cmsCIEXYZ* %XYZ, %struct.cmsCIELab* %LabOut) #5
  %21 = load %struct.BCHSWADJUSTS*, %struct.BCHSWADJUSTS** %bchsw, align 8, !tbaa !1
  %WPdest = getelementptr inbounds %struct.BCHSWADJUSTS, %struct.BCHSWADJUSTS* %21, i32 0, i32 5
  call void @cmsXYZ2Lab(%struct.cmsCIEXYZ* %WPdest, %struct.cmsCIELab* %LabOut, %struct.cmsCIEXYZ* %XYZ) #5
  %22 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  call void @cmsFloat2LabEncoded(i16* %22, %struct.cmsCIELab* %LabOut) #5
  %23 = bitcast %struct.BCHSWADJUSTS** %bchsw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %24) #1
  %25 = bitcast %struct.cmsCIELCh* %LChOut to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #1
  %26 = bitcast %struct.cmsCIELCh* %LChIn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #1
  %27 = bitcast %struct.cmsCIELab* %LabOut to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = bitcast %struct.cmsCIELab* %LabIn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %28) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateBCHSWabstractProfile(i32 %nLUTPoints, double %Bright, double %Contrast, double %Hue, double %Saturation, i32 %TempSrc, i32 %TempDest) #0 {
entry:
  %nLUTPoints.addr = alloca i32, align 4
  %Bright.addr = alloca double, align 8
  %Contrast.addr = alloca double, align 8
  %Hue.addr = alloca double, align 8
  %Saturation.addr = alloca double, align 8
  %TempSrc.addr = alloca i32, align 4
  %TempDest.addr = alloca i32, align 4
  store i32 %nLUTPoints, i32* %nLUTPoints.addr, align 4, !tbaa !21
  store double %Bright, double* %Bright.addr, align 8, !tbaa !10
  store double %Contrast, double* %Contrast.addr, align 8, !tbaa !10
  store double %Hue, double* %Hue.addr, align 8, !tbaa !10
  store double %Saturation, double* %Saturation.addr, align 8, !tbaa !10
  store i32 %TempSrc, i32* %TempSrc.addr, align 4, !tbaa !21
  store i32 %TempDest, i32* %TempDest.addr, align 4, !tbaa !21
  %0 = load i32, i32* %nLUTPoints.addr, align 4, !tbaa !21
  %1 = load double, double* %Bright.addr, align 8, !tbaa !10
  %2 = load double, double* %Contrast.addr, align 8, !tbaa !10
  %3 = load double, double* %Hue.addr, align 8, !tbaa !10
  %4 = load double, double* %Saturation.addr, align 8, !tbaa !10
  %5 = load i32, i32* %TempSrc.addr, align 4, !tbaa !21
  %6 = load i32, i32* %TempDest.addr, align 4, !tbaa !21
  %call = call i8* @cmsCreateBCHSWabstractProfileTHR(%struct._cmsContext_struct* null, i32 %0, double %1, double %2, double %3, double %4, i32 %5, i32 %6) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateNULLProfileTHR(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfile = alloca i8*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %PostLin = alloca %struct._cmsStage_struct*, align 8
  %EmptyTab = alloca %struct._cms_curve_struct*, align 8
  %Zero = alloca [2 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %2 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cms_curve_struct** %EmptyTab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 4, i32 2, i1 false)
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %6) #5
  store i8* %call, i8** %hProfile, align 8, !tbaa !1
  %7 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetProfileVersion(i8* %8, double 4.300000e+00) #5
  %9 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call1 = call i32 @SetTextTags(i8* %9, i32* getelementptr inbounds ([22 x i32], [22 x i32]* @.str.12, i32 0, i32 0)) #5
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %10 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %10, i32 1886549106) #5
  %11 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetColorSpace(i8* %11, i32 1196573017) #5
  %12 = load i8*, i8** %hProfile, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %12, i32 1281450528) #5
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call5 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %13, i32 1, i32 1) #5
  store %struct._cmsPipeline_struct* %call5, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %14, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  br label %Error

if.end.7:                                         ; preds = %if.end.4
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %Zero, i32 0, i32 0
  %call8 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %15, i32 2, i16* %arraydecay) #5
  store %struct._cms_curve_struct* %call8, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call9 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %16, i32 1, %struct._cms_curve_struct** %EmptyTab) #5
  store %struct._cmsStage_struct* %call9, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %EmptyTab, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %17) #5
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %call10 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %18, i32 1, %struct._cmsStage_struct* %19) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.7
  br label %Error

if.end.13:                                        ; preds = %if.end.7
  %20 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %22 = bitcast %struct._cmsPipeline_struct* %21 to i8*
  %call14 = call i32 @cmsWriteTag(i8* %20, i32 1110589744, i8* %22) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %Error

if.end.17:                                        ; preds = %if.end.13
  %23 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call18 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  %24 = bitcast %struct.cmsCIEXYZ* %call18 to i8*
  %call19 = call i32 @cmsWriteTag(i8* %23, i32 2004119668, i8* %24) #5
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  br label %Error

if.end.22:                                        ; preds = %if.end.17
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %25) #5
  %26 = load i8*, i8** %hProfile, align 8, !tbaa !1
  store i8* %26, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.21, %if.then.16, %if.then.12, %if.then.6, %if.then.3
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp23 = icmp ne %struct._cmsPipeline_struct* %27, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %Error
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %28) #5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %Error
  %29 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp26 = icmp ne i8* %29, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %30 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call28 = call i32 @cmsCloseProfile(i8* %30) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.end.22, %if.then
  %31 = bitcast [2 x i16]* %Zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct._cms_curve_struct** %EmptyTab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i8*, i8** %retval
  ret i8* %36
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreateNULLProfile() #0 {
entry:
  %call = call i8* @cmsCreateNULLProfileTHR(%struct._cmsContext_struct* null) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsTransform2DeviceLink(i8* %hTransform, double %Version, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %hTransform.addr = alloca i8*, align 8
  %Version.addr = alloca double, align 8
  %dwFlags.addr = alloca i32, align 4
  %hProfile = alloca i8*, align 8
  %FrmIn = alloca i32, align 4
  %FrmOut = alloca i32, align 4
  %ChansIn = alloca i32, align 4
  %ChansOut = alloca i32, align 4
  %ColorSpaceBitsIn = alloca i32, align 4
  %ColorSpaceBitsOut = alloca i32, align 4
  %xform = alloca %struct._cmstransform_struct*, align 8
  %LUT = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %AllowedLUT = alloca %struct.cmsAllowedLUT*, align 8
  %DestinationTag = alloca i32, align 4
  %deviceClass = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  store double %Version, double* %Version.addr, align 8, !tbaa !10
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !21
  %0 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %hProfile, align 8, !tbaa !1
  %1 = bitcast i32* %FrmIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %FrmOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ChansIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ChansOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ColorSpaceBitsIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %ColorSpaceBitsOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %9, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %10 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %11 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetTransformContextID(i8* %13) #5
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %14 = bitcast %struct.cmsAllowedLUT** %AllowedLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i32* %DestinationTag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %deviceClass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %17, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 1058, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.cmsTransform2DeviceLink, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %18, %cond.true
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 8
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !41
  %call1 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %20) #5
  store %struct._cmsStage_struct* %call1, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cmsStage_struct* %21, null
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %cond.end
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call3 = call i32 @cmsStageType(%struct._cmsStage_struct* %22) #5
  %cmp4 = icmp eq i32 %call3, 1852009504
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %23 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %call6 = call i8* @CreateNamedColorDevicelink(i8* %23) #5
  store i8* %call6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %cond.end
  %24 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Lut8 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %24, i32 0, i32 8
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut8, align 8, !tbaa !41
  %call9 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %25) #5
  store %struct._cmsPipeline_struct* %call9, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cmsPipeline_struct* %26, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryColorSpace = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 12
  %28 = load i32, i32* %EntryColorSpace, align 4, !tbaa !44
  %cmp13 = icmp eq i32 %28, 1281450528
  br i1 %cmp13, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.12
  %29 = load double, double* %Version.addr, align 8, !tbaa !10
  %cmp14 = fcmp olt double %29, 4.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %land.lhs.true
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call16 = call %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4curves(%struct._cmsContext_struct* %31) #5
  %call17 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %30, i32 0, %struct._cmsStage_struct* %call16) #5
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  br label %Error

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %land.lhs.true, %if.end.12
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitColorSpace = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %32, i32 0, i32 13
  %33 = load i32, i32* %ExitColorSpace, align 4, !tbaa !45
  %cmp21 = icmp eq i32 %33, 1281450528
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.30

land.lhs.true.22:                                 ; preds = %if.end.20
  %34 = load double, double* %Version.addr, align 8, !tbaa !10
  %cmp23 = fcmp olt double %34, 4.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %land.lhs.true.22
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call25 = call %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct* %36) #5
  %call26 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %35, i32 1, %struct._cmsStage_struct* %call25) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.24
  br label %Error

if.end.29:                                        ; preds = %if.then.24
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.22, %if.end.20
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call31 = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %37) #5
  store i8* %call31, i8** %hProfile, align 8, !tbaa !1
  %38 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %tobool32 = icmp ne i8* %38, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.30
  br label %Error

if.end.34:                                        ; preds = %if.end.30
  %39 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %40 = load double, double* %Version.addr, align 8, !tbaa !10
  call void @cmsSetProfileVersion(i8* %39, double %40) #5
  %41 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %42 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryColorSpace35 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %42, i32 0, i32 12
  %43 = load i32, i32* %EntryColorSpace35, align 4, !tbaa !44
  %44 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitColorSpace36 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %44, i32 0, i32 13
  %45 = load i32, i32* %ExitColorSpace36, align 4, !tbaa !45
  %46 = load i32, i32* %dwFlags.addr, align 4, !tbaa !21
  call void @FixColorSpaces(i8* %41, i32 %43, i32 %45, i32 %46) #5
  %47 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryColorSpace37 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %47, i32 0, i32 12
  %48 = load i32, i32* %EntryColorSpace37, align 4, !tbaa !44
  %call38 = call i32 @cmsChannelsOf(i32 %48) #5
  store i32 %call38, i32* %ChansIn, align 4, !tbaa !21
  %49 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitColorSpace39 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %49, i32 0, i32 13
  %50 = load i32, i32* %ExitColorSpace39, align 4, !tbaa !45
  %call40 = call i32 @cmsChannelsOf(i32 %50) #5
  store i32 %call40, i32* %ChansOut, align 4, !tbaa !21
  %51 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryColorSpace41 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %51, i32 0, i32 12
  %52 = load i32, i32* %EntryColorSpace41, align 4, !tbaa !44
  %call42 = call i32 @_cmsLCMScolorSpace(i32 %52) #5
  store i32 %call42, i32* %ColorSpaceBitsIn, align 4, !tbaa !21
  %53 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitColorSpace43 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %53, i32 0, i32 13
  %54 = load i32, i32* %ExitColorSpace43, align 4, !tbaa !45
  %call44 = call i32 @_cmsLCMScolorSpace(i32 %54) #5
  store i32 %call44, i32* %ColorSpaceBitsOut, align 4, !tbaa !21
  %55 = load i32, i32* %ColorSpaceBitsIn, align 4, !tbaa !21
  %shl = shl i32 %55, 16
  %56 = load i32, i32* %ChansIn, align 4, !tbaa !21
  %shl45 = shl i32 %56, 3
  %or = or i32 %shl, %shl45
  %or46 = or i32 %or, 2
  store i32 %or46, i32* %FrmIn, align 4, !tbaa !21
  %57 = load i32, i32* %ColorSpaceBitsOut, align 4, !tbaa !21
  %shl47 = shl i32 %57, 16
  %58 = load i32, i32* %ChansOut, align 4, !tbaa !21
  %shl48 = shl i32 %58, 3
  %or49 = or i32 %shl47, %shl48
  %or50 = or i32 %or49, 2
  store i32 %or50, i32* %FrmOut, align 4, !tbaa !21
  %59 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call51 = call i32 @cmsGetDeviceClass(i8* %59) #5
  store i32 %call51, i32* %deviceClass, align 4, !tbaa !23
  %60 = load i32, i32* %deviceClass, align 4, !tbaa !23
  %cmp52 = icmp eq i32 %60, 1886549106
  br i1 %cmp52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.34
  store i32 1110589744, i32* %DestinationTag, align 4, !tbaa !23
  br label %if.end.54

if.else:                                          ; preds = %if.end.34
  store i32 1093812784, i32* %DestinationTag, align 4, !tbaa !23
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.53
  %61 = load i32, i32* %dwFlags.addr, align 4, !tbaa !21
  %and = and i32 %61, 2
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.54
  store %struct.cmsAllowedLUT* null, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  br label %if.end.60

if.else.57:                                       ; preds = %if.end.54
  %62 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %63 = load double, double* %Version.addr, align 8, !tbaa !10
  %cmp58 = fcmp oge double %63, 4.000000e+00
  %conv = zext i1 %cmp58 to i32
  %64 = load i32, i32* %DestinationTag, align 4, !tbaa !23
  %call59 = call %struct.cmsAllowedLUT* @FindCombination(%struct._cmsPipeline_struct* %62, i32 %conv, i32 %64) #5
  store %struct.cmsAllowedLUT* %call59, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %65 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  %cmp61 = icmp eq %struct.cmsAllowedLUT* %65, null
  br i1 %cmp61, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %if.end.60
  %66 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %67 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %67, i32 0, i32 19
  %68 = load i32, i32* %RenderingIntent, align 4, !tbaa !46
  %call64 = call i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %66, %struct._cmsPipeline_struct** %LUT, i32 %68, i32* %FrmIn, i32* %FrmOut, i32* %dwFlags.addr) #5
  %69 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %70 = load double, double* %Version.addr, align 8, !tbaa !10
  %cmp65 = fcmp oge double %70, 4.000000e+00
  %conv66 = zext i1 %cmp65 to i32
  %71 = load i32, i32* %DestinationTag, align 4, !tbaa !23
  %call67 = call %struct.cmsAllowedLUT* @FindCombination(%struct._cmsPipeline_struct* %69, i32 %conv66, i32 %71) #5
  store %struct.cmsAllowedLUT* %call67, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.63, %if.end.60
  %72 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  %cmp69 = icmp eq %struct.cmsAllowedLUT* %72, null
  br i1 %cmp69, label %if.then.71, label %if.end.99

if.then.71:                                       ; preds = %if.end.68
  %73 = load i32, i32* %dwFlags.addr, align 4, !tbaa !21
  %or72 = or i32 %73, 2
  store i32 %or72, i32* %dwFlags.addr, align 4, !tbaa !21
  %74 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %75 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %RenderingIntent73 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %75, i32 0, i32 19
  %76 = load i32, i32* %RenderingIntent73, align 4, !tbaa !46
  %call74 = call i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %74, %struct._cmsPipeline_struct** %LUT, i32 %76, i32* %FrmIn, i32* %FrmOut, i32* %dwFlags.addr) #5
  %77 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %call75 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %77) #5
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %call75, i32 0, i32 1
  %78 = load i32, i32* %Type, align 4, !tbaa !47
  %cmp76 = icmp ne i32 %78, 1668707188
  br i1 %cmp76, label %if.then.78, label %if.end.84

if.then.78:                                       ; preds = %if.then.71
  %79 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %80 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %81 = load i32, i32* %ChansIn, align 4, !tbaa !21
  %call79 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %80, i32 %81) #5
  %call80 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %79, i32 0, %struct._cmsStage_struct* %call79) #5
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.then.78
  br label %Error

if.end.83:                                        ; preds = %if.then.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.71
  %82 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %call85 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct* %82) #5
  %Type86 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %call85, i32 0, i32 1
  %83 = load i32, i32* %Type86, align 4, !tbaa !47
  %cmp87 = icmp ne i32 %83, 1668707188
  br i1 %cmp87, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end.84
  %84 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %85 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %86 = load i32, i32* %ChansOut, align 4, !tbaa !21
  %call90 = call %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %85, i32 %86) #5
  %call91 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %84, i32 1, %struct._cmsStage_struct* %call90) #5
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.89
  br label %Error

if.end.94:                                        ; preds = %if.then.89
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.84
  %87 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %88 = load double, double* %Version.addr, align 8, !tbaa !10
  %cmp96 = fcmp oge double %88, 4.000000e+00
  %conv97 = zext i1 %cmp96 to i32
  %89 = load i32, i32* %DestinationTag, align 4, !tbaa !23
  %call98 = call %struct.cmsAllowedLUT* @FindCombination(%struct._cmsPipeline_struct* %87, i32 %conv97, i32 %89) #5
  store %struct.cmsAllowedLUT* %call98, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.95, %if.end.68
  %90 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %AllowedLUT, align 8, !tbaa !1
  %cmp100 = icmp eq %struct.cmsAllowedLUT* %90, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  br label %Error

if.end.103:                                       ; preds = %if.end.99
  %91 = load i32, i32* %dwFlags.addr, align 4, !tbaa !21
  %and104 = and i32 %91, 8
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.103
  %92 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %call107 = call i32 @cmsPipelineSetSaveAs8bitsFlag(%struct._cmsPipeline_struct* %92, i32 1) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.103
  %93 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call109 = call i32 @SetTextTags(i8* %93, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @.str.15, i32 0, i32 0)) #5
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.end.108
  br label %Error

if.end.112:                                       ; preds = %if.end.108
  %94 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %95 = load i32, i32* %DestinationTag, align 4, !tbaa !23
  %96 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %97 = bitcast %struct._cmsPipeline_struct* %96 to i8*
  %call113 = call i32 @cmsWriteTag(i8* %94, i32 %95, i8* %97) #5
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.end.112
  br label %Error

if.end.116:                                       ; preds = %if.end.112
  %98 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %InputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %98, i32 0, i32 10
  %99 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %InputColorant, align 8, !tbaa !49
  %cmp117 = icmp ne %struct._cms_NAMEDCOLORLIST_struct* %99, null
  br i1 %cmp117, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %if.end.116
  %100 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %101 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %InputColorant120 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %101, i32 0, i32 10
  %102 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %InputColorant120, align 8, !tbaa !49
  %103 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %102 to i8*
  %call121 = call i32 @cmsWriteTag(i8* %100, i32 1668051572, i8* %103) #5
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %if.then.119
  br label %Error

if.end.124:                                       ; preds = %if.then.119
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.116
  %104 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %104, i32 0, i32 11
  %105 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant, align 8, !tbaa !50
  %cmp126 = icmp ne %struct._cms_NAMEDCOLORLIST_struct* %105, null
  br i1 %cmp126, label %if.then.128, label %if.end.134

if.then.128:                                      ; preds = %if.end.125
  %106 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %107 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputColorant129 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %107, i32 0, i32 11
  %108 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant129, align 8, !tbaa !50
  %109 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %108 to i8*
  %call130 = call i32 @cmsWriteTag(i8* %106, i32 1668050804, i8* %109) #5
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %if.then.128
  br label %Error

if.end.133:                                       ; preds = %if.then.128
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.125
  %110 = load i32, i32* %deviceClass, align 4, !tbaa !23
  %cmp135 = icmp eq i32 %110, 1818848875
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.146

land.lhs.true.137:                                ; preds = %if.end.134
  %111 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Sequence = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %111, i32 0, i32 16
  %112 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Sequence, align 8, !tbaa !51
  %cmp138 = icmp ne %struct.cmsSEQ* %112, null
  br i1 %cmp138, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %land.lhs.true.137
  %113 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %114 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Sequence141 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %114, i32 0, i32 16
  %115 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Sequence141, align 8, !tbaa !51
  %call142 = call i32 @_cmsWriteProfileSequence(i8* %113, %struct.cmsSEQ* %115) #5
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end.145, label %if.then.144

if.then.144:                                      ; preds = %if.then.140
  br label %Error

if.end.145:                                       ; preds = %if.then.140
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %land.lhs.true.137, %if.end.134
  %116 = load i32, i32* %deviceClass, align 4, !tbaa !23
  %cmp147 = icmp eq i32 %116, 1935896178
  br i1 %cmp147, label %if.then.149, label %if.else.154

if.then.149:                                      ; preds = %if.end.146
  %117 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %118 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryWhitePoint = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %118, i32 0, i32 14
  %119 = bitcast %struct.cmsCIEXYZ* %EntryWhitePoint to i8*
  %call150 = call i32 @cmsWriteTag(i8* %117, i32 2004119668, i8* %119) #5
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %if.then.149
  br label %Error

if.end.153:                                       ; preds = %if.then.149
  br label %if.end.159

if.else.154:                                      ; preds = %if.end.146
  %120 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %121 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitWhitePoint = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %121, i32 0, i32 15
  %122 = bitcast %struct.cmsCIEXYZ* %ExitWhitePoint to i8*
  %call155 = call i32 @cmsWriteTag(i8* %120, i32 2004119668, i8* %122) #5
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %if.else.154
  br label %Error

if.end.158:                                       ; preds = %if.else.154
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.153
  %123 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %124 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %RenderingIntent160 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %124, i32 0, i32 19
  %125 = load i32, i32* %RenderingIntent160, align 4, !tbaa !46
  call void @cmsSetHeaderRenderingIntent(i8* %123, i32 %125) #5
  %126 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %126) #5
  %127 = load i8*, i8** %hProfile, align 8, !tbaa !1
  store i8* %127, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.157, %if.then.152, %if.then.144, %if.then.132, %if.then.123, %if.then.115, %if.then.111, %if.then.102, %if.then.93, %if.then.82, %if.then.33, %if.then.28, %if.then.18
  %128 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  %cmp161 = icmp ne %struct._cmsPipeline_struct* %128, null
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %Error
  %129 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %129) #5
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %Error
  %130 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call165 = call i32 @cmsCloseProfile(i8* %130) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.164, %if.end.159, %if.then.11, %if.then.5
  %131 = bitcast i32* %deviceClass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %DestinationTag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast %struct.cmsAllowedLUT** %AllowedLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast %struct._cmsPipeline_struct** %LUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %ColorSpaceBitsOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %ColorSpaceBitsIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %ChansOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %ChansIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %FrmOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %FrmIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = load i8*, i8** %retval
  ret i8* %145
}

declare %struct._cmsContext_struct* @cmsGetTransformContextID(i8*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct*) #2

declare i32 @cmsStageType(%struct._cmsStage_struct*) #2

; Function Attrs: nounwind uwtable
define internal i8* @CreateNamedColorDevicelink(i8* %xform) #0 {
entry:
  %retval = alloca i8*, align 8
  %xform.addr = alloca i8*, align 8
  %v = alloca %struct._cmstransform_struct*, align 8
  %hICC = alloca i8*, align 8
  %i = alloca i32, align 4
  %nColors = alloca i32, align 4
  %nc2 = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %Original = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %xform, i8** %xform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %xform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %3 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %hICC, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %7 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %Original to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %Original, align 8, !tbaa !1
  %8 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %8, i32 0, i32 20
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !52
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %9) #5
  store i8* %call, i8** %hICC, align 8, !tbaa !1
  %10 = load i8*, i8** %hICC, align 8, !tbaa !1
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %11, i32 1852662636) #5
  %12 = load i8*, i8** %hICC, align 8, !tbaa !1
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %ExitColorSpace = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 13
  %14 = load i32, i32* %ExitColorSpace, align 4, !tbaa !45
  call void @cmsSetColorSpace(i8* %12, i32 %14) #5
  %15 = load i8*, i8** %hICC, align 8, !tbaa !1
  call void @cmsSetPCS(i8* %15, i32 1281450528) #5
  %16 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call1 = call i32 @SetTextTags(i8* %16, i32* getelementptr inbounds ([23 x i32], [23 x i32]* @.str.21, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %Error

if.end.3:                                         ; preds = %if.end
  %17 = load i8*, i8** %xform.addr, align 8, !tbaa !1
  %call4 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8* %17) #5
  store %struct._cms_NAMEDCOLORLIST_struct* %call4, %struct._cms_NAMEDCOLORLIST_struct** %Original, align 8, !tbaa !1
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %Original, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %18, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %Error

if.end.7:                                         ; preds = %if.end.3
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %Original, align 8, !tbaa !1
  %call8 = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %19) #5
  store i32 %call8, i32* %nColors, align 4, !tbaa !21
  %20 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %Original, align 8, !tbaa !1
  %call9 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %20) #5
  store %struct._cms_NAMEDCOLORLIST_struct* %call9, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %21 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %21, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %Error

if.end.12:                                        ; preds = %if.end.7
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 8
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !41
  %call13 = call i32 @cmsPipelineOutputChannels(%struct._cmsPipeline_struct* %23) #5
  %24 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %24, i32 0, i32 2
  store i32 %call13, i32* %ColorantCount, align 4, !tbaa !53
  %25 = load i8*, i8** %xform.addr, align 8, !tbaa !1
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %ExitColorSpace14 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 13
  %27 = load i32, i32* %ExitColorSpace14, align 4, !tbaa !45
  %call15 = call i32 @_cmsLCMScolorSpace(i32 %27) #5
  %shl = shl i32 %call15, 16
  %or = or i32 0, %shl
  %or16 = or i32 %or, 2
  %28 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %ExitColorSpace17 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %28, i32 0, i32 13
  %29 = load i32, i32* %ExitColorSpace17, align 4, !tbaa !45
  %call18 = call i32 @cmsChannelsOf(i32 %29) #5
  %shl19 = shl i32 %call18, 3
  %or20 = or i32 %or16, %shl19
  %call21 = call i32 @cmsChangeBuffersFormat(i8* %25, i32 10, i32 %or20) #5
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %30 = load i32, i32* %i, align 4, !tbaa !21
  %31 = load i32, i32* %nColors, align 4, !tbaa !21
  %cmp22 = icmp slt i32 %30, %31
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i8*, i8** %xform.addr, align 8, !tbaa !1
  %33 = bitcast i32* %i to i8*
  %34 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %34 to i64
  %35 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %35, i32 0, i32 5
  %36 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %36, i64 %idxprom
  %DeviceColorant = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %DeviceColorant, i32 0, i32 0
  %37 = bitcast i16* %arraydecay to i8*
  call void @cmsDoTransform(i8* %32, i8* %33, i8* %37, i32 1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i8*, i8** %hICC, align 8, !tbaa !1
  %40 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  %41 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %40 to i8*
  %call23 = call i32 @cmsWriteTag(i8* %39, i32 1852009522, i8* %41) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end
  br label %Error

if.end.26:                                        ; preds = %for.end
  %42 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %nc2, align 8, !tbaa !1
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %42) #5
  %43 = load i8*, i8** %hICC, align 8, !tbaa !1
  store i8* %43, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.25, %if.then.11, %if.then.6, %if.then.2
  %44 = load i8*, i8** %hICC, align 8, !tbaa !1
  %cmp27 = icmp ne i8* %44, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %Error
  %45 = load i8*, i8** %hICC, align 8, !tbaa !1
  %call29 = call i32 @cmsCloseProfile(i8* %45) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %Error
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.end.26, %if.then
  %46 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %Original to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %nc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %nColors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i8** %hICC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = load i8*, i8** %retval
  ret i8* %52
}

declare %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct*) #2

declare %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4curves(%struct._cmsContext_struct*) #2

declare %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct*) #2

; Function Attrs: nounwind uwtable
define internal void @FixColorSpaces(i8* %hProfile, i32 %ColorSpace, i32 %PCS, i32 %dwFlags) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %ColorSpace.addr = alloca i32, align 4
  %PCS.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  store i32 %PCS, i32* %PCS.addr, align 4, !tbaa !23
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !21
  %0 = load i32, i32* %dwFlags.addr, align 4, !tbaa !21
  %and = and i32 %0, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %call = call i32 @IsPCS(i32 %1) #5
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  %call2 = call i32 @IsPCS(i32 %2) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %3, i32 1633842036) #5
  %4 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %5 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %4, i32 %5) #5
  %6 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %7 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %6, i32 %7) #5
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %call5 = call i32 @IsPCS(i32 %8) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.11

land.lhs.true.7:                                  ; preds = %if.end
  %9 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  %call8 = call i32 @IsPCS(i32 %9) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.7
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %10, i32 1886549106) #5
  %11 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %12 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %11, i32 %12) #5
  %13 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %14 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %13, i32 %14) #5
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.7, %if.end
  %15 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  %call12 = call i32 @IsPCS(i32 %15) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %if.end.11
  %16 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %call15 = call i32 @IsPCS(i32 %16) #5
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.14
  %17 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %17, i32 1935896178) #5
  %18 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %19 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %18, i32 %19) #5
  %20 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %21 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %20, i32 %21) #5
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.14, %if.end.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %22 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  call void @cmsSetDeviceClass(i8* %22, i32 1818848875) #5
  %23 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %24 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  call void @cmsSetColorSpace(i8* %23, i32 %24) #5
  %25 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %26 = load i32, i32* %PCS.addr, align 4, !tbaa !23
  call void @cmsSetPCS(i8* %25, i32 %26) #5
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.10, %if.then.4
  ret void
}

declare i32 @_cmsLCMScolorSpace(i32) #2

declare i32 @cmsGetDeviceClass(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.cmsAllowedLUT* @FindCombination(%struct._cmsPipeline_struct* %Lut, i32 %IsV4, i32 %DestinationTag) #0 {
entry:
  %retval = alloca %struct.cmsAllowedLUT*, align 8
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %IsV4.addr = alloca i32, align 4
  %DestinationTag.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %Tab = alloca %struct.cmsAllowedLUT*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store i32 %IsV4, i32* %IsV4.addr, align 4, !tbaa !21
  store i32 %DestinationTag, i32* %DestinationTag.addr, align 4, !tbaa !23
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %n, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %n, align 4, !tbaa !21
  %conv = zext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast %struct.cmsAllowedLUT** %Tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %n, align 4, !tbaa !21
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* getelementptr inbounds ([11 x %struct.cmsAllowedLUT], [11 x %struct.cmsAllowedLUT]* @AllowedLUTTypes, i32 0, i32 0), i64 %idx.ext
  store %struct.cmsAllowedLUT* %add.ptr, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  %4 = load i32, i32* %IsV4.addr, align 4, !tbaa !21
  %5 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  %IsV42 = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %5, i32 0, i32 0
  %6 = load i32, i32* %IsV42, align 4, !tbaa !56
  %xor = xor i32 %4, %6
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  %RequiredTag = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %7, i32 0, i32 1
  %8 = load i32, i32* %RequiredTag, align 4, !tbaa !58
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  %RequiredTag5 = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %9, i32 0, i32 1
  %10 = load i32, i32* %RequiredTag5, align 4, !tbaa !58
  %11 = load i32, i32* %DestinationTag.addr, align 4, !tbaa !23
  %cmp6 = icmp ne i32 %10, %11
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %land.lhs.true, %if.end
  %12 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call = call i32 @CheckOne(%struct.cmsAllowedLUT* %12, %struct._cmsPipeline_struct* %13) #5
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %14 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab, align 8, !tbaa !1
  store %struct.cmsAllowedLUT* %14, %struct.cmsAllowedLUT** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then
  %15 = bitcast %struct.cmsAllowedLUT** %Tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.13 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %16 = load i32, i32* %n, align 4, !tbaa !21
  %inc = add i32 %16, 1
  store i32 %inc, i32* %n, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.cmsAllowedLUT* null, %struct.cmsAllowedLUT** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %for.end, %cleanup
  %17 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %retval
  ret %struct.cmsAllowedLUT* %18
}

declare i32 @_cmsOptimizePipeline(%struct._cmsContext_struct*, %struct._cmsPipeline_struct**, i32, i32*, i32*, i32*) #2

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct*) #2

declare i32 @cmsPipelineSetSaveAs8bitsFlag(%struct._cmsPipeline_struct*, i32) #2

declare i32 @_cmsWriteProfileSequence(i8*, %struct.cmsSEQ*) #2

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #2

declare %struct._cms_MLU_struct* @cmsMLUalloc(%struct._cmsContext_struct*, i32) #2

declare i32 @cmsMLUsetWide(%struct._cms_MLU_struct*, i8*, i8*, i32*) #2

declare void @cmsMLUfree(%struct._cms_MLU_struct*) #2

declare %struct.cmsSEQ* @cmsAllocProfileSequenceDescription(%struct._cmsContext_struct*, i32) #2

declare i32 @cmsMLUsetASCII(%struct._cms_MLU_struct*, i8*, i8*, i8*) #2

declare void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #4 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !10
  %0 = load double, double* %d.addr, align 8, !tbaa !10
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !10
  %1 = load double, double* %d.addr, align 8, !tbaa !10
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !10
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !10
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #5
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #4 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !10
  %0 = load double, double* %d.addr, align 8, !tbaa !10
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #5
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #4 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !10
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !10
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !10
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !10
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !21
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

declare %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct*, i32, double*) #2

declare void @cmsLabEncoded2Float(%struct.cmsCIELab*, i16*) #2

declare void @cmsLab2LCh(%struct.cmsCIELCh*, %struct.cmsCIELab*) #2

declare void @cmsLCh2Lab(%struct.cmsCIELab*, %struct.cmsCIELCh*) #2

declare void @cmsLab2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*, %struct.cmsCIELab*) #2

declare void @cmsXYZ2Lab(%struct.cmsCIEXYZ*, %struct.cmsCIELab*, %struct.cmsCIEXYZ*) #2

declare void @cmsFloat2LabEncoded(i16*, %struct.cmsCIELab*) #2

declare %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8*) #2

declare i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct*) #2

declare %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct*) #2

declare i32 @cmsPipelineOutputChannels(%struct._cmsPipeline_struct*) #2

declare i32 @cmsChangeBuffersFormat(i8*, i32, i32) #2

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #2

declare void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @IsPCS(i32 %ColorSpace) #0 {
entry:
  %ColorSpace.addr = alloca i32, align 4
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !23
  %0 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %0, 1482250784
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %1, 1281450528
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @CheckOne(%struct.cmsAllowedLUT* %Tab, %struct._cmsPipeline_struct* %Lut) #0 {
entry:
  %retval = alloca i32, align 4
  %Tab.addr = alloca %struct.cmsAllowedLUT*, align 8
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsAllowedLUT* %Tab, %struct.cmsAllowedLUT** %Tab.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %n, align 4, !tbaa !21
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 0
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !59
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n, align 4, !tbaa !21
  %6 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab.addr, align 8, !tbaa !1
  %nTypes = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %6, i32 0, i32 3
  %7 = load i32, i32* %nTypes, align 4, !tbaa !61
  %cmp1 = icmp sgt i32 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call = call i32 @cmsStageType(%struct._cmsStage_struct* %8) #5
  %9 = load i32, i32* %n, align 4, !tbaa !21
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab.addr, align 8, !tbaa !1
  %MpeTypes = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %10, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %MpeTypes, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !23
  %cmp2 = icmp ne i32 %call, %11
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %12, i32 0, i32 9
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !62
  store %struct._cmsStage_struct* %13, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %14 = load i32, i32* %n, align 4, !tbaa !21
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %n, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %n, align 4, !tbaa !21
  %16 = load %struct.cmsAllowedLUT*, %struct.cmsAllowedLUT** %Tab.addr, align 8, !tbaa !1
  %nTypes5 = getelementptr inbounds %struct.cmsAllowedLUT, %struct.cmsAllowedLUT* %16, i32 0, i32 3
  %17 = load i32, i32* %nTypes5, align 4, !tbaa !61
  %cmp6 = icmp eq i32 %15, %17
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.3, %if.then
  %18 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"double", !3, i64 0}
!8 = !{!6, !7, i64 8}
!9 = !{!6, !7, i64 16}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 24, !6, i64 48}
!13 = !{!12, !7, i64 8}
!14 = !{!12, !7, i64 16}
!15 = !{!12, !7, i64 24}
!16 = !{!12, !7, i64 32}
!17 = !{!12, !7, i64 40}
!18 = !{!12, !7, i64 48}
!19 = !{!12, !7, i64 56}
!20 = !{!12, !7, i64 64}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !3, i64 0}
!23 = !{!3, !3, i64 0}
!24 = !{!25, !2, i64 16}
!25 = !{!"", !22, i64 0, !2, i64 8, !2, i64 16}
!26 = !{!27, !22, i64 0}
!27 = !{!"", !22, i64 0, !22, i64 4, !28, i64 8, !3, i64 16, !3, i64 20, !2, i64 40, !2, i64 48, !2, i64 56}
!28 = !{!"long", !3, i64 0}
!29 = !{!27, !22, i64 4}
!30 = !{!27, !28, i64 8}
!31 = !{!27, !3, i64 16}
!32 = !{!27, !2, i64 40}
!33 = !{!27, !2, i64 48}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !3, i64 0}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !6, i64 32, !6, i64 56}
!38 = !{!37, !7, i64 8}
!39 = !{!37, !7, i64 16}
!40 = !{!37, !7, i64 24}
!41 = !{!42, !2, i64 112}
!42 = !{!"_cmstransform_struct", !22, i64 0, !22, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !43, i64 48, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !3, i64 144, !3, i64 148, !6, i64 152, !6, i64 176, !2, i64 200, !22, i64 208, !7, i64 216, !22, i64 224, !2, i64 232, !2, i64 240, !2, i64 248}
!43 = !{!"", !3, i64 0, !3, i64 32}
!44 = !{!42, !3, i64 144}
!45 = !{!42, !3, i64 148}
!46 = !{!42, !22, i64 224}
!47 = !{!48, !3, i64 8}
!48 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !22, i64 16, !22, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!49 = !{!42, !2, i64 128}
!50 = !{!42, !2, i64 136}
!51 = !{!42, !2, i64 200}
!52 = !{!42, !2, i64 232}
!53 = !{!54, !22, i64 8}
!54 = !{!"_cms_NAMEDCOLORLIST_struct", !22, i64 0, !22, i64 4, !22, i64 8, !3, i64 12, !3, i64 45, !2, i64 80, !2, i64 88}
!55 = !{!54, !2, i64 80}
!56 = !{!57, !22, i64 0}
!57 = !{!"", !22, i64 0, !3, i64 4, !3, i64 8, !22, i64 12, !3, i64 16}
!58 = !{!57, !3, i64 4}
!59 = !{!60, !2, i64 0}
!60 = !{!"_cmsPipeline_struct", !2, i64 0, !22, i64 8, !22, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !22, i64 64}
!61 = !{!57, !22, i64 12}
!62 = !{!48, !2, i64 56}
