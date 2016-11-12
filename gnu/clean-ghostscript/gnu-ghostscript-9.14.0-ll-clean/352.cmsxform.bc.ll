; ModuleID = './cmsxform.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsAdaptationStateChunkType = type { double }
%struct._cmsAlarmCodesChunkType = type { [16 x i16] }
%struct._cmsTransformPluginChunkType = type { %struct._cmsTransformCollection_st* }
%struct._cmsTransformCollection_st = type { i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)*, %struct._cmsTransformCollection_st* }
%struct._cmstransform_struct = type { i32, i32, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, %struct._cmsCACHE, %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*, %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct*, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsSEQ*, i32, double, i32, %struct._cmsContext_struct*, i8*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginTransform = type { %struct._cmsPluginBaseStruct, i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)* }
%union.cmsFormatter = type { i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* }

@_cmsAdaptationStateChunk = global %struct._cmsAdaptationStateChunkType { double 1.000000e+00 }, align 8
@_cmsAllocAdaptationStateChunk.AdaptationStateChunk = internal global %struct._cmsAdaptationStateChunkType { double 1.000000e+00 }, align 8
@_cmsAlarmCodesChunk = global %struct._cmsAlarmCodesChunkType { [16 x i16] [i16 32512, i16 32512, i16 32512, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, align 2
@.str = private unnamed_addr constant [34 x i8] c"(ContextAlarmCodes != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmsxform.c\00", align 1
@__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR = private unnamed_addr constant [62 x i8] c"void cmsSetAlarmCodesTHR(cmsContext, const cmsUInt16Number *)\00", align 1
@__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR = private unnamed_addr constant [56 x i8] c"void cmsGetAlarmCodesTHR(cmsContext, cmsUInt16Number *)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"(NewAlarm != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsSetAlarmCodes = private unnamed_addr constant [47 x i8] c"void cmsSetAlarmCodes(const cmsUInt16Number *)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(OldAlarm != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsGetAlarmCodes = private unnamed_addr constant [41 x i8] c"void cmsGetAlarmCodes(cmsUInt16Number *)\00", align 1
@_cmsAllocAlarmCodesChunk.AlarmCodesChunk = internal global %struct._cmsAlarmCodesChunkType { [16 x i16] [i16 32512, i16 32512, i16 32512, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, align 2
@.str.4 = private unnamed_addr constant [18 x i8] c"(p != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsDeleteTransform = private unnamed_addr constant [39 x i8] c"void cmsDeleteTransform(cmsHTRANSFORM)\00", align 1
@_cmsTransformPluginChunk = global %struct._cmsTransformPluginChunkType zeroinitializer, align 8
@_cmsAllocTransformPluginChunk.TransformPluginChunkType = internal global %struct._cmsTransformPluginChunkType zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"(CMMcargo != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsSetTransformUserData = private unnamed_addr constant [89 x i8] c"void _cmsSetTransformUserData(struct _cmstransform_struct *, void *, _cmsFreeUserDataFn)\00", align 1
@__PRETTY_FUNCTION__._cmsGetTransformUserData = private unnamed_addr constant [62 x i8] c"void *_cmsGetTransformUserData(struct _cmstransform_struct *)\00", align 1
@__PRETTY_FUNCTION__._cmsGetTransformFormatters16 = private unnamed_addr constant [101 x i8] c"void _cmsGetTransformFormatters16(struct _cmstransform_struct *, cmsFormatter16 *, cmsFormatter16 *)\00", align 1
@__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat = private unnamed_addr constant [110 x i8] c"void _cmsGetTransformFormattersFloat(struct _cmstransform_struct *, cmsFormatterFloat *, cmsFormatterFloat *)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"NULL input profiles on transform\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Wrong input color space on transform\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Wrong output color space on transform\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Couldn't link the profiles\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Channel count doesn't match. Profile is corrupted\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Wrong number of profiles. 1..255 expected, %d found.\00", align 1
@.str.12 = private unnamed_addr constant [102 x i8] c"cmsChangeBuffersFormat works only on transforms created originally with at least 16 bits of precision\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Unsupported raster format\00", align 1

; Function Attrs: nounwind uwtable
define void @_cmsAllocAdaptationStateChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %from = alloca i8*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 3
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %3, i8** %from, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* bitcast (%struct._cmsAdaptationStateChunkType* @_cmsAllocAdaptationStateChunk.AdaptationStateChunk to i8*), i8** %from, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %6 = load i8*, i8** %from, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %5, i8* %6, i32 8) #6
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks1, i32 0, i64 3
  store i8* %call, i8** %arrayidx2, align 8, !tbaa !1
  %8 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define double @cmsSetAdaptationStateTHR(%struct._cmsContext_struct* %ContextID, double %d) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %d.addr = alloca double, align 8
  %prev = alloca double, align 8
  %ptr = alloca %struct._cmsAdaptationStateChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store double %d, double* %d.addr, align 8, !tbaa !8
  %0 = bitcast double* %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsAdaptationStateChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %2, i32 3) #6
  %3 = bitcast i8* %call to %struct._cmsAdaptationStateChunkType*
  store %struct._cmsAdaptationStateChunkType* %3, %struct._cmsAdaptationStateChunkType** %ptr, align 8, !tbaa !1
  %4 = load %struct._cmsAdaptationStateChunkType*, %struct._cmsAdaptationStateChunkType** %ptr, align 8, !tbaa !1
  %AdaptationState = getelementptr inbounds %struct._cmsAdaptationStateChunkType, %struct._cmsAdaptationStateChunkType* %4, i32 0, i32 0
  %5 = load double, double* %AdaptationState, align 8, !tbaa !10
  store double %5, double* %prev, align 8, !tbaa !8
  %6 = load double, double* %d.addr, align 8, !tbaa !8
  %cmp = fcmp oge double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load double, double* %d.addr, align 8, !tbaa !8
  %8 = load %struct._cmsAdaptationStateChunkType*, %struct._cmsAdaptationStateChunkType** %ptr, align 8, !tbaa !1
  %AdaptationState1 = getelementptr inbounds %struct._cmsAdaptationStateChunkType, %struct._cmsAdaptationStateChunkType* %8, i32 0, i32 0
  store double %7, double* %AdaptationState1, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load double, double* %prev, align 8, !tbaa !8
  %10 = bitcast %struct._cmsAdaptationStateChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast double* %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret double %9
}

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define double @cmsSetAdaptationState(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !8
  %0 = load double, double* %d.addr, align 8, !tbaa !8
  %call = call double @cmsSetAdaptationStateTHR(%struct._cmsContext_struct* null, double %0) #6
  ret double %call
}

; Function Attrs: nounwind uwtable
define void @cmsSetAlarmCodesTHR(%struct._cmsContext_struct* %ContextID, i16* %AlarmCodesP) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %AlarmCodesP.addr = alloca i16*, align 8
  %ContextAlarmCodes = alloca %struct._cmsAlarmCodesChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i16* %AlarmCodesP, i16** %AlarmCodesP.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 2) #6
  %2 = bitcast i8* %call to %struct._cmsAlarmCodesChunkType*
  store %struct._cmsAlarmCodesChunkType* %2, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %3 = load %struct._cmsAlarmCodesChunkType*, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsAlarmCodesChunkType* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 97, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct._cmsAlarmCodesChunkType*, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %AlarmCodes = getelementptr inbounds %struct._cmsAlarmCodesChunkType, %struct._cmsAlarmCodesChunkType* %5, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %AlarmCodes, i32 0, i32 0
  %6 = bitcast i16* %arraydecay to i8*
  %7 = load i16*, i16** %AlarmCodesP.addr, align 8, !tbaa !1
  %8 = bitcast i16* %7 to i8*
  %call1 = call i8* @memcpy(i8* %6, i8* %8, i64 32) #8
  %9 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @cmsGetAlarmCodesTHR(%struct._cmsContext_struct* %ContextID, i16* %AlarmCodesP) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %AlarmCodesP.addr = alloca i16*, align 8
  %ContextAlarmCodes = alloca %struct._cmsAlarmCodesChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i16* %AlarmCodesP, i16** %AlarmCodesP.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 2) #6
  %2 = bitcast i8* %call to %struct._cmsAlarmCodesChunkType*
  store %struct._cmsAlarmCodesChunkType* %2, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %3 = load %struct._cmsAlarmCodesChunkType*, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsAlarmCodesChunkType* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i16*, i16** %AlarmCodesP.addr, align 8, !tbaa !1
  %6 = bitcast i16* %5 to i8*
  %7 = load %struct._cmsAlarmCodesChunkType*, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %AlarmCodes = getelementptr inbounds %struct._cmsAlarmCodesChunkType, %struct._cmsAlarmCodesChunkType* %7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %AlarmCodes, i32 0, i32 0
  %8 = bitcast i16* %arraydecay to i8*
  %call1 = call i8* @memcpy(i8* %6, i8* %8, i64 32) #8
  %9 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetAlarmCodes(i16* %NewAlarm) #0 {
entry:
  %NewAlarm.addr = alloca i16*, align 8
  store i16* %NewAlarm, i16** %NewAlarm.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %NewAlarm.addr, align 8, !tbaa !1
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.cmsSetAlarmCodes, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i16*, i16** %NewAlarm.addr, align 8, !tbaa !1
  call void @cmsSetAlarmCodesTHR(%struct._cmsContext_struct* null, i16* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsGetAlarmCodes(i16* %OldAlarm) #0 {
entry:
  %OldAlarm.addr = alloca i16*, align 8
  store i16* %OldAlarm, i16** %OldAlarm.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %OldAlarm.addr, align 8, !tbaa !1
  %cmp = icmp ne i16* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.cmsGetAlarmCodes, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i16*, i16** %OldAlarm.addr, align 8, !tbaa !1
  call void @cmsGetAlarmCodesTHR(%struct._cmsContext_struct* null, i16* %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsAllocAlarmCodesChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %from = alloca i8*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 2
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %3, i8** %from, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* bitcast (%struct._cmsAlarmCodesChunkType* @_cmsAllocAlarmCodesChunk.AlarmCodesChunk to i8*), i8** %from, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %6 = load i8*, i8** %from, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %5, i8* %6, i32 32) #6
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks1, i32 0, i64 2
  store i8* %call, i8** %arrayidx2, align 8, !tbaa !1
  %8 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsDeleteTransform(i8* %hTransform) #0 {
entry:
  %hTransform.addr = alloca i8*, align 8
  %p = alloca %struct._cmstransform_struct*, align 8
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmstransform_struct* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.cmsDeleteTransform, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %5, i32 0, i32 9
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  %tobool = icmp ne %struct._cmsPipeline_struct* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %GamutCheck1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 9
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck1, align 8, !tbaa !12
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %9, i32 0, i32 8
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %tobool2 = icmp ne %struct._cmsPipeline_struct* %10, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut4, align 8, !tbaa !17
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %12) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %InputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 10
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %InputColorant, align 8, !tbaa !18
  %tobool6 = icmp ne %struct._cms_NAMEDCOLORLIST_struct* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %InputColorant8 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 10
  %16 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %InputColorant8, align 8, !tbaa !18
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %16) #6
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %OutputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %17, i32 0, i32 11
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant, align 8, !tbaa !19
  %tobool10 = icmp ne %struct._cms_NAMEDCOLORLIST_struct* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %OutputColorant12 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 11
  %20 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant12, align 8, !tbaa !19
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %20) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %21 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Sequence = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %21, i32 0, i32 16
  %22 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Sequence, align 8, !tbaa !20
  %tobool14 = icmp ne %struct.cmsSEQ* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Sequence16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 16
  %24 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Sequence16, align 8, !tbaa !20
  call void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ* %24) #6
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %UserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %25, i32 0, i32 21
  %26 = load i8*, i8** %UserData, align 8, !tbaa !21
  %tobool18 = icmp ne i8* %26, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FreeUserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 22
  %28 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreeUserData, align 8, !tbaa !22
  %29 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %29, i32 0, i32 20
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !23
  %31 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %UserData20 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %31, i32 0, i32 21
  %32 = load i8*, i8** %UserData20, align 8, !tbaa !21
  call void %28(%struct._cmsContext_struct* %30, i8* %32) #6
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %33 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ContextID22 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %33, i32 0, i32 20
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID22, align 8, !tbaa !23
  %35 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %36 = bitcast %struct._cmstransform_struct* %35 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %34, i8* %36) #6
  %37 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  ret void
}

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #2

declare void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct*) #2

declare void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ*) #2

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind uwtable
define void @cmsDoTransform(i8* %Transform, i8* %InputBuffer, i8* %OutputBuffer, i32 %Size) #0 {
entry:
  %Transform.addr = alloca i8*, align 8
  %InputBuffer.addr = alloca i8*, align 8
  %OutputBuffer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %p = alloca %struct._cmstransform_struct*, align 8
  store i8* %Transform, i8** %Transform.addr, align 8, !tbaa !1
  store i8* %InputBuffer, i8** %InputBuffer.addr, align 8, !tbaa !1
  store i8* %OutputBuffer, i8** %OutputBuffer.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  %0 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Transform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 2
  %4 = load void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform, align 8, !tbaa !25
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %6 = load i8*, i8** %InputBuffer.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %OutputBuffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %Size.addr, align 4, !tbaa !24
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  call void %4(%struct._cmstransform_struct* %5, i8* %6, i8* %7, i32 %8, i32 %9) #6
  %10 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsDoTransformStride(i8* %Transform, i8* %InputBuffer, i8* %OutputBuffer, i32 %Size, i32 %Stride) #0 {
