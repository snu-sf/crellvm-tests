; ModuleID = './cmslut.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct._cmsStageToneCurvesData = type { i32, %struct._cms_curve_struct** }
%struct._cmsStageMatrixData = type { double*, double* }
%struct._cmsStageCLutData = type { %union.anon, %struct._cms_interp_struc*, i32, i32 }
%union.anon = type { i16* }
%struct.cmsCIELab = type { double, double, double }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsVEC3 = type { [3 x double] }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%union.anon.0 = type { double }

@.str = private unnamed_addr constant [27 x i8] c"(clutPoints != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmslut.c\00", align 1
@__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular = private unnamed_addr constant [137 x i8] c"cmsStage *cmsStageAllocCLut16bitGranular(cmsContext, const cmsUInt32Number *, cmsUInt32Number, cmsUInt32Number, const cmsUInt16Number *)\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Too many input channels (%d channels, max=%d)\00", align 1
@__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular = private unnamed_addr constant [138 x i8] c"cmsStage *cmsStageAllocCLutFloatGranular(cmsContext, const cmsUInt32Number *, cmsUInt32Number, cmsUInt32Number, const cmsFloat32Number *)\00", align 1
@_cmsStageAllocLabV2ToV4.V2ToV4 = internal constant [9 x double] [double 0x3FF0100000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FF0100000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FF0100000000000], align 16
@_cmsStageAllocLabV4ToV2.V4ToV2 = internal constant [9 x double] [double 0x3FEFE01FE01FE020, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FEFE01FE01FE020, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FEFE01FE01FE020], align 16
@_cmsStageNormalizeFromLabFloat.a1 = internal constant [9 x double] [double 1.000000e-02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3F70101010101010, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3F70101010101010], align 16
@_cmsStageNormalizeFromLabFloat.o1 = internal constant [3 x double] [double 0.000000e+00, double 0x3FE0101010101010, double 0x3FE0101010101010], align 16
@_cmsStageNormalizeFromXyzFloat.a1 = internal constant [9 x double] [double 0x3FE0001000100010, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FE0001000100010, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FE0001000100010], align 16
@_cmsStageNormalizeToLabFloat.a1 = internal constant [9 x double] [double 1.000000e+02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.550000e+02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.550000e+02], align 16
@_cmsStageNormalizeToLabFloat.o1 = internal constant [3 x double] [double 0.000000e+00, double -1.280000e+02, double -1.280000e+02], align 16
@_cmsStageNormalizeToXyzFloat.a1 = internal constant [9 x double] [double 0x3FFFFFE000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FFFFFE000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x3FFFFFE000000000], align 16
@_cmsStageAllocLabPrelin.Params = private unnamed_addr constant [1 x double] [double 2.400000e+00], align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"(lut != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsGetPipelineContextID = private unnamed_addr constant [56 x i8] c"cmsContext cmsGetPipelineContextID(const cmsPipeline *)\00", align 1
@__PRETTY_FUNCTION__.cmsPipelineInputChannels = private unnamed_addr constant [62 x i8] c"cmsUInt32Number cmsPipelineInputChannels(const cmsPipeline *)\00", align 1
@__PRETTY_FUNCTION__.cmsPipelineOutputChannels = private unnamed_addr constant [63 x i8] c"cmsUInt32Number cmsPipelineOutputChannels(const cmsPipeline *)\00", align 1
@__PRETTY_FUNCTION__.cmsPipelineEval16 = private unnamed_addr constant [88 x i8] c"void cmsPipelineEval16(const cmsUInt16Number *, cmsUInt16Number *, const cmsPipeline *)\00", align 1
@__PRETTY_FUNCTION__.cmsPipelineEvalFloat = private unnamed_addr constant [93 x i8] c"void cmsPipelineEvalFloat(const cmsFloat32Number *, cmsFloat32Number *, const cmsPipeline *)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"(mpe != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.EvaluateCurves = private unnamed_addr constant [84 x i8] c"void EvaluateCurves(const cmsFloat32Number *, cmsFloat32Number *, const cmsStage *)\00", align 1
@__PRETTY_FUNCTION__.CurveSetElemTypeFree = private unnamed_addr constant [38 x i8] c"void CurveSetElemTypeFree(cmsStage *)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"(mpe ->InputChannels <= 128)\00", align 1
@__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16 = private unnamed_addr constant [91 x i8] c"void EvaluateCLUTfloatIn16(const cmsFloat32Number *, cmsFloat32Number *, const cmsStage *)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"(mpe ->OutputChannels <= 128)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"(Dims != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.CubeSize = private unnamed_addr constant [67 x i8] c"cmsUInt32Number CubeSize(const cmsUInt32Number *, cmsUInt32Number)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %ContextID, i32 %Type, i32 %InputChannels, i32 %OutputChannels, void (float*, float*, %struct._cmsStage_struct*)* %EvalPtr, i8* (%struct._cmsStage_struct*)* %DupElemPtr, void (%struct._cmsStage_struct*)* %FreePtr, i8* %Data) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Type.addr = alloca i32, align 4
  %InputChannels.addr = alloca i32, align 4
  %OutputChannels.addr = alloca i32, align 4
  %EvalPtr.addr = alloca void (float*, float*, %struct._cmsStage_struct*)*, align 8
  %DupElemPtr.addr = alloca i8* (%struct._cmsStage_struct*)*, align 8
  %FreePtr.addr = alloca void (%struct._cmsStage_struct*)*, align 8
  %Data.addr = alloca i8*, align 8
  %ph = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !5
  store i32 %InputChannels, i32* %InputChannels.addr, align 4, !tbaa !6
  store i32 %OutputChannels, i32* %OutputChannels.addr, align 4, !tbaa !6
  store void (float*, float*, %struct._cmsStage_struct*)* %EvalPtr, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr.addr, align 8, !tbaa !1
  store i8* (%struct._cmsStage_struct*)* %DupElemPtr, i8* (%struct._cmsStage_struct*)** %DupElemPtr.addr, align 8, !tbaa !1
  store void (%struct._cmsStage_struct*)* %FreePtr, void (%struct._cmsStage_struct*)** %FreePtr.addr, align 8, !tbaa !1
  store i8* %Data, i8** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %ph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 64) #6
  %2 = bitcast i8* %call to %struct._cmsStage_struct*
  store %struct._cmsStage_struct* %2, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %5, i32 0, i32 0
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !8
  %6 = load i32, i32* %Type.addr, align 4, !tbaa !5
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %Type2 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 1
  store i32 %6, i32* %Type2, align 4, !tbaa !10
  %8 = load i32, i32* %Type.addr, align 4, !tbaa !5
  %9 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %9, i32 0, i32 2
  store i32 %8, i32* %Implements, align 4, !tbaa !11
  %10 = load i32, i32* %InputChannels.addr, align 4, !tbaa !6
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %InputChannels3 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %11, i32 0, i32 3
  store i32 %10, i32* %InputChannels3, align 4, !tbaa !12
  %12 = load i32, i32* %OutputChannels.addr, align 4, !tbaa !6
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %OutputChannels4 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %13, i32 0, i32 4
  store i32 %12, i32* %OutputChannels4, align 4, !tbaa !13
  %14 = load void (float*, float*, %struct._cmsStage_struct*)*, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr.addr, align 8, !tbaa !1
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %EvalPtr5 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %15, i32 0, i32 5
  store void (float*, float*, %struct._cmsStage_struct*)* %14, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr5, align 8, !tbaa !14
  %16 = load i8* (%struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)** %DupElemPtr.addr, align 8, !tbaa !1
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %DupElemPtr6 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 6
  store i8* (%struct._cmsStage_struct*)* %16, i8* (%struct._cmsStage_struct*)** %DupElemPtr6, align 8, !tbaa !15
  %18 = load void (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)** %FreePtr.addr, align 8, !tbaa !1
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %FreePtr7 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 7
  store void (%struct._cmsStage_struct*)* %18, void (%struct._cmsStage_struct*)** %FreePtr7, align 8, !tbaa !16
  %20 = load i8*, i8** %Data.addr, align 8, !tbaa !1
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  %Data8 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %21, i32 0, i32 8
  store i8* %20, i8** %Data8, align 8, !tbaa !17
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ph, align 8, !tbaa !1
  store %struct._cmsStage_struct* %22, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast %struct._cmsStage_struct** %ph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocIdentity(%struct._cmsContext_struct* %ContextID, i32 %nChannels) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nChannels.addr = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nChannels, i32* %nChannels.addr, align 4, !tbaa !6
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %2 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %0, i32 1768189472, i32 %1, i32 %2, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateIdentity, i8* (%struct._cmsStage_struct*)* null, void (%struct._cmsStage_struct*)* null, i8* null) #6
  ret %struct._cmsStage_struct* %call
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateIdentity(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load float*, float** %Out.addr, align 8, !tbaa !1
  %1 = bitcast float* %0 to i8*
  %2 = load float*, float** %In.addr, align 8, !tbaa !1
  %3 = bitcast float* %2 to i8*
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 3
  %5 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %conv = zext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memmove(i8* %1, i8* %3, i64 %mul) #7
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %Lut, i32 %n, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %n.addr = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %Type = alloca i32, align 4
  %ElemPtr = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !6
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8*** %ElemPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call = call i32 @cmsPipelineStageCount(%struct._cmsPipeline_struct* %5) #6
  %6 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp = icmp ne i32 %call, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %7 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %7, i32 0, i32 0
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %8, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %10 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp2 = icmp ult i32 %9, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %11
  %12 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %13 = bitcast i8* %12 to i32*
  %14 = add i32 %gp_offset, 8
  store i32 %14, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %15 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %13, %vaarg.in_reg ], [ %15, %vaarg.in_mem ]
  %16 = load i32, i32* %vaarg.addr
  store i32 %16, i32* %Type, align 4, !tbaa !5
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Type4 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %Type4, align 4, !tbaa !10
  %19 = load i32, i32* %Type, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %18, %19
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %vaarg.end
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay78 = bitcast %struct.__va_list_tag* %arraydecay7 to i8*
  call void @llvm.va_end(i8* %arraydecay78)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %vaarg.end
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %20, i32 0, i32 9
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %21, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Elements10 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %23, i32 0, i32 0
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements10, align 8, !tbaa !18
  store %struct._cmsStage_struct* %24, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.30, %for.end
  %25 = load i32, i32* %i, align 4, !tbaa !6
  %26 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp12 = icmp ult i32 %25, %26
  br i1 %cmp12, label %for.body.13, label %for.end.32

for.body.13:                                      ; preds = %for.cond.11
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 0
  %gp_offset16 = load i32, i32* %gp_offset_p15
  %fits_in_gp17 = icmp ule i32 %gp_offset16, 40
  br i1 %fits_in_gp17, label %vaarg.in_reg.18, label %vaarg.in_mem.20

vaarg.in_reg.18:                                  ; preds = %for.body.13
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 3
  %reg_save_area19 = load i8*, i8** %27
  %28 = getelementptr i8, i8* %reg_save_area19, i32 %gp_offset16
  %29 = bitcast i8* %28 to i8***
  %30 = add i32 %gp_offset16, 8
  store i32 %30, i32* %gp_offset_p15
  br label %vaarg.end.24

vaarg.in_mem.20:                                  ; preds = %for.body.13
  %overflow_arg_area_p21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay14, i32 0, i32 2
  %overflow_arg_area22 = load i8*, i8** %overflow_arg_area_p21
  %31 = bitcast i8* %overflow_arg_area22 to i8***
  %overflow_arg_area.next23 = getelementptr i8, i8* %overflow_arg_area22, i32 8
  store i8* %overflow_arg_area.next23, i8** %overflow_arg_area_p21
  br label %vaarg.end.24

vaarg.end.24:                                     ; preds = %vaarg.in_mem.20, %vaarg.in_reg.18
  %vaarg.addr25 = phi i8*** [ %29, %vaarg.in_reg.18 ], [ %31, %vaarg.in_mem.20 ]
  %32 = load i8**, i8*** %vaarg.addr25
  store i8** %32, i8*** %ElemPtr, align 8, !tbaa !1
  %33 = load i8**, i8*** %ElemPtr, align 8, !tbaa !1
  %cmp26 = icmp ne i8** %33, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %vaarg.end.24
  %34 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %35 = bitcast %struct._cmsStage_struct* %34 to i8*
  %36 = load i8**, i8*** %ElemPtr, align 8, !tbaa !1
  store i8* %35, i8** %36, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %vaarg.end.24
  %37 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next29 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %37, i32 0, i32 9
  %38 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next29, align 8, !tbaa !20
  store %struct._cmsStage_struct* %38, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.28
  %39 = load i32, i32* %i, align 4, !tbaa !6
  %inc31 = add i32 %39, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !6
  br label %for.cond.11

for.end.32:                                       ; preds = %for.cond.11
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay3334 = bitcast %struct.__va_list_tag* %arraydecay33 to i8*
  call void @llvm.va_end(i8* %arraydecay3334)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.32, %if.then.6, %if.then
  %40 = bitcast i8*** %ElemPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineStageCount(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %n = alloca i32, align 4
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %n, align 4, !tbaa !6
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 0
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n, align 4, !tbaa !6
  %inc = add i32 %5, 1
  store i32 %inc, i32* %n, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 9
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %7, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n, align 4, !tbaa !6
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageToneCurvesData*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %3, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %4 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %4, i32 0, i32 1
  %5 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !21
  %6 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret %struct._cms_curve_struct** %5
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %ContextID, i32 %nChannels, %struct._cms_curve_struct** %Curves) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nChannels.addr = alloca i32, align 4
  %Curves.addr = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %NewElem = alloca %struct._cmsStageToneCurvesData*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nChannels, i32* %nChannels.addr, align 4, !tbaa !6
  store %struct._cms_curve_struct** %Curves, %struct._cms_curve_struct*** %Curves.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsStageToneCurvesData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %4 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %5 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %3, i32 1668707188, i32 %4, i32 %5, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateCurves, i8* (%struct._cmsStage_struct*)* @CurveSetDup, void (%struct._cmsStage_struct*)* @CurveSetElemTypeFree, i8* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %7, i32 16) #6
  %8 = bitcast i8* %call1 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %8, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %9 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStageToneCurvesData* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %10) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %12 = bitcast %struct._cmsStageToneCurvesData* %11 to i8*
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %13, i32 0, i32 8
  store i8* %12, i8** %Data, align 8, !tbaa !17
  %14 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %15 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %15, i32 0, i32 0
  store i32 %14, i32* %nCurves, align 4, !tbaa !23
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %17 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %call5 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %16, i32 %17, i32 8) #6
  %18 = bitcast i8* %call5 to %struct._cms_curve_struct**
  %19 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %19, i32 0, i32 1
  store %struct._cms_curve_struct** %18, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !21
  %20 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves6 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %20, i32 0, i32 1
  %21 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves6, align 8, !tbaa !21
  %cmp7 = icmp eq %struct._cms_curve_struct** %21, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %22) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %24 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %cmp10 = icmp ult i32 %23, %24
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves.addr, align 8, !tbaa !1
  %cmp11 = icmp eq %struct._cms_curve_struct** %25, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.body
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call13 = call %struct._cms_curve_struct* @cmsBuildGamma(%struct._cmsContext_struct* %26, double 1.000000e+00) #6
  %27 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %27 to i64
  %28 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves14 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %28, i32 0, i32 1
  %29 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves14, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %29, i64 %idxprom
  store %struct._cms_curve_struct* %call13, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  br label %if.end.21

if.else:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom15 = zext i32 %30 to i64
  %31 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %31, i64 %idxprom15
  %32 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx16, align 8, !tbaa !1
  %call17 = call %struct._cms_curve_struct* @cmsDupToneCurve(%struct._cms_curve_struct* %32) #6
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom18 = zext i32 %33 to i64
  %34 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves19 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %34, i32 0, i32 1
  %35 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves19, align 8, !tbaa !21
  %arrayidx20 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %35, i64 %idxprom18
  store %struct._cms_curve_struct* %call17, %struct._cms_curve_struct** %arrayidx20, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.12
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom22 = zext i32 %36 to i64
  %37 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves23 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %37, i32 0, i32 1
  %38 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves23, align 8, !tbaa !21
  %arrayidx24 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %38, i64 %idxprom22
  %39 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx24, align 8, !tbaa !1
  %cmp25 = icmp eq %struct._cms_curve_struct* %39, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %40 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %40) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %41 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %42, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.26, %if.then.8, %if.then.3, %if.then
  %43 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct._cmsStageToneCurvesData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %46
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateCurves(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageToneCurvesData*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 174, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.EvaluateCurves, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 8
  %5 = load i8*, i8** %Data1, align 8, !tbaa !17
  %6 = bitcast i8* %5 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %6, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %7 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStageToneCurvesData* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %8 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %8, i32 0, i32 1
  %9 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !21
  %cmp3 = icmp eq %struct._cms_curve_struct** %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %11 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %11, i32 0, i32 0
  %12 = load i32, i32* %nCurves, align 4, !tbaa !23
  %cmp6 = icmp ult i32 %10, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %13 to i64
  %14 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves7 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %14, i32 0, i32 1
  %15 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves7, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %15, i64 %idxprom
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom8 = zext i32 %17 to i64
  %18 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %18, i64 %idxprom8
  %19 = load float, float* %arrayidx9, align 4, !tbaa !24
  %call = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %16, float %19) #6
  %20 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom10 = zext i32 %20 to i64
  %21 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %21, i64 %idxprom10
  store float %call, float* %arrayidx11, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4, %if.then
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
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

