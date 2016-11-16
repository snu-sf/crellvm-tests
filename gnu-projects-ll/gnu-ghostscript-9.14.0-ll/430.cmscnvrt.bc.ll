; ModuleID = './cmscnvrt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsIntentsPluginChunkType = type { %struct._cms_intents_list* }
%struct._cms_intents_list = type { i32, [256 x i8], %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)*, %struct._cms_intents_list* }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginRenderingIntent = type { %struct._cmsPluginBaseStruct, i32, %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)*, [256 x i8] }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsCIExyY = type { double, double, double }
%struct.GrayOnlyParams = type { %struct._cmsPipeline_struct*, %struct._cms_curve_struct* }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct.PreserveKPlaneParams = type { %struct._cmsPipeline_struct*, i8*, i8*, %struct._cms_curve_struct*, %struct._cmsPipeline_struct*, double, i8*, double }
%struct.cmsCIELab = type { double, double, double }
%union.anon = type { double }

@_cmsIntentsPluginChunk = global %struct._cmsIntentsPluginChunkType zeroinitializer, align 8
@_cmsAllocIntentsPluginChunk.IntentsPluginChunkType = internal global %struct._cmsIntentsPluginChunkType zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Couldn't link '%d' profiles\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported intent '%d'\00", align 1
@DefaultIntents = internal global [10 x %struct._cms_intents_list] [%struct._cms_intents_list { i32 0, [256 x i8] c"Perceptual\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @DefaultICCintents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 280) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 1, [256 x i8] c"Relative colorimetric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @DefaultICCintents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 560) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 2, [256 x i8] c"Saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @DefaultICCintents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 840) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 3, [256 x i8] c"Absolute colorimetric\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @DefaultICCintents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 1120) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 10, [256 x i8] c"Perceptual preserving black ink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKOnlyIntents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 1400) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 11, [256 x i8] c"Relative colorimetric preserving black ink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKOnlyIntents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 1680) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 12, [256 x i8] c"Saturation preserving black ink\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKOnlyIntents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 1960) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 13, [256 x i8] c"Perceptual preserving black plane\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKPlaneIntents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 2240) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 14, [256 x i8] c"Relative colorimetric preserving black plane\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKPlaneIntents, %struct._cms_intents_list* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct._cms_intents_list]* @DefaultIntents to i8*), i64 2520) to %struct._cms_intents_list*) }, %struct._cms_intents_list { i32 15, [256 x i8] c"Saturation preserving black plane\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* @BlackPreservingKPlaneIntents, %struct._cms_intents_list* null }], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"ColorSpace mismatch\00", align 1

; Function Attrs: nounwind uwtable
define void @_cmsAllocIntentsPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
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
  call void @DupPluginIntentsList(%struct._cmsContext_struct* %1, %struct._cmsContext_struct* %2) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %3, i32 0, i32 1
  %4 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %4, i8* bitcast (%struct._cmsIntentsPluginChunkType* @_cmsAllocIntentsPluginChunk.IntentsPluginChunkType to i8*), i32 8) #6
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 10
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DupPluginIntentsList(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %newHead = alloca %struct._cmsIntentsPluginChunkType, align 8
  %entry1 = alloca %struct._cms_intents_list*, align 8
  %Anterior = alloca %struct._cms_intents_list*, align 8
  %head = alloca %struct._cmsIntentsPluginChunkType*, align 8
  %newEntry = alloca %struct._cms_intents_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsIntentsPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._cmsIntentsPluginChunkType* %newHead to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false)
  %2 = bitcast %struct._cms_intents_list** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct._cms_intents_list** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct._cms_intents_list* null, %struct._cms_intents_list** %Anterior, align 8, !tbaa !1
  %4 = bitcast %struct._cmsIntentsPluginChunkType** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 10
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._cmsIntentsPluginChunkType*
  store %struct._cmsIntentsPluginChunkType* %7, %struct._cmsIntentsPluginChunkType** %head, align 8, !tbaa !1
  %8 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %head, align 8, !tbaa !1
  %Intents = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %8, i32 0, i32 0
  %9 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intents, align 8, !tbaa !8
  store %struct._cms_intents_list* %9, %struct._cms_intents_list** %entry1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct._cms_intents_list*, %struct._cms_intents_list** %entry1, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_intents_list* %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct._cms_intents_list** %newEntry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 1
  %13 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %14 = load %struct._cms_intents_list*, %struct._cms_intents_list** %entry1, align 8, !tbaa !1
  %15 = bitcast %struct._cms_intents_list* %14 to i8*
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %13, i8* %15, i32 280) #6
  %16 = bitcast i8* %call to %struct._cms_intents_list*
  store %struct._cms_intents_list* %16, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  %17 = load %struct._cms_intents_list*, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cms_intents_list* %17, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %18 = load %struct._cms_intents_list*, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %18, i32 0, i32 3
  store %struct._cms_intents_list* null, %struct._cms_intents_list** %Next, align 8, !tbaa !10
  %19 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Anterior, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_intents_list* %19, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %20 = load %struct._cms_intents_list*, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  %21 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Anterior, align 8, !tbaa !1
  %Next4 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %21, i32 0, i32 3
  store %struct._cms_intents_list* %20, %struct._cms_intents_list** %Next4, align 8, !tbaa !10
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %22 = load %struct._cms_intents_list*, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  store %struct._cms_intents_list* %22, %struct._cms_intents_list** %Anterior, align 8, !tbaa !1
  %Intents6 = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %newHead, i32 0, i32 0
  %23 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intents6, align 8, !tbaa !8
  %cmp7 = icmp eq %struct._cms_intents_list* %23, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %24 = load %struct._cms_intents_list*, %struct._cms_intents_list** %newEntry, align 8, !tbaa !1
  %Intents9 = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %newHead, i32 0, i32 0
  store %struct._cms_intents_list* %24, %struct._cms_intents_list** %Intents9, align 8, !tbaa !8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %25 = bitcast %struct._cms_intents_list** %newEntry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load %struct._cms_intents_list*, %struct._cms_intents_list** %entry1, align 8, !tbaa !1
  %Next11 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %26, i32 0, i32 3
  %27 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Next11, align 8, !tbaa !10
  store %struct._cms_intents_list* %27, %struct._cms_intents_list** %entry1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool12 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %28, i32 0, i32 1
  %29 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool12, align 8, !tbaa !5
  %30 = bitcast %struct._cmsIntentsPluginChunkType* %newHead to i8*
  %call13 = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %29, i8* %30, i32 8) #6
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks14 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %31, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks14, i32 0, i64 10
  store i8* %call13, i8** %arrayidx15, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.16

cleanup.16:                                       ; preds = %for.end, %cleanup
  %32 = bitcast %struct._cmsIntentsPluginChunkType** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast %struct._cms_intents_list** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast %struct._cms_intents_list** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast %struct._cmsIntentsPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
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

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsDefaultICCintents(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32* %TheIntents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %TheIntents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !13
  store i32* %TheIntents, i32** %TheIntents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %2 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %3 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %5 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %6 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call = call %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %0, i32 %1, i32* %2, i8** %3, i32* %4, double* %5, i32 %6) #6
  ret %struct._cmsPipeline_struct* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32* %TheIntents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %TheIntents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %Result = alloca %struct._cmsPipeline_struct*, align 8
  %hProfile = alloca i8*, align 8
  %m = alloca %struct.cmsMAT3, align 8
  %off = alloca %struct.cmsVEC3, align 8
  %ColorSpaceIn = alloca i32, align 4
  %ColorSpaceOut = alloca i32, align 4
  %CurrentColorSpace = alloca i32, align 4
  %ClassSig = alloca i32, align 4
  %i = alloca i32, align 4
  %Intent = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %lIsDeviceLink = alloca i32, align 4
  %lIsInput = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !13
  store i32* %TheIntents, i32** %TheIntents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %1 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #2
  %4 = bitcast %struct.cmsVEC3* %off to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast i32* %ColorSpaceIn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %ColorSpaceOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %CurrentColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %ClassSig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %Intent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end:                                           ; preds = %entry
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %12, i32 0, i32 0) #6
  store %struct._cmsPipeline_struct* %call, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsPipeline_struct* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