entry:
  %Transform.addr = alloca i8*, align 8
  %InputBuffer.addr = alloca i8*, align 8
  %OutputBuffer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %p = alloca %struct._cmstransform_struct*, align 8
  store i8* %Transform, i8** %Transform.addr, align 8, !tbaa !1
  store i8* %InputBuffer, i8** %InputBuffer.addr, align 8, !tbaa !1
  store i8* %OutputBuffer, i8** %OutputBuffer.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Transform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 2
  %4 = load void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform, align 8, !tbaa !25
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %6 = load i8*, i8** %InputBuffer.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %OutputBuffer.addr, align 8, !tbaa !1
  %8 = load i32, i32* %Size.addr, align 4, !tbaa !24
  %9 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  call void %4(%struct._cmstransform_struct* %5, i8* %6, i8* %7, i32 %8, i32 %9) #6
  %10 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsAllocTransformPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  call void @DupPluginTransformList(%struct._cmsContext_struct* %1, %struct._cmsContext_struct* %2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %3, i32 0, i32 1
  %4 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %4, i8* bitcast (%struct._cmsTransformPluginChunkType* @_cmsAllocTransformPluginChunk.TransformPluginChunkType to i8*), i32 8) #6
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 13
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DupPluginTransformList(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %newHead = alloca %struct._cmsTransformPluginChunkType, align 8
  %entry1 = alloca %struct._cmsTransformCollection_st*, align 8
  %Anterior = alloca %struct._cmsTransformCollection_st*, align 8
  %head = alloca %struct._cmsTransformPluginChunkType*, align 8
  %newEntry = alloca %struct._cmsTransformCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsTransformPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsTransformPluginChunkType* %newHead to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false)
  %2 = bitcast %struct._cmsTransformCollection_st** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct._cmsTransformCollection_st** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._cmsTransformCollection_st* null, %struct._cmsTransformCollection_st** %Anterior, align 8, !tbaa !1
  %4 = bitcast %struct._cmsTransformPluginChunkType** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 13
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._cmsTransformPluginChunkType*
  store %struct._cmsTransformPluginChunkType* %7, %struct._cmsTransformPluginChunkType** %head, align 8, !tbaa !1
  %8 = load %struct._cmsTransformPluginChunkType*, %struct._cmsTransformPluginChunkType** %head, align 8, !tbaa !1
  %TransformCollection = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %8, i32 0, i32 0
  %9 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %TransformCollection, align 8, !tbaa !26
  store %struct._cmsTransformCollection_st* %9, %struct._cmsTransformCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %entry1, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsTransformCollection_st* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct._cmsTransformCollection_st** %newEntry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 1
  %13 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %14 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %entry1, align 8, !tbaa !1
  %15 = bitcast %struct._cmsTransformCollection_st* %14 to i8*
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %13, i8* %15, i32 16) #6
  %16 = bitcast i8* %call to %struct._cmsTransformCollection_st*
  store %struct._cmsTransformCollection_st* %16, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  %17 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsTransformCollection_st* %17, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %18 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %18, i32 0, i32 1
  store %struct._cmsTransformCollection_st* null, %struct._cmsTransformCollection_st** %Next, align 8, !tbaa !28
  %19 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Anterior, align 8, !tbaa !1
  %tobool = icmp ne %struct._cmsTransformCollection_st* %19, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %20 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  %21 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Anterior, align 8, !tbaa !1
  %Next4 = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %21, i32 0, i32 1
  store %struct._cmsTransformCollection_st* %20, %struct._cmsTransformCollection_st** %Next4, align 8, !tbaa !28
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %22 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  store %struct._cmsTransformCollection_st* %22, %struct._cmsTransformCollection_st** %Anterior, align 8, !tbaa !1
  %TransformCollection6 = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %newHead, i32 0, i32 0
  %23 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %TransformCollection6, align 8, !tbaa !26
  %cmp7 = icmp eq %struct._cmsTransformCollection_st* %23, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %24 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %newEntry, align 8, !tbaa !1
  %TransformCollection9 = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %newHead, i32 0, i32 0
  store %struct._cmsTransformCollection_st* %24, %struct._cmsTransformCollection_st** %TransformCollection9, align 8, !tbaa !26
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %25 = bitcast %struct._cmsTransformCollection_st** %newEntry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %entry1, align 8, !tbaa !1
  %Next11 = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %26, i32 0, i32 1
  %27 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Next11, align 8, !tbaa !28
  store %struct._cmsTransformCollection_st* %27, %struct._cmsTransformCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool12 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %28, i32 0, i32 1
  %29 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool12, align 8, !tbaa !5
  %30 = bitcast %struct._cmsTransformPluginChunkType* %newHead to i8*
  %call13 = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %29, i8* %30, i32 8) #6
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks14 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %31, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks14, i32 0, i64 13
  store i8* %call13, i8** %arrayidx15, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %for.end, %cleanup
  %32 = bitcast %struct._cmsTransformPluginChunkType** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct._cmsTransformCollection_st** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct._cmsTransformCollection_st** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct._cmsTransformPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %cleanup.dest.20 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.20, label %unreachable [
    i32 0, label %cleanup.cont.21
    i32 1, label %cleanup.cont.21
  ]

cleanup.cont.21:                                  ; preds = %cleanup.16, %cleanup.16
  ret void

unreachable:                                      ; preds = %cleanup.16
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterTransformPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %Plugin = alloca %struct.cmsPluginTransform*, align 8
  %fl = alloca %struct._cmsTransformCollection_st*, align 8
  %ctx = alloca %struct._cmsTransformPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPluginTransform** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPluginBaseStruct* %1 to %struct.cmsPluginTransform*
  store %struct.cmsPluginTransform* %2, %struct.cmsPluginTransform** %Plugin, align 8, !tbaa !1
  %3 = bitcast %struct._cmsTransformCollection_st** %fl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmsTransformPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %5, i32 13) #6
  %6 = bitcast i8* %call to %struct._cmsTransformPluginChunkType*
  store %struct._cmsTransformPluginChunkType* %6, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsTransformPluginChunkType*, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %TransformCollection = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %8, i32 0, i32 0
  store %struct._cmsTransformCollection_st* null, %struct._cmsTransformCollection_st** %TransformCollection, align 8, !tbaa !26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.cmsPluginTransform*, %struct.cmsPluginTransform** %Plugin, align 8, !tbaa !1
  %Factory = getelementptr inbounds %struct.cmsPluginTransform, %struct.cmsPluginTransform* %9, i32 0, i32 1
  %10 = load i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)*, i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)** %Factory, align 8, !tbaa !30
  %cmp1 = icmp eq i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call4 = call i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %11, i32 16) #6
  %12 = bitcast i8* %call4 to %struct._cmsTransformCollection_st*
  store %struct._cmsTransformCollection_st* %12, %struct._cmsTransformCollection_st** %fl, align 8, !tbaa !1
  %13 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %fl, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cmsTransformCollection_st* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %14 = load %struct.cmsPluginTransform*, %struct.cmsPluginTransform** %Plugin, align 8, !tbaa !1
  %Factory8 = getelementptr inbounds %struct.cmsPluginTransform, %struct.cmsPluginTransform* %14, i32 0, i32 1
  %15 = load i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)*, i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)** %Factory8, align 8, !tbaa !30
  %16 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %fl, align 8, !tbaa !1
  %Factory9 = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %16, i32 0, i32 0
  store i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)* %15, i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)** %Factory9, align 8, !tbaa !33
  %17 = load %struct._cmsTransformPluginChunkType*, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %TransformCollection10 = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %17, i32 0, i32 0
  %18 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %TransformCollection10, align 8, !tbaa !26
  %19 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %fl, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %19, i32 0, i32 1
  store %struct._cmsTransformCollection_st* %18, %struct._cmsTransformCollection_st** %Next, align 8, !tbaa !28
  %20 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %fl, align 8, !tbaa !1
  %21 = load %struct._cmsTransformPluginChunkType*, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %TransformCollection11 = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %21, i32 0, i32 0
  store %struct._cmsTransformCollection_st* %20, %struct._cmsTransformCollection_st** %TransformCollection11, align 8, !tbaa !26
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %22 = bitcast %struct._cmsTransformPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct._cmsTransformCollection_st** %fl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cmsPluginTransform** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i8* @_cmsPluginMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define void @_cmsSetTransformUserData(%struct._cmstransform_struct* %CMMcargo, i8* %ptr, void (%struct._cmsContext_struct*, i8*)* %FreePrivateDataFn) #0 {
entry:
  %CMMcargo.addr = alloca %struct._cmstransform_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %FreePrivateDataFn.addr = alloca void (%struct._cmsContext_struct*, i8*)*, align 8
  store %struct._cmstransform_struct* %CMMcargo, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store void (%struct._cmsContext_struct*, i8*)* %FreePrivateDataFn, void (%struct._cmsContext_struct*, i8*)** %FreePrivateDataFn.addr, align 8, !tbaa !1
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmstransform_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 475, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__._cmsSetTransformUserData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %UserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 21
  store i8* %2, i8** %UserData, align 8, !tbaa !21
  %4 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreePrivateDataFn.addr, align 8, !tbaa !1
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %FreeUserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %5, i32 0, i32 22
  store void (%struct._cmsContext_struct*, i8*)* %4, void (%struct._cmsContext_struct*, i8*)** %FreeUserData, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_cmsGetTransformUserData(%struct._cmstransform_struct* %CMMcargo) #0 {
entry:
  %CMMcargo.addr = alloca %struct._cmstransform_struct*, align 8
  store %struct._cmstransform_struct* %CMMcargo, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmstransform_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 483, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__._cmsGetTransformUserData, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %UserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %2, i32 0, i32 21
  %3 = load i8*, i8** %UserData, align 8, !tbaa !21
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define void @_cmsGetTransformFormatters16(%struct._cmstransform_struct* %CMMcargo, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput) #0 {
entry:
  %CMMcargo.addr = alloca %struct._cmstransform_struct*, align 8
  %FromInput.addr = alloca i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, align 8
  %ToOutput.addr = alloca i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, align 8
  store %struct._cmstransform_struct* %CMMcargo, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmstransform_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 490, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__._cmsGetTransformFormatters16, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %FromInput1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 3
  %4 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput1, align 8, !tbaa !34
  %5 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %4, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %5, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  %tobool2 = icmp ne i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %ToOutput4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 4
  %8 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput4, align 8, !tbaa !35
  %9 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %8, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %9, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsGetTransformFormattersFloat(%struct._cmstransform_struct* %CMMcargo, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInput, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutput) #0 {
entry:
  %CMMcargo.addr = alloca %struct._cmstransform_struct*, align 8
  %FromInput.addr = alloca i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, align 8
  %ToOutput.addr = alloca i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, align 8
  store %struct._cmstransform_struct* %CMMcargo, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInput, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutput, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  %0 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmstransform_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 497, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %FromInputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %3, i32 0, i32 5
  %4 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat, align 8, !tbaa !36
  %5 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %FromInput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %4, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %5, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %CMMcargo.addr, align 8, !tbaa !1
  %ToOutputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 6
  %8 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat, align 8, !tbaa !37
  %9 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)**, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*** %ToOutput.addr, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %8, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %9, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i8** %hProfiles, i32* %BPC, i32* %Intents, double* %AdaptationStates, i8* %hGamutProfile, i32 %nGamutPCSposition, i32 %InputFormat, i32 %OutputFormat, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %Intents.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %hGamutProfile.addr = alloca i8*, align 8
  %nGamutPCSposition.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32, align 4
  %OutputFormat.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %xform = alloca %struct._cmstransform_struct*, align 8
  %EntryColorSpace = alloca i32, align 4
  %ExitColorSpace = alloca i32, align 4
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %LastIntent = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !24
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store i32* %Intents, i32** %Intents.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i8* %hGamutProfile, i8** %hGamutProfile.addr, align 8, !tbaa !1
  store i32 %nGamutPCSposition, i32* %nGamutPCSposition.addr, align 4, !tbaa !24
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %EntryColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ExitColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %LastIntent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub = sub i32 %5, 1
  %idxprom = zext i32 %sub to i64
  %6 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !24
  store i32 %7, i32* %LastIntent, align 4, !tbaa !24
  %8 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and = and i32 %8, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmstransform_struct* @AllocEmptyTransform(%struct._cmsContext_struct* %9, %struct._cmsPipeline_struct* null, i32 0, i32* %InputFormat.addr, i32* %OutputFormat.addr, i32* %dwFlags.addr) #6
  %10 = bitcast %struct._cmstransform_struct* %call to i8*
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and1 = and i32 %11, 4096
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** %hGamutProfile.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %12, null
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.3
  %13 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and5 = and i32 %13, -4097
  store i32 %and5, i32* %dwFlags.addr, align 4, !tbaa !24
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %14 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %call8 = call i32 @_cmsFormatterIsFloat(i32 %14) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %15 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %call10 = call i32 @_cmsFormatterIsFloat(i32 %15) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.7
  %16 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %or = or i32 %16, 64
  store i32 %or, i32* %dwFlags.addr, align 4, !tbaa !24
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false
  %17 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %18 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %call14 = call i32 @GetXFormColorSpaces(i32 %17, i8** %18, i32* %EntryColorSpace, i32* %ExitColorSpace) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %19, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %20 = load i32, i32* %EntryColorSpace, align 4, !tbaa !38
  %21 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %call18 = call i32 @IsProperColorSpace(i32 %20, i32 %21) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %22, i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %23 = load i32, i32* %ExitColorSpace, align 4, !tbaa !38
  %24 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %call22 = call i32 @IsProperColorSpace(i32 %23, i32 %24) #6
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %25, i32 9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %27 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %28 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %29 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %31 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %32 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call26 = call %struct._cmsPipeline_struct* @_cmsLinkProfiles(%struct._cmsContext_struct* %26, i32 %27, i32* %28, i8** %29, i32* %30, double* %31, i32 %32) #6
  store %struct._cmsPipeline_struct* %call26, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp27 = icmp eq %struct._cmsPipeline_struct* %33, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %34, i32 13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %35 = load i32, i32* %EntryColorSpace, align 4, !tbaa !38
  %call30 = call i32 @cmsChannelsOf(i32 %35) #6
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %call31 = call i32 @cmsPipelineInputChannels(%struct._cmsPipeline_struct* %36) #6
  %cmp32 = icmp ne i32 %call30, %call31
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.29
  %37 = load i32, i32* %ExitColorSpace, align 4, !tbaa !38
  %call34 = call i32 @cmsChannelsOf(i32 %37) #6
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %call35 = call i32 @cmsPipelineOutputChannels(%struct._cmsPipeline_struct* %38) #6
  %cmp36 = icmp ne i32 %call34, %call35
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false.33, %if.end.29
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %39) #6
  %40 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %40, i32 13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0)) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %lor.lhs.false.33
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %42 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %43 = load i32, i32* %LastIntent, align 4, !tbaa !24
  %call39 = call %struct._cmstransform_struct* @AllocEmptyTransform(%struct._cmsContext_struct* %41, %struct._cmsPipeline_struct* %42, i32 %43, i32* %InputFormat.addr, i32* %OutputFormat.addr, i32* %dwFlags.addr) #6
  store %struct._cmstransform_struct* %call39, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %44 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %cmp40 = icmp eq %struct._cmstransform_struct* %44, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.38
  %45 = load i32, i32* %EntryColorSpace, align 4, !tbaa !38
  %46 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryColorSpace43 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %46, i32 0, i32 12
  store i32 %45, i32* %EntryColorSpace43, align 4, !tbaa !39
  %47 = load i32, i32* %ExitColorSpace, align 4, !tbaa !38
  %48 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitColorSpace44 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %48, i32 0, i32 13
  store i32 %47, i32* %ExitColorSpace44, align 4, !tbaa !40
  %49 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub45 = sub i32 %49, 1
  %idxprom46 = zext i32 %sub45 to i64
  %50 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i32, i32* %50, i64 %idxprom46
  %51 = load i32, i32* %arrayidx47, align 4, !tbaa !24
  %52 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %52, i32 0, i32 19
  store i32 %51, i32* %RenderingIntent, align 4, !tbaa !41
  %53 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %EntryWhitePoint = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %53, i32 0, i32 14
  %54 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8*, i8** %54, i64 0
  %55 = load i8*, i8** %arrayidx48, align 8, !tbaa !1
  %call49 = call i8* @cmsReadTag(i8* %55, i32 2004119668) #6
  %56 = bitcast i8* %call49 to %struct.cmsCIEXYZ*
  call void @SetWhitePoint(%struct.cmsCIEXYZ* %EntryWhitePoint, %struct.cmsCIEXYZ* %56) #6
  %57 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ExitWhitePoint = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %57, i32 0, i32 15
  %58 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub50 = sub i32 %58, 1
  %idxprom51 = zext i32 %sub50 to i64
  %59 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i8*, i8** %59, i64 %idxprom51
  %60 = load i8*, i8** %arrayidx52, align 8, !tbaa !1
  %call53 = call i8* @cmsReadTag(i8* %60, i32 2004119668) #6
  %61 = bitcast i8* %call53 to %struct.cmsCIEXYZ*
  call void @SetWhitePoint(%struct.cmsCIEXYZ* %ExitWhitePoint, %struct.cmsCIEXYZ* %61) #6
  %62 = load i8*, i8** %hGamutProfile.addr, align 8, !tbaa !1
  %cmp54 = icmp ne i8* %62, null
  br i1 %cmp54, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.42
  %63 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and55 = and i32 %63, 4096
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %land.lhs.true
  %64 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %65 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %66 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %67 = load i32*, i32** %Intents.addr, align 8, !tbaa !1
  %68 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %69 = load i32, i32* %nGamutPCSposition.addr, align 4, !tbaa !24
  %70 = load i8*, i8** %hGamutProfile.addr, align 8, !tbaa !1
  %call58 = call %struct._cmsPipeline_struct* @_cmsCreateGamutCheckPipeline(%struct._cmsContext_struct* %64, i8** %65, i32* %66, i32* %67, double* %68, i32 %69, i8* %70) #6
  %71 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %71, i32 0, i32 9
  store %struct._cmsPipeline_struct* %call58, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %land.lhs.true, %if.end.42
  %72 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8*, i8** %72, i64 0
  %73 = load i8*, i8** %arrayidx60, align 8, !tbaa !1
  %call61 = call i32 @cmsIsTag(i8* %73, i32 1668051572) #6
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.59
  %74 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx64, align 8, !tbaa !1
  %call65 = call i8* @cmsReadTag(i8* %75, i32 1668051572) #6
  %76 = bitcast i8* %call65 to %struct._cms_NAMEDCOLORLIST_struct*
  %call66 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %76) #6
  %77 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %InputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %77, i32 0, i32 10
  store %struct._cms_NAMEDCOLORLIST_struct* %call66, %struct._cms_NAMEDCOLORLIST_struct** %InputColorant, align 8, !tbaa !18
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.end.59
  %78 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub68 = sub i32 %78, 1
  %idxprom69 = zext i32 %sub68 to i64
  %79 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8*, i8** %79, i64 %idxprom69
  %80 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  %call71 = call i32 @cmsGetDeviceClass(i8* %80) #6
  %cmp72 = icmp eq i32 %call71, 1818848875
  br i1 %cmp72, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.end.67
  %81 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub74 = sub i32 %81, 1
  %idxprom75 = zext i32 %sub74 to i64
  %82 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8*, i8** %82, i64 %idxprom75
  %83 = load i8*, i8** %arrayidx76, align 8, !tbaa !1
  %call77 = call i32 @cmsIsTag(i8* %83, i32 1668050804) #6
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.then.73
  %84 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub80 = sub i32 %84, 1
  %idxprom81 = zext i32 %sub80 to i64
  %85 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8*, i8** %85, i64 %idxprom81
  %86 = load i8*, i8** %arrayidx82, align 8, !tbaa !1
  %call83 = call i8* @cmsReadTag(i8* %86, i32 1668050804) #6
  %87 = bitcast i8* %call83 to %struct._cms_NAMEDCOLORLIST_struct*
  %call84 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %87) #6
  %88 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputColorant = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %88, i32 0, i32 11
  store %struct._cms_NAMEDCOLORLIST_struct* %call84, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant, align 8, !tbaa !19
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.then.73
  br label %if.end.99