; Function Attrs: nounwind uwtable
define internal i8* @CurveSetDup(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca i8*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageToneCurvesData*, align 8
  %NewElem = alloca %struct._cmsStageToneCurvesData*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %3, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %4 = bitcast %struct._cmsStageToneCurvesData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 0
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %7, i32 16) #6
  %8 = bitcast i8* %call to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %8, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %9 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStageToneCurvesData* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %10, i32 0, i32 0
  %11 = load i32, i32* %nCurves, align 4, !tbaa !23
  %12 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %nCurves2 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %12, i32 0, i32 0
  store i32 %11, i32* %nCurves2, align 4, !tbaa !23
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID3 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %13, i32 0, i32 0
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID3, align 8, !tbaa !8
  %15 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %nCurves4 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %15, i32 0, i32 0
  %16 = load i32, i32* %nCurves4, align 4, !tbaa !23
  %call5 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %14, i32 %16, i32 8) #6
  %17 = bitcast i8* %call5 to %struct._cms_curve_struct**
  %18 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %18, i32 0, i32 1
  store %struct._cms_curve_struct** %17, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !21
  %19 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves6 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %19, i32 0, i32 1
  %20 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves6, align 8, !tbaa !21
  %cmp7 = icmp eq %struct._cms_curve_struct** %20, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %Error

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %22 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %nCurves10 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %22, i32 0, i32 0
  %23 = load i32, i32* %nCurves10, align 4, !tbaa !23
  %cmp11 = icmp ult i32 %21, %23
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %24 to i64
  %25 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves12 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %25, i32 0, i32 1
  %26 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves12, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %26, i64 %idxprom
  %27 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %call13 = call %struct._cms_curve_struct* @cmsDupToneCurve(%struct._cms_curve_struct* %27) #6
  %28 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom14 = zext i32 %28 to i64
  %29 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves15 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %29, i32 0, i32 1
  %30 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves15, align 8, !tbaa !21
  %arrayidx16 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %30, i64 %idxprom14
  store %struct._cms_curve_struct* %call13, %struct._cms_curve_struct** %arrayidx16, align 8, !tbaa !1
  %31 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom17 = zext i32 %31 to i64
  %32 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves18 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %32, i32 0, i32 1
  %33 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves18, align 8, !tbaa !21
  %arrayidx19 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %33, i64 %idxprom17
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx19, align 8, !tbaa !1
  %cmp20 = icmp eq %struct._cms_curve_struct* %34, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  br label %Error

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %37 = bitcast %struct._cmsStageToneCurvesData* %36 to i8*
  store i8* %37, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.21, %if.then.8
  %38 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves23 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %38, i32 0, i32 1
  %39 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves23, align 8, !tbaa !21
  %cmp24 = icmp ne %struct._cms_curve_struct** %39, null
  br i1 %cmp24, label %if.then.25, label %if.end.41

if.then.25:                                       ; preds = %Error
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.38, %if.then.25
  %40 = load i32, i32* %i, align 4, !tbaa !6
  %41 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %nCurves27 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %41, i32 0, i32 0
  %42 = load i32, i32* %nCurves27, align 4, !tbaa !23
  %cmp28 = icmp ult i32 %40, %42
  br i1 %cmp28, label %for.body.29, label %for.end.40

for.body.29:                                      ; preds = %for.cond.26
  %43 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom30 = zext i32 %43 to i64
  %44 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves31 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %44, i32 0, i32 1
  %45 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves31, align 8, !tbaa !21
  %arrayidx32 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %45, i64 %idxprom30
  %46 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx32, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_curve_struct* %46, null
  br i1 %tobool, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %for.body.29
  %47 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom34 = zext i32 %47 to i64
  %48 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves35 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %48, i32 0, i32 1
  %49 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves35, align 8, !tbaa !21
  %arrayidx36 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %49, i64 %idxprom34
  %50 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx36, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %50) #6
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %for.body.29
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %51 = load i32, i32* %i, align 4, !tbaa !6
  %inc39 = add i32 %51, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !6
  br label %for.cond.26

for.end.40:                                       ; preds = %for.cond.26
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %Error
  %52 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID42 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %52, i32 0, i32 0
  %53 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID42, align 8, !tbaa !8
  %54 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %TheCurves43 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %54, i32 0, i32 1
  %55 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves43, align 8, !tbaa !21
  %56 = bitcast %struct._cms_curve_struct** %55 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %53, i8* %56) #6
  %57 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID44 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %57, i32 0, i32 0
  %58 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID44, align 8, !tbaa !8
  %59 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %NewElem, align 8, !tbaa !1
  %60 = bitcast %struct._cmsStageToneCurvesData* %59 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %58, i8* %60) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %for.end, %if.then
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct._cmsStageToneCurvesData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i8*, i8** %retval
  ret i8* %64
}

; Function Attrs: nounwind uwtable
define internal void @CurveSetElemTypeFree(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageToneCurvesData*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.CurveSetElemTypeFree, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 8
  %5 = load i8*, i8** %Data1, align 8, !tbaa !17
  %6 = bitcast i8* %5 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %6, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %7 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStageToneCurvesData* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %8 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %8, i32 0, i32 1
  %9 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !21
  %cmp3 = icmp ne %struct._cms_curve_struct** %9, null
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %11 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %11, i32 0, i32 0
  %12 = load i32, i32* %nCurves, align 4, !tbaa !23
  %cmp5 = icmp ult i32 %10, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %13 to i64
  %14 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves6 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %14, i32 0, i32 1
  %15 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves6, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %15, i64 %idxprom
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %cmp7 = icmp ne %struct._cms_curve_struct* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom9 = zext i32 %17 to i64
  %18 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves10 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %18, i32 0, i32 1
  %19 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves10, align 8, !tbaa !21
  %arrayidx11 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %19, i64 %idxprom9
  %20 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx11, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %20) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.end
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %22, i32 0, i32 0
  %23 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %24 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves14 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %24, i32 0, i32 1
  %25 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves14, align 8, !tbaa !21
  %26 = bitcast %struct._cms_curve_struct** %25 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %23, i8* %26) #6
  %27 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %27, i32 0, i32 0
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !8
  %29 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %30 = bitcast %struct._cmsStageToneCurvesData* %29 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %28, i8* %30) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
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

; Function Attrs: nounwind uwtable
define void @cmsStageFree(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %FreePtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 7
  %1 = load void (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)** %FreePtr, align 8, !tbaa !16
  %tobool = icmp ne void (%struct._cmsStage_struct*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %FreePtr1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %2, i32 0, i32 7
  %3 = load void (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)** %FreePtr1, align 8, !tbaa !16
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  call void %3(%struct._cmsStage_struct* %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %5, i32 0, i32 0
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %8 = bitcast %struct._cmsStage_struct* %7 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %6, i8* %8) #6
  ret void
}

declare i8* @_cmsCalloc(%struct._cmsContext_struct*, i32, i32) #2

declare %struct._cms_curve_struct* @cmsBuildGamma(%struct._cmsContext_struct*, double) #2

declare %struct._cms_curve_struct* @cmsDupToneCurve(%struct._cms_curve_struct*) #2

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocIdentityCurves(%struct._cmsContext_struct* %ContextID, i32 %nChannels) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nChannels.addr = alloca i32, align 4
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nChannels, i32* %nChannels.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %2 = load i32, i32* %nChannels.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %1, i32 %2, %struct._cms_curve_struct** null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 1768189472, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %ContextID, i32 %Rows, i32 %Cols, double* %Matrix, double* %Offset) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Rows.addr = alloca i32, align 4
  %Cols.addr = alloca i32, align 4
  %Matrix.addr = alloca double*, align 8
  %Offset.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %NewElem = alloca %struct._cmsStageMatrixData*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Rows, i32* %Rows.addr, align 4, !tbaa !6
  store i32 %Cols, i32* %Cols.addr, align 4, !tbaa !6
  store double* %Matrix, double** %Matrix.addr, align 8, !tbaa !1
  store double* %Offset, double** %Offset.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._cmsStageMatrixData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %Rows.addr, align 4, !tbaa !6
  %5 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %mul = mul i32 %4, %5
  store i32 %mul, i32* %n, align 4, !tbaa !6
  %6 = load i32, i32* %n, align 4, !tbaa !6
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %n, align 4, !tbaa !6
  %8 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %div = udiv i32 -1, %8
  %cmp1 = icmp uge i32 %7, %div
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %9 = load i32, i32* %n, align 4, !tbaa !6
  %10 = load i32, i32* %Rows.addr, align 4, !tbaa !6
  %div4 = udiv i32 -1, %10
  %cmp5 = icmp uge i32 %9, %div4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %11 = load i32, i32* %n, align 4, !tbaa !6
  %12 = load i32, i32* %Rows.addr, align 4, !tbaa !6
  %cmp8 = icmp ult i32 %11, %12
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load i32, i32* %n, align 4, !tbaa !6
  %14 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %cmp9 = icmp ult i32 %13, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %lor.lhs.false
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %16 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %17 = load i32, i32* %Rows.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %15, i32 1835103334, i32 %16, i32 %17, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateMatrix, i8* (%struct._cmsStage_struct*)* @MatrixElemDup, void (%struct._cmsStage_struct*)* @MatrixElemTypeFree, i8* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %18 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp12 = icmp eq %struct._cmsStage_struct* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.11
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call15 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %19, i32 16) #6
  %20 = bitcast i8* %call15 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %20, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %21 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %cmp16 = icmp eq %struct._cmsStageMatrixData* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %23 = load i32, i32* %n, align 4, !tbaa !6
  %call19 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %22, i32 %23, i32 8) #6
  %24 = bitcast i8* %call19 to double*
  %25 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %25, i32 0, i32 0
  store double* %24, double** %Double, align 8, !tbaa !26
  %26 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Double20 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %26, i32 0, i32 0
  %27 = load double*, double** %Double20, align 8, !tbaa !26
  %cmp21 = icmp eq double* %27, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %28 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @MatrixElemTypeFree(%struct._cmsStage_struct* %28) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %29 = load i32, i32* %i, align 4, !tbaa !6
  %30 = load i32, i32* %n, align 4, !tbaa !6
  %cmp24 = icmp ult i32 %29, %30
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %31 to i64
  %32 = load double*, double** %Matrix.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %32, i64 %idxprom
  %33 = load double, double* %arrayidx, align 8, !tbaa !28
  %34 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Double26 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %35, i32 0, i32 0
  %36 = load double*, double** %Double26, align 8, !tbaa !26
  %arrayidx27 = getelementptr inbounds double, double* %36, i64 %idxprom25
  store double %33, double* %arrayidx27, align 8, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load double*, double** %Offset.addr, align 8, !tbaa !1
  %cmp28 = icmp ne double* %38, null
  br i1 %cmp28, label %if.then.29, label %if.end.47

if.then.29:                                       ; preds = %for.end
  %39 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %40 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %call30 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %39, i32 %40, i32 8) #6
  %41 = bitcast i8* %call30 to double*
  %42 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Offset31 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %42, i32 0, i32 1
  store double* %41, double** %Offset31, align 8, !tbaa !30
  %43 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Offset32 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %43, i32 0, i32 1
  %44 = load double*, double** %Offset32, align 8, !tbaa !30
  %cmp33 = icmp eq double* %44, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %45 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @MatrixElemTypeFree(%struct._cmsStage_struct* %45) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.29
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.44, %if.end.35
  %46 = load i32, i32* %i, align 4, !tbaa !6
  %47 = load i32, i32* %Cols.addr, align 4, !tbaa !6
  %cmp37 = icmp ult i32 %46, %47
  br i1 %cmp37, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.36
  %48 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom39 = zext i32 %48 to i64
  %49 = load double*, double** %Offset.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %49, i64 %idxprom39
  %50 = load double, double* %arrayidx40, align 8, !tbaa !28
  %51 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom41 = zext i32 %51 to i64
  %52 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Offset42 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %52, i32 0, i32 1
  %53 = load double*, double** %Offset42, align 8, !tbaa !30
  %arrayidx43 = getelementptr inbounds double, double* %53, i64 %idxprom41
  store double %50, double* %arrayidx43, align 8, !tbaa !28
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %54 = load i32, i32* %i, align 4, !tbaa !6
  %inc45 = add i32 %54, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !6
  br label %for.cond.36

for.end.46:                                       ; preds = %for.cond.36
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end
  %55 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %56 = bitcast %struct._cmsStageMatrixData* %55 to i8*
  %57 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %57, i32 0, i32 8
  store i8* %56, i8** %Data, align 8, !tbaa !17
  %58 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %58, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.34, %if.then.22, %if.then.17, %if.then.13, %if.then.10, %if.then.6, %if.then.2, %if.then
  %59 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct._cmsStageMatrixData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %63
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateMatrix(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Data = alloca %struct._cmsStageMatrixData*, align 8
  %Tmp = alloca double, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %3, i32 0, i32 8
  %4 = load i8*, i8** %Data1, align 8, !tbaa !17
  %5 = bitcast i8* %4 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %5, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %6 = bitcast double* %Tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %Tmp, align 8, !tbaa !28
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4, !tbaa !6
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %11, i32 0, i32 3
  %12 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %cmp3 = icmp ult i32 %10, %12
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = zext i32 %13 to i64
  %14 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %15 to double
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels5 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 3
  %18 = load i32, i32* %InputChannels5, align 4, !tbaa !12
  %mul = mul i32 %16, %18
  %19 = load i32, i32* %j, align 4, !tbaa !6
  %add = add i32 %mul, %19
  %idxprom6 = zext i32 %add to i64
  %20 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %20, i32 0, i32 0
  %21 = load double*, double** %Double, align 8, !tbaa !26
  %arrayidx7 = getelementptr inbounds double, double* %21, i64 %idxprom6
  %22 = load double, double* %arrayidx7, align 8, !tbaa !28
  %mul8 = fmul double %conv, %22
  %23 = load double, double* %Tmp, align 8, !tbaa !28
  %add9 = fadd double %23, %mul8
  store double %add9, double* %Tmp, align 8, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %24 = load i32, i32* %j, align 4, !tbaa !6
  %inc = add i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !6
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %25 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %25, i32 0, i32 1
  %26 = load double*, double** %Offset, align 8, !tbaa !30
  %cmp10 = icmp ne double* %26, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %27 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom12 = zext i32 %27 to i64
  %28 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset13 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %28, i32 0, i32 1
  %29 = load double*, double** %Offset13, align 8, !tbaa !30
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 %idxprom12
  %30 = load double, double* %arrayidx14, align 8, !tbaa !28
  %31 = load double, double* %Tmp, align 8, !tbaa !28
  %add15 = fadd double %31, %30
  store double %add15, double* %Tmp, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %32 = load double, double* %Tmp, align 8, !tbaa !28
  %conv16 = fptrunc double %32 to float
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom17 = zext i32 %33 to i64
  %34 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %34, i64 %idxprom17
  store float %conv16, float* %arrayidx18, align 4, !tbaa !24
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %inc20 = add i32 %35, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %36 = bitcast double* %Tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @MatrixElemDup(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca i8*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageMatrixData*, align 8
  %NewElem = alloca %struct._cmsStageMatrixData*, align 8
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %3, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %4 = bitcast %struct._cmsStageMatrixData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 0
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %7, i32 16) #6
  %8 = bitcast i8* %call to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %8, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %9 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStageMatrixData* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %10, i32 0, i32 3
  %11 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %12, i32 0, i32 4
  %13 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  %mul = mul i32 %11, %13
  store i32 %mul, i32* %sz, align 4, !tbaa !6
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID2 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID2, align 8, !tbaa !8
  %16 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %16, i32 0, i32 0
  %17 = load double*, double** %Double, align 8, !tbaa !26
  %18 = bitcast double* %17 to i8*
  %19 = load i32, i32* %sz, align 4, !tbaa !6
  %conv = zext i32 %19 to i64
  %mul3 = mul i64 %conv, 8
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %15, i8* %18, i32 %conv4) #6
  %20 = bitcast i8* %call5 to double*
  %21 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Double6 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %21, i32 0, i32 0
  store double* %20, double** %Double6, align 8, !tbaa !26
  %22 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %22, i32 0, i32 1
  %23 = load double*, double** %Offset, align 8, !tbaa !30
  %tobool = icmp ne double* %23, null
  br i1 %tobool, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID8 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %24, i32 0, i32 0
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID8, align 8, !tbaa !8
  %26 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset9 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %26, i32 0, i32 1
  %27 = load double*, double** %Offset9, align 8, !tbaa !30
  %28 = bitcast double* %27 to i8*
  %29 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels10 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %29, i32 0, i32 4
  %30 = load i32, i32* %OutputChannels10, align 4, !tbaa !13
  %conv11 = zext i32 %30 to i64
  %mul12 = mul i64 %conv11, 8
  %conv13 = trunc i64 %mul12 to i32
  %call14 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %25, i8* %28, i32 %conv13) #6
  %31 = bitcast i8* %call14 to double*
  %32 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %Offset15 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %32, i32 0, i32 1
  store double* %31, double** %Offset15, align 8, !tbaa !30
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.7, %if.end
  %33 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %NewElem, align 8, !tbaa !1
  %34 = bitcast %struct._cmsStageMatrixData* %33 to i8*
  store i8* %34, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then
  %35 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast %struct._cmsStageMatrixData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define internal void @MatrixElemTypeFree(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageMatrixData*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %3, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %4 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStageMatrixData* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %5, i32 0, i32 0
  %6 = load double*, double** %Double, align 8, !tbaa !26
  %tobool = icmp ne double* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 0
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %9 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Double3 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %9, i32 0, i32 0
  %10 = load double*, double** %Double3, align 8, !tbaa !26
  %11 = bitcast double* %10 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %8, i8* %11) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %12 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %12, i32 0, i32 1
  %13 = load double*, double** %Offset, align 8, !tbaa !30
  %tobool5 = icmp ne double* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID7 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID7, align 8, !tbaa !8
  %16 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data, align 8, !tbaa !1
  %Offset8 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %16, i32 0, i32 1
  %17 = load double*, double** %Offset8, align 8, !tbaa !30
  %18 = bitcast double* %17 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %15, i8* %18) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.4
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID10 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID10, align 8, !tbaa !8
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data11 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %21, i32 0, i32 8
  %22 = load i8*, i8** %Data11, align 8, !tbaa !17
  call void @_cmsFree(%struct._cmsContext_struct* %20, i8* %22) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %23 = bitcast %struct._cmsStageMatrixData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
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

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocCLut16bitGranular(%struct._cmsContext_struct* %ContextID, i32* %clutPoints, i32 %inputChan, i32 %outputChan, i16* %Table) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %clutPoints.addr = alloca i32*, align 8
  %inputChan.addr = alloca i32, align 4
  %outputChan.addr = alloca i32, align 4
  %Table.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %NewElem = alloca %struct._cmsStageCLutData*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32* %clutPoints, i32** %clutPoints.addr, align 8, !tbaa !1
  store i32 %inputChan, i32* %inputChan.addr, align 4, !tbaa !6
  store i32 %outputChan, i32* %outputChan.addr, align 4, !tbaa !6
  store i16* %Table, i16** %Table.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 560, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %cmp1 = icmp ugt i32 %6, 8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %7, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 8) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %11 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %9, i32 1668052340, i32 %10, i32 %11, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateCLUTfloatIn16, i8* (%struct._cmsStage_struct*)* @CLUTElemDup, void (%struct._cmsStage_struct*)* @CLutElemTypeFree, i8* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStage_struct* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call5 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %13, i32 24) #6
  %14 = bitcast i8* %call5 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %14, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %15 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cmsStageCLutData* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %16) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %18 = bitcast %struct._cmsStageCLutData* %17 to i8*
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 8
  store i8* %18, i8** %Data, align 8, !tbaa !17
  %20 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %21 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %22 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %call9 = call i32 @CubeSize(i32* %21, i32 %22) #6
  %mul = mul i32 %20, %call9
  store i32 %mul, i32* %n, align 4, !tbaa !6
  %23 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %23, i32 0, i32 2
  store i32 %mul, i32* %nEntries, align 4, !tbaa !31
  %24 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %HasFloatValues = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %24, i32 0, i32 3
  store i32 0, i32* %HasFloatValues, align 4, !tbaa !33
  %25 = load i32, i32* %n, align 4, !tbaa !6
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %26) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %28 = load i32, i32* %n, align 4, !tbaa !6
  %call13 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %27, i32 %28, i32 2) #6
  %29 = bitcast i8* %call13 to i16*
  %30 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %30, i32 0, i32 0
  %T = bitcast %union.anon* %Tab to i16**
  store i16* %29, i16** %T, align 8, !tbaa !1
  %31 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab14 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %31, i32 0, i32 0
  %T15 = bitcast %union.anon* %Tab14 to i16**
  %32 = load i16*, i16** %T15, align 8, !tbaa !1
  %cmp16 = icmp eq i16* %32, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %33 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %33) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %34 = load i16*, i16** %Table.addr, align 8, !tbaa !1
  %cmp19 = icmp ne i16* %34, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %36 = load i32, i32* %n, align 4, !tbaa !6
  %cmp21 = icmp ult i32 %35, %36
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %37 to i64
  %38 = load i16*, i16** %Table.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %38, i64 %idxprom
  %39 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %40 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom22 = zext i32 %40 to i64
  %41 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab23 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %41, i32 0, i32 0
  %T24 = bitcast %union.anon* %Tab23 to i16**
  %42 = load i16*, i16** %T24, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %42, i64 %idxprom22
  store i16 %39, i16* %arrayidx25, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end.18
  %44 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %45 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %46 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %47 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %48 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab27 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %48, i32 0, i32 0
  %T28 = bitcast %union.anon* %Tab27 to i16**
  %49 = load i16*, i16** %T28, align 8, !tbaa !1
  %50 = bitcast i16* %49 to i8*
  %call29 = call %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct* %44, i32* %45, i32 %46, i32 %47, i8* %50, i32 0) #6
  %51 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %51, i32 0, i32 1
  store %struct._cms_interp_struc* %call29, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %52 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params30 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %52, i32 0, i32 1
  %53 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params30, align 8, !tbaa !36
  %cmp31 = icmp eq %struct._cms_interp_struc* %53, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %54 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %54) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  %55 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %55, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32, %if.then.17, %if.then.11, %if.then.7, %if.then.3, %if.then
  %56 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %60
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @EvaluateCLUTfloatIn16(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageCLutData*, align 8
  %In16 = alloca [128 x i16], align 16
  %Out16 = alloca [128 x i16], align 16
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %3, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %4 = bitcast [128 x i16]* %In16 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #1
  %5 = bitcast [128 x i16]* %Out16 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %5) #1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %cmp = icmp ule i32 %7, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 456, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %9, i32 0, i32 4
  %10 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  %cmp2 = icmp ule i32 %10, 128
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 457, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end.5