if.end.3:                                         ; preds = %if.end
  %14 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call4 = call i32 @cmsGetColorSpace(i8* %15) #6
  store i32 %call4, i32* %CurrentColorSpace, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %16 = load i32, i32* %i, align 4, !tbaa !13
  %17 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp5 = icmp ult i32 %16, %17
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32* %lIsDeviceLink to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = bitcast i32* %lIsInput to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = zext i32 %20 to i64
  %21 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  store i8* %22, i8** %hProfile, align 8, !tbaa !1
  %23 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call7 = call i32 @cmsGetDeviceClass(i8* %23) #6
  store i32 %call7, i32* %ClassSig, align 4, !tbaa !14
  %24 = load i32, i32* %ClassSig, align 4, !tbaa !14
  %cmp8 = icmp eq i32 %24, 1818848875
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %25 = load i32, i32* %ClassSig, align 4, !tbaa !14
  %cmp9 = icmp eq i32 %25, 1633842036
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %26 = phi i1 [ true, %for.body ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %26 to i32
  store i32 %lor.ext, i32* %lIsDeviceLink, align 4, !tbaa !13
  %27 = load i32, i32* %i, align 4, !tbaa !13
  %cmp10 = icmp eq i32 %27, 0
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %28 = load i32, i32* %lIsDeviceLink, align 4, !tbaa !13
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %lIsInput, align 4, !tbaa !13
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %29 = load i32, i32* %CurrentColorSpace, align 4, !tbaa !14
  %cmp12 = icmp ne i32 %29, 1482250784
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %30 = load i32, i32* %CurrentColorSpace, align 4, !tbaa !14
  %cmp13 = icmp ne i32 %30, 1281450528
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %31 = phi i1 [ false, %if.else ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  store i32 %land.ext, i32* %lIsInput, align 4, !tbaa !13
  br label %if.end.14

if.end.14:                                        ; preds = %land.end, %if.then.11
  %32 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom15 = zext i32 %32 to i64
  %33 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %33, i64 %idxprom15
  %34 = load i32, i32* %arrayidx16, align 4, !tbaa !13
  store i32 %34, i32* %Intent, align 4, !tbaa !13
  %35 = load i32, i32* %lIsInput, align 4, !tbaa !13
  %tobool17 = icmp ne i32 %35, 0
  br i1 %tobool17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %36 = load i32, i32* %lIsDeviceLink, align 4, !tbaa !13
  %tobool18 = icmp ne i32 %36, 0
  br i1 %tobool18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.14
  %37 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call20 = call i32 @cmsGetColorSpace(i8* %37) #6
  store i32 %call20, i32* %ColorSpaceIn, align 4, !tbaa !14
  %38 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call21 = call i32 @cmsGetPCS(i8* %38) #6
  store i32 %call21, i32* %ColorSpaceOut, align 4, !tbaa !14
  br label %if.end.25

if.else.22:                                       ; preds = %lor.lhs.false
  %39 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call23 = call i32 @cmsGetPCS(i8* %39) #6
  store i32 %call23, i32* %ColorSpaceIn, align 4, !tbaa !14
  %40 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %call24 = call i32 @cmsGetColorSpace(i8* %40) #6
  store i32 %call24, i32* %ColorSpaceOut, align 4, !tbaa !14
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.19
  %41 = load i32, i32* %ColorSpaceIn, align 4, !tbaa !14
  %42 = load i32, i32* %CurrentColorSpace, align 4, !tbaa !14
  %call26 = call i32 @ColorSpaceIsCompatible(i32 %41, i32 %42) #6
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %43 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %43, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #6
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.25
  %44 = load i32, i32* %lIsDeviceLink, align 4, !tbaa !13
  %tobool30 = icmp ne i32 %44, 0
  br i1 %tobool30, label %if.then.35, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.29
  %45 = load i32, i32* %ClassSig, align 4, !tbaa !14
  %cmp32 = icmp eq i32 %45, 1852662636
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.58

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %46 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp34 = icmp eq i32 %46, 1
  br i1 %cmp34, label %if.then.35, label %if.else.58

if.then.35:                                       ; preds = %land.lhs.true.33, %if.end.29
  %47 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %48 = load i32, i32* %Intent, align 4, !tbaa !13
  %call36 = call %struct._cmsPipeline_struct* @_cmsReadDevicelinkLUT(i8* %47, i32 %48) #6
  store %struct._cmsPipeline_struct* %call36, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %49 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp37 = icmp eq %struct._cmsPipeline_struct* %49, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.35
  %50 = load i32, i32* %ClassSig, align 4, !tbaa !14
  %cmp40 = icmp eq i32 %50, 1633842036
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.52

land.lhs.true.41:                                 ; preds = %if.end.39
  %51 = load i32, i32* %i, align 4, !tbaa !13
  %cmp42 = icmp ugt i32 %51, 0
  br i1 %cmp42, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %land.lhs.true.41
  %52 = load i32, i32* %i, align 4, !tbaa !13
  %53 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %54 = load i32, i32* %Intent, align 4, !tbaa !13
  %55 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom44 = zext i32 %55 to i64
  %56 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i32, i32* %56, i64 %idxprom44
  %57 = load i32, i32* %arrayidx45, align 4, !tbaa !13
  %58 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom46 = zext i32 %58 to i64
  %59 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds double, double* %59, i64 %idxprom46
  %60 = load double, double* %arrayidx47, align 8, !tbaa !15
  %call48 = call i32 @ComputeConversion(i32 %52, i8** %53, i32 %54, i32 %57, double %60, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #6
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.then.43
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.then.43
  br label %if.end.53

if.else.52:                                       ; preds = %land.lhs.true.41, %if.end.39
  call void @_cmsMAT3identity(%struct.cmsMAT3* %m) #6
  call void @_cmsVEC3init(%struct.cmsVEC3* %off, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00) #6
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.end.51
  %61 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %62 = load i32, i32* %CurrentColorSpace, align 4, !tbaa !14
  %63 = load i32, i32* %ColorSpaceIn, align 4, !tbaa !14
  %call54 = call i32 @AddConversion(%struct._cmsPipeline_struct* %61, i32 %62, i32 %63, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #6
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.53
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.53
  br label %if.end.83

if.else.58:                                       ; preds = %land.lhs.true.33, %lor.lhs.false.31
  %64 = load i32, i32* %lIsInput, align 4, !tbaa !13
  %tobool59 = icmp ne i32 %64, 0
  br i1 %tobool59, label %if.then.60, label %if.else.65

if.then.60:                                       ; preds = %if.else.58
  %65 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %66 = load i32, i32* %Intent, align 4, !tbaa !13
  %call61 = call %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8* %65, i32 %66) #6
  store %struct._cmsPipeline_struct* %call61, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %67 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp62 = icmp eq %struct._cmsPipeline_struct* %67, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.60
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.then.60
  br label %if.end.82

if.else.65:                                       ; preds = %if.else.58
  %68 = load i8*, i8** %hProfile, align 8, !tbaa !1
  %69 = load i32, i32* %Intent, align 4, !tbaa !13
  %call66 = call %struct._cmsPipeline_struct* @_cmsReadOutputLUT(i8* %68, i32 %69) #6
  store %struct._cmsPipeline_struct* %call66, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %70 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp67 = icmp eq %struct._cmsPipeline_struct* %70, null
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.else.65
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.else.65
  %71 = load i32, i32* %i, align 4, !tbaa !13
  %72 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %73 = load i32, i32* %Intent, align 4, !tbaa !13
  %74 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom70 = zext i32 %74 to i64
  %75 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i32, i32* %75, i64 %idxprom70
  %76 = load i32, i32* %arrayidx71, align 4, !tbaa !13
  %77 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom72 = zext i32 %77 to i64
  %78 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds double, double* %78, i64 %idxprom72
  %79 = load double, double* %arrayidx73, align 8, !tbaa !15
  %call74 = call i32 @ComputeConversion(i32 %71, i8** %72, i32 %73, i32 %76, double %79, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #6
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.69
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.69
  %80 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %81 = load i32, i32* %CurrentColorSpace, align 4, !tbaa !14
  %82 = load i32, i32* %ColorSpaceIn, align 4, !tbaa !14
  %call78 = call i32 @AddConversion(%struct._cmsPipeline_struct* %80, i32 %81, i32 %82, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #6
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.end.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.64
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.57
  %83 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %84 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %call84 = call i32 @cmsPipelineCat(%struct._cmsPipeline_struct* %83, %struct._cmsPipeline_struct* %84) #6
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.end.83
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.83
  %85 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %85) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %86 = load i32, i32* %ColorSpaceOut, align 4, !tbaa !14
  store i32 %86, i32* %CurrentColorSpace, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.86, %if.then.80, %if.then.76, %if.then.68, %if.then.63, %if.then.56, %if.then.50, %if.then.38, %if.then.28, %if.end.87
  %87 = bitcast i32* %lIsInput to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %lIsDeviceLink to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.95 [
    i32 0, label %cleanup.cont
    i32 5, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %89 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add i32 %89, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %90, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

Error:                                            ; preds = %cleanup
  %91 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %cmp89 = icmp ne %struct._cmsPipeline_struct* %91, null
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %Error
  %92 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %92) #6
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %Error
  %93 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %cmp92 = icmp ne %struct._cmsPipeline_struct* %93, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.91
  %94 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %94) #6
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.91
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.95

cleanup.95:                                       ; preds = %if.end.94, %for.end, %cleanup, %if.then.2, %if.then
  %95 = bitcast i32* %Intent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %ClassSig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %CurrentColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %ColorSpaceOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i32* %ColorSpaceIn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast %struct.cmsVEC3* %off to i8*
  call void @llvm.lifetime.end(i64 24, i8* %101) #2
  %102 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.end(i64 72, i8* %102) #2
  %103 = bitcast i8** %hProfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  %104 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  %105 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %106
}

; Function Attrs: nounwind uwtable
define %struct._cmsPipeline_struct* @_cmsLinkProfiles(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32* %TheIntents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %TheIntents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Intent = alloca %struct._cms_intents_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !13
  store i32* %TheIntents, i32** %TheIntents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct._cms_intents_list** %Intent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp = icmp ule i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp1 = icmp ugt i32 %3, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %4, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 %5) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !13
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = zext i32 %8 to i64
  %9 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %cmp3 = icmp eq i32 %10, 3
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom5 = zext i32 %11 to i64
  %12 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4, !tbaa !13
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom8 = zext i32 %13 to i64
  %14 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4, !tbaa !13
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.7
  %16 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom12 = zext i32 %16 to i64
  %17 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4, !tbaa !13
  %cmp14 = icmp eq i32 %18, 2
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %lor.lhs.false.11, %if.end.7
  %19 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom16 = zext i32 %19 to i64
  %20 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8*, i8** %20, i64 %idxprom16
  %21 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %call = call double @cmsGetProfileVersion(i8* %21) #6
  %cmp18 = fcmp oge double %call, 4.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.15
  %22 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom20 = zext i32 %22 to i64
  %23 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i32, i32* %23, i64 %idxprom20
  store i32 1, i32* %arrayidx21, align 4, !tbaa !13
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %lor.lhs.false.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %24 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %26 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx24, align 4, !tbaa !13
  %call25 = call %struct._cms_intents_list* @SearchIntent(%struct._cmsContext_struct* %25, i32 %27) #6
  store %struct._cms_intents_list* %call25, %struct._cms_intents_list** %Intent, align 8, !tbaa !1
  %28 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intent, align 8, !tbaa !1
  %cmp26 = icmp eq %struct._cms_intents_list* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %30, i64 0
  %31 = load i32, i32* %arrayidx28, align 4, !tbaa !13
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %29, i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %31) #6
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.end
  %32 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intent, align 8, !tbaa !1
  %Link = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %32, i32 0, i32 2
  %33 = load %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)*, %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)** %Link, align 8, !tbaa !17
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %36 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %37 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %38 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %39 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %40 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call30 = call %struct._cmsPipeline_struct* %33(%struct._cmsContext_struct* %34, i32 %35, i32* %36, i8** %37, i32* %38, double* %39, i32 %40) #6
  store %struct._cmsPipeline_struct* %call30, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.27, %if.then
  %41 = bitcast %struct._cms_intents_list** %Intent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %43
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #1

declare double @cmsGetProfileVersion(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._cms_intents_list* @SearchIntent(%struct._cmsContext_struct* %ContextID, i32 %Intent) #0 {
entry:
  %retval = alloca %struct._cms_intents_list*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Intent.addr = alloca i32, align 4
  %ctx = alloca %struct._cmsIntentsPluginChunkType*, align 8
  %pt = alloca %struct._cms_intents_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 10) #6
  %2 = bitcast i8* %call to %struct._cmsIntentsPluginChunkType*
  store %struct._cmsIntentsPluginChunkType* %2, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct._cms_intents_list** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %Intents = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %4, i32 0, i32 0
  %5 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intents, align 8, !tbaa !8
  store %struct._cms_intents_list* %5, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_intents_list* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Intent1 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %7, i32 0, i32 0
  %8 = load i32, i32* %Intent1, align 4, !tbaa !18
  %9 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  %cmp2 = icmp eq i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  store %struct._cms_intents_list* %10, %struct._cms_intents_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %11, i32 0, i32 3
  %12 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Next, align 8, !tbaa !10
  store %struct._cms_intents_list* %12, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._cms_intents_list* getelementptr inbounds ([10 x %struct._cms_intents_list], [10 x %struct._cms_intents_list]* @DefaultIntents, i32 0, i32 0), %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %13 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %cmp4 = icmp ne %struct._cms_intents_list* %13, null
  br i1 %cmp4, label %for.body.5, label %for.end.12

for.body.5:                                       ; preds = %for.cond.3
  %14 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Intent6 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %14, i32 0, i32 0
  %15 = load i32, i32* %Intent6, align 4, !tbaa !18
  %16 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  %cmp7 = icmp eq i32 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.5
  %17 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  store %struct._cms_intents_list* %17, %struct._cms_intents_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body.5
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end.9
  %18 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Next11 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %18, i32 0, i32 3
  %19 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Next11, align 8, !tbaa !10
  store %struct._cms_intents_list* %19, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  store %struct._cms_intents_list* null, %struct._cms_intents_list** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.12, %if.then.8, %if.then
  %20 = bitcast %struct._cms_intents_list** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load %struct._cms_intents_list*, %struct._cms_intents_list** %retval
  ret %struct._cms_intents_list* %22
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @cmsGetSupportedIntentsTHR(%struct._cmsContext_struct* %ContextID, i32 %nMax, i32* %Codes, i8** %Descriptions) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nMax.addr = alloca i32, align 4
  %Codes.addr = alloca i32*, align 8
  %Descriptions.addr = alloca i8**, align 8
  %ctx = alloca %struct._cmsIntentsPluginChunkType*, align 8
  %pt = alloca %struct._cms_intents_list*, align 8
  %nIntents = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nMax, i32* %nMax.addr, align 4, !tbaa !13
  store i32* %Codes, i32** %Codes.addr, align 8, !tbaa !1
  store i8** %Descriptions, i8*** %Descriptions.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 10) #6
  %2 = bitcast i8* %call to %struct._cmsIntentsPluginChunkType*
  store %struct._cmsIntentsPluginChunkType* %2, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct._cms_intents_list** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %nIntents to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %nIntents, align 4, !tbaa !13
  %5 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %Intents = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %5, i32 0, i32 0
  %6 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intents, align 8, !tbaa !8
  store %struct._cms_intents_list* %6, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_intents_list* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %nIntents, align 4, !tbaa !13
  %9 = load i32, i32* %nMax.addr, align 4, !tbaa !13
  %cmp1 = icmp ult i32 %8, %9
  br i1 %cmp1, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %10 = load i32*, i32** %Codes.addr, align 8, !tbaa !1
  %cmp2 = icmp ne i32* %10, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Intent = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %11, i32 0, i32 0
  %12 = load i32, i32* %Intent, align 4, !tbaa !18
  %13 = load i32, i32* %nIntents, align 4, !tbaa !13
  %idxprom = zext i32 %13 to i64
  %14 = load i32*, i32** %Codes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %15 = load i8**, i8*** %Descriptions.addr, align 8, !tbaa !1
  %cmp4 = icmp ne i8** %15, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %16 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Description = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %16, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Description, i32 0, i32 0
  %17 = load i32, i32* %nIntents, align 4, !tbaa !13
  %idxprom6 = zext i32 %17 to i64
  %18 = load i8**, i8*** %Descriptions.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %18, i64 %idxprom6
  store i8* %arraydecay, i8** %arrayidx7, align 8, !tbaa !1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %for.body
  %19 = load i32, i32* %nIntents, align 4, !tbaa !13
  %inc = add i32 %19, 1
  store i32 %inc, i32* %nIntents, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %20 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %20, i32 0, i32 3
  %21 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Next, align 8, !tbaa !10
  store %struct._cms_intents_list* %21, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %nIntents, align 4, !tbaa !13
  store %struct._cms_intents_list* getelementptr inbounds ([10 x %struct._cms_intents_list], [10 x %struct._cms_intents_list]* @DefaultIntents, i32 0, i32 0), %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.30, %for.end
  %22 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %cmp11 = icmp ne %struct._cms_intents_list* %22, null
  br i1 %cmp11, label %for.body.12, label %for.end.32

for.body.12:                                      ; preds = %for.cond.10
  %23 = load i32, i32* %nIntents, align 4, !tbaa !13
  %24 = load i32, i32* %nMax.addr, align 4, !tbaa !13
  %cmp13 = icmp ult i32 %23, %24
  br i1 %cmp13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %for.body.12
  %25 = load i32*, i32** %Codes.addr, align 8, !tbaa !1
  %cmp15 = icmp ne i32* %25, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.14
  %26 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Intent17 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %26, i32 0, i32 0
  %27 = load i32, i32* %Intent17, align 4, !tbaa !18
  %28 = load i32, i32* %nIntents, align 4, !tbaa !13
  %idxprom18 = zext i32 %28 to i64
  %29 = load i32*, i32** %Codes.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %29, i64 %idxprom18
  store i32 %27, i32* %arrayidx19, align 4, !tbaa !13
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.14
  %30 = load i8**, i8*** %Descriptions.addr, align 8, !tbaa !1
  %cmp21 = icmp ne i8** %30, null
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.20
  %31 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Description23 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %31, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %Description23, i32 0, i32 0
  %32 = load i32, i32* %nIntents, align 4, !tbaa !13
  %idxprom25 = zext i32 %32 to i64
  %33 = load i8**, i8*** %Descriptions.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8*, i8** %33, i64 %idxprom25
  store i8* %arraydecay24, i8** %arrayidx26, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.12
  %34 = load i32, i32* %nIntents, align 4, !tbaa !13
  %inc29 = add i32 %34, 1
  store i32 %inc29, i32* %nIntents, align 4, !tbaa !13
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.28
  %35 = load %struct._cms_intents_list*, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  %Next31 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %35, i32 0, i32 3
  %36 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Next31, align 8, !tbaa !10
  store %struct._cms_intents_list* %36, %struct._cms_intents_list** %pt, align 8, !tbaa !1
  br label %for.cond.10