if.else:                                          ; preds = %if.end.67
  %89 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub86 = sub i32 %89, 1
  %idxprom87 = zext i32 %sub86 to i64
  %90 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8*, i8** %90, i64 %idxprom87
  %91 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  %call89 = call i32 @cmsIsTag(i8* %91, i32 1668051572) #6
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.98

if.then.91:                                       ; preds = %if.else
  %92 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %sub92 = sub i32 %92, 1
  %idxprom93 = zext i32 %sub92 to i64
  %93 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8*, i8** %93, i64 %idxprom93
  %94 = load i8*, i8** %arrayidx94, align 8, !tbaa !1
  %call95 = call i8* @cmsReadTag(i8* %94, i32 1668051572) #6
  %95 = bitcast i8* %call95 to %struct._cms_NAMEDCOLORLIST_struct*
  %call96 = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %95) #6
  %96 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputColorant97 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %96, i32 0, i32 11
  store %struct._cms_NAMEDCOLORLIST_struct* %call96, %struct._cms_NAMEDCOLORLIST_struct** %OutputColorant97, align 8, !tbaa !19
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.91, %if.else
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.85
  %97 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and100 = and i32 %97, 128
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %if.end.99
  %98 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %99 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %100 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %call103 = call %struct.cmsSEQ* @_cmsCompileProfileSequence(%struct._cmsContext_struct* %98, i32 %99, i8** %100) #6
  %101 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Sequence = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %101, i32 0, i32 16
  store %struct.cmsSEQ* %call103, %struct.cmsSEQ** %Sequence, align 8, !tbaa !20
  br label %if.end.106

if.else.104:                                      ; preds = %if.end.99
  %102 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Sequence105 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %102, i32 0, i32 16
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %Sequence105, align 8, !tbaa !20
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.102
  %103 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and107 = and i32 %103, 64
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.end.128, label %if.then.109

if.then.109:                                      ; preds = %if.end.106
  %104 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %104, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %105 = bitcast [16 x i16]* %CacheIn to i8*
  %call110 = call i8* @memset(i8* %105, i32 0, i64 32) #8
  %106 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %GamutCheck111 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %106, i32 0, i32 9
  %107 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck111, align 8, !tbaa !12
  %cmp112 = icmp ne %struct._cmsPipeline_struct* %107, null
  br i1 %cmp112, label %if.then.113, label %if.else.118

if.then.113:                                      ; preds = %if.then.109
  %108 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %109 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Cache114 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %109, i32 0, i32 7
  %CacheIn115 = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache114, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn115, i32 0, i32 0
  %110 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Cache116 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %110, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache116, i32 0, i32 1
  %arraydecay117 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  call void @TransformOnePixelWithGamutCheck(%struct._cmstransform_struct* %108, i16* %arraydecay, i16* %arraydecay117) #6
  br label %if.end.127

if.else.118:                                      ; preds = %if.then.109
  %111 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Lut119 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %111, i32 0, i32 8
  %112 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut119, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %112, i32 0, i32 4
  %113 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  %114 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Cache120 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %114, i32 0, i32 7
  %CacheIn121 = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache120, i32 0, i32 0
  %arraydecay122 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn121, i32 0, i32 0
  %115 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Cache123 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %115, i32 0, i32 7
  %CacheOut124 = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache123, i32 0, i32 1
  %arraydecay125 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut124, i32 0, i32 0
  %116 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %Lut126 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %116, i32 0, i32 8
  %117 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut126, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %117, i32 0, i32 3
  %118 = load i8*, i8** %Data, align 8, !tbaa !44
  call void %113(i16* %arraydecay122, i16* %arraydecay125, i8* %118) #6
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.118, %if.then.113
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.106
  %119 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %120 = bitcast %struct._cmstransform_struct* %119 to i8*
  store i8* %120, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.128, %if.then.41, %if.then.37, %if.then.28, %if.then.24, %if.then.20, %if.then.16, %if.then
  %121 = bitcast i32* %LastIntent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %ExitColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %EntryColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = load i8*, i8** %retval
  ret i8* %126
}

; Function Attrs: nounwind uwtable
define internal %struct._cmstransform_struct* @AllocEmptyTransform(%struct._cmsContext_struct* %ContextID, %struct._cmsPipeline_struct* %lut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca %struct._cmstransform_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %ctx = alloca %struct._cmsTransformPluginChunkType*, align 8
  %Plugin = alloca %struct._cmsTransformCollection_st*, align 8
  %p = alloca %struct._cmstransform_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %union.cmsFormatter, align 8
  %coerce11 = alloca %union.cmsFormatter, align 8
  %coerce15 = alloca %union.cmsFormatter, align 8
  %coerce18 = alloca %union.cmsFormatter, align 8
  %coerce34 = alloca %union.cmsFormatter, align 8
  %coerce39 = alloca %union.cmsFormatter, align 8
  %BytesPerPixelInput = alloca i32, align 4
  %coerce64 = alloca %union.cmsFormatter, align 8
  %coerce69 = alloca %union.cmsFormatter, align 8
  %inwords = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %lut, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !24
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsTransformPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 13) #6
  %2 = bitcast i8* %call to %struct._cmsTransformPluginChunkType*
  store %struct._cmsTransformPluginChunkType* %2, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct._cmsTransformCollection_st** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %5, i32 256) #6
  %6 = bitcast i8* %call1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %6, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %tobool = icmp ne %struct._cmstransform_struct* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._cmstransform_struct* null, %struct._cmstransform_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end:                                           ; preds = %entry
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %lut.addr, align 8, !tbaa !1
  %9 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %9, i32 0, i32 8
  store %struct._cmsPipeline_struct* %8, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %10 = load %struct._cmsTransformPluginChunkType*, %struct._cmsTransformPluginChunkType** %ctx, align 8, !tbaa !1
  %TransformCollection = getelementptr inbounds %struct._cmsTransformPluginChunkType, %struct._cmsTransformPluginChunkType* %10, i32 0, i32 0
  %11 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %TransformCollection, align 8, !tbaa !26
  store %struct._cmsTransformCollection_st* %11, %struct._cmsTransformCollection_st** %Plugin, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Plugin, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsTransformCollection_st* %12, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Plugin, align 8, !tbaa !1
  %Factory = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %13, i32 0, i32 0
  %14 = load i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)*, i32 (void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)**, i8**, void (%struct._cmsContext_struct*, i8*)**, %struct._cmsPipeline_struct**, i32*, i32*, i32*)** %Factory, align 8, !tbaa !33
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 2
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %UserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 21
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FreeUserData = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %17, i32 0, i32 22
  %18 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut2 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %18, i32 0, i32 8
  %19 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %20 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %21 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call3 = call i32 %14(void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform, i8** %UserData, void (%struct._cmsContext_struct*, i8*)** %FreeUserData, %struct._cmsPipeline_struct** %Lut2, i32* %19, i32* %20, i32* %21) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.21

if.then.5:                                        ; preds = %for.body
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 20
  store %struct._cmsContext_struct* %22, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !23
  %24 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !24
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %InputFormat7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 0
  store i32 %25, i32* %InputFormat7, align 4, !tbaa !45
  %27 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !24
  %29 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %OutputFormat8 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %29, i32 0, i32 1
  store i32 %28, i32* %OutputFormat8, align 4, !tbaa !46
  %30 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !24
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %dwOriginalFlags = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %32, i32 0, i32 17
  store i32 %31, i32* %dwOriginalFlags, align 4, !tbaa !47
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %34 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !24
  %call9 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %33, i32 %35, i32 0, i32 0) #6
  %coerce.dive = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call9, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive, align 8
  %Fmt16 = bitcast %union.cmsFormatter* %coerce to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %36 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt16, align 8, !tbaa !1
  %37 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %37, i32 0, i32 3
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %36, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %39 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %40 = load i32, i32* %39, align 4, !tbaa !24
  %call10 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %38, i32 %40, i32 1, i32 0) #6
  %coerce.dive12 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce11, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call10, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive12, align 8
  %Fmt1613 = bitcast %union.cmsFormatter* %coerce11 to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %41 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt1613, align 8, !tbaa !1
  %42 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %42, i32 0, i32 4
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %41, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %43 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %44 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %45 = load i32, i32* %44, align 4, !tbaa !24
  %call14 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %43, i32 %45, i32 0, i32 1) #6
  %coerce.dive16 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce15, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call14, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive16, align 8
  %FmtFloat = bitcast %union.cmsFormatter* %coerce15 to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  %46 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat, align 8, !tbaa !1
  %47 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %47, i32 0, i32 5
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %46, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat, align 8, !tbaa !36
  %48 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %49 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %50 = load i32, i32* %49, align 4, !tbaa !24
  %call17 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %48, i32 %50, i32 1, i32 1) #6
  %coerce.dive19 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce18, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call17, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive19, align 8
  %FmtFloat20 = bitcast %union.cmsFormatter* %coerce18 to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  %51 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat20, align 8, !tbaa !1
  %52 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %52, i32 0, i32 6
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %51, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat, align 8, !tbaa !37
  %53 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  store %struct._cmstransform_struct* %53, %struct._cmstransform_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %54 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Plugin, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsTransformCollection_st, %struct._cmsTransformCollection_st* %54, i32 0, i32 1
  %55 = load %struct._cmsTransformCollection_st*, %struct._cmsTransformCollection_st** %Next, align 8, !tbaa !28
  store %struct._cmsTransformCollection_st* %55, %struct._cmsTransformCollection_st** %Plugin, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut22 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %56, i32 0, i32 8
  %57 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut22, align 8, !tbaa !17
  %cmp23 = icmp ne %struct._cmsPipeline_struct* %57, null
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %for.end
  %58 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %59 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %Lut25 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %59, i32 0, i32 8
  %60 = load i32, i32* %Intent.addr, align 4, !tbaa !24
  %61 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %62 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %63 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call26 = call i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %58, %struct._cmsPipeline_struct** %Lut25, i32 %60, i32* %61, i32* %62, i32* %63) #6
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %for.end
  %64 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !24
  %call28 = call i32 @_cmsFormatterIsFloat(i32 %65) #6
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %if.end.27
  %66 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %67 = load i32, i32* %66, align 4, !tbaa !24
  %call30 = call i32 @_cmsFormatterIsFloat(i32 %67) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.54