cond.end.5:                                       ; preds = %11, %cond.true.3
  %12 = load float*, float** %In.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %In16, i32 0, i32 0
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels6 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %13, i32 0, i32 3
  %14 = load i32, i32* %InputChannels6, align 4, !tbaa !12
  call void @FromFloatTo16(float* %12, i16* %arraydecay, i32 %14) #6
  %15 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %15, i32 0, i32 1
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 8
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  %17 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [128 x i16], [128 x i16]* %In16, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [128 x i16], [128 x i16]* %Out16, i32 0, i32 0
  %18 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params9 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %18, i32 0, i32 1
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params9, align 8, !tbaa !36
  call void %17(i16* %arraydecay7, i16* %arraydecay8, %struct._cms_interp_struc* %19) #6
  %arraydecay10 = getelementptr inbounds [128 x i16], [128 x i16]* %Out16, i32 0, i32 0
  %20 = load float*, float** %Out.addr, align 8, !tbaa !1
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels11 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %21, i32 0, i32 4
  %22 = load i32, i32* %OutputChannels11, align 4, !tbaa !13
  call void @From16ToFloat(i16* %arraydecay10, float* %20, i32 %22) #6
  %23 = bitcast [128 x i16]* %Out16 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %23) #1
  %24 = bitcast [128 x i16]* %In16 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %24) #1
  %25 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @CLUTElemDup(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca i8*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageCLutData*, align 8
  %NewElem = alloca %struct._cmsStageCLutData*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %3, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %4 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %5, i32 0, i32 0
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %6, i32 24) #6
  %7 = bitcast i8* %call to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %7, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %8 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStageCLutData* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %9, i32 0, i32 2
  %10 = load i32, i32* %nEntries, align 4, !tbaa !31
  %11 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %nEntries2 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %11, i32 0, i32 2
  store i32 %10, i32* %nEntries2, align 4, !tbaa !31
  %12 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %HasFloatValues = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %12, i32 0, i32 3
  %13 = load i32, i32* %HasFloatValues, align 4, !tbaa !33
  %14 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %HasFloatValues3 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %14, i32 0, i32 3
  store i32 %13, i32* %HasFloatValues3, align 4, !tbaa !33
  %15 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %15, i32 0, i32 0
  %T = bitcast %union.anon* %Tab to i16**
  %16 = load i16*, i16** %T, align 8, !tbaa !1
  %tobool = icmp ne i16* %16, null
  br i1 %tobool, label %if.then.4, label %if.end.38

if.then.4:                                        ; preds = %if.end
  %17 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %HasFloatValues5 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %17, i32 0, i32 3
  %18 = load i32, i32* %HasFloatValues5, align 4, !tbaa !33
  %tobool6 = icmp ne i32 %18, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID8 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID8, align 8, !tbaa !8
  %21 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Tab9 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %21, i32 0, i32 0
  %TFloat = bitcast %union.anon* %Tab9 to float**
  %22 = load float*, float** %TFloat, align 8, !tbaa !1
  %23 = bitcast float* %22 to i8*
  %24 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %nEntries10 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %24, i32 0, i32 2
  %25 = load i32, i32* %nEntries10, align 4, !tbaa !31
  %conv = zext i32 %25 to i64
  %mul = mul i64 %conv, 4
  %conv11 = trunc i64 %mul to i32
  %call12 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %20, i8* %23, i32 %conv11) #6
  %26 = bitcast i8* %call12 to float*
  %27 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab13 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %27, i32 0, i32 0
  %TFloat14 = bitcast %union.anon* %Tab13 to float**
  store float* %26, float** %TFloat14, align 8, !tbaa !1
  %28 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab15 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %28, i32 0, i32 0
  %TFloat16 = bitcast %union.anon* %Tab15 to float**
  %29 = load float*, float** %TFloat16, align 8, !tbaa !1
  %cmp17 = icmp eq float* %29, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.7
  br label %Error

if.end.20:                                        ; preds = %if.then.7
  br label %if.end.37

if.else:                                          ; preds = %if.then.4
  %30 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID21 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %30, i32 0, i32 0
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID21, align 8, !tbaa !8
  %32 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Tab22 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %32, i32 0, i32 0
  %T23 = bitcast %union.anon* %Tab22 to i16**
  %33 = load i16*, i16** %T23, align 8, !tbaa !1
  %34 = bitcast i16* %33 to i8*
  %35 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %nEntries24 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %35, i32 0, i32 2
  %36 = load i32, i32* %nEntries24, align 4, !tbaa !31
  %conv25 = zext i32 %36 to i64
  %mul26 = mul i64 %conv25, 2
  %conv27 = trunc i64 %mul26 to i32
  %call28 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %31, i8* %34, i32 %conv27) #6
  %37 = bitcast i8* %call28 to i16*
  %38 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab29 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %38, i32 0, i32 0
  %T30 = bitcast %union.anon* %Tab29 to i16**
  store i16* %37, i16** %T30, align 8, !tbaa !1
  %39 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab31 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %39, i32 0, i32 0
  %TFloat32 = bitcast %union.anon* %Tab31 to float**
  %40 = load float*, float** %TFloat32, align 8, !tbaa !1
  %cmp33 = icmp eq float* %40, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else
  br label %Error

if.end.36:                                        ; preds = %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.20
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  %41 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID39 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %41, i32 0, i32 0
  %42 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID39, align 8, !tbaa !8
  %43 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %43, i32 0, i32 1
  %44 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %nSamples = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %44, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %nSamples, i32 0, i32 0
  %45 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params40 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %45, i32 0, i32 1
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params40, align 8, !tbaa !36
  %nInputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 2
  %47 = load i32, i32* %nInputs, align 4, !tbaa !37
  %48 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params41 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %48, i32 0, i32 1
  %49 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params41, align 8, !tbaa !36
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %49, i32 0, i32 3
  %50 = load i32, i32* %nOutputs, align 4, !tbaa !39
  %51 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab42 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %51, i32 0, i32 0
  %T43 = bitcast %union.anon* %Tab42 to i16**
  %52 = load i16*, i16** %T43, align 8, !tbaa !1
  %53 = bitcast i16* %52 to i8*
  %54 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params44 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %54, i32 0, i32 1
  %55 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params44, align 8, !tbaa !36
  %dwFlags = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %55, i32 0, i32 1
  %56 = load i32, i32* %dwFlags, align 4, !tbaa !40
  %call45 = call %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct* %42, i32* %arraydecay, i32 %47, i32 %50, i8* %53, i32 %56) #6
  %57 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params46 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %57, i32 0, i32 1
  store %struct._cms_interp_struc* %call45, %struct._cms_interp_struc** %Params46, align 8, !tbaa !36
  %58 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params47 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %58, i32 0, i32 1
  %59 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params47, align 8, !tbaa !36
  %cmp48 = icmp ne %struct._cms_interp_struc* %59, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.38
  %60 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %61 = bitcast %struct._cmsStageCLutData* %60 to i8*
  store i8* %61, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.38
  br label %Error

Error:                                            ; preds = %if.end.51, %if.then.35, %if.then.19
  %62 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab52 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %62, i32 0, i32 0
  %T53 = bitcast %union.anon* %Tab52 to i16**
  %63 = load i16*, i16** %T53, align 8, !tbaa !1
  %tobool54 = icmp ne i16* %63, null
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %Error
  %64 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID56 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %64, i32 0, i32 0
  %65 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID56, align 8, !tbaa !8
  %66 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab57 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %66, i32 0, i32 0
  %T58 = bitcast %union.anon* %Tab57 to i16**
  %67 = load i16*, i16** %T58, align 8, !tbaa !1
  %68 = bitcast i16* %67 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %65, i8* %68) #6
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.55, %Error
  %69 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID60 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %69, i32 0, i32 0
  %70 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID60, align 8, !tbaa !8
  %71 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %72 = bitcast %struct._cmsStageCLutData* %71 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %70, i8* %72) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.50, %if.then
  %73 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i8*, i8** %retval
  ret i8* %75
}

; Function Attrs: nounwind uwtable
define internal void @CLutElemTypeFree(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageCLutData*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %3, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %4 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStageCLutData* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %5, i32 0, i32 0
  %T = bitcast %union.anon* %Tab to i16**
  %6 = load i16*, i16** %T, align 8, !tbaa !1
  %tobool = icmp ne i16* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 0
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %9 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Tab3 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %9, i32 0, i32 0
  %T4 = bitcast %union.anon* %Tab3 to i16**
  %10 = load i16*, i16** %T4, align 8, !tbaa !1
  %11 = bitcast i16* %10 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %8, i8* %11) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %12 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %12, i32 0, i32 1
  %13 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  call void @_cmsFreeInterpParams(%struct._cms_interp_struc* %13) #6
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !8
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data7 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %16, i32 0, i32 8
  %17 = load i8*, i8** %Data7, align 8, !tbaa !17
  call void @_cmsFree(%struct._cmsContext_struct* %15, i8* %17) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %18 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
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