for.end.32:                                       ; preds = %for.cond.10
  %37 = load i32, i32* %nIntents, align 4, !tbaa !13
  %38 = bitcast i32* %nIntents to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %struct._cms_intents_list** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  ret i32 %37
}

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @cmsGetSupportedIntents(i32 %nMax, i32* %Codes, i8** %Descriptions) #0 {
entry:
  %nMax.addr = alloca i32, align 4
  %Codes.addr = alloca i32*, align 8
  %Descriptions.addr = alloca i8**, align 8
  store i32 %nMax, i32* %nMax.addr, align 4, !tbaa !13
  store i32* %Codes, i32** %Codes.addr, align 8, !tbaa !1
  store i8** %Descriptions, i8*** %Descriptions.addr, align 8, !tbaa !1
  %0 = load i32, i32* %nMax.addr, align 4, !tbaa !13
  %1 = load i32*, i32** %Codes.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %Descriptions.addr, align 8, !tbaa !1
  %call = call i32 @cmsGetSupportedIntentsTHR(%struct._cmsContext_struct* null, i32 %0, i32* %1, i8** %2) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterRenderingIntentPlugin(%struct._cmsContext_struct* %id, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %ctx = alloca %struct._cmsIntentsPluginChunkType*, align 8
  %Plugin = alloca %struct.cmsPluginRenderingIntent*, align 8
  %fl = alloca %struct._cms_intents_list*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 10) #6
  %2 = bitcast i8* %call to %struct._cmsIntentsPluginChunkType*
  store %struct._cmsIntentsPluginChunkType* %2, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct.cmsPluginRenderingIntent** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %5 = bitcast %struct._cmsPluginBaseStruct* %4 to %struct.cmsPluginRenderingIntent*
  store %struct.cmsPluginRenderingIntent* %5, %struct.cmsPluginRenderingIntent** %Plugin, align 8, !tbaa !1
  %6 = bitcast %struct._cms_intents_list** %fl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %Intents = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %8, i32 0, i32 0
  store %struct._cms_intents_list* null, %struct._cms_intents_list** %Intents, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %9, i32 280) #6
  %10 = bitcast i8* %call1 to %struct._cms_intents_list*
  store %struct._cms_intents_list* %10, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %11 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cms_intents_list* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.cmsPluginRenderingIntent*, %struct.cmsPluginRenderingIntent** %Plugin, align 8, !tbaa !1
  %Intent = getelementptr inbounds %struct.cmsPluginRenderingIntent, %struct.cmsPluginRenderingIntent* %12, i32 0, i32 1
  %13 = load i32, i32* %Intent, align 4, !tbaa !19
  %14 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %Intent5 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %14, i32 0, i32 0
  store i32 %13, i32* %Intent5, align 4, !tbaa !18
  %15 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %Description = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %15, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Description, i32 0, i32 0
  %16 = load %struct.cmsPluginRenderingIntent*, %struct.cmsPluginRenderingIntent** %Plugin, align 8, !tbaa !1
  %Description6 = getelementptr inbounds %struct.cmsPluginRenderingIntent, %struct.cmsPluginRenderingIntent* %16, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %Description6, i32 0, i32 0
  %call8 = call i8* @strncpy(i8* %arraydecay, i8* %arraydecay7, i64 255) #7
  %17 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %Description9 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %Description9, i32 0, i64 255
  store i8 0, i8* %arrayidx, align 1, !tbaa !14
  %18 = load %struct.cmsPluginRenderingIntent*, %struct.cmsPluginRenderingIntent** %Plugin, align 8, !tbaa !1
  %Link = getelementptr inbounds %struct.cmsPluginRenderingIntent, %struct.cmsPluginRenderingIntent* %18, i32 0, i32 2
  %19 = load %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)*, %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)** %Link, align 8, !tbaa !22
  %20 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %Link10 = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %20, i32 0, i32 2
  store %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)* %19, %struct._cmsPipeline_struct* (%struct._cmsContext_struct*, i32, i32*, i8**, i32*, double*, i32)** %Link10, align 8, !tbaa !17
  %21 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %Intents11 = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %21, i32 0, i32 0
  %22 = load %struct._cms_intents_list*, %struct._cms_intents_list** %Intents11, align 8, !tbaa !8
  %23 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cms_intents_list, %struct._cms_intents_list* %23, i32 0, i32 3
  store %struct._cms_intents_list* %22, %struct._cms_intents_list** %Next, align 8, !tbaa !10
  %24 = load %struct._cms_intents_list*, %struct._cms_intents_list** %fl, align 8, !tbaa !1
  %25 = load %struct._cmsIntentsPluginChunkType*, %struct._cmsIntentsPluginChunkType** %ctx, align 8, !tbaa !1
  %Intents12 = getelementptr inbounds %struct._cmsIntentsPluginChunkType, %struct._cmsIntentsPluginChunkType* %25, i32 0, i32 0
  store %struct._cms_intents_list* %24, %struct._cms_intents_list** %Intents12, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %26 = bitcast %struct._cms_intents_list** %fl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.cmsPluginRenderingIntent** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct._cmsIntentsPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i8* @_cmsPluginMalloc(%struct._cmsContext_struct*, i32) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct*, i32, i32) #1

declare i32 @cmsGetColorSpace(i8*) #1

declare i32 @cmsGetDeviceClass(i8*) #1

declare i32 @cmsGetPCS(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ColorSpaceIsCompatible(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !14
  store i32 %b, i32* %b.addr, align 4, !tbaa !14
  %0 = load i32, i32* %a.addr, align 4, !tbaa !14
  %1 = load i32, i32* %b.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !14
  %cmp1 = icmp eq i32 %2, 876825682
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %b.addr, align 4, !tbaa !14
  %cmp2 = icmp eq i32 %3, 1129142603
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i32, i32* %a.addr, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %4, 1129142603
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %if.end.4
  %5 = load i32, i32* %b.addr, align 4, !tbaa !14
  %cmp7 = icmp eq i32 %5, 876825682
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.6, %if.end.4
  %6 = load i32, i32* %a.addr, align 4, !tbaa !14
  %cmp10 = icmp eq i32 %6, 1482250784
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %if.end.9
  %7 = load i32, i32* %b.addr, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %7, 1281450528
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.11, %if.end.9
  %8 = load i32, i32* %a.addr, align 4, !tbaa !14
  %cmp15 = icmp eq i32 %8, 1281450528
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.19

land.lhs.true.16:                                 ; preds = %if.end.14
  %9 = load i32, i32* %b.addr, align 4, !tbaa !14
  %cmp17 = icmp eq i32 %9, 1482250784
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.16
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.16, %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.13, %if.then.8, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._cmsPipeline_struct* @_cmsReadDevicelinkLUT(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ComputeConversion(i32 %i, i8** %hProfiles, i32 %Intent, i32 %BPC, double %AdaptationState, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %hProfiles.addr = alloca i8**, align 8
  %Intent.addr = alloca i32, align 4
  %BPC.addr = alloca i32, align 4
  %AdaptationState.addr = alloca double, align 8
  %m.addr = alloca %struct.cmsMAT3*, align 8
  %off.addr = alloca %struct.cmsVEC3*, align 8
  %k = alloca i32, align 4
  %WhitePointIn = alloca %struct.cmsCIEXYZ, align 8
  %WhitePointOut = alloca %struct.cmsCIEXYZ, align 8
  %ChromaticAdaptationMatrixIn = alloca %struct.cmsMAT3, align 8
  %ChromaticAdaptationMatrixOut = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  %BlackPointIn = alloca %struct.cmsCIEXYZ, align 8
  %BlackPointOut = alloca %struct.cmsCIEXYZ, align 8
  store i32 %i, i32* %i.addr, align 4, !tbaa !13
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !13
  store i32 %BPC, i32* %BPC.addr, align 4, !tbaa !13
  store double %AdaptationState, double* %AdaptationState.addr, align 8, !tbaa !15
  store %struct.cmsMAT3* %m, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %off, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  call void @_cmsMAT3identity(%struct.cmsMAT3* %1) #6
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  call void @_cmsVEC3init(%struct.cmsVEC3* %2, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00) #6
  %3 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.cmsCIEXYZ* %WhitePointIn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast %struct.cmsCIEXYZ* %WhitePointOut to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #2
  %6 = bitcast %struct.cmsMAT3* %ChromaticAdaptationMatrixIn to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #2
  %7 = bitcast %struct.cmsMAT3* %ChromaticAdaptationMatrixOut to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #2
  %8 = load i32, i32* %i.addr, align 4, !tbaa !13
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %9 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call = call i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ* %WhitePointIn, i8* %10) #6
  %11 = load i32, i32* %i.addr, align 4, !tbaa !13
  %sub1 = sub nsw i32 %11, 1
  %idxprom2 = sext i32 %sub1 to i64
  %12 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom2
  %13 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  %call4 = call i32 @_cmsReadCHAD(%struct.cmsMAT3* %ChromaticAdaptationMatrixIn, i8* %13) #6
  %14 = load i32, i32* %i.addr, align 4, !tbaa !13
  %idxprom5 = sext i32 %14 to i64
  %15 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %15, i64 %idxprom5
  %16 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  %call7 = call i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ* %WhitePointOut, i8* %16) #6
  %17 = load i32, i32* %i.addr, align 4, !tbaa !13
  %idxprom8 = sext i32 %17 to i64
  %18 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8*, i8** %18, i64 %idxprom8
  %19 = load i8*, i8** %arrayidx9, align 8, !tbaa !1
  %call10 = call i32 @_cmsReadCHAD(%struct.cmsMAT3* %ChromaticAdaptationMatrixOut, i8* %19) #6
  %20 = load double, double* %AdaptationState.addr, align 8, !tbaa !15
  %21 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %call11 = call i32 @ComputeAbsoluteIntent(double %20, %struct.cmsCIEXYZ* %WhitePointIn, %struct.cmsMAT3* %ChromaticAdaptationMatrixIn, %struct.cmsCIEXYZ* %WhitePointOut, %struct.cmsMAT3* %ChromaticAdaptationMatrixOut, %struct.cmsMAT3* %21) #6
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.12
  %22 = bitcast %struct.cmsMAT3* %ChromaticAdaptationMatrixOut to i8*
  call void @llvm.lifetime.end(i64 72, i8* %22) #2
  %23 = bitcast %struct.cmsMAT3* %ChromaticAdaptationMatrixIn to i8*
  call void @llvm.lifetime.end(i64 72, i8* %23) #2
  %24 = bitcast %struct.cmsCIEXYZ* %WhitePointOut to i8*
  call void @llvm.lifetime.end(i64 24, i8* %24) #2
  %25 = bitcast %struct.cmsCIEXYZ* %WhitePointIn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.35

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %BPC.addr, align 4, !tbaa !13
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %if.else
  %27 = bitcast %struct.cmsCIEXYZ* %BlackPointIn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #2
  %28 = bitcast %struct.cmsCIEXYZ* %BlackPointOut to i8*
  call void @llvm.lifetime.start(i64 24, i8* %28) #2
  %29 = load i32, i32* %i.addr, align 4, !tbaa !13
  %sub18 = sub nsw i32 %29, 1
  %idxprom19 = sext i32 %sub18 to i64
  %30 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8*, i8** %30, i64 %idxprom19
  %31 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  %32 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  %call21 = call i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ* %BlackPointIn, i8* %31, i32 %32, i32 0) #6
  %33 = load i32, i32* %i.addr, align 4, !tbaa !13
  %idxprom22 = sext i32 %33 to i64
  %34 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8*, i8** %34, i64 %idxprom22
  %35 = load i8*, i8** %arrayidx23, align 8, !tbaa !1
  %36 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  %call24 = call i32 @cmsDetectDestinationBlackPoint(%struct.cmsCIEXYZ* %BlackPointOut, i8* %35, i32 %36, i32 0) #6
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointIn, i32 0, i32 0
  %37 = load double, double* %X, align 8, !tbaa !23
  %X25 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointOut, i32 0, i32 0
  %38 = load double, double* %X25, align 8, !tbaa !23
  %cmp26 = fcmp une double %37, %38
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointIn, i32 0, i32 1
  %39 = load double, double* %Y, align 8, !tbaa !25
  %Y27 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointOut, i32 0, i32 1
  %40 = load double, double* %Y27, align 8, !tbaa !25
  %cmp28 = fcmp une double %39, %40
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointIn, i32 0, i32 2
  %41 = load double, double* %Z, align 8, !tbaa !26
  %Z30 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %BlackPointOut, i32 0, i32 2
  %42 = load double, double* %Z30, align 8, !tbaa !26
  %cmp31 = fcmp une double %41, %42
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.then.17
  %43 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %44 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  call void @ComputeBlackPointCompensation(%struct.cmsCIEXYZ* %BlackPointIn, %struct.cmsCIEXYZ* %BlackPointOut, %struct.cmsMAT3* %43, %struct.cmsVEC3* %44) #6
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %lor.lhs.false.29
  %45 = bitcast %struct.cmsCIEXYZ* %BlackPointOut to i8*
  call void @llvm.lifetime.end(i64 24, i8* %45) #2
  %46 = bitcast %struct.cmsCIEXYZ* %BlackPointIn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %46) #2
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %cleanup.cont
  store i32 0, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %47 = load i32, i32* %k, align 4, !tbaa !13
  %cmp36 = icmp slt i32 %47, 3
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %k, align 4, !tbaa !13
  %idxprom37 = sext i32 %48 to i64
  %49 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %49, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom37
  %50 = load double, double* %arrayidx38, align 8, !tbaa !15
  %div = fdiv double %50, 0x3FFFFFE000000000
  store double %div, double* %arrayidx38, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %k, align 4, !tbaa !13
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %for.end, %cleanup
  %52 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare void @_cmsMAT3identity(%struct.cmsMAT3*) #1