if.then.32:                                       ; preds = %land.lhs.true
  %68 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %69 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %70 = load i32, i32* %69, align 4, !tbaa !24
  %call33 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %68, i32 %70, i32 0, i32 1) #6
  %coerce.dive35 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce34, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call33, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive35, align 8
  %FmtFloat36 = bitcast %union.cmsFormatter* %coerce34 to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  %71 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat36, align 8, !tbaa !1
  %72 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInputFloat37 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %72, i32 0, i32 5
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %71, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat37, align 8, !tbaa !36
  %73 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %74 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %75 = load i32, i32* %74, align 4, !tbaa !24
  %call38 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %73, i32 %75, i32 1, i32 1) #6
  %coerce.dive40 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce39, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call38, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive40, align 8
  %FmtFloat41 = bitcast %union.cmsFormatter* %coerce39 to i8* (%struct._cmstransform_struct*, float*, i8*, i32)**
  %76 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FmtFloat41, align 8, !tbaa !1
  %77 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutputFloat42 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %77, i32 0, i32 6
  store i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %76, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat42, align 8, !tbaa !37
  %78 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %79 = load i32, i32* %78, align 4, !tbaa !24
  %or = or i32 %79, 33554432
  store i32 %or, i32* %78, align 4, !tbaa !24
  %80 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInputFloat43 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %80, i32 0, i32 5
  %81 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat43, align 8, !tbaa !36
  %cmp44 = icmp eq i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %81, null
  br i1 %cmp44, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.32
  %82 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutputFloat45 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %82, i32 0, i32 6
  %83 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat45, align 8, !tbaa !37
  %cmp46 = icmp eq i8* (%struct._cmstransform_struct*, float*, i8*, i32)* %83, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.32
  %84 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %84, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #6
  %85 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %86 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %87 = bitcast %struct._cmstransform_struct* %86 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %85, i8* %87) #6
  store %struct._cmstransform_struct* null, %struct._cmstransform_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.48:                                        ; preds = %lor.lhs.false
  %88 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %89 = load i32, i32* %88, align 4, !tbaa !24
  %and = and i32 %89, 512
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.48
  %90 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform51 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %90, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @NullFloatXFORM, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform51, align 8, !tbaa !25
  br label %if.end.53

if.else:                                          ; preds = %if.end.48
  %91 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform52 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %91, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @FloatXFORM, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform52, align 8, !tbaa !25
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.50
  br label %if.end.134

if.else.54:                                       ; preds = %land.lhs.true, %if.end.27
  %92 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %93 = load i32, i32* %92, align 4, !tbaa !24
  %cmp55 = icmp eq i32 %93, 0
  br i1 %cmp55, label %land.lhs.true.56, label %if.else.62

land.lhs.true.56:                                 ; preds = %if.else.54
  %94 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %95 = load i32, i32* %94, align 4, !tbaa !24
  %cmp57 = icmp eq i32 %95, 0
  br i1 %cmp57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %land.lhs.true.56
  %96 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutput59 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %96, i32 0, i32 4
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* null, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput59, align 8, !tbaa !35
  %97 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInput60 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %97, i32 0, i32 3
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* null, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput60, align 8, !tbaa !34
  %98 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %99 = load i32, i32* %98, align 4, !tbaa !24
  %or61 = or i32 %99, 33554432
  store i32 %or61, i32* %98, align 4, !tbaa !24
  br label %if.end.88

if.else.62:                                       ; preds = %land.lhs.true.56, %if.else.54
  %100 = bitcast i32* %BytesPerPixelInput to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %102 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %103 = load i32, i32* %102, align 4, !tbaa !24
  %call63 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %101, i32 %103, i32 0, i32 0) #6
  %coerce.dive65 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce64, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call63, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive65, align 8
  %Fmt1666 = bitcast %union.cmsFormatter* %coerce64 to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %104 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt1666, align 8, !tbaa !1
  %105 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInput67 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %105, i32 0, i32 3
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %104, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput67, align 8, !tbaa !34
  %106 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %107 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %108 = load i32, i32* %107, align 4, !tbaa !24
  %call68 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %106, i32 %108, i32 1, i32 0) #6
  %coerce.dive70 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce69, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call68, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive70, align 8
  %Fmt1671 = bitcast %union.cmsFormatter* %coerce69 to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %109 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt1671, align 8, !tbaa !1
  %110 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutput72 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %110, i32 0, i32 4
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %109, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput72, align 8, !tbaa !35
  %111 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %FromInput73 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %111, i32 0, i32 3
  %112 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput73, align 8, !tbaa !34
  %cmp74 = icmp eq i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %112, null
  br i1 %cmp74, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %if.else.62
  %113 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ToOutput76 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %113, i32 0, i32 4
  %114 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput76, align 8, !tbaa !35
  %cmp77 = icmp eq i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %114, null
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.75, %if.else.62
  %115 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %115, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #6
  %116 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %117 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %118 = bitcast %struct._cmstransform_struct* %117 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %116, i8* %118) #6
  store %struct._cmstransform_struct* null, %struct._cmstransform_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %lor.lhs.false.75
  %119 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %InputFormat80 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %119, i32 0, i32 0
  %120 = load i32, i32* %InputFormat80, align 4, !tbaa !45
  %and81 = and i32 %120, 7
  store i32 %and81, i32* %BytesPerPixelInput, align 4, !tbaa !24
  %121 = load i32, i32* %BytesPerPixelInput, align 4, !tbaa !24
  %cmp82 = icmp eq i32 %121, 0
  br i1 %cmp82, label %if.then.85, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.end.79
  %122 = load i32, i32* %BytesPerPixelInput, align 4, !tbaa !24
  %cmp84 = icmp sge i32 %122, 2
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %lor.lhs.false.83, %if.end.79
  %123 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %124 = load i32, i32* %123, align 4, !tbaa !24
  %or86 = or i32 %124, 33554432
  store i32 %or86, i32* %123, align 4, !tbaa !24
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.78
  %125 = bitcast i32* %BytesPerPixelInput to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.140 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.88

if.end.88:                                        ; preds = %cleanup.cont, %if.then.58
  %126 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %127 = load i32, i32* %126, align 4, !tbaa !24
  %and89 = and i32 %127, 512
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.end.88
  %128 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform92 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %128, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @NullXFORM, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform92, align 8, !tbaa !25
  br label %if.end.133

if.else.93:                                       ; preds = %if.end.88
  %129 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %130 = load i32, i32* %129, align 4, !tbaa !24
  %and94 = and i32 %130, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.else.104

if.then.96:                                       ; preds = %if.else.93
  %131 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %132 = load i32, i32* %131, align 4, !tbaa !24
  %and97 = and i32 %132, 4096
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.then.96
  %133 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform100 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %133, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @PrecalculatedXFORMGamutCheck, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform100, align 8, !tbaa !25
  br label %if.end.103

if.else.101:                                      ; preds = %if.then.96
  %134 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform102 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %134, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @PrecalculatedXFORM, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform102, align 8, !tbaa !25
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.99
  br label %if.end.132

if.else.104:                                      ; preds = %if.else.93
  %135 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %136 = load i32, i32* %135, align 4, !tbaa !24
  %and105 = and i32 %136, 4096
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %if.else.104
  %137 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform108 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %137, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @CachedXFORMGamutCheck, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform108, align 8, !tbaa !25
  br label %if.end.131

if.else.109:                                      ; preds = %if.else.104
  %138 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %139 = load i32, i32* %138, align 4, !tbaa !24
  %and110 = and i32 %139, -2031617
  %cmp111 = icmp eq i32 %and110, 25
  br i1 %cmp111, label %land.lhs.true.112, label %if.else.117

land.lhs.true.112:                                ; preds = %if.else.109
  %140 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %141 = load i32, i32* %140, align 4, !tbaa !24
  %and113 = and i32 %141, -2031617
  %cmp114 = icmp eq i32 %and113, 9
  br i1 %cmp114, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %land.lhs.true.112
  %142 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform116 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %142, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @CachedXFORM3to1, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform116, align 8, !tbaa !25
  br label %if.end.130

if.else.117:                                      ; preds = %land.lhs.true.112, %if.else.109
  %143 = bitcast i32* %inwords to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %145 = load i32, i32* %144, align 4, !tbaa !24
  %shr = lshr i32 %145, 3
  %and118 = and i32 %shr, 15
  store i32 %and118, i32* %inwords, align 4, !tbaa !24
  %146 = load i32, i32* %inwords, align 4, !tbaa !24
  %cmp119 = icmp sle i32 %146, 2
  br i1 %cmp119, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %if.else.117
  %147 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform121 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %147, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @CachedXFORM4, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform121, align 8, !tbaa !25
  br label %if.end.129

if.else.122:                                      ; preds = %if.else.117
  %148 = load i32, i32* %inwords, align 4, !tbaa !24
  %cmp123 = icmp sle i32 %148, 4
  br i1 %cmp123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.else.122
  %149 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform125 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %149, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @CachedXFORM8, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform125, align 8, !tbaa !25
  br label %if.end.128

if.else.126:                                      ; preds = %if.else.122
  %150 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %xform127 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %150, i32 0, i32 2
  store void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)* @CachedXFORM, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)** %xform127, align 8, !tbaa !25
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.124
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.120
  %151 = bitcast i32* %inwords to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.115
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.107
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.103
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.91
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.53
  %152 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %153 = load i32, i32* %152, align 4, !tbaa !24
  %154 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %InputFormat135 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %154, i32 0, i32 0
  store i32 %153, i32* %InputFormat135, align 4, !tbaa !45
  %155 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %156 = load i32, i32* %155, align 4, !tbaa !24
  %157 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %OutputFormat136 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %157, i32 0, i32 1
  store i32 %156, i32* %OutputFormat136, align 4, !tbaa !46
  %158 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %159 = load i32, i32* %158, align 4, !tbaa !24
  %160 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %dwOriginalFlags137 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %160, i32 0, i32 17
  store i32 %159, i32* %dwOriginalFlags137, align 4, !tbaa !47
  %161 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %162 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %ContextID138 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %162, i32 0, i32 20
  store %struct._cmsContext_struct* %161, %struct._cmsContext_struct** %ContextID138, align 8, !tbaa !23
  %163 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  %UserData139 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %163, i32 0, i32 21
  store i8* null, i8** %UserData139, align 8, !tbaa !21
  %164 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p, align 8, !tbaa !1
  store %struct._cmstransform_struct* %164, %struct._cmstransform_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %if.end.134, %cleanup, %if.then.47, %if.then.5, %if.then
  %165 = bitcast %struct._cmstransform_struct** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast %struct._cmsTransformCollection_st** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast %struct._cmsTransformPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %retval
  ret %struct._cmstransform_struct* %168
}