; Function Attrs: nounwind uwtable
define internal i32 @CubeSize(i32* %Dims, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %Dims.addr = alloca i32*, align 8
  %b.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  %dim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %Dims, i32** %Dims.addr, align 8, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !6
  %0 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %dim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32*, i32** %Dims.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 471, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.CubeSize, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  store i32 1, i32* %rv, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %b.addr, align 4, !tbaa !6
  %cmp1 = icmp ugt i32 %4, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %b.addr, align 4, !tbaa !6
  %sub = sub i32 %5, 1
  %idxprom = zext i32 %sub to i64
  %6 = load i32*, i32** %Dims.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !6
  store i32 %7, i32* %dim, align 4, !tbaa !6
  %8 = load i32, i32* %dim, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %dim, align 4, !tbaa !6
  %10 = load i32, i32* %rv, align 4, !tbaa !6
  %mul = mul i32 %10, %9
  store i32 %mul, i32* %rv, align 4, !tbaa !6
  %11 = load i32, i32* %rv, align 4, !tbaa !6
  %12 = load i32, i32* %dim, align 4, !tbaa !6
  %div = udiv i32 -1, %12
  %cmp3 = icmp ugt i32 %11, %div
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %13 = load i32, i32* %b.addr, align 4, !tbaa !6
  %dec = add i32 %13, -1
  store i32 %dec, i32* %b.addr, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %rv, align 4, !tbaa !6
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4, %if.then
  %15 = bitcast i32* %dim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct*, i32*, i32, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %ContextID, i32 %nGridPoints, i32 %inputChan, i32 %outputChan, i16* %Table) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nGridPoints.addr = alloca i32, align 4
  %inputChan.addr = alloca i32, align 4
  %outputChan.addr = alloca i32, align 4
  %Table.addr = alloca i16*, align 8
  %Dimensions = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nGridPoints, i32* %nGridPoints.addr, align 4, !tbaa !6
  store i32 %inputChan, i32* %inputChan.addr, align 4, !tbaa !6
  store i32 %outputChan, i32* %outputChan.addr, align 4, !tbaa !6
  store i16* %Table, i16** %Table.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %nGridPoints.addr, align 4, !tbaa !6
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i32 0
  %7 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %8 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %9 = load i16*, i16** %Table.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocCLut16bitGranular(%struct._cmsContext_struct* %6, i32* %arraydecay, i32 %7, i32 %8, i16* %9) #6
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.end(i64 32, i8* %11) #1
  ret %struct._cmsStage_struct* %call
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocCLutFloat(%struct._cmsContext_struct* %ContextID, i32 %nGridPoints, i32 %inputChan, i32 %outputChan, float* %Table) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nGridPoints.addr = alloca i32, align 4
  %inputChan.addr = alloca i32, align 4
  %outputChan.addr = alloca i32, align 4
  %Table.addr = alloca float*, align 8
  %Dimensions = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nGridPoints, i32* %nGridPoints.addr, align 4, !tbaa !6
  store i32 %inputChan, i32* %inputChan.addr, align 4, !tbaa !6
  store i32 %outputChan, i32* %outputChan.addr, align 4, !tbaa !6
  store float* %Table, float** %Table.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %nGridPoints.addr, align 4, !tbaa !6
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i32 0
  %7 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %8 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %9 = load float*, float** %Table.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocCLutFloatGranular(%struct._cmsContext_struct* %6, i32* %arraydecay, i32 %7, i32 %8, float* %9) #6
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.end(i64 32, i8* %11) #1
  ret %struct._cmsStage_struct* %call
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageAllocCLutFloatGranular(%struct._cmsContext_struct* %ContextID, i32* %clutPoints, i32 %inputChan, i32 %outputChan, float* %Table) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %clutPoints.addr = alloca i32*, align 8
  %inputChan.addr = alloca i32, align 4
  %outputChan.addr = alloca i32, align 4
  %Table.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %NewElem = alloca %struct._cmsStageCLutData*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32* %clutPoints, i32** %clutPoints.addr, align 8, !tbaa !1
  store i32 %inputChan, i32* %inputChan.addr, align 4, !tbaa !6
  store i32 %outputChan, i32* %outputChan.addr, align 4, !tbaa !6
  store float* %Table, float** %Table.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 651, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %cmp1 = icmp ugt i32 %6, 8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %7, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 8) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %11 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %9, i32 1668052340, i32 %10, i32 %11, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateCLUTfloat, i8* (%struct._cmsStage_struct*)* @CLUTElemDup, void (%struct._cmsStage_struct*)* @CLutElemTypeFree, i8* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStage_struct* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call5 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %13, i32 24) #6
  %14 = bitcast i8* %call5 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %14, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %15 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cmsStageCLutData* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %16) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %18 = bitcast %struct._cmsStageCLutData* %17 to i8*
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 8
  store i8* %18, i8** %Data, align 8, !tbaa !17
  %20 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %21 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %22 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %call9 = call i32 @CubeSize(i32* %21, i32 %22) #6
  %mul = mul i32 %20, %call9
  store i32 %mul, i32* %n, align 4, !tbaa !6
  %23 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %23, i32 0, i32 2
  store i32 %mul, i32* %nEntries, align 4, !tbaa !31
  %24 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %HasFloatValues = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %24, i32 0, i32 3
  store i32 1, i32* %HasFloatValues, align 4, !tbaa !33
  %25 = load i32, i32* %n, align 4, !tbaa !6
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %26) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %28 = load i32, i32* %n, align 4, !tbaa !6
  %call13 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %27, i32 %28, i32 4) #6
  %29 = bitcast i8* %call13 to float*
  %30 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %30, i32 0, i32 0
  %TFloat = bitcast %union.anon* %Tab to float**
  store float* %29, float** %TFloat, align 8, !tbaa !1
  %31 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab14 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %31, i32 0, i32 0
  %TFloat15 = bitcast %union.anon* %Tab14 to float**
  %32 = load float*, float** %TFloat15, align 8, !tbaa !1
  %cmp16 = icmp eq float* %32, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  %33 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %33) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.12
  %34 = load float*, float** %Table.addr, align 8, !tbaa !1
  %cmp19 = icmp ne float* %34, null
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.20
  %35 = load i32, i32* %i, align 4, !tbaa !6
  %36 = load i32, i32* %n, align 4, !tbaa !6
  %cmp21 = icmp ult i32 %35, %36
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %37 to i64
  %38 = load float*, float** %Table.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %38, i64 %idxprom
  %39 = load float, float* %arrayidx, align 4, !tbaa !24
  %40 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom22 = zext i32 %40 to i64
  %41 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab23 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %41, i32 0, i32 0
  %TFloat24 = bitcast %union.anon* %Tab23 to float**
  %42 = load float*, float** %TFloat24, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %42, i64 %idxprom22
  store float %39, float* %arrayidx25, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end.18
  %44 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %45 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %46 = load i32, i32* %inputChan.addr, align 4, !tbaa !6
  %47 = load i32, i32* %outputChan.addr, align 4, !tbaa !6
  %48 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Tab27 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %48, i32 0, i32 0
  %TFloat28 = bitcast %union.anon* %Tab27 to float**
  %49 = load float*, float** %TFloat28, align 8, !tbaa !1
  %50 = bitcast float* %49 to i8*
  %call29 = call %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct* %44, i32* %45, i32 %46, i32 %47, i8* %50, i32 1) #6
  %51 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %51, i32 0, i32 1
  store %struct._cms_interp_struc* %call29, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %52 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %NewElem, align 8, !tbaa !1
  %Params30 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %52, i32 0, i32 1
  %53 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params30, align 8, !tbaa !36
  %cmp31 = icmp eq %struct._cms_interp_struc* %53, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %54 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %54) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  %55 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %55, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32, %if.then.17, %if.then.11, %if.then.7, %if.then.3, %if.then
  %56 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct._cmsStageCLutData** %NewElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %60
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateCLUTfloat(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Data = alloca %struct._cmsStageCLutData*, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data1 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data1, align 8, !tbaa !17
  %3 = bitcast i8* %2 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %3, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %4 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %4, i32 0, i32 1
  %5 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %5, i32 0, i32 8
  %LerpFloat = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  %6 = load void (float*, float*, %struct._cms_interp_struc*)*, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat, align 8, !tbaa !1
  %7 = load float*, float** %In.addr, align 8, !tbaa !1
  %8 = load float*, float** %Out.addr, align 8, !tbaa !1
  %9 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Data, align 8, !tbaa !1
  %Params2 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %9, i32 0, i32 1
  %10 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params2, align 8, !tbaa !36
  call void %6(float* %7, float* %8, %struct._cms_interp_struc* %10) #6
  %11 = bitcast %struct._cmsStageCLutData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocIdentityCLut(%struct._cmsContext_struct* %ContextID, i32 %nChan) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nChan.addr = alloca i32, align 4
  %Dimensions = alloca [8 x i32], align 16
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nChan, i32* %nChan.addr, align 4, !tbaa !6
  %0 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i64 %idxprom
  store i32 2, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %Dimensions, i32 0, i32 0
  %7 = load i32, i32* %nChan.addr, align 4, !tbaa !6
  %8 = load i32, i32* %nChan.addr, align 4, !tbaa !6
  %call = call %struct._cmsStage_struct* @cmsStageAllocCLut16bitGranular(%struct._cmsContext_struct* %6, i32* %arraydecay, i32 %7, i32 %8, i16* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %9 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsStage_struct* %9, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %11 = bitcast i32* %nChan.addr to i8*
  %call2 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %10, i32 (i16*, i16*, i8*)* @IdentitySampler, i8* %11, i32 0) #6
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %12) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %13, i32 0, i32 2
  store i32 1768189472, i32* %Implements, align 4, !tbaa !11
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %14, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast [8 x i32]* %Dimensions to i8*
  call void @llvm.lifetime.end(i64 32, i8* %17) #1
  %18 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %18
}

; Function Attrs: nounwind uwtable
define i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %mpe, i32 (i16*, i16*, i8*)* %Sampler, i8* %Cargo, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Sampler.addr = alloca i32 (i16*, i16*, i8*)*, align 8
  %Cargo.addr = alloca i8*, align 8
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %nTotalPoints = alloca i32, align 4
  %index = alloca i32, align 4
  %rest = alloca i32, align 4
  %nInputs = alloca i32, align 4
  %nOutputs = alloca i32, align 4
  %nSamples = alloca i32*, align 8
  %In = alloca [9 x i16], align 16
  %Out = alloca [128 x i16], align 16
  %clut = alloca %struct._cmsStageCLutData*, align 8
  %cleanup.dest.slot = alloca i32
  %Colorant = alloca i32, align 4
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  store i32 (i16*, i16*, i8*)* %Sampler, i32 (i16*, i16*, i8*)** %Sampler.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nInputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32** %nSamples to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [9 x i16]* %In to i8*
  call void @llvm.lifetime.start(i64 18, i8* %8) #1
  %9 = bitcast [128 x i16]* %Out to i8*
  call void @llvm.lifetime.start(i64 256, i8* %9) #1
  %10 = bitcast %struct._cmsStageCLutData** %clut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %12, i32 0, i32 8
  %13 = load i8*, i8** %Data, align 8, !tbaa !17
  %14 = bitcast i8* %13 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %14, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %15 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsStageCLutData* %15, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %16 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %16, i32 0, i32 1
  %17 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %nSamples4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %17, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %nSamples4, i32 0, i32 0
  store i32* %arraydecay, i32** %nSamples, align 8, !tbaa !1
  %18 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params5 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %18, i32 0, i32 1
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params5, align 8, !tbaa !36
  %nInputs6 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %19, i32 0, i32 2
  %20 = load i32, i32* %nInputs6, align 4, !tbaa !37
  store i32 %20, i32* %nInputs, align 4, !tbaa !6
  %21 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params7 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %21, i32 0, i32 1
  %22 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params7, align 8, !tbaa !36
  %nOutputs8 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %22, i32 0, i32 3
  %23 = load i32, i32* %nOutputs8, align 4, !tbaa !39
  store i32 %23, i32* %nOutputs, align 4, !tbaa !6
  %24 = load i32, i32* %nInputs, align 4, !tbaa !6
  %cmp9 = icmp sle i32 %24, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.3
  %25 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp12 = icmp sle i32 %25, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.11
  %26 = load i32, i32* %nInputs, align 4, !tbaa !6
  %cmp15 = icmp sgt i32 %26, 8
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.14
  %27 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp18 = icmp sge i32 %27, 128
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.17
  %28 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %29 = load i32, i32* %nInputs, align 4, !tbaa !6
  %call = call i32 @CubeSize(i32* %28, i32 %29) #6
  store i32 %call, i32* %nTotalPoints, align 4, !tbaa !6
  %30 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp21 = icmp eq i32 %30, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.20
  store i32 0, i32* %index, align 4, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.23
  %31 = load i32, i32* %i, align 4, !tbaa !6
  %32 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %33, i32* %rest, align 4, !tbaa !6
  %34 = load i32, i32* %nInputs, align 4, !tbaa !6
  %sub = sub nsw i32 %34, 1
  store i32 %sub, i32* %t, align 4, !tbaa !6
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %t, align 4, !tbaa !6
  %cmp26 = icmp sge i32 %35, 0
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %36 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %rest, align 4, !tbaa !6
  %38 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom = sext i32 %38 to i64
  %39 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %rem = urem i32 %37, %40
  store i32 %rem, i32* %Colorant, align 4, !tbaa !6
  %41 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom28 = sext i32 %41 to i64
  %42 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %42, i64 %idxprom28
  %43 = load i32, i32* %arrayidx29, align 4, !tbaa !6
  %44 = load i32, i32* %rest, align 4, !tbaa !6
  %div = udiv i32 %44, %43
  store i32 %div, i32* %rest, align 4, !tbaa !6
  %45 = load i32, i32* %Colorant, align 4, !tbaa !6
  %conv = uitofp i32 %45 to double
  %46 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom30 = sext i32 %46 to i64
  %47 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %47, i64 %idxprom30
  %48 = load i32, i32* %arrayidx31, align 4, !tbaa !6
  %call32 = call zeroext i16 @_cmsQuantizeVal(double %conv, i32 %48) #6
  %49 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom33 = sext i32 %49 to i64
  %arrayidx34 = getelementptr inbounds [9 x i16], [9 x i16]* %In, i32 0, i64 %idxprom33
  store i16 %call32, i16* %arrayidx34, align 2, !tbaa !34
  %50 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %51 = load i32, i32* %t, align 4, !tbaa !6
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %t, align 4, !tbaa !6
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %52 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %52, i32 0, i32 0
  %T = bitcast %union.anon* %Tab to i16**
  %53 = load i16*, i16** %T, align 8, !tbaa !1
  %cmp35 = icmp ne i16* %53, null
  br i1 %cmp35, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %for.end
  store i32 0, i32* %t, align 4, !tbaa !6
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.48, %if.then.37
  %54 = load i32, i32* %t, align 4, !tbaa !6
  %55 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp39 = icmp slt i32 %54, %55
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %56 = load i32, i32* %index, align 4, !tbaa !6
  %57 = load i32, i32* %t, align 4, !tbaa !6
  %add = add nsw i32 %56, %57
  %idxprom42 = sext i32 %add to i64
  %58 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab43 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %58, i32 0, i32 0
  %T44 = bitcast %union.anon* %Tab43 to i16**
  %59 = load i16*, i16** %T44, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %59, i64 %idxprom42
  %60 = load i16, i16* %arrayidx45, align 2, !tbaa !34
  %61 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds [128 x i16], [128 x i16]* %Out, i32 0, i64 %idxprom46
  store i16 %60, i16* %arrayidx47, align 2, !tbaa !34
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.41
  %62 = load i32, i32* %t, align 4, !tbaa !6
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %t, align 4, !tbaa !6
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  %63 = load i32 (i16*, i16*, i8*)*, i32 (i16*, i16*, i8*)** %Sampler.addr, align 8, !tbaa !1
  %arraydecay51 = getelementptr inbounds [9 x i16], [9 x i16]* %In, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [128 x i16], [128 x i16]* %Out, i32 0, i32 0
  %64 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %call53 = call i32 %63(i16* %arraydecay51, i16* %arraydecay52, i8* %64) #6
  %tobool = icmp ne i32 %call53, 0
  br i1 %tobool, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.50
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %if.end.50
  %65 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and = and i32 %65, 16777216
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.end.78, label %if.then.57

if.then.57:                                       ; preds = %if.end.55
  %66 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab58 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %66, i32 0, i32 0
  %T59 = bitcast %union.anon* %Tab58 to i16**
  %67 = load i16*, i16** %T59, align 8, !tbaa !1
  %cmp60 = icmp ne i16* %67, null
  br i1 %cmp60, label %if.then.62, label %if.end.77

if.then.62:                                       ; preds = %if.then.57
  store i32 0, i32* %t, align 4, !tbaa !6
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.74, %if.then.62
  %68 = load i32, i32* %t, align 4, !tbaa !6
  %69 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp64 = icmp slt i32 %68, %69
  br i1 %cmp64, label %for.body.66, label %for.end.76

for.body.66:                                      ; preds = %for.cond.63
  %70 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom67 = sext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds [128 x i16], [128 x i16]* %Out, i32 0, i64 %idxprom67
  %71 = load i16, i16* %arrayidx68, align 2, !tbaa !34
  %72 = load i32, i32* %index, align 4, !tbaa !6
  %73 = load i32, i32* %t, align 4, !tbaa !6
  %add69 = add nsw i32 %72, %73
  %idxprom70 = sext i32 %add69 to i64
  %74 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab71 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %74, i32 0, i32 0
  %T72 = bitcast %union.anon* %Tab71 to i16**
  %75 = load i16*, i16** %T72, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %75, i64 %idxprom70
  store i16 %71, i16* %arrayidx73, align 2, !tbaa !34
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.66
  %76 = load i32, i32* %t, align 4, !tbaa !6
  %inc75 = add nsw i32 %76, 1
  store i32 %inc75, i32* %t, align 4, !tbaa !6
  br label %for.cond.63

for.end.76:                                       ; preds = %for.cond.63
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %if.then.57
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.55
  %77 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %78 = load i32, i32* %index, align 4, !tbaa !6
  %add79 = add nsw i32 %78, %77
  store i32 %add79, i32* %index, align 4, !tbaa !6
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.78
  %79 = load i32, i32* %i, align 4, !tbaa !6
  %inc81 = add nsw i32 %79, 1
  store i32 %inc81, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.82, %if.then.54, %if.then.22, %if.then.19, %if.then.16, %if.then.13, %if.then.10, %if.then.2, %if.then
  %80 = bitcast %struct._cmsStageCLutData** %clut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast [128 x i16]* %Out to i8*
  call void @llvm.lifetime.end(i64 256, i8* %81) #1
  %82 = bitcast [9 x i16]* %In to i8*
  call void @llvm.lifetime.end(i64 18, i8* %82) #1
  %83 = bitcast i32** %nSamples to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %nInputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @IdentitySampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %nChan = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !6
  store i32 %3, i32* %nChan, align 4, !tbaa !6
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %6 = load i32, i32* %nChan, align 4, !tbaa !6
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom1 = sext i32 %10 to i64
  %11 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %11, i64 %idxprom1
  store i16 %9, i16* %arrayidx2, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %nChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define zeroext i16 @_cmsQuantizeVal(double %i, i32 %MaxSamples) #0 {