declare void @_cmsVEC3init(%struct.cmsVEC3*, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @AddConversion(%struct._cmsPipeline_struct* %Result, i32 %InPCS, i32 %OutPCS, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #0 {
entry:
  %retval = alloca i32, align 4
  %Result.addr = alloca %struct._cmsPipeline_struct*, align 8
  %InPCS.addr = alloca i32, align 4
  %OutPCS.addr = alloca i32, align 4
  %m.addr = alloca %struct.cmsMAT3*, align 8
  %off.addr = alloca %struct.cmsVEC3*, align 8
  %m_as_dbl = alloca double*, align 8
  %off_as_dbl = alloca double*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %Result, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  store i32 %InPCS, i32* %InPCS.addr, align 4, !tbaa !14
  store i32 %OutPCS, i32* %OutPCS.addr, align 4, !tbaa !14
  store %struct.cmsMAT3* %m, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %off, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %0 = bitcast double** %m_as_dbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %2 = bitcast %struct.cmsMAT3* %1 to double*
  store double* %2, double** %m_as_dbl, align 8, !tbaa !1
  %3 = bitcast double** %off_as_dbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cmsVEC3* %4 to double*
  store double* %5, double** %off_as_dbl, align 8, !tbaa !1
  %6 = load i32, i32* %InPCS.addr, align 4, !tbaa !14
  switch i32 %6, label %sw.default.60 [
    i32 1482250784, label %sw.bb
    i32 1281450528, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %7 = load i32, i32* %OutPCS.addr, align 4, !tbaa !14
  switch i32 %7, label %sw.default [
    i32 1482250784, label %sw.bb.1
    i32 1281450528, label %sw.bb.5
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %8 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %9 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %call = call i32 @IsEmptyLayer(%struct.cmsMAT3* %8, %struct.cmsVEC3* %9) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.1
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %11 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %11, i32 0, i32 8
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %13 = load double*, double** %m_as_dbl, align 8, !tbaa !1
  %14 = load double*, double** %off_as_dbl, align 8, !tbaa !1
  %call2 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %12, i32 3, i32 3, double* %13, double* %14) #6
  %call3 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %10, i32 1, %struct._cmsStage_struct* %call2) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %sw.bb
  %15 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %16 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %call6 = call i32 @IsEmptyLayer(%struct.cmsMAT3* %15, %struct.cmsVEC3* %16) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.14, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %sw.bb.5
  %17 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID9 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %18, i32 0, i32 8
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID9, align 8, !tbaa !27
  %20 = load double*, double** %m_as_dbl, align 8, !tbaa !1
  %21 = load double*, double** %off_as_dbl, align 8, !tbaa !1
  %call10 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %19, i32 3, i32 3, double* %20, double* %21) #6
  %call11 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %17, i32 1, %struct._cmsStage_struct* %call10) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true.8, %sw.bb.5
  %22 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %23, i32 0, i32 8
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !27
  %call16 = call %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct* %24) #6
  %call17 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %22, i32 1, %struct._cmsStage_struct* %call16) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.20, %if.end
  br label %sw.epilog.63

sw.bb.21:                                         ; preds = %entry
  %25 = load i32, i32* %OutPCS.addr, align 4, !tbaa !14
  switch i32 %25, label %sw.default.58 [
    i32 1482250784, label %sw.bb.22
    i32 1281450528, label %sw.bb.38
  ]

sw.bb.22:                                         ; preds = %sw.bb.21
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID23 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %27, i32 0, i32 8
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID23, align 8, !tbaa !27
  %call24 = call %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct* %28) #6
  %call25 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %26, i32 1, %struct._cmsStage_struct* %call24) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %sw.bb.22
  %29 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %30 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %call29 = call i32 @IsEmptyLayer(%struct.cmsMAT3* %29, %struct.cmsVEC3* %30) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.37, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.end.28
  %31 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %32 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID32 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %32, i32 0, i32 8
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID32, align 8, !tbaa !27
  %34 = load double*, double** %m_as_dbl, align 8, !tbaa !1
  %35 = load double*, double** %off_as_dbl, align 8, !tbaa !1
  %call33 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %33, i32 3, i32 3, double* %34, double* %35) #6
  %call34 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %31, i32 1, %struct._cmsStage_struct* %call33) #6
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %land.lhs.true.31, %if.end.28
  br label %sw.epilog.59

sw.bb.38:                                         ; preds = %sw.bb.21
  %36 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %37 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %call39 = call i32 @IsEmptyLayer(%struct.cmsMAT3* %36, %struct.cmsVEC3* %37) #6
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.57, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.38
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID42 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %39, i32 0, i32 8
  %40 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID42, align 8, !tbaa !27
  %call43 = call %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct* %40) #6
  %call44 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %38, i32 1, %struct._cmsStage_struct* %call43) #6
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %lor.lhs.false, label %if.then.55

lor.lhs.false:                                    ; preds = %if.then.41
  %41 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %42 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID46 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %42, i32 0, i32 8
  %43 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID46, align 8, !tbaa !27
  %44 = load double*, double** %m_as_dbl, align 8, !tbaa !1
  %45 = load double*, double** %off_as_dbl, align 8, !tbaa !1
  %call47 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %43, i32 3, i32 3, double* %44, double* %45) #6
  %call48 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %41, i32 1, %struct._cmsStage_struct* %call47) #6
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.55

lor.lhs.false.50:                                 ; preds = %lor.lhs.false
  %46 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %47 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result.addr, align 8, !tbaa !1
  %ContextID51 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %47, i32 0, i32 8
  %48 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID51, align 8, !tbaa !27
  %call52 = call %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct* %48) #6
  %call53 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %46, i32 1, %struct._cmsStage_struct* %call52) #6
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false, %if.then.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %sw.bb.38
  br label %sw.epilog.59

sw.default.58:                                    ; preds = %sw.bb.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.59:                                     ; preds = %if.end.57, %if.end.37
  br label %sw.epilog.63

sw.default.60:                                    ; preds = %entry
  %49 = load i32, i32* %InPCS.addr, align 4, !tbaa !14
  %50 = load i32, i32* %OutPCS.addr, align 4, !tbaa !14
  %cmp = icmp ne i32 %49, %50
  br i1 %cmp, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.default.60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %sw.default.60
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.end.62, %sw.epilog.59, %sw.epilog
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.63, %if.then.61, %sw.default.58, %if.then.55, %if.then.36, %if.then.27, %sw.default, %if.then.19, %if.then.13, %if.then
  %51 = bitcast double** %off_as_dbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast double** %m_as_dbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8*, i32) #1

declare %struct._cmsPipeline_struct* @_cmsReadOutputLUT(i8*, i32) #1

declare i32 @cmsPipelineCat(%struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*) #1

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #1

declare i32 @_cmsReadMediaWhitePoint(%struct.cmsCIEXYZ*, i8*) #1

declare i32 @_cmsReadCHAD(%struct.cmsMAT3*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ComputeAbsoluteIntent(double %AdaptationState, %struct.cmsCIEXYZ* %WhitePointIn, %struct.cmsMAT3* %ChromaticAdaptationMatrixIn, %struct.cmsCIEXYZ* %WhitePointOut, %struct.cmsMAT3* %ChromaticAdaptationMatrixOut, %struct.cmsMAT3* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %AdaptationState.addr = alloca double, align 8
  %WhitePointIn.addr = alloca %struct.cmsCIEXYZ*, align 8
  %ChromaticAdaptationMatrixIn.addr = alloca %struct.cmsMAT3*, align 8
  %WhitePointOut.addr = alloca %struct.cmsCIEXYZ*, align 8
  %ChromaticAdaptationMatrixOut.addr = alloca %struct.cmsMAT3*, align 8
  %m.addr = alloca %struct.cmsMAT3*, align 8
  %Scale = alloca %struct.cmsMAT3, align 8
  %m1 = alloca %struct.cmsMAT3, align 8
  %m2 = alloca %struct.cmsMAT3, align 8
  %m3 = alloca %struct.cmsMAT3, align 8
  %m4 = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  %MixedCHAD = alloca %struct.cmsMAT3, align 8
  %TempSrc = alloca double, align 8
  %TempDest = alloca double, align 8
  %Temp = alloca double, align 8
  store double %AdaptationState, double* %AdaptationState.addr, align 8, !tbaa !15
  store %struct.cmsCIEXYZ* %WhitePointIn, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %ChromaticAdaptationMatrixIn, %struct.cmsMAT3** %ChromaticAdaptationMatrixIn.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %WhitePointOut, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %ChromaticAdaptationMatrixOut, %struct.cmsMAT3** %ChromaticAdaptationMatrixOut.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %m, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %Scale to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.cmsMAT3* %m1 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #2
  %2 = bitcast %struct.cmsMAT3* %m2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #2
  %3 = bitcast %struct.cmsMAT3* %m3 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #2
  %4 = bitcast %struct.cmsMAT3* %m4 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #2
  %5 = load double, double* %AdaptationState.addr, align 8, !tbaa !15
  %cmp = fcmp oeq double %5, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 0
  %8 = load double, double* %X, align 8, !tbaa !23
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 0
  %10 = load double, double* %X1, align 8, !tbaa !23
  %div = fdiv double %8, %10
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %div, double 0.000000e+00, double 0.000000e+00) #6
  %11 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v2 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v2, i32 0, i64 1
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 1
  %13 = load double, double* %Y, align 8, !tbaa !25
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %14, i32 0, i32 1
  %15 = load double, double* %Y4, align 8, !tbaa !25
  %div5 = fdiv double %13, %15
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx3, double 0.000000e+00, double %div5, double 0.000000e+00) #6
  %16 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v6 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %16, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v6, i32 0, i64 2
  %17 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %17, i32 0, i32 2
  %18 = load double, double* %Z, align 8, !tbaa !26
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %Z8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %19, i32 0, i32 2
  %20 = load double, double* %Z8, align 8, !tbaa !26
  %div9 = fdiv double %18, %20
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx7, double 0.000000e+00, double 0.000000e+00, double %div9) #6
  br label %if.end.51

if.else:                                          ; preds = %entry
  %v10 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Scale, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v10, i32 0, i64 0
  %21 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %X12 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %21, i32 0, i32 0
  %22 = load double, double* %X12, align 8, !tbaa !23
  %23 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %X13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %23, i32 0, i32 0
  %24 = load double, double* %X13, align 8, !tbaa !23
  %div14 = fdiv double %22, %24
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx11, double %div14, double 0.000000e+00, double 0.000000e+00) #6
  %v15 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Scale, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v15, i32 0, i64 1
  %25 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %Y17 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %25, i32 0, i32 1
  %26 = load double, double* %Y17, align 8, !tbaa !25
  %27 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %Y18 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %27, i32 0, i32 1
  %28 = load double, double* %Y18, align 8, !tbaa !25
  %div19 = fdiv double %26, %28
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx16, double 0.000000e+00, double %div19, double 0.000000e+00) #6
  %v20 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Scale, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v20, i32 0, i64 2
  %29 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointIn.addr, align 8, !tbaa !1
  %Z22 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %29, i32 0, i32 2
  %30 = load double, double* %Z22, align 8, !tbaa !26
  %31 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePointOut.addr, align 8, !tbaa !1
  %Z23 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %31, i32 0, i32 2
  %32 = load double, double* %Z23, align 8, !tbaa !26
  %div24 = fdiv double %30, %32
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx21, double 0.000000e+00, double 0.000000e+00, double %div24) #6
  %33 = load double, double* %AdaptationState.addr, align 8, !tbaa !15
  %cmp25 = fcmp oeq double %33, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else
  %34 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixOut.addr, align 8, !tbaa !1
  %35 = bitcast %struct.cmsMAT3* %m1 to i8*
  %36 = bitcast %struct.cmsMAT3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 72, i32 8, i1 false), !tbaa.struct !29
  call void @_cmsMAT3per(%struct.cmsMAT3* %m2, %struct.cmsMAT3* %m1, %struct.cmsMAT3* %Scale) #6
  %37 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %38 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixOut.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %37, %struct.cmsMAT3* %m2, %struct.cmsMAT3* %38) #6
  %39 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixIn.addr, align 8, !tbaa !1
  %40 = bitcast %struct.cmsMAT3* %m3 to i8*
  %41 = bitcast %struct.cmsMAT3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 72, i32 8, i1 false), !tbaa.struct !29
  %call = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %m3, %struct.cmsMAT3* %m4) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end:                                           ; preds = %if.then.26
  %42 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %42, %struct.cmsMAT3* %m2, %struct.cmsMAT3* %m4) #6
  br label %if.end.50