declare i32 @_cmsFormatterIsFloat(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @GetXFormColorSpaces(i32 %nProfiles, i8** %hProfiles, i32* %Input, i32* %Output) #0 {
entry:
  %retval = alloca i32, align 4
  %nProfiles.addr = alloca i32, align 4
  %hProfiles.addr = alloca i8**, align 8
  %Input.addr = alloca i32*, align 8
  %Output.addr = alloca i32*, align 8
  %ColorSpaceIn = alloca i32, align 4
  %ColorSpaceOut = alloca i32, align 4
  %PostColorSpace = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cls = alloca i32, align 4
  %hProfile = alloca i8*, align 8
  %lIsInput = alloca i32, align 4
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !24
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %Input, i32** %Input.addr, align 8, !tbaa !1
  store i32* %Output, i32** %Output.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ColorSpaceIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ColorSpaceOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %PostColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

if.end.3:                                         ; preds = %if.end
  %7 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %call = call i32 @cmsGetColorSpace(i8* %8) #6
  store i32 %call, i32* %PostColorSpace, align 4, !tbaa !38
  %9 = load i32*, i32** %Input.addr, align 8, !tbaa !1
  store i32 %call, i32* %9, align 4, !tbaa !38
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %10 = load i32, i32* %i, align 4, !tbaa !24
  %11 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i32* %cls to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  store i8* %16, i8** %hProfile, align 8, !tbaa !1
  %17 = bitcast i32* %lIsInput to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %PostColorSpace, align 4, !tbaa !38
  %cmp7 = icmp ne i32 %18, 1482250784
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %19 = load i32, i32* %PostColorSpace, align 4, !tbaa !38
  %cmp8 = icmp ne i32 %19, 1281450528
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %20 = phi i1 [ false, %for.body ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %lIsInput, align 4, !tbaa !24
  %21 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %21, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %land.end
  %22 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call12 = call i32 @cmsGetDeviceClass(i8* %22) #6
  store i32 %call12, i32* %cls, align 4, !tbaa !38
  %23 = load i32, i32* %cls, align 4, !tbaa !38
  %cmp13 = icmp eq i32 %23, 1852662636
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  store i32 826494034, i32* %ColorSpaceIn, align 4, !tbaa !38
  %24 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp15 = icmp sgt i32 %24, 1
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %25 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call16 = call i32 @cmsGetPCS(i8* %25) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %26 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call17 = call i32 @cmsGetColorSpace(i8* %26) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call16, %cond.true ], [ %call17, %cond.false ]
  store i32 %cond, i32* %ColorSpaceOut, align 4, !tbaa !38
  br label %if.end.26

if.else:                                          ; preds = %if.end.11
  %27 = load i32, i32* %lIsInput, align 4, !tbaa !24
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %28 = load i32, i32* %cls, align 4, !tbaa !38
  %cmp18 = icmp eq i32 %28, 1818848875
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %lor.lhs.false, %if.else
  %29 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call20 = call i32 @cmsGetColorSpace(i8* %29) #6
  store i32 %call20, i32* %ColorSpaceIn, align 4, !tbaa !38
  %30 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call21 = call i32 @cmsGetPCS(i8* %30) #6
  store i32 %call21, i32* %ColorSpaceOut, align 4, !tbaa !38
  br label %if.end.25

if.else.22:                                       ; preds = %lor.lhs.false
  %31 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call23 = call i32 @cmsGetPCS(i8* %31) #6
  store i32 %call23, i32* %ColorSpaceIn, align 4, !tbaa !38
  %32 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call24 = call i32 @cmsGetColorSpace(i8* %32) #6
  store i32 %call24, i32* %ColorSpaceOut, align 4, !tbaa !38
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %cond.end
  %33 = load i32, i32* %i, align 4, !tbaa !24
  %cmp27 = icmp eq i32 %33, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %34 = load i32, i32* %ColorSpaceIn, align 4, !tbaa !38
  %35 = load i32*, i32** %Input.addr, align 8, !tbaa !1
  store i32 %34, i32* %35, align 4, !tbaa !38
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %36 = load i32, i32* %ColorSpaceOut, align 4, !tbaa !38
  store i32 %36, i32* %PostColorSpace, align 4, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.10
  %37 = bitcast i32* %lIsInput to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %cls to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %PostColorSpace, align 4, !tbaa !38
  %42 = load i32*, i32** %Output.addr, align 8, !tbaa !1
  store i32 %41, i32* %42, align 4, !tbaa !38
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.32

cleanup.32:                                       ; preds = %for.end, %cleanup, %if.then.2, %if.then
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %PostColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %ColorSpaceOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %ColorSpaceIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @IsProperColorSpace(i32 %Check, i32 %dwFormat) #0 {
entry:
  %retval = alloca i32, align 4
  %Check.addr = alloca i32, align 4
  %dwFormat.addr = alloca i32, align 4
  %Space1 = alloca i32, align 4
  %Space2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %Check, i32* %Check.addr, align 4, !tbaa !38
  store i32 %dwFormat, i32* %dwFormat.addr, align 4, !tbaa !24
  %0 = bitcast i32* %Space1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dwFormat.addr, align 4, !tbaa !24
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 31
  store i32 %and, i32* %Space1, align 4, !tbaa !24
  %2 = bitcast i32* %Space2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %Check.addr, align 4, !tbaa !38
  %call = call i32 @_cmsLCMScolorSpace(i32 %3) #6
  store i32 %call, i32* %Space2, align 4, !tbaa !24
  %4 = load i32, i32* %Space1, align 4, !tbaa !24
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %Space1, align 4, !tbaa !24
  %6 = load i32, i32* %Space2, align 4, !tbaa !24
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %Space1, align 4, !tbaa !24
  %cmp4 = icmp eq i32 %7, 30
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end.3
  %8 = load i32, i32* %Space2, align 4, !tbaa !24
  %cmp5 = icmp eq i32 %8, 10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %land.lhs.true, %if.end.3
  %9 = load i32, i32* %Space1, align 4, !tbaa !24
  %cmp8 = icmp eq i32 %9, 10
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.12

land.lhs.true.9:                                  ; preds = %if.end.7
  %10 = load i32, i32* %Space2, align 4, !tbaa !24
  %cmp10 = icmp eq i32 %10, 30
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true.9, %if.end.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.6, %if.then.2, %if.then
  %11 = bitcast i32* %Space2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %Space1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._cmsPipeline_struct* @_cmsLinkProfiles(%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32) #2

declare i32 @cmsChannelsOf(i32) #2

declare i32 @cmsPipelineInputChannels(%struct._cmsPipeline_struct*) #2

declare i32 @cmsPipelineOutputChannels(%struct._cmsPipeline_struct*) #2

; Function Attrs: nounwind uwtable
define internal void @SetWhitePoint(%struct.cmsCIEXYZ* %wtPt, %struct.cmsCIEXYZ* %src) #0 {
entry:
  %wtPt.addr = alloca %struct.cmsCIEXYZ*, align 8
  %src.addr = alloca %struct.cmsCIEXYZ*, align 8
  store %struct.cmsCIEXYZ* %wtPt, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %src, %struct.cmsCIEXYZ** %src.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %src.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsCIEXYZ* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %1, i32 0, i32 0
  store double 9.642000e-01, double* %X, align 8, !tbaa !48
  %2 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %2, i32 0, i32 1
  store double 1.000000e+00, double* %Y, align 8, !tbaa !49
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %3, i32 0, i32 2
  store double 8.249000e-01, double* %Z, align 8, !tbaa !50
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %src.addr, align 8, !tbaa !1
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %4, i32 0, i32 0
  %5 = load double, double* %X1, align 8, !tbaa !48
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %X2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %6, i32 0, i32 0
  store double %5, double* %X2, align 8, !tbaa !48
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %src.addr, align 8, !tbaa !1
  %Y3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 1
  %8 = load double, double* %Y3, align 8, !tbaa !49
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 1
  store double %8, double* %Y4, align 8, !tbaa !49
  %10 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %src.addr, align 8, !tbaa !1
  %Z5 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %10, i32 0, i32 2
  %11 = load double, double* %Z5, align 8, !tbaa !50
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %wtPt.addr, align 8, !tbaa !1
  %Z6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 2
  store double %11, double* %Z6, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i8* @cmsReadTag(i8*, i32) #2

declare %struct._cmsPipeline_struct* @_cmsCreateGamutCheckPipeline(%struct._cmsContext_struct*, i8**, i32*, i32*, double*, i32, i8*) #2

declare i32 @cmsIsTag(i8*, i32) #2

declare %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct*) #2

declare i32 @cmsGetDeviceClass(i8*) #2

declare %struct.cmsSEQ* @_cmsCompileProfileSequence(%struct._cmsContext_struct*, i32, i8**) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @TransformOnePixelWithGamutCheck(%struct._cmstransform_struct* %p, i16* %wIn, i16* %wOut) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %wIn.addr = alloca i16*, align 8
  %wOut.addr = alloca i16*, align 8
  %wOutOfGamut = alloca i16, align 2
  %i = alloca i16, align 2
  %ContextAlarmCodes = alloca %struct._cmsAlarmCodesChunkType*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i16* %wIn, i16** %wIn.addr, align 8, !tbaa !1
  store i16* %wOut, i16** %wOut.addr, align 8, !tbaa !1
  %0 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %1, i32 0, i32 9
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %2, i32 0, i32 4
  %3 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  %4 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %5, i32 0, i32 9
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck1, align 8, !tbaa !12
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %6, i32 0, i32 3
  %7 = load i8*, i8** %Data, align 8, !tbaa !44
  call void %3(i16* %4, i16* %wOutOfGamut, i8* %7) #6
  %8 = load i16, i16* %wOutOfGamut, align 2, !tbaa !51
  %conv = zext i16 %8 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 20
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !23
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %12, i32 2) #6
  %13 = bitcast i8* %call to %struct._cmsAlarmCodesChunkType*
  store %struct._cmsAlarmCodesChunkType* %13, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  store i16 0, i16* %i, align 2, !tbaa !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i16, i16* %i, align 2, !tbaa !51
  %conv3 = zext i16 %14 to i32
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %OutputChannels, align 4, !tbaa !53
  %cmp4 = icmp ult i32 %conv3, %17
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16, i16* %i, align 2, !tbaa !51
  %idxprom = zext i16 %18 to i64
  %19 = load %struct._cmsAlarmCodesChunkType*, %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes, align 8, !tbaa !1
  %AlarmCodes = getelementptr inbounds %struct._cmsAlarmCodesChunkType, %struct._cmsAlarmCodesChunkType* %19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i16], [16 x i16]* %AlarmCodes, i32 0, i64 %idxprom
  %20 = load i16, i16* %arrayidx, align 2, !tbaa !51
  %21 = load i16, i16* %i, align 2, !tbaa !51
  %idxprom6 = zext i16 %21 to i64
  %22 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %22, i64 %idxprom6
  store i16 %20, i16* %arrayidx7, align 2, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i16, i16* %i, align 2, !tbaa !51
  %inc = add i16 %23, 1
  store i16 %inc, i16* %i, align 2, !tbaa !51
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast %struct._cmsAlarmCodesChunkType** %ContextAlarmCodes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut8 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 8
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut8, align 8, !tbaa !17
  %Eval16Fn9 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %27, i32 0, i32 4
  %28 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn9, align 8, !tbaa !42
  %29 = load i16*, i16** %wIn.addr, align 8, !tbaa !1
  %30 = load i16*, i16** %wOut.addr, align 8, !tbaa !1
  %31 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut10 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %31, i32 0, i32 8
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut10, align 8, !tbaa !17
  %Data11 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %32, i32 0, i32 3
  %33 = load i8*, i8** %Data11, align 8, !tbaa !44
  call void %28(i16* %29, i16* %30, i8* %33) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %34 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.end(i64 2, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %ContextID, i8** %hProfiles, i32 %nProfiles, i32 %InputFormat, i32 %OutputFormat, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %nProfiles.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32, align 4
  %OutputFormat.addr = alloca i32, align 4
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %BPC = alloca [256 x i32], align 16
  %Intents = alloca [256 x i32], align 16
  %AdaptationStates = alloca [256 x double], align 16
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !24
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [256 x i32]* %BPC to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [256 x i32]* %Intents to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #1
  %3 = bitcast [256 x double]* %AdaptationStates to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #1
  %4 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp = icmp ule i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp1 = icmp ugt i32 %5, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %6, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), i32 %7) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !24
  %9 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and = and i32 %10, 8192
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %11 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %BPC, i32 0, i64 %idxprom
  store i32 %cond, i32* %arrayidx, align 4, !tbaa !24
  %12 = load i32, i32* %Intent.addr, align 4, !tbaa !24
  %13 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom3 = zext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* %Intents, i32 0, i64 %idxprom3
  store i32 %12, i32* %arrayidx4, align 4, !tbaa !24
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call double @cmsSetAdaptationStateTHR(%struct._cmsContext_struct* %14, double -1.000000e+00) #6
  %15 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom5 = zext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationStates, i32 0, i64 %idxprom5
  store double %call, double* %arrayidx6, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %19 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %BPC, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [256 x i32], [256 x i32]* %Intents, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [256 x double], [256 x double]* %AdaptationStates, i32 0, i32 0
  %20 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %21 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %22 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call9 = call i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %17, i32 %18, i8** %19, i32* %arraydecay, i32* %arraydecay7, double* %arraydecay8, i8* null, i32 0, i32 %20, i32 %21, i32 %22) #6
  store i8* %call9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %23 = bitcast [256 x double]* %AdaptationStates to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %23) #1
  %24 = bitcast [256 x i32]* %Intents to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %24) #1
  %25 = bitcast [256 x i32]* %BPC to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateMultiprofileTransform(i8** %hProfiles, i32 %nProfiles, i32 %InputFormat, i32 %OutputFormat, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %nProfiles.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32, align 4
  %OutputFormat.addr = alloca i32, align 4
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !24
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %cmp1 = icmp ugt i32 %1, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i32 0, i32 0), i32 %2) #6
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %4) #6
  %5 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %6 = load i32, i32* %nProfiles.addr, align 4, !tbaa !24
  %7 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %8 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %9 = load i32, i32* %Intent.addr, align 4, !tbaa !24
  %10 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call2 = call i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %call, i8** %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #6
  store i8* %call2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %ContextID, i8* %Input, i32 %InputFormat, i8* %Output, i32 %OutputFormat, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Input.addr = alloca i8*, align 8
  %InputFormat.addr = alloca i32, align 4
  %Output.addr = alloca i8*, align 8
  %OutputFormat.addr = alloca i32, align 4
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %hArray = alloca [2 x i8*], align 16
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Input, i8** %Input.addr, align 8, !tbaa !1
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i8* %Output, i8** %Output.addr, align 8, !tbaa !1
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = bitcast [2 x i8*]* %hArray to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i8*, i8** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %hArray, i32 0, i64 0
  store i8* %1, i8** %arrayidx, align 8, !tbaa !1
  %2 = load i8*, i8** %Output.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %hArray, i32 0, i64 1
  store i8* %2, i8** %arrayidx1, align 8, !tbaa !1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %hArray, i32 0, i32 0
  %4 = load i8*, i8** %Output.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  %cond = select i1 %cmp, i32 1, i32 2
  %5 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %6 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %7 = load i32, i32* %Intent.addr, align 4, !tbaa !24
  %8 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call = call i8* @cmsCreateMultiprofileTransformTHR(%struct._cmsContext_struct* %3, i8** %arraydecay, i32 %cond, i32 %5, i32 %6, i32 %7, i32 %8) #6
  %9 = bitcast [2 x i8*]* %hArray to i8*
  call void @llvm.lifetime.end(i64 16, i8* %9) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateTransform(i8* %Input, i32 %InputFormat, i8* %Output, i32 %OutputFormat, i32 %Intent, i32 %dwFlags) #0 {