entry:
  %i.addr = alloca double, align 8
  %MaxSamples.addr = alloca i32, align 4
  %x = alloca double, align 8
  store double %i, double* %i.addr, align 8, !tbaa !28
  store i32 %MaxSamples, i32* %MaxSamples.addr, align 4, !tbaa !6
  %0 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %i.addr, align 8, !tbaa !28
  %mul = fmul double %1, 6.553500e+04
  %2 = load i32, i32* %MaxSamples.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %2, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %mul, %conv
  store double %div, double* %x, align 8, !tbaa !28
  %3 = load double, double* %x, align 8, !tbaa !28
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %3) #6
  %4 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i16 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #4 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !28
  %0 = load double, double* %d.addr, align 8, !tbaa !28
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !28
  %1 = load double, double* %d.addr, align 8, !tbaa !28
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !28
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !28
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #6
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: nounwind uwtable
define i32 @cmsStageSampleCLutFloat(%struct._cmsStage_struct* %mpe, i32 (float*, float*, i8*)* %Sampler, i8* %Cargo, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Sampler.addr = alloca i32 (float*, float*, i8*)*, align 8
  %Cargo.addr = alloca i8*, align 8
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %nTotalPoints = alloca i32, align 4
  %index = alloca i32, align 4
  %rest = alloca i32, align 4
  %nInputs = alloca i32, align 4
  %nOutputs = alloca i32, align 4
  %nSamples = alloca i32*, align 8
  %In = alloca [9 x float], align 16
  %Out = alloca [128 x float], align 16
  %clut = alloca %struct._cmsStageCLutData*, align 8
  %cleanup.dest.slot = alloca i32
  %Colorant = alloca i32, align 4
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  store i32 (float*, float*, i8*)* %Sampler, i32 (float*, float*, i8*)** %Sampler.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nInputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32** %nSamples to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [9 x float]* %In to i8*
  call void @llvm.lifetime.start(i64 36, i8* %8) #1
  %9 = bitcast [128 x float]* %Out to i8*
  call void @llvm.lifetime.start(i64 512, i8* %9) #1
  %10 = bitcast %struct._cmsStageCLutData** %clut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %11, i32 0, i32 8
  %12 = load i8*, i8** %Data, align 8, !tbaa !17
  %13 = bitcast i8* %12 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %13, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %14 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %14, i32 0, i32 1
  %15 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !36
  %nSamples1 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %15, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %nSamples1, i32 0, i32 0
  store i32* %arraydecay, i32** %nSamples, align 8, !tbaa !1
  %16 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params2 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %16, i32 0, i32 1
  %17 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params2, align 8, !tbaa !36
  %nInputs3 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %17, i32 0, i32 2
  %18 = load i32, i32* %nInputs3, align 4, !tbaa !37
  store i32 %18, i32* %nInputs, align 4, !tbaa !6
  %19 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Params4 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %19, i32 0, i32 1
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params4, align 8, !tbaa !36
  %nOutputs5 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 3
  %21 = load i32, i32* %nOutputs5, align 4, !tbaa !39
  store i32 %21, i32* %nOutputs, align 4, !tbaa !6
  %22 = load i32, i32* %nInputs, align 4, !tbaa !6
  %cmp = icmp sle i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp6 = icmp sle i32 %23, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %24 = load i32, i32* %nInputs, align 4, !tbaa !6
  %cmp9 = icmp sgt i32 %24, 8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %25 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp12 = icmp sge i32 %25, 128
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.11
  %26 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %27 = load i32, i32* %nInputs, align 4, !tbaa !6
  %call = call i32 @CubeSize(i32* %26, i32 %27) #6
  store i32 %call, i32* %nTotalPoints, align 4, !tbaa !6
  %28 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.14
  store i32 0, i32* %index, align 4, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end.17
  %29 = load i32, i32* %i, align 4, !tbaa !6
  %30 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp18 = icmp slt i32 %29, %30
  br i1 %cmp18, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %31, i32* %rest, align 4, !tbaa !6
  %32 = load i32, i32* %nInputs, align 4, !tbaa !6
  %sub = sub nsw i32 %32, 1
  store i32 %sub, i32* %t, align 4, !tbaa !6
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %t, align 4, !tbaa !6
  %cmp20 = icmp sge i32 %33, 0
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %34 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %rest, align 4, !tbaa !6
  %36 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom = sext i32 %36 to i64
  %37 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %37, i64 %idxprom
  %38 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %rem = urem i32 %35, %38
  store i32 %rem, i32* %Colorant, align 4, !tbaa !6
  %39 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom22 = sext i32 %39 to i64
  %40 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom22
  %41 = load i32, i32* %arrayidx23, align 4, !tbaa !6
  %42 = load i32, i32* %rest, align 4, !tbaa !6
  %div = udiv i32 %42, %41
  store i32 %div, i32* %rest, align 4, !tbaa !6
  %43 = load i32, i32* %Colorant, align 4, !tbaa !6
  %conv = uitofp i32 %43 to double
  %44 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom24 = sext i32 %44 to i64
  %45 = load i32*, i32** %nSamples, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i32, i32* %45, i64 %idxprom24
  %46 = load i32, i32* %arrayidx25, align 4, !tbaa !6
  %call26 = call zeroext i16 @_cmsQuantizeVal(double %conv, i32 %46) #6
  %conv27 = zext i16 %call26 to i32
  %conv28 = sitofp i32 %conv27 to double
  %div29 = fdiv double %conv28, 6.553500e+04
  %conv30 = fptrunc double %div29 to float
  %47 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom31 = sext i32 %47 to i64
  %arrayidx32 = getelementptr inbounds [9 x float], [9 x float]* %In, i32 0, i64 %idxprom31
  store float %conv30, float* %arrayidx32, align 4, !tbaa !24
  %48 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %49 = load i32, i32* %t, align 4, !tbaa !6
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %t, align 4, !tbaa !6
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %50 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %50, i32 0, i32 0
  %TFloat = bitcast %union.anon* %Tab to float**
  %51 = load float*, float** %TFloat, align 8, !tbaa !1
  %cmp33 = icmp ne float* %51, null
  br i1 %cmp33, label %if.then.35, label %if.end.48

if.then.35:                                       ; preds = %for.end
  store i32 0, i32* %t, align 4, !tbaa !6
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %if.then.35
  %52 = load i32, i32* %t, align 4, !tbaa !6
  %53 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp37 = icmp slt i32 %52, %53
  br i1 %cmp37, label %for.body.39, label %for.end.47

for.body.39:                                      ; preds = %for.cond.36
  %54 = load i32, i32* %index, align 4, !tbaa !6
  %55 = load i32, i32* %t, align 4, !tbaa !6
  %add = add nsw i32 %54, %55
  %idxprom40 = sext i32 %add to i64
  %56 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab41 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %56, i32 0, i32 0
  %TFloat42 = bitcast %union.anon* %Tab41 to float**
  %57 = load float*, float** %TFloat42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds float, float* %57, i64 %idxprom40
  %58 = load float, float* %arrayidx43, align 4, !tbaa !24
  %59 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom44 = sext i32 %59 to i64
  %arrayidx45 = getelementptr inbounds [128 x float], [128 x float]* %Out, i32 0, i64 %idxprom44
  store float %58, float* %arrayidx45, align 4, !tbaa !24
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %60 = load i32, i32* %t, align 4, !tbaa !6
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %t, align 4, !tbaa !6
  br label %for.cond.36

for.end.47:                                       ; preds = %for.cond.36
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end
  %61 = load i32 (float*, float*, i8*)*, i32 (float*, float*, i8*)** %Sampler.addr, align 8, !tbaa !1
  %arraydecay49 = getelementptr inbounds [9 x float], [9 x float]* %In, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [128 x float], [128 x float]* %Out, i32 0, i32 0
  %62 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %call51 = call i32 %61(float* %arraydecay49, float* %arraydecay50, i8* %62) #6
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.48
  %63 = load i32, i32* %dwFlags.addr, align 4, !tbaa !6
  %and = and i32 %63, 16777216
  %tobool54 = icmp ne i32 %and, 0
  br i1 %tobool54, label %if.end.76, label %if.then.55

if.then.55:                                       ; preds = %if.end.53
  %64 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab56 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %64, i32 0, i32 0
  %TFloat57 = bitcast %union.anon* %Tab56 to float**
  %65 = load float*, float** %TFloat57, align 8, !tbaa !1
  %cmp58 = icmp ne float* %65, null
  br i1 %cmp58, label %if.then.60, label %if.end.75

if.then.60:                                       ; preds = %if.then.55
  store i32 0, i32* %t, align 4, !tbaa !6
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.72, %if.then.60
  %66 = load i32, i32* %t, align 4, !tbaa !6
  %67 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %cmp62 = icmp slt i32 %66, %67
  br i1 %cmp62, label %for.body.64, label %for.end.74

for.body.64:                                      ; preds = %for.cond.61
  %68 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds [128 x float], [128 x float]* %Out, i32 0, i64 %idxprom65
  %69 = load float, float* %arrayidx66, align 4, !tbaa !24
  %70 = load i32, i32* %index, align 4, !tbaa !6
  %71 = load i32, i32* %t, align 4, !tbaa !6
  %add67 = add nsw i32 %70, %71
  %idxprom68 = sext i32 %add67 to i64
  %72 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %clut, align 8, !tbaa !1
  %Tab69 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %72, i32 0, i32 0
  %TFloat70 = bitcast %union.anon* %Tab69 to float**
  %73 = load float*, float** %TFloat70, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds float, float* %73, i64 %idxprom68
  store float %69, float* %arrayidx71, align 4, !tbaa !24
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.64
  %74 = load i32, i32* %t, align 4, !tbaa !6
  %inc73 = add nsw i32 %74, 1
  store i32 %inc73, i32* %t, align 4, !tbaa !6
  br label %for.cond.61

for.end.74:                                       ; preds = %for.cond.61
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %if.then.55
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.53
  %75 = load i32, i32* %nOutputs, align 4, !tbaa !6
  %76 = load i32, i32* %index, align 4, !tbaa !6
  %add77 = add nsw i32 %76, %75
  store i32 %add77, i32* %index, align 4, !tbaa !6
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.76
  %77 = load i32, i32* %i, align 4, !tbaa !6
  %inc79 = add nsw i32 %77, 1
  store i32 %inc79, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.80, %if.then.52, %if.then.16, %if.then.13, %if.then.10, %if.then.7, %if.then
  %78 = bitcast %struct._cmsStageCLutData** %clut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast [128 x float]* %Out to i8*
  call void @llvm.lifetime.end(i64 512, i8* %79) #1
  %80 = bitcast [9 x float]* %In to i8*
  call void @llvm.lifetime.end(i64 36, i8* %80) #1
  %81 = bitcast i32** %nSamples to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %nOutputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %nInputs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @cmsSliceSpace16(i32 %nInputs, i32* %clutPoints, i32 (i16*, i16*, i8*)* %Sampler, i8* %Cargo) #0 {
entry:
  %retval = alloca i32, align 4
  %nInputs.addr = alloca i32, align 4
  %clutPoints.addr = alloca i32*, align 8
  %Sampler.addr = alloca i32 (i16*, i16*, i8*)*, align 8
  %Cargo.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %nTotalPoints = alloca i32, align 4
  %rest = alloca i32, align 4
  %In = alloca [16 x i16], align 16
  %cleanup.dest.slot = alloca i32
  %Colorant = alloca i32, align 4
  store i32 %nInputs, i32* %nInputs.addr, align 4, !tbaa !6
  store i32* %clutPoints, i32** %clutPoints.addr, align 8, !tbaa !1
  store i32 (i16*, i16*, i8*)* %Sampler, i32 (i16*, i16*, i8*)** %Sampler.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [16 x i16]* %In to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %cmp = icmp uge i32 %5, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %7 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %call = call i32 @CubeSize(i32* %6, i32 %7) #6
  store i32 %call, i32* %nTotalPoints, align 4, !tbaa !6
  %8 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end.3
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %10 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %11, i32* %rest, align 4, !tbaa !6
  %12 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %t, align 4, !tbaa !6
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %t, align 4, !tbaa !6
  %cmp6 = icmp sge i32 %13, 0
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %14 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %rest, align 4, !tbaa !6
  %16 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %rem = urem i32 %15, %18
  store i32 %rem, i32* %Colorant, align 4, !tbaa !6
  %19 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom8 = sext i32 %19 to i64
  %20 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4, !tbaa !6
  %22 = load i32, i32* %rest, align 4, !tbaa !6
  %div = udiv i32 %22, %21
  store i32 %div, i32* %rest, align 4, !tbaa !6
  %23 = load i32, i32* %Colorant, align 4, !tbaa !6
  %conv = uitofp i32 %23 to double
  %24 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom10 = sext i32 %24 to i64
  %25 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !6
  %call12 = call zeroext i16 @_cmsQuantizeVal(double %conv, i32 %26) #6
  %27 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds [16 x i16], [16 x i16]* %In, i32 0, i64 %idxprom13
  store i16 %call12, i16* %arrayidx14, align 2, !tbaa !34
  %28 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %29 = load i32, i32* %t, align 4, !tbaa !6
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %t, align 4, !tbaa !6
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %30 = load i32 (i16*, i16*, i8*)*, i32 (i16*, i16*, i8*)** %Sampler.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %In, i32 0, i32 0
  %31 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %call15 = call i32 %30(i16* %arraydecay, i16* null, i8* %31) #6
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %for.end
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %32 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.19, %if.then.16, %if.then.2, %if.then
  %33 = bitcast [16 x i16]* %In to i8*
  call void @llvm.lifetime.end(i64 32, i8* %33) #1
  %34 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @cmsSliceSpaceFloat(i32 %nInputs, i32* %clutPoints, i32 (float*, float*, i8*)* %Sampler, i8* %Cargo) #0 {
entry:
  %retval = alloca i32, align 4
  %nInputs.addr = alloca i32, align 4
  %clutPoints.addr = alloca i32*, align 8
  %Sampler.addr = alloca i32 (float*, float*, i8*)*, align 8
  %Cargo.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %nTotalPoints = alloca i32, align 4
  %rest = alloca i32, align 4
  %In = alloca [16 x float], align 16
  %cleanup.dest.slot = alloca i32
  %Colorant = alloca i32, align 4
  store i32 %nInputs, i32* %nInputs.addr, align 4, !tbaa !6
  store i32* %clutPoints, i32** %clutPoints.addr, align 8, !tbaa !1
  store i32 (float*, float*, i8*)* %Sampler, i32 (float*, float*, i8*)** %Sampler.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast [16 x float]* %In to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %cmp = icmp uge i32 %5, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %7 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %call = call i32 @CubeSize(i32* %6, i32 %7) #6
  store i32 %call, i32* %nTotalPoints, align 4, !tbaa !6
  %8 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end.3
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %10 = load i32, i32* %nTotalPoints, align 4, !tbaa !6
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %11, i32* %rest, align 4, !tbaa !6
  %12 = load i32, i32* %nInputs.addr, align 4, !tbaa !6
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %t, align 4, !tbaa !6
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %t, align 4, !tbaa !6
  %cmp6 = icmp sge i32 %13, 0
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %14 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %rest, align 4, !tbaa !6
  %16 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %rem = urem i32 %15, %18
  store i32 %rem, i32* %Colorant, align 4, !tbaa !6
  %19 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom8 = sext i32 %19 to i64
  %20 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4, !tbaa !6
  %22 = load i32, i32* %rest, align 4, !tbaa !6
  %div = udiv i32 %22, %21
  store i32 %div, i32* %rest, align 4, !tbaa !6
  %23 = load i32, i32* %Colorant, align 4, !tbaa !6
  %conv = uitofp i32 %23 to double
  %24 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom10 = sext i32 %24 to i64
  %25 = load i32*, i32** %clutPoints.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !6
  %call12 = call zeroext i16 @_cmsQuantizeVal(double %conv, i32 %26) #6
  %conv13 = zext i16 %call12 to i32
  %conv14 = sitofp i32 %conv13 to double
  %div15 = fdiv double %conv14, 6.553500e+04
  %conv16 = fptrunc double %div15 to float
  %27 = load i32, i32* %t, align 4, !tbaa !6
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %In, i32 0, i64 %idxprom17
  store float %conv16, float* %arrayidx18, align 4, !tbaa !24
  %28 = bitcast i32* %Colorant to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %29 = load i32, i32* %t, align 4, !tbaa !6
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %t, align 4, !tbaa !6
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %30 = load i32 (float*, float*, i8*)*, i32 (float*, float*, i8*)** %Sampler.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %In, i32 0, i32 0
  %31 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %call19 = call i32 %30(float* %arraydecay, float* null, i8* %31) #6
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %for.end
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %32 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.23, %if.then.20, %if.then.2, %if.then
  %33 = bitcast [16 x float]* %In to i8*
  call void @llvm.lifetime.end(i64 64, i8* %33) #1
  %34 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %nTotalPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %0, i32 2016570400, i32 3, i32 3, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateLab2XYZ, i8* (%struct._cmsStage_struct*)* null, void (%struct._cmsStage_struct*)* null, i8* null) #6
  ret %struct._cmsStage_struct* %call
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateLab2XYZ(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %XYZadj = alloca double, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast double* %XYZadj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store double 0x3FFFFFE000000000, double* %XYZadj, align 8, !tbaa !28
  %3 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 1.000000e+02
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %mul, double* %L, align 8, !tbaa !41
  %5 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 1
  %6 = load float, float* %arrayidx1, align 4, !tbaa !24
  %conv2 = fpext float %6 to double
  %mul3 = fmul double %conv2, 2.550000e+02
  %sub = fsub double %mul3, 1.280000e+02
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %sub, double* %a, align 8, !tbaa !43
  %7 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %7, i64 2
  %8 = load float, float* %arrayidx4, align 4, !tbaa !24
  %conv5 = fpext float %8 to double
  %mul6 = fmul double %conv5, 2.550000e+02
  %sub7 = fsub double %mul6, 1.280000e+02
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %sub7, double* %b, align 8, !tbaa !44
  call void @cmsLab2XYZ(%struct.cmsCIEXYZ* null, %struct.cmsCIEXYZ* %XYZ, %struct.cmsCIELab* %Lab) #6
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  %9 = load double, double* %X, align 8, !tbaa !41
  %div = fdiv double %9, 0x3FFFFFE000000000
  %conv8 = fptrunc double %div to float
  %10 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 0
  store float %conv8, float* %arrayidx9, align 4, !tbaa !24
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  %11 = load double, double* %Y, align 8, !tbaa !43
  %div10 = fdiv double %11, 0x3FFFFFE000000000
  %conv11 = fptrunc double %div10 to float
  %12 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %12, i64 1
  store float %conv11, float* %arrayidx12, align 4, !tbaa !24
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  %13 = load double, double* %Z, align 8, !tbaa !44
  %div13 = fdiv double %13, 0x3FFFFFE000000000
  %conv14 = fptrunc double %div13 to float
  %14 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %14, i64 2
  store float %conv14, float* %arrayidx15, align 4, !tbaa !24
  %15 = bitcast double* %XYZadj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #1
  %17 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4curves(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %LabTable = alloca [3 x %struct._cms_curve_struct*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [3 x %struct._cms_curve_struct*]* %LabTable to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %4, i32 258, i16* null) #6
  %arrayidx = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 0
  store %struct._cms_curve_struct* %call, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %5, i32 258, i16* null) #6
  %arrayidx2 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 1
  store %struct._cms_curve_struct* %call1, %struct._cms_curve_struct** %arrayidx2, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call3 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %6, i32 258, i16* null) #6
  %arrayidx4 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 2
  store %struct._cms_curve_struct* %call3, %struct._cms_curve_struct** %arrayidx4, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %7 = load i32, i32* %j, align 4, !tbaa !6
  %cmp = icmp slt i32 %7, 3
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 %idxprom
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx5, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cms_curve_struct* %9, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i32 0
  call void @cmsFreeToneCurveTriple(%struct._cms_curve_struct** %arraydecay) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %10, 257
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %11 = load i32, i32* %i, align 4, !tbaa !6
  %mul = mul nsw i32 %11, 65535
  %add = add nsw i32 %mul, 128
  %shr = ashr i32 %add, 8
  %conv = trunc i32 %shr to i16
  %12 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 %idxprom11
  %14 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx12, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %14, i32 0, i32 6
  %15 = load i16*, i16** %Table16, align 8, !tbaa !45
  %arrayidx13 = getelementptr inbounds i16, i16* %15, i64 %idxprom10
  store i16 %conv, i16* %arrayidx13, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %16 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %17 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 %idxprom14
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx15, align 8, !tbaa !1
  %Table1616 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %18, i32 0, i32 6
  %19 = load i16*, i16** %Table1616, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds i16, i16* %19, i64 257
  store i16 -1, i16* %arrayidx17, align 2, !tbaa !34
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %20 = load i32, i32* %j, align 4, !tbaa !6
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i32 0
  %call22 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %21, i32 3, %struct._cms_curve_struct** %arraydecay21) #6
  store %struct._cmsStage_struct* %call22, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i32 0
  call void @cmsFreeToneCurveTriple(%struct._cms_curve_struct** %arraydecay23) #6
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp24 = icmp eq %struct._cmsStage_struct* %22, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end.20
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %for.end.20
  %23 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %23, i32 0, i32 2
  store i32 840971296, i32* %Implements, align 4, !tbaa !11
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %24, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26, %if.then
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast [3 x %struct._cms_curve_struct*]* %LabTable to i8*
  call void @llvm.lifetime.end(i64 24, i8* %27) #1
  %28 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %29
}

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct*, i32, i16*) #2