if.else.28:                                       ; preds = %if.else
  %43 = bitcast %struct.cmsMAT3* %MixedCHAD to i8*
  call void @llvm.lifetime.start(i64 72, i8* %43) #2
  %44 = bitcast double* %TempSrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #2
  %45 = bitcast double* %TempDest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = bitcast double* %Temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixIn.addr, align 8, !tbaa !1
  %48 = bitcast %struct.cmsMAT3* %m1 to i8*
  %49 = bitcast %struct.cmsMAT3* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 72, i32 8, i1 false), !tbaa.struct !29
  %call29 = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %m1, %struct.cmsMAT3* %m2) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.else.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.else.28
  call void @_cmsMAT3per(%struct.cmsMAT3* %m3, %struct.cmsMAT3* %m2, %struct.cmsMAT3* %Scale) #6
  %50 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixIn.addr, align 8, !tbaa !1
  %call33 = call double @CHAD2Temp(%struct.cmsMAT3* %50) #6
  store double %call33, double* %TempSrc, align 8, !tbaa !15
  %51 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ChromaticAdaptationMatrixOut.addr, align 8, !tbaa !1
  %call34 = call double @CHAD2Temp(%struct.cmsMAT3* %51) #6
  store double %call34, double* %TempDest, align 8, !tbaa !15
  %52 = load double, double* %TempSrc, align 8, !tbaa !15
  %cmp35 = fcmp olt double %52, 0.000000e+00
  br i1 %cmp35, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %53 = load double, double* %TempDest, align 8, !tbaa !15
  %cmp36 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %lor.lhs.false
  %call39 = call i32 @_cmsMAT3isIdentity(%struct.cmsMAT3* %Scale) #6
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.38
  %54 = load double, double* %TempSrc, align 8, !tbaa !15
  %55 = load double, double* %TempDest, align 8, !tbaa !15
  %sub = fsub double %54, %55
  %call41 = call double @fabs(double %sub) #8
  %cmp42 = fcmp olt double %call41, 1.000000e-02
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  %56 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  call void @_cmsMAT3identity(%struct.cmsMAT3* %56) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true, %if.end.38
  %57 = load double, double* %AdaptationState.addr, align 8, !tbaa !15
  %sub45 = fsub double 1.000000e+00, %57
  %58 = load double, double* %TempDest, align 8, !tbaa !15
  %mul = fmul double %sub45, %58
  %59 = load double, double* %AdaptationState.addr, align 8, !tbaa !15
  %60 = load double, double* %TempSrc, align 8, !tbaa !15
  %mul46 = fmul double %59, %60
  %add = fadd double %mul, %mul46
  store double %add, double* %Temp, align 8, !tbaa !15
  %61 = load double, double* %Temp, align 8, !tbaa !15
  call void @Temp2CHAD(%struct.cmsMAT3* %MixedCHAD, double %61) #6
  %62 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %62, %struct.cmsMAT3* %m3, %struct.cmsMAT3* %MixedCHAD) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43, %if.then.37, %if.then.31
  %63 = bitcast double* %Temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast double* %TempDest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast double* %TempSrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.cmsMAT3* %MixedCHAD to i8*
  call void @llvm.lifetime.end(i64 72, i8* %66) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %if.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.end.51, %cleanup, %if.then.27
  %67 = bitcast %struct.cmsMAT3* %m4 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %67) #2
  %68 = bitcast %struct.cmsMAT3* %m3 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %68) #2
  %69 = bitcast %struct.cmsMAT3* %m2 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %69) #2
  %70 = bitcast %struct.cmsMAT3* %m1 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %70) #2
  %71 = bitcast %struct.cmsMAT3* %Scale to i8*
  call void @llvm.lifetime.end(i64 72, i8* %71) #2
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @cmsDetectBlackPoint(%struct.cmsCIEXYZ*, i8*, i32, i32) #1

declare i32 @cmsDetectDestinationBlackPoint(%struct.cmsCIEXYZ*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ComputeBlackPointCompensation(%struct.cmsCIEXYZ* %BlackPointIn, %struct.cmsCIEXYZ* %BlackPointOut, %struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #0 {
entry:
  %BlackPointIn.addr = alloca %struct.cmsCIEXYZ*, align 8
  %BlackPointOut.addr = alloca %struct.cmsCIEXYZ*, align 8
  %m.addr = alloca %struct.cmsMAT3*, align 8
  %off.addr = alloca %struct.cmsVEC3*, align 8
  %ax = alloca double, align 8
  %ay = alloca double, align 8
  %az = alloca double, align 8
  %bx = alloca double, align 8
  %by = alloca double, align 8
  %bz = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %tz = alloca double, align 8
  store %struct.cmsCIEXYZ* %BlackPointIn, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %BlackPointOut, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %m, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %off, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %0 = bitcast double* %ax to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %ay to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %az to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %bx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast double* %by to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %bz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast double* %tx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast double* %ty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast double* %tz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 0
  %10 = load double, double* %X, align 8, !tbaa !23
  %call = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call, i32 0, i32 0
  %11 = load double, double* %X1, align 8, !tbaa !23
  %sub = fsub double %10, %11
  store double %sub, double* %tx, align 8, !tbaa !15
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 1
  %13 = load double, double* %Y, align 8, !tbaa !25
  %call2 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Y3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call2, i32 0, i32 1
  %14 = load double, double* %Y3, align 8, !tbaa !25
  %sub4 = fsub double %13, %14
  store double %sub4, double* %ty, align 8, !tbaa !15
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 2
  %16 = load double, double* %Z, align 8, !tbaa !26
  %call5 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Z6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call5, i32 0, i32 2
  %17 = load double, double* %Z6, align 8, !tbaa !26
  %sub7 = fsub double %16, %17
  store double %sub7, double* %tz, align 8, !tbaa !15
  %18 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %X8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %18, i32 0, i32 0
  %19 = load double, double* %X8, align 8, !tbaa !23
  %call9 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %X10 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call9, i32 0, i32 0
  %20 = load double, double* %X10, align 8, !tbaa !23
  %sub11 = fsub double %19, %20
  %21 = load double, double* %tx, align 8, !tbaa !15
  %div = fdiv double %sub11, %21
  store double %div, double* %ax, align 8, !tbaa !15
  %22 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %Y12 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %22, i32 0, i32 1
  %23 = load double, double* %Y12, align 8, !tbaa !25
  %call13 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Y14 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call13, i32 0, i32 1
  %24 = load double, double* %Y14, align 8, !tbaa !25
  %sub15 = fsub double %23, %24
  %25 = load double, double* %ty, align 8, !tbaa !15
  %div16 = fdiv double %sub15, %25
  store double %div16, double* %ay, align 8, !tbaa !15
  %26 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %Z17 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %26, i32 0, i32 2
  %27 = load double, double* %Z17, align 8, !tbaa !26
  %call18 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Z19 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call18, i32 0, i32 2
  %28 = load double, double* %Z19, align 8, !tbaa !26
  %sub20 = fsub double %27, %28
  %29 = load double, double* %tz, align 8, !tbaa !15
  %div21 = fdiv double %sub20, %29
  store double %div21, double* %az, align 8, !tbaa !15
  %call22 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %X23 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call22, i32 0, i32 0
  %30 = load double, double* %X23, align 8, !tbaa !23
  %sub24 = fsub double -0.000000e+00, %30
  %31 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %X25 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %31, i32 0, i32 0
  %32 = load double, double* %X25, align 8, !tbaa !23
  %33 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %X26 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %33, i32 0, i32 0
  %34 = load double, double* %X26, align 8, !tbaa !23
  %sub27 = fsub double %32, %34
  %mul = fmul double %sub24, %sub27
  %35 = load double, double* %tx, align 8, !tbaa !15
  %div28 = fdiv double %mul, %35
  store double %div28, double* %bx, align 8, !tbaa !15
  %call29 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Y30 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call29, i32 0, i32 1
  %36 = load double, double* %Y30, align 8, !tbaa !25
  %sub31 = fsub double -0.000000e+00, %36
  %37 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %Y32 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %37, i32 0, i32 1
  %38 = load double, double* %Y32, align 8, !tbaa !25
  %39 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %Y33 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %39, i32 0, i32 1
  %40 = load double, double* %Y33, align 8, !tbaa !25
  %sub34 = fsub double %38, %40
  %mul35 = fmul double %sub31, %sub34
  %41 = load double, double* %ty, align 8, !tbaa !15
  %div36 = fdiv double %mul35, %41
  store double %div36, double* %by, align 8, !tbaa !15
  %call37 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Z38 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call37, i32 0, i32 2
  %42 = load double, double* %Z38, align 8, !tbaa !26
  %sub39 = fsub double -0.000000e+00, %42
  %43 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointOut.addr, align 8, !tbaa !1
  %Z40 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %43, i32 0, i32 2
  %44 = load double, double* %Z40, align 8, !tbaa !26
  %45 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %BlackPointIn.addr, align 8, !tbaa !1
  %Z41 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %45, i32 0, i32 2
  %46 = load double, double* %Z41, align 8, !tbaa !26
  %sub42 = fsub double %44, %46
  %mul43 = fmul double %sub39, %sub42
  %47 = load double, double* %tz, align 8, !tbaa !15
  %div44 = fdiv double %mul43, %47
  store double %div44, double* %bz, align 8, !tbaa !15
  %48 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %48, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %49 = load double, double* %ax, align 8, !tbaa !15
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %49, double 0.000000e+00, double 0.000000e+00) #6
  %50 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v45 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %50, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v45, i32 0, i64 1
  %51 = load double, double* %ay, align 8, !tbaa !15
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx46, double 0.000000e+00, double %51, double 0.000000e+00) #6
  %52 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %v47 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %52, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v47, i32 0, i64 2
  %53 = load double, double* %az, align 8, !tbaa !15
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx48, double 0.000000e+00, double 0.000000e+00, double %53) #6
  %54 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %55 = load double, double* %bx, align 8, !tbaa !15
  %56 = load double, double* %by, align 8, !tbaa !15
  %57 = load double, double* %bz, align 8, !tbaa !15
  call void @_cmsVEC3init(%struct.cmsVEC3* %54, double %55, double %56, double %57) #6
  %58 = bitcast double* %tz to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast double* %ty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast double* %tx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast double* %bz to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast double* %by to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast double* %bx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast double* %az to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast double* %ay to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast double* %ax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @_cmsMAT3per(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsMAT3*) #1

declare i32 @_cmsMAT3inverse(%struct.cmsMAT3*, %struct.cmsMAT3*) #1

; Function Attrs: nounwind uwtable
define internal double @CHAD2Temp(%struct.cmsMAT3* %Chad) #0 {
entry:
  %retval = alloca double, align 8
  %Chad.addr = alloca %struct.cmsMAT3*, align 8
  %d = alloca %struct.cmsVEC3, align 8
  %s = alloca %struct.cmsVEC3, align 8
  %Dest = alloca %struct.cmsCIEXYZ, align 8
  %DestChromaticity = alloca %struct.cmsCIExyY, align 8
  %TempK = alloca double, align 8
  %m1 = alloca %struct.cmsMAT3, align 8
  %m2 = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %Chad, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsVEC3* %d to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cmsVEC3* %s to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.cmsCIEXYZ* %Dest to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #2
  %3 = bitcast %struct.cmsCIExyY* %DestChromaticity to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast double* %TempK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.cmsMAT3* %m1 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #2
  %6 = bitcast %struct.cmsMAT3* %m2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #2
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  %8 = bitcast %struct.cmsMAT3* %m1 to i8*
  %9 = bitcast %struct.cmsMAT3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 72, i32 8, i1 false), !tbaa.struct !29
  %call = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %m1, %struct.cmsMAT3* %m2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call1, i32 0, i32 0
  %10 = load double, double* %X, align 8, !tbaa !23
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  store double %10, double* %arrayidx, align 8, !tbaa !15
  %call2 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call2, i32 0, i32 1
  %11 = load double, double* %Y, align 8, !tbaa !25
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %s, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 1
  store double %11, double* %arrayidx4, align 8, !tbaa !15
  %call5 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call5, i32 0, i32 2
  %12 = load double, double* %Z, align 8, !tbaa !26
  %n6 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %s, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %n6, i32 0, i64 2
  store double %12, double* %arrayidx7, align 8, !tbaa !15
  call void @_cmsMAT3eval(%struct.cmsVEC3* %d, %struct.cmsMAT3* %m2, %struct.cmsVEC3* %s) #6
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %d, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 0
  %13 = load double, double* %arrayidx9, align 8, !tbaa !15
  %X10 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Dest, i32 0, i32 0
  store double %13, double* %X10, align 8, !tbaa !23
  %n11 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %d, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %n11, i32 0, i64 1
  %14 = load double, double* %arrayidx12, align 8, !tbaa !15
  %Y13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Dest, i32 0, i32 1
  store double %14, double* %Y13, align 8, !tbaa !25
  %n14 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %d, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %n14, i32 0, i64 2
  %15 = load double, double* %arrayidx15, align 8, !tbaa !15
  %Z16 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %Dest, i32 0, i32 2
  store double %15, double* %Z16, align 8, !tbaa !26
  call void @cmsXYZ2xyY(%struct.cmsCIExyY* %DestChromaticity, %struct.cmsCIEXYZ* %Dest) #6
  %call17 = call i32 @cmsTempFromWhitePoint(double* %TempK, %struct.cmsCIExyY* %DestChromaticity) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end
  store double -1.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %16 = load double, double* %TempK, align 8, !tbaa !15
  store double %16, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19, %if.then
  %17 = bitcast %struct.cmsMAT3* %m2 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %17) #2
  %18 = bitcast %struct.cmsMAT3* %m1 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %18) #2
  %19 = bitcast double* %TempK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.cmsCIExyY* %DestChromaticity to i8*
  call void @llvm.lifetime.end(i64 24, i8* %20) #2
  %21 = bitcast %struct.cmsCIEXYZ* %Dest to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #2
  %22 = bitcast %struct.cmsVEC3* %s to i8*
  call void @llvm.lifetime.end(i64 24, i8* %22) #2
  %23 = bitcast %struct.cmsVEC3* %d to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #2
  %24 = load double, double* %retval
  ret double %24
}