entry:
  %Input.addr = alloca i8*, align 8
  %InputFormat.addr = alloca i32, align 4
  %Output.addr = alloca i8*, align 8
  %OutputFormat.addr = alloca i32, align 4
  %Intent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  store i8* %Input, i8** %Input.addr, align 8, !tbaa !1
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i8* %Output, i8** %Output.addr, align 8, !tbaa !1
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = load i8*, i8** %Input.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %0) #6
  %1 = load i8*, i8** %Input.addr, align 8, !tbaa !1
  %2 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %3 = load i8*, i8** %Output.addr, align 8, !tbaa !1
  %4 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %5 = load i32, i32* %Intent.addr, align 4, !tbaa !24
  %6 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call1 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %call, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateProofingTransformTHR(%struct._cmsContext_struct* %ContextID, i8* %InputProfile, i32 %InputFormat, i8* %OutputProfile, i32 %OutputFormat, i8* %ProofingProfile, i32 %nIntent, i32 %ProofingIntent, i32 %dwFlags) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %InputProfile.addr = alloca i8*, align 8
  %InputFormat.addr = alloca i32, align 4
  %OutputProfile.addr = alloca i8*, align 8
  %OutputFormat.addr = alloca i32, align 4
  %ProofingProfile.addr = alloca i8*, align 8
  %nIntent.addr = alloca i32, align 4
  %ProofingIntent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %hArray = alloca [4 x i8*], align 16
  %Intents = alloca [4 x i32], align 16
  %BPC = alloca [4 x i32], align 16
  %Adaptation = alloca [4 x double], align 16
  %DoBPC = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %InputProfile, i8** %InputProfile.addr, align 8, !tbaa !1
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i8* %OutputProfile, i8** %OutputProfile.addr, align 8, !tbaa !1
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i8* %ProofingProfile, i8** %ProofingProfile.addr, align 8, !tbaa !1
  store i32 %nIntent, i32* %nIntent.addr, align 4, !tbaa !24
  store i32 %ProofingIntent, i32* %ProofingIntent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = bitcast [4 x i8*]* %hArray to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast [4 x i32]* %Intents to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast [4 x i32]* %BPC to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast [4 x double]* %Adaptation to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %DoBPC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and = and i32 %5, 8192
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, i32* %DoBPC, align 4, !tbaa !24
  %6 = load i8*, i8** %InputProfile.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %hArray, i32 0, i64 0
  store i8* %6, i8** %arrayidx, align 8, !tbaa !1
  %7 = load i8*, i8** %ProofingProfile.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hArray, i32 0, i64 1
  store i8* %7, i8** %arrayidx1, align 8, !tbaa !1
  %8 = load i8*, i8** %ProofingProfile.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hArray, i32 0, i64 2
  store i8* %8, i8** %arrayidx2, align 8, !tbaa !1
  %9 = load i8*, i8** %OutputProfile.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds [4 x i8*], [4 x i8*]* %hArray, i32 0, i64 3
  store i8* %9, i8** %arrayidx3, align 8, !tbaa !1
  %10 = load i32, i32* %nIntent.addr, align 4, !tbaa !24
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 0
  store i32 %10, i32* %arrayidx4, align 4, !tbaa !24
  %11 = load i32, i32* %nIntent.addr, align 4, !tbaa !24
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 1
  store i32 %11, i32* %arrayidx5, align 4, !tbaa !24
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 2
  store i32 1, i32* %arrayidx6, align 4, !tbaa !24
  %12 = load i32, i32* %ProofingIntent.addr, align 4, !tbaa !24
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i64 3
  store i32 %12, i32* %arrayidx7, align 4, !tbaa !24
  %13 = load i32, i32* %DoBPC, align 4, !tbaa !24
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i64 0
  store i32 %13, i32* %arrayidx8, align 4, !tbaa !24
  %14 = load i32, i32* %DoBPC, align 4, !tbaa !24
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i64 1
  store i32 %14, i32* %arrayidx9, align 4, !tbaa !24
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i64 2
  store i32 0, i32* %arrayidx10, align 4, !tbaa !24
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i64 3
  store i32 0, i32* %arrayidx11, align 4, !tbaa !24
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call double @cmsSetAdaptationStateTHR(%struct._cmsContext_struct* %15, double -1.000000e+00) #6
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %Adaptation, i32 0, i64 3
  store double %call, double* %arrayidx12, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %Adaptation, i32 0, i64 2
  store double %call, double* %arrayidx13, align 8, !tbaa !8
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %Adaptation, i32 0, i64 1
  store double %call, double* %arrayidx14, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %Adaptation, i32 0, i64 0
  store double %call, double* %arrayidx15, align 8, !tbaa !8
  %16 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %and16 = and i32 %16, 20480
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %InputProfile.addr, align 8, !tbaa !1
  %19 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %20 = load i8*, i8** %OutputProfile.addr, align 8, !tbaa !1
  %21 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %22 = load i32, i32* %nIntent.addr, align 4, !tbaa !24
  %23 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call18 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %17, i8* %18, i32 %19, i8* %20, i32 %21, i32 %22, i32 %23) #6
  store i8* %call18, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %hArray, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [4 x i32], [4 x i32]* %BPC, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [4 x i32], [4 x i32]* %Intents, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [4 x double], [4 x double]* %Adaptation, i32 0, i32 0
  %25 = load i8*, i8** %ProofingProfile.addr, align 8, !tbaa !1
  %26 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %27 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %28 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call22 = call i8* @cmsCreateExtendedTransform(%struct._cmsContext_struct* %24, i32 4, i8** %arraydecay, i32* %arraydecay19, i32* %arraydecay20, double* %arraydecay21, i8* %25, i32 1, i32 %26, i32 %27, i32 %28) #6
  store i8* %call22, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast i32* %DoBPC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast [4 x double]* %Adaptation to i8*
  call void @llvm.lifetime.end(i64 32, i8* %30) #1
  %31 = bitcast [4 x i32]* %BPC to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  %32 = bitcast [4 x i32]* %Intents to i8*
  call void @llvm.lifetime.end(i64 16, i8* %32) #1
  %33 = bitcast [4 x i8*]* %hArray to i8*
  call void @llvm.lifetime.end(i64 32, i8* %33) #1
  %34 = load i8*, i8** %retval
  ret i8* %34
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateProofingTransform(i8* %InputProfile, i32 %InputFormat, i8* %OutputProfile, i32 %OutputFormat, i8* %ProofingProfile, i32 %nIntent, i32 %ProofingIntent, i32 %dwFlags) #0 {
entry:
  %InputProfile.addr = alloca i8*, align 8
  %InputFormat.addr = alloca i32, align 4
  %OutputProfile.addr = alloca i8*, align 8
  %OutputFormat.addr = alloca i32, align 4
  %ProofingProfile.addr = alloca i8*, align 8
  %nIntent.addr = alloca i32, align 4
  %ProofingIntent.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  store i8* %InputProfile, i8** %InputProfile.addr, align 8, !tbaa !1
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i8* %OutputProfile, i8** %OutputProfile.addr, align 8, !tbaa !1
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  store i8* %ProofingProfile, i8** %ProofingProfile.addr, align 8, !tbaa !1
  store i32 %nIntent, i32* %nIntent.addr, align 4, !tbaa !24
  store i32 %ProofingIntent, i32* %ProofingIntent.addr, align 4, !tbaa !24
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !24
  %0 = load i8*, i8** %InputProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %0) #6
  %1 = load i8*, i8** %InputProfile.addr, align 8, !tbaa !1
  %2 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %3 = load i8*, i8** %OutputProfile.addr, align 8, !tbaa !1
  %4 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %5 = load i8*, i8** %ProofingProfile.addr, align 8, !tbaa !1
  %6 = load i32, i32* %nIntent.addr, align 4, !tbaa !24
  %7 = load i32, i32* %ProofingIntent.addr, align 4, !tbaa !24
  %8 = load i32, i32* %dwFlags.addr, align 4, !tbaa !24
  %call1 = call i8* @cmsCreateProofingTransformTHR(%struct._cmsContext_struct* %call, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #6
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @cmsGetTransformContextID(i8* %hTransform) #0 {
entry:
  %retval = alloca %struct._cmsContext_struct*, align 8
  %hTransform.addr = alloca i8*, align 8
  %xform = alloca %struct._cmstransform_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmstransform_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 20
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !23
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %retval
  ret %struct._cmsContext_struct* %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetTransformInputFormat(i8* %hTransform) #0 {
entry:
  %retval = alloca i32, align 4
  %hTransform.addr = alloca i8*, align 8
  %xform = alloca %struct._cmstransform_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmstransform_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %InputFormat, align 4, !tbaa !45
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetTransformOutputFormat(i8* %hTransform) #0 {
entry:
  %retval = alloca i32, align 4
  %hTransform.addr = alloca i8*, align 8
  %xform = alloca %struct._cmstransform_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %3 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmstransform_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %OutputFormat, align 4, !tbaa !46
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsChangeBuffersFormat(i8* %hTransform, i32 %InputFormat, i32 %OutputFormat) #0 {
entry:
  %retval = alloca i32, align 4
  %hTransform.addr = alloca i8*, align 8
  %InputFormat.addr = alloca i32, align 4
  %OutputFormat.addr = alloca i32, align 4
  %xform = alloca %struct._cmstransform_struct*, align 8
  %FromInput = alloca i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, align 8
  %ToOutput = alloca i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  %coerce = alloca %union.cmsFormatter, align 8
  %coerce4 = alloca %union.cmsFormatter, align 8
  store i8* %hTransform, i8** %hTransform.addr, align 8, !tbaa !1
  store i32 %InputFormat, i32* %InputFormat.addr, align 4, !tbaa !24
  store i32 %OutputFormat, i32* %OutputFormat.addr, align 4, !tbaa !24
  %0 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hTransform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %3 = bitcast i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %dwOriginalFlags = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %5, i32 0, i32 17
  %6 = load i32, i32* %dwOriginalFlags, align 4, !tbaa !47
  %and = and i32 %6, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %7, i32 0, i32 20
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !23
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %8, i32 13, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.12, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %9, i32 0, i32 20
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !23
  %11 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %call = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %10, i32 %11, i32 0, i32 0) #6
  %coerce.dive = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive, align 8
  %Fmt16 = bitcast %union.cmsFormatter* %coerce to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %12 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt16, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %12, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !1
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ContextID2 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %13, i32 0, i32 20
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID2, align 8, !tbaa !23
  %15 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %call3 = call i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct* %14, i32 %15, i32 1, i32 0) #6
  %coerce.dive5 = getelementptr %union.cmsFormatter, %union.cmsFormatter* %coerce4, i32 0, i32 0
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %call3, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %coerce.dive5, align 8
  %Fmt166 = bitcast %union.cmsFormatter* %coerce4 to i8* (%struct._cmstransform_struct*, i16*, i8*, i32)**
  %16 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %Fmt166, align 8, !tbaa !1
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %16, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !1
  %17 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !1
  %cmp = icmp eq i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %17, null
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !1
  %cmp7 = icmp eq i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ContextID9 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 20
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID9, align 8, !tbaa !23
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %20, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %InputFormat.addr, align 4, !tbaa !24
  %22 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %InputFormat11 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %22, i32 0, i32 0
  store i32 %21, i32* %InputFormat11, align 4, !tbaa !45
  %23 = load i32, i32* %OutputFormat.addr, align 4, !tbaa !24
  %24 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %OutputFormat12 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %24, i32 0, i32 1
  store i32 %23, i32* %OutputFormat12, align 4, !tbaa !46
  %25 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !1
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %FromInput13 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 3
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %25, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput13, align 8, !tbaa !34
  %27 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !1
  %28 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %xform, align 8, !tbaa !1
  %ToOutput14 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %28, i32 0, i32 4
  store i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* %27, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput14, align 8, !tbaa !35
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.8, %if.then
  %29 = bitcast i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast %struct._cmstransform_struct** %xform to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i8* (%struct._cmstransform_struct*, i16*, i8*, i32)* @_cmsGetFormatter(%struct._cmsContext_struct*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

declare i32 @_cmsOptimizePipeline(%struct._cmsContext_struct*, %struct._cmsPipeline_struct**, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @NullFloatXFORM(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %fIn = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [16 x float]* %fIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %5, i8** %accum, align 8, !tbaa !1
  %6 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %6, i8** %output, align 8, !tbaa !1
  %7 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %7, i32* %n, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !24
  %9 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 5
  %11 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat, align 8, !tbaa !36
  %12 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %13 = load i8*, i8** %accum, align 8, !tbaa !1
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call = call i8* %11(%struct._cmstransform_struct* %12, float* %arraydecay, i8* %13, i32 %14) #6
  store i8* %call, i8** %accum, align 8, !tbaa !1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 6
  %16 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat, align 8, !tbaa !37
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %18 = load i8*, i8** %output, align 8, !tbaa !1
  %19 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call2 = call i8* %16(%struct._cmstransform_struct* %17, float* %arraydecay1, i8* %18, i32 %19) #6
  store i8* %call2, i8** %output, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [16 x float]* %fIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %23) #1
  %24 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FloatXFORM(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %fIn = alloca [16 x float], align 16
  %fOut = alloca [16 x float], align 16
  %OutOfGamut = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [16 x float]* %fIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [16 x float]* %fOut to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast float* %OutOfGamut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %7, i8** %accum, align 8, !tbaa !1
  %8 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %8, i8** %output, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !24
  %10 = load i32, i32* %Size.addr, align 4, !tbaa !24
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 5
  %12 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %FromInputFloat, align 8, !tbaa !36
  %13 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %14 = load i8*, i8** %accum, align 8, !tbaa !1
  %15 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call = call i8* %12(%struct._cmstransform_struct* %13, float* %arraydecay, i8* %14, i32 %15) #6
  store i8* %call, i8** %accum, align 8, !tbaa !1
  %16 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %16, i32 0, i32 9
  %17 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  %cmp1 = icmp ne %struct._cmsPipeline_struct* %17, null
  br i1 %cmp1, label %if.then, label %if.else.13

if.then:                                          ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %18 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck3 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %18, i32 0, i32 9
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck3, align 8, !tbaa !12
  call void @cmsPipelineEvalFloat(float* %arraydecay2, float* %OutOfGamut, %struct._cmsPipeline_struct* %19) #6
  %20 = load float, float* %OutOfGamut, align 4, !tbaa !54
  %conv = fpext float %20 to double
  %cmp4 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %21 = load i32, i32* %j, align 4, !tbaa !24
  %cmp8 = icmp ult i32 %21, 16
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %22 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %fOut, i32 0, i64 %idxprom
  store float -1.000000e+00, float* %arrayidx, align 4, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %23 = load i32, i32* %j, align 4, !tbaa !24
  %inc = add i32 %23, 1
  store i32 %inc, i32* %j, align 4, !tbaa !24
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end

if.else:                                          ; preds = %if.then
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [16 x float], [16 x float]* %fOut, i32 0, i32 0
  %24 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %24, i32 0, i32 8
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  call void @cmsPipelineEvalFloat(float* %arraydecay11, float* %arraydecay12, %struct._cmsPipeline_struct* %25) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end.17

if.else.13:                                       ; preds = %for.body
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %fIn, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %fOut, i32 0, i32 0
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut16 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 8
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut16, align 8, !tbaa !17
  call void @cmsPipelineEvalFloat(float* %arraydecay14, float* %arraydecay15, %struct._cmsPipeline_struct* %27) #6
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.13, %if.end
  %28 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutputFloat = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %28, i32 0, i32 6
  %29 = load i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)** %ToOutputFloat, align 8, !tbaa !37
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [16 x float], [16 x float]* %fOut, i32 0, i32 0
  %31 = load i8*, i8** %output, align 8, !tbaa !1
  %32 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call19 = call i8* %29(%struct._cmstransform_struct* %30, float* %arraydecay18, i8* %31, i32 %32) #6
  store i8* %call19, i8** %output, align 8, !tbaa !1
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.17
  %33 = load i32, i32* %i, align 4, !tbaa !24
  %inc21 = add i32 %33, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast float* %OutOfGamut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [16 x float]* %fOut to i8*
  call void @llvm.lifetime.end(i64 64, i8* %37) #1
  %38 = bitcast [16 x float]* %fIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %39 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NullXFORM(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [16 x i16], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [16 x i16]* %wIn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %5, i8** %accum, align 8, !tbaa !1
  %6 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %6, i8** %output, align 8, !tbaa !1
  %7 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %7, i32* %n, align 4, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !24
  %9 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 3
  %11 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %12 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %wIn, i32 0, i32 0
  %13 = load i8*, i8** %accum, align 8, !tbaa !1
  %14 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call = call i8* %11(%struct._cmstransform_struct* %12, i16* %arraydecay, i8* %13, i32 %14) #6
  store i8* %call, i8** %accum, align 8, !tbaa !1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 4
  %16 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %17 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [16 x i16], [16 x i16]* %wIn, i32 0, i32 0
  %18 = load i8*, i8** %output, align 8, !tbaa !1
  %19 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call2 = call i8* %16(%struct._cmstransform_struct* %17, i16* %arraydecay1, i8* %18, i32 %19) #6
  store i8* %call2, i8** %output, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [16 x i16]* %wIn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %23) #1
  %24 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PrecalculatedXFORMGamutCheck(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %evalGamut = alloca void (i16*, i16*, i8*)*, align 8
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %wOutOfGamut = alloca i16, align 2
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %8, i32* %n, align 4, !tbaa !24
  %9 = bitcast void (i16*, i16*, i8*)** %evalGamut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 9
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 4
  %12 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %12, void (i16*, i16*, i8*)** %evalGamut, align 8, !tbaa !1
  %13 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %14, i32 0, i32 8
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn1 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %15, i32 0, i32 4
  %16 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn1, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %16, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %17 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut2 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %18, i32 0, i32 8
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut2, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %19, i32 0, i32 3
  %20 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %20, i8** %data, align 8, !tbaa !1
  %21 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %22 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 16
  store i16* %arrayidx, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.17, %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 3
  %24 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %25 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %26 = load i16*, i16** %currIn, align 8, !tbaa !1
  %27 = load i8*, i8** %accum, align 8, !tbaa !1
  %28 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call = call i8* %24(%struct._cmstransform_struct* %25, i16* %26, i8* %27, i32 %28) #6
  store i8* %call, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  %30 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %evalGamut, align 8, !tbaa !1
  %31 = load i16*, i16** %currIn, align 8, !tbaa !1
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck4 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %32, i32 0, i32 9
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck4, align 8, !tbaa !12
  %Data5 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %33, i32 0, i32 3
  %34 = load i8*, i8** %Data5, align 8, !tbaa !44
  call void %30(i16* %31, i16* %wOutOfGamut, i8* %34) #6
  %35 = load i16, i16* %wOutOfGamut, align 2, !tbaa !51
  %conv = zext i16 %35 to i32
  %cmp6 = icmp sge i32 %conv, 1
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.end
  %arraydecay9 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  call void @cmsGetAlarmCodes(i16* %arraydecay9) #6
  br label %if.end.11

if.else:                                          ; preds = %do.end
  %36 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %37 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !1
  call void %36(i16* %37, i16* %arraydecay10, i8* %38) #6
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %39 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #1
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %40 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %40, i32 0, i32 4
  %41 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %42 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay13 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %43 = load i8*, i8** %output, align 8, !tbaa !1
  %44 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call14 = call i8* %41(%struct._cmstransform_struct* %42, i16* %arraydecay13, i8* %43, i32 %44) #6
  store i8* %call14, i8** %output, align 8, !tbaa !1
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.12
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.end.16
  %45 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %45, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.18, %if.then
  %46 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast void (i16*, i16*, i8*)** %evalGamut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %50) #1
  %51 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %52) #1
  %53 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
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
define internal void @PrecalculatedXFORM(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %8, i32* %n, align 4, !tbaa !24
  %9 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %10, i32 0, i32 8
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 4
  %12 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %12, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %13 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %14, i32 0, i32 8
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut1, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %15, i32 0, i32 3
  %16 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %16, i8** %data, align 8, !tbaa !1
  %17 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %18 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 16
  store i16* %arrayidx, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.9, %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 3
  %20 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %21 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %22 = load i16*, i16** %currIn, align 8, !tbaa !1
  %23 = load i8*, i8** %accum, align 8, !tbaa !1
  %24 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call = call i8* %20(%struct._cmstransform_struct* %21, i16* %22, i8* %23, i32 %24) #6
  store i8* %call, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %26 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8, !tbaa !1
  call void %25(i16* %26, i16* %arraydecay3, i8* %27) #6
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %28 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %28, i32 0, i32 4
  %29 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %31 = load i8*, i8** %output, align 8, !tbaa !1
  %32 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call6 = call i8* %29(%struct._cmstransform_struct* %30, i16* %arraydecay5, i8* %31, i32 %32) #6
  store i8* %call6, i8** %output, align 8, !tbaa !1
  br label %do.cond.7

do.cond.7:                                        ; preds = %do.body.4
  br label %do.end.8

do.end.8:                                         ; preds = %do.cond.7
  br label %do.cond.9

do.cond.9:                                        ; preds = %do.end.8
  %33 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %33, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.10, %if.then
  %34 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %37) #1
  %38 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  %40 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
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
define internal void @CachedXFORMGamutCheck(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %prevIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %evalGamut = alloca void (i16*, i16*, i8*)*, align 8
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %wOutOfGamut = alloca i16, align 2
  %tmp = alloca i16*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %9, i32* %n, align 4, !tbaa !24
  %10 = bitcast void (i16*, i16*, i8*)** %evalGamut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 9
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck, align 8, !tbaa !12
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 4
  %13 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %13, void (i16*, i16*, i8*)** %evalGamut, align 8, !tbaa !1
  %14 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn1 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 4
  %17 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn1, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %17, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %18 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut2 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %19, i32 0, i32 8
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut2, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %20, i32 0, i32 3
  %21 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %21, i8** %data, align 8, !tbaa !1
  %22 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %23 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %23, i64 16
  %24 = bitcast i16* %arrayidx to i8*
  %call = call i8* @memset(i8* %24, i32 0, i64 32) #8
  %arraydecay3 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %25 = bitcast i64* %arraydecay3 to i16*
  %arrayidx4 = getelementptr inbounds i16, i16* %25, i64 0
  %26 = bitcast i16* %arrayidx4 to i8*
  %27 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %27, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn, i32 0, i32 0
  %28 = bitcast i16* %arraydecay5 to i8*
  %call6 = call i8* @memcpy(i8* %26, i8* %28, i64 32) #8
  %arraydecay7 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %29 = bitcast i16* %arraydecay7 to i8*
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache8 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %30, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache8, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  %31 = bitcast i16* %arraydecay9 to i8*
  %call10 = call i8* @memcpy(i8* %29, i8* %31, i64 32) #8
  %arraydecay11 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %32 = bitcast i64* %arraydecay11 to i16*
  %arrayidx12 = getelementptr inbounds i16, i16* %32, i64 0
  store i16* %arrayidx12, i16** %prevIn, align 8, !tbaa !1
  %arraydecay13 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %33 = bitcast i64* %arraydecay13 to i16*
  %arrayidx14 = getelementptr inbounds i16, i16* %33, i64 16
  store i16* %arrayidx14, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.33, %if.end
  br label %do.body.15

do.body.15:                                       ; preds = %do.body
  %34 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %34, i32 0, i32 3
  %35 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %36 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %37 = load i16*, i16** %currIn, align 8, !tbaa !1
  %38 = load i8*, i8** %accum, align 8, !tbaa !1
  %39 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call16 = call i8* %35(%struct._cmstransform_struct* %36, i16* %37, i8* %38, i32 %39) #6
  store i8* %call16, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i16*, i16** %currIn, align 8, !tbaa !1
  %41 = bitcast i16* %40 to i8*
  %42 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %43 = bitcast i16* %42 to i8*
  %call17 = call i32 @memcmp(i8* %41, i8* %43, i64 32) #9
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %do.end
  %44 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.start(i64 2, i8* %44) #1
  %45 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %evalGamut, align 8, !tbaa !1
  %46 = load i16*, i16** %currIn, align 8, !tbaa !1
  %47 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %GamutCheck19 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %47, i32 0, i32 9
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %GamutCheck19, align 8, !tbaa !12
  %Data20 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %48, i32 0, i32 3
  %49 = load i8*, i8** %Data20, align 8, !tbaa !44
  call void %45(i16* %46, i16* %wOutOfGamut, i8* %49) #6
  %50 = load i16, i16* %wOutOfGamut, align 2, !tbaa !51
  %conv = zext i16 %50 to i32
  %cmp21 = icmp sge i32 %conv, 1
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.18
  %arraydecay24 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  call void @cmsGetAlarmCodes(i16* %arraydecay24) #6
  br label %if.end.26

if.else:                                          ; preds = %if.then.18
  %51 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %52 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay25 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %53 = load i8*, i8** %data, align 8, !tbaa !1
  call void %51(i16* %52, i16* %arraydecay25, i8* %53) #6
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %54 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load i16*, i16** %currIn, align 8, !tbaa !1
  store i16* %55, i16** %tmp, align 8, !tbaa !1
  %56 = load i16*, i16** %prevIn, align 8, !tbaa !1
  store i16* %56, i16** %currIn, align 8, !tbaa !1
  %57 = load i16*, i16** %tmp, align 8, !tbaa !1
  store i16* %57, i16** %prevIn, align 8, !tbaa !1
  %58 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i16* %wOutOfGamut to i8*
  call void @llvm.lifetime.end(i64 2, i8* %59) #1
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %do.end
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %60 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %60, i32 0, i32 4
  %61 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %62 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay29 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %63 = load i8*, i8** %output, align 8, !tbaa !1
  %64 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call30 = call i8* %61(%struct._cmstransform_struct* %62, i16* %arraydecay29, i8* %63, i32 %64) #6
  store i8* %call30, i8** %output, align 8, !tbaa !1
  br label %do.cond.31

do.cond.31:                                       ; preds = %do.body.28
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.end.32
  %65 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %65, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool34 = icmp ne i32 %dec, 0
  br i1 %tobool34, label %do.body, label %do.end.35

do.end.35:                                        ; preds = %do.cond.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.35, %if.then
  %66 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast void (i16*, i16*, i8*)** %evalGamut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %70) #1
  %71 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %73) #1
  %74 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
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
define internal void @CachedXFORM3to1(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %prevIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i16*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %9, i32* %n, align 4, !tbaa !24
  %10 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 4
  %13 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %13, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %14 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut1, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  %17 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %17, i8** %data, align 8, !tbaa !1
  %18 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %19 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 16
  %20 = bitcast i16* %arrayidx to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 32) #8
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %21 = bitcast i64* %arraydecay2 to i16*
  %arrayidx3 = getelementptr inbounds i16, i16* %21, i64 0
  %22 = bitcast i16* %arrayidx3 to i8*
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn, i32 0, i32 0
  %24 = bitcast i16* %arraydecay4 to i8*
  %call5 = call i8* @memcpy(i8* %22, i8* %24, i64 32) #8
  %arraydecay6 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %25 = bitcast i16* %arraydecay6 to i8*
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  %27 = bitcast i16* %arraydecay8 to i8*
  %call9 = call i8* @memcpy(i8* %25, i8* %27, i64 32) #8
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %28 = bitcast i64* %arraydecay10 to i16*
  %arrayidx11 = getelementptr inbounds i16, i16* %28, i64 0
  store i16* %arrayidx11, i16** %prevIn, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %29 = bitcast i64* %arraydecay12 to i16*
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 16
  store i16* %arrayidx13, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.53, %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.body
  %30 = load i8*, i8** %accum, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !38
  %conv = zext i8 %31 to i16
  %conv15 = zext i16 %conv to i32
  %shl = shl i32 %conv15, 8
  %32 = load i8*, i8** %accum, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !38
  %conv16 = zext i8 %33 to i32
  %or = or i32 %shl, %conv16
  %conv17 = trunc i32 %or to i16
  %34 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %34, i64 0
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !51
  %35 = load i8*, i8** %accum, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %accum, align 8, !tbaa !1
  %36 = load i8*, i8** %accum, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !38
  %conv19 = zext i8 %37 to i16
  %conv20 = zext i16 %conv19 to i32
  %shl21 = shl i32 %conv20, 8
  %38 = load i8*, i8** %accum, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !38
  %conv22 = zext i8 %39 to i32
  %or23 = or i32 %shl21, %conv22
  %conv24 = trunc i32 %or23 to i16
  %40 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %40, i64 1
  store i16 %conv24, i16* %arrayidx25, align 2, !tbaa !51
  %41 = load i8*, i8** %accum, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr26, i8** %accum, align 8, !tbaa !1
  %42 = load i8*, i8** %accum, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !38
  %conv27 = zext i8 %43 to i16
  %conv28 = zext i16 %conv27 to i32
  %shl29 = shl i32 %conv28, 8
  %44 = load i8*, i8** %accum, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !38
  %conv30 = zext i8 %45 to i32
  %or31 = or i32 %shl29, %conv30
  %conv32 = trunc i32 %or31 to i16
  %46 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %46, i64 2
  store i16 %conv32, i16* %arrayidx33, align 2, !tbaa !51
  %47 = load i8*, i8** %accum, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr34, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load i16*, i16** %currIn, align 8, !tbaa !1
  %49 = bitcast i16* %48 to i32*
  %arrayidx35 = getelementptr inbounds i32, i32* %49, i64 0
  %50 = load i32, i32* %arrayidx35, align 4, !tbaa !24
  %51 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %52 = bitcast i16* %51 to i32*
  %arrayidx36 = getelementptr inbounds i32, i32* %52, i64 0
  %53 = load i32, i32* %arrayidx36, align 4, !tbaa !24
  %cmp37 = icmp ne i32 %50, %53
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %54 = load i16*, i16** %currIn, align 8, !tbaa !1
  %55 = bitcast i16* %54 to i32*
  %arrayidx39 = getelementptr inbounds i32, i32* %55, i64 1
  %56 = load i32, i32* %arrayidx39, align 4, !tbaa !24
  %57 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %58 = bitcast i16* %57 to i32*
  %arrayidx40 = getelementptr inbounds i32, i32* %58, i64 1
  %59 = load i32, i32* %arrayidx40, align 4, !tbaa !24
  %cmp41 = icmp ne i32 %56, %59
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %lor.lhs.false, %do.end
  %60 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %61 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay44 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %62 = load i8*, i8** %data, align 8, !tbaa !1
  call void %60(i16* %61, i16* %arraydecay44, i8* %62) #6
  %63 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i16*, i16** %currIn, align 8, !tbaa !1
  store i16* %64, i16** %tmp, align 8, !tbaa !1
  %65 = load i16*, i16** %prevIn, align 8, !tbaa !1
  store i16* %65, i16** %currIn, align 8, !tbaa !1
  %66 = load i16*, i16** %tmp, align 8, !tbaa !1
  store i16* %66, i16** %prevIn, align 8, !tbaa !1
  %67 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false
  br label %do.body.46