declare void @cmsFreeToneCurveTriple(%struct._cms_curve_struct**) #2

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocLabV2ToV4(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageAllocLabV2ToV4.V2ToV4, i32 0, i32 0), double* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 840971296, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocLabV4ToV2(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageAllocLabV4ToV2.V4ToV2, i32 0, i32 0), double* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 874525216, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageNormalizeFromLabFloat(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageNormalizeFromLabFloat.a1, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @_cmsStageNormalizeFromLabFloat.o1, i32 0, i32 0)) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 1681026080, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageNormalizeFromXyzFloat(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageNormalizeFromXyzFloat.a1, i32 0, i32 0), double* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 1681029152, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageNormalizeToLabFloat(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageNormalizeToLabFloat.a1, i32 0, i32 0), double* getelementptr inbounds ([3 x double], [3 x double]* @_cmsStageNormalizeToLabFloat.o1, i32 0, i32 0)) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 1815241760, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageNormalizeToXyzFloat(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %1, i32 3, i32 3, double* getelementptr inbounds ([9 x double], [9 x double]* @_cmsStageNormalizeToXyzFloat.a1, i32 0, i32 0), double* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 2
  store i32 2016568352, i32* %Implements, align 4, !tbaa !11
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %0, i32 1815246880, i32 3, i32 3, void (float*, float*, %struct._cmsStage_struct*)* @EvaluateXYZ2Lab, i8* (%struct._cmsStage_struct*)* null, void (%struct._cmsStage_struct*)* null, i8* null) #6
  ret %struct._cmsStage_struct* %call
}

; Function Attrs: nounwind uwtable
define internal void @EvaluateXYZ2Lab(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  %XYZ = alloca %struct.cmsCIEXYZ, align 8
  %XYZadj = alloca double, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast double* %XYZadj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store double 0x3FFFFFE000000000, double* %XYZadj, align 8, !tbaa !28
  %3 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 0
  %4 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 0x3FFFFFE000000000
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 0
  store double %mul, double* %X, align 8, !tbaa !41
  %5 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 1
  %6 = load float, float* %arrayidx1, align 4, !tbaa !24
  %conv2 = fpext float %6 to double
  %mul3 = fmul double %conv2, 0x3FFFFFE000000000
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 1
  store double %mul3, double* %Y, align 8, !tbaa !43
  %7 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %7, i64 2
  %8 = load float, float* %arrayidx4, align 4, !tbaa !24
  %conv5 = fpext float %8 to double
  %mul6 = fmul double %conv5, 0x3FFFFFE000000000
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %XYZ, i32 0, i32 2
  store double %mul6, double* %Z, align 8, !tbaa !44
  call void @cmsXYZ2Lab(%struct.cmsCIEXYZ* null, %struct.cmsCIELab* %Lab, %struct.cmsCIEXYZ* %XYZ) #6
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %9 = load double, double* %L, align 8, !tbaa !41
  %div = fdiv double %9, 1.000000e+02
  %conv7 = fptrunc double %div to float
  %10 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %10, i64 0
  store float %conv7, float* %arrayidx8, align 4, !tbaa !24
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %11 = load double, double* %a, align 8, !tbaa !43
  %add = fadd double %11, 1.280000e+02
  %div9 = fdiv double %add, 2.550000e+02
  %conv10 = fptrunc double %div9 to float
  %12 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %12, i64 1
  store float %conv10, float* %arrayidx11, align 4, !tbaa !24
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %13 = load double, double* %b, align 8, !tbaa !44
  %add12 = fadd double %13, 1.280000e+02
  %div13 = fdiv double %add12, 2.550000e+02
  %conv14 = fptrunc double %div13 to float
  %14 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %14, i64 2
  store float %conv14, float* %arrayidx15, align 4, !tbaa !24
  %15 = bitcast double* %XYZadj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.cmsCIEXYZ* %XYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %16) #1
  %17 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocLabPrelin(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %LabTable = alloca [3 x %struct._cms_curve_struct*], align 16
  %Params = alloca [1 x double], align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast [3 x %struct._cms_curve_struct*]* %LabTable to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast [1 x double]* %Params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [1 x double]* %Params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([1 x double]* @_cmsStageAllocLabPrelin.Params to i8*), i64 8, i32 8, i1 false)
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsBuildGamma(%struct._cmsContext_struct* %3, double 1.000000e+00) #6
  %arrayidx = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 0
  store %struct._cms_curve_struct* %call, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1 x double], [1 x double]* %Params, i32 0, i32 0
  %call1 = call %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %4, i32 108, double* %arraydecay) #6
  %arrayidx2 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 1
  store %struct._cms_curve_struct* %call1, %struct._cms_curve_struct** %arrayidx2, align 8, !tbaa !1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x double], [1 x double]* %Params, i32 0, i32 0
  %call4 = call %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %5, i32 108, double* %arraydecay3) #6
  %arrayidx5 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i64 2
  store %struct._cms_curve_struct* %call4, %struct._cms_curve_struct** %arrayidx5, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay6 = getelementptr inbounds [3 x %struct._cms_curve_struct*], [3 x %struct._cms_curve_struct*]* %LabTable, i32 0, i32 0
  %call7 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %6, i32 3, %struct._cms_curve_struct** %arraydecay6) #6
  %7 = bitcast [1 x double]* %Params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = bitcast [3 x %struct._cms_curve_struct*]* %LabTable to i8*
  call void @llvm.lifetime.end(i64 24, i8* %8) #1
  ret %struct._cmsStage_struct* %call7
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct*, i32, double*) #2

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @cmsStageInputChannels(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %InputChannels, align 4, !tbaa !12
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @cmsStageOutputChannels(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 4
  %1 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @cmsStageType(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %Type, align 4, !tbaa !10
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i8* @cmsStageData(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 8
  %1 = load i8*, i8** %Data, align 8, !tbaa !17
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %0, i32 0, i32 9
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  ret %struct._cmsStage_struct* %1
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca %struct._cmsStage_struct*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %2, i32 0, i32 0
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %Type, align 4, !tbaa !10
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %EvalPtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %10, i32 0, i32 5
  %11 = load void (float*, float*, %struct._cmsStage_struct*)*, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr, align 8, !tbaa !14
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %DupElemPtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %12, i32 0, i32 6
  %13 = load i8* (%struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)** %DupElemPtr, align 8, !tbaa !15
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %FreePtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %14, i32 0, i32 7
  %15 = load void (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)** %FreePtr, align 8, !tbaa !16
  %call = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %3, i32 %5, i32 %7, i32 %9, void (float*, float*, %struct._cmsStage_struct*)* %11, i8* (%struct._cmsStage_struct*)* %13, void (%struct._cmsStage_struct*)* %15, i8* null) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsStage_struct* %16, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 2
  %18 = load i32, i32* %Implements, align 4, !tbaa !11
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Implements4 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 2
  store i32 %18, i32* %Implements4, align 4, !tbaa !11
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %DupElemPtr5 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %20, i32 0, i32 6
  %21 = load i8* (%struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)** %DupElemPtr5, align 8, !tbaa !15
  %tobool = icmp ne i8* (%struct._cmsStage_struct*)* %21, null
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.3
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %DupElemPtr7 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %22, i32 0, i32 6
  %23 = load i8* (%struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)** %DupElemPtr7, align 8, !tbaa !15
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %call8 = call i8* %23(%struct._cmsStage_struct* %24) #6
  %25 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %25, i32 0, i32 8
  store i8* %call8, i8** %Data, align 8, !tbaa !17
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data9 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %26, i32 0, i32 8
  %27 = load i8*, i8** %Data9, align 8, !tbaa !17
  %cmp10 = icmp eq i8* %27, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  %28 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %28) #6
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.6
  br label %if.end.14

if.else:                                          ; preds = %if.end.3
  %29 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %Data13 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %29, i32 0, i32 8
  store i8* null, i8** %Data13, align 8, !tbaa !17
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.12
  %30 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %30, %struct._cmsStage_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.11, %if.then.2, %if.then
  %31 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %retval
  ret %struct._cmsStage_struct* %32
}

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %ContextID, i32 %InputChannels, i32 %OutputChannels) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %InputChannels.addr = alloca i32, align 4
  %OutputChannels.addr = alloca i32, align 4
  %NewLUT = alloca %struct._cmsPipeline_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %InputChannels, i32* %InputChannels.addr, align 4, !tbaa !6
  store i32 %OutputChannels, i32* %OutputChannels.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsPipeline_struct** %NewLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %InputChannels.addr, align 4, !tbaa !6
  %cmp = icmp uge i32 %1, 16
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %OutputChannels.addr, align 4, !tbaa !6
  %cmp1 = icmp uge i32 %2, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %3, i32 72) #6
  %4 = bitcast i8* %call to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %4, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsPipeline_struct* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %6 = load i32, i32* %InputChannels.addr, align 4, !tbaa !6
  %7 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %InputChannels5 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %7, i32 0, i32 1
  store i32 %6, i32* %InputChannels5, align 4, !tbaa !47
  %8 = load i32, i32* %OutputChannels.addr, align 4, !tbaa !6
  %9 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %OutputChannels6 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %9, i32 0, i32 2
  store i32 %8, i32* %OutputChannels6, align 4, !tbaa !48
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 4
  store void (i16*, i16*, i8*)* @_LUTeval16, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !49
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %EvalFloatFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 5
  store void (float*, float*, i8*)* @_LUTevalFloat, void (float*, float*, i8*)** %EvalFloatFn, align 8, !tbaa !50
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %DupDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 7
  store i8* (%struct._cmsContext_struct*, i8*)* null, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn, align 8, !tbaa !51
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %FreeDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 6
  store void (%struct._cmsContext_struct*, i8*)* null, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn, align 8, !tbaa !52
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %15 = bitcast %struct._cmsPipeline_struct* %14 to i8*
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  store i8* %15, i8** %Data, align 8, !tbaa !53
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %ContextID7 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %18, i32 0, i32 8
  store %struct._cmsContext_struct* %17, %struct._cmsContext_struct** %ContextID7, align 8, !tbaa !54
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  call void @BlessLUT(%struct._cmsPipeline_struct* %19) #6
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %20, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %21 = bitcast %struct._cmsPipeline_struct** %NewLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %22
}