declare i32 @_cmsMAT3isIdentity(%struct.cmsMAT3*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define internal void @Temp2CHAD(%struct.cmsMAT3* %Chad, double %Temp) #0 {
entry:
  %Chad.addr = alloca %struct.cmsMAT3*, align 8
  %Temp.addr = alloca double, align 8
  %White = alloca %struct.cmsCIEXYZ, align 8
  %ChromaticityOfWhite = alloca %struct.cmsCIExyY, align 8
  store %struct.cmsMAT3* %Chad, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  store double %Temp, double* %Temp.addr, align 8, !tbaa !15
  %0 = bitcast %struct.cmsCIEXYZ* %White to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cmsCIExyY* %ChromaticityOfWhite to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = load double, double* %Temp.addr, align 8, !tbaa !15
  %call = call i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY* %ChromaticityOfWhite, double %2) #6
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %White, %struct.cmsCIExyY* %ChromaticityOfWhite) #6
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  %call1 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %call2 = call i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %3, %struct.cmsMAT3* null, %struct.cmsCIEXYZ* %White, %struct.cmsCIEXYZ* %call1) #6
  %4 = bitcast %struct.cmsCIExyY* %ChromaticityOfWhite to i8*
  call void @llvm.lifetime.end(i64 24, i8* %4) #2
  %5 = bitcast %struct.cmsCIEXYZ* %White to i8*
  call void @llvm.lifetime.end(i64 24, i8* %5) #2
  ret void
}

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #1

declare void @_cmsMAT3eval(%struct.cmsVEC3*, %struct.cmsMAT3*, %struct.cmsVEC3*) #1

declare void @cmsXYZ2xyY(%struct.cmsCIExyY*, %struct.cmsCIEXYZ*) #1

declare i32 @cmsTempFromWhitePoint(double*, %struct.cmsCIExyY*) #1

declare i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY*, double) #1

declare void @cmsxyY2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIExyY*) #1

declare i32 @_cmsAdaptationMatrix(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ*) #1

; Function Attrs: nounwind uwtable
define internal i32 @IsEmptyLayer(%struct.cmsMAT3* %m, %struct.cmsVEC3* %off) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.cmsMAT3*, align 8
  %off.addr = alloca %struct.cmsVEC3*, align 8
  %diff = alloca double, align 8
  %Ident = alloca %struct.cmsMAT3, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %m, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %off, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %0 = bitcast double* %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store double 0.000000e+00, double* %diff, align 8, !tbaa !15
  %1 = bitcast %struct.cmsMAT3* %Ident to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsMAT3* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.cmsVEC3* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.cmsMAT3* %5, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.6

land.lhs.true.3:                                  ; preds = %if.end
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.cmsVEC3* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %land.lhs.true.3, %if.end
  call void @_cmsMAT3identity(%struct.cmsMAT3* %Ident) #6
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %7 = load i32, i32* %i, align 4, !tbaa !13
  %cmp7 = icmp slt i32 %7, 9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.cmsMAT3*, %struct.cmsMAT3** %m.addr, align 8, !tbaa !1
  %10 = bitcast %struct.cmsMAT3* %9 to double*
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8, !tbaa !15
  %12 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom8 = sext i32 %12 to i64
  %13 = bitcast %struct.cmsMAT3* %Ident to double*
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8, !tbaa !15
  %sub = fsub double %11, %14
  %call = call double @fabs(double %sub) #8
  %15 = load double, double* %diff, align 8, !tbaa !15
  %add = fadd double %15, %call
  store double %add, double* %diff, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.17, %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !13
  %cmp11 = icmp slt i32 %17, 3
  br i1 %cmp11, label %for.body.12, label %for.end.19

for.body.12:                                      ; preds = %for.cond.10
  %18 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.cmsVEC3*, %struct.cmsVEC3** %off.addr, align 8, !tbaa !1
  %20 = bitcast %struct.cmsVEC3* %19 to double*
  %arrayidx14 = getelementptr inbounds double, double* %20, i64 %idxprom13
  %21 = load double, double* %arrayidx14, align 8, !tbaa !15
  %call15 = call double @fabs(double %21) #8
  %22 = load double, double* %diff, align 8, !tbaa !15
  %add16 = fadd double %22, %call15
  store double %add16, double* %diff, align 8, !tbaa !15
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.12
  %23 = load i32, i32* %i, align 4, !tbaa !13
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %i, align 4, !tbaa !13
  br label %for.cond.10

for.end.19:                                       ; preds = %for.cond.10
  %24 = load double, double* %diff, align 8, !tbaa !15
  %cmp20 = fcmp olt double %24, 2.000000e-03
  %conv = zext i1 %cmp20 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.19, %if.then.5, %if.then
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.cmsMAT3* %Ident to i8*
  call void @llvm.lifetime.end(i64 72, i8* %26) #2
  %27 = bitcast double* %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct*) #1

declare %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct*, i32, i32, double*, double*) #1

declare %struct._cmsStage_struct* @_cmsStageAllocXYZ2Lab(%struct._cmsContext_struct*) #1

declare %struct._cmsStage_struct* @_cmsStageAllocLab2XYZ(%struct._cmsContext_struct*) #1

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BlackPreservingKOnlyIntents(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32* %TheIntents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %TheIntents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %bp = alloca %struct.GrayOnlyParams, align 8
  %Result = alloca %struct._cmsPipeline_struct*, align 8
  %ICCIntents = alloca [256 x i32], align 16
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %i = alloca i32, align 4
  %nGridPoints = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !13
  store i32* %TheIntents, i32** %TheIntents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = bitcast %struct.GrayOnlyParams* %bp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast [256 x i32]* %ICCIntents to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #2
  %3 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp = icmp ult i32 %6, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp1 = icmp ugt i32 %7, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !13
  %9 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = zext i32 %10 to i64
  %11 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %call = call i32 @TranslateNonICCIntents(i32 %12) #6
  %13 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom3 = zext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i64 %idxprom3
  store i32 %call, i32* %arrayidx4, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %call6 = call i32 @cmsGetColorSpace(i8* %16) #6
  %cmp7 = icmp ne i32 %call6, 1129142603
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %for.end
  %17 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub = sub i32 %17, 1
  %idxprom9 = zext i32 %sub to i64
  %18 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 %idxprom9
  %19 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %call11 = call i32 @cmsGetColorSpace(i8* %19) #6
  %cmp12 = icmp ne i32 %call11, 1129142603
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %lor.lhs.false.8, %for.end
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %21 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %22 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %24 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %25 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call14 = call %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %20, i32 %21, i32* %arraydecay, i8** %22, i32* %23, double* %24, i32 %25) #6
  store %struct._cmsPipeline_struct* %call14, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false.8
  %26 = bitcast %struct.GrayOnlyParams* %bp to i8*
  %call16 = call i8* @memset(i8* %26, i32 0, i64 16) #7
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call17 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %27, i32 4, i32 4) #6
  store %struct._cmsPipeline_struct* %call17, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %cmp18 = icmp eq %struct._cmsPipeline_struct* %28, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %30 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay21 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %31 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %32 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %33 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %34 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call22 = call %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %29, i32 %30, i32* %arraydecay21, i8** %31, i32* %32, double* %33, i32 %34) #6
  %cmyk2cmyk = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 0
  store %struct._cmsPipeline_struct* %call22, %struct._cmsPipeline_struct** %cmyk2cmyk, align 8, !tbaa !30
  %cmyk2cmyk23 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 0
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk23, align 8, !tbaa !30
  %cmp24 = icmp eq %struct._cmsPipeline_struct* %35, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  br label %Error

if.end.26:                                        ; preds = %if.end.20
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %37 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay27 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %38 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %39 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %40 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %41 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call28 = call %struct._cms_curve_struct* @_cmsBuildKToneCurve(%struct._cmsContext_struct* %36, i32 4096, i32 %37, i32* %arraydecay27, i8** %38, i32* %39, double* %40, i32 %41) #6
  %KTone = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 1
  store %struct._cms_curve_struct* %call28, %struct._cms_curve_struct** %KTone, align 8, !tbaa !32
  %KTone29 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 1
  %42 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone29, align 8, !tbaa !32
  %cmp30 = icmp eq %struct._cms_curve_struct* %42, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  br label %Error

if.end.32:                                        ; preds = %if.end.26
  %43 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call33 = call i32 @_cmsReasonableGridpointsByColorspace(i32 1129142603, i32 %43) #6
  store i32 %call33, i32* %nGridPoints, align 4, !tbaa !13
  %44 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %45 = load i32, i32* %nGridPoints, align 4, !tbaa !13
  %call34 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %44, i32 %45, i32 4, i32 4, i16* null) #6
  store %struct._cmsStage_struct* %call34, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %46 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %cmp35 = icmp eq %struct._cmsStage_struct* %46, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  br label %Error

if.end.37:                                        ; preds = %if.end.32
  %47 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %48 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call38 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %47, i32 0, %struct._cmsStage_struct* %48) #6
  %tobool = icmp ne i32 %call38, 0
  br i1 %tobool, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  br label %Error

if.end.40:                                        ; preds = %if.end.37
  %49 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %50 = bitcast %struct.GrayOnlyParams* %bp to i8*
  %call41 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %49, i32 (i16*, i16*, i8*)* @BlackPreservingGrayOnlySampler, i8* %50, i32 0) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  br label %Error

if.end.44:                                        ; preds = %if.end.40
  %cmyk2cmyk45 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 0
  %51 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk45, align 8, !tbaa !30
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %51) #6
  %KTone46 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 1
  %52 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone46, align 8, !tbaa !32
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %52) #6
  %53 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %53, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.43, %if.then.39, %if.then.36, %if.then.31, %if.then.25
  %cmyk2cmyk47 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 0
  %54 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk47, align 8, !tbaa !30
  %cmp48 = icmp ne %struct._cmsPipeline_struct* %54, null
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %Error
  %cmyk2cmyk50 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 0
  %55 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk50, align 8, !tbaa !30
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %55) #6
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %Error
  %KTone52 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 1
  %56 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone52, align 8, !tbaa !32
  %cmp53 = icmp ne %struct._cms_curve_struct* %56, null
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.51
  %KTone55 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %bp, i32 0, i32 1
  %57 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone55, align 8, !tbaa !32
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %57) #6
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.51
  %58 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %cmp57 = icmp ne %struct._cmsPipeline_struct* %58, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %59 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %59) #6
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.end.44, %if.then.19, %if.then.13, %if.then
  %60 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast [256 x i32]* %ICCIntents to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %63) #2
  %64 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast %struct.GrayOnlyParams* %bp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %65) #2
  %66 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsPipeline_struct* @BlackPreservingKPlaneIntents(%struct._cmsContext_struct* %ContextID, i32 %nProfiles, i32* %TheIntents, i8** %hProfiles, i32* %BPC, double* %AdaptationStates, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cmsPipeline_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nProfiles.addr = alloca i32, align 4
  %TheIntents.addr = alloca i32*, align 8
  %hProfiles.addr = alloca i8**, align 8
  %BPC.addr = alloca i32*, align 8
  %AdaptationStates.addr = alloca double*, align 8
  %dwFlags.addr = alloca i32, align 4
  %bp = alloca %struct.PreserveKPlaneParams, align 8
  %Result = alloca %struct._cmsPipeline_struct*, align 8
  %ICCIntents = alloca [256 x i32], align 16
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %i = alloca i32, align 4
  %nGridPoints = alloca i32, align 4
  %hLab = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nProfiles, i32* %nProfiles.addr, align 4, !tbaa !13
  store i32* %TheIntents, i32** %TheIntents.addr, align 8, !tbaa !1
  store i8** %hProfiles, i8*** %hProfiles.addr, align 8, !tbaa !1
  store i32* %BPC, i32** %BPC.addr, align 8, !tbaa !1
  store double* %AdaptationStates, double** %AdaptationStates.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = bitcast %struct.PreserveKPlaneParams* %bp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #2
  %1 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %2 = bitcast [256 x i32]* %ICCIntents to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #2
  %3 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp = icmp ult i32 %7, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp1 = icmp ugt i32 %8, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !13
  %10 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %cmp2 = icmp ult i32 %9, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = zext i32 %11 to i64
  %12 = load i32*, i32** %TheIntents.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %call = call i32 @TranslateNonICCIntents(i32 %13) #6
  %14 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom3 = zext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i64 %idxprom3
  store i32 %call, i32* %arrayidx4, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %call6 = call i32 @cmsGetColorSpace(i8* %17) #6
  %cmp7 = icmp ne i32 %call6, 1129142603
  br i1 %cmp7, label %if.then.19, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %for.end
  %18 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub = sub i32 %18, 1
  %idxprom9 = zext i32 %sub to i64
  %19 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 %idxprom9
  %20 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %call11 = call i32 @cmsGetColorSpace(i8* %20) #6
  %cmp12 = icmp eq i32 %call11, 1129142603
  br i1 %cmp12, label %if.end.21, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %21 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub14 = sub i32 %21, 1
  %idxprom15 = zext i32 %sub14 to i64
  %22 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8*, i8** %22, i64 %idxprom15
  %23 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %call17 = call i32 @cmsGetDeviceClass(i8* %23) #6
  %cmp18 = icmp eq i32 %call17, 1886549106
  br i1 %cmp18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.13, %for.end
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %25 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %26 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %27 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %28 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %29 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call20 = call %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %24, i32 %25, i32* %arraydecay, i8** %26, i32* %27, double* %28, i32 %29) #6
  store %struct._cmsPipeline_struct* %call20, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %lor.lhs.false.13, %lor.lhs.false.8
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call22 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %30, i32 4, i32 4) #6
  store %struct._cmsPipeline_struct* %call22, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %31 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %cmp23 = icmp eq %struct._cmsPipeline_struct* %31, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %32 = bitcast %struct.PreserveKPlaneParams* %bp to i8*
  %call26 = call i8* @memset(i8* %32, i32 0, i64 64) #7
  %33 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub27 = sub i32 %33, 1
  %idxprom28 = zext i32 %sub27 to i64
  %34 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8*, i8** %34, i64 %idxprom28
  %35 = load i8*, i8** %arrayidx29, align 8, !tbaa !1
  %call30 = call %struct._cmsPipeline_struct* @_cmsReadInputLUT(i8* %35, i32 1) #6
  %LabK2cmyk = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 4
  store %struct._cmsPipeline_struct* %call30, %struct._cmsPipeline_struct** %LabK2cmyk, align 8, !tbaa !33
  %LabK2cmyk31 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 4
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LabK2cmyk31, align 8, !tbaa !33
  %cmp32 = icmp eq %struct._cmsPipeline_struct* %36, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.25
  br label %Cleanup