do.body.46:                                       ; preds = %if.end.45
  %arraydecay47 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %68 = load i16, i16* %arraydecay47, align 2, !tbaa !51
  %conv48 = zext i16 %68 to i32
  %mul = mul nsw i32 %conv48, 65281
  %add = add nsw i32 %mul, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv49 = trunc i32 %and to i8
  %69 = load i8*, i8** %output, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr50, i8** %output, align 8, !tbaa !1
  store i8 %conv49, i8* %69, align 1, !tbaa !38
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.46
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.end.52
  %70 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %70, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.54, %if.then
  %71 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #1
  %75 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %77) #1
  %78 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
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
define internal void @CachedXFORM4(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %prevIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i16*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %9, i32* %n, align 4, !tbaa !24
  %10 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 4
  %13 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %13, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %14 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut1, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  %17 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %17, i8** %data, align 8, !tbaa !1
  %18 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %19 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 16
  %20 = bitcast i16* %arrayidx to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 32) #8
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %21 = bitcast i64* %arraydecay2 to i16*
  %arrayidx3 = getelementptr inbounds i16, i16* %21, i64 0
  %22 = bitcast i16* %arrayidx3 to i8*
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn, i32 0, i32 0
  %24 = bitcast i16* %arraydecay4 to i8*
  %call5 = call i8* @memcpy(i8* %22, i8* %24, i64 32) #8
  %arraydecay6 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %25 = bitcast i16* %arraydecay6 to i8*
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  %27 = bitcast i16* %arraydecay8 to i8*
  %call9 = call i8* @memcpy(i8* %25, i8* %27, i64 32) #8
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %28 = bitcast i64* %arraydecay10 to i16*
  %arrayidx11 = getelementptr inbounds i16, i16* %28, i64 0
  store i16* %arrayidx11, i16** %prevIn, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %29 = bitcast i64* %arraydecay12 to i16*
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 16
  store i16* %arrayidx13, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.27, %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.body
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %30, i32 0, i32 3
  %31 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %33 = load i16*, i16** %currIn, align 8, !tbaa !1
  %34 = load i8*, i8** %accum, align 8, !tbaa !1
  %35 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call15 = call i8* %31(%struct._cmstransform_struct* %32, i16* %33, i8* %34, i32 %35) #6
  store i8* %call15, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i16*, i16** %currIn, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i32*
  %arrayidx16 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx16, align 4, !tbaa !24
  %39 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %40 = bitcast i16* %39 to i32*
  %arrayidx17 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx17, align 4, !tbaa !24
  %cmp18 = icmp ne i32 %38, %41
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end
  %42 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %43 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay20 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %44 = load i8*, i8** %data, align 8, !tbaa !1
  call void %42(i16* %43, i16* %arraydecay20, i8* %44) #6
  %45 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load i16*, i16** %currIn, align 8, !tbaa !1
  store i16* %46, i16** %tmp, align 8, !tbaa !1
  %47 = load i16*, i16** %prevIn, align 8, !tbaa !1
  store i16* %47, i16** %currIn, align 8, !tbaa !1
  %48 = load i16*, i16** %tmp, align 8, !tbaa !1
  store i16* %48, i16** %prevIn, align 8, !tbaa !1
  %49 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %50 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %50, i32 0, i32 4
  %51 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %52 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %53 = load i8*, i8** %output, align 8, !tbaa !1
  %54 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call24 = call i8* %51(%struct._cmstransform_struct* %52, i16* %arraydecay23, i8* %53, i32 %54) #6
  store i8* %call24, i8** %output, align 8, !tbaa !1
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.22
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.end.26
  %55 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %55, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.28, %if.then
  %56 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %59) #1
  %60 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %62) #1
  %63 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
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
define internal void @CachedXFORM8(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %prevIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i16*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %9, i32* %n, align 4, !tbaa !24
  %10 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 4
  %13 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %13, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %14 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut1, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  %17 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %17, i8** %data, align 8, !tbaa !1
  %18 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %19 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 16
  %20 = bitcast i16* %arrayidx to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 32) #8
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %21 = bitcast i64* %arraydecay2 to i16*
  %arrayidx3 = getelementptr inbounds i16, i16* %21, i64 0
  %22 = bitcast i16* %arrayidx3 to i8*
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn, i32 0, i32 0
  %24 = bitcast i16* %arraydecay4 to i8*
  %call5 = call i8* @memcpy(i8* %22, i8* %24, i64 32) #8
  %arraydecay6 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %25 = bitcast i16* %arraydecay6 to i8*
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  %27 = bitcast i16* %arraydecay8 to i8*
  %call9 = call i8* @memcpy(i8* %25, i8* %27, i64 32) #8
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %28 = bitcast i64* %arraydecay10 to i16*
  %arrayidx11 = getelementptr inbounds i16, i16* %28, i64 0
  store i16* %arrayidx11, i16** %prevIn, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %29 = bitcast i64* %arraydecay12 to i16*
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 16
  store i16* %arrayidx13, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.30, %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.body
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %30, i32 0, i32 3
  %31 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %33 = load i16*, i16** %currIn, align 8, !tbaa !1
  %34 = load i8*, i8** %accum, align 8, !tbaa !1
  %35 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call15 = call i8* %31(%struct._cmstransform_struct* %32, i16* %33, i8* %34, i32 %35) #6
  store i8* %call15, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i16*, i16** %currIn, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i32*
  %arrayidx16 = getelementptr inbounds i32, i32* %37, i64 0
  %38 = load i32, i32* %arrayidx16, align 4, !tbaa !24
  %39 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %40 = bitcast i16* %39 to i32*
  %arrayidx17 = getelementptr inbounds i32, i32* %40, i64 0
  %41 = load i32, i32* %arrayidx17, align 4, !tbaa !24
  %cmp18 = icmp ne i32 %38, %41
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %42 = load i16*, i16** %currIn, align 8, !tbaa !1
  %43 = bitcast i16* %42 to i32*
  %arrayidx19 = getelementptr inbounds i32, i32* %43, i64 1
  %44 = load i32, i32* %arrayidx19, align 4, !tbaa !24
  %45 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %46 = bitcast i16* %45 to i32*
  %arrayidx20 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx20, align 4, !tbaa !24
  %cmp21 = icmp ne i32 %44, %47
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %lor.lhs.false, %do.end
  %48 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %49 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8, !tbaa !1
  call void %48(i16* %49, i16* %arraydecay23, i8* %50) #6
  %51 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i16*, i16** %currIn, align 8, !tbaa !1
  store i16* %52, i16** %tmp, align 8, !tbaa !1
  %53 = load i16*, i16** %prevIn, align 8, !tbaa !1
  store i16* %53, i16** %currIn, align 8, !tbaa !1
  %54 = load i16*, i16** %tmp, align 8, !tbaa !1
  store i16* %54, i16** %prevIn, align 8, !tbaa !1
  %55 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %56 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %56, i32 0, i32 4
  %57 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %58 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay26 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %59 = load i8*, i8** %output, align 8, !tbaa !1
  %60 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call27 = call i8* %57(%struct._cmstransform_struct* %58, i16* %arraydecay26, i8* %59, i32 %60) #6
  store i8* %call27, i8** %output, align 8, !tbaa !1
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.body.25
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end.29
  %61 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %61, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.31, %if.then
  %62 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %65) #1
  %66 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %68) #1
  %69 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
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
define internal void @CachedXFORM(%struct._cmstransform_struct* %p, i8* %in, i8* %out, i32 %Size, i32 %Stride) #0 {
entry:
  %p.addr = alloca %struct._cmstransform_struct*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Stride.addr = alloca i32, align 4
  %accum = alloca i8*, align 8
  %output = alloca i8*, align 8
  %wIn = alloca [8 x i64], align 16
  %currIn = alloca i16*, align 8
  %prevIn = alloca i16*, align 8
  %wOut = alloca [16 x i16], align 16
  %n = alloca i32, align 4
  %eval = alloca void (i16*, i16*, i8*)*, align 8
  %data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i16*, align 8
  store %struct._cmstransform_struct* %p, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !24
  store i32 %Stride, i32* %Stride.addr, align 4, !tbaa !24
  %0 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !1
  store i8* %1, i8** %accum, align 8, !tbaa !1
  %2 = bitcast i8** %output to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %out.addr, align 8, !tbaa !1
  store i8* %3, i8** %output, align 8, !tbaa !1
  %4 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %Size.addr, align 4, !tbaa !24
  store i32 %9, i32* %n, align 4, !tbaa !24
  %10 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !17
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %12, i32 0, i32 4
  %13 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !42
  store void (i16*, i16*, i8*)* %13, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %14 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Lut1 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %15, i32 0, i32 8
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut1, align 8, !tbaa !17
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 3
  %17 = load i8*, i8** %Data, align 8, !tbaa !44
  store i8* %17, i8** %data, align 8, !tbaa !1
  %18 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %19 = bitcast i64* %arraydecay to i16*
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 16
  %20 = bitcast i16* %arrayidx to i8*
  %call = call i8* @memset(i8* %20, i32 0, i64 32) #8
  %arraydecay2 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %21 = bitcast i64* %arraydecay2 to i16*
  %arrayidx3 = getelementptr inbounds i16, i16* %21, i64 0
  %22 = bitcast i16* %arrayidx3 to i8*
  %23 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %23, i32 0, i32 7
  %CacheIn = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheIn, i32 0, i32 0
  %24 = bitcast i16* %arraydecay4 to i8*
  %call5 = call i8* @memcpy(i8* %22, i8* %24, i64 32) #8
  %arraydecay6 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %25 = bitcast i16* %arraydecay6 to i8*
  %26 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %Cache7 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %26, i32 0, i32 7
  %CacheOut = getelementptr inbounds %struct._cmsCACHE, %struct._cmsCACHE* %Cache7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [16 x i16], [16 x i16]* %CacheOut, i32 0, i32 0
  %27 = bitcast i16* %arraydecay8 to i8*
  %call9 = call i8* @memcpy(i8* %25, i8* %27, i64 32) #8
  %arraydecay10 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %28 = bitcast i64* %arraydecay10 to i16*
  %arrayidx11 = getelementptr inbounds i16, i16* %28, i64 0
  store i16* %arrayidx11, i16** %prevIn, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [8 x i64], [8 x i64]* %wIn, i32 0, i32 0
  %29 = bitcast i64* %arraydecay12 to i16*
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 16
  store i16* %arrayidx13, i16** %currIn, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond.25, %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %do.body
  %30 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %FromInput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %30, i32 0, i32 3
  %31 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %FromInput, align 8, !tbaa !34
  %32 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %33 = load i16*, i16** %currIn, align 8, !tbaa !1
  %34 = load i8*, i8** %accum, align 8, !tbaa !1
  %35 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call15 = call i8* %31(%struct._cmstransform_struct* %32, i16* %33, i8* %34, i32 %35) #6
  store i8* %call15, i8** %accum, align 8, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i16*, i16** %currIn, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i8*
  %38 = load i16*, i16** %prevIn, align 8, !tbaa !1
  %39 = bitcast i16* %38 to i8*
  %call16 = call i32 @memcmp(i8* %37, i8* %39, i64 32) #9
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.end
  %40 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %eval, align 8, !tbaa !1
  %41 = load i16*, i16** %currIn, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8, !tbaa !1
  call void %40(i16* %41, i16* %arraydecay18, i8* %42) #6
  %43 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i16*, i16** %currIn, align 8, !tbaa !1
  store i16* %44, i16** %tmp, align 8, !tbaa !1
  %45 = load i16*, i16** %prevIn, align 8, !tbaa !1
  store i16* %45, i16** %currIn, align 8, !tbaa !1
  %46 = load i16*, i16** %tmp, align 8, !tbaa !1
  store i16* %46, i16** %prevIn, align 8, !tbaa !1
  %47 = bitcast i16** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %48 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %ToOutput = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %48, i32 0, i32 4
  %49 = load i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)** %ToOutput, align 8, !tbaa !35
  %50 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %p.addr, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [16 x i16], [16 x i16]* %wOut, i32 0, i32 0
  %51 = load i8*, i8** %output, align 8, !tbaa !1
  %52 = load i32, i32* %Stride.addr, align 4, !tbaa !24
  %call22 = call i8* %49(%struct._cmstransform_struct* %50, i16* %arraydecay21, i8* %51, i32 %52) #6
  store i8* %call22, i8** %output, align 8, !tbaa !1
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.20
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.end.24
  %53 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %53, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %tobool26 = icmp ne i32 %dec, 0
  br i1 %tobool26, label %do.body, label %do.end.27