; Function Attrs: nounwind uwtable
define internal void @_LUTeval16(i16* %In, i16* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %lut = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %Storage = alloca [2 x [128 x float]], align 16
  %Phase = alloca i32, align 4
  %NextPhase = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %2, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %3 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x [128 x float]]* %Storage to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %4) #1
  %5 = bitcast i32* %Phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %Phase, align 4, !tbaa !6
  %6 = bitcast i32* %NextPhase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %8 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx, i32 0, i64 0
  %9 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %InputChannels, align 4, !tbaa !47
  call void @From16ToFloat(i16* %7, float* %arrayidx1, i32 %10) #6
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 0
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %12, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %13, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %Phase, align 4, !tbaa !6
  %xor = xor i32 %14, 1
  store i32 %xor, i32* %NextPhase, align 4, !tbaa !6
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %EvalPtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %15, i32 0, i32 5
  %16 = load void (float*, float*, %struct._cmsStage_struct*)*, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr, align 8, !tbaa !14
  %17 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom2 = sext i32 %17 to i64
  %arrayidx3 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx3, i32 0, i64 0
  %18 = load i32, i32* %NextPhase, align 4, !tbaa !6
  %idxprom5 = sext i32 %18 to i64
  %arrayidx6 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx6, i32 0, i64 0
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  call void %16(float* %arrayidx4, float* %arrayidx7, %struct._cmsStage_struct* %19) #6
  %20 = load i32, i32* %NextPhase, align 4, !tbaa !6
  store i32 %20, i32* %Phase, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %21, i32 0, i32 9
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %22, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom8 = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx9, i32 0, i64 0
  %24 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %25, i32 0, i32 2
  %26 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  call void @FromFloatTo16(float* %arrayidx10, i16* %24, i32 %26) #6
  %27 = bitcast i32* %NextPhase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %Phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast [2 x [128 x float]]* %Storage to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %29) #1
  %30 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_LUTevalFloat(float* %In, float* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %D.addr = alloca i8*, align 8
  %lut = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %Storage = alloca [2 x [128 x float]], align 16
  %Phase = alloca i32, align 4
  %NextPhase = alloca i32, align 4
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %2, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %3 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [2 x [128 x float]]* %Storage to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %4) #1
  %5 = bitcast i32* %Phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %Phase, align 4, !tbaa !6
  %6 = bitcast i32* %NextPhase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx, i32 0, i64 0
  %8 = bitcast float* %arrayidx1 to i8*
  %9 = load float*, float** %In.addr, align 8, !tbaa !1
  %10 = bitcast float* %9 to i8*
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %InputChannels, align 4, !tbaa !47
  %conv = zext i32 %12 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @memmove(i8* %8, i8* %10, i64 %mul) #7
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 0
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %14, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %15, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %Phase, align 4, !tbaa !6
  %xor = xor i32 %16, 1
  store i32 %xor, i32* %NextPhase, align 4, !tbaa !6
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %EvalPtr = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 5
  %18 = load void (float*, float*, %struct._cmsStage_struct*)*, void (float*, float*, %struct._cmsStage_struct*)** %EvalPtr, align 8, !tbaa !14
  %19 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom3 = sext i32 %19 to i64
  %arrayidx4 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx4, i32 0, i64 0
  %20 = load i32, i32* %NextPhase, align 4, !tbaa !6
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx7, i32 0, i64 0
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  call void %18(float* %arrayidx5, float* %arrayidx8, %struct._cmsStage_struct* %21) #6
  %22 = load i32, i32* %NextPhase, align 4, !tbaa !6
  store i32 %22, i32* %Phase, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %23, i32 0, i32 9
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %24, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load float*, float** %Out.addr, align 8, !tbaa !1
  %26 = bitcast float* %25 to i8*
  %27 = load i32, i32* %Phase, align 4, !tbaa !6
  %idxprom9 = sext i32 %27 to i64
  %arrayidx10 = getelementptr inbounds [2 x [128 x float]], [2 x [128 x float]]* %Storage, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [128 x float], [128 x float]* %arrayidx10, i32 0, i64 0
  %28 = bitcast float* %arrayidx11 to i8*
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %29, i32 0, i32 2
  %30 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  %conv12 = zext i32 %30 to i64
  %mul13 = mul i64 %conv12, 4
  %call14 = call i8* @memmove(i8* %26, i8* %28, i64 %mul13) #7
  %31 = bitcast i32* %NextPhase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %Phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast [2 x [128 x float]]* %Storage to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %33) #1
  %34 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct._cmsPipeline_struct** %lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BlessLUT(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %First = alloca %struct._cmsStage_struct*, align 8
  %Last = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %0, i32 0, i32 0
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  %cmp = icmp ne %struct._cmsStage_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._cmsStage_struct** %First to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %Last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %4) #6
  store %struct._cmsStage_struct* %call, %struct._cmsStage_struct** %First, align 8, !tbaa !1
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %call1 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct* %5) #6
  store %struct._cmsStage_struct* %call1, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %First, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cmsStage_struct* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %First, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 3
  %8 = load i32, i32* %InputChannels, align 4, !tbaa !12
  %9 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %9, i32 0, i32 1
  store i32 %8, i32* %InputChannels4, align 4, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  %cmp5 = icmp ne %struct._cmsStage_struct* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %OutputChannels, align 4, !tbaa !13
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %OutputChannels7 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 2
  store i32 %12, i32* %OutputChannels7, align 4, !tbaa !48
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = bitcast %struct._cmsStage_struct** %Last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct._cmsStage_struct** %First to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @cmsGetPipelineContextID(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsPipeline_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1358, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.cmsGetPipelineContextID, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 8
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !54
  ret %struct._cmsContext_struct* %3
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineInputChannels(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsPipeline_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1364, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.cmsPipelineInputChannels, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %InputChannels, align 4, !tbaa !47
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineOutputChannels(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsPipeline_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1370, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.cmsPipelineOutputChannels, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 2
  %3 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @cmsPipelineFree(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %Next = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsStage_struct** %Next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %3, i32 0, i32 0
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %4, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsStage_struct* %5, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next2 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 9
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next2, align 8, !tbaa !20
  store %struct._cmsStage_struct* %7, %struct._cmsStage_struct** %Next, align 8, !tbaa !1
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %8) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !1
  store %struct._cmsStage_struct* %9, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %FreeDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 6
  %11 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn, align 8, !tbaa !52
  %tobool = icmp ne void (%struct._cmsContext_struct*, i8*)* %11, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %for.end
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %FreeDataFn4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 6
  %13 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn4, align 8, !tbaa !52
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %14, i32 0, i32 8
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !54
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  %17 = load i8*, i8** %Data, align 8, !tbaa !53
  call void %13(%struct._cmsContext_struct* %15, i8* %17) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %for.end
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %18, i32 0, i32 8
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !54
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %21 = bitcast %struct._cmsPipeline_struct* %20 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %19, i8* %21) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %22 = bitcast %struct._cmsStage_struct** %Next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
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

; Function Attrs: nounwind uwtable
define void @cmsPipelineEval16(i16* %In, i16* %Out, %struct._cmsPipeline_struct* %lut) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsPipeline_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1398, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.cmsPipelineEval16, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 4
  %3 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !49
  %4 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %5 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %6, i32 0, i32 3
  %7 = load i8*, i8** %Data, align 8, !tbaa !53
  call void %3(i16* %4, i16* %5, i8* %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsPipelineEvalFloat(float* %In, float* %Out, %struct._cmsPipeline_struct* %lut) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsPipeline_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1406, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__.cmsPipelineEvalFloat, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %EvalFloatFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 5
  %3 = load void (float*, float*, i8*)*, void (float*, float*, i8*)** %EvalFloatFn, align 8, !tbaa !50
  %4 = load float*, float** %In.addr, align 8, !tbaa !1
  %5 = load float*, float** %Out.addr, align 8, !tbaa !1
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %7 = bitcast %struct._cmsPipeline_struct* %6 to i8*
  call void %3(float* %4, float* %5, i8* %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %NewLUT = alloca %struct._cmsPipeline_struct*, align 8
  %NewMPE = alloca %struct._cmsStage_struct*, align 8
  %Anterior = alloca %struct._cmsStage_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %First = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %NewLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %3 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %First to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %First, align 4, !tbaa !6
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %6, i32 0, i32 8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !54
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %InputChannels, align 4, !tbaa !47
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 2
  %11 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  %call = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %7, i32 %9, i32 %11) #6
  store %struct._cmsPipeline_struct* %call, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsPipeline_struct* %12, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 0
  %14 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %14, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp4 = icmp ne %struct._cmsStage_struct* %15, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call5 = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %16) #6
  store %struct._cmsStage_struct* %call5, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cmsStage_struct* %17, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %18) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %for.body
  %19 = load i32, i32* %First, align 4, !tbaa !6
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.8
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %Elements10 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %21, i32 0, i32 0
  store %struct._cmsStage_struct* %20, %struct._cmsStage_struct** %Elements10, align 8, !tbaa !18
  store i32 0, i32* %First, align 4, !tbaa !6
  br label %if.end.11

if.else:                                          ; preds = %if.end.8
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  %23 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %23, i32 0, i32 9
  store %struct._cmsStage_struct* %22, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewMPE, align 8, !tbaa !1
  store %struct._cmsStage_struct* %24, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %25 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next12 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %25, i32 0, i32 9
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next12, align 8, !tbaa !20
  store %struct._cmsStage_struct* %26, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %27, i32 0, i32 4
  %28 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !49
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %Eval16Fn13 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %29, i32 0, i32 4
  store void (i16*, i16*, i8*)* %28, void (i16*, i16*, i8*)** %Eval16Fn13, align 8, !tbaa !49
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %EvalFloatFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %30, i32 0, i32 5
  %31 = load void (float*, float*, i8*)*, void (float*, float*, i8*)** %EvalFloatFn, align 8, !tbaa !50
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %EvalFloatFn14 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %32, i32 0, i32 5
  store void (float*, float*, i8*)* %31, void (float*, float*, i8*)** %EvalFloatFn14, align 8, !tbaa !50
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %DupDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %33, i32 0, i32 7
  %34 = load i8* (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn, align 8, !tbaa !51
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %DupDataFn15 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %35, i32 0, i32 7
  store i8* (%struct._cmsContext_struct*, i8*)* %34, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn15, align 8, !tbaa !51
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %FreeDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %36, i32 0, i32 6
  %37 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn, align 8, !tbaa !52
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %FreeDataFn16 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %38, i32 0, i32 6
  store void (%struct._cmsContext_struct*, i8*)* %37, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn16, align 8, !tbaa !52
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %DupDataFn17 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %39, i32 0, i32 7
  %40 = load i8* (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn17, align 8, !tbaa !51
  %cmp18 = icmp ne i8* (%struct._cmsContext_struct*, i8*)* %40, null
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %for.end
  %41 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %DupDataFn20 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %41, i32 0, i32 7
  %42 = load i8* (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn20, align 8, !tbaa !51
  %43 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %ContextID21 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %43, i32 0, i32 8
  %44 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID21, align 8, !tbaa !54
  %45 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %45, i32 0, i32 3
  %46 = load i8*, i8** %Data, align 8, !tbaa !53
  %call22 = call i8* %42(%struct._cmsContext_struct* %44, i8* %46) #6
  %47 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %Data23 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %47, i32 0, i32 3
  store i8* %call22, i8** %Data23, align 8, !tbaa !53
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %for.end
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %SaveAs8Bits = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %48, i32 0, i32 9
  %49 = load i32, i32* %SaveAs8Bits, align 4, !tbaa !55
  %50 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  %SaveAs8Bits25 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %50, i32 0, i32 9
  store i32 %49, i32* %SaveAs8Bits25, align 4, !tbaa !55
  %51 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  call void @BlessLUT(%struct._cmsPipeline_struct* %51) #6
  %52 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %NewLUT, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %52, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.7, %if.then.2, %if.then
  %53 = bitcast i32* %First to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast %struct._cmsStage_struct** %NewMPE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast %struct._cmsPipeline_struct** %NewLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %58
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %lut, i32 %loc, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca i32, align 4
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %loc.addr = alloca i32, align 4
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Anterior = alloca %struct._cmsStage_struct*, align 8
  %pt = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  store i32 %loc, i32* %loc.addr, align 4, !tbaa !5
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %1 = bitcast %struct._cmsStage_struct** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPipeline_struct* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsStage_struct* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %loc.addr, align 4, !tbaa !5
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 0
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 9
  store %struct._cmsStage_struct* %6, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %9 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements2 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %9, i32 0, i32 0
  store %struct._cmsStage_struct* %8, %struct._cmsStage_struct** %Elements2, align 8, !tbaa !18
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 0
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements4, align 8, !tbaa !18
  %cmp5 = icmp eq %struct._cmsStage_struct* %11, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %sw.bb.3
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements7 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 0
  store %struct._cmsStage_struct* %12, %struct._cmsStage_struct** %Elements7, align 8, !tbaa !18
  br label %if.end.13

if.else:                                          ; preds = %sw.bb.3
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements8 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements8, align 8, !tbaa !18
  store %struct._cmsStage_struct* %15, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  %cmp9 = icmp ne %struct._cmsStage_struct* %16, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  store %struct._cmsStage_struct* %17, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  %Next10 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %18, i32 0, i32 9
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next10, align 8, !tbaa !20
  store %struct._cmsStage_struct* %19, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %Next11 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %21, i32 0, i32 9
  store %struct._cmsStage_struct* %20, %struct._cmsStage_struct** %Next11, align 8, !tbaa !20
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Next12 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %22, i32 0, i32 9
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Next12, align 8, !tbaa !20
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then.6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.13, %sw.bb
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  call void @BlessLUT(%struct._cmsPipeline_struct* %23) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %24 = bitcast %struct._cmsStage_struct** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @cmsPipelineUnlinkStage(%struct._cmsPipeline_struct* %lut, i32 %loc, %struct._cmsStage_struct** %mpe) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %loc.addr = alloca i32, align 4
  %mpe.addr = alloca %struct._cmsStage_struct**, align 8
  %Anterior = alloca %struct._cmsStage_struct*, align 8
  %pt = alloca %struct._cmsStage_struct*, align 8
  %Last = alloca %struct._cmsStage_struct*, align 8
  %Unlinked = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %elem = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  store i32 %loc, i32* %loc.addr, align 4, !tbaa !5
  store %struct._cmsStage_struct** %mpe, %struct._cmsStage_struct*** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsStage_struct** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsStage_struct** %Last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsStage_struct** %Unlinked to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Unlinked, align 8, !tbaa !1
  %4 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %4, i32 0, i32 0
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  %cmp = icmp eq %struct._cmsStage_struct* %5, null
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %6 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %mpe.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._cmsStage_struct** %6, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %7 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %mpe.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %7, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %entry
  %8 = load i32, i32* %loc.addr, align 4, !tbaa !5
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end.2
  %9 = bitcast %struct._cmsStage_struct** %elem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements3 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 0
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements3, align 8, !tbaa !18
  store %struct._cmsStage_struct* %11, %struct._cmsStage_struct** %elem, align 8, !tbaa !1
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %elem, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %12, i32 0, i32 9
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %14, i32 0, i32 0
  store %struct._cmsStage_struct* %13, %struct._cmsStage_struct** %Elements4, align 8, !tbaa !18
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %elem, align 8, !tbaa !1
  %Next5 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %15, i32 0, i32 9
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Next5, align 8, !tbaa !20
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %elem, align 8, !tbaa !1
  store %struct._cmsStage_struct* %16, %struct._cmsStage_struct** %Unlinked, align 8, !tbaa !1
  %17 = bitcast %struct._cmsStage_struct** %elem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end.2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements7 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %18, i32 0, i32 0
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements7, align 8, !tbaa !18
  store %struct._cmsStage_struct* %19, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.6
  %20 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  %cmp8 = icmp ne %struct._cmsStage_struct* %20, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  store %struct._cmsStage_struct* %21, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %22 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  store %struct._cmsStage_struct* %22, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  %Next9 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %23, i32 0, i32 9
  %24 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next9, align 8, !tbaa !20
  store %struct._cmsStage_struct* %24, %struct._cmsStage_struct** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Last, align 8, !tbaa !1
  store %struct._cmsStage_struct* %25, %struct._cmsStage_struct** %Unlinked, align 8, !tbaa !1
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %tobool10 = icmp ne %struct._cmsStage_struct* %26, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.end
  %27 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %Next12 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %27, i32 0, i32 9
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Next12, align 8, !tbaa !20
  br label %if.end.14

if.else:                                          ; preds = %for.end
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements13 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %28, i32 0, i32 0
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Elements13, align 8, !tbaa !18
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.14, %sw.bb
  %29 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %mpe.addr, align 8, !tbaa !1
  %tobool15 = icmp ne %struct._cmsStage_struct** %29, null
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %sw.epilog
  %30 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Unlinked, align 8, !tbaa !1
  %31 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %mpe.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %30, %struct._cmsStage_struct** %31, align 8, !tbaa !1
  br label %if.end.18

if.else.17:                                       ; preds = %sw.epilog
  %32 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Unlinked, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %32) #6
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  call void @BlessLUT(%struct._cmsPipeline_struct* %33) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.end
  %34 = bitcast %struct._cmsStage_struct** %Unlinked to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct._cmsStage_struct** %Last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct._cmsStage_struct** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
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

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineCat(%struct._cmsPipeline_struct* %l1, %struct._cmsPipeline_struct* %l2) #0 {
entry:
  %retval = alloca i32, align 4
  %l1.addr = alloca %struct._cmsPipeline_struct*, align 8
  %l2.addr = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %l1, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %l2, %struct._cmsPipeline_struct** %l2.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %1, i32 0, i32 0
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  %cmp = icmp eq %struct._cmsStage_struct* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l2.addr, align 8, !tbaa !1
  %Elements1 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %3, i32 0, i32 0
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements1, align 8, !tbaa !18
  %cmp2 = icmp eq %struct._cmsStage_struct* %4, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l2.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %InputChannels, align 4, !tbaa !47
  %7 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  %InputChannels3 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %7, i32 0, i32 1
  store i32 %6, i32* %InputChannels3, align 4, !tbaa !47
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l2.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  %OutputChannels4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 2
  store i32 %9, i32* %OutputChannels4, align 4, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l2.addr, align 8, !tbaa !1
  %Elements5 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 0
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements5, align 8, !tbaa !18
  store %struct._cmsStage_struct* %12, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp6 = icmp ne %struct._cmsStage_struct* %13, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %15) #6
  %call7 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %14, i32 1, %struct._cmsStage_struct* %call) #6
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %16, i32 0, i32 9
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %17, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %l1.addr, align 8, !tbaa !1
  call void @BlessLUT(%struct._cmsPipeline_struct* %18) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.8
  %19 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineSetSaveAs8bitsFlag(%struct._cmsPipeline_struct* %lut, i32 %On) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %On.addr = alloca i32, align 4
  %Anterior = alloca i32, align 4
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  store i32 %On, i32* %On.addr, align 4, !tbaa !6
  %0 = bitcast i32* %Anterior to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %SaveAs8Bits = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %1, i32 0, i32 9
  %2 = load i32, i32* %SaveAs8Bits, align 4, !tbaa !55
  store i32 %2, i32* %Anterior, align 4, !tbaa !6
  %3 = load i32, i32* %On.addr, align 4, !tbaa !6
  %4 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %SaveAs8Bits1 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %4, i32 0, i32 9
  store i32 %3, i32* %SaveAs8Bits1, align 4, !tbaa !55
  %5 = load i32, i32* %Anterior, align 4, !tbaa !6
  %6 = bitcast i32* %Anterior to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %0, i32 0, i32 0
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  ret %struct._cmsStage_struct* %1
}

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct* %lut) #0 {
entry:
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %Anterior = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 0
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  store %struct._cmsStage_struct* %3, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 9
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !20
  store %struct._cmsStage_struct* %7, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Anterior, align 8, !tbaa !1
  %9 = bitcast %struct._cmsStage_struct** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret %struct._cmsStage_struct* %8
}

; Function Attrs: nounwind uwtable
define void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %Lut, void (i16*, i16*, i8*)* %Eval16, i8* %PrivateData, void (%struct._cmsContext_struct*, i8*)* %FreePrivateDataFn, i8* (%struct._cmsContext_struct*, i8*)* %DupPrivateDataFn) #0 {
entry:
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Eval16.addr = alloca void (i16*, i16*, i8*)*, align 8
  %PrivateData.addr = alloca i8*, align 8
  %FreePrivateDataFn.addr = alloca void (%struct._cmsContext_struct*, i8*)*, align 8
  %DupPrivateDataFn.addr = alloca i8* (%struct._cmsContext_struct*, i8*)*, align 8
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store void (i16*, i16*, i8*)* %Eval16, void (i16*, i16*, i8*)** %Eval16.addr, align 8, !tbaa !1
  store i8* %PrivateData, i8** %PrivateData.addr, align 8, !tbaa !1
  store void (%struct._cmsContext_struct*, i8*)* %FreePrivateDataFn, void (%struct._cmsContext_struct*, i8*)** %FreePrivateDataFn.addr, align 8, !tbaa !1
  store i8* (%struct._cmsContext_struct*, i8*)* %DupPrivateDataFn, i8* (%struct._cmsContext_struct*, i8*)** %DupPrivateDataFn.addr, align 8, !tbaa !1
  %0 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16.addr, align 8, !tbaa !1
  %1 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %1, i32 0, i32 4
  store void (i16*, i16*, i8*)* %0, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !49
  %2 = load i8* (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)** %DupPrivateDataFn.addr, align 8, !tbaa !1
  %3 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %DupDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %3, i32 0, i32 7
  store i8* (%struct._cmsContext_struct*, i8*)* %2, i8* (%struct._cmsContext_struct*, i8*)** %DupDataFn, align 8, !tbaa !51
  %4 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreePrivateDataFn.addr, align 8, !tbaa !1
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %FreeDataFn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 6
  store void (%struct._cmsContext_struct*, i8*)* %4, void (%struct._cmsContext_struct*, i8*)** %FreeDataFn, align 8, !tbaa !52
  %6 = load i8*, i8** %PrivateData.addr, align 8, !tbaa !1
  %7 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %7, i32 0, i32 3
  store i8* %6, i8** %Data, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsPipelineEvalReverseFloat(float* %Target, float* %Result, float* %Hint, %struct._cmsPipeline_struct* %lut) #0 {
entry:
  %retval = alloca i32, align 4
  %Target.addr = alloca float*, align 8
  %Result.addr = alloca float*, align 8
  %Hint.addr = alloca float*, align 8
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %error = alloca double, align 8
  %LastError = alloca double, align 8
  %fx = alloca [4 x float], align 16
  %x = alloca [4 x float], align 16
  %xd = alloca [4 x float], align 16
  %fxd = alloca [4 x float], align 16
  %tmp = alloca %struct.cmsVEC3, align 8
  %tmp2 = alloca %struct.cmsVEC3, align 8
  %Jacobian = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  store float* %Target, float** %Target.addr, align 8, !tbaa !1
  store float* %Result, float** %Result.addr, align 8, !tbaa !1
  store float* %Hint, float** %Hint.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast double* %error to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %LastError to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store double 1.000000e+20, double* %LastError, align 8, !tbaa !28
  %4 = bitcast [4 x float]* %fx to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast [4 x float]* %x to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast [4 x float]* %xd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast [4 x float]* %fxd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.cmsVEC3* %tmp to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #1
  %9 = bitcast %struct.cmsVEC3* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #1
  %10 = bitcast %struct.cmsMAT3* %Jacobian to i8*
  call void @llvm.lifetime.start(i64 72, i8* %10) #1
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %InputChannels, align 4, !tbaa !47
  %cmp = icmp ne i32 %12, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels4 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %InputChannels4, align 4, !tbaa !47
  %cmp5 = icmp ne i32 %14, 4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %15, i32 0, i32 2
  %16 = load i32, i32* %OutputChannels, align 4, !tbaa !48
  %cmp6 = icmp ne i32 %16, 3
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %17 = load float*, float** %Hint.addr, align 8, !tbaa !1
  %cmp9 = icmp eq float* %17, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 2
  store float 0x3FD3333340000000, float* %arrayidx, align 4, !tbaa !24
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 1
  store float 0x3FD3333340000000, float* %arrayidx11, align 4, !tbaa !24
  %arrayidx12 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 0
  store float 0x3FD3333340000000, float* %arrayidx12, align 4, !tbaa !24
  br label %if.end.17

if.else:                                          ; preds = %if.end.8
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i32, i32* %j, align 4, !tbaa !6
  %cmp13 = icmp ult i32 %18, 3
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom = zext i32 %19 to i64
  %20 = load float*, float** %Hint.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %20, i64 %idxprom
  %21 = load float, float* %arrayidx14, align 4, !tbaa !24
  %22 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom15 = zext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom15
  store float %21, float* %arrayidx16, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %j, align 4, !tbaa !6
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %if.then.10
  %24 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels18 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %24, i32 0, i32 1
  %25 = load i32, i32* %InputChannels18, align 4, !tbaa !47
  %cmp19 = icmp eq i32 %25, 4
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.end.17
  %26 = load float*, float** %Target.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %26, i64 3
  %27 = load float, float* %arrayidx21, align 4, !tbaa !24
  %arrayidx22 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 3
  store float %27, float* %arrayidx22, align 4, !tbaa !24
  br label %if.end.25