if.end.34:                                        ; preds = %if.end.25
  %37 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub35 = sub i32 %37, 1
  %idxprom36 = zext i32 %sub35 to i64
  %38 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8*, i8** %38, i64 %idxprom36
  %39 = load i8*, i8** %arrayidx37, align 8, !tbaa !1
  %call38 = call double @cmsDetectTAC(i8* %39) #6
  %div = fdiv double %call38, 1.000000e+02
  %MaxTAC = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 7
  store double %div, double* %MaxTAC, align 8, !tbaa !35
  %MaxTAC39 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 7
  %40 = load double, double* %MaxTAC39, align 8, !tbaa !35
  %cmp40 = fcmp ole double %40, 0.000000e+00
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.34
  br label %Cleanup

if.end.42:                                        ; preds = %if.end.34
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %42 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay43 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %43 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %44 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %45 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %46 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call44 = call %struct._cmsPipeline_struct* @DefaultICCintents(%struct._cmsContext_struct* %41, i32 %42, i32* %arraydecay43, i8** %43, i32* %44, double* %45, i32 %46) #6
  %cmyk2cmyk = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 0
  store %struct._cmsPipeline_struct* %call44, %struct._cmsPipeline_struct** %cmyk2cmyk, align 8, !tbaa !36
  %cmyk2cmyk45 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 0
  %47 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk45, align 8, !tbaa !36
  %cmp46 = icmp eq %struct._cmsPipeline_struct* %47, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.42
  br label %Cleanup

if.end.48:                                        ; preds = %if.end.42
  %48 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %49 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %arraydecay49 = getelementptr inbounds [256 x i32], [256 x i32]* %ICCIntents, i32 0, i32 0
  %50 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %51 = load i32*, i32** %BPC.addr, align 8, !tbaa !1
  %52 = load double*, double** %AdaptationStates.addr, align 8, !tbaa !1
  %53 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call50 = call %struct._cms_curve_struct* @_cmsBuildKToneCurve(%struct._cmsContext_struct* %48, i32 4096, i32 %49, i32* %arraydecay49, i8** %50, i32* %51, double* %52, i32 %53) #6
  %KTone = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 3
  store %struct._cms_curve_struct* %call50, %struct._cms_curve_struct** %KTone, align 8, !tbaa !37
  %KTone51 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 3
  %54 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone51, align 8, !tbaa !37
  %cmp52 = icmp eq %struct._cms_curve_struct* %54, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.48
  br label %Cleanup

if.end.54:                                        ; preds = %if.end.48
  %55 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call55 = call i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct* %55, %struct.cmsCIExyY* null) #6
  store i8* %call55, i8** %hLab, align 8, !tbaa !1
  %56 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %57 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub56 = sub i32 %57, 1
  %idxprom57 = zext i32 %sub56 to i64
  %58 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8*, i8** %58, i64 %idxprom57
  %59 = load i8*, i8** %arrayidx58, align 8, !tbaa !1
  %60 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call59 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %56, i8* %59, i32 34, i8* %60, i32 4849688, i32 1, i32 320) #6
  %hProofOutput = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 1
  store i8* %call59, i8** %hProofOutput, align 8, !tbaa !38
  %hProofOutput60 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 1
  %61 = load i8*, i8** %hProofOutput60, align 8, !tbaa !38
  %cmp61 = icmp eq i8* %61, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.54
  br label %Cleanup

if.end.63:                                        ; preds = %if.end.54
  %62 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %63 = load i32, i32* %nProfiles.addr, align 4, !tbaa !13
  %sub64 = sub i32 %63, 1
  %idxprom65 = zext i32 %sub64 to i64
  %64 = load i8**, i8*** %hProfiles.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i8*, i8** %64, i64 %idxprom65
  %65 = load i8*, i8** %arrayidx66, align 8, !tbaa !1
  %66 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call67 = call i8* @cmsCreateTransformTHR(%struct._cmsContext_struct* %62, i8* %65, i32 4194340, i8* %66, i32 4194332, i32 1, i32 320) #6
  %cmyk2Lab = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 2
  store i8* %call67, i8** %cmyk2Lab, align 8, !tbaa !39
  %cmyk2Lab68 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 2
  %67 = load i8*, i8** %cmyk2Lab68, align 8, !tbaa !39
  %cmp69 = icmp eq i8* %67, null
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.63
  br label %Cleanup

if.end.71:                                        ; preds = %if.end.63
  %68 = load i8*, i8** %hLab, align 8, !tbaa !1
  %call72 = call i32 @cmsCloseProfile(i8* %68) #6
  %MaxError = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 5
  store double 0.000000e+00, double* %MaxError, align 8, !tbaa !40
  %69 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %call73 = call i32 @_cmsReasonableGridpointsByColorspace(i32 1129142603, i32 %69) #6
  store i32 %call73, i32* %nGridPoints, align 4, !tbaa !13
  %70 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %71 = load i32, i32* %nGridPoints, align 4, !tbaa !13
  %call74 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %70, i32 %71, i32 4, i32 4, i16* null) #6
  store %struct._cmsStage_struct* %call74, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %72 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %cmp75 = icmp eq %struct._cmsStage_struct* %72, null
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.71
  br label %Cleanup

if.end.77:                                        ; preds = %if.end.71
  %73 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  %74 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call78 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %73, i32 0, %struct._cmsStage_struct* %74) #6
  %tobool = icmp ne i32 %call78, 0
  br i1 %tobool, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %if.end.77
  br label %Cleanup

if.end.80:                                        ; preds = %if.end.77
  %75 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %76 = bitcast %struct.PreserveKPlaneParams* %bp to i8*
  %call81 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %75, i32 (i16*, i16*, i8*)* @BlackPreservingSampler, i8* %76, i32 0) #6
  br label %Cleanup

Cleanup:                                          ; preds = %if.end.80, %if.then.79, %if.then.76, %if.then.70, %if.then.62, %if.then.53, %if.then.47, %if.then.41, %if.then.33
  %cmyk2cmyk82 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 0
  %77 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk82, align 8, !tbaa !36
  %tobool83 = icmp ne %struct._cmsPipeline_struct* %77, null
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %Cleanup
  %cmyk2cmyk85 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 0
  %78 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk85, align 8, !tbaa !36
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %78) #6
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %Cleanup
  %cmyk2Lab87 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 2
  %79 = load i8*, i8** %cmyk2Lab87, align 8, !tbaa !39
  %tobool88 = icmp ne i8* %79, null
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.86
  %cmyk2Lab90 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 2
  %80 = load i8*, i8** %cmyk2Lab90, align 8, !tbaa !39
  call void @cmsDeleteTransform(i8* %80) #6
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.86
  %hProofOutput92 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 1
  %81 = load i8*, i8** %hProofOutput92, align 8, !tbaa !38
  %tobool93 = icmp ne i8* %81, null
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.end.91
  %hProofOutput95 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 1
  %82 = load i8*, i8** %hProofOutput95, align 8, !tbaa !38
  call void @cmsDeleteTransform(i8* %82) #6
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.end.91
  %KTone97 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 3
  %83 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone97, align 8, !tbaa !37
  %tobool98 = icmp ne %struct._cms_curve_struct* %83, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.96
  %KTone100 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 3
  %84 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone100, align 8, !tbaa !37
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %84) #6
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.96
  %LabK2cmyk102 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 4
  %85 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LabK2cmyk102, align 8, !tbaa !33
  %tobool103 = icmp ne %struct._cmsPipeline_struct* %85, null
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.101
  %LabK2cmyk105 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %bp, i32 0, i32 4
  %86 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LabK2cmyk105, align 8, !tbaa !33
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %86) #6
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.101
  %87 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Result, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %87, %struct._cmsPipeline_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.106, %if.then.24, %if.then.19, %if.then
  %88 = bitcast i8** %hLab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #2
  %91 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast [256 x i32]* %ICCIntents to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %92) #2
  %93 = bitcast %struct._cmsPipeline_struct** %Result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast %struct.PreserveKPlaneParams* %bp to i8*
  call void @llvm.lifetime.end(i64 64, i8* %94) #2
  %95 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %retval
  ret %struct._cmsPipeline_struct* %95
}

; Function Attrs: nounwind uwtable
define internal i32 @TranslateNonICCIntents(i32 %Intent) #0 {
entry:
  %retval = alloca i32, align 4
  %Intent.addr = alloca i32, align 4
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !13
  %0 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 11, label %sw.bb.1
    i32 14, label %sw.bb.1
    i32 12, label %sw.bb.2
    i32 15, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  store i32 2, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %Intent.addr, align 4, !tbaa !13
  store i32 %1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare %struct._cms_curve_struct* @_cmsBuildKToneCurve(%struct._cmsContext_struct*, i32, i32, i32*, i8**, i32*, double*, i32) #1

declare i32 @_cmsReasonableGridpointsByColorspace(i32, i32) #1

declare %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct*, i32, i32, i32, i16*) #1

declare i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct*, i32 (i16*, i16*, i8*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @BlackPreservingGrayOnlySampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %retval = alloca i32, align 4
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %bp = alloca %struct.GrayOnlyParams*, align 8
  %cleanup.dest.slot = alloca i32
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.GrayOnlyParams** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.GrayOnlyParams*
  store %struct.GrayOnlyParams* %2, %struct.GrayOnlyParams** %bp, align 8, !tbaa !1
  %3 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !41
  %conv = zext i16 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx2, align 2, !tbaa !41
  %conv3 = zext i16 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %7 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx7, align 2, !tbaa !41
  %conv8 = zext i16 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %9 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 0, i16* %arrayidx11, align 2, !tbaa !41
  %10 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 0, i16* %arrayidx12, align 2, !tbaa !41
  %11 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %11, i64 0
  store i16 0, i16* %arrayidx13, align 2, !tbaa !41
  %12 = load %struct.GrayOnlyParams*, %struct.GrayOnlyParams** %bp, align 8, !tbaa !1
  %KTone = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %12, i32 0, i32 1
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !32
  %14 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %14, i64 3
  %15 = load i16, i16* %arrayidx14, align 2, !tbaa !41
  %call = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %13, i16 zeroext %15) #6
  %16 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %16, i64 3
  store i16 %call, i16* %arrayidx15, align 2, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %17 = load %struct.GrayOnlyParams*, %struct.GrayOnlyParams** %bp, align 8, !tbaa !1
  %cmyk2cmyk = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %17, i32 0, i32 0
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk, align 8, !tbaa !30
  %Eval16Fn = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %18, i32 0, i32 4
  %19 = load void (i16*, i16*, i8*)*, void (i16*, i16*, i8*)** %Eval16Fn, align 8, !tbaa !43
  %20 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %21 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %22 = load %struct.GrayOnlyParams*, %struct.GrayOnlyParams** %bp, align 8, !tbaa !1
  %cmyk2cmyk16 = getelementptr inbounds %struct.GrayOnlyParams, %struct.GrayOnlyParams* %22, i32 0, i32 0
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk16, align 8, !tbaa !30
  %Data = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %23, i32 0, i32 3
  %24 = load i8*, i8** %Data, align 8, !tbaa !44
  call void %19(i16* %20, i16* %21, i8* %24) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.GrayOnlyParams** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #1

declare zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct*, i16 zeroext) #1

declare double @cmsDetectTAC(i8*) #1

declare i8* @cmsCreateLab4ProfileTHR(%struct._cmsContext_struct*, %struct.cmsCIExyY*) #1

declare i8* @cmsCreateTransformTHR(%struct._cmsContext_struct*, i8*, i32, i8*, i32, i32, i32) #1