do.end.27:                                        ; preds = %do.cond.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.27, %if.then
  %54 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast void (i16*, i16*, i8*)** %eval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast [16 x i16]* %wOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #1
  %58 = bitcast i16** %prevIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i16** %currIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast [8 x i64]* %wIn to i8*
  call void @llvm.lifetime.end(i64 64, i8* %60) #1
  %61 = bitcast i8** %output to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i8** %accum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
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

declare void @cmsPipelineEvalFloat(float*, float*, %struct._cmsPipeline_struct*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

declare i32 @cmsGetColorSpace(i8*) #2

declare i32 @cmsGetPCS(i8*) #2

declare i32 @_cmsLCMScolorSpace(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"_cmsContext_struct", !2, i64 0, !2, i64 8, !3, i64 16, !7, i64 136}
!7 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"", !9, i64 0}
!12 = !{!13, !2, i64 120}
!13 = !{!"_cmstransform_struct", !14, i64 0, !14, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !15, i64 48, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !3, i64 144, !3, i64 148, !16, i64 152, !16, i64 176, !2, i64 200, !14, i64 208, !9, i64 216, !14, i64 224, !2, i64 232, !2, i64 240, !2, i64 248}
!14 = !{!"int", !3, i64 0}
!15 = !{!"", !3, i64 0, !3, i64 32}
!16 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!17 = !{!13, !2, i64 112}
!18 = !{!13, !2, i64 128}
!19 = !{!13, !2, i64 136}
!20 = !{!13, !2, i64 200}
!21 = !{!13, !2, i64 240}
!22 = !{!13, !2, i64 248}
!23 = !{!13, !2, i64 232}
!24 = !{!14, !14, i64 0}
!25 = !{!13, !2, i64 8}
!26 = !{!27, !2, i64 0}
!27 = !{!"", !2, i64 0}
!28 = !{!29, !2, i64 8}
!29 = !{!"_cmsTransformCollection_st", !2, i64 0, !2, i64 8}
!30 = !{!31, !2, i64 24}
!31 = !{!"", !32, i64 0, !2, i64 24}
!32 = !{!"_cmsPluginBaseStruct", !14, i64 0, !14, i64 4, !14, i64 8, !2, i64 16}
!33 = !{!29, !2, i64 0}
!34 = !{!13, !2, i64 16}
!35 = !{!13, !2, i64 24}
!36 = !{!13, !2, i64 32}
!37 = !{!13, !2, i64 40}
!38 = !{!3, !3, i64 0}
!39 = !{!13, !3, i64 144}
!40 = !{!13, !3, i64 148}
!41 = !{!13, !14, i64 224}
!42 = !{!43, !2, i64 24}
!43 = !{!"_cmsPipeline_struct", !2, i64 0, !14, i64 8, !14, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !14, i64 64}
!44 = !{!43, !2, i64 16}
!45 = !{!13, !14, i64 0}
!46 = !{!13, !14, i64 4}
!47 = !{!13, !14, i64 208}
!48 = !{!16, !9, i64 0}
!49 = !{!16, !9, i64 8}
!50 = !{!16, !9, i64 16}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !3, i64 0}
!53 = !{!43, !14, i64 12}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !3, i64 0}