if.else.23:                                       ; preds = %if.end.17
  %arrayidx24 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 3
  store float 0.000000e+00, float* %arrayidx24, align 4, !tbaa !24
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.20
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.157, %if.end.25
  %28 = load i32, i32* %i, align 4, !tbaa !6
  %cmp27 = icmp ult i32 %28, 30
  br i1 %cmp27, label %for.body.28, label %for.end.159

for.body.28:                                      ; preds = %for.cond.26
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i32 0
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  call void @cmsPipelineEvalFloat(float* %arraydecay, float* %arraydecay29, %struct._cmsPipeline_struct* %29) #6
  %arraydecay30 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i32 0
  %30 = load float*, float** %Target.addr, align 8, !tbaa !1
  %call = call float @EuclideanDistance(float* %arraydecay30, float* %30, i32 3) #6
  %conv = fpext float %call to double
  store double %conv, double* %error, align 8, !tbaa !28
  %31 = load double, double* %error, align 8, !tbaa !28
  %32 = load double, double* %LastError, align 8, !tbaa !28
  %cmp31 = fcmp oge double %31, %32
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.28
  br label %for.end.159

if.end.34:                                        ; preds = %for.body.28
  %33 = load double, double* %error, align 8, !tbaa !28
  store double %33, double* %LastError, align 8, !tbaa !28
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.end.34
  %34 = load i32, i32* %j, align 4, !tbaa !6
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %InputChannels36 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %35, i32 0, i32 1
  %36 = load i32, i32* %InputChannels36, align 4, !tbaa !47
  %cmp37 = icmp ult i32 %34, %36
  br i1 %cmp37, label %for.body.39, label %for.end.46

for.body.39:                                      ; preds = %for.cond.35
  %37 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom40 = zext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom40
  %38 = load float, float* %arrayidx41, align 4, !tbaa !24
  %39 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom42 = zext i32 %39 to i64
  %40 = load float*, float** %Result.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds float, float* %40, i64 %idxprom42
  store float %38, float* %arrayidx43, align 4, !tbaa !24
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.39
  %41 = load i32, i32* %j, align 4, !tbaa !6
  %inc45 = add i32 %41, 1
  store i32 %inc45, i32* %j, align 4, !tbaa !6
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %42 = load double, double* %error, align 8, !tbaa !28
  %cmp47 = fcmp ole double %42, 0.000000e+00
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end.46
  br label %for.end.159

if.end.50:                                        ; preds = %for.end.46
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.93, %if.end.50
  %43 = load i32, i32* %j, align 4, !tbaa !6
  %cmp52 = icmp ult i32 %43, 3
  br i1 %cmp52, label %for.body.54, label %for.end.95

for.body.54:                                      ; preds = %for.cond.51
  %arrayidx55 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 0
  %44 = load float, float* %arrayidx55, align 4, !tbaa !24
  %arrayidx56 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i64 0
  store float %44, float* %arrayidx56, align 4, !tbaa !24
  %arrayidx57 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 1
  %45 = load float, float* %arrayidx57, align 4, !tbaa !24
  %arrayidx58 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i64 1
  store float %45, float* %arrayidx58, align 4, !tbaa !24
  %arrayidx59 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 2
  %46 = load float, float* %arrayidx59, align 4, !tbaa !24
  %arrayidx60 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i64 2
  store float %46, float* %arrayidx60, align 4, !tbaa !24
  %arrayidx61 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 3
  %47 = load float, float* %arrayidx61, align 4, !tbaa !24
  %arrayidx62 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i64 3
  store float %47, float* %arrayidx62, align 4, !tbaa !24
  %48 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom63 = zext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i64 %idxprom63
  call void @IncDelta(float* %arrayidx64) #6
  %arraydecay65 = getelementptr inbounds [4 x float], [4 x float]* %xd, i32 0, i32 0
  %arraydecay66 = getelementptr inbounds [4 x float], [4 x float]* %fxd, i32 0, i32 0
  %49 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  call void @cmsPipelineEvalFloat(float* %arraydecay65, float* %arraydecay66, %struct._cmsPipeline_struct* %49) #6
  %arrayidx67 = getelementptr inbounds [4 x float], [4 x float]* %fxd, i32 0, i64 0
  %50 = load float, float* %arrayidx67, align 4, !tbaa !24
  %arrayidx68 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 0
  %51 = load float, float* %arrayidx68, align 4, !tbaa !24
  %sub = fsub float %50, %51
  %div = fdiv float %sub, 0x3F50624DE0000000
  %conv69 = fpext float %div to double
  %52 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom70 = zext i32 %52 to i64
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Jacobian, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx71, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom70
  store double %conv69, double* %arrayidx72, align 8, !tbaa !28
  %arrayidx73 = getelementptr inbounds [4 x float], [4 x float]* %fxd, i32 0, i64 1
  %53 = load float, float* %arrayidx73, align 4, !tbaa !24
  %arrayidx74 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 1
  %54 = load float, float* %arrayidx74, align 4, !tbaa !24
  %sub75 = fsub float %53, %54
  %div76 = fdiv float %sub75, 0x3F50624DE0000000
  %conv77 = fpext float %div76 to double
  %55 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom78 = zext i32 %55 to i64
  %v79 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Jacobian, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v79, i32 0, i64 1
  %n81 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x double], [3 x double]* %n81, i32 0, i64 %idxprom78
  store double %conv77, double* %arrayidx82, align 8, !tbaa !28
  %arrayidx83 = getelementptr inbounds [4 x float], [4 x float]* %fxd, i32 0, i64 2
  %56 = load float, float* %arrayidx83, align 4, !tbaa !24
  %arrayidx84 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 2
  %57 = load float, float* %arrayidx84, align 4, !tbaa !24
  %sub85 = fsub float %56, %57
  %div86 = fdiv float %sub85, 0x3F50624DE0000000
  %conv87 = fpext float %div86 to double
  %58 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom88 = zext i32 %58 to i64
  %v89 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Jacobian, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v89, i32 0, i64 2
  %n91 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx90, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x double], [3 x double]* %n91, i32 0, i64 %idxprom88
  store double %conv87, double* %arrayidx92, align 8, !tbaa !28
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.54
  %59 = load i32, i32* %j, align 4, !tbaa !6
  %inc94 = add i32 %59, 1
  store i32 %inc94, i32* %j, align 4, !tbaa !6
  br label %for.cond.51

for.end.95:                                       ; preds = %for.cond.51
  %arrayidx96 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 0
  %60 = load float, float* %arrayidx96, align 4, !tbaa !24
  %61 = load float*, float** %Target.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds float, float* %61, i64 0
  %62 = load float, float* %arrayidx97, align 4, !tbaa !24
  %sub98 = fsub float %60, %62
  %conv99 = fpext float %sub98 to double
  %n100 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp2, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x double], [3 x double]* %n100, i32 0, i64 0
  store double %conv99, double* %arrayidx101, align 8, !tbaa !28
  %arrayidx102 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 1
  %63 = load float, float* %arrayidx102, align 4, !tbaa !24
  %64 = load float*, float** %Target.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds float, float* %64, i64 1
  %65 = load float, float* %arrayidx103, align 4, !tbaa !24
  %sub104 = fsub float %63, %65
  %conv105 = fpext float %sub104 to double
  %n106 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp2, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x double], [3 x double]* %n106, i32 0, i64 1
  store double %conv105, double* %arrayidx107, align 8, !tbaa !28
  %arrayidx108 = getelementptr inbounds [4 x float], [4 x float]* %fx, i32 0, i64 2
  %66 = load float, float* %arrayidx108, align 4, !tbaa !24
  %67 = load float*, float** %Target.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds float, float* %67, i64 2
  %68 = load float, float* %arrayidx109, align 4, !tbaa !24
  %sub110 = fsub float %66, %68
  %conv111 = fpext float %sub110 to double
  %n112 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp2, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %n112, i32 0, i64 2
  store double %conv111, double* %arrayidx113, align 8, !tbaa !28
  %call114 = call i32 @_cmsMAT3solve(%struct.cmsVEC3* %tmp, %struct.cmsMAT3* %Jacobian, %struct.cmsVEC3* %tmp2) #6
  %tobool = icmp ne i32 %call114, 0
  br i1 %tobool, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %for.end.95
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %for.end.95
  %n117 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x double], [3 x double]* %n117, i32 0, i64 0
  %69 = load double, double* %arrayidx118, align 8, !tbaa !28
  %conv119 = fptrunc double %69 to float
  %arrayidx120 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 0
  %70 = load float, float* %arrayidx120, align 4, !tbaa !24
  %sub121 = fsub float %70, %conv119
  store float %sub121, float* %arrayidx120, align 4, !tbaa !24
  %n122 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x double], [3 x double]* %n122, i32 0, i64 1
  %71 = load double, double* %arrayidx123, align 8, !tbaa !28
  %conv124 = fptrunc double %71 to float
  %arrayidx125 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 1
  %72 = load float, float* %arrayidx125, align 4, !tbaa !24
  %sub126 = fsub float %72, %conv124
  store float %sub126, float* %arrayidx125, align 4, !tbaa !24
  %n127 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %tmp, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x double], [3 x double]* %n127, i32 0, i64 2
  %73 = load double, double* %arrayidx128, align 8, !tbaa !28
  %conv129 = fptrunc double %73 to float
  %arrayidx130 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 2
  %74 = load float, float* %arrayidx130, align 4, !tbaa !24
  %sub131 = fsub float %74, %conv129
  store float %sub131, float* %arrayidx130, align 4, !tbaa !24
  store i32 0, i32* %j, align 4, !tbaa !6
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.154, %if.end.116
  %75 = load i32, i32* %j, align 4, !tbaa !6
  %cmp133 = icmp ult i32 %75, 3
  br i1 %cmp133, label %for.body.135, label %for.end.156

for.body.135:                                     ; preds = %for.cond.132
  %76 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom136 = zext i32 %76 to i64
  %arrayidx137 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom136
  %77 = load float, float* %arrayidx137, align 4, !tbaa !24
  %cmp138 = fcmp olt float %77, 0.000000e+00
  br i1 %cmp138, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %for.body.135
  %78 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom141 = zext i32 %78 to i64
  %arrayidx142 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom141
  store float 0.000000e+00, float* %arrayidx142, align 4, !tbaa !24
  br label %if.end.153

if.else.143:                                      ; preds = %for.body.135
  %79 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom144 = zext i32 %79 to i64
  %arrayidx145 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom144
  %80 = load float, float* %arrayidx145, align 4, !tbaa !24
  %conv146 = fpext float %80 to double
  %cmp147 = fcmp ogt double %conv146, 1.000000e+00
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.else.143
  %81 = load i32, i32* %j, align 4, !tbaa !6
  %idxprom150 = zext i32 %81 to i64
  %arrayidx151 = getelementptr inbounds [4 x float], [4 x float]* %x, i32 0, i64 %idxprom150
  store float 1.000000e+00, float* %arrayidx151, align 4, !tbaa !24
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.else.143
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.140
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %82 = load i32, i32* %j, align 4, !tbaa !6
  %inc155 = add i32 %82, 1
  store i32 %inc155, i32* %j, align 4, !tbaa !6
  br label %for.cond.132

for.end.156:                                      ; preds = %for.cond.132
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.156
  %83 = load i32, i32* %i, align 4, !tbaa !6
  %inc158 = add i32 %83, 1
  store i32 %inc158, i32* %i, align 4, !tbaa !6
  br label %for.cond.26

for.end.159:                                      ; preds = %if.then.49, %if.then.33, %for.cond.26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.159, %if.then.115, %if.then.7, %if.then
  %84 = bitcast %struct.cmsMAT3* %Jacobian to i8*
  call void @llvm.lifetime.end(i64 72, i8* %84) #1
  %85 = bitcast %struct.cmsVEC3* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %85) #1
  %86 = bitcast %struct.cmsVEC3* %tmp to i8*
  call void @llvm.lifetime.end(i64 24, i8* %86) #1
  %87 = bitcast [4 x float]* %fxd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %87) #1
  %88 = bitcast [4 x float]* %xd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %88) #1
  %89 = bitcast [4 x float]* %x to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #1
  %90 = bitcast [4 x float]* %fx to i8*
  call void @llvm.lifetime.end(i64 16, i8* %90) #1
  %91 = bitcast double* %LastError to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast double* %error to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal float @EuclideanDistance(float* %a, float* %b, i32 %n) #0 {
entry:
  %a.addr = alloca float*, align 8
  %b.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca float, align 4
  %i = alloca i32, align 4
  %dif = alloca float, align 4
  store float* %a, float** %a.addr, align 8, !tbaa !1
  store float* %b, float** %b.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !6
  %0 = bitcast float* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store float 0.000000e+00, float* %sum, align 4, !tbaa !24
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %3 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast float* %dif to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %5 to i64
  %6 = load float*, float** %b.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4, !tbaa !24
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom1 = sext i32 %8 to i64
  %9 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %9, i64 %idxprom1
  %10 = load float, float* %arrayidx2, align 4, !tbaa !24
  %sub = fsub float %7, %10
  store float %sub, float* %dif, align 4, !tbaa !24
  %11 = load float, float* %dif, align 4, !tbaa !24
  %12 = load float, float* %dif, align 4, !tbaa !24
  %mul = fmul float %11, %12
  %13 = load float, float* %sum, align 4, !tbaa !24
  %add = fadd float %13, %mul
  store float %add, float* %sum, align 4, !tbaa !24
  %14 = bitcast float* %dif to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load float, float* %sum, align 4, !tbaa !24
  %call = call float @sqrtf(float %16) #7
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast float* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal void @IncDelta(float* %Val) #0 {
entry:
  %Val.addr = alloca float*, align 8
  store float* %Val, float** %Val.addr, align 8, !tbaa !1
  %0 = load float*, float** %Val.addr, align 8, !tbaa !1
  %1 = load float, float* %0, align 4, !tbaa !24
  %conv = fpext float %1 to double
  %cmp = fcmp olt double %conv, 0x3FEFF7CED9100000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float*, float** %Val.addr, align 8, !tbaa !1
  %3 = load float, float* %2, align 4, !tbaa !24
  %add = fadd float %3, 0x3F50624DE0000000
  store float %add, float* %2, align 4, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load float*, float** %Val.addr, align 8, !tbaa !1
  %5 = load float, float* %4, align 4, !tbaa !24
  %sub = fsub float %5, 0x3F50624DE0000000
  store float %sub, float* %4, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @_cmsMAT3solve(%struct.cmsVEC3*, %struct.cmsMAT3*, %struct.cmsVEC3*) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #5

declare float @cmsEvalToneCurveFloat(%struct._cms_curve_struct*, float) #2

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #2

declare i8* @_cmsDupMem(%struct._cmsContext_struct*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @FromFloatTo16(float* %In, i16* %Out, i32 %n) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca i16*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %2 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %3 to i64
  %4 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !24
  %conv = fpext float %5 to double
  %mul = fmul double %conv, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom1 = zext i32 %6 to i64
  %7 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 %idxprom1
  store i16 %call, i16* %arrayidx2, align 2, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @From16ToFloat(i16* %In, float* %Out, i32 %n) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %2 = load i32, i32* %n.addr, align 4, !tbaa !6
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = zext i32 %3 to i64
  %4 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !34
  %conv = uitofp i16 %5 to float
  %div = fdiv float %conv, 6.553500e+04
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom1 = zext i32 %6 to i64
  %7 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %7, i64 %idxprom1
  store float %div, float* %arrayidx2, align 4, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

declare void @_cmsFreeInterpParams(%struct._cms_interp_struc*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #4 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !28
  %0 = load double, double* %d.addr, align 8, !tbaa !28
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #6
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
  %temp = alloca %union.anon.0, align 8
  store double %val, double* %val.addr, align 8, !tbaa !28
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !28
  %1 = bitcast %union.anon.0* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !28
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon.0* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !28
  %halves = bitcast %union.anon.0* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon.0* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

declare void @cmsLab2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*, %struct.cmsCIELab*) #2

declare void @cmsXYZ2Lab(%struct.cmsCIEXYZ*, %struct.cmsCIELab*, %struct.cmsCIEXYZ*) #2

; Function Attrs: nounwind
declare float @sqrtf(float) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !7, i64 16, !7, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!10 = !{!9, !3, i64 8}
!11 = !{!9, !3, i64 12}
!12 = !{!9, !7, i64 16}
!13 = !{!9, !7, i64 20}
!14 = !{!9, !2, i64 24}
!15 = !{!9, !2, i64 32}
!16 = !{!9, !2, i64 40}
!17 = !{!9, !2, i64 48}
!18 = !{!19, !2, i64 0}
!19 = !{!"_cmsPipeline_struct", !2, i64 0, !7, i64 8, !7, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !7, i64 64}
!20 = !{!9, !2, i64 56}
!21 = !{!22, !2, i64 8}
!22 = !{!"", !7, i64 0, !2, i64 8}
!23 = !{!22, !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !3, i64 0}
!26 = !{!27, !2, i64 0}
!27 = !{!"", !2, i64 0, !2, i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !3, i64 0}
!30 = !{!27, !2, i64 8}
!31 = !{!32, !7, i64 16}
!32 = !{!"", !3, i64 0, !2, i64 8, !7, i64 16, !7, i64 20}
!33 = !{!32, !7, i64 20}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !3, i64 0}
!36 = !{!32, !2, i64 8}
!37 = !{!38, !7, i64 12}
!38 = !{!"_cms_interp_struc", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!39 = !{!38, !7, i64 16}
!40 = !{!38, !7, i64 8}
!41 = !{!42, !29, i64 0}
!42 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16}
!43 = !{!42, !29, i64 8}
!44 = !{!42, !29, i64 16}
!45 = !{!46, !2, i64 48}
!46 = !{!"_cms_curve_struct", !2, i64 0, !7, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48}
!47 = !{!19, !7, i64 8}
!48 = !{!19, !7, i64 12}
!49 = !{!19, !2, i64 24}
!50 = !{!19, !2, i64 32}
!51 = !{!19, !2, i64 48}
!52 = !{!19, !2, i64 40}
!53 = !{!19, !2, i64 16}
!54 = !{!19, !2, i64 56}
!55 = !{!19, !7, i64 64}