declare i32 @cmsCloseProfile(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @BlackPreservingSampler(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %retval = alloca i32, align 4
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %Inf = alloca [4 x float], align 16
  %Outf = alloca [4 x float], align 16
  %LabK = alloca [4 x float], align 16
  %SumCMY = alloca double, align 8
  %SumCMYK = alloca double, align 8
  %Error = alloca double, align 8
  %Ratio = alloca double, align 8
  %ColorimetricLab = alloca %struct.cmsCIELab, align 8
  %BlackPreservingLab = alloca %struct.cmsCIELab, align 8
  %bp = alloca %struct.PreserveKPlaneParams*, align 8
  %cleanup.dest.slot = alloca i32
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [4 x float]* %Inf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast [4 x float]* %Outf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast [4 x float]* %LabK to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast double* %SumCMY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %SumCMYK to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast double* %Error to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast double* %Ratio to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.cmsCIELab* %ColorimetricLab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %8) #2
  %9 = bitcast %struct.cmsCIELab* %BlackPreservingLab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %9) #2
  %10 = bitcast %struct.PreserveKPlaneParams** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.PreserveKPlaneParams*
  store %struct.PreserveKPlaneParams* %12, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !13
  %cmp = icmp slt i32 %13, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom = sext i32 %14 to i64
  %15 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !41
  %conv = zext i16 %16 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 6.553500e+04
  %conv2 = fptrunc double %div to float
  %17 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %Inf, i32 0, i64 %idxprom3
  store float %conv2, float* %arrayidx4, align 4, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !13
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %KTone = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %19, i32 0, i32 3
  %20 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %KTone, align 8, !tbaa !37
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %Inf, i32 0, i64 3
  %21 = load float, float* %arrayidx5, align 4, !tbaa !45
  %call = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %20, float %21) #6
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i64 3
  store float %call, float* %arrayidx6, align 4, !tbaa !45
  %22 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %22, i64 0
  %23 = load i16, i16* %arrayidx7, align 2, !tbaa !41
  %conv8 = zext i16 %23 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %24 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %24, i64 1
  %25 = load i16, i16* %arrayidx11, align 2, !tbaa !41
  %conv12 = zext i16 %25 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %26 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %26, i64 2
  %27 = load i16, i16* %arrayidx16, align 2, !tbaa !41
  %conv17 = zext i16 %27 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %28 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %28, i64 2
  store i16 0, i16* %arrayidx20, align 2, !tbaa !41
  %29 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %29, i64 1
  store i16 0, i16* %arrayidx21, align 2, !tbaa !41
  %30 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %30, i64 0
  store i16 0, i16* %arrayidx22, align 2, !tbaa !41
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i64 3
  %31 = load float, float* %arrayidx23, align 4, !tbaa !45
  %conv24 = fpext float %31 to double
  %mul = fmul double %conv24, 6.553500e+04
  %call25 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  %32 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %32, i64 3
  store i16 %call25, i16* %arrayidx26, align 2, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true, %for.end
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %Inf, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i32 0
  %33 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %cmyk2cmyk = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %33, i32 0, i32 0
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %cmyk2cmyk, align 8, !tbaa !36
  call void @cmsPipelineEvalFloat(float* %arraydecay, float* %arraydecay27, %struct._cmsPipeline_struct* %34) #6
  store i32 0, i32* %i, align 4, !tbaa !13
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.39, %if.end
  %35 = load i32, i32* %i, align 4, !tbaa !13
  %cmp29 = icmp slt i32 %35, 4
  br i1 %cmp29, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.28
  %36 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 %idxprom32
  %37 = load float, float* %arrayidx33, align 4, !tbaa !45
  %conv34 = fpext float %37 to double
  %mul35 = fmul double %conv34, 6.553500e+04
  %call36 = call zeroext i16 @_cmsQuickSaturateWord(double %mul35) #6
  %38 = load i32, i32* %i, align 4, !tbaa !13
  %idxprom37 = sext i32 %38 to i64
  %39 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %39, i64 %idxprom37
  store i16 %call36, i16* %arrayidx38, align 2, !tbaa !41
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.31
  %40 = load i32, i32* %i, align 4, !tbaa !13
  %inc40 = add nsw i32 %40, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !13
  br label %for.cond.28

for.end.41:                                       ; preds = %for.cond.28
  %arrayidx42 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 3
  %41 = load float, float* %arrayidx42, align 4, !tbaa !45
  %arrayidx43 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i64 3
  %42 = load float, float* %arrayidx43, align 4, !tbaa !45
  %sub = fsub float %41, %42
  %conv44 = fpext float %sub to double
  %call45 = call double @fabs(double %conv44) #8
  %cmp46 = fcmp olt double %call45, 0x3F08001800180018
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end.41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %for.end.41
  %43 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %hProofOutput = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %43, i32 0, i32 1
  %44 = load i8*, i8** %hProofOutput, align 8, !tbaa !38
  %45 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %46 = bitcast i16* %45 to i8*
  %47 = bitcast %struct.cmsCIELab* %ColorimetricLab to i8*
  call void @cmsDoTransform(i8* %44, i8* %46, i8* %47, i32 1) #6
  %48 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %cmyk2Lab = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %48, i32 0, i32 2
  %49 = load i8*, i8** %cmyk2Lab, align 8, !tbaa !39
  %arraydecay50 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i32 0
  %50 = bitcast float* %arraydecay50 to i8*
  %arraydecay51 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i32 0
  %51 = bitcast float* %arraydecay51 to i8*
  call void @cmsDoTransform(i8* %49, i8* %50, i8* %51, i32 1) #6
  %arraydecay52 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i32 0
  %52 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %LabK2cmyk = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %52, i32 0, i32 4
  %53 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LabK2cmyk, align 8, !tbaa !33
  %call55 = call i32 @cmsPipelineEvalReverseFloat(float* %arraydecay52, float* %arraydecay53, float* %arraydecay54, %struct._cmsPipeline_struct* %53) #6
  %tobool = icmp ne i32 %call55, 0
  br i1 %tobool, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.49
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.49
  %arrayidx58 = getelementptr inbounds [4 x float], [4 x float]* %LabK, i32 0, i64 3
  %54 = load float, float* %arrayidx58, align 4, !tbaa !45
  %arrayidx59 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 3
  store float %54, float* %arrayidx59, align 4, !tbaa !45
  %arrayidx60 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 0
  %55 = load float, float* %arrayidx60, align 4, !tbaa !45
  %arrayidx61 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 1
  %56 = load float, float* %arrayidx61, align 4, !tbaa !45
  %add = fadd float %55, %56
  %arrayidx62 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 2
  %57 = load float, float* %arrayidx62, align 4, !tbaa !45
  %add63 = fadd float %add, %57
  %conv64 = fpext float %add63 to double
  store double %conv64, double* %SumCMY, align 8, !tbaa !15
  %58 = load double, double* %SumCMY, align 8, !tbaa !15
  %arrayidx65 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 3
  %59 = load float, float* %arrayidx65, align 4, !tbaa !45
  %conv66 = fpext float %59 to double
  %add67 = fadd double %58, %conv66
  store double %add67, double* %SumCMYK, align 8, !tbaa !15
  %60 = load double, double* %SumCMYK, align 8, !tbaa !15
  %61 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %MaxTAC = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %61, i32 0, i32 7
  %62 = load double, double* %MaxTAC, align 8, !tbaa !35
  %cmp68 = fcmp ogt double %60, %62
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.end.57
  %63 = load double, double* %SumCMYK, align 8, !tbaa !15
  %64 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %MaxTAC71 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %64, i32 0, i32 7
  %65 = load double, double* %MaxTAC71, align 8, !tbaa !35
  %sub72 = fsub double %63, %65
  %66 = load double, double* %SumCMY, align 8, !tbaa !15
  %div73 = fdiv double %sub72, %66
  %sub74 = fsub double 1.000000e+00, %div73
  store double %sub74, double* %Ratio, align 8, !tbaa !15
  %67 = load double, double* %Ratio, align 8, !tbaa !15
  %cmp75 = fcmp olt double %67, 0.000000e+00
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.70
  store double 0.000000e+00, double* %Ratio, align 8, !tbaa !15
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.then.70
  br label %if.end.79

if.else:                                          ; preds = %if.end.57
  store double 1.000000e+00, double* %Ratio, align 8, !tbaa !15
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %if.end.78
  %arrayidx80 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 0
  %68 = load float, float* %arrayidx80, align 4, !tbaa !45
  %conv81 = fpext float %68 to double
  %69 = load double, double* %Ratio, align 8, !tbaa !15
  %mul82 = fmul double %conv81, %69
  %mul83 = fmul double %mul82, 6.553500e+04
  %call84 = call zeroext i16 @_cmsQuickSaturateWord(double %mul83) #6
  %70 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i16, i16* %70, i64 0
  store i16 %call84, i16* %arrayidx85, align 2, !tbaa !41
  %arrayidx86 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 1
  %71 = load float, float* %arrayidx86, align 4, !tbaa !45
  %conv87 = fpext float %71 to double
  %72 = load double, double* %Ratio, align 8, !tbaa !15
  %mul88 = fmul double %conv87, %72
  %mul89 = fmul double %mul88, 6.553500e+04
  %call90 = call zeroext i16 @_cmsQuickSaturateWord(double %mul89) #6
  %73 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %73, i64 1
  store i16 %call90, i16* %arrayidx91, align 2, !tbaa !41
  %arrayidx92 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 2
  %74 = load float, float* %arrayidx92, align 4, !tbaa !45
  %conv93 = fpext float %74 to double
  %75 = load double, double* %Ratio, align 8, !tbaa !15
  %mul94 = fmul double %conv93, %75
  %mul95 = fmul double %mul94, 6.553500e+04
  %call96 = call zeroext i16 @_cmsQuickSaturateWord(double %mul95) #6
  %76 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i16, i16* %76, i64 2
  store i16 %call96, i16* %arrayidx97, align 2, !tbaa !41
  %arrayidx98 = getelementptr inbounds [4 x float], [4 x float]* %Outf, i32 0, i64 3
  %77 = load float, float* %arrayidx98, align 4, !tbaa !45
  %conv99 = fpext float %77 to double
  %mul100 = fmul double %conv99, 6.553500e+04
  %call101 = call zeroext i16 @_cmsQuickSaturateWord(double %mul100) #6
  %78 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i16, i16* %78, i64 3
  store i16 %call101, i16* %arrayidx102, align 2, !tbaa !41
  %79 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %hProofOutput103 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %79, i32 0, i32 1
  %80 = load i8*, i8** %hProofOutput103, align 8, !tbaa !38
  %81 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %82 = bitcast i16* %81 to i8*
  %83 = bitcast %struct.cmsCIELab* %BlackPreservingLab to i8*
  call void @cmsDoTransform(i8* %80, i8* %82, i8* %83, i32 1) #6
  %call104 = call double @cmsDeltaE(%struct.cmsCIELab* %ColorimetricLab, %struct.cmsCIELab* %BlackPreservingLab) #6
  store double %call104, double* %Error, align 8, !tbaa !15
  %84 = load double, double* %Error, align 8, !tbaa !15
  %85 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %MaxError = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %85, i32 0, i32 5
  %86 = load double, double* %MaxError, align 8, !tbaa !40
  %cmp105 = fcmp ogt double %84, %86
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.79
  %87 = load double, double* %Error, align 8, !tbaa !15
  %88 = load %struct.PreserveKPlaneParams*, %struct.PreserveKPlaneParams** %bp, align 8, !tbaa !1
  %MaxError108 = getelementptr inbounds %struct.PreserveKPlaneParams, %struct.PreserveKPlaneParams* %88, i32 0, i32 5
  store double %87, double* %MaxError108, align 8, !tbaa !40
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.109, %if.then.56, %if.then.48, %if.then
  %89 = bitcast %struct.PreserveKPlaneParams** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast %struct.cmsCIELab* %BlackPreservingLab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %90) #2
  %91 = bitcast %struct.cmsCIELab* %ColorimetricLab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %91) #2
  %92 = bitcast double* %Ratio to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast double* %Error to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast double* %SumCMYK to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  %95 = bitcast double* %SumCMY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast [4 x float]* %LabK to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #2
  %97 = bitcast [4 x float]* %Outf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %97) #2
  %98 = bitcast [4 x float]* %Inf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %98) #2
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = load i32, i32* %retval
  ret i32 %100
}

declare void @cmsDeleteTransform(i8*) #1

declare float @cmsEvalToneCurveFloat(%struct._cms_curve_struct*, float) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #5 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !15
  %0 = load double, double* %d.addr, align 8, !tbaa !15
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !15
  %1 = load double, double* %d.addr, align 8, !tbaa !15
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !15
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !15
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #6
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

declare void @cmsPipelineEvalFloat(float*, float*, %struct._cmsPipeline_struct*) #1

declare void @cmsDoTransform(i8*, i8*, i8*, i32) #1

declare i32 @cmsPipelineEvalReverseFloat(float*, float*, float*, %struct._cmsPipeline_struct*) #1

declare double @cmsDeltaE(%struct.cmsCIELab*, %struct.cmsCIELab*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #5 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !15
  %0 = load double, double* %d.addr, align 8, !tbaa !15
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #6
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #5 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !15
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !15
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load double, double* %val.addr, align 8, !tbaa !15
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !15
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 %shr
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"_cmsContext_struct", !2, i64 0, !2, i64 8, !3, i64 16, !7, i64 136}
!7 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!8 = !{!9, !2, i64 0}
!9 = !{!"", !2, i64 0}
!10 = !{!11, !2, i64 272}
!11 = !{!"_cms_intents_list", !12, i64 0, !3, i64 4, !2, i64 264, !2, i64 272}
!12 = !{!"int", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!3, !3, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !3, i64 0}
!17 = !{!11, !2, i64 264}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !12, i64 24}
!20 = !{!"", !21, i64 0, !12, i64 24, !2, i64 32, !3, i64 40}
!21 = !{!"_cmsPluginBaseStruct", !12, i64 0, !12, i64 4, !12, i64 8, !2, i64 16}
!22 = !{!20, !2, i64 32}
!23 = !{!24, !16, i64 0}
!24 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!25 = !{!24, !16, i64 8}
!26 = !{!24, !16, i64 16}
!27 = !{!28, !2, i64 56}
!28 = !{!"_cmsPipeline_struct", !2, i64 0, !12, i64 8, !12, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !12, i64 64}
!29 = !{i64 0, i64 72, !14}
!30 = !{!31, !2, i64 0}
!31 = !{!"", !2, i64 0, !2, i64 8}
!32 = !{!31, !2, i64 8}
!33 = !{!34, !2, i64 32}
!34 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !16, i64 40, !2, i64 48, !16, i64 56}
!35 = !{!34, !16, i64 56}
!36 = !{!34, !2, i64 0}
!37 = !{!34, !2, i64 24}
!38 = !{!34, !2, i64 8}
!39 = !{!34, !2, i64 16}
!40 = !{!34, !16, i64 40}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !3, i64 0}
!43 = !{!28, !2, i64 24}
!44 = !{!28, !2, i64 16}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !3, i64 0}
