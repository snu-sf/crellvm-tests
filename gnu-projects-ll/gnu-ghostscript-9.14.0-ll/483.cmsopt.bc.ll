; ModuleID = './cmsopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsOptimizationPluginChunkType = type { %struct._cmsOptimizationCollection_st* }
%struct._cmsOptimizationCollection_st = type { i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)*, %struct._cmsOptimizationCollection_st* }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginOptimization = type { %struct._cmsPluginBaseStruct, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* }
%struct._cmsStageCLutData = type { %union.anon, %struct._cms_interp_struc*, i32, i32 }
%union.anon = type { i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%struct.Prelin16Data = type { %struct._cmsContext_struct*, i32, i32, [8 x void (i16*, i16*, %struct._cms_interp_struc*)*], [8 x %struct._cms_interp_struc*], void (i16*, i16*, %struct._cms_interp_struc*)*, %struct._cms_interp_struc*, void (i16*, i16*, %struct._cms_interp_struc*)**, %struct._cms_interp_struc** }
%struct._cmsStageToneCurvesData = type { i32, %struct._cms_curve_struct** }
%union.anon.0 = type { double }
%struct.Curves16Data = type { %struct._cmsContext_struct*, i32, i32, i16** }
%struct._cmsStageMatrixData = type { double*, double* }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct.Prelin8Data = type { %struct._cmsContext_struct*, %struct._cms_interp_struc*, [256 x i16], [256 x i16], [256 x i16], [256 x i32], [256 x i32], [256 x i32] }
%struct.MatShaper8Data = type { %struct._cmsContext_struct*, [256 x i32], [256 x i32], [256 x i32], [3 x [3 x i32]], [3 x i32], [16385 x i16], [16385 x i16], [16385 x i16] }

@_cmsOptimizationPluginChunk = global %struct._cmsOptimizationPluginChunkType zeroinitializer, align 8
@_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType = internal global %struct._cmsOptimizationPluginChunkType zeroinitializer, align 8
@DefaultOptimization = internal global [4 x %struct._cmsOptimizationCollection_st] [%struct._cmsOptimizationCollection_st { i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* @OptimizeByJoiningCurves, %struct._cmsOptimizationCollection_st* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x %struct._cmsOptimizationCollection_st]* @DefaultOptimization to i8*), i64 16) to %struct._cmsOptimizationCollection_st*) }, %struct._cmsOptimizationCollection_st { i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* @OptimizeMatrixShaper, %struct._cmsOptimizationCollection_st* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x %struct._cmsOptimizationCollection_st]* @DefaultOptimization to i8*), i64 32) to %struct._cmsOptimizationCollection_st*) }, %struct._cmsOptimizationCollection_st { i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* @OptimizeByComputingLinearization, %struct._cmsOptimizationCollection_st* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x %struct._cmsOptimizationCollection_st]* @DefaultOptimization to i8*), i64 48) to %struct._cmsOptimizationCollection_st*) }, %struct._cmsOptimizationCollection_st { i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* @OptimizeByResampling, %struct._cmsOptimizationCollection_st* null }], align 16
@.str = private unnamed_addr constant [20 x i8] c"(ctx != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmsopt.c\00", align 1
@__PRETTY_FUNCTION__.DupPluginOptimizationList = private unnamed_addr constant [95 x i8] c"void DupPluginOptimizationList(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"(head != ((void*)0))\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"(0)\00", align 1
@__PRETTY_FUNCTION__.OptimizeByResampling = private unnamed_addr constant [119 x i8] c"cmsBool OptimizeByResampling(cmsPipeline **, cmsUInt32Number, cmsUInt32Number *, cmsUInt32Number *, cmsUInt32Number *)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"(Lut -> InputChannels < 16)\00", align 1
@__PRETTY_FUNCTION__.XFormSampler16 = private unnamed_addr constant [71 x i8] c"int XFormSampler16(const cmsUInt16Number *, cmsUInt16Number *, void *)\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"(Lut -> OutputChannels < 16)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"(internal) Attempt to PatchLUT on non-lut stage\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"(internal) %d Channels are not supported on PatchLUT\00", align 1

; Function Attrs: nounwind uwtable
define void @_cmsAllocOptimizationPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
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
  call void @DupPluginOptimizationList(%struct._cmsContext_struct* %1, %struct._cmsContext_struct* %2) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %3, i32 0, i32 1
  %4 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %4, i8* bitcast (%struct._cmsOptimizationPluginChunkType* @_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType to i8*), i32 8) #7
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 12
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DupPluginOptimizationList(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %newHead = alloca %struct._cmsOptimizationPluginChunkType, align 8
  %entry1 = alloca %struct._cmsOptimizationCollection_st*, align 8
  %Anterior = alloca %struct._cmsOptimizationCollection_st*, align 8
  %head = alloca %struct._cmsOptimizationPluginChunkType*, align 8
  %newEntry = alloca %struct._cmsOptimizationCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsOptimizationPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._cmsOptimizationPluginChunkType* %newHead to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false)
  %2 = bitcast %struct._cmsOptimizationCollection_st** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct._cmsOptimizationCollection_st** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store %struct._cmsOptimizationCollection_st* null, %struct._cmsOptimizationCollection_st** %Anterior, align 8, !tbaa !1
  %4 = bitcast %struct._cmsOptimizationPluginChunkType** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 12
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._cmsOptimizationPluginChunkType*
  store %struct._cmsOptimizationPluginChunkType* %7, %struct._cmsOptimizationPluginChunkType** %head, align 8, !tbaa !1
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1655, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.DupPluginOptimizationList, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %head, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cmsOptimizationPluginChunkType* %10, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1656, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.DupPluginOptimizationList, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end.5

cond.end.5:                                       ; preds = %11, %cond.true.3
  %12 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %head, align 8, !tbaa !1
  %OptimizationCollection = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %12, i32 0, i32 0
  %13 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %OptimizationCollection, align 8, !tbaa !8
  store %struct._cmsOptimizationCollection_st* %13, %struct._cmsOptimizationCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.5
  %14 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %entry1, align 8, !tbaa !1
  %cmp6 = icmp ne %struct._cmsOptimizationCollection_st* %14, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct._cmsOptimizationCollection_st** %newEntry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %16, i32 0, i32 1
  %17 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %18 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %entry1, align 8, !tbaa !1
  %19 = bitcast %struct._cmsOptimizationCollection_st* %18 to i8*
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %17, i8* %19, i32 16) #7
  %20 = bitcast i8* %call to %struct._cmsOptimizationCollection_st*
  store %struct._cmsOptimizationCollection_st* %20, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  %21 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._cmsOptimizationCollection_st* %21, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %22 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %22, i32 0, i32 1
  store %struct._cmsOptimizationCollection_st* null, %struct._cmsOptimizationCollection_st** %Next, align 8, !tbaa !10
  %23 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Anterior, align 8, !tbaa !1
  %tobool = icmp ne %struct._cmsOptimizationCollection_st* %23, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %24 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  %25 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Anterior, align 8, !tbaa !1
  %Next9 = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %25, i32 0, i32 1
  store %struct._cmsOptimizationCollection_st* %24, %struct._cmsOptimizationCollection_st** %Next9, align 8, !tbaa !10
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %26 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  store %struct._cmsOptimizationCollection_st* %26, %struct._cmsOptimizationCollection_st** %Anterior, align 8, !tbaa !1
  %OptimizationCollection11 = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %newHead, i32 0, i32 0
  %27 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %OptimizationCollection11, align 8, !tbaa !8
  %cmp12 = icmp eq %struct._cmsOptimizationCollection_st* %27, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %28 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %newEntry, align 8, !tbaa !1
  %OptimizationCollection14 = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %newHead, i32 0, i32 0
  store %struct._cmsOptimizationCollection_st* %28, %struct._cmsOptimizationCollection_st** %OptimizationCollection14, align 8, !tbaa !8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then
  %29 = bitcast %struct._cmsOptimizationCollection_st** %newEntry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %30 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %entry1, align 8, !tbaa !1
  %Next16 = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %30, i32 0, i32 1
  %31 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Next16, align 8, !tbaa !10
  store %struct._cmsOptimizationCollection_st* %31, %struct._cmsOptimizationCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool17 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %32, i32 0, i32 1
  %33 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool17, align 8, !tbaa !5
  %34 = bitcast %struct._cmsOptimizationPluginChunkType* %newHead to i8*
  %call18 = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %33, i8* %34, i32 8) #7
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks19 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %35, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks19, i32 0, i64 12
  store i8* %call18, i8** %arrayidx20, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.21

cleanup.21:                                       ; preds = %for.end, %cleanup
  %36 = bitcast %struct._cmsOptimizationPluginChunkType** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast %struct._cmsOptimizationCollection_st** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = bitcast %struct._cmsOptimizationCollection_st** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct._cmsOptimizationPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %cleanup.dest.25 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.25, label %unreachable [
    i32 0, label %cleanup.cont.26
    i32 1, label %cleanup.cont.26
  ]

cleanup.cont.26:                                  ; preds = %cleanup.21, %cleanup.21
  ret void

unreachable:                                      ; preds = %cleanup.21
  unreachable
}

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterOptimizationPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %Plugin = alloca %struct.cmsPluginOptimization*, align 8
  %ctx = alloca %struct._cmsOptimizationPluginChunkType*, align 8
  %fl = alloca %struct._cmsOptimizationCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPluginOptimization** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPluginBaseStruct* %1 to %struct.cmsPluginOptimization*
  store %struct.cmsPluginOptimization* %2, %struct.cmsPluginOptimization** %Plugin, align 8, !tbaa !1
  %3 = bitcast %struct._cmsOptimizationPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %4, i32 12) #7
  %5 = bitcast i8* %call to %struct._cmsOptimizationPluginChunkType*
  store %struct._cmsOptimizationPluginChunkType* %5, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %6 = bitcast %struct._cmsOptimizationCollection_st** %fl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %OptimizationCollection = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %8, i32 0, i32 0
  store %struct._cmsOptimizationCollection_st* null, %struct._cmsOptimizationCollection_st** %OptimizationCollection, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.cmsPluginOptimization*, %struct.cmsPluginOptimization** %Plugin, align 8, !tbaa !1
  %OptimizePtr = getelementptr inbounds %struct.cmsPluginOptimization, %struct.cmsPluginOptimization* %9, i32 0, i32 1
  %10 = load i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)*, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)** %OptimizePtr, align 8, !tbaa !12
  %cmp1 = icmp eq i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* %10, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call4 = call i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %11, i32 16) #7
  %12 = bitcast i8* %call4 to %struct._cmsOptimizationCollection_st*
  store %struct._cmsOptimizationCollection_st* %12, %struct._cmsOptimizationCollection_st** %fl, align 8, !tbaa !1
  %13 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %fl, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cmsOptimizationCollection_st* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.3
  %14 = load %struct.cmsPluginOptimization*, %struct.cmsPluginOptimization** %Plugin, align 8, !tbaa !1
  %OptimizePtr8 = getelementptr inbounds %struct.cmsPluginOptimization, %struct.cmsPluginOptimization* %14, i32 0, i32 1
  %15 = load i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)*, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)** %OptimizePtr8, align 8, !tbaa !12
  %16 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %fl, align 8, !tbaa !1
  %OptimizePtr9 = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %16, i32 0, i32 0
  store i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)* %15, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)** %OptimizePtr9, align 8, !tbaa !16
  %17 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %OptimizationCollection10 = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %17, i32 0, i32 0
  %18 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %OptimizationCollection10, align 8, !tbaa !8
  %19 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %fl, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %19, i32 0, i32 1
  store %struct._cmsOptimizationCollection_st* %18, %struct._cmsOptimizationCollection_st** %Next, align 8, !tbaa !10
  %20 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %fl, align 8, !tbaa !1
  %21 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %OptimizationCollection11 = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %21, i32 0, i32 0
  store %struct._cmsOptimizationCollection_st* %20, %struct._cmsOptimizationCollection_st** %OptimizationCollection11, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %22 = bitcast %struct._cmsOptimizationCollection_st** %fl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct._cmsOptimizationPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.cmsPluginOptimization** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #1

declare i8* @_cmsPluginMalloc(%struct._cmsContext_struct*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsOptimizePipeline(%struct._cmsContext_struct* %ContextID, %struct._cmsPipeline_struct** %PtrLut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %PtrLut.addr = alloca %struct._cmsPipeline_struct**, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %ctx = alloca %struct._cmsOptimizationPluginChunkType*, align 8
  %Opts = alloca %struct._cmsOptimizationCollection_st*, align 8
  %AnySuccess = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct** %PtrLut, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !17
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsOptimizationPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 12) #7
  %2 = bitcast i8* %call to %struct._cmsOptimizationPluginChunkType*
  store %struct._cmsOptimizationPluginChunkType* %2, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct._cmsOptimizationCollection_st** %Opts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %AnySuccess to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %AnySuccess, align 4, !tbaa !17
  %5 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !17
  %and = and i32 %6, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %7, align 8, !tbaa !1
  %call1 = call i32 @PreOptimize(%struct._cmsPipeline_struct* %8) #7
  %9 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %11 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %12 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %13 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call2 = call i32 @OptimizeByResampling(%struct._cmsPipeline_struct** %9, i32 %10, i32* %11, i32* %12, i32* %13) #7
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %14, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %15, i32 0, i32 0
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !18
  %cmp = icmp eq %struct._cmsStage_struct* %16, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %17 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %17, align 8, !tbaa !1
  %19 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %19, align 8, !tbaa !1
  %21 = bitcast %struct._cmsPipeline_struct* %20 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %18, void (i16*, i16*, i8*)* @FastIdentity16, i8* %21, void (%struct._cmsContext_struct*, i8*)* null, i8* (%struct._cmsContext_struct*, i8*)* null) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %22 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %22, align 8, !tbaa !1
  %call5 = call i32 @PreOptimize(%struct._cmsPipeline_struct* %23) #7
  store i32 %call5, i32* %AnySuccess, align 4, !tbaa !17
  %24 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %24, align 8, !tbaa !1
  %Elements6 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %25, i32 0, i32 0
  %26 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements6, align 8, !tbaa !18
  %cmp7 = icmp eq %struct._cmsStage_struct* %26, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %27 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %27, align 8, !tbaa !1
  %29 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %29, align 8, !tbaa !1
  %31 = bitcast %struct._cmsPipeline_struct* %30 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %28, void (i16*, i16*, i8*)* @FastIdentity16, i8* %31, void (%struct._cmsContext_struct*, i8*)* null, i8* (%struct._cmsContext_struct*, i8*)* null) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %32 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !17
  %and10 = and i32 %33, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %34 = load %struct._cmsOptimizationPluginChunkType*, %struct._cmsOptimizationPluginChunkType** %ctx, align 8, !tbaa !1
  %OptimizationCollection = getelementptr inbounds %struct._cmsOptimizationPluginChunkType, %struct._cmsOptimizationPluginChunkType* %34, i32 0, i32 0
  %35 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %OptimizationCollection, align 8, !tbaa !8
  store %struct._cmsOptimizationCollection_st* %35, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %36 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %cmp14 = icmp ne %struct._cmsOptimizationCollection_st* %36, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %OptimizePtr = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %37, i32 0, i32 0
  %38 = load i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)*, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)** %OptimizePtr, align 8, !tbaa !16
  %39 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %40 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %41 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %42 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %43 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call15 = call i32 %38(%struct._cmsPipeline_struct** %39, i32 %40, i32* %41, i32* %42, i32* %43) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %44 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %44, i32 0, i32 1
  %45 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Next, align 8, !tbaa !10
  store %struct._cmsOptimizationCollection_st* %45, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._cmsOptimizationCollection_st* getelementptr inbounds ([4 x %struct._cmsOptimizationCollection_st], [4 x %struct._cmsOptimizationCollection_st]* @DefaultOptimization, i32 0, i32 0), %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.27, %for.end
  %46 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %cmp20 = icmp ne %struct._cmsOptimizationCollection_st* %46, null
  br i1 %cmp20, label %for.body.21, label %for.end.29

for.body.21:                                      ; preds = %for.cond.19
  %47 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %OptimizePtr22 = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %47, i32 0, i32 0
  %48 = load i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)*, i32 (%struct._cmsPipeline_struct**, i32, i32*, i32*, i32*)** %OptimizePtr22, align 8, !tbaa !16
  %49 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %PtrLut.addr, align 8, !tbaa !1
  %50 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %51 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %52 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %53 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call23 = call i32 %48(%struct._cmsPipeline_struct** %49, i32 %50, i32* %51, i32* %52, i32* %53) #7
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body.21
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %for.body.21
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %54 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  %Next28 = getelementptr inbounds %struct._cmsOptimizationCollection_st, %struct._cmsOptimizationCollection_st* %54, i32 0, i32 1
  %55 = load %struct._cmsOptimizationCollection_st*, %struct._cmsOptimizationCollection_st** %Next28, align 8, !tbaa !10
  store %struct._cmsOptimizationCollection_st* %55, %struct._cmsOptimizationCollection_st** %Opts, align 8, !tbaa !1
  br label %for.cond.19

for.end.29:                                       ; preds = %for.cond.19
  %56 = load i32, i32* %AnySuccess, align 4, !tbaa !17
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.29, %if.then.25, %if.then.17, %if.then.12, %if.then.8, %if.then.3, %if.then
  %57 = bitcast i32* %AnySuccess to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast %struct._cmsOptimizationCollection_st** %Opts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast %struct._cmsOptimizationPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @PreOptimize(%struct._cmsPipeline_struct* %Lut) #0 {
entry:
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %AnyOpt = alloca i32, align 4
  %Opt = alloca i32, align 4
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %0 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %AnyOpt, align 4, !tbaa !17
  %1 = bitcast i32* %Opt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %Opt, align 4, !tbaa !17
  %2 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call = call i32 @_Remove1Op(%struct._cmsPipeline_struct* %2, i32 1768189472) #7
  %3 = load i32, i32* %Opt, align 4, !tbaa !17
  %or = or i32 %3, %call
  store i32 %or, i32* %Opt, align 4, !tbaa !17
  %4 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call1 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %4, i32 1815246880, i32 2016570400) #7
  %5 = load i32, i32* %Opt, align 4, !tbaa !17
  %or2 = or i32 %5, %call1
  store i32 %or2, i32* %Opt, align 4, !tbaa !17
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call3 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %6, i32 2016570400, i32 1815246880) #7
  %7 = load i32, i32* %Opt, align 4, !tbaa !17
  %or4 = or i32 %7, %call3
  store i32 %or4, i32* %Opt, align 4, !tbaa !17
  %8 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call5 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %8, i32 874525216, i32 840971296) #7
  %9 = load i32, i32* %Opt, align 4, !tbaa !17
  %or6 = or i32 %9, %call5
  store i32 %or6, i32* %Opt, align 4, !tbaa !17
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call7 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %10, i32 840971296, i32 874525216) #7
  %11 = load i32, i32* %Opt, align 4, !tbaa !17
  %or8 = or i32 %11, %call7
  store i32 %or8, i32* %Opt, align 4, !tbaa !17
  %12 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call9 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %12, i32 1681026080, i32 1815241760) #7
  %13 = load i32, i32* %Opt, align 4, !tbaa !17
  %or10 = or i32 %13, %call9
  store i32 %or10, i32* %Opt, align 4, !tbaa !17
  %14 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call11 = call i32 @_Remove2Op(%struct._cmsPipeline_struct* %14, i32 1681029152, i32 2016568352) #7
  %15 = load i32, i32* %Opt, align 4, !tbaa !17
  %or12 = or i32 %15, %call11
  store i32 %or12, i32* %Opt, align 4, !tbaa !17
  %16 = load i32, i32* %Opt, align 4, !tbaa !17
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, i32* %AnyOpt, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %17 = load i32, i32* %Opt, align 4, !tbaa !17
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %AnyOpt, align 4, !tbaa !17
  %19 = bitcast i32* %Opt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @OptimizeByResampling(%struct._cmsPipeline_struct** %Lut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct**, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %Src = alloca %struct._cmsPipeline_struct*, align 8
  %Dest = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %KeepPreLin = alloca %struct._cmsStage_struct*, align 8
  %KeepPostLin = alloca %struct._cmsStage_struct*, align 8
  %nGridPoints = alloca i32, align 4
  %ColorSpace = alloca i32, align 4
  %OutputColorSpace = alloca i32, align 4
  %NewPreLin = alloca %struct._cmsStage_struct*, align 8
  %NewPostLin = alloca %struct._cmsStage_struct*, align 8
  %DataCLUT = alloca %struct._cmsStageCLutData*, align 8
  %DataSetIn = alloca %struct._cms_curve_struct**, align 8
  %DataSetOut = alloca %struct._cms_curve_struct**, align 8
  %p16 = alloca %struct.Prelin16Data*, align 8
  %cleanup.dest.slot = alloca i32
  %PreLin = alloca %struct._cmsStage_struct*, align 8
  %PostLin = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsPipeline_struct** %Lut, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !17
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %1 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %2 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct._cmsStage_struct** %KeepPreLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %KeepPreLin, align 8, !tbaa !1
  %5 = bitcast %struct._cmsStage_struct** %KeepPostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %KeepPostLin, align 8, !tbaa !1
  %6 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %OutputColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast %struct._cmsStage_struct** %NewPreLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %NewPreLin, align 8, !tbaa !1
  %10 = bitcast %struct._cmsStage_struct** %NewPostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %NewPostLin, align 8, !tbaa !1
  %11 = bitcast %struct._cmsStageCLutData** %DataCLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast %struct._cms_curve_struct*** %DataSetIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast %struct._cms_curve_struct*** %DataSetOut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !17
  %call = call i32 @_cmsFormatterIsFloat(i32 %16) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !17
  %call1 = call i32 @_cmsFormatterIsFloat(i32 %18) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end:                                           ; preds = %lor.lhs.false
  %19 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !17
  %shr = lshr i32 %20, 16
  %and = and i32 %shr, 31
  %call3 = call i32 @_cmsICCcolorSpace(i32 %and) #7
  store i32 %call3, i32* %ColorSpace, align 4, !tbaa !20
  %21 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !17
  %shr4 = lshr i32 %22, 16
  %and5 = and i32 %shr4, 31
  %call6 = call i32 @_cmsICCcolorSpace(i32 %and5) #7
  store i32 %call6, i32* %OutputColorSpace, align 4, !tbaa !20
  %23 = load i32, i32* %ColorSpace, align 4, !tbaa !20
  %24 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !17
  %call7 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %23, i32 %25) #7
  store i32 %call7, i32* %nGridPoints, align 4, !tbaa !17
  %26 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  %27 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %26, align 8, !tbaa !1
  %call8 = call i32 @cmsPipelineStageCount(%struct._cmsPipeline_struct* %27) #7
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 2, i32* %nGridPoints, align 4, !tbaa !17
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %28 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  %29 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %28, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %29, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %30 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %call11 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %30) #7
  store %struct._cmsStage_struct* %call11, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %31 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._cmsStage_struct* %31, null
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call13 = call i32 @cmsStageType(%struct._cmsStage_struct* %32) #7
  %cmp14 = icmp eq i32 %call13, 1852009504
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %33 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call17 = call %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct* %33) #7
  store %struct._cmsStage_struct* %call17, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %34, i32 0, i32 8
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %36 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %38 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %38, i32 0, i32 2
  %39 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %call18 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %35, i32 %37, i32 %39) #7
  store %struct._cmsPipeline_struct* %call18, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %40 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %tobool19 = icmp ne %struct._cmsPipeline_struct* %40, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.21:                                        ; preds = %for.end
  %41 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %42 = load i32, i32* %41, align 4, !tbaa !17
  %and22 = and i32 %42, 16
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %if.end.21
  %43 = bitcast %struct._cmsStage_struct** %PreLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %call25 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %44) #7
  store %struct._cmsStage_struct* %call25, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %45 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %45, i32 0, i32 1
  %46 = load i32, i32* %Type, align 4, !tbaa !24
  %cmp26 = icmp eq i32 %46, 1668707188
  br i1 %cmp26, label %if.then.27, label %if.end.37

if.then.27:                                       ; preds = %if.then.24
  %47 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %call28 = call i32 @AllCurvesAreLinear(%struct._cmsStage_struct* %47) #7
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.36, label %if.then.30

if.then.30:                                       ; preds = %if.then.27
  %48 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %call31 = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %48) #7
  store %struct._cmsStage_struct* %call31, %struct._cmsStage_struct** %NewPreLin, align 8, !tbaa !1
  %49 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %50 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPreLin, align 8, !tbaa !1
  %call32 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %49, i32 0, %struct._cmsStage_struct* %50) #7
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.30
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.30
  %51 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineUnlinkStage(%struct._cmsPipeline_struct* %51, i32 0, %struct._cmsStage_struct** %KeepPreLin) #7
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.34, %if.end.37
  %52 = bitcast %struct._cmsStage_struct** %PreLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.124 [
    i32 0, label %cleanup.cont
    i32 5, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.end.21
  %53 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID39 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %53, i32 0, i32 8
  %54 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID39, align 8, !tbaa !21
  %55 = load i32, i32* %nGridPoints, align 4, !tbaa !17
  %56 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels40 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %56, i32 0, i32 1
  %57 = load i32, i32* %InputChannels40, align 4, !tbaa !22
  %58 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %OutputChannels41 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %58, i32 0, i32 2
  %59 = load i32, i32* %OutputChannels41, align 4, !tbaa !23
  %call42 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %54, i32 %55, i32 %57, i32 %59, i16* null) #7
  store %struct._cmsStage_struct* %call42, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %60 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %cmp43 = icmp eq %struct._cmsStage_struct* %60, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.45:                                        ; preds = %if.end.38
  %61 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %62 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %call46 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %61, i32 1, %struct._cmsStage_struct* %62) #7
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.45
  br label %Error

if.end.49:                                        ; preds = %if.end.45
  %63 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %64 = load i32, i32* %63, align 4, !tbaa !17
  %and50 = and i32 %64, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.70

if.then.52:                                       ; preds = %if.end.49
  %65 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #2
  %66 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %call53 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct* %66) #7
  store %struct._cmsStage_struct* %call53, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %67 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %call54 = call i32 @cmsStageType(%struct._cmsStage_struct* %67) #7
  %cmp55 = icmp eq i32 %call54, 1668707188
  br i1 %cmp55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.then.52
  %68 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %call57 = call i32 @AllCurvesAreLinear(%struct._cmsStage_struct* %68) #7
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.65, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  %69 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %call60 = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %69) #7
  store %struct._cmsStage_struct* %call60, %struct._cmsStage_struct** %NewPostLin, align 8, !tbaa !1
  %70 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %71 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPostLin, align 8, !tbaa !1
  %call61 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %70, i32 1, %struct._cmsStage_struct* %71) #7
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.59
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.64:                                        ; preds = %if.then.59
  %72 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineUnlinkStage(%struct._cmsPipeline_struct* %72, i32 1, %struct._cmsStage_struct** %KeepPostLin) #7
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.56
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.then.63, %if.end.66
  %73 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %cleanup.dest.68 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.68, label %cleanup.124 [
    i32 0, label %cleanup.cont.69
    i32 5, label %Error
  ]

cleanup.cont.69:                                  ; preds = %cleanup.67
  br label %if.end.70

if.end.70:                                        ; preds = %cleanup.cont.69, %if.end.49
  %74 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %75 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %76 = bitcast %struct._cmsPipeline_struct* %75 to i8*
  %call71 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %74, i32 (i16*, i16*, i8*)* @XFormSampler16, i8* %76, i32 0) #7
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.88, label %if.then.73

if.then.73:                                       ; preds = %if.end.70
  br label %Error

Error:                                            ; preds = %if.then.73, %cleanup.67, %cleanup, %if.then.48
  %77 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPreLin, align 8, !tbaa !1
  %cmp74 = icmp ne %struct._cmsStage_struct* %77, null
  br i1 %cmp74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %Error
  %78 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %79 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPreLin, align 8, !tbaa !1
  %call76 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %78, i32 0, %struct._cmsStage_struct* %79) #7
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.then.75
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 649, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @__PRETTY_FUNCTION__.OptimizeByResampling, i32 0, i32 0)) #8
  unreachable

if.end.79:                                        ; preds = %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %Error
  %80 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPostLin, align 8, !tbaa !1
  %cmp81 = icmp ne %struct._cmsStage_struct* %80, null
  br i1 %cmp81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.end.80
  %81 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %82 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPostLin, align 8, !tbaa !1
  %call83 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %81, i32 1, %struct._cmsStage_struct* %82) #7
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.82
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @__PRETTY_FUNCTION__.OptimizeByResampling, i32 0, i32 0)) #8
  unreachable

if.end.86:                                        ; preds = %if.then.82
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.80
  %83 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %83) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

if.end.88:                                        ; preds = %if.end.70
  %84 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPreLin, align 8, !tbaa !1
  %cmp89 = icmp ne %struct._cmsStage_struct* %84, null
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %85 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPreLin, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %85) #7
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  %86 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPostLin, align 8, !tbaa !1
  %cmp92 = icmp ne %struct._cmsStage_struct* %86, null
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.91
  %87 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %KeepPostLin, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %87) #7
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.91
  %88 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %88) #7
  %89 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %89, i32 0, i32 8
  %90 = load i8*, i8** %Data, align 8, !tbaa !26
  %91 = bitcast i8* %90 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %91, %struct._cmsStageCLutData** %DataCLUT, align 8, !tbaa !1
  %92 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPreLin, align 8, !tbaa !1
  %cmp95 = icmp eq %struct._cmsStage_struct* %92, null
  br i1 %cmp95, label %if.then.96, label %if.else

if.then.96:                                       ; preds = %if.end.94
  store %struct._cms_curve_struct** null, %struct._cms_curve_struct*** %DataSetIn, align 8, !tbaa !1
  br label %if.end.98

if.else:                                          ; preds = %if.end.94
  %93 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPreLin, align 8, !tbaa !1
  %Data97 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %93, i32 0, i32 8
  %94 = load i8*, i8** %Data97, align 8, !tbaa !26
  %95 = bitcast i8* %94 to %struct._cmsStageToneCurvesData*
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %95, i32 0, i32 1
  %96 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !27
  store %struct._cms_curve_struct** %96, %struct._cms_curve_struct*** %DataSetIn, align 8, !tbaa !1
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.then.96
  %97 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPostLin, align 8, !tbaa !1
  %cmp99 = icmp eq %struct._cmsStage_struct* %97, null
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.end.98
  store %struct._cms_curve_struct** null, %struct._cms_curve_struct*** %DataSetOut, align 8, !tbaa !1
  br label %if.end.104

if.else.101:                                      ; preds = %if.end.98
  %98 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %NewPostLin, align 8, !tbaa !1
  %Data102 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %98, i32 0, i32 8
  %99 = load i8*, i8** %Data102, align 8, !tbaa !26
  %100 = bitcast i8* %99 to %struct._cmsStageToneCurvesData*
  %TheCurves103 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %100, i32 0, i32 1
  %101 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves103, align 8, !tbaa !27
  store %struct._cms_curve_struct** %101, %struct._cms_curve_struct*** %DataSetOut, align 8, !tbaa !1
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %102 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %DataSetIn, align 8, !tbaa !1
  %cmp105 = icmp eq %struct._cms_curve_struct** %102, null
  br i1 %cmp105, label %land.lhs.true, label %if.else.109

land.lhs.true:                                    ; preds = %if.end.104
  %103 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %DataSetOut, align 8, !tbaa !1
  %cmp106 = icmp eq %struct._cms_curve_struct** %103, null
  br i1 %cmp106, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %land.lhs.true
  %104 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %105 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %DataCLUT, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %105, i32 0, i32 1
  %106 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !29
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %106, i32 0, i32 8
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  %107 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  %108 = bitcast void (i16*, i16*, %struct._cms_interp_struc*)* %107 to void (i16*, i16*, i8*)*
  %109 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %DataCLUT, align 8, !tbaa !1
  %Params108 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %109, i32 0, i32 1
  %110 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params108, align 8, !tbaa !29
  %111 = bitcast %struct._cms_interp_struc* %110 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %104, void (i16*, i16*, i8*)* %108, i8* %111, void (%struct._cmsContext_struct*, i8*)* null, i8* (%struct._cmsContext_struct*, i8*)* null) #7
  br label %if.end.115

if.else.109:                                      ; preds = %land.lhs.true, %if.end.104
  %112 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %ContextID110 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %112, i32 0, i32 8
  %113 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID110, align 8, !tbaa !21
  %114 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %DataCLUT, align 8, !tbaa !1
  %Params111 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %114, i32 0, i32 1
  %115 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params111, align 8, !tbaa !29
  %116 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %InputChannels112 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %116, i32 0, i32 1
  %117 = load i32, i32* %InputChannels112, align 4, !tbaa !22
  %118 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %DataSetIn, align 8, !tbaa !1
  %119 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %OutputChannels113 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %119, i32 0, i32 2
  %120 = load i32, i32* %OutputChannels113, align 4, !tbaa !23
  %121 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %DataSetOut, align 8, !tbaa !1
  %call114 = call %struct.Prelin16Data* @PrelinOpt16alloc(%struct._cmsContext_struct* %113, %struct._cms_interp_struc* %115, i32 %117, %struct._cms_curve_struct** %118, i32 %120, %struct._cms_curve_struct** %121) #7
  store %struct.Prelin16Data* %call114, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %122 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %123 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %124 = bitcast %struct.Prelin16Data* %123 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %122, void (i16*, i16*, i8*)* @PrelinEval16, i8* %124, void (%struct._cmsContext_struct*, i8*)* @PrelinOpt16free, i8* (%struct._cmsContext_struct*, i8*)* @Prelin16dup) #7
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.109, %if.then.107
  %125 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %cmp116 = icmp eq i32 %125, 3
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.115
  %126 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %127 = load i32, i32* %126, align 4, !tbaa !17
  %or = or i32 %127, 4
  store i32 %or, i32* %126, align 4, !tbaa !17
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.115
  %128 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %129 = load i32, i32* %128, align 4, !tbaa !17
  %and119 = and i32 %129, 4
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.end.123, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  %130 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %131 = load i32, i32* %ColorSpace, align 4, !tbaa !20
  %132 = load i32, i32* %OutputColorSpace, align 4, !tbaa !20
  %call122 = call i32 @FixWhiteMisalignment(%struct._cmsPipeline_struct* %130, i32 %131, i32 %132) #7
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.end.118
  %133 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %134 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %133, %struct._cmsPipeline_struct** %134, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.124

cleanup.124:                                      ; preds = %if.end.123, %if.end.87, %cleanup.67, %if.then.44, %cleanup, %if.then.20, %if.then.15, %if.then
  %135 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast %struct._cms_curve_struct*** %DataSetOut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast %struct._cms_curve_struct*** %DataSetIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = bitcast %struct._cmsStageCLutData** %DataCLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #2
  %139 = bitcast %struct._cmsStage_struct** %NewPostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast %struct._cmsStage_struct** %NewPreLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  %141 = bitcast i32* %OutputColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast %struct._cmsStage_struct** %KeepPostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast %struct._cmsStage_struct** %KeepPreLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  %150 = load i32, i32* %retval
  ret i32 %150
}

declare void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct*, void (i16*, i16*, i8*)*, i8*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @FastIdentity16(i16* %In, i16* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = zext i32 %7 to i64
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom1 = zext i32 %10 to i64
  %11 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %11, i64 %idxprom1
  store i16 %9, i16* %arrayidx2, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_Remove1Op(%struct._cmsPipeline_struct* %Lut, i32 %UnaryOp) #0 {
entry:
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %UnaryOp.addr = alloca i32, align 4
  %pt = alloca %struct._cmsStage_struct**, align 8
  %AnyOpt = alloca i32, align 4
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store i32 %UnaryOp, i32* %UnaryOp.addr, align 4, !tbaa !20
  %0 = bitcast %struct._cmsStage_struct*** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %1, i32 0, i32 0
  store %struct._cmsStage_struct** %Elements, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  %2 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %AnyOpt, align 4, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %3, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %5, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %Implements, align 4, !tbaa !33
  %8 = load i32, i32* %UnaryOp.addr, align 4, !tbaa !20
  %cmp1 = icmp eq i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  call void @_RemoveElement(%struct._cmsStage_struct** %9) #7
  store i32 1, i32* %AnyOpt, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  %11 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %10, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %11, i32 0, i32 9
  store %struct._cmsStage_struct** %Next, %struct._cmsStage_struct*** %pt, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %AnyOpt, align 4, !tbaa !17
  %13 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct._cmsStage_struct*** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @_Remove2Op(%struct._cmsPipeline_struct* %Lut, i32 %Op1, i32 %Op2) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Op1.addr = alloca i32, align 4
  %Op2.addr = alloca i32, align 4
  %pt1 = alloca %struct._cmsStage_struct**, align 8
  %pt2 = alloca %struct._cmsStage_struct**, align 8
  %AnyOpt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store i32 %Op1, i32* %Op1.addr, align 4, !tbaa !20
  store i32 %Op2, i32* %Op2.addr, align 4, !tbaa !20
  %0 = bitcast %struct._cmsStage_struct*** %pt1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._cmsStage_struct*** %pt2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %AnyOpt, align 4, !tbaa !17
  %3 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %3, i32 0, i32 0
  store %struct._cmsStage_struct** %Elements, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %4 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %4, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsStage_struct* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %AnyOpt, align 4, !tbaa !17
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end
  %7 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %7, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsStage_struct* %8, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %10 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %9, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %10, i32 0, i32 9
  store %struct._cmsStage_struct** %Next, %struct._cmsStage_struct*** %pt2, align 8, !tbaa !1
  %11 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt2, align 8, !tbaa !1
  %12 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %11, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsStage_struct* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %13 = load i32, i32* %AnyOpt, align 4, !tbaa !17
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %while.body
  %14 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %15 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %14, align 8, !tbaa !1
  %Implements = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %15, i32 0, i32 2
  %16 = load i32, i32* %Implements, align 4, !tbaa !33
  %17 = load i32, i32* %Op1.addr, align 4, !tbaa !20
  %cmp5 = icmp eq i32 %16, %17
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.4
  %18 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt2, align 8, !tbaa !1
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %18, align 8, !tbaa !1
  %Implements6 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 2
  %20 = load i32, i32* %Implements6, align 4, !tbaa !33
  %21 = load i32, i32* %Op2.addr, align 4, !tbaa !20
  %cmp7 = icmp eq i32 %20, %21
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %22 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt2, align 8, !tbaa !1
  call void @_RemoveElement(%struct._cmsStage_struct** %22) #7
  %23 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  call void @_RemoveElement(%struct._cmsStage_struct** %23) #7
  store i32 1, i32* %AnyOpt, align 4, !tbaa !17
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %if.end.4
  %24 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  %25 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %24, align 8, !tbaa !1
  %Next9 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %25, i32 0, i32 9
  store %struct._cmsStage_struct** %Next9, %struct._cmsStage_struct*** %pt1, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %AnyOpt, align 4, !tbaa !17
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.3, %if.then
  %27 = bitcast i32* %AnyOpt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct._cmsStage_struct*** %pt2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct._cmsStage_struct*** %pt1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @_RemoveElement(%struct._cmsStage_struct** %head) #0 {
entry:
  %head.addr = alloca %struct._cmsStage_struct**, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %next = alloca %struct._cmsStage_struct*, align 8
  store %struct._cmsStage_struct** %head, %struct._cmsStage_struct*** %head.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %head.addr, align 8, !tbaa !1
  %2 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %1, align 8, !tbaa !1
  store %struct._cmsStage_struct* %2, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %3 = bitcast %struct._cmsStage_struct** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %4, i32 0, i32 9
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Next, align 8, !tbaa !34
  store %struct._cmsStage_struct* %5, %struct._cmsStage_struct** %next, align 8, !tbaa !1
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %next, align 8, !tbaa !1
  %7 = load %struct._cmsStage_struct**, %struct._cmsStage_struct*** %head.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %6, %struct._cmsStage_struct** %7, align 8, !tbaa !1
  %8 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %8) #7
  %9 = bitcast %struct._cmsStage_struct** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

declare void @cmsStageFree(%struct._cmsStage_struct*) #1

declare i32 @_cmsFormatterIsFloat(i32) #1

declare i32 @_cmsICCcolorSpace(i32) #1

declare i32 @_cmsReasonableGridpointsByColorspace(i32, i32) #1

declare i32 @cmsPipelineStageCount(%struct._cmsPipeline_struct*) #1

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct*) #1

declare i32 @cmsStageType(%struct._cmsStage_struct*) #1

declare %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct*) #1

declare %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @AllCurvesAreLinear(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %retval = alloca i32, align 4
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %Curves = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct*** %Curves to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %3) #7
  store %struct._cms_curve_struct** %call, %struct._cms_curve_struct*** %Curves, align 8, !tbaa !1
  %4 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %call1 = call i32 @cmsStageOutputChannels(%struct._cmsStage_struct* %5) #7
  store i32 %call1, i32* %n, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !17
  %7 = load i32, i32* %n, align 4, !tbaa !17
  %cmp2 = icmp ult i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = zext i32 %8 to i64
  %9 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %9, i64 %idxprom
  %10 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %call3 = call i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct* %10) #7
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.4, %if.then
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct._cms_curve_struct*** %Curves to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct*) #1

declare i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct*) #1

declare void @cmsPipelineUnlinkStage(%struct._cmsPipeline_struct*, i32, %struct._cmsStage_struct**) #1

declare %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct*, i32, i32, i32, i16*) #1

declare %struct._cmsStage_struct* @cmsPipelineGetPtrToLastStage(%struct._cmsPipeline_struct*) #1

declare i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct*, i32 (i16*, i16*, i8*)*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @XFormSampler16(i16* %In, i16* %Out, i8* %Cargo) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %Cargo.addr = alloca i8*, align 8
  %Lut = alloca %struct._cmsPipeline_struct*, align 8
  %InFloat = alloca [16 x float], align 16
  %OutFloat = alloca [16 x float], align 16
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %Cargo, i8** %Cargo.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %Cargo.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsPipeline_struct*
  store %struct._cmsPipeline_struct* %2, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %3 = bitcast [16 x float]* %InFloat to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast [16 x float]* %OutFloat to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %cmp = icmp ult i32 %7, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 330, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.XFormSampler16, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %cmp1 = icmp ult i32 %10, 16
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 331, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.XFormSampler16, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %11, %cond.true.2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %InputChannels5 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %InputChannels5, align 4, !tbaa !22
  %cmp6 = icmp ult i32 %12, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = zext i32 %15 to i64
  %16 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %17 to i32
  %conv7 = sitofp i32 %conv to double
  %div = fdiv double %conv7, 6.553500e+04
  %conv8 = fptrunc double %div to float
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %InFloat, i32 0, i64 %idxprom9
  store float %conv8, float* %arrayidx10, align 4, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %InFloat, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %OutFloat, i32 0, i32 0
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  call void @cmsPipelineEvalFloat(float* %arraydecay, float* %arraydecay11, %struct._cmsPipeline_struct* %20) #7
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.22, %for.end
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %22 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !1
  %OutputChannels13 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %22, i32 0, i32 2
  %23 = load i32, i32* %OutputChannels13, align 4, !tbaa !23
  %cmp14 = icmp ult i32 %21, %23
  br i1 %cmp14, label %for.body.16, label %for.end.24

for.body.16:                                      ; preds = %for.cond.12
  %24 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom17 = zext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %OutFloat, i32 0, i64 %idxprom17
  %25 = load float, float* %arrayidx18, align 4, !tbaa !35
  %conv19 = fpext float %25 to double
  %mul = fmul double %conv19, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom20 = zext i32 %26 to i64
  %27 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %27, i64 %idxprom20
  store i16 %call, i16* %arrayidx21, align 2, !tbaa !31
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.16
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %inc23 = add i32 %28, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !17
  br label %for.cond.12

for.end.24:                                       ; preds = %for.cond.12
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast [16 x float]* %OutFloat to i8*
  call void @llvm.lifetime.end(i64 64, i8* %30) #2
  %31 = bitcast [16 x float]* %InFloat to i8*
  call void @llvm.lifetime.end(i64 64, i8* %31) #2
  %32 = bitcast %struct._cmsPipeline_struct** %Lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  ret i32 1
}

declare void @cmsPipelineFree(%struct._cmsPipeline_struct*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Prelin16Data* @PrelinOpt16alloc(%struct._cmsContext_struct* %ContextID, %struct._cms_interp_struc* %ColorMap, i32 %nInputs, %struct._cms_curve_struct** %In, i32 %nOutputs, %struct._cms_curve_struct** %Out) #0 {
entry:
  %retval = alloca %struct.Prelin16Data*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ColorMap.addr = alloca %struct._cms_interp_struc*, align 8
  %nInputs.addr = alloca i32, align 4
  %In.addr = alloca %struct._cms_curve_struct**, align 8
  %nOutputs.addr = alloca i32, align 4
  %Out.addr = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %p16 = alloca %struct.Prelin16Data*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %ColorMap, %struct._cms_interp_struc** %ColorMap.addr, align 8, !tbaa !1
  store i32 %nInputs, i32* %nInputs.addr, align 4, !tbaa !17
  store %struct._cms_curve_struct** %In, %struct._cms_curve_struct*** %In.addr, align 8, !tbaa !1
  store i32 %nOutputs, i32* %nOutputs.addr, align 4, !tbaa !17
  store %struct._cms_curve_struct** %Out, %struct._cms_curve_struct*** %Out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 176) #7
  %3 = bitcast i8* %call to %struct.Prelin16Data*
  store %struct.Prelin16Data* %3, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %4 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %cmp = icmp eq %struct.Prelin16Data* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Prelin16Data* null, %struct.Prelin16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %nInputs.addr, align 4, !tbaa !17
  %6 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nInputs1 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %6, i32 0, i32 1
  store i32 %5, i32* %nInputs1, align 4, !tbaa !37
  %7 = load i32, i32* %nOutputs.addr, align 4, !tbaa !17
  %8 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nOutputs2 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %8, i32 0, i32 2
  store i32 %7, i32* %nOutputs2, align 4, !tbaa !39
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !17
  %10 = load i32, i32* %nInputs.addr, align 4, !tbaa !17
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %In.addr, align 8, !tbaa !1
  %cmp4 = icmp eq %struct._cms_curve_struct** %11, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveIn16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %13, i32 0, i32 4
  %arrayidx = getelementptr inbounds [8 x %struct._cms_interp_struc*], [8 x %struct._cms_interp_struc*]* %ParamsCurveIn16, i32 0, i64 %idxprom
  store %struct._cms_interp_struc* null, %struct._cms_interp_struc** %arrayidx, align 8, !tbaa !1
  %14 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveIn16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %15, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [8 x void (i16*, i16*, %struct._cms_interp_struc*)*], [8 x void (i16*, i16*, %struct._cms_interp_struc*)*]* %EvalCurveIn16, i32 0, i64 %idxprom6
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval16nop1D, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx7, align 8, !tbaa !1
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %In.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %17, i64 %idxprom8
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx9, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %18, i32 0, i32 0
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !40
  %20 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveIn1611 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %21, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [8 x %struct._cms_interp_struc*], [8 x %struct._cms_interp_struc*]* %ParamsCurveIn1611, i32 0, i64 %idxprom10
  store %struct._cms_interp_struc* %19, %struct._cms_interp_struc** %arrayidx12, align 8, !tbaa !1
  %22 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveIn1614 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %23, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [8 x %struct._cms_interp_struc*], [8 x %struct._cms_interp_struc*]* %ParamsCurveIn1614, i32 0, i64 %idxprom13
  %24 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx15, align 8, !tbaa !1
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %24, i32 0, i32 8
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  %25 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveIn1617 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %27, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [8 x void (i16*, i16*, %struct._cms_interp_struc*)*], [8 x void (i16*, i16*, %struct._cms_interp_struc*)*]* %EvalCurveIn1617, i32 0, i64 %idxprom16
  store void (i16*, i16*, %struct._cms_interp_struc*)* %25, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx18, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %ColorMap.addr, align 8, !tbaa !1
  %30 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %CLUTparams = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %30, i32 0, i32 6
  store %struct._cms_interp_struc* %29, %struct._cms_interp_struc** %CLUTparams, align 8, !tbaa !42
  %31 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %ColorMap.addr, align 8, !tbaa !1
  %Interpolation20 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %31, i32 0, i32 8
  %Lerp1621 = bitcast %union.cmsInterpFunction* %Interpolation20 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %32 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1621, align 8, !tbaa !1
  %33 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCLUT = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %33, i32 0, i32 5
  store void (i16*, i16*, %struct._cms_interp_struc*)* %32, void (i16*, i16*, %struct._cms_interp_struc*)** %EvalCLUT, align 8, !tbaa !43
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load i32, i32* %nOutputs.addr, align 4, !tbaa !17
  %call22 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %34, i32 %35, i32 8) #7
  %36 = bitcast i8* %call22 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %37 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %37, i32 0, i32 7
  store void (i16*, i16*, %struct._cms_interp_struc*)** %36, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut16, align 8, !tbaa !44
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %39 = load i32, i32* %nOutputs.addr, align 4, !tbaa !17
  %call23 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %38, i32 %39, i32 8) #7
  %40 = bitcast i8* %call23 to %struct._cms_interp_struc**
  %41 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %41, i32 0, i32 8
  store %struct._cms_interp_struc** %40, %struct._cms_interp_struc*** %ParamsCurveOut16, align 8, !tbaa !45
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.51, %for.end
  %42 = load i32, i32* %i, align 4, !tbaa !17
  %43 = load i32, i32* %nOutputs.addr, align 4, !tbaa !17
  %cmp25 = icmp slt i32 %42, %43
  br i1 %cmp25, label %for.body.26, label %for.end.53

for.body.26:                                      ; preds = %for.cond.24
  %44 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Out.addr, align 8, !tbaa !1
  %cmp27 = icmp eq %struct._cms_curve_struct** %44, null
  br i1 %cmp27, label %if.then.28, label %if.else.35

if.then.28:                                       ; preds = %for.body.26
  %45 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom29 = sext i32 %45 to i64
  %46 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut1630 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %46, i32 0, i32 8
  %47 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut1630, align 8, !tbaa !45
  %arrayidx31 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %47, i64 %idxprom29
  store %struct._cms_interp_struc* null, %struct._cms_interp_struc** %arrayidx31, align 8, !tbaa !1
  %48 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom32 = sext i32 %48 to i64
  %49 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut1633 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %49, i32 0, i32 7
  %50 = load void (i16*, i16*, %struct._cms_interp_struc*)**, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut1633, align 8, !tbaa !44
  %arrayidx34 = getelementptr inbounds void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %50, i64 %idxprom32
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval16nop1D, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx34, align 8, !tbaa !1
  br label %if.end.50

if.else.35:                                       ; preds = %for.body.26
  %51 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom36 = sext i32 %51 to i64
  %52 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Out.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %52, i64 %idxprom36
  %53 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx37, align 8, !tbaa !1
  %InterpParams38 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %53, i32 0, i32 0
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams38, align 8, !tbaa !40
  %55 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom39 = sext i32 %55 to i64
  %56 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut1640 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %56, i32 0, i32 8
  %57 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut1640, align 8, !tbaa !45
  %arrayidx41 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %57, i64 %idxprom39
  store %struct._cms_interp_struc* %54, %struct._cms_interp_struc** %arrayidx41, align 8, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom42 = sext i32 %58 to i64
  %59 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut1643 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %59, i32 0, i32 8
  %60 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut1643, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %60, i64 %idxprom42
  %61 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx44, align 8, !tbaa !1
  %Interpolation45 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %61, i32 0, i32 8
  %Lerp1646 = bitcast %union.cmsInterpFunction* %Interpolation45 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %62 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1646, align 8, !tbaa !1
  %63 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom47 = sext i32 %63 to i64
  %64 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut1648 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %64, i32 0, i32 7
  %65 = load void (i16*, i16*, %struct._cms_interp_struc*)**, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut1648, align 8, !tbaa !44
  %arrayidx49 = getelementptr inbounds void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %65, i64 %idxprom47
  store void (i16*, i16*, %struct._cms_interp_struc*)* %62, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx49, align 8, !tbaa !1
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.35, %if.then.28
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %66 = load i32, i32* %i, align 4, !tbaa !17
  %inc52 = add nsw i32 %66, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !17
  br label %for.cond.24

for.end.53:                                       ; preds = %for.cond.24
  %67 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  store %struct.Prelin16Data* %67, %struct.Prelin16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.53, %if.then
  %68 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = load %struct.Prelin16Data*, %struct.Prelin16Data** %retval
  ret %struct.Prelin16Data* %70
}

; Function Attrs: nounwind uwtable
define internal void @PrelinEval16(i16* %Input, i16* %Output, i8* %D) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %p16 = alloca %struct.Prelin16Data*, align 8
  %StageABC = alloca [8 x i16], align 16
  %StageDEF = alloca [16 x i16], align 16
  %i = alloca i32, align 4
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Prelin16Data*
  store %struct.Prelin16Data* %2, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %3 = bitcast [8 x i16]* %StageABC to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast [16 x i16]* %StageDEF to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !17
  %7 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nInputs = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %7, i32 0, i32 1
  %8 = load i32, i32* %nInputs, align 4, !tbaa !37
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveIn16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [8 x void (i16*, i16*, %struct._cms_interp_struc*)*], [8 x void (i16*, i16*, %struct._cms_interp_struc*)*]* %EvalCurveIn16, i32 0, i64 %idxprom
  %11 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx, align 8, !tbaa !1
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom1 = sext i32 %12 to i64
  %13 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %13, i64 %idxprom1
  %14 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds [8 x i16], [8 x i16]* %StageABC, i32 0, i64 %idxprom3
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveIn16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %16, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [8 x %struct._cms_interp_struc*], [8 x %struct._cms_interp_struc*]* %ParamsCurveIn16, i32 0, i64 %idxprom5
  %17 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx6, align 8, !tbaa !1
  call void %11(i16* %arrayidx2, i16* %arrayidx4, %struct._cms_interp_struc* %17) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCLUT = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %19, i32 0, i32 5
  %20 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %EvalCLUT, align 8, !tbaa !43
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %StageABC, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [16 x i16], [16 x i16]* %StageDEF, i32 0, i32 0
  %21 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %CLUTparams = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %21, i32 0, i32 6
  %22 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %CLUTparams, align 8, !tbaa !42
  call void %20(i16* %arraydecay, i16* %arraydecay7, %struct._cms_interp_struc* %22) #7
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.19, %for.end
  %23 = load i32, i32* %i, align 4, !tbaa !17
  %24 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %24, i32 0, i32 2
  %25 = load i32, i32* %nOutputs, align 4, !tbaa !39
  %cmp9 = icmp slt i32 %23, %25
  br i1 %cmp9, label %for.body.10, label %for.end.21

for.body.10:                                      ; preds = %for.cond.8
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %27, i32 0, i32 7
  %28 = load void (i16*, i16*, %struct._cms_interp_struc*)**, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut16, align 8, !tbaa !44
  %arrayidx12 = getelementptr inbounds void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %28, i64 %idxprom11
  %29 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %arrayidx12, align 8, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom13 = sext i32 %30 to i64
  %arrayidx14 = getelementptr inbounds [16 x i16], [16 x i16]* %StageDEF, i32 0, i64 %idxprom13
  %31 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom15 = sext i32 %31 to i64
  %32 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %32, i64 %idxprom15
  %33 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %34, i32 0, i32 8
  %35 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut16, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %35, i64 %idxprom17
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx18, align 8, !tbaa !1
  call void %29(i16* %arrayidx14, i16* %arrayidx16, %struct._cms_interp_struc* %36) #7
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.10
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %inc20 = add nsw i32 %37, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !17
  br label %for.cond.8

for.end.21:                                       ; preds = %for.cond.8
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast [16 x i16]* %StageDEF to i8*
  call void @llvm.lifetime.end(i64 32, i8* %39) #2
  %40 = bitcast [8 x i16]* %StageABC to i8*
  call void @llvm.lifetime.end(i64 16, i8* %40) #2
  %41 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PrelinOpt16free(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %p16 = alloca %struct.Prelin16Data*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Prelin16Data*
  store %struct.Prelin16Data* %2, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %4 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %4, i32 0, i32 7
  %5 = load void (i16*, i16*, %struct._cms_interp_struc*)**, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut16, align 8, !tbaa !44
  %6 = bitcast void (i16*, i16*, %struct._cms_interp_struc*)** %5 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %3, i8* %6) #7
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %8, i32 0, i32 8
  %9 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut16, align 8, !tbaa !45
  %10 = bitcast %struct._cms_interp_struc** %9 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %7, i8* %10) #7
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %12 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %13 = bitcast %struct.Prelin16Data* %12 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %11, i8* %13) #7
  %14 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @Prelin16dup(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %p16 = alloca %struct.Prelin16Data*, align 8
  %Duped = alloca %struct.Prelin16Data*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Prelin16Data*
  store %struct.Prelin16Data* %2, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %3 = bitcast %struct.Prelin16Data** %Duped to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %6 = bitcast %struct.Prelin16Data* %5 to i8*
  %call = call i8* @_cmsDupMem(%struct._cmsContext_struct* %4, i8* %6, i32 176) #7
  %7 = bitcast i8* %call to %struct.Prelin16Data*
  store %struct.Prelin16Data* %7, %struct.Prelin16Data** %Duped, align 8, !tbaa !1
  %8 = load %struct.Prelin16Data*, %struct.Prelin16Data** %Duped, align 8, !tbaa !1
  %cmp = icmp eq %struct.Prelin16Data* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %EvalCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %10, i32 0, i32 7
  %11 = load void (i16*, i16*, %struct._cms_interp_struc*)**, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut16, align 8, !tbaa !44
  %12 = bitcast void (i16*, i16*, %struct._cms_interp_struc*)** %11 to i8*
  %13 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %13, i32 0, i32 2
  %14 = load i32, i32* %nOutputs, align 4, !tbaa !39
  %conv = sext i32 %14 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %9, i8* %12, i32 %conv1) #7
  %15 = bitcast i8* %call2 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %16 = load %struct.Prelin16Data*, %struct.Prelin16Data** %Duped, align 8, !tbaa !1
  %EvalCurveOut163 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %16, i32 0, i32 7
  store void (i16*, i16*, %struct._cms_interp_struc*)** %15, void (i16*, i16*, %struct._cms_interp_struc*)*** %EvalCurveOut163, align 8, !tbaa !44
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %ParamsCurveOut16 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %18, i32 0, i32 8
  %19 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %ParamsCurveOut16, align 8, !tbaa !45
  %20 = bitcast %struct._cms_interp_struc** %19 to i8*
  %21 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %nOutputs4 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %21, i32 0, i32 2
  %22 = load i32, i32* %nOutputs4, align 4, !tbaa !39
  %conv5 = sext i32 %22 to i64
  %mul6 = mul i64 %conv5, 8
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %17, i8* %20, i32 %conv7) #7
  %23 = bitcast i8* %call8 to %struct._cms_interp_struc**
  %24 = load %struct.Prelin16Data*, %struct.Prelin16Data** %Duped, align 8, !tbaa !1
  %ParamsCurveOut169 = getelementptr inbounds %struct.Prelin16Data, %struct.Prelin16Data* %24, i32 0, i32 8
  store %struct._cms_interp_struc** %23, %struct._cms_interp_struc*** %ParamsCurveOut169, align 8, !tbaa !45
  %25 = load %struct.Prelin16Data*, %struct.Prelin16Data** %Duped, align 8, !tbaa !1
  %26 = bitcast %struct.Prelin16Data* %25 to i8*
  store i8* %26, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast %struct.Prelin16Data** %Duped to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define internal i32 @FixWhiteMisalignment(%struct._cmsPipeline_struct* %Lut, i32 %EntryColorSpace, i32 %ExitColorSpace) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct*, align 8
  %EntryColorSpace.addr = alloca i32, align 4
  %ExitColorSpace.addr = alloca i32, align 4
  %WhitePointIn = alloca i16*, align 8
  %WhitePointOut = alloca i16*, align 8
  %WhiteIn = alloca [16 x i16], align 16
  %WhiteOut = alloca [16 x i16], align 16
  %ObtainedOut = alloca [16 x i16], align 16
  %i = alloca i32, align 4
  %nOuts = alloca i32, align 4
  %nIns = alloca i32, align 4
  %PreLin = alloca %struct._cmsStage_struct*, align 8
  %CLUT = alloca %struct._cmsStage_struct*, align 8
  %PostLin = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %Curves = alloca %struct._cms_curve_struct**, align 8
  %Curves53 = alloca %struct._cms_curve_struct**, align 8
  %InversePostLin = alloca %struct._cms_curve_struct*, align 8
  store %struct._cmsPipeline_struct* %Lut, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  store i32 %EntryColorSpace, i32* %EntryColorSpace.addr, align 4, !tbaa !20
  store i32 %ExitColorSpace, i32* %ExitColorSpace.addr, align 4, !tbaa !20
  %0 = bitcast i16** %WhitePointIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16** %WhitePointOut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast [16 x i16]* %WhiteIn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #2
  %3 = bitcast [16 x i16]* %WhiteOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #2
  %4 = bitcast [16 x i16]* %ObtainedOut to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %nOuts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %nIns to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct._cmsStage_struct** %PreLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %9 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %10 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %11 = load i32, i32* %EntryColorSpace.addr, align 4, !tbaa !20
  %call = call i32 @_cmsEndPointsBySpace(i32 %11, i16** %WhitePointIn, i16** null, i32* %nIns) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i32, i32* %ExitColorSpace.addr, align 4, !tbaa !20
  %call1 = call i32 @_cmsEndPointsBySpace(i32 %12, i16** %WhitePointOut, i16** null, i32* %nOuts) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %15 = load i32, i32* %nIns, align 4, !tbaa !17
  %cmp = icmp ne i32 %14, %15
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.4
  %16 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %18 = load i32, i32* %nOuts, align 4, !tbaa !17
  %cmp7 = icmp ne i32 %17, %18
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %19 = load i16*, i16** %WhitePointIn, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [16 x i16], [16 x i16]* %ObtainedOut, i32 0, i32 0
  %20 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  call void @cmsPipelineEval16(i16* %19, i16* %arraydecay, %struct._cmsPipeline_struct* %20) #7
  %21 = load i32, i32* %nOuts, align 4, !tbaa !17
  %22 = load i16*, i16** %WhitePointOut, align 8, !tbaa !1
  %arraydecay10 = getelementptr inbounds [16 x i16], [16 x i16]* %ObtainedOut, i32 0, i32 0
  %call11 = call i32 @WhitesAreEqual(i32 %21, i16* %22, i16* %arraydecay10) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %23, i32 3, i32 1668707188, i32 1668052340, i32 1668707188, %struct._cmsStage_struct** %PreLin, %struct._cmsStage_struct** %CLUT, %struct._cmsStage_struct** %PostLin) #7
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.30, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %24 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call18 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %24, i32 2, i32 1668707188, i32 1668052340, %struct._cmsStage_struct** %PreLin, %struct._cmsStage_struct** %CLUT) #7
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.29, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call21 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %25, i32 2, i32 1668052340, i32 1668707188, %struct._cmsStage_struct** %CLUT, %struct._cmsStage_struct** %PostLin) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %if.then.20
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut.addr, align 8, !tbaa !1
  %call24 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %26, i32 1, i32 1668052340, %struct._cmsStage_struct** %CLUT) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.14
  %27 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %tobool31 = icmp ne %struct._cmsStage_struct* %27, null
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.30
  %28 = bitcast %struct._cms_curve_struct*** %Curves to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PreLin, align 8, !tbaa !1
  %call33 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %29) #7
  store %struct._cms_curve_struct** %call33, %struct._cms_curve_struct*** %Curves, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %30 = load i32, i32* %i, align 4, !tbaa !17
  %31 = load i32, i32* %nIns, align 4, !tbaa !17
  %cmp34 = icmp ult i32 %30, %31
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = zext i32 %32 to i64
  %33 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %33, i64 %idxprom
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %35 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom35 = zext i32 %35 to i64
  %36 = load i16*, i16** %WhitePointIn, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %36, i64 %idxprom35
  %37 = load i16, i16* %arrayidx36, align 2, !tbaa !31
  %call37 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %34, i16 zeroext %37) #7
  %38 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom38 = zext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteIn, i32 0, i64 %idxprom38
  store i16 %call37, i16* %arrayidx39, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = bitcast %struct._cms_curve_struct*** %Curves to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  br label %if.end.50

if.else:                                          ; preds = %if.end.30
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %if.else
  %41 = load i32, i32* %i, align 4, !tbaa !17
  %42 = load i32, i32* %nIns, align 4, !tbaa !17
  %cmp41 = icmp ult i32 %41, %42
  br i1 %cmp41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom43 = zext i32 %43 to i64
  %44 = load i16*, i16** %WhitePointIn, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %44, i64 %idxprom43
  %45 = load i16, i16* %arrayidx44, align 2, !tbaa !31
  %46 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom45 = zext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteIn, i32 0, i64 %idxprom45
  store i16 %45, i16* %arrayidx46, align 2, !tbaa !31
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.42
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %inc48 = add i32 %47, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !17
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  %48 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %tobool51 = icmp ne %struct._cmsStage_struct* %48, null
  br i1 %tobool51, label %if.then.52, label %if.else.77

if.then.52:                                       ; preds = %if.end.50
  %49 = bitcast %struct._cms_curve_struct*** %Curves53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %PostLin, align 8, !tbaa !1
  %call54 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %50) #7
  store %struct._cms_curve_struct** %call54, %struct._cms_curve_struct*** %Curves53, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.74, %if.then.52
  %51 = load i32, i32* %i, align 4, !tbaa !17
  %52 = load i32, i32* %nOuts, align 4, !tbaa !17
  %cmp56 = icmp ult i32 %51, %52
  br i1 %cmp56, label %for.body.57, label %for.end.76

for.body.57:                                      ; preds = %for.cond.55
  %53 = bitcast %struct._cms_curve_struct** %InversePostLin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom58 = zext i32 %54 to i64
  %55 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curves53, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %55, i64 %idxprom58
  %56 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx59, align 8, !tbaa !1
  %call60 = call %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %56) #7
  store %struct._cms_curve_struct* %call60, %struct._cms_curve_struct** %InversePostLin, align 8, !tbaa !1
  %57 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InversePostLin, align 8, !tbaa !1
  %cmp61 = icmp eq %struct._cms_curve_struct* %57, null
  br i1 %cmp61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %for.body.57
  %58 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom63 = zext i32 %58 to i64
  %59 = load i16*, i16** %WhitePointOut, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %59, i64 %idxprom63
  %60 = load i16, i16* %arrayidx64, align 2, !tbaa !31
  %61 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom65 = zext i32 %61 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteOut, i32 0, i64 %idxprom65
  store i16 %60, i16* %arrayidx66, align 2, !tbaa !31
  br label %if.end.73

if.else.67:                                       ; preds = %for.body.57
  %62 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InversePostLin, align 8, !tbaa !1
  %63 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom68 = zext i32 %63 to i64
  %64 = load i16*, i16** %WhitePointOut, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i16, i16* %64, i64 %idxprom68
  %65 = load i16, i16* %arrayidx69, align 2, !tbaa !31
  %call70 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %62, i16 zeroext %65) #7
  %66 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom71 = zext i32 %66 to i64
  %arrayidx72 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteOut, i32 0, i64 %idxprom71
  store i16 %call70, i16* %arrayidx72, align 2, !tbaa !31
  %67 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InversePostLin, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %67) #7
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.67, %if.then.62
  %68 = bitcast %struct._cms_curve_struct** %InversePostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %69 = load i32, i32* %i, align 4, !tbaa !17
  %inc75 = add i32 %69, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !17
  br label %for.cond.55

for.end.76:                                       ; preds = %for.cond.55
  %70 = bitcast %struct._cms_curve_struct*** %Curves53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  br label %if.end.88

if.else.77:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.85, %if.else.77
  %71 = load i32, i32* %i, align 4, !tbaa !17
  %72 = load i32, i32* %nOuts, align 4, !tbaa !17
  %cmp79 = icmp ult i32 %71, %72
  br i1 %cmp79, label %for.body.80, label %for.end.87

for.body.80:                                      ; preds = %for.cond.78
  %73 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom81 = zext i32 %73 to i64
  %74 = load i16*, i16** %WhitePointOut, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %74, i64 %idxprom81
  %75 = load i16, i16* %arrayidx82, align 2, !tbaa !31
  %76 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom83 = zext i32 %76 to i64
  %arrayidx84 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteOut, i32 0, i64 %idxprom83
  store i16 %75, i16* %arrayidx84, align 2, !tbaa !31
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.80
  %77 = load i32, i32* %i, align 4, !tbaa !17
  %inc86 = add i32 %77, 1
  store i32 %inc86, i32* %i, align 4, !tbaa !17
  br label %for.cond.78

for.end.87:                                       ; preds = %for.cond.78
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %for.end.76
  %78 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT, align 8, !tbaa !1
  %arraydecay89 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteIn, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [16 x i16], [16 x i16]* %WhiteOut, i32 0, i32 0
  %79 = load i32, i32* %nOuts, align 4, !tbaa !17
  %80 = load i32, i32* %nIns, align 4, !tbaa !17
  %call91 = call i32 @PatchLUT(%struct._cmsStage_struct* %78, i16* %arraydecay89, i16* %arraydecay90, i32 %79, i32 %80) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.88, %if.then.26, %if.then.13, %if.then.8, %if.then.5, %if.then.3, %if.then
  %81 = bitcast %struct._cmsStage_struct** %PostLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  %82 = bitcast %struct._cmsStage_struct** %CLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast %struct._cmsStage_struct** %PreLin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i32* %nIns to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %nOuts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast [16 x i16]* %ObtainedOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %87) #2
  %88 = bitcast [16 x i16]* %WhiteOut to i8*
  call void @llvm.lifetime.end(i64 32, i8* %88) #2
  %89 = bitcast [16 x i16]* %WhiteIn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %89) #2
  %90 = bitcast i16** %WhitePointOut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i16** %WhitePointIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct*) #1

declare i32 @cmsStageOutputChannels(%struct._cmsStage_struct*) #1

declare i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct*) #1

declare void @cmsPipelineEvalFloat(float*, float*, %struct._cmsPipeline_struct*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #4 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !46
  %0 = load double, double* %d.addr, align 8, !tbaa !46
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !46
  %1 = load double, double* %d.addr, align 8, !tbaa !46
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !46
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !46
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #7
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
  store double %d, double* %d.addr, align 8, !tbaa !46
  %0 = load double, double* %d.addr, align 8, !tbaa !46
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #7
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
  store double %val, double* %val.addr, align 8, !tbaa !46
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !46
  %1 = bitcast %union.anon.0* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load double, double* %val.addr, align 8, !tbaa !46
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon.0* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !46
  %halves = bitcast %union.anon.0* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !17
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon.0* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 %shr
}

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @Eval16nop1D(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %2 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  store i16 %1, i16* %arrayidx1, align 2, !tbaa !31
  %3 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  ret void
}

declare i8* @_cmsCalloc(%struct._cmsContext_struct*, i32, i32) #1

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #1

declare i8* @_cmsDupMem(%struct._cmsContext_struct*, i8*, i32) #1

declare i32 @_cmsEndPointsBySpace(i32, i16**, i16**, i32*) #1

declare void @cmsPipelineEval16(i16*, i16*, %struct._cmsPipeline_struct*) #1

; Function Attrs: nounwind uwtable
define internal i32 @WhitesAreEqual(i32 %n, i16* %White1, i16* %White2) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %White1.addr = alloca i16*, align 8
  %White2.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %n, i32* %n.addr, align 4, !tbaa !17
  store i16* %White1, i16** %White1.addr, align 8, !tbaa !1
  store i16* %White2, i16** %White2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !17
  %2 = load i32, i32* %n.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** %White1.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %5 to i32
  %6 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom1 = sext i32 %6 to i64
  %7 = load i16*, i16** %White2.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 %idxprom1
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !31
  %conv3 = zext i16 %8 to i32
  %sub = sub nsw i32 %conv, %conv3
  %call = call i32 @abs(i32 %sub) #9
  %cmp4 = icmp sgt i32 %call, 61440
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %9 to i64
  %10 = load i16*, i16** %White1.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %10, i64 %idxprom6
  %11 = load i16, i16* %arrayidx7, align 2, !tbaa !31
  %conv8 = zext i16 %11 to i32
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom9 = sext i32 %12 to i64
  %13 = load i16*, i16** %White2.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  %14 = load i16, i16* %arrayidx10, align 2, !tbaa !31
  %conv11 = zext i16 %14 to i32
  %cmp12 = icmp ne i32 %conv8, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.14, %if.then
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct*, i32, ...) #1

declare zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct*, i16 zeroext) #1

declare %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct*) #1

declare void @cmsFreeToneCurve(%struct._cms_curve_struct*) #1

; Function Attrs: nounwind uwtable
define internal i32 @PatchLUT(%struct._cmsStage_struct* %CLUT, i16* %At, i16* %Value, i32 %nChannelsOut, i32 %nChannelsIn) #0 {
entry:
  %retval = alloca i32, align 4
  %CLUT.addr = alloca %struct._cmsStage_struct*, align 8
  %At.addr = alloca i16*, align 8
  %Value.addr = alloca i16*, align 8
  %nChannelsOut.addr = alloca i32, align 4
  %nChannelsIn.addr = alloca i32, align 4
  %Grid = alloca %struct._cmsStageCLutData*, align 8
  %p16 = alloca %struct._cms_interp_struc*, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %pz = alloca double, align 8
  %pw = alloca double, align 8
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %w0 = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsStage_struct* %CLUT, %struct._cmsStage_struct** %CLUT.addr, align 8, !tbaa !1
  store i16* %At, i16** %At.addr, align 8, !tbaa !1
  store i16* %Value, i16** %Value.addr, align 8, !tbaa !1
  store i32 %nChannelsOut, i32* %nChannelsOut.addr, align 4, !tbaa !17
  store i32 %nChannelsIn, i32* %nChannelsIn.addr, align 4, !tbaa !17
  %0 = bitcast %struct._cmsStageCLutData** %Grid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data, align 8, !tbaa !26
  %3 = bitcast i8* %2 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %3, %struct._cmsStageCLutData** %Grid, align 8, !tbaa !1
  %4 = bitcast %struct._cms_interp_struc** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Grid, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %5, i32 0, i32 1
  %6 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !29
  store %struct._cms_interp_struc* %6, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %7 = bitcast double* %px to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast double* %py to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast double* %pz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast double* %pw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT.addr, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %Type, align 4, !tbaa !24
  %cmp = icmp ne i32 %18, 1668052340
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !48
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %20, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load i32, i32* %nChannelsIn.addr, align 4, !tbaa !17
  %cmp1 = icmp eq i32 %21, 4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %22 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 0
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = uitofp i16 %23 to double
  %24 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %24, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %25 = load i32, i32* %arrayidx3, align 4, !tbaa !17
  %conv4 = uitofp i32 %25 to double
  %mul = fmul double %conv, %conv4
  %div = fdiv double %mul, 6.553500e+04
  store double %div, double* %px, align 8, !tbaa !46
  %26 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %26, i64 1
  %27 = load i16, i16* %arrayidx5, align 2, !tbaa !31
  %conv6 = uitofp i16 %27 to double
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain7 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %28, i32 0, i32 5
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain7, i32 0, i64 1
  %29 = load i32, i32* %arrayidx8, align 4, !tbaa !17
  %conv9 = uitofp i32 %29 to double
  %mul10 = fmul double %conv6, %conv9
  %div11 = fdiv double %mul10, 6.553500e+04
  store double %div11, double* %py, align 8, !tbaa !46
  %30 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %30, i64 2
  %31 = load i16, i16* %arrayidx12, align 2, !tbaa !31
  %conv13 = uitofp i16 %31 to double
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 2
  %33 = load i32, i32* %arrayidx15, align 4, !tbaa !17
  %conv16 = uitofp i32 %33 to double
  %mul17 = fmul double %conv13, %conv16
  %div18 = fdiv double %mul17, 6.553500e+04
  store double %div18, double* %pz, align 8, !tbaa !46
  %34 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %34, i64 3
  %35 = load i16, i16* %arrayidx19, align 2, !tbaa !31
  %conv20 = uitofp i16 %35 to double
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 5
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain21, i32 0, i64 3
  %37 = load i32, i32* %arrayidx22, align 4, !tbaa !17
  %conv23 = uitofp i32 %37 to double
  %mul24 = fmul double %conv20, %conv23
  %div25 = fdiv double %mul24, 6.553500e+04
  store double %div25, double* %pw, align 8, !tbaa !46
  %38 = load double, double* %px, align 8, !tbaa !46
  %call = call double @floor(double %38) #9
  %conv26 = fptosi double %call to i32
  store i32 %conv26, i32* %x0, align 4, !tbaa !17
  %39 = load double, double* %py, align 8, !tbaa !46
  %call27 = call double @floor(double %39) #9
  %conv28 = fptosi double %call27 to i32
  store i32 %conv28, i32* %y0, align 4, !tbaa !17
  %40 = load double, double* %pz, align 8, !tbaa !46
  %call29 = call double @floor(double %40) #9
  %conv30 = fptosi double %call29 to i32
  store i32 %conv30, i32* %z0, align 4, !tbaa !17
  %41 = load double, double* %pw, align 8, !tbaa !46
  %call31 = call double @floor(double %41) #9
  %conv32 = fptosi double %call31 to i32
  store i32 %conv32, i32* %w0, align 4, !tbaa !17
  %42 = load double, double* %px, align 8, !tbaa !46
  %43 = load i32, i32* %x0, align 4, !tbaa !17
  %conv33 = sitofp i32 %43 to double
  %sub = fsub double %42, %conv33
  %cmp34 = fcmp une double %sub, 0.000000e+00
  br i1 %cmp34, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %44 = load double, double* %py, align 8, !tbaa !46
  %45 = load i32, i32* %y0, align 4, !tbaa !17
  %conv36 = sitofp i32 %45 to double
  %sub37 = fsub double %44, %conv36
  %cmp38 = fcmp une double %sub37, 0.000000e+00
  br i1 %cmp38, label %if.then.50, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %46 = load double, double* %pz, align 8, !tbaa !46
  %47 = load i32, i32* %z0, align 4, !tbaa !17
  %conv41 = sitofp i32 %47 to double
  %sub42 = fsub double %46, %conv41
  %cmp43 = fcmp une double %sub42, 0.000000e+00
  br i1 %cmp43, label %if.then.50, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %48 = load double, double* %pw, align 8, !tbaa !46
  %49 = load i32, i32* %w0, align 4, !tbaa !17
  %conv46 = sitofp i32 %49 to double
  %sub47 = fsub double %48, %conv46
  %cmp48 = fcmp une double %sub47, 0.000000e+00
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false.40, %lor.lhs.false, %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %lor.lhs.false.45
  %50 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %50, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 3
  %51 = load i32, i32* %arrayidx52, align 4, !tbaa !17
  %52 = load i32, i32* %x0, align 4, !tbaa !17
  %mul53 = mul i32 %51, %52
  %53 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta54 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %53, i32 0, i32 6
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %opta54, i32 0, i64 2
  %54 = load i32, i32* %arrayidx55, align 4, !tbaa !17
  %55 = load i32, i32* %y0, align 4, !tbaa !17
  %mul56 = mul i32 %54, %55
  %add = add i32 %mul53, %mul56
  %56 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta57 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %56, i32 0, i32 6
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* %opta57, i32 0, i64 1
  %57 = load i32, i32* %arrayidx58, align 4, !tbaa !17
  %58 = load i32, i32* %z0, align 4, !tbaa !17
  %mul59 = mul i32 %57, %58
  %add60 = add i32 %add, %mul59
  %59 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta61 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %59, i32 0, i32 6
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %opta61, i32 0, i64 0
  %60 = load i32, i32* %arrayidx62, align 4, !tbaa !17
  %61 = load i32, i32* %w0, align 4, !tbaa !17
  %mul63 = mul i32 %60, %61
  %add64 = add i32 %add60, %mul63
  store i32 %add64, i32* %index, align 4, !tbaa !17
  br label %if.end.148

if.else:                                          ; preds = %if.end
  %62 = load i32, i32* %nChannelsIn.addr, align 4, !tbaa !17
  %cmp65 = icmp eq i32 %62, 3
  br i1 %cmp65, label %if.then.67, label %if.else.122

if.then.67:                                       ; preds = %if.else
  %63 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i16, i16* %63, i64 0
  %64 = load i16, i16* %arrayidx68, align 2, !tbaa !31
  %conv69 = uitofp i16 %64 to double
  %65 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain70 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %65, i32 0, i32 5
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain70, i32 0, i64 0
  %66 = load i32, i32* %arrayidx71, align 4, !tbaa !17
  %conv72 = uitofp i32 %66 to double
  %mul73 = fmul double %conv69, %conv72
  %div74 = fdiv double %mul73, 6.553500e+04
  store double %div74, double* %px, align 8, !tbaa !46
  %67 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %67, i64 1
  %68 = load i16, i16* %arrayidx75, align 2, !tbaa !31
  %conv76 = uitofp i16 %68 to double
  %69 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain77 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %69, i32 0, i32 5
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain77, i32 0, i64 1
  %70 = load i32, i32* %arrayidx78, align 4, !tbaa !17
  %conv79 = uitofp i32 %70 to double
  %mul80 = fmul double %conv76, %conv79
  %div81 = fdiv double %mul80, 6.553500e+04
  store double %div81, double* %py, align 8, !tbaa !46
  %71 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %71, i64 2
  %72 = load i16, i16* %arrayidx82, align 2, !tbaa !31
  %conv83 = uitofp i16 %72 to double
  %73 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain84 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %73, i32 0, i32 5
  %arrayidx85 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain84, i32 0, i64 2
  %74 = load i32, i32* %arrayidx85, align 4, !tbaa !17
  %conv86 = uitofp i32 %74 to double
  %mul87 = fmul double %conv83, %conv86
  %div88 = fdiv double %mul87, 6.553500e+04
  store double %div88, double* %pz, align 8, !tbaa !46
  %75 = load double, double* %px, align 8, !tbaa !46
  %call89 = call double @floor(double %75) #9
  %conv90 = fptosi double %call89 to i32
  store i32 %conv90, i32* %x0, align 4, !tbaa !17
  %76 = load double, double* %py, align 8, !tbaa !46
  %call91 = call double @floor(double %76) #9
  %conv92 = fptosi double %call91 to i32
  store i32 %conv92, i32* %y0, align 4, !tbaa !17
  %77 = load double, double* %pz, align 8, !tbaa !46
  %call93 = call double @floor(double %77) #9
  %conv94 = fptosi double %call93 to i32
  store i32 %conv94, i32* %z0, align 4, !tbaa !17
  %78 = load double, double* %px, align 8, !tbaa !46
  %79 = load i32, i32* %x0, align 4, !tbaa !17
  %conv95 = sitofp i32 %79 to double
  %sub96 = fsub double %78, %conv95
  %cmp97 = fcmp une double %sub96, 0.000000e+00
  br i1 %cmp97, label %if.then.109, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.then.67
  %80 = load double, double* %py, align 8, !tbaa !46
  %81 = load i32, i32* %y0, align 4, !tbaa !17
  %conv100 = sitofp i32 %81 to double
  %sub101 = fsub double %80, %conv100
  %cmp102 = fcmp une double %sub101, 0.000000e+00
  br i1 %cmp102, label %if.then.109, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.99
  %82 = load double, double* %pz, align 8, !tbaa !46
  %83 = load i32, i32* %z0, align 4, !tbaa !17
  %conv105 = sitofp i32 %83 to double
  %sub106 = fsub double %82, %conv105
  %cmp107 = fcmp une double %sub106, 0.000000e+00
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false.99, %if.then.67
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.110:                                       ; preds = %lor.lhs.false.104
  %84 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta111 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %84, i32 0, i32 6
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %opta111, i32 0, i64 2
  %85 = load i32, i32* %arrayidx112, align 4, !tbaa !17
  %86 = load i32, i32* %x0, align 4, !tbaa !17
  %mul113 = mul i32 %85, %86
  %87 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta114 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %87, i32 0, i32 6
  %arrayidx115 = getelementptr inbounds [8 x i32], [8 x i32]* %opta114, i32 0, i64 1
  %88 = load i32, i32* %arrayidx115, align 4, !tbaa !17
  %89 = load i32, i32* %y0, align 4, !tbaa !17
  %mul116 = mul i32 %88, %89
  %add117 = add i32 %mul113, %mul116
  %90 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta118 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %90, i32 0, i32 6
  %arrayidx119 = getelementptr inbounds [8 x i32], [8 x i32]* %opta118, i32 0, i64 0
  %91 = load i32, i32* %arrayidx119, align 4, !tbaa !17
  %92 = load i32, i32* %z0, align 4, !tbaa !17
  %mul120 = mul i32 %91, %92
  %add121 = add i32 %add117, %mul120
  store i32 %add121, i32* %index, align 4, !tbaa !17
  br label %if.end.147

if.else.122:                                      ; preds = %if.else
  %93 = load i32, i32* %nChannelsIn.addr, align 4, !tbaa !17
  %cmp123 = icmp eq i32 %93, 1
  br i1 %cmp123, label %if.then.125, label %if.else.144

if.then.125:                                      ; preds = %if.else.122
  %94 = load i16*, i16** %At.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i16, i16* %94, i64 0
  %95 = load i16, i16* %arrayidx126, align 2, !tbaa !31
  %conv127 = uitofp i16 %95 to double
  %96 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %Domain128 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %96, i32 0, i32 5
  %arrayidx129 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain128, i32 0, i64 0
  %97 = load i32, i32* %arrayidx129, align 4, !tbaa !17
  %conv130 = uitofp i32 %97 to double
  %mul131 = fmul double %conv127, %conv130
  %div132 = fdiv double %mul131, 6.553500e+04
  store double %div132, double* %px, align 8, !tbaa !46
  %98 = load double, double* %px, align 8, !tbaa !46
  %call133 = call double @floor(double %98) #9
  %conv134 = fptosi double %call133 to i32
  store i32 %conv134, i32* %x0, align 4, !tbaa !17
  %99 = load double, double* %px, align 8, !tbaa !46
  %100 = load i32, i32* %x0, align 4, !tbaa !17
  %conv135 = sitofp i32 %100 to double
  %sub136 = fsub double %99, %conv135
  %cmp137 = fcmp une double %sub136, 0.000000e+00
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.125
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %if.then.125
  %101 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16, align 8, !tbaa !1
  %opta141 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %101, i32 0, i32 6
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %opta141, i32 0, i64 0
  %102 = load i32, i32* %arrayidx142, align 4, !tbaa !17
  %103 = load i32, i32* %x0, align 4, !tbaa !17
  %mul143 = mul i32 %102, %103
  store i32 %mul143, i32* %index, align 4, !tbaa !17
  br label %if.end.146

if.else.144:                                      ; preds = %if.else.122
  %104 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %CLUT.addr, align 8, !tbaa !1
  %ContextID145 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %104, i32 0, i32 0
  %105 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID145, align 8, !tbaa !48
  %106 = load i32, i32* %nChannelsIn.addr, align 4, !tbaa !17
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %105, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), i32 %106) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %if.end.140
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.110
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.51
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.148
  %107 = load i32, i32* %i, align 4, !tbaa !17
  %108 = load i32, i32* %nChannelsOut.addr, align 4, !tbaa !17
  %cmp149 = icmp slt i32 %107, %108
  br i1 %cmp149, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %109 to i64
  %110 = load i16*, i16** %Value.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i16, i16* %110, i64 %idxprom
  %111 = load i16, i16* %arrayidx151, align 2, !tbaa !31
  %112 = load i32, i32* %index, align 4, !tbaa !17
  %113 = load i32, i32* %i, align 4, !tbaa !17
  %add152 = add nsw i32 %112, %113
  %idxprom153 = sext i32 %add152 to i64
  %114 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %Grid, align 8, !tbaa !1
  %Tab = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %114, i32 0, i32 0
  %T = bitcast %union.anon* %Tab to i16**
  %115 = load i16*, i16** %T, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i16, i16* %115, i64 %idxprom153
  store i16 %111, i16* %arrayidx154, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %116 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.144, %if.then.139, %if.then.109, %if.then.50, %if.then
  %117 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast double* %pw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast double* %pz to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast double* %py to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #2
  %126 = bitcast double* %px to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast %struct._cms_interp_struc** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #2
  %128 = bitcast %struct._cmsStageCLutData** %Grid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind uwtable
define internal i32 @OptimizeByJoiningCurves(%struct._cmsPipeline_struct** %Lut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct**, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %GammaTables = alloca %struct._cms_curve_struct**, align 8
  %InFloat = alloca [16 x float], align 16
  %OutFloat = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Src = alloca %struct._cmsPipeline_struct*, align 8
  %Dest = alloca %struct._cmsPipeline_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %ObtainedCurves = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %Data = alloca %struct._cmsStageToneCurvesData*, align 8
  %c16 = alloca %struct.Curves16Data*, align 8
  %Data107 = alloca %struct._cmsStageToneCurvesData*, align 8
  %c16109 = alloca %struct.Curves16Data*, align 8
  store %struct._cmsPipeline_struct** %Lut, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !17
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct*** %GammaTables to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct._cms_curve_struct** null, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %1 = bitcast [16 x float]* %InFloat to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #2
  %2 = bitcast [16 x float]* %OutFloat to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  %7 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %6, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %7, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %8 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %9 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast %struct._cmsStage_struct** %ObtainedCurves to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  store %struct._cmsStage_struct* null, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %11 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !17
  %call = call i32 @_cmsFormatterIsFloat(i32 %12) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !17
  %call1 = call i32 @_cmsFormatterIsFloat(i32 %14) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %call3 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %15) #7
  store %struct._cmsStage_struct* %call3, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsStage_struct* %16, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call4 = call i32 @cmsStageType(%struct._cmsStage_struct* %17) #7
  %cmp5 = icmp ne i32 %call4, 1668707188
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %18 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call8 = call %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct* %18) #7
  store %struct._cmsStage_struct* %call8, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %19, i32 0, i32 8
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %21 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %21, i32 0, i32 1
  %22 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %23 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %call9 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %20, i32 %22, i32 %24) #7
  store %struct._cmsPipeline_struct* %call9, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %25 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cmsPipeline_struct* %25, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.12:                                        ; preds = %for.end
  %26 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID13 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %26, i32 0, i32 8
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID13, align 8, !tbaa !21
  %28 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels14 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %28, i32 0, i32 1
  %29 = load i32, i32* %InputChannels14, align 4, !tbaa !22
  %call15 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %27, i32 %29, i32 8) #7
  %30 = bitcast i8* %call15 to %struct._cms_curve_struct**
  store %struct._cms_curve_struct** %30, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %31 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %cmp16 = icmp eq %struct._cms_curve_struct** %31, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  br label %Error

if.end.18:                                        ; preds = %if.end.12
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %if.end.18
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels20 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %33, i32 0, i32 1
  %34 = load i32, i32* %InputChannels20, align 4, !tbaa !22
  %cmp21 = icmp ult i32 %32, %34
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.19
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID23 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %35, i32 0, i32 8
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID23, align 8, !tbaa !21
  %call24 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %36, i32 4096, i16* null) #7
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = zext i32 %37 to i64
  %38 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %38, i64 %idxprom
  store %struct._cms_curve_struct* %call24, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom25 = zext i32 %39 to i64
  %40 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %40, i64 %idxprom25
  %41 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx26, align 8, !tbaa !1
  %cmp27 = icmp eq %struct._cms_curve_struct* %41, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.22
  br label %Error

if.end.29:                                        ; preds = %for.body.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %42 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond.19

for.end.31:                                       ; preds = %for.cond.19
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.62, %for.end.31
  %43 = load i32, i32* %i, align 4, !tbaa !17
  %cmp33 = icmp ult i32 %43, 4096
  br i1 %cmp33, label %for.body.34, label %for.end.64

for.body.34:                                      ; preds = %for.cond.32
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.42, %for.body.34
  %44 = load i32, i32* %j, align 4, !tbaa !17
  %45 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels36 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %45, i32 0, i32 1
  %46 = load i32, i32* %InputChannels36, align 4, !tbaa !22
  %cmp37 = icmp ult i32 %44, %46
  br i1 %cmp37, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %for.cond.35
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %conv = uitofp i32 %47 to double
  %div = fdiv double %conv, 4.095000e+03
  %conv39 = fptrunc double %div to float
  %48 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom40 = zext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds [16 x float], [16 x float]* %InFloat, i32 0, i64 %idxprom40
  store float %conv39, float* %arrayidx41, align 4, !tbaa !35
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.38
  %49 = load i32, i32* %j, align 4, !tbaa !17
  %inc43 = add i32 %49, 1
  store i32 %inc43, i32* %j, align 4, !tbaa !17
  br label %for.cond.35

for.end.44:                                       ; preds = %for.cond.35
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %InFloat, i32 0, i32 0
  %arraydecay45 = getelementptr inbounds [16 x float], [16 x float]* %OutFloat, i32 0, i32 0
  %50 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineEvalFloat(float* %arraydecay, float* %arraydecay45, %struct._cmsPipeline_struct* %50) #7
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.59, %for.end.44
  %51 = load i32, i32* %j, align 4, !tbaa !17
  %52 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels47 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %InputChannels47, align 4, !tbaa !22
  %cmp48 = icmp ult i32 %51, %53
  br i1 %cmp48, label %for.body.50, label %for.end.61

for.body.50:                                      ; preds = %for.cond.46
  %54 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom51 = zext i32 %54 to i64
  %arrayidx52 = getelementptr inbounds [16 x float], [16 x float]* %OutFloat, i32 0, i64 %idxprom51
  %55 = load float, float* %arrayidx52, align 4, !tbaa !35
  %conv53 = fpext float %55 to double
  %mul = fmul double %conv53, 6.553500e+04
  %call54 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom55 = zext i32 %56 to i64
  %57 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom56 = zext i32 %57 to i64
  %58 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %58, i64 %idxprom56
  %59 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx57, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %59, i32 0, i32 6
  %60 = load i16*, i16** %Table16, align 8, !tbaa !49
  %arrayidx58 = getelementptr inbounds i16, i16* %60, i64 %idxprom55
  store i16 %call54, i16* %arrayidx58, align 2, !tbaa !31
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.50
  %61 = load i32, i32* %j, align 4, !tbaa !17
  %inc60 = add i32 %61, 1
  store i32 %inc60, i32* %j, align 4, !tbaa !17
  br label %for.cond.46

for.end.61:                                       ; preds = %for.cond.46
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %62 = load i32, i32* %i, align 4, !tbaa !17
  %inc63 = add i32 %62, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !17
  br label %for.cond.32

for.end.64:                                       ; preds = %for.cond.32
  %63 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID65 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %63, i32 0, i32 8
  %64 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID65, align 8, !tbaa !21
  %65 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels66 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %65, i32 0, i32 1
  %66 = load i32, i32* %InputChannels66, align 4, !tbaa !22
  %67 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %call67 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %64, i32 %66, %struct._cms_curve_struct** %67) #7
  store %struct._cmsStage_struct* %call67, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %68 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %cmp68 = icmp eq %struct._cmsStage_struct* %68, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.end.64
  br label %Error

if.end.71:                                        ; preds = %for.end.64
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.81, %if.end.71
  %69 = load i32, i32* %i, align 4, !tbaa !17
  %70 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels73 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %70, i32 0, i32 1
  %71 = load i32, i32* %InputChannels73, align 4, !tbaa !22
  %cmp74 = icmp ult i32 %69, %71
  br i1 %cmp74, label %for.body.76, label %for.end.83

for.body.76:                                      ; preds = %for.cond.72
  %72 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom77 = zext i32 %72 to i64
  %73 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %73, i64 %idxprom77
  %74 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx78, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %74) #7
  %75 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom79 = zext i32 %75 to i64
  %76 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %76, i64 %idxprom79
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %arrayidx80, align 8, !tbaa !1
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.76
  %77 = load i32, i32* %i, align 4, !tbaa !17
  %inc82 = add i32 %77, 1
  store i32 %inc82, i32* %i, align 4, !tbaa !17
  br label %for.cond.72

for.end.83:                                       ; preds = %for.cond.72
  %78 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %cmp84 = icmp ne %struct._cms_curve_struct** %78, null
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %for.end.83
  %79 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID87 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %79, i32 0, i32 8
  %80 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID87, align 8, !tbaa !21
  %81 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %82 = bitcast %struct._cms_curve_struct** %81 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %80, i8* %82) #7
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %for.end.83
  %83 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %call89 = call i32 @AllCurvesAreLinear(%struct._cmsStage_struct* %83) #7
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.else.124, label %if.then.91

if.then.91:                                       ; preds = %if.end.88
  %84 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %85 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %call92 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %84, i32 0, %struct._cmsStage_struct* %85) #7
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.91
  br label %Error

if.end.95:                                        ; preds = %if.then.91
  %86 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %87 = load i32, i32* %86, align 4, !tbaa !17
  %call96 = call i32 @_cmsFormatterIs8bit(i32 %87) #7
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.end.95
  %88 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #2
  %89 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %Data99 = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %89, i32 0, i32 8
  %90 = load i8*, i8** %Data99, align 8, !tbaa !26
  %91 = bitcast i8* %90 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %91, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %92 = bitcast %struct.Curves16Data** %c16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %93 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %ContextID100 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %93, i32 0, i32 8
  %94 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID100, align 8, !tbaa !21
  %95 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %95, i32 0, i32 0
  %96 = load i32, i32* %nCurves, align 4, !tbaa !50
  %97 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %97, i32 0, i32 1
  %98 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !27
  %call101 = call %struct.Curves16Data* @CurvesAlloc(%struct._cmsContext_struct* %94, i32 %96, i32 256, %struct._cms_curve_struct** %98) #7
  store %struct.Curves16Data* %call101, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %99 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %cmp102 = icmp eq %struct.Curves16Data* %99, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.98
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.then.98
  %100 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %101 = load i32, i32* %100, align 4, !tbaa !17
  %or = or i32 %101, 64
  store i32 %or, i32* %100, align 4, !tbaa !17
  %102 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %103 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %104 = bitcast %struct.Curves16Data* %103 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %102, void (i16*, i16*, i8*)* @FastEvaluateCurves8, i8* %104, void (%struct._cmsContext_struct*, i8*)* @CurvesFree, i8* (%struct._cmsContext_struct*, i8*)* @CurvesDup) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.104, %if.end.105
  %105 = bitcast %struct.Curves16Data** %c16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast %struct._cmsStageToneCurvesData** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.163 [
    i32 0, label %cleanup.cont
    i32 5, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.123

if.else:                                          ; preds = %if.end.95
  %107 = bitcast %struct._cmsStageToneCurvesData** %Data107 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #2
  %108 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %call108 = call i8* @cmsStageData(%struct._cmsStage_struct* %108) #7
  %109 = bitcast i8* %call108 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %109, %struct._cmsStageToneCurvesData** %Data107, align 8, !tbaa !1
  %110 = bitcast %struct.Curves16Data** %c16109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #2
  %111 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %ContextID110 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %111, i32 0, i32 8
  %112 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID110, align 8, !tbaa !21
  %113 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data107, align 8, !tbaa !1
  %nCurves111 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %113, i32 0, i32 0
  %114 = load i32, i32* %nCurves111, align 4, !tbaa !50
  %115 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %Data107, align 8, !tbaa !1
  %TheCurves112 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %115, i32 0, i32 1
  %116 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves112, align 8, !tbaa !27
  %call113 = call %struct.Curves16Data* @CurvesAlloc(%struct._cmsContext_struct* %112, i32 %114, i32 65536, %struct._cms_curve_struct** %116) #7
  store %struct.Curves16Data* %call113, %struct.Curves16Data** %c16109, align 8, !tbaa !1
  %117 = load %struct.Curves16Data*, %struct.Curves16Data** %c16109, align 8, !tbaa !1
  %cmp114 = icmp eq %struct.Curves16Data* %117, null
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.else
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.119

if.end.117:                                       ; preds = %if.else
  %118 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %119 = load i32, i32* %118, align 4, !tbaa !17
  %or118 = or i32 %119, 64
  store i32 %or118, i32* %118, align 4, !tbaa !17
  %120 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %121 = load %struct.Curves16Data*, %struct.Curves16Data** %c16109, align 8, !tbaa !1
  %122 = bitcast %struct.Curves16Data* %121 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %120, void (i16*, i16*, i8*)* @FastEvaluateCurves16, i8* %122, void (%struct._cmsContext_struct*, i8*)* @CurvesFree, i8* (%struct._cmsContext_struct*, i8*)* @CurvesDup) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.119

cleanup.119:                                      ; preds = %if.then.116, %if.end.117
  %123 = bitcast %struct.Curves16Data** %c16109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #2
  %124 = bitcast %struct._cmsStageToneCurvesData** %Data107 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %cleanup.dest.121 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.121, label %cleanup.163 [
    i32 0, label %cleanup.cont.122
    i32 5, label %Error
  ]

cleanup.cont.122:                                 ; preds = %cleanup.119
  br label %if.end.123

if.end.123:                                       ; preds = %cleanup.cont.122, %cleanup.cont
  br label %if.end.133

if.else.124:                                      ; preds = %if.end.88
  %125 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %125) #7
  %126 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %127 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %ContextID125 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %127, i32 0, i32 8
  %128 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID125, align 8, !tbaa !21
  %129 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels126 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %129, i32 0, i32 1
  %130 = load i32, i32* %InputChannels126, align 4, !tbaa !22
  %call127 = call %struct._cmsStage_struct* @cmsStageAllocIdentity(%struct._cmsContext_struct* %128, i32 %130) #7
  %call128 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %126, i32 0, %struct._cmsStage_struct* %call127) #7
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.else.124
  br label %Error

if.end.131:                                       ; preds = %if.else.124
  %131 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %132 = load i32, i32* %131, align 4, !tbaa !17
  %or132 = or i32 %132, 64
  store i32 %or132, i32* %131, align 4, !tbaa !17
  %133 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %134 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %135 = bitcast %struct._cmsPipeline_struct* %134 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %133, void (i16*, i16*, i8*)* @FastIdentity16, i8* %135, void (%struct._cmsContext_struct*, i8*)* null, i8* (%struct._cmsContext_struct*, i8*)* null) #7
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.131, %if.end.123
  %136 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %136) #7
  %137 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %138 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %137, %struct._cmsPipeline_struct** %138, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

Error:                                            ; preds = %cleanup.119, %cleanup, %if.then.130, %if.then.94, %if.then.70, %if.then.28, %if.then.17
  %139 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  %cmp134 = icmp ne %struct._cmsStage_struct* %139, null
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %Error
  %140 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %ObtainedCurves, align 8, !tbaa !1
  call void @cmsStageFree(%struct._cmsStage_struct* %140) #7
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %Error
  %141 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %cmp138 = icmp ne %struct._cms_curve_struct** %141, null
  br i1 %cmp138, label %if.then.140, label %if.end.158

if.then.140:                                      ; preds = %if.end.137
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.154, %if.then.140
  %142 = load i32, i32* %i, align 4, !tbaa !17
  %143 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels142 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %143, i32 0, i32 1
  %144 = load i32, i32* %InputChannels142, align 4, !tbaa !22
  %cmp143 = icmp ult i32 %142, %144
  br i1 %cmp143, label %for.body.145, label %for.end.156

for.body.145:                                     ; preds = %for.cond.141
  %145 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom146 = zext i32 %145 to i64
  %146 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %146, i64 %idxprom146
  %147 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx147, align 8, !tbaa !1
  %cmp148 = icmp ne %struct._cms_curve_struct* %147, null
  br i1 %cmp148, label %if.then.150, label %if.end.153

if.then.150:                                      ; preds = %for.body.145
  %148 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom151 = zext i32 %148 to i64
  %149 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %149, i64 %idxprom151
  %150 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx152, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %150) #7
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.150, %for.body.145
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %151 = load i32, i32* %i, align 4, !tbaa !17
  %inc155 = add i32 %151, 1
  store i32 %inc155, i32* %i, align 4, !tbaa !17
  br label %for.cond.141

for.end.156:                                      ; preds = %for.cond.141
  %152 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID157 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %152, i32 0, i32 8
  %153 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID157, align 8, !tbaa !21
  %154 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %GammaTables, align 8, !tbaa !1
  %155 = bitcast %struct._cms_curve_struct** %154 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %153, i8* %155) #7
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.156, %if.end.137
  %156 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %cmp159 = icmp ne %struct._cmsPipeline_struct* %156, null
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  %157 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %157) #7
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.158
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

cleanup.163:                                      ; preds = %if.end.162, %if.end.133, %cleanup.119, %cleanup, %if.then.11, %if.then.6, %if.then
  %158 = bitcast %struct._cmsStage_struct** %ObtainedCurves to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %164 = bitcast [16 x float]* %OutFloat to i8*
  call void @llvm.lifetime.end(i64 64, i8* %164) #2
  %165 = bitcast [16 x float]* %InFloat to i8*
  call void @llvm.lifetime.end(i64 64, i8* %165) #2
  %166 = bitcast %struct._cms_curve_struct*** %GammaTables to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #2
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind uwtable
define internal i32 @OptimizeMatrixShaper(%struct._cmsPipeline_struct** %Lut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct**, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %Curve1 = alloca %struct._cmsStage_struct*, align 8
  %Curve2 = alloca %struct._cmsStage_struct*, align 8
  %Matrix1 = alloca %struct._cmsStage_struct*, align 8
  %Matrix2 = alloca %struct._cmsStage_struct*, align 8
  %Data1 = alloca %struct._cmsStageMatrixData*, align 8
  %Data2 = alloca %struct._cmsStageMatrixData*, align 8
  %res = alloca %struct.cmsMAT3, align 8
  %IdentityMat = alloca i32, align 4
  %Dest = alloca %struct._cmsPipeline_struct*, align 8
  %Src = alloca %struct._cmsPipeline_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %mpeC1 = alloca %struct._cmsStageToneCurvesData*, align 8
  %mpeC2 = alloca %struct._cmsStageToneCurvesData*, align 8
  store %struct._cmsPipeline_struct** %Lut, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !17
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsStage_struct** %Curve1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._cmsStage_struct** %Curve2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct._cmsStage_struct** %Matrix1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct._cmsStage_struct** %Matrix2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct._cmsStageMatrixData** %Data1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct._cmsStageMatrixData** %Data2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.cmsMAT3* %res to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #2
  %7 = bitcast i32* %IdentityMat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %11 = load i32, i32* %10, align 4, !tbaa !17
  %shr = lshr i32 %11, 3
  %and = and i32 %shr, 15
  %cmp = icmp ne i32 %and, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !17
  %shr1 = lshr i32 %13, 3
  %and2 = and i32 %shr1, 15
  %cmp3 = icmp ne i32 %and2, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %15 = load i32, i32* %14, align 4, !tbaa !17
  %call = call i32 @_cmsFormatterIs8bit(i32 %15) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %16 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  %17 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %16, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %17, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %18 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %call6 = call i32 (%struct._cmsPipeline_struct*, i32, ...) @cmsPipelineCheckAndRetreiveStages(%struct._cmsPipeline_struct* %18, i32 4, i32 1668707188, i32 1835103334, i32 1835103334, i32 1668707188, %struct._cmsStage_struct** %Curve1, %struct._cmsStage_struct** %Matrix1, %struct._cmsStage_struct** %Matrix2, %struct._cmsStage_struct** %Curve2) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %19 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Matrix1, align 8, !tbaa !1
  %call10 = call i8* @cmsStageData(%struct._cmsStage_struct* %19) #7
  %20 = bitcast i8* %call10 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %20, %struct._cmsStageMatrixData** %Data1, align 8, !tbaa !1
  %21 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Matrix2, align 8, !tbaa !1
  %call11 = call i8* @cmsStageData(%struct._cmsStage_struct* %21) #7
  %22 = bitcast i8* %call11 to %struct._cmsStageMatrixData*
  store %struct._cmsStageMatrixData* %22, %struct._cmsStageMatrixData** %Data2, align 8, !tbaa !1
  %23 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data1, align 8, !tbaa !1
  %Offset = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %23, i32 0, i32 1
  %24 = load double*, double** %Offset, align 8, !tbaa !51
  %cmp12 = icmp ne double* %24, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %25 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data2, align 8, !tbaa !1
  %Double = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %25, i32 0, i32 0
  %26 = load double*, double** %Double, align 8, !tbaa !53
  %27 = bitcast double* %26 to %struct.cmsMAT3*
  %28 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data1, align 8, !tbaa !1
  %Double15 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %28, i32 0, i32 0
  %29 = load double*, double** %Double15, align 8, !tbaa !53
  %30 = bitcast double* %29 to %struct.cmsMAT3*
  call void @_cmsMAT3per(%struct.cmsMAT3* %res, %struct.cmsMAT3* %27, %struct.cmsMAT3* %30) #7
  store i32 0, i32* %IdentityMat, align 4, !tbaa !17
  %call16 = call i32 @_cmsMAT3isIdentity(%struct.cmsMAT3* %res) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.14
  %31 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data2, align 8, !tbaa !1
  %Offset18 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %31, i32 0, i32 1
  %32 = load double*, double** %Offset18, align 8, !tbaa !51
  %cmp19 = icmp eq double* %32, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 1, i32* %IdentityMat, align 4, !tbaa !17
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.14
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %33, i32 0, i32 8
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %35 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %35, i32 0, i32 1
  %36 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %37 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %37, i32 0, i32 2
  %38 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %call22 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %34, i32 %36, i32 %38) #7
  store %struct._cmsPipeline_struct* %call22, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %39 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %tobool23 = icmp ne %struct._cmsPipeline_struct* %39, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  %40 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %41 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Curve1, align 8, !tbaa !1
  %call26 = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %41) #7
  %call27 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %40, i32 0, %struct._cmsStage_struct* %call26) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  br label %Error

if.end.30:                                        ; preds = %if.end.25
  %42 = load i32, i32* %IdentityMat, align 4, !tbaa !17
  %tobool31 = icmp ne i32 %42, 0
  br i1 %tobool31, label %if.end.40, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %43 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %44 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %ContextID33 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %44, i32 0, i32 8
  %45 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID33, align 8, !tbaa !21
  %46 = bitcast %struct.cmsMAT3* %res to double*
  %47 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data2, align 8, !tbaa !1
  %Offset34 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %47, i32 0, i32 1
  %48 = load double*, double** %Offset34, align 8, !tbaa !51
  %call35 = call %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct* %45, i32 3, i32 3, double* %46, double* %48) #7
  %call36 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %43, i32 1, %struct._cmsStage_struct* %call35) #7
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.then.32
  br label %Error

if.end.39:                                        ; preds = %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.30
  %49 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %50 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Curve2, align 8, !tbaa !1
  %call41 = call %struct._cmsStage_struct* @cmsStageDup(%struct._cmsStage_struct* %50) #7
  %call42 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %49, i32 1, %struct._cmsStage_struct* %call41) #7
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.40
  br label %Error

if.end.45:                                        ; preds = %if.end.40
  %51 = load i32, i32* %IdentityMat, align 4, !tbaa !17
  %tobool46 = icmp ne i32 %51, 0
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.45
  %52 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %53 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %54 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %55 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %call48 = call i32 @OptimizeByJoiningCurves(%struct._cmsPipeline_struct** %Dest, i32 %52, i32* %53, i32* %54, i32* %55) #7
  br label %if.end.54

if.else:                                          ; preds = %if.end.45
  %56 = bitcast %struct._cmsStageToneCurvesData** %mpeC1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Curve1, align 8, !tbaa !1
  %call49 = call i8* @cmsStageData(%struct._cmsStage_struct* %57) #7
  %58 = bitcast i8* %call49 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %58, %struct._cmsStageToneCurvesData** %mpeC1, align 8, !tbaa !1
  %59 = bitcast %struct._cmsStageToneCurvesData** %mpeC2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Curve2, align 8, !tbaa !1
  %call50 = call i8* @cmsStageData(%struct._cmsStage_struct* %60) #7
  %61 = bitcast i8* %call50 to %struct._cmsStageToneCurvesData*
  store %struct._cmsStageToneCurvesData* %61, %struct._cmsStageToneCurvesData** %mpeC2, align 8, !tbaa !1
  %62 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %63 = load i32, i32* %62, align 4, !tbaa !17
  %or = or i32 %63, 64
  store i32 %or, i32* %62, align 4, !tbaa !17
  %64 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %65 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %mpeC1, align 8, !tbaa !1
  %TheCurves = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %65, i32 0, i32 1
  %66 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves, align 8, !tbaa !27
  %67 = load %struct._cmsStageMatrixData*, %struct._cmsStageMatrixData** %Data2, align 8, !tbaa !1
  %Offset51 = getelementptr inbounds %struct._cmsStageMatrixData, %struct._cmsStageMatrixData* %67, i32 0, i32 1
  %68 = load double*, double** %Offset51, align 8, !tbaa !51
  %69 = bitcast double* %68 to %struct.cmsVEC3*
  %70 = load %struct._cmsStageToneCurvesData*, %struct._cmsStageToneCurvesData** %mpeC2, align 8, !tbaa !1
  %TheCurves52 = getelementptr inbounds %struct._cmsStageToneCurvesData, %struct._cmsStageToneCurvesData* %70, i32 0, i32 1
  %71 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %TheCurves52, align 8, !tbaa !27
  %72 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %call53 = call i32 @SetMatShaper(%struct._cmsPipeline_struct* %64, %struct._cms_curve_struct** %66, %struct.cmsMAT3* %res, %struct.cmsVEC3* %69, %struct._cms_curve_struct** %71, i32* %72) #7
  %73 = bitcast %struct._cmsStageToneCurvesData** %mpeC2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast %struct._cmsStageToneCurvesData** %mpeC1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.47
  %75 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Src, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %75) #7
  %76 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  %77 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %76, %struct._cmsPipeline_struct** %77, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.44, %if.then.38, %if.then.29
  %78 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %78) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.54, %if.then.24, %if.then.13, %if.then.8, %if.then.4, %if.then
  %79 = bitcast %struct._cmsPipeline_struct** %Src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct._cmsPipeline_struct** %Dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %IdentityMat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast %struct.cmsMAT3* %res to i8*
  call void @llvm.lifetime.end(i64 72, i8* %82) #2
  %83 = bitcast %struct._cmsStageMatrixData** %Data2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast %struct._cmsStageMatrixData** %Data1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = bitcast %struct._cmsStage_struct** %Matrix2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast %struct._cmsStage_struct** %Matrix1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast %struct._cmsStage_struct** %Curve2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast %struct._cmsStage_struct** %Curve1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @OptimizeByComputingLinearization(%struct._cmsPipeline_struct** %Lut, i32 %Intent, i32* %InputFormat, i32* %OutputFormat, i32* %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %Lut.addr = alloca %struct._cmsPipeline_struct**, align 8
  %Intent.addr = alloca i32, align 4
  %InputFormat.addr = alloca i32*, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %dwFlags.addr = alloca i32*, align 8
  %OriginalLut = alloca %struct._cmsPipeline_struct*, align 8
  %nGridPoints = alloca i32, align 4
  %Trans = alloca [16 x %struct._cms_curve_struct*], align 16
  %TransReverse = alloca [16 x %struct._cms_curve_struct*], align 16
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca float, align 4
  %In = alloca [16 x float], align 16
  %Out = alloca [16 x float], align 16
  %lIsSuitable = alloca i32, align 4
  %lIsLinear = alloca i32, align 4
  %OptimizedLUT = alloca %struct._cmsPipeline_struct*, align 8
  %LutPlusCurves = alloca %struct._cmsPipeline_struct*, align 8
  %OptimizedCLUTmpe = alloca %struct._cmsStage_struct*, align 8
  %ColorSpace = alloca i32, align 4
  %OutputColorSpace = alloca i32, align 4
  %OptimizedPrelinMpe = alloca %struct._cmsStage_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %OptimizedPrelinCurves = alloca %struct._cms_curve_struct**, align 8
  %OptimizedPrelinCLUT = alloca %struct._cmsStageCLutData*, align 8
  %cleanup.dest.slot = alloca i32
  %p8 = alloca %struct.Prelin8Data*, align 8
  %p16 = alloca %struct.Prelin16Data*, align 8
  store %struct._cmsPipeline_struct** %Lut, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store i32 %Intent, i32* %Intent.addr, align 4, !tbaa !17
  store i32* %InputFormat, i32** %InputFormat.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  store i32* %dwFlags, i32** %dwFlags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsPipeline_struct** %OriginalLut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast [16 x %struct._cms_curve_struct*]* %Trans to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #2
  %3 = bitcast [16 x %struct._cms_curve_struct*]* %TransReverse to i8*
  call void @llvm.lifetime.start(i64 128, i8* %3) #2
  %4 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast [16 x float]* %In to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #2
  %8 = bitcast [16 x float]* %Out to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #2
  %9 = bitcast i32* %lIsSuitable to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %lIsLinear to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast %struct._cmsPipeline_struct** %OptimizedLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %12 = bitcast %struct._cmsPipeline_struct** %LutPlusCurves to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store %struct._cmsPipeline_struct* null, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %13 = bitcast %struct._cmsStage_struct** %OptimizedCLUTmpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %OutputColorSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast %struct._cmsStage_struct** %OptimizedPrelinMpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast %struct._cms_curve_struct*** %OptimizedPrelinCurves to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast %struct._cmsStageCLutData** %OptimizedPrelinCLUT to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %21 = load i32, i32* %20, align 4, !tbaa !17
  %call = call i32 @_cmsFormatterIsFloat(i32 %21) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %22 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !17
  %call1 = call i32 @_cmsFormatterIsFloat(i32 %23) #7
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end:                                           ; preds = %lor.lhs.false
  %24 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !17
  %shr = lshr i32 %25, 16
  %and = and i32 %shr, 31
  %cmp = icmp ne i32 %and, 4
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.4:                                         ; preds = %if.end
  %26 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %27 = load i32, i32* %26, align 4, !tbaa !17
  %shr5 = lshr i32 %27, 16
  %and6 = and i32 %shr5, 31
  %cmp7 = icmp ne i32 %and6, 4
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.9:                                         ; preds = %if.end.4
  %28 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %29 = load i32, i32* %28, align 4, !tbaa !17
  %call10 = call i32 @_cmsFormatterIs8bit(i32 %29) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.17, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %30 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !17
  %and13 = and i32 %31, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %32 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  %33 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %32, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %33, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %34 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %call18 = call %struct._cmsStage_struct* @cmsPipelineGetPtrToFirstStage(%struct._cmsPipeline_struct* %34) #7
  store %struct._cmsStage_struct* %call18, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %35 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %cmp19 = icmp ne %struct._cmsStage_struct* %35, null
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call20 = call i32 @cmsStageType(%struct._cmsStage_struct* %36) #7
  %cmp21 = icmp eq i32 %call20, 1852009504
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %37 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %call24 = call %struct._cmsStage_struct* @cmsStageNext(%struct._cmsStage_struct* %37) #7
  store %struct._cmsStage_struct* %call24, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %39 = load i32, i32* %38, align 4, !tbaa !17
  %shr25 = lshr i32 %39, 16
  %and26 = and i32 %shr25, 31
  %call27 = call i32 @_cmsICCcolorSpace(i32 %and26) #7
  store i32 %call27, i32* %ColorSpace, align 4, !tbaa !20
  %40 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %41 = load i32, i32* %40, align 4, !tbaa !17
  %shr28 = lshr i32 %41, 16
  %and29 = and i32 %shr28, 31
  %call30 = call i32 @_cmsICCcolorSpace(i32 %and29) #7
  store i32 %call30, i32* %OutputColorSpace, align 4, !tbaa !20
  %42 = load i32, i32* %ColorSpace, align 4, !tbaa !20
  %43 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %44 = load i32, i32* %43, align 4, !tbaa !17
  %call31 = call i32 @_cmsReasonableGridpointsByColorspace(i32 %42, i32 %44) #7
  store i32 %call31, i32* %nGridPoints, align 4, !tbaa !17
  %arraydecay = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i32 0
  %45 = bitcast %struct._cms_curve_struct** %arraydecay to i8*
  %call32 = call i8* @memset(i8* %45, i32 0, i64 128) #10
  %arraydecay33 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i32 0
  %46 = bitcast %struct._cms_curve_struct** %arraydecay33 to i8*
  %call34 = call i8* @memset(i8* %46, i32 0, i64 128) #10
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %for.end
  %47 = load i32, i32* %t, align 4, !tbaa !17
  %48 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %48, i32 0, i32 1
  %49 = load i32, i32* %InputChannels, align 4, !tbaa !22
  %cmp36 = icmp ult i32 %47, %49
  br i1 %cmp36, label %for.body.37, label %for.end.45

for.body.37:                                      ; preds = %for.cond.35
  %50 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %50, i32 0, i32 8
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %call38 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %51, i32 4096, i16* null) #7
  %52 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom = zext i32 %52 to i64
  %arrayidx = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom
  store %struct._cms_curve_struct* %call38, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %53 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom39 = zext i32 %53 to i64
  %arrayidx40 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom39
  %54 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx40, align 8, !tbaa !1
  %cmp41 = icmp eq %struct._cms_curve_struct* %54, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.37
  br label %Error

if.end.43:                                        ; preds = %for.body.37
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %55 = load i32, i32* %t, align 4, !tbaa !17
  %inc = add i32 %55, 1
  store i32 %inc, i32* %t, align 4, !tbaa !17
  br label %for.cond.35

for.end.45:                                       ; preds = %for.cond.35
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.78, %for.end.45
  %56 = load i32, i32* %i, align 4, !tbaa !17
  %cmp47 = icmp ult i32 %56, 4096
  br i1 %cmp47, label %for.body.48, label %for.end.80

for.body.48:                                      ; preds = %for.cond.46
  %57 = load i32, i32* %i, align 4, !tbaa !17
  %conv = uitofp i32 %57 to double
  %div = fdiv double %conv, 4.095000e+03
  %conv49 = fptrunc double %div to float
  store float %conv49, float* %v, align 4, !tbaa !35
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.57, %for.body.48
  %58 = load i32, i32* %t, align 4, !tbaa !17
  %59 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels51 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %59, i32 0, i32 1
  %60 = load i32, i32* %InputChannels51, align 4, !tbaa !22
  %cmp52 = icmp ult i32 %58, %60
  br i1 %cmp52, label %for.body.54, label %for.end.59

for.body.54:                                      ; preds = %for.cond.50
  %61 = load float, float* %v, align 4, !tbaa !35
  %62 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom55 = zext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds [16 x float], [16 x float]* %In, i32 0, i64 %idxprom55
  store float %61, float* %arrayidx56, align 4, !tbaa !35
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.54
  %63 = load i32, i32* %t, align 4, !tbaa !17
  %inc58 = add i32 %63, 1
  store i32 %inc58, i32* %t, align 4, !tbaa !17
  br label %for.cond.50

for.end.59:                                       ; preds = %for.cond.50
  %arraydecay60 = getelementptr inbounds [16 x float], [16 x float]* %In, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [16 x float], [16 x float]* %Out, i32 0, i32 0
  %64 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  call void @cmsPipelineEvalFloat(float* %arraydecay60, float* %arraydecay61, %struct._cmsPipeline_struct* %64) #7
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.75, %for.end.59
  %65 = load i32, i32* %t, align 4, !tbaa !17
  %66 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels63 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %InputChannels63, align 4, !tbaa !22
  %cmp64 = icmp ult i32 %65, %67
  br i1 %cmp64, label %for.body.66, label %for.end.77

for.body.66:                                      ; preds = %for.cond.62
  %68 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom67 = zext i32 %68 to i64
  %arrayidx68 = getelementptr inbounds [16 x float], [16 x float]* %Out, i32 0, i64 %idxprom67
  %69 = load float, float* %arrayidx68, align 4, !tbaa !35
  %conv69 = fpext float %69 to double
  %mul = fmul double %conv69, 6.553500e+04
  %call70 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  %70 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom71 = zext i32 %70 to i64
  %71 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom72 = zext i32 %71 to i64
  %arrayidx73 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom72
  %72 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx73, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %72, i32 0, i32 6
  %73 = load i16*, i16** %Table16, align 8, !tbaa !49
  %arrayidx74 = getelementptr inbounds i16, i16* %73, i64 %idxprom71
  store i16 %call70, i16* %arrayidx74, align 2, !tbaa !31
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.66
  %74 = load i32, i32* %t, align 4, !tbaa !17
  %inc76 = add i32 %74, 1
  store i32 %inc76, i32* %t, align 4, !tbaa !17
  br label %for.cond.62

for.end.77:                                       ; preds = %for.cond.62
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.77
  %75 = load i32, i32* %i, align 4, !tbaa !17
  %inc79 = add i32 %75, 1
  store i32 %inc79, i32* %i, align 4, !tbaa !17
  br label %for.cond.46

for.end.80:                                       ; preds = %for.cond.46
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.88, %for.end.80
  %76 = load i32, i32* %t, align 4, !tbaa !17
  %77 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels82 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %77, i32 0, i32 1
  %78 = load i32, i32* %InputChannels82, align 4, !tbaa !22
  %cmp83 = icmp ult i32 %76, %78
  br i1 %cmp83, label %for.body.85, label %for.end.90

for.body.85:                                      ; preds = %for.cond.81
  %79 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom86 = zext i32 %79 to i64
  %arrayidx87 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom86
  %80 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx87, align 8, !tbaa !1
  call void @SlopeLimiting(%struct._cms_curve_struct* %80) #7
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.85
  %81 = load i32, i32* %t, align 4, !tbaa !17
  %inc89 = add i32 %81, 1
  store i32 %inc89, i32* %t, align 4, !tbaa !17
  br label %for.cond.81

for.end.90:                                       ; preds = %for.cond.81
  store i32 1, i32* %lIsSuitable, align 4, !tbaa !17
  store i32 1, i32* %lIsLinear, align 4, !tbaa !17
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.115, %for.end.90
  %82 = load i32, i32* %lIsSuitable, align 4, !tbaa !17
  %tobool92 = icmp ne i32 %82, 0
  br i1 %tobool92, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.91
  %83 = load i32, i32* %t, align 4, !tbaa !17
  %84 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels93 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %84, i32 0, i32 1
  %85 = load i32, i32* %InputChannels93, align 4, !tbaa !22
  %cmp94 = icmp ult i32 %83, %85
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.91
  %86 = phi i1 [ false, %for.cond.91 ], [ %cmp94, %land.rhs ]
  br i1 %86, label %for.body.96, label %for.end.117

for.body.96:                                      ; preds = %land.end
  %87 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom97 = zext i32 %87 to i64
  %arrayidx98 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom97
  %88 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx98, align 8, !tbaa !1
  %call99 = call i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct* %88) #7
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %for.body.96
  store i32 0, i32* %lIsLinear, align 4, !tbaa !17
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %for.body.96
  %89 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom103 = zext i32 %89 to i64
  %arrayidx104 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom103
  %90 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx104, align 8, !tbaa !1
  %call105 = call i32 @cmsIsToneCurveMonotonic(%struct._cms_curve_struct* %90) #7
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.end.102
  store i32 0, i32* %lIsSuitable, align 4, !tbaa !17
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.102
  %91 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom109 = zext i32 %91 to i64
  %arrayidx110 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom109
  %92 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx110, align 8, !tbaa !1
  %call111 = call i32 @IsDegenerated(%struct._cms_curve_struct* %92) #7
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.108
  store i32 0, i32* %lIsSuitable, align 4, !tbaa !17
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.108
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %93 = load i32, i32* %t, align 4, !tbaa !17
  %inc116 = add i32 %93, 1
  store i32 %inc116, i32* %t, align 4, !tbaa !17
  br label %for.cond.91

for.end.117:                                      ; preds = %land.end
  %94 = load i32, i32* %lIsSuitable, align 4, !tbaa !17
  %tobool118 = icmp ne i32 %94, 0
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %for.end.117
  br label %Error

if.end.120:                                       ; preds = %for.end.117
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.137, %if.end.120
  %95 = load i32, i32* %t, align 4, !tbaa !17
  %96 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels122 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %96, i32 0, i32 1
  %97 = load i32, i32* %InputChannels122, align 4, !tbaa !22
  %cmp123 = icmp ult i32 %95, %97
  br i1 %cmp123, label %for.body.125, label %for.end.139

for.body.125:                                     ; preds = %for.cond.121
  %98 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom126 = zext i32 %98 to i64
  %arrayidx127 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom126
  %99 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx127, align 8, !tbaa !1
  %call128 = call %struct._cms_curve_struct* @cmsReverseToneCurveEx(i32 4096, %struct._cms_curve_struct* %99) #7
  %100 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom129 = zext i32 %100 to i64
  %arrayidx130 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom129
  store %struct._cms_curve_struct* %call128, %struct._cms_curve_struct** %arrayidx130, align 8, !tbaa !1
  %101 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom131 = zext i32 %101 to i64
  %arrayidx132 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom131
  %102 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx132, align 8, !tbaa !1
  %cmp133 = icmp eq %struct._cms_curve_struct* %102, null
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.body.125
  br label %Error

if.end.136:                                       ; preds = %for.body.125
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %103 = load i32, i32* %t, align 4, !tbaa !17
  %inc138 = add i32 %103, 1
  store i32 %inc138, i32* %t, align 4, !tbaa !17
  br label %for.cond.121

for.end.139:                                      ; preds = %for.cond.121
  %104 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %call140 = call %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct* %104) #7
  store %struct._cmsPipeline_struct* %call140, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %105 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %cmp141 = icmp eq %struct._cmsPipeline_struct* %105, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %for.end.139
  br label %Error

if.end.144:                                       ; preds = %for.end.139
  %106 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %107 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %ContextID145 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %107, i32 0, i32 8
  %108 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID145, align 8, !tbaa !21
  %109 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels146 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %109, i32 0, i32 1
  %110 = load i32, i32* %InputChannels146, align 4, !tbaa !22
  %arraydecay147 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i32 0
  %call148 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %108, i32 %110, %struct._cms_curve_struct** %arraydecay147) #7
  %call149 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %106, i32 0, %struct._cmsStage_struct* %call148) #7
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %if.end.144
  br label %Error

if.end.152:                                       ; preds = %if.end.144
  %111 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %ContextID153 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %111, i32 0, i32 8
  %112 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID153, align 8, !tbaa !21
  %113 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels154 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %113, i32 0, i32 1
  %114 = load i32, i32* %InputChannels154, align 4, !tbaa !22
  %115 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %OutputChannels = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %115, i32 0, i32 2
  %116 = load i32, i32* %OutputChannels, align 4, !tbaa !23
  %call155 = call %struct._cmsPipeline_struct* @cmsPipelineAlloc(%struct._cmsContext_struct* %112, i32 %114, i32 %116) #7
  store %struct._cmsPipeline_struct* %call155, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %117 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %cmp156 = icmp eq %struct._cmsPipeline_struct* %117, null
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.152
  br label %Error

if.end.159:                                       ; preds = %if.end.152
  %118 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %ContextID160 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %118, i32 0, i32 8
  %119 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID160, align 8, !tbaa !21
  %120 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels161 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %120, i32 0, i32 1
  %121 = load i32, i32* %InputChannels161, align 4, !tbaa !22
  %arraydecay162 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i32 0
  %call163 = call %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct* %119, i32 %121, %struct._cms_curve_struct** %arraydecay162) #7
  store %struct._cmsStage_struct* %call163, %struct._cmsStage_struct** %OptimizedPrelinMpe, align 8, !tbaa !1
  %122 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %123 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %OptimizedPrelinMpe, align 8, !tbaa !1
  %call164 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %122, i32 0, %struct._cmsStage_struct* %123) #7
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %if.end.159
  br label %Error

if.end.167:                                       ; preds = %if.end.159
  %124 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %ContextID168 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %124, i32 0, i32 8
  %125 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID168, align 8, !tbaa !21
  %126 = load i32, i32* %nGridPoints, align 4, !tbaa !17
  %127 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels169 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %127, i32 0, i32 1
  %128 = load i32, i32* %InputChannels169, align 4, !tbaa !22
  %129 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %OutputChannels170 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %129, i32 0, i32 2
  %130 = load i32, i32* %OutputChannels170, align 4, !tbaa !23
  %call171 = call %struct._cmsStage_struct* @cmsStageAllocCLut16bit(%struct._cmsContext_struct* %125, i32 %126, i32 %128, i32 %130, i16* null) #7
  store %struct._cmsStage_struct* %call171, %struct._cmsStage_struct** %OptimizedCLUTmpe, align 8, !tbaa !1
  %131 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %132 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %OptimizedCLUTmpe, align 8, !tbaa !1
  %call172 = call i32 @cmsPipelineInsertStage(%struct._cmsPipeline_struct* %131, i32 1, %struct._cmsStage_struct* %132) #7
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %if.end.167
  br label %Error

if.end.175:                                       ; preds = %if.end.167
  %133 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %OptimizedCLUTmpe, align 8, !tbaa !1
  %134 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %135 = bitcast %struct._cmsPipeline_struct* %134 to i8*
  %call176 = call i32 @cmsStageSampleCLut16bit(%struct._cmsStage_struct* %133, i32 (i16*, i16*, i8*)* @XFormSampler16, i8* %135, i32 0) #7
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %if.end.175
  br label %Error

if.end.179:                                       ; preds = %if.end.175
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.199, %if.end.179
  %136 = load i32, i32* %t, align 4, !tbaa !17
  %137 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels181 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %137, i32 0, i32 1
  %138 = load i32, i32* %InputChannels181, align 4, !tbaa !22
  %cmp182 = icmp ult i32 %136, %138
  br i1 %cmp182, label %for.body.184, label %for.end.201

for.body.184:                                     ; preds = %for.cond.180
  %139 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom185 = zext i32 %139 to i64
  %arrayidx186 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom185
  %140 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx186, align 8, !tbaa !1
  %tobool187 = icmp ne %struct._cms_curve_struct* %140, null
  br i1 %tobool187, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %for.body.184
  %141 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom189 = zext i32 %141 to i64
  %arrayidx190 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom189
  %142 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx190, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %142) #7
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %for.body.184
  %143 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom192 = zext i32 %143 to i64
  %arrayidx193 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom192
  %144 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx193, align 8, !tbaa !1
  %tobool194 = icmp ne %struct._cms_curve_struct* %144, null
  br i1 %tobool194, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %if.end.191
  %145 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom196 = zext i32 %145 to i64
  %arrayidx197 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom196
  %146 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx197, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %146) #7
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.195, %if.end.191
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %147 = load i32, i32* %t, align 4, !tbaa !17
  %inc200 = add i32 %147, 1
  store i32 %inc200, i32* %t, align 4, !tbaa !17
  br label %for.cond.180

for.end.201:                                      ; preds = %for.cond.180
  %148 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %148) #7
  %149 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %OptimizedPrelinMpe, align 8, !tbaa !1
  %call202 = call %struct._cms_curve_struct** @_cmsStageGetPtrToCurveSet(%struct._cmsStage_struct* %149) #7
  store %struct._cms_curve_struct** %call202, %struct._cms_curve_struct*** %OptimizedPrelinCurves, align 8, !tbaa !1
  %150 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %OptimizedCLUTmpe, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %150, i32 0, i32 8
  %151 = load i8*, i8** %Data, align 8, !tbaa !26
  %152 = bitcast i8* %151 to %struct._cmsStageCLutData*
  store %struct._cmsStageCLutData* %152, %struct._cmsStageCLutData** %OptimizedPrelinCLUT, align 8, !tbaa !1
  %153 = load i32*, i32** %InputFormat.addr, align 8, !tbaa !1
  %154 = load i32, i32* %153, align 4, !tbaa !17
  %call203 = call i32 @_cmsFormatterIs8bit(i32 %154) #7
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then.205, label %if.else

if.then.205:                                      ; preds = %for.end.201
  %155 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #2
  %156 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %ContextID206 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %156, i32 0, i32 8
  %157 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID206, align 8, !tbaa !21
  %158 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %OptimizedPrelinCLUT, align 8, !tbaa !1
  %Params = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %158, i32 0, i32 1
  %159 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params, align 8, !tbaa !29
  %160 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %OptimizedPrelinCurves, align 8, !tbaa !1
  %call207 = call %struct.Prelin8Data* @PrelinOpt8alloc(%struct._cmsContext_struct* %157, %struct._cms_interp_struc* %159, %struct._cms_curve_struct** %160) #7
  store %struct.Prelin8Data* %call207, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %161 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %cmp208 = icmp eq %struct.Prelin8Data* %161, null
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.then.205
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.211:                                       ; preds = %if.then.205
  %162 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %163 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %164 = bitcast %struct.Prelin8Data* %163 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %162, void (i16*, i16*, i8*)* @PrelinEval8, i8* %164, void (%struct._cmsContext_struct*, i8*)* @Prelin8free, i8* (%struct._cmsContext_struct*, i8*)* @Prelin8dup) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.211, %if.then.210
  %165 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.265 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.222

if.else:                                          ; preds = %for.end.201
  %166 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #2
  %167 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %ContextID212 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %167, i32 0, i32 8
  %168 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID212, align 8, !tbaa !21
  %169 = load %struct._cmsStageCLutData*, %struct._cmsStageCLutData** %OptimizedPrelinCLUT, align 8, !tbaa !1
  %Params213 = getelementptr inbounds %struct._cmsStageCLutData, %struct._cmsStageCLutData* %169, i32 0, i32 1
  %170 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %Params213, align 8, !tbaa !29
  %171 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %OptimizedPrelinCurves, align 8, !tbaa !1
  %call214 = call %struct.Prelin16Data* @PrelinOpt16alloc(%struct._cmsContext_struct* %168, %struct._cms_interp_struc* %170, i32 3, %struct._cms_curve_struct** %171, i32 3, %struct._cms_curve_struct** null) #7
  store %struct.Prelin16Data* %call214, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %172 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %cmp215 = icmp eq %struct.Prelin16Data* %172, null
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.219

if.end.218:                                       ; preds = %if.else
  %173 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %174 = load %struct.Prelin16Data*, %struct.Prelin16Data** %p16, align 8, !tbaa !1
  %175 = bitcast %struct.Prelin16Data* %174 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %173, void (i16*, i16*, i8*)* @PrelinEval16, i8* %175, void (%struct._cmsContext_struct*, i8*)* @PrelinOpt16free, i8* (%struct._cmsContext_struct*, i8*)* @Prelin16dup) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.219

cleanup.219:                                      ; preds = %if.end.218, %if.then.217
  %176 = bitcast %struct.Prelin16Data** %p16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %cleanup.dest.220 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.220, label %cleanup.265 [
    i32 0, label %cleanup.cont.221
  ]

cleanup.cont.221:                                 ; preds = %cleanup.219
  br label %if.end.222

if.end.222:                                       ; preds = %cleanup.cont.221, %cleanup.cont
  %177 = load i32, i32* %Intent.addr, align 4, !tbaa !17
  %cmp223 = icmp eq i32 %177, 3
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.end.222
  %178 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %179 = load i32, i32* %178, align 4, !tbaa !17
  %or = or i32 %179, 4
  store i32 %or, i32* %178, align 4, !tbaa !17
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %if.end.222
  %180 = load i32*, i32** %dwFlags.addr, align 8, !tbaa !1
  %181 = load i32, i32* %180, align 4, !tbaa !17
  %and227 = and i32 %181, 4
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.end.234, label %if.then.229

if.then.229:                                      ; preds = %if.end.226
  %182 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %183 = load i32, i32* %ColorSpace, align 4, !tbaa !20
  %184 = load i32, i32* %OutputColorSpace, align 4, !tbaa !20
  %call230 = call i32 @FixWhiteMisalignment(%struct._cmsPipeline_struct* %182, i32 %183, i32 %184) #7
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.end.233, label %if.then.232

if.then.232:                                      ; preds = %if.then.229
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.233:                                       ; preds = %if.then.229
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.226
  %185 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %185) #7
  %186 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %187 = load %struct._cmsPipeline_struct**, %struct._cmsPipeline_struct*** %Lut.addr, align 8, !tbaa !1
  store %struct._cmsPipeline_struct* %186, %struct._cmsPipeline_struct** %187, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

Error:                                            ; preds = %if.then.178, %if.then.174, %if.then.166, %if.then.158, %if.then.151, %if.then.143, %if.then.135, %if.then.119, %if.then.42
  store i32 0, i32* %t, align 4, !tbaa !17
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.254, %Error
  %188 = load i32, i32* %t, align 4, !tbaa !17
  %189 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OriginalLut, align 8, !tbaa !1
  %InputChannels236 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %189, i32 0, i32 1
  %190 = load i32, i32* %InputChannels236, align 4, !tbaa !22
  %cmp237 = icmp ult i32 %188, %190
  br i1 %cmp237, label %for.body.239, label %for.end.256

for.body.239:                                     ; preds = %for.cond.235
  %191 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom240 = zext i32 %191 to i64
  %arrayidx241 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom240
  %192 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx241, align 8, !tbaa !1
  %tobool242 = icmp ne %struct._cms_curve_struct* %192, null
  br i1 %tobool242, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %for.body.239
  %193 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom244 = zext i32 %193 to i64
  %arrayidx245 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %Trans, i32 0, i64 %idxprom244
  %194 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx245, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %194) #7
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.243, %for.body.239
  %195 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom247 = zext i32 %195 to i64
  %arrayidx248 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom247
  %196 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx248, align 8, !tbaa !1
  %tobool249 = icmp ne %struct._cms_curve_struct* %196, null
  br i1 %tobool249, label %if.then.250, label %if.end.253

if.then.250:                                      ; preds = %if.end.246
  %197 = load i32, i32* %t, align 4, !tbaa !17
  %idxprom251 = zext i32 %197 to i64
  %arrayidx252 = getelementptr inbounds [16 x %struct._cms_curve_struct*], [16 x %struct._cms_curve_struct*]* %TransReverse, i32 0, i64 %idxprom251
  %198 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx252, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %198) #7
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.250, %if.end.246
  br label %for.inc.254

for.inc.254:                                      ; preds = %if.end.253
  %199 = load i32, i32* %t, align 4, !tbaa !17
  %inc255 = add i32 %199, 1
  store i32 %inc255, i32* %t, align 4, !tbaa !17
  br label %for.cond.235

for.end.256:                                      ; preds = %for.cond.235
  %200 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  %cmp257 = icmp ne %struct._cmsPipeline_struct* %200, null
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %for.end.256
  %201 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %LutPlusCurves, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %201) #7
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %for.end.256
  %202 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  %cmp261 = icmp ne %struct._cmsPipeline_struct* %202, null
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.260
  %203 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %OptimizedLUT, align 8, !tbaa !1
  call void @cmsPipelineFree(%struct._cmsPipeline_struct* %203) #7
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %if.end.260
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

cleanup.265:                                      ; preds = %if.end.264, %if.end.234, %if.then.232, %cleanup.219, %cleanup, %if.then.22, %if.then.15, %if.then.8, %if.then.3, %if.then
  %204 = bitcast %struct._cmsStageCLutData** %OptimizedPrelinCLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #2
  %205 = bitcast %struct._cms_curve_struct*** %OptimizedPrelinCurves to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  %206 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #2
  %207 = bitcast %struct._cmsStage_struct** %OptimizedPrelinMpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #2
  %208 = bitcast i32* %OutputColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #2
  %209 = bitcast i32* %ColorSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #2
  %210 = bitcast %struct._cmsStage_struct** %OptimizedCLUTmpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #2
  %211 = bitcast %struct._cmsPipeline_struct** %LutPlusCurves to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #2
  %212 = bitcast %struct._cmsPipeline_struct** %OptimizedLUT to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #2
  %213 = bitcast i32* %lIsLinear to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #2
  %214 = bitcast i32* %lIsSuitable to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #2
  %215 = bitcast [16 x float]* %Out to i8*
  call void @llvm.lifetime.end(i64 64, i8* %215) #2
  %216 = bitcast [16 x float]* %In to i8*
  call void @llvm.lifetime.end(i64 64, i8* %216) #2
  %217 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #2
  %218 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #2
  %219 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #2
  %220 = bitcast [16 x %struct._cms_curve_struct*]* %TransReverse to i8*
  call void @llvm.lifetime.end(i64 128, i8* %220) #2
  %221 = bitcast [16 x %struct._cms_curve_struct*]* %Trans to i8*
  call void @llvm.lifetime.end(i64 128, i8* %221) #2
  %222 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #2
  %223 = bitcast %struct._cmsPipeline_struct** %OriginalLut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #2
  %224 = load i32, i32* %retval
  ret i32 %224
}

declare %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct*, i32, i16*) #1

declare %struct._cmsStage_struct* @cmsStageAllocToneCurves(%struct._cmsContext_struct*, i32, %struct._cms_curve_struct**) #1

declare i32 @_cmsFormatterIs8bit(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.Curves16Data* @CurvesAlloc(%struct._cmsContext_struct* %ContextID, i32 %nCurves, i32 %nElements, %struct._cms_curve_struct** %G) #0 {
entry:
  %retval = alloca %struct.Curves16Data*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nCurves.addr = alloca i32, align 4
  %nElements.addr = alloca i32, align 4
  %G.addr = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c16 = alloca %struct.Curves16Data*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nCurves, i32* %nCurves.addr, align 4, !tbaa !17
  store i32 %nElements, i32* %nElements.addr, align 4, !tbaa !17
  store %struct._cms_curve_struct** %G, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.Curves16Data** %c16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %3, i32 24) #7
  %4 = bitcast i8* %call to %struct.Curves16Data*
  store %struct.Curves16Data* %4, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %5 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %cmp = icmp eq %struct.Curves16Data* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Curves16Data* null, %struct.Curves16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %nCurves.addr, align 4, !tbaa !17
  %7 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %nCurves1 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %7, i32 0, i32 1
  store i32 %6, i32* %nCurves1, align 4, !tbaa !54
  %8 = load i32, i32* %nElements.addr, align 4, !tbaa !17
  %9 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %nElements2 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %9, i32 0, i32 2
  store i32 %8, i32* %nElements2, align 4, !tbaa !56
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %11 = load i32, i32* %nCurves.addr, align 4, !tbaa !17
  %call3 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %10, i32 %11, i32 8) #7
  %12 = bitcast i8* %call3 to i16**
  %13 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %13, i32 0, i32 3
  store i16** %12, i16*** %Curves, align 8, !tbaa !57
  %14 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves4 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %14, i32 0, i32 3
  %15 = load i16**, i16*** %Curves4, align 8, !tbaa !57
  %cmp5 = icmp eq i16** %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store %struct.Curves16Data* null, %struct.Curves16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.7
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %17 = load i32, i32* %nCurves.addr, align 4, !tbaa !17
  %cmp8 = icmp slt i32 %16, %17
  br i1 %cmp8, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %19 = load i32, i32* %nElements.addr, align 4, !tbaa !17
  %call9 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %18, i32 %19, i32 2) #7
  %20 = bitcast i8* %call9 to i16*
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves10 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %22, i32 0, i32 3
  %23 = load i16**, i16*** %Curves10, align 8, !tbaa !57
  %arrayidx = getelementptr inbounds i16*, i16** %23, i64 %idxprom
  store i16* %20, i16** %arrayidx, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves12 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %25, i32 0, i32 3
  %26 = load i16**, i16*** %Curves12, align 8, !tbaa !57
  %arrayidx13 = getelementptr inbounds i16*, i16** %26, i64 %idxprom11
  %27 = load i16*, i16** %arrayidx13, align 8, !tbaa !1
  %cmp14 = icmp eq i16* %27, null
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.15
  %28 = load i32, i32* %j, align 4, !tbaa !17
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %cmp17 = icmp slt i32 %28, %29
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %31 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves20 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %32, i32 0, i32 3
  %33 = load i16**, i16*** %Curves20, align 8, !tbaa !57
  %arrayidx21 = getelementptr inbounds i16*, i16** %33, i64 %idxprom19
  %34 = load i16*, i16** %arrayidx21, align 8, !tbaa !1
  %35 = bitcast i16* %34 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %30, i8* %35) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %36 = load i32, i32* %j, align 4, !tbaa !17
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4, !tbaa !17
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %38 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves22 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %38, i32 0, i32 3
  %39 = load i16**, i16*** %Curves22, align 8, !tbaa !57
  %40 = bitcast i16** %39 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %37, i8* %40) #7
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %42 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %43 = bitcast %struct.Curves16Data* %42 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %41, i8* %43) #7
  store %struct.Curves16Data* null, %struct.Curves16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %for.body
  %44 = load i32, i32* %nElements.addr, align 4, !tbaa !17
  %cmp24 = icmp eq i32 %44, 256
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.39, %if.then.25
  %45 = load i32, i32* %j, align 4, !tbaa !17
  %46 = load i32, i32* %nElements.addr, align 4, !tbaa !17
  %cmp27 = icmp slt i32 %45, %46
  br i1 %cmp27, label %for.body.28, label %for.end.41

for.body.28:                                      ; preds = %for.cond.26
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom29 = sext i32 %47 to i64
  %48 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %48, i64 %idxprom29
  %49 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx30, align 8, !tbaa !1
  %50 = load i32, i32* %j, align 4, !tbaa !17
  %conv = trunc i32 %50 to i16
  %conv31 = zext i16 %conv to i32
  %shl = shl i32 %conv31, 8
  %51 = load i32, i32* %j, align 4, !tbaa !17
  %or = or i32 %shl, %51
  %conv32 = trunc i32 %or to i16
  %call33 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %49, i16 zeroext %conv32) #7
  %52 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom34 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom35 = sext i32 %53 to i64
  %54 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves36 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %54, i32 0, i32 3
  %55 = load i16**, i16*** %Curves36, align 8, !tbaa !57
  %arrayidx37 = getelementptr inbounds i16*, i16** %55, i64 %idxprom35
  %56 = load i16*, i16** %arrayidx37, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %56, i64 %idxprom34
  store i16 %call33, i16* %arrayidx38, align 2, !tbaa !31
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.28
  %57 = load i32, i32* %j, align 4, !tbaa !17
  %inc40 = add nsw i32 %57, 1
  store i32 %inc40, i32* %j, align 4, !tbaa !17
  br label %for.cond.26

for.end.41:                                       ; preds = %for.cond.26
  br label %if.end.58

if.else:                                          ; preds = %if.end.23
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.55, %if.else
  %58 = load i32, i32* %j, align 4, !tbaa !17
  %59 = load i32, i32* %nElements.addr, align 4, !tbaa !17
  %cmp43 = icmp slt i32 %58, %59
  br i1 %cmp43, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.42
  %60 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %61, i64 %idxprom46
  %62 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx47, align 8, !tbaa !1
  %63 = load i32, i32* %j, align 4, !tbaa !17
  %conv48 = trunc i32 %63 to i16
  %call49 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %62, i16 zeroext %conv48) #7
  %64 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom50 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom51 = sext i32 %65 to i64
  %66 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  %Curves52 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %66, i32 0, i32 3
  %67 = load i16**, i16*** %Curves52, align 8, !tbaa !57
  %arrayidx53 = getelementptr inbounds i16*, i16** %67, i64 %idxprom51
  %68 = load i16*, i16** %arrayidx53, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i16, i16* %68, i64 %idxprom50
  store i16 %call49, i16* %arrayidx54, align 2, !tbaa !31
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.45
  %69 = load i32, i32* %j, align 4, !tbaa !17
  %inc56 = add nsw i32 %69, 1
  store i32 %inc56, i32* %j, align 4, !tbaa !17
  br label %for.cond.42

for.end.57:                                       ; preds = %for.cond.42
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end.41
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %70 = load i32, i32* %i, align 4, !tbaa !17
  %inc60 = add nsw i32 %70, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %71 = load %struct.Curves16Data*, %struct.Curves16Data** %c16, align 8, !tbaa !1
  store %struct.Curves16Data* %71, %struct.Curves16Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.61, %for.end, %if.then.6, %if.then
  %72 = bitcast %struct.Curves16Data** %c16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = load %struct.Curves16Data*, %struct.Curves16Data** %retval
  ret %struct.Curves16Data* %75
}

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateCurves8(i16* %In, i16* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %Data = alloca %struct.Curves16Data*, align 8
  %x = alloca i8, align 1
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Curves16Data*
  store %struct.Curves16Data* %2, %struct.Curves16Data** %Data, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %x) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %5 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %5, i32 0, i32 1
  %6 = load i32, i32* %nCurves, align 4, !tbaa !54
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %9 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i8
  store i8 %conv1, i8* %x, align 1, !tbaa !20
  %10 = load i8, i8* %x, align 1, !tbaa !20
  %idxprom2 = zext i8 %10 to i64
  %11 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %12, i32 0, i32 3
  %13 = load i16**, i16*** %Curves, align 8, !tbaa !57
  %arrayidx4 = getelementptr inbounds i16*, i16** %13, i64 %idxprom3
  %14 = load i16*, i16** %arrayidx4, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %14, i64 %idxprom2
  %15 = load i16, i16* %arrayidx5, align 2, !tbaa !31
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %16 to i64
  %17 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %17, i64 %idxprom6
  store i16 %15, i16* %arrayidx7, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  call void @llvm.lifetime.end(i64 1, i8* %x) #2
  %20 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CurvesFree(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %Data = alloca %struct.Curves16Data*, align 8
  %i = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Curves16Data*
  store %struct.Curves16Data* %2, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %5 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %5, i32 0, i32 1
  %6 = load i32, i32* %nCurves, align 4, !tbaa !54
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %9, i32 0, i32 3
  %10 = load i16**, i16*** %Curves, align 8, !tbaa !57
  %arrayidx = getelementptr inbounds i16*, i16** %10, i64 %idxprom
  %11 = load i16*, i16** %arrayidx, align 8, !tbaa !1
  %12 = bitcast i16* %11 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %7, i8* %12) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %15 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves1 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %15, i32 0, i32 3
  %16 = load i16**, i16*** %Curves1, align 8, !tbaa !57
  %17 = bitcast i16** %16 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %14, i8* %17) #7
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %18, i8* %19) #7
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @CurvesDup(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  %Data = alloca %struct.Curves16Data*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call = call i8* @_cmsDupMem(%struct._cmsContext_struct* %1, i8* %2, i32 24) #7
  %3 = bitcast i8* %call to %struct.Curves16Data*
  store %struct.Curves16Data* %3, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %cmp = icmp eq %struct.Curves16Data* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %7, i32 0, i32 3
  %8 = load i16**, i16*** %Curves, align 8, !tbaa !57
  %9 = bitcast i16** %8 to i8*
  %10 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %10, i32 0, i32 1
  %11 = load i32, i32* %nCurves, align 4, !tbaa !54
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %6, i8* %9, i32 %conv1) #7
  %12 = bitcast i8* %call2 to i16**
  %13 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves3 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %13, i32 0, i32 3
  store i16** %12, i16*** %Curves3, align 8, !tbaa !57
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !17
  %15 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nCurves4 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %15, i32 0, i32 1
  %16 = load i32, i32* %nCurves4, align 4, !tbaa !54
  %cmp5 = icmp slt i32 %14, %16
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves7 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %19, i32 0, i32 3
  %20 = load i16**, i16*** %Curves7, align 8, !tbaa !57
  %arrayidx = getelementptr inbounds i16*, i16** %20, i64 %idxprom
  %21 = load i16*, i16** %arrayidx, align 8, !tbaa !1
  %22 = bitcast i16* %21 to i8*
  %23 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nElements = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %23, i32 0, i32 2
  %24 = load i32, i32* %nElements, align 4, !tbaa !56
  %conv8 = sext i32 %24 to i64
  %mul9 = mul i64 %conv8, 2
  %conv10 = trunc i64 %mul9 to i32
  %call11 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %17, i8* %22, i32 %conv10) #7
  %25 = bitcast i8* %call11 to i16*
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom12 = sext i32 %26 to i64
  %27 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves13 = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %27, i32 0, i32 3
  %28 = load i16**, i16*** %Curves13, align 8, !tbaa !57
  %arrayidx14 = getelementptr inbounds i16*, i16** %28, i64 %idxprom12
  store i16* %25, i16** %arrayidx14, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %31 = bitcast %struct.Curves16Data* %30 to i8*
  store i8* %31, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare i8* @cmsStageData(%struct._cmsStage_struct*) #1

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateCurves16(i16* %In, i16* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %Data = alloca %struct.Curves16Data*, align 8
  %i = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.Curves16Data*
  store %struct.Curves16Data* %2, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %5 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %nCurves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %5, i32 0, i32 1
  %6 = load i32, i32* %nCurves, align 4, !tbaa !54
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %7 to i64
  %8 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %idxprom1 = zext i16 %9 to i64
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.Curves16Data*, %struct.Curves16Data** %Data, align 8, !tbaa !1
  %Curves = getelementptr inbounds %struct.Curves16Data, %struct.Curves16Data* %11, i32 0, i32 3
  %12 = load i16**, i16*** %Curves, align 8, !tbaa !57
  %arrayidx3 = getelementptr inbounds i16*, i16** %12, i64 %idxprom2
  %13 = load i16*, i16** %arrayidx3, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %13, i64 %idxprom1
  %14 = load i16, i16* %arrayidx4, align 2, !tbaa !31
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom5 = sext i32 %15 to i64
  %16 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %16, i64 %idxprom5
  store i16 %14, i16* %arrayidx6, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast %struct.Curves16Data** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  ret void
}

declare %struct._cmsStage_struct* @cmsStageAllocIdentity(%struct._cmsContext_struct*, i32) #1

declare void @_cmsMAT3per(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsMAT3*) #1

declare i32 @_cmsMAT3isIdentity(%struct.cmsMAT3*) #1

declare %struct._cmsStage_struct* @cmsStageAllocMatrix(%struct._cmsContext_struct*, i32, i32, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal i32 @SetMatShaper(%struct._cmsPipeline_struct* %Dest, %struct._cms_curve_struct** %Curve1, %struct.cmsMAT3* %Mat, %struct.cmsVEC3* %Off, %struct._cms_curve_struct** %Curve2, i32* %OutputFormat) #0 {
entry:
  %retval = alloca i32, align 4
  %Dest.addr = alloca %struct._cmsPipeline_struct*, align 8
  %Curve1.addr = alloca %struct._cms_curve_struct**, align 8
  %Mat.addr = alloca %struct.cmsMAT3*, align 8
  %Off.addr = alloca %struct.cmsVEC3*, align 8
  %Curve2.addr = alloca %struct._cms_curve_struct**, align 8
  %OutputFormat.addr = alloca i32*, align 8
  %p = alloca %struct.MatShaper8Data*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Is8Bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsPipeline_struct* %Dest, %struct._cmsPipeline_struct** %Dest.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %Curve1, %struct._cms_curve_struct*** %Curve1.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %Mat, %struct.cmsMAT3** %Mat.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %Off, %struct.cmsVEC3** %Off.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %Curve2, %struct._cms_curve_struct*** %Curve2.addr, align 8, !tbaa !1
  store i32* %OutputFormat, i32** %OutputFormat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.MatShaper8Data** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %Is8Bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !17
  %call = call i32 @_cmsFormatterIs8bit(i32 %5) #7
  store i32 %call, i32* %Is8Bits, align 4, !tbaa !17
  %6 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %6, i32 0, i32 8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %call1 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %7, i32 101440) #7
  %8 = bitcast i8* %call1 to %struct.MatShaper8Data*
  store %struct.MatShaper8Data* %8, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %9 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %cmp = icmp eq %struct.MatShaper8Data* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest.addr, align 8, !tbaa !1
  %ContextID2 = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %10, i32 0, i32 8
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID2, align 8, !tbaa !21
  %12 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %ContextID3 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %12, i32 0, i32 0
  store %struct._cmsContext_struct* %11, %struct._cmsContext_struct** %ContextID3, align 8, !tbaa !58
  %13 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1R = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %13, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1R, i32 0, i32 0
  %14 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve1.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %14, i64 0
  %15 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  call void @FillFirstShaper(i32* %arraydecay, %struct._cms_curve_struct* %15) #7
  %16 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1G = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %16, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1G, i32 0, i32 0
  %17 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve1.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %17, i64 1
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx5, align 8, !tbaa !1
  call void @FillFirstShaper(i32* %arraydecay4, %struct._cms_curve_struct* %18) #7
  %19 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1B = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %19, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1B, i32 0, i32 0
  %20 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve1.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %20, i64 2
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx7, align 8, !tbaa !1
  call void @FillFirstShaper(i32* %arraydecay6, %struct._cms_curve_struct* %21) #7
  %22 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2R = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %22, i32 0, i32 6
  %arraydecay8 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2R, i32 0, i32 0
  %23 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve2.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %23, i64 0
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx9, align 8, !tbaa !1
  %25 = load i32, i32* %Is8Bits, align 4, !tbaa !17
  call void @FillSecondShaper(i16* %arraydecay8, %struct._cms_curve_struct* %24, i32 %25) #7
  %26 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2G = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %26, i32 0, i32 7
  %arraydecay10 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2G, i32 0, i32 0
  %27 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve2.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %27, i64 1
  %28 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx11, align 8, !tbaa !1
  %29 = load i32, i32* %Is8Bits, align 4, !tbaa !17
  call void @FillSecondShaper(i16* %arraydecay10, %struct._cms_curve_struct* %28, i32 %29) #7
  %30 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2B = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %30, i32 0, i32 8
  %arraydecay12 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2B, i32 0, i32 0
  %31 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve2.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %31, i64 2
  %32 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx13, align 8, !tbaa !1
  %33 = load i32, i32* %Is8Bits, align 4, !tbaa !17
  call void @FillSecondShaper(i16* %arraydecay12, %struct._cms_curve_struct* %32, i32 %33) #7
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %34 = load i32, i32* %i, align 4, !tbaa !17
  %cmp14 = icmp slt i32 %34, 3
  br i1 %cmp14, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !17
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %j, align 4, !tbaa !17
  %cmp16 = icmp slt i32 %35, 3
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %36 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom18 = sext i32 %37 to i64
  %38 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Mat.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %38, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 %idxprom18
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx19, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom
  %39 = load double, double* %arrayidx20, align 8, !tbaa !46
  %mul = fmul double %39, 1.638400e+04
  %add = fadd double %mul, 5.000000e-01
  %call21 = call double @floor(double %add) #9
  %conv = fptosi double %call21 to i32
  %40 = load i32, i32* %j, align 4, !tbaa !17
  %idxprom22 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom23 = sext i32 %41 to i64
  %42 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat24 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %42, i32 0, i32 4
  %arrayidx25 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat24, i32 0, i64 %idxprom23
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx25, i32 0, i64 %idxprom22
  store i32 %conv, i32* %arrayidx26, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %43 = load i32, i32* %j, align 4, !tbaa !17
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %j, align 4, !tbaa !17
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %44 = load i32, i32* %i, align 4, !tbaa !17
  %inc28 = add nsw i32 %44, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.51, %for.end.29
  %45 = load i32, i32* %i, align 4, !tbaa !17
  %cmp31 = icmp slt i32 %45, 3
  br i1 %cmp31, label %for.body.33, label %for.end.53

for.body.33:                                      ; preds = %for.cond.30
  %46 = load %struct.cmsVEC3*, %struct.cmsVEC3** %Off.addr, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.cmsVEC3* %46, null
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.33
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom37 = sext i32 %47 to i64
  %48 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Off38 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %48, i32 0, i32 5
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %Off38, i32 0, i64 %idxprom37
  store i32 0, i32* %arrayidx39, align 4, !tbaa !17
  br label %if.end.50

if.else:                                          ; preds = %for.body.33
  %49 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom40 = sext i32 %49 to i64
  %50 = load %struct.cmsVEC3*, %struct.cmsVEC3** %Off.addr, align 8, !tbaa !1
  %n41 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %50, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %n41, i32 0, i64 %idxprom40
  %51 = load double, double* %arrayidx42, align 8, !tbaa !46
  %mul43 = fmul double %51, 1.638400e+04
  %add44 = fadd double %mul43, 5.000000e-01
  %call45 = call double @floor(double %add44) #9
  %conv46 = fptosi double %call45 to i32
  %52 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom47 = sext i32 %52 to i64
  %53 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Off48 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %53, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %Off48, i32 0, i64 %idxprom47
  store i32 %conv46, i32* %arrayidx49, align 4, !tbaa !17
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.36
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !17
  br label %for.cond.30

for.end.53:                                       ; preds = %for.cond.30
  %55 = load i32, i32* %Is8Bits, align 4, !tbaa !17
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.end.53
  %56 = load i32*, i32** %OutputFormat.addr, align 8, !tbaa !1
  %57 = load i32, i32* %56, align 4, !tbaa !17
  %or = or i32 %57, 2097152
  store i32 %or, i32* %56, align 4, !tbaa !17
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %for.end.53
  %58 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Dest.addr, align 8, !tbaa !1
  %59 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %60 = bitcast %struct.MatShaper8Data* %59 to i8*
  call void @_cmsPipelineSetOptimizationParameters(%struct._cmsPipeline_struct* %58, void (i16*, i16*, i8*)* @MatShaperEval16, i8* %60, void (%struct._cmsContext_struct*, i8*)* @FreeMatShaper, i8* (%struct._cmsContext_struct*, i8*)* @DupMatShaper) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then
  %61 = bitcast i32* %Is8Bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast %struct.MatShaper8Data** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @FillFirstShaper(i32* %Table, %struct._cms_curve_struct* %Curve) #0 {
entry:
  %Table.addr = alloca i32*, align 8
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %R = alloca float, align 4
  %y = alloca float, align 4
  store i32* %Table, i32** %Table.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !17
  %cmp = icmp slt i32 %3, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %conv = sitofp i32 %4 to double
  %div = fdiv double %conv, 2.550000e+02
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %R, align 4, !tbaa !35
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %6 = load float, float* %R, align 4, !tbaa !35
  %call = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %5, float %6) #7
  store float %call, float* %y, align 4, !tbaa !35
  %7 = load float, float* %y, align 4, !tbaa !35
  %conv2 = fpext float %7 to double
  %mul = fmul double %conv2, 1.638400e+04
  %add = fadd double %mul, 5.000000e-01
  %call3 = call double @floor(double %add) #9
  %conv4 = fptosi double %call3 to i32
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %Table.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 %conv4, i32* %arrayidx, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast float* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast float* %R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FillSecondShaper(i16* %Table, %struct._cms_curve_struct* %Curve, i32 %Is8BitsOutput) #0 {
entry:
  %Table.addr = alloca i16*, align 8
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %Is8BitsOutput.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %R = alloca float, align 4
  %Val = alloca float, align 4
  %w = alloca i16, align 2
  %b = alloca i8, align 1
  store i16* %Table, i16** %Table.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  store i32 %Is8BitsOutput, i32* %Is8BitsOutput.addr, align 4, !tbaa !17
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast float* %R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast float* %Val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !17
  %cmp = icmp slt i32 %3, 16385
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !17
  %conv = sitofp i32 %4 to double
  %div = fdiv double %conv, 1.638400e+04
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %R, align 4, !tbaa !35
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %6 = load float, float* %R, align 4, !tbaa !35
  %call = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %5, float %6) #7
  store float %call, float* %Val, align 4, !tbaa !35
  %7 = load i32, i32* %Is8BitsOutput.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = bitcast i16* %w to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load float, float* %Val, align 4, !tbaa !35
  %conv2 = fpext float %9 to double
  %mul = fmul double %conv2, 6.553500e+04
  %call3 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  store i16 %call3, i16* %w, align 2, !tbaa !31
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %10 = load i16, i16* %w, align 2, !tbaa !31
  %conv4 = zext i16 %10 to i32
  %mul5 = mul nsw i32 %conv4, 65281
  %add = add nsw i32 %mul5, 8388608
  %shr = ashr i32 %add, 24
  %and = and i32 %shr, 255
  %conv6 = trunc i32 %and to i8
  store i8 %conv6, i8* %b, align 1, !tbaa !20
  %11 = load i8, i8* %b, align 1, !tbaa !20
  %conv7 = zext i8 %11 to i16
  %conv8 = zext i16 %conv7 to i32
  %shl = shl i32 %conv8, 8
  %12 = load i8, i8* %b, align 1, !tbaa !20
  %conv9 = zext i8 %12 to i32
  %or = or i32 %shl, %conv9
  %conv10 = trunc i32 %or to i16
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %13 to i64
  %14 = load i16*, i16** %Table.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  store i16 %conv10, i16* %arrayidx, align 2, !tbaa !31
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  %15 = bitcast i16* %w to i8*
  call void @llvm.lifetime.end(i64 2, i8* %15) #2
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load float, float* %Val, align 4, !tbaa !35
  %conv11 = fpext float %16 to double
  %mul12 = fmul double %conv11, 6.553500e+04
  %call13 = call zeroext i16 @_cmsQuickSaturateWord(double %mul12) #7
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom14 = sext i32 %17 to i64
  %18 = load i16*, i16** %Table.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %18, i64 %idxprom14
  store i16 %call13, i16* %arrayidx15, align 2, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast float* %Val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast float* %R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MatShaperEval16(i16* %In, i16* %Out, i8* %D) #0 {
entry:
  %In.addr = alloca i16*, align 8
  %Out.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %p = alloca %struct.MatShaper8Data*, align 8
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %l3 = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %ri = alloca i32, align 4
  %gi = alloca i32, align 4
  %bi = alloca i32, align 4
  store i16* %In, i16** %In.addr, align 8, !tbaa !1
  store i16* %Out, i16** %Out.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  %0 = bitcast %struct.MatShaper8Data** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.MatShaper8Data*
  store %struct.MatShaper8Data* %2, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %3 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %l2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %l3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %ri, align 4, !tbaa !17
  %14 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %14, i64 1
  %15 = load i16, i16* %arrayidx1, align 2, !tbaa !31
  %conv2 = zext i16 %15 to i32
  %and3 = and i32 %conv2, 255
  store i32 %and3, i32* %gi, align 4, !tbaa !17
  %16 = load i16*, i16** %In.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %16, i64 2
  %17 = load i16, i16* %arrayidx4, align 2, !tbaa !31
  %conv5 = zext i16 %17 to i32
  %and6 = and i32 %conv5, 255
  store i32 %and6, i32* %bi, align 4, !tbaa !17
  %18 = load i32, i32* %ri, align 4, !tbaa !17
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1R = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %19, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1R, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx7, align 4, !tbaa !17
  store i32 %20, i32* %r, align 4, !tbaa !17
  %21 = load i32, i32* %gi, align 4, !tbaa !17
  %idxprom8 = zext i32 %21 to i64
  %22 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1G = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %22, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1G, i32 0, i64 %idxprom8
  %23 = load i32, i32* %arrayidx9, align 4, !tbaa !17
  store i32 %23, i32* %g, align 4, !tbaa !17
  %24 = load i32, i32* %bi, align 4, !tbaa !17
  %idxprom10 = zext i32 %24 to i64
  %25 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper1B = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %25, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %Shaper1B, i32 0, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !17
  store i32 %26, i32* %b, align 4, !tbaa !17
  %27 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %27, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 0
  %28 = load i32, i32* %arrayidx13, align 4, !tbaa !17
  %29 = load i32, i32* %r, align 4, !tbaa !17
  %mul = mul nsw i32 %28, %29
  %30 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat14 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %30, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat14, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i32 0, i64 1
  %31 = load i32, i32* %arrayidx16, align 4, !tbaa !17
  %32 = load i32, i32* %g, align 4, !tbaa !17
  %mul17 = mul nsw i32 %31, %32
  %add = add nsw i32 %mul, %mul17
  %33 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat18 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %33, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx19, i32 0, i64 2
  %34 = load i32, i32* %arrayidx20, align 4, !tbaa !17
  %35 = load i32, i32* %b, align 4, !tbaa !17
  %mul21 = mul nsw i32 %34, %35
  %add22 = add nsw i32 %add, %mul21
  %36 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Off = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %36, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %Off, i32 0, i64 0
  %37 = load i32, i32* %arrayidx23, align 4, !tbaa !17
  %add24 = add nsw i32 %add22, %37
  %add25 = add nsw i32 %add24, 8192
  %shr = ashr i32 %add25, 14
  store i32 %shr, i32* %l1, align 4, !tbaa !17
  %38 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat26 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %38, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat26, i32 0, i64 1
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 0
  %39 = load i32, i32* %arrayidx28, align 4, !tbaa !17
  %40 = load i32, i32* %r, align 4, !tbaa !17
  %mul29 = mul nsw i32 %39, %40
  %41 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat30 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %41, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat30, i32 0, i64 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx31, i32 0, i64 1
  %42 = load i32, i32* %arrayidx32, align 4, !tbaa !17
  %43 = load i32, i32* %g, align 4, !tbaa !17
  %mul33 = mul nsw i32 %42, %43
  %add34 = add nsw i32 %mul29, %mul33
  %44 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat35 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %44, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat35, i32 0, i64 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx36, i32 0, i64 2
  %45 = load i32, i32* %arrayidx37, align 4, !tbaa !17
  %46 = load i32, i32* %b, align 4, !tbaa !17
  %mul38 = mul nsw i32 %45, %46
  %add39 = add nsw i32 %add34, %mul38
  %47 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Off40 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %47, i32 0, i32 5
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %Off40, i32 0, i64 1
  %48 = load i32, i32* %arrayidx41, align 4, !tbaa !17
  %add42 = add nsw i32 %add39, %48
  %add43 = add nsw i32 %add42, 8192
  %shr44 = ashr i32 %add43, 14
  store i32 %shr44, i32* %l2, align 4, !tbaa !17
  %49 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat45 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %49, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat45, i32 0, i64 2
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 0
  %50 = load i32, i32* %arrayidx47, align 4, !tbaa !17
  %51 = load i32, i32* %r, align 4, !tbaa !17
  %mul48 = mul nsw i32 %50, %51
  %52 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat49 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %52, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat49, i32 0, i64 2
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx50, i32 0, i64 1
  %53 = load i32, i32* %arrayidx51, align 4, !tbaa !17
  %54 = load i32, i32* %g, align 4, !tbaa !17
  %mul52 = mul nsw i32 %53, %54
  %add53 = add nsw i32 %mul48, %mul52
  %55 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Mat54 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %55, i32 0, i32 4
  %arrayidx55 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %Mat54, i32 0, i64 2
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx55, i32 0, i64 2
  %56 = load i32, i32* %arrayidx56, align 4, !tbaa !17
  %57 = load i32, i32* %b, align 4, !tbaa !17
  %mul57 = mul nsw i32 %56, %57
  %add58 = add nsw i32 %add53, %mul57
  %58 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Off59 = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %58, i32 0, i32 5
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %Off59, i32 0, i64 2
  %59 = load i32, i32* %arrayidx60, align 4, !tbaa !17
  %add61 = add nsw i32 %add58, %59
  %add62 = add nsw i32 %add61, 8192
  %shr63 = ashr i32 %add62, 14
  store i32 %shr63, i32* %l3, align 4, !tbaa !17
  %60 = load i32, i32* %l1, align 4, !tbaa !17
  %cmp = icmp slt i32 %60, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.69

cond.false:                                       ; preds = %entry
  %61 = load i32, i32* %l1, align 4, !tbaa !17
  %cmp65 = icmp sgt i32 %61, 16384
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false
  br label %cond.end

cond.false.68:                                    ; preds = %cond.false
  %62 = load i32, i32* %l1, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.67
  %cond = phi i32 [ 16384, %cond.true.67 ], [ %62, %cond.false.68 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end, %cond.true
  %cond70 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond70, i32* %ri, align 4, !tbaa !17
  %63 = load i32, i32* %l2, align 4, !tbaa !17
  %cmp71 = icmp slt i32 %63, 0
  br i1 %cmp71, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.end.69
  br label %cond.end.81

cond.false.74:                                    ; preds = %cond.end.69
  %64 = load i32, i32* %l2, align 4, !tbaa !17
  %cmp75 = icmp sgt i32 %64, 16384
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %cond.false.74
  br label %cond.end.79

cond.false.78:                                    ; preds = %cond.false.74
  %65 = load i32, i32* %l2, align 4, !tbaa !17
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.77
  %cond80 = phi i32 [ 16384, %cond.true.77 ], [ %65, %cond.false.78 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end.79, %cond.true.73
  %cond82 = phi i32 [ 0, %cond.true.73 ], [ %cond80, %cond.end.79 ]
  store i32 %cond82, i32* %gi, align 4, !tbaa !17
  %66 = load i32, i32* %l3, align 4, !tbaa !17
  %cmp83 = icmp slt i32 %66, 0
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.end.81
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.end.81
  %67 = load i32, i32* %l3, align 4, !tbaa !17
  %cmp87 = icmp sgt i32 %67, 16384
  br i1 %cmp87, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false.86
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.false.86
  %68 = load i32, i32* %l3, align 4, !tbaa !17
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ 16384, %cond.true.89 ], [ %68, %cond.false.90 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.85
  %cond94 = phi i32 [ 0, %cond.true.85 ], [ %cond92, %cond.end.91 ]
  store i32 %cond94, i32* %bi, align 4, !tbaa !17
  %69 = load i32, i32* %ri, align 4, !tbaa !17
  %idxprom95 = zext i32 %69 to i64
  %70 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2R = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %70, i32 0, i32 6
  %arrayidx96 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2R, i32 0, i64 %idxprom95
  %71 = load i16, i16* %arrayidx96, align 2, !tbaa !31
  %72 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i16, i16* %72, i64 0
  store i16 %71, i16* %arrayidx97, align 2, !tbaa !31
  %73 = load i32, i32* %gi, align 4, !tbaa !17
  %idxprom98 = zext i32 %73 to i64
  %74 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2G = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %74, i32 0, i32 7
  %arrayidx99 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2G, i32 0, i64 %idxprom98
  %75 = load i16, i16* %arrayidx99, align 2, !tbaa !31
  %76 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i16, i16* %76, i64 1
  store i16 %75, i16* %arrayidx100, align 2, !tbaa !31
  %77 = load i32, i32* %bi, align 4, !tbaa !17
  %idxprom101 = zext i32 %77 to i64
  %78 = load %struct.MatShaper8Data*, %struct.MatShaper8Data** %p, align 8, !tbaa !1
  %Shaper2B = getelementptr inbounds %struct.MatShaper8Data, %struct.MatShaper8Data* %78, i32 0, i32 8
  %arrayidx102 = getelementptr inbounds [16385 x i16], [16385 x i16]* %Shaper2B, i32 0, i64 %idxprom101
  %79 = load i16, i16* %arrayidx102, align 2, !tbaa !31
  %80 = load i16*, i16** %Out.addr, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i16, i16* %80, i64 2
  store i16 %79, i16* %arrayidx103, align 2, !tbaa !31
  %81 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %gi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %ri to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %l3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %l2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast i32* %l1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast %struct.MatShaper8Data** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FreeMatShaper(%struct._cmsContext_struct* %ContextID, i8* %Data) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Data, i8** %Data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %Data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %Data.addr, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %1, i8* %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @DupMatShaper(%struct._cmsContext_struct* %ContextID, i8* %Data) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Data, i8** %Data.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %Data.addr, align 8, !tbaa !1
  %call = call i8* @_cmsDupMem(%struct._cmsContext_struct* %0, i8* %1, i32 101440) #7
  ret i8* %call
}

declare float @cmsEvalToneCurveFloat(%struct._cms_curve_struct*, float) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #6

; Function Attrs: nounwind uwtable
define internal void @SlopeLimiting(%struct._cms_curve_struct* %g) #0 {
entry:
  %g.addr = alloca %struct._cms_curve_struct*, align 8
  %BeginVal = alloca i32, align 4
  %EndVal = alloca i32, align 4
  %AtBegin = alloca i32, align 4
  %AtEnd = alloca i32, align 4
  %Val = alloca double, align 8
  %Slope = alloca double, align 8
  %beta = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._cms_curve_struct* %g, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %0 = bitcast i32* %BeginVal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %EndVal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %AtBegin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %nEntries, align 4, !tbaa !60
  %conv = uitofp i32 %4 to double
  %mul = fmul double %conv, 2.000000e-02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #9
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %AtBegin, align 4, !tbaa !17
  %5 = bitcast i32* %AtEnd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %nEntries2 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %nEntries2, align 4, !tbaa !60
  %8 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %sub = sub i32 %7, %8
  %sub3 = sub i32 %sub, 1
  store i32 %sub3, i32* %AtEnd, align 4, !tbaa !17
  %9 = bitcast double* %Val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast double* %Slope to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsIsToneCurveDescending(%struct._cms_curve_struct* %13) #7
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 65535, i32* %BeginVal, align 4, !tbaa !17
  store i32 0, i32* %EndVal, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %BeginVal, align 4, !tbaa !17
  store i32 65535, i32* %EndVal, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %15, i32 0, i32 6
  %16 = load i16*, i16** %Table16, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv5 = uitofp i16 %17 to double
  store double %conv5, double* %Val, align 8, !tbaa !46
  %18 = load double, double* %Val, align 8, !tbaa !46
  %19 = load i32, i32* %BeginVal, align 4, !tbaa !17
  %conv6 = sitofp i32 %19 to double
  %sub7 = fsub double %18, %conv6
  %20 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %conv8 = sitofp i32 %20 to double
  %div = fdiv double %sub7, %conv8
  store double %div, double* %Slope, align 8, !tbaa !46
  %21 = load double, double* %Val, align 8, !tbaa !46
  %22 = load double, double* %Slope, align 8, !tbaa !46
  %23 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %conv9 = sitofp i32 %23 to double
  %mul10 = fmul double %22, %conv9
  %sub11 = fsub double %21, %mul10
  store double %sub11, double* %beta, align 8, !tbaa !46
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %i, align 4, !tbaa !17
  %25 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %conv13 = sitofp i32 %26 to double
  %27 = load double, double* %Slope, align 8, !tbaa !46
  %mul14 = fmul double %conv13, %27
  %28 = load double, double* %beta, align 8, !tbaa !46
  %add15 = fadd double %mul14, %28
  %call16 = call zeroext i16 @_cmsQuickSaturateWord(double %add15) #7
  %29 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table1618 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %30, i32 0, i32 6
  %31 = load i16*, i16** %Table1618, align 8, !tbaa !49
  %arrayidx19 = getelementptr inbounds i16, i16* %31, i64 %idxprom17
  store i16 %call16, i16* %arrayidx19, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %AtEnd, align 4, !tbaa !17
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table1621 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %34, i32 0, i32 6
  %35 = load i16*, i16** %Table1621, align 8, !tbaa !49
  %arrayidx22 = getelementptr inbounds i16, i16* %35, i64 %idxprom20
  %36 = load i16, i16* %arrayidx22, align 2, !tbaa !31
  %conv23 = uitofp i16 %36 to double
  store double %conv23, double* %Val, align 8, !tbaa !46
  %37 = load i32, i32* %EndVal, align 4, !tbaa !17
  %conv24 = sitofp i32 %37 to double
  %38 = load double, double* %Val, align 8, !tbaa !46
  %sub25 = fsub double %conv24, %38
  %39 = load i32, i32* %AtBegin, align 4, !tbaa !17
  %conv26 = sitofp i32 %39 to double
  %div27 = fdiv double %sub25, %conv26
  store double %div27, double* %Slope, align 8, !tbaa !46
  %40 = load double, double* %Val, align 8, !tbaa !46
  %41 = load double, double* %Slope, align 8, !tbaa !46
  %42 = load i32, i32* %AtEnd, align 4, !tbaa !17
  %conv28 = sitofp i32 %42 to double
  %mul29 = fmul double %41, %conv28
  %sub30 = fsub double %40, %mul29
  store double %sub30, double* %beta, align 8, !tbaa !46
  %43 = load i32, i32* %AtEnd, align 4, !tbaa !17
  store i32 %43, i32* %i, align 4, !tbaa !17
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.43, %for.end
  %44 = load i32, i32* %i, align 4, !tbaa !17
  %45 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %nEntries32 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %45, i32 0, i32 5
  %46 = load i32, i32* %nEntries32, align 4, !tbaa !60
  %cmp33 = icmp slt i32 %44, %46
  br i1 %cmp33, label %for.body.35, label %for.end.45

for.body.35:                                      ; preds = %for.cond.31
  %47 = load i32, i32* %i, align 4, !tbaa !17
  %conv36 = sitofp i32 %47 to double
  %48 = load double, double* %Slope, align 8, !tbaa !46
  %mul37 = fmul double %conv36, %48
  %49 = load double, double* %beta, align 8, !tbaa !46
  %add38 = fadd double %mul37, %49
  %call39 = call zeroext i16 @_cmsQuickSaturateWord(double %add38) #7
  %50 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom40 = sext i32 %50 to i64
  %51 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table1641 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %51, i32 0, i32 6
  %52 = load i16*, i16** %Table1641, align 8, !tbaa !49
  %arrayidx42 = getelementptr inbounds i16, i16* %52, i64 %idxprom40
  store i16 %call39, i16* %arrayidx42, align 2, !tbaa !31
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.35
  %53 = load i32, i32* %i, align 4, !tbaa !17
  %inc44 = add nsw i32 %53, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !17
  br label %for.cond.31

for.end.45:                                       ; preds = %for.cond.31
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast double* %Slope to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast double* %Val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast i32* %AtEnd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %AtBegin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %EndVal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %BeginVal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  ret void
}

declare i32 @cmsIsToneCurveMonotonic(%struct._cms_curve_struct*) #1

; Function Attrs: nounwind uwtable
define internal i32 @IsDegenerated(%struct._cms_curve_struct* %g) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %Zeros = alloca i32, align 4
  %Poles = alloca i32, align 4
  %nEntries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %g, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %Zeros to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %Zeros, align 4, !tbaa !17
  %2 = bitcast i32* %Poles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %Poles, align 4, !tbaa !17
  %3 = bitcast i32* %nEntries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %nEntries1 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %nEntries1, align 4, !tbaa !60
  store i32 %5, i32* %nEntries, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !17
  %7 = load i32, i32* %nEntries, align 4, !tbaa !17
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %9, i32 0, i32 6
  %10 = load i16*, i16** %Table16, align 8, !tbaa !49
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %11 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, i32* %Zeros, align 4, !tbaa !17
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Zeros, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Table165 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %14, i32 0, i32 6
  %15 = load i16*, i16** %Table165, align 8, !tbaa !49
  %arrayidx6 = getelementptr inbounds i16, i16* %15, i64 %idxprom4
  %16 = load i16, i16* %arrayidx6, align 2, !tbaa !31
  %conv7 = zext i16 %16 to i32
  %cmp8 = icmp eq i32 %conv7, 65535
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %17 = load i32, i32* %Poles, align 4, !tbaa !17
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %Poles, align 4, !tbaa !17
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %Zeros, align 4, !tbaa !17
  %cmp14 = icmp eq i32 %19, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.end
  %20 = load i32, i32* %Poles, align 4, !tbaa !17
  %cmp16 = icmp eq i32 %20, 1
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %land.lhs.true, %for.end
  %21 = load i32, i32* %Zeros, align 4, !tbaa !17
  %22 = load i32, i32* %nEntries, align 4, !tbaa !17
  %div = sdiv i32 %22, 4
  %cmp20 = icmp sgt i32 %21, %div
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.19
  %23 = load i32, i32* %Poles, align 4, !tbaa !17
  %24 = load i32, i32* %nEntries, align 4, !tbaa !17
  %div24 = sdiv i32 %24, 4
  %cmp25 = icmp sgt i32 %23, %div24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.22, %if.then.18
  %25 = bitcast i32* %nEntries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %Poles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %Zeros to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct._cms_curve_struct* @cmsReverseToneCurveEx(i32, %struct._cms_curve_struct*) #1

declare %struct._cmsPipeline_struct* @cmsPipelineDup(%struct._cmsPipeline_struct*) #1

; Function Attrs: nounwind uwtable
define internal %struct.Prelin8Data* @PrelinOpt8alloc(%struct._cmsContext_struct* %ContextID, %struct._cms_interp_struc* %p, %struct._cms_curve_struct** %G) #0 {
entry:
  %retval = alloca %struct.Prelin8Data*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %G.addr = alloca %struct._cms_curve_struct**, align 8
  %i = alloca i32, align 4
  %Input = alloca [3 x i16], align 2
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %p8 = alloca %struct.Prelin8Data*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct** %G, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [3 x i16]* %Input to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #2
  %2 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %v3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %6, i32 4624) #7
  %7 = bitcast i8* %call to %struct.Prelin8Data*
  store %struct.Prelin8Data* %7, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %8 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %cmp = icmp eq %struct.Prelin8Data* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Prelin8Data* null, %struct.Prelin8Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !17
  %cmp1 = icmp slt i32 %9, 256
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cms_curve_struct** %10, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %11 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %11, i64 0
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %conv = trunc i32 %13 to i16
  %conv4 = zext i16 %conv to i32
  %shl = shl i32 %conv4, 8
  %14 = load i32, i32* %i, align 4, !tbaa !17
  %or = or i32 %shl, %14
  %conv5 = trunc i32 %or to i16
  %call6 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %12, i16 zeroext %conv5) #7
  %arrayidx7 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 0
  store i16 %call6, i16* %arrayidx7, align 2, !tbaa !31
  %15 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %15, i64 1
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx8, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %conv9 = trunc i32 %17 to i16
  %conv10 = zext i16 %conv9 to i32
  %shl11 = shl i32 %conv10, 8
  %18 = load i32, i32* %i, align 4, !tbaa !17
  %or12 = or i32 %shl11, %18
  %conv13 = trunc i32 %or12 to i16
  %call14 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %16, i16 zeroext %conv13) #7
  %arrayidx15 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 1
  store i16 %call14, i16* %arrayidx15, align 2, !tbaa !31
  %19 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %G.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %19, i64 2
  %20 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx16, align 8, !tbaa !1
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %conv17 = trunc i32 %21 to i16
  %conv18 = zext i16 %conv17 to i32
  %shl19 = shl i32 %conv18, 8
  %22 = load i32, i32* %i, align 4, !tbaa !17
  %or20 = or i32 %shl19, %22
  %conv21 = trunc i32 %or20 to i16
  %call22 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %20, i16 zeroext %conv21) #7
  %arrayidx23 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 2
  store i16 %call22, i16* %arrayidx23, align 2, !tbaa !31
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !17
  %conv24 = trunc i32 %23 to i16
  %conv25 = zext i16 %conv24 to i32
  %shl26 = shl i32 %conv25, 8
  %24 = load i32, i32* %i, align 4, !tbaa !17
  %or27 = or i32 %shl26, %24
  %conv28 = trunc i32 %or27 to i16
  %arrayidx29 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 0
  store i16 %conv28, i16* %arrayidx29, align 2, !tbaa !31
  %25 = load i32, i32* %i, align 4, !tbaa !17
  %conv30 = trunc i32 %25 to i16
  %conv31 = zext i16 %conv30 to i32
  %shl32 = shl i32 %conv31, 8
  %26 = load i32, i32* %i, align 4, !tbaa !17
  %or33 = or i32 %shl32, %26
  %conv34 = trunc i32 %or33 to i16
  %arrayidx35 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 1
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !31
  %27 = load i32, i32* %i, align 4, !tbaa !17
  %conv36 = trunc i32 %27 to i16
  %conv37 = zext i16 %conv36 to i32
  %shl38 = shl i32 %conv37, 8
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %or39 = or i32 %shl38, %28
  %conv40 = trunc i32 %or39 to i16
  %arrayidx41 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 2
  store i16 %conv40, i16* %arrayidx41, align 2, !tbaa !31
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.3
  %arrayidx43 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 0
  %29 = load i16, i16* %arrayidx43, align 2, !tbaa !31
  %conv44 = zext i16 %29 to i32
  %30 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %30, i32 0, i32 5
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %31 = load i32, i32* %arrayidx45, align 4, !tbaa !17
  %mul = mul i32 %conv44, %31
  %call46 = call i32 @_cmsToFixedDomain(i32 %mul) #7
  store i32 %call46, i32* %v1, align 4, !tbaa !17
  %arrayidx47 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 1
  %32 = load i16, i16* %arrayidx47, align 2, !tbaa !31
  %conv48 = zext i16 %32 to i32
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain49 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain49, i32 0, i64 1
  %34 = load i32, i32* %arrayidx50, align 4, !tbaa !17
  %mul51 = mul i32 %conv48, %34
  %call52 = call i32 @_cmsToFixedDomain(i32 %mul51) #7
  store i32 %call52, i32* %v2, align 4, !tbaa !17
  %arrayidx53 = getelementptr inbounds [3 x i16], [3 x i16]* %Input, i32 0, i64 2
  %35 = load i16, i16* %arrayidx53, align 2, !tbaa !31
  %conv54 = zext i16 %35 to i32
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain55 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 5
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain55, i32 0, i64 2
  %37 = load i32, i32* %arrayidx56, align 4, !tbaa !17
  %mul57 = mul i32 %conv54, %37
  %call58 = call i32 @_cmsToFixedDomain(i32 %mul57) #7
  store i32 %call58, i32* %v3, align 4, !tbaa !17
  %38 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %38, i32 0, i32 6
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %39 = load i32, i32* %arrayidx59, align 4, !tbaa !17
  %40 = load i32, i32* %v1, align 4, !tbaa !17
  %shr = ashr i32 %40, 16
  %mul60 = mul i32 %39, %shr
  %41 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %X0 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %42, i32 0, i32 5
  %arrayidx61 = getelementptr inbounds [256 x i32], [256 x i32]* %X0, i32 0, i64 %idxprom
  store i32 %mul60, i32* %arrayidx61, align 4, !tbaa !17
  %43 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta62 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %43, i32 0, i32 6
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %opta62, i32 0, i64 1
  %44 = load i32, i32* %arrayidx63, align 4, !tbaa !17
  %45 = load i32, i32* %v2, align 4, !tbaa !17
  %shr64 = ashr i32 %45, 16
  %mul65 = mul i32 %44, %shr64
  %46 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom66 = sext i32 %46 to i64
  %47 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %Y0 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %47, i32 0, i32 6
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* %Y0, i32 0, i64 %idxprom66
  store i32 %mul65, i32* %arrayidx67, align 4, !tbaa !17
  %48 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta68 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %48, i32 0, i32 6
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %opta68, i32 0, i64 0
  %49 = load i32, i32* %arrayidx69, align 4, !tbaa !17
  %50 = load i32, i32* %v3, align 4, !tbaa !17
  %shr70 = ashr i32 %50, 16
  %mul71 = mul i32 %49, %shr70
  %51 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom72 = sext i32 %51 to i64
  %52 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %Z0 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %52, i32 0, i32 7
  %arrayidx73 = getelementptr inbounds [256 x i32], [256 x i32]* %Z0, i32 0, i64 %idxprom72
  store i32 %mul71, i32* %arrayidx73, align 4, !tbaa !17
  %53 = load i32, i32* %v1, align 4, !tbaa !17
  %and = and i32 %53, 65535
  %conv74 = trunc i32 %and to i16
  %54 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom75 = sext i32 %54 to i64
  %55 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %rx = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %55, i32 0, i32 2
  %arrayidx76 = getelementptr inbounds [256 x i16], [256 x i16]* %rx, i32 0, i64 %idxprom75
  store i16 %conv74, i16* %arrayidx76, align 2, !tbaa !31
  %56 = load i32, i32* %v2, align 4, !tbaa !17
  %and77 = and i32 %56, 65535
  %conv78 = trunc i32 %and77 to i16
  %57 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom79 = sext i32 %57 to i64
  %58 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %ry = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %58, i32 0, i32 3
  %arrayidx80 = getelementptr inbounds [256 x i16], [256 x i16]* %ry, i32 0, i64 %idxprom79
  store i16 %conv78, i16* %arrayidx80, align 2, !tbaa !31
  %59 = load i32, i32* %v3, align 4, !tbaa !17
  %and81 = and i32 %59, 65535
  %conv82 = trunc i32 %and81 to i16
  %60 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom83 = sext i32 %60 to i64
  %61 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %rz = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %61, i32 0, i32 4
  %arrayidx84 = getelementptr inbounds [256 x i16], [256 x i16]* %rz, i32 0, i64 %idxprom83
  store i16 %conv82, i16* %arrayidx84, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %62 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %64 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %ContextID85 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %64, i32 0, i32 0
  store %struct._cmsContext_struct* %63, %struct._cmsContext_struct** %ContextID85, align 8, !tbaa !61
  %65 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %66 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %p86 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %66, i32 0, i32 1
  store %struct._cms_interp_struc* %65, %struct._cms_interp_struc** %p86, align 8, !tbaa !63
  %67 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  store %struct.Prelin8Data* %67, %struct.Prelin8Data** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %68 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast i32* %v3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %v2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %v1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast [3 x i16]* %Input to i8*
  call void @llvm.lifetime.end(i64 6, i8* %72) #2
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = load %struct.Prelin8Data*, %struct.Prelin8Data** %retval
  ret %struct.Prelin8Data* %74
}

; Function Attrs: nounwind uwtable
define internal void @PrelinEval8(i16* %Input, i16* %Output, i8* %D) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %D.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rz = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %Rest = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %p8 = alloca %struct.Prelin8Data*, align 8
  %p = alloca %struct._cms_interp_struc*, align 8
  %TotalOut = alloca i32, align 4
  %LutTable = alloca i16*, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store i8* %D, i8** %D.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %r) #2
  call void @llvm.lifetime.start(i64 1, i8* %g) #2
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %0 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i8*, i8** %D.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.Prelin8Data*
  store %struct.Prelin8Data* %17, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %18 = bitcast %struct._cms_interp_struc** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %19, i32 0, i32 1
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p1, align 8, !tbaa !63
  store %struct._cms_interp_struc* %20, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %21 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %22, i32 0, i32 3
  %23 = load i32, i32* %nOutputs, align 4, !tbaa !64
  store i32 %23, i32* %TotalOut, align 4, !tbaa !17
  %24 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #2
  %25 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %25, i32 0, i32 7
  %26 = load i8*, i8** %Table, align 8, !tbaa !66
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** %LutTable, align 8, !tbaa !1
  %28 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 0
  %29 = load i16, i16* %arrayidx, align 2, !tbaa !31
  %conv = zext i16 %29 to i32
  %shr = ashr i32 %conv, 8
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, i8* %r, align 1, !tbaa !20
  %30 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %30, i64 1
  %31 = load i16, i16* %arrayidx3, align 2, !tbaa !31
  %conv4 = zext i16 %31 to i32
  %shr5 = ashr i32 %conv4, 8
  %conv6 = trunc i32 %shr5 to i8
  store i8 %conv6, i8* %g, align 1, !tbaa !20
  %32 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %32, i64 2
  %33 = load i16, i16* %arrayidx7, align 2, !tbaa !31
  %conv8 = zext i16 %33 to i32
  %shr9 = ashr i32 %conv8, 8
  %conv10 = trunc i32 %shr9 to i8
  store i8 %conv10, i8* %b, align 1, !tbaa !20
  %34 = load i8, i8* %r, align 1, !tbaa !20
  %idxprom = zext i8 %34 to i64
  %35 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %X011 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %35, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* %X011, i32 0, i64 %idxprom
  %36 = load i32, i32* %arrayidx12, align 4, !tbaa !17
  store i32 %36, i32* %X1, align 4, !tbaa !17
  store i32 %36, i32* %X0, align 4, !tbaa !17
  %37 = load i8, i8* %g, align 1, !tbaa !20
  %idxprom13 = zext i8 %37 to i64
  %38 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %Y014 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %38, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* %Y014, i32 0, i64 %idxprom13
  %39 = load i32, i32* %arrayidx15, align 4, !tbaa !17
  store i32 %39, i32* %Y1, align 4, !tbaa !17
  store i32 %39, i32* %Y0, align 4, !tbaa !17
  %40 = load i8, i8* %b, align 1, !tbaa !20
  %idxprom16 = zext i8 %40 to i64
  %41 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %Z017 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %41, i32 0, i32 7
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %Z017, i32 0, i64 %idxprom16
  %42 = load i32, i32* %arrayidx18, align 4, !tbaa !17
  store i32 %42, i32* %Z1, align 4, !tbaa !17
  store i32 %42, i32* %Z0, align 4, !tbaa !17
  %43 = load i8, i8* %r, align 1, !tbaa !20
  %idxprom19 = zext i8 %43 to i64
  %44 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %rx20 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %44, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [256 x i16], [256 x i16]* %rx20, i32 0, i64 %idxprom19
  %45 = load i16, i16* %arrayidx21, align 2, !tbaa !31
  %conv22 = zext i16 %45 to i32
  store i32 %conv22, i32* %rx, align 4, !tbaa !17
  %46 = load i8, i8* %g, align 1, !tbaa !20
  %idxprom23 = zext i8 %46 to i64
  %47 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %ry24 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %47, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds [256 x i16], [256 x i16]* %ry24, i32 0, i64 %idxprom23
  %48 = load i16, i16* %arrayidx25, align 2, !tbaa !31
  %conv26 = zext i16 %48 to i32
  store i32 %conv26, i32* %ry, align 4, !tbaa !17
  %49 = load i8, i8* %b, align 1, !tbaa !20
  %idxprom27 = zext i8 %49 to i64
  %50 = load %struct.Prelin8Data*, %struct.Prelin8Data** %p8, align 8, !tbaa !1
  %rz28 = getelementptr inbounds %struct.Prelin8Data, %struct.Prelin8Data* %50, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [256 x i16], [256 x i16]* %rz28, i32 0, i64 %idxprom27
  %51 = load i16, i16* %arrayidx29, align 2, !tbaa !31
  %conv30 = zext i16 %51 to i32
  store i32 %conv30, i32* %rz, align 4, !tbaa !17
  %52 = load i32, i32* %X0, align 4, !tbaa !17
  %53 = load i32, i32* %rx, align 4, !tbaa !17
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %54, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %55 = load i32, i32* %arrayidx32, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %55, %cond.false ]
  %add = add i32 %52, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !17
  %56 = load i32, i32* %Y0, align 4, !tbaa !17
  %57 = load i32, i32* %ry, align 4, !tbaa !17
  %cmp33 = icmp eq i32 %57, 0
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  br label %cond.end.39

cond.false.36:                                    ; preds = %cond.end
  %58 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta37 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %58, i32 0, i32 6
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %opta37, i32 0, i64 1
  %59 = load i32, i32* %arrayidx38, align 4, !tbaa !17
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.36, %cond.true.35
  %cond40 = phi i32 [ 0, %cond.true.35 ], [ %59, %cond.false.36 ]
  %add41 = add i32 %56, %cond40
  store i32 %add41, i32* %Y1, align 4, !tbaa !17
  %60 = load i32, i32* %Z0, align 4, !tbaa !17
  %61 = load i32, i32* %rz, align 4, !tbaa !17
  %cmp42 = icmp eq i32 %61, 0
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.39
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.end.39
  %62 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta46 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %62, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %opta46, i32 0, i64 0
  %63 = load i32, i32* %arrayidx47, align 4, !tbaa !17
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ 0, %cond.true.44 ], [ %63, %cond.false.45 ]
  %add50 = add i32 %60, %cond49
  store i32 %add50, i32* %Z1, align 4, !tbaa !17
  store i32 0, i32* %OutChan, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.48
  %64 = load i32, i32* %OutChan, align 4, !tbaa !17
  %65 = load i32, i32* %TotalOut, align 4, !tbaa !17
  %cmp51 = icmp slt i32 %64, %65
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %X0, align 4, !tbaa !17
  %67 = load i32, i32* %Y0, align 4, !tbaa !17
  %add53 = add nsw i32 %66, %67
  %68 = load i32, i32* %Z0, align 4, !tbaa !17
  %add54 = add nsw i32 %add53, %68
  %69 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add55 = add nsw i32 %add54, %69
  %idxprom56 = sext i32 %add55 to i64
  %70 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i16, i16* %70, i64 %idxprom56
  %71 = load i16, i16* %arrayidx57, align 2, !tbaa !31
  %conv58 = zext i16 %71 to i32
  store i32 %conv58, i32* %c0, align 4, !tbaa !17
  %72 = load i32, i32* %rx, align 4, !tbaa !17
  %73 = load i32, i32* %ry, align 4, !tbaa !17
  %cmp59 = icmp sge i32 %72, %73
  br i1 %cmp59, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %74 = load i32, i32* %ry, align 4, !tbaa !17
  %75 = load i32, i32* %rz, align 4, !tbaa !17
  %cmp61 = icmp sge i32 %74, %75
  br i1 %cmp61, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %76 = load i32, i32* %X1, align 4, !tbaa !17
  %77 = load i32, i32* %Y0, align 4, !tbaa !17
  %add63 = add nsw i32 %76, %77
  %78 = load i32, i32* %Z0, align 4, !tbaa !17
  %add64 = add nsw i32 %add63, %78
  %79 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add65 = add nsw i32 %add64, %79
  %idxprom66 = sext i32 %add65 to i64
  %80 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %80, i64 %idxprom66
  %81 = load i16, i16* %arrayidx67, align 2, !tbaa !31
  %conv68 = zext i16 %81 to i32
  %82 = load i32, i32* %c0, align 4, !tbaa !17
  %sub = sub nsw i32 %conv68, %82
  store i32 %sub, i32* %c1, align 4, !tbaa !17
  %83 = load i32, i32* %X1, align 4, !tbaa !17
  %84 = load i32, i32* %Y1, align 4, !tbaa !17
  %add69 = add nsw i32 %83, %84
  %85 = load i32, i32* %Z0, align 4, !tbaa !17
  %add70 = add nsw i32 %add69, %85
  %86 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add71 = add nsw i32 %add70, %86
  %idxprom72 = sext i32 %add71 to i64
  %87 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %87, i64 %idxprom72
  %88 = load i16, i16* %arrayidx73, align 2, !tbaa !31
  %conv74 = zext i16 %88 to i32
  %89 = load i32, i32* %X1, align 4, !tbaa !17
  %90 = load i32, i32* %Y0, align 4, !tbaa !17
  %add75 = add nsw i32 %89, %90
  %91 = load i32, i32* %Z0, align 4, !tbaa !17
  %add76 = add nsw i32 %add75, %91
  %92 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add77 = add nsw i32 %add76, %92
  %idxprom78 = sext i32 %add77 to i64
  %93 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %93, i64 %idxprom78
  %94 = load i16, i16* %arrayidx79, align 2, !tbaa !31
  %conv80 = zext i16 %94 to i32
  %sub81 = sub nsw i32 %conv74, %conv80
  store i32 %sub81, i32* %c2, align 4, !tbaa !17
  %95 = load i32, i32* %X1, align 4, !tbaa !17
  %96 = load i32, i32* %Y1, align 4, !tbaa !17
  %add82 = add nsw i32 %95, %96
  %97 = load i32, i32* %Z1, align 4, !tbaa !17
  %add83 = add nsw i32 %add82, %97
  %98 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add84 = add nsw i32 %add83, %98
  %idxprom85 = sext i32 %add84 to i64
  %99 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i16, i16* %99, i64 %idxprom85
  %100 = load i16, i16* %arrayidx86, align 2, !tbaa !31
  %conv87 = zext i16 %100 to i32
  %101 = load i32, i32* %X1, align 4, !tbaa !17
  %102 = load i32, i32* %Y1, align 4, !tbaa !17
  %add88 = add nsw i32 %101, %102
  %103 = load i32, i32* %Z0, align 4, !tbaa !17
  %add89 = add nsw i32 %add88, %103
  %104 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add90 = add nsw i32 %add89, %104
  %idxprom91 = sext i32 %add90 to i64
  %105 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i16, i16* %105, i64 %idxprom91
  %106 = load i16, i16* %arrayidx92, align 2, !tbaa !31
  %conv93 = zext i16 %106 to i32
  %sub94 = sub nsw i32 %conv87, %conv93
  store i32 %sub94, i32* %c3, align 4, !tbaa !17
  br label %if.end.299

if.else:                                          ; preds = %land.lhs.true, %for.body
  %107 = load i32, i32* %rx, align 4, !tbaa !17
  %108 = load i32, i32* %rz, align 4, !tbaa !17
  %cmp95 = icmp sge i32 %107, %108
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.134

land.lhs.true.97:                                 ; preds = %if.else
  %109 = load i32, i32* %rz, align 4, !tbaa !17
  %110 = load i32, i32* %ry, align 4, !tbaa !17
  %cmp98 = icmp sge i32 %109, %110
  br i1 %cmp98, label %if.then.100, label %if.else.134

if.then.100:                                      ; preds = %land.lhs.true.97
  %111 = load i32, i32* %X1, align 4, !tbaa !17
  %112 = load i32, i32* %Y0, align 4, !tbaa !17
  %add101 = add nsw i32 %111, %112
  %113 = load i32, i32* %Z0, align 4, !tbaa !17
  %add102 = add nsw i32 %add101, %113
  %114 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add103 = add nsw i32 %add102, %114
  %idxprom104 = sext i32 %add103 to i64
  %115 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i16, i16* %115, i64 %idxprom104
  %116 = load i16, i16* %arrayidx105, align 2, !tbaa !31
  %conv106 = zext i16 %116 to i32
  %117 = load i32, i32* %c0, align 4, !tbaa !17
  %sub107 = sub nsw i32 %conv106, %117
  store i32 %sub107, i32* %c1, align 4, !tbaa !17
  %118 = load i32, i32* %X1, align 4, !tbaa !17
  %119 = load i32, i32* %Y1, align 4, !tbaa !17
  %add108 = add nsw i32 %118, %119
  %120 = load i32, i32* %Z1, align 4, !tbaa !17
  %add109 = add nsw i32 %add108, %120
  %121 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add110 = add nsw i32 %add109, %121
  %idxprom111 = sext i32 %add110 to i64
  %122 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i16, i16* %122, i64 %idxprom111
  %123 = load i16, i16* %arrayidx112, align 2, !tbaa !31
  %conv113 = zext i16 %123 to i32
  %124 = load i32, i32* %X1, align 4, !tbaa !17
  %125 = load i32, i32* %Y0, align 4, !tbaa !17
  %add114 = add nsw i32 %124, %125
  %126 = load i32, i32* %Z1, align 4, !tbaa !17
  %add115 = add nsw i32 %add114, %126
  %127 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add116 = add nsw i32 %add115, %127
  %idxprom117 = sext i32 %add116 to i64
  %128 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i16, i16* %128, i64 %idxprom117
  %129 = load i16, i16* %arrayidx118, align 2, !tbaa !31
  %conv119 = zext i16 %129 to i32
  %sub120 = sub nsw i32 %conv113, %conv119
  store i32 %sub120, i32* %c2, align 4, !tbaa !17
  %130 = load i32, i32* %X1, align 4, !tbaa !17
  %131 = load i32, i32* %Y0, align 4, !tbaa !17
  %add121 = add nsw i32 %130, %131
  %132 = load i32, i32* %Z1, align 4, !tbaa !17
  %add122 = add nsw i32 %add121, %132
  %133 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add123 = add nsw i32 %add122, %133
  %idxprom124 = sext i32 %add123 to i64
  %134 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i16, i16* %134, i64 %idxprom124
  %135 = load i16, i16* %arrayidx125, align 2, !tbaa !31
  %conv126 = zext i16 %135 to i32
  %136 = load i32, i32* %X1, align 4, !tbaa !17
  %137 = load i32, i32* %Y0, align 4, !tbaa !17
  %add127 = add nsw i32 %136, %137
  %138 = load i32, i32* %Z0, align 4, !tbaa !17
  %add128 = add nsw i32 %add127, %138
  %139 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add129 = add nsw i32 %add128, %139
  %idxprom130 = sext i32 %add129 to i64
  %140 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i16, i16* %140, i64 %idxprom130
  %141 = load i16, i16* %arrayidx131, align 2, !tbaa !31
  %conv132 = zext i16 %141 to i32
  %sub133 = sub nsw i32 %conv126, %conv132
  store i32 %sub133, i32* %c3, align 4, !tbaa !17
  br label %if.end.298

if.else.134:                                      ; preds = %land.lhs.true.97, %if.else
  %142 = load i32, i32* %rz, align 4, !tbaa !17
  %143 = load i32, i32* %rx, align 4, !tbaa !17
  %cmp135 = icmp sge i32 %142, %143
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.174

land.lhs.true.137:                                ; preds = %if.else.134
  %144 = load i32, i32* %rx, align 4, !tbaa !17
  %145 = load i32, i32* %ry, align 4, !tbaa !17
  %cmp138 = icmp sge i32 %144, %145
  br i1 %cmp138, label %if.then.140, label %if.else.174

if.then.140:                                      ; preds = %land.lhs.true.137
  %146 = load i32, i32* %X1, align 4, !tbaa !17
  %147 = load i32, i32* %Y0, align 4, !tbaa !17
  %add141 = add nsw i32 %146, %147
  %148 = load i32, i32* %Z1, align 4, !tbaa !17
  %add142 = add nsw i32 %add141, %148
  %149 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add143 = add nsw i32 %add142, %149
  %idxprom144 = sext i32 %add143 to i64
  %150 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i16, i16* %150, i64 %idxprom144
  %151 = load i16, i16* %arrayidx145, align 2, !tbaa !31
  %conv146 = zext i16 %151 to i32
  %152 = load i32, i32* %X0, align 4, !tbaa !17
  %153 = load i32, i32* %Y0, align 4, !tbaa !17
  %add147 = add nsw i32 %152, %153
  %154 = load i32, i32* %Z1, align 4, !tbaa !17
  %add148 = add nsw i32 %add147, %154
  %155 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add149 = add nsw i32 %add148, %155
  %idxprom150 = sext i32 %add149 to i64
  %156 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i16, i16* %156, i64 %idxprom150
  %157 = load i16, i16* %arrayidx151, align 2, !tbaa !31
  %conv152 = zext i16 %157 to i32
  %sub153 = sub nsw i32 %conv146, %conv152
  store i32 %sub153, i32* %c1, align 4, !tbaa !17
  %158 = load i32, i32* %X1, align 4, !tbaa !17
  %159 = load i32, i32* %Y1, align 4, !tbaa !17
  %add154 = add nsw i32 %158, %159
  %160 = load i32, i32* %Z1, align 4, !tbaa !17
  %add155 = add nsw i32 %add154, %160
  %161 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add156 = add nsw i32 %add155, %161
  %idxprom157 = sext i32 %add156 to i64
  %162 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i16, i16* %162, i64 %idxprom157
  %163 = load i16, i16* %arrayidx158, align 2, !tbaa !31
  %conv159 = zext i16 %163 to i32
  %164 = load i32, i32* %X1, align 4, !tbaa !17
  %165 = load i32, i32* %Y0, align 4, !tbaa !17
  %add160 = add nsw i32 %164, %165
  %166 = load i32, i32* %Z1, align 4, !tbaa !17
  %add161 = add nsw i32 %add160, %166
  %167 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add162 = add nsw i32 %add161, %167
  %idxprom163 = sext i32 %add162 to i64
  %168 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i16, i16* %168, i64 %idxprom163
  %169 = load i16, i16* %arrayidx164, align 2, !tbaa !31
  %conv165 = zext i16 %169 to i32
  %sub166 = sub nsw i32 %conv159, %conv165
  store i32 %sub166, i32* %c2, align 4, !tbaa !17
  %170 = load i32, i32* %X0, align 4, !tbaa !17
  %171 = load i32, i32* %Y0, align 4, !tbaa !17
  %add167 = add nsw i32 %170, %171
  %172 = load i32, i32* %Z1, align 4, !tbaa !17
  %add168 = add nsw i32 %add167, %172
  %173 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add169 = add nsw i32 %add168, %173
  %idxprom170 = sext i32 %add169 to i64
  %174 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i16, i16* %174, i64 %idxprom170
  %175 = load i16, i16* %arrayidx171, align 2, !tbaa !31
  %conv172 = zext i16 %175 to i32
  %176 = load i32, i32* %c0, align 4, !tbaa !17
  %sub173 = sub nsw i32 %conv172, %176
  store i32 %sub173, i32* %c3, align 4, !tbaa !17
  br label %if.end.297

if.else.174:                                      ; preds = %land.lhs.true.137, %if.else.134
  %177 = load i32, i32* %ry, align 4, !tbaa !17
  %178 = load i32, i32* %rx, align 4, !tbaa !17
  %cmp175 = icmp sge i32 %177, %178
  br i1 %cmp175, label %land.lhs.true.177, label %if.else.214

land.lhs.true.177:                                ; preds = %if.else.174
  %179 = load i32, i32* %rx, align 4, !tbaa !17
  %180 = load i32, i32* %rz, align 4, !tbaa !17
  %cmp178 = icmp sge i32 %179, %180
  br i1 %cmp178, label %if.then.180, label %if.else.214

if.then.180:                                      ; preds = %land.lhs.true.177
  %181 = load i32, i32* %X1, align 4, !tbaa !17
  %182 = load i32, i32* %Y1, align 4, !tbaa !17
  %add181 = add nsw i32 %181, %182
  %183 = load i32, i32* %Z0, align 4, !tbaa !17
  %add182 = add nsw i32 %add181, %183
  %184 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add183 = add nsw i32 %add182, %184
  %idxprom184 = sext i32 %add183 to i64
  %185 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i16, i16* %185, i64 %idxprom184
  %186 = load i16, i16* %arrayidx185, align 2, !tbaa !31
  %conv186 = zext i16 %186 to i32
  %187 = load i32, i32* %X0, align 4, !tbaa !17
  %188 = load i32, i32* %Y1, align 4, !tbaa !17
  %add187 = add nsw i32 %187, %188
  %189 = load i32, i32* %Z0, align 4, !tbaa !17
  %add188 = add nsw i32 %add187, %189
  %190 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add189 = add nsw i32 %add188, %190
  %idxprom190 = sext i32 %add189 to i64
  %191 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i16, i16* %191, i64 %idxprom190
  %192 = load i16, i16* %arrayidx191, align 2, !tbaa !31
  %conv192 = zext i16 %192 to i32
  %sub193 = sub nsw i32 %conv186, %conv192
  store i32 %sub193, i32* %c1, align 4, !tbaa !17
  %193 = load i32, i32* %X0, align 4, !tbaa !17
  %194 = load i32, i32* %Y1, align 4, !tbaa !17
  %add194 = add nsw i32 %193, %194
  %195 = load i32, i32* %Z0, align 4, !tbaa !17
  %add195 = add nsw i32 %add194, %195
  %196 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add196 = add nsw i32 %add195, %196
  %idxprom197 = sext i32 %add196 to i64
  %197 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i16, i16* %197, i64 %idxprom197
  %198 = load i16, i16* %arrayidx198, align 2, !tbaa !31
  %conv199 = zext i16 %198 to i32
  %199 = load i32, i32* %c0, align 4, !tbaa !17
  %sub200 = sub nsw i32 %conv199, %199
  store i32 %sub200, i32* %c2, align 4, !tbaa !17
  %200 = load i32, i32* %X1, align 4, !tbaa !17
  %201 = load i32, i32* %Y1, align 4, !tbaa !17
  %add201 = add nsw i32 %200, %201
  %202 = load i32, i32* %Z1, align 4, !tbaa !17
  %add202 = add nsw i32 %add201, %202
  %203 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add203 = add nsw i32 %add202, %203
  %idxprom204 = sext i32 %add203 to i64
  %204 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i16, i16* %204, i64 %idxprom204
  %205 = load i16, i16* %arrayidx205, align 2, !tbaa !31
  %conv206 = zext i16 %205 to i32
  %206 = load i32, i32* %X1, align 4, !tbaa !17
  %207 = load i32, i32* %Y1, align 4, !tbaa !17
  %add207 = add nsw i32 %206, %207
  %208 = load i32, i32* %Z0, align 4, !tbaa !17
  %add208 = add nsw i32 %add207, %208
  %209 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add209 = add nsw i32 %add208, %209
  %idxprom210 = sext i32 %add209 to i64
  %210 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i16, i16* %210, i64 %idxprom210
  %211 = load i16, i16* %arrayidx211, align 2, !tbaa !31
  %conv212 = zext i16 %211 to i32
  %sub213 = sub nsw i32 %conv206, %conv212
  store i32 %sub213, i32* %c3, align 4, !tbaa !17
  br label %if.end.296

if.else.214:                                      ; preds = %land.lhs.true.177, %if.else.174
  %212 = load i32, i32* %ry, align 4, !tbaa !17
  %213 = load i32, i32* %rz, align 4, !tbaa !17
  %cmp215 = icmp sge i32 %212, %213
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.254

land.lhs.true.217:                                ; preds = %if.else.214
  %214 = load i32, i32* %rz, align 4, !tbaa !17
  %215 = load i32, i32* %rx, align 4, !tbaa !17
  %cmp218 = icmp sge i32 %214, %215
  br i1 %cmp218, label %if.then.220, label %if.else.254

if.then.220:                                      ; preds = %land.lhs.true.217
  %216 = load i32, i32* %X1, align 4, !tbaa !17
  %217 = load i32, i32* %Y1, align 4, !tbaa !17
  %add221 = add nsw i32 %216, %217
  %218 = load i32, i32* %Z1, align 4, !tbaa !17
  %add222 = add nsw i32 %add221, %218
  %219 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add223 = add nsw i32 %add222, %219
  %idxprom224 = sext i32 %add223 to i64
  %220 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i16, i16* %220, i64 %idxprom224
  %221 = load i16, i16* %arrayidx225, align 2, !tbaa !31
  %conv226 = zext i16 %221 to i32
  %222 = load i32, i32* %X0, align 4, !tbaa !17
  %223 = load i32, i32* %Y1, align 4, !tbaa !17
  %add227 = add nsw i32 %222, %223
  %224 = load i32, i32* %Z1, align 4, !tbaa !17
  %add228 = add nsw i32 %add227, %224
  %225 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add229 = add nsw i32 %add228, %225
  %idxprom230 = sext i32 %add229 to i64
  %226 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i16, i16* %226, i64 %idxprom230
  %227 = load i16, i16* %arrayidx231, align 2, !tbaa !31
  %conv232 = zext i16 %227 to i32
  %sub233 = sub nsw i32 %conv226, %conv232
  store i32 %sub233, i32* %c1, align 4, !tbaa !17
  %228 = load i32, i32* %X0, align 4, !tbaa !17
  %229 = load i32, i32* %Y1, align 4, !tbaa !17
  %add234 = add nsw i32 %228, %229
  %230 = load i32, i32* %Z0, align 4, !tbaa !17
  %add235 = add nsw i32 %add234, %230
  %231 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add236 = add nsw i32 %add235, %231
  %idxprom237 = sext i32 %add236 to i64
  %232 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i16, i16* %232, i64 %idxprom237
  %233 = load i16, i16* %arrayidx238, align 2, !tbaa !31
  %conv239 = zext i16 %233 to i32
  %234 = load i32, i32* %c0, align 4, !tbaa !17
  %sub240 = sub nsw i32 %conv239, %234
  store i32 %sub240, i32* %c2, align 4, !tbaa !17
  %235 = load i32, i32* %X0, align 4, !tbaa !17
  %236 = load i32, i32* %Y1, align 4, !tbaa !17
  %add241 = add nsw i32 %235, %236
  %237 = load i32, i32* %Z1, align 4, !tbaa !17
  %add242 = add nsw i32 %add241, %237
  %238 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add243 = add nsw i32 %add242, %238
  %idxprom244 = sext i32 %add243 to i64
  %239 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i16, i16* %239, i64 %idxprom244
  %240 = load i16, i16* %arrayidx245, align 2, !tbaa !31
  %conv246 = zext i16 %240 to i32
  %241 = load i32, i32* %X0, align 4, !tbaa !17
  %242 = load i32, i32* %Y1, align 4, !tbaa !17
  %add247 = add nsw i32 %241, %242
  %243 = load i32, i32* %Z0, align 4, !tbaa !17
  %add248 = add nsw i32 %add247, %243
  %244 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add249 = add nsw i32 %add248, %244
  %idxprom250 = sext i32 %add249 to i64
  %245 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i16, i16* %245, i64 %idxprom250
  %246 = load i16, i16* %arrayidx251, align 2, !tbaa !31
  %conv252 = zext i16 %246 to i32
  %sub253 = sub nsw i32 %conv246, %conv252
  store i32 %sub253, i32* %c3, align 4, !tbaa !17
  br label %if.end.295

if.else.254:                                      ; preds = %land.lhs.true.217, %if.else.214
  %247 = load i32, i32* %rz, align 4, !tbaa !17
  %248 = load i32, i32* %ry, align 4, !tbaa !17
  %cmp255 = icmp sge i32 %247, %248
  br i1 %cmp255, label %land.lhs.true.257, label %if.else.294

land.lhs.true.257:                                ; preds = %if.else.254
  %249 = load i32, i32* %ry, align 4, !tbaa !17
  %250 = load i32, i32* %rx, align 4, !tbaa !17
  %cmp258 = icmp sge i32 %249, %250
  br i1 %cmp258, label %if.then.260, label %if.else.294

if.then.260:                                      ; preds = %land.lhs.true.257
  %251 = load i32, i32* %X1, align 4, !tbaa !17
  %252 = load i32, i32* %Y1, align 4, !tbaa !17
  %add261 = add nsw i32 %251, %252
  %253 = load i32, i32* %Z1, align 4, !tbaa !17
  %add262 = add nsw i32 %add261, %253
  %254 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add263 = add nsw i32 %add262, %254
  %idxprom264 = sext i32 %add263 to i64
  %255 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i16, i16* %255, i64 %idxprom264
  %256 = load i16, i16* %arrayidx265, align 2, !tbaa !31
  %conv266 = zext i16 %256 to i32
  %257 = load i32, i32* %X0, align 4, !tbaa !17
  %258 = load i32, i32* %Y1, align 4, !tbaa !17
  %add267 = add nsw i32 %257, %258
  %259 = load i32, i32* %Z1, align 4, !tbaa !17
  %add268 = add nsw i32 %add267, %259
  %260 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add269 = add nsw i32 %add268, %260
  %idxprom270 = sext i32 %add269 to i64
  %261 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i16, i16* %261, i64 %idxprom270
  %262 = load i16, i16* %arrayidx271, align 2, !tbaa !31
  %conv272 = zext i16 %262 to i32
  %sub273 = sub nsw i32 %conv266, %conv272
  store i32 %sub273, i32* %c1, align 4, !tbaa !17
  %263 = load i32, i32* %X0, align 4, !tbaa !17
  %264 = load i32, i32* %Y1, align 4, !tbaa !17
  %add274 = add nsw i32 %263, %264
  %265 = load i32, i32* %Z1, align 4, !tbaa !17
  %add275 = add nsw i32 %add274, %265
  %266 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add276 = add nsw i32 %add275, %266
  %idxprom277 = sext i32 %add276 to i64
  %267 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i16, i16* %267, i64 %idxprom277
  %268 = load i16, i16* %arrayidx278, align 2, !tbaa !31
  %conv279 = zext i16 %268 to i32
  %269 = load i32, i32* %X0, align 4, !tbaa !17
  %270 = load i32, i32* %Y0, align 4, !tbaa !17
  %add280 = add nsw i32 %269, %270
  %271 = load i32, i32* %Z1, align 4, !tbaa !17
  %add281 = add nsw i32 %add280, %271
  %272 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add282 = add nsw i32 %add281, %272
  %idxprom283 = sext i32 %add282 to i64
  %273 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i16, i16* %273, i64 %idxprom283
  %274 = load i16, i16* %arrayidx284, align 2, !tbaa !31
  %conv285 = zext i16 %274 to i32
  %sub286 = sub nsw i32 %conv279, %conv285
  store i32 %sub286, i32* %c2, align 4, !tbaa !17
  %275 = load i32, i32* %X0, align 4, !tbaa !17
  %276 = load i32, i32* %Y0, align 4, !tbaa !17
  %add287 = add nsw i32 %275, %276
  %277 = load i32, i32* %Z1, align 4, !tbaa !17
  %add288 = add nsw i32 %add287, %277
  %278 = load i32, i32* %OutChan, align 4, !tbaa !17
  %add289 = add nsw i32 %add288, %278
  %idxprom290 = sext i32 %add289 to i64
  %279 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i16, i16* %279, i64 %idxprom290
  %280 = load i16, i16* %arrayidx291, align 2, !tbaa !31
  %conv292 = zext i16 %280 to i32
  %281 = load i32, i32* %c0, align 4, !tbaa !17
  %sub293 = sub nsw i32 %conv292, %281
  store i32 %sub293, i32* %c3, align 4, !tbaa !17
  br label %if.end

if.else.294:                                      ; preds = %land.lhs.true.257, %if.else.254
  store i32 0, i32* %c3, align 4, !tbaa !17
  store i32 0, i32* %c2, align 4, !tbaa !17
  store i32 0, i32* %c1, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else.294, %if.then.260
  br label %if.end.295

if.end.295:                                       ; preds = %if.end, %if.then.220
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.180
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.140
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.then.100
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.then
  %282 = load i32, i32* %c1, align 4, !tbaa !17
  %283 = load i32, i32* %rx, align 4, !tbaa !17
  %mul = mul nsw i32 %282, %283
  %284 = load i32, i32* %c2, align 4, !tbaa !17
  %285 = load i32, i32* %ry, align 4, !tbaa !17
  %mul300 = mul nsw i32 %284, %285
  %add301 = add nsw i32 %mul, %mul300
  %286 = load i32, i32* %c3, align 4, !tbaa !17
  %287 = load i32, i32* %rz, align 4, !tbaa !17
  %mul302 = mul nsw i32 %286, %287
  %add303 = add nsw i32 %add301, %mul302
  %add304 = add nsw i32 %add303, 32769
  store i32 %add304, i32* %Rest, align 4, !tbaa !17
  %288 = load i32, i32* %c0, align 4, !tbaa !17
  %conv305 = trunc i32 %288 to i16
  %conv306 = zext i16 %conv305 to i32
  %289 = load i32, i32* %Rest, align 4, !tbaa !17
  %290 = load i32, i32* %Rest, align 4, !tbaa !17
  %shr307 = ashr i32 %290, 16
  %add308 = add nsw i32 %289, %shr307
  %shr309 = ashr i32 %add308, 16
  %add310 = add nsw i32 %conv306, %shr309
  %conv311 = trunc i32 %add310 to i16
  %291 = load i32, i32* %OutChan, align 4, !tbaa !17
  %idxprom312 = sext i32 %291 to i64
  %292 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i16, i16* %292, i64 %idxprom312
  store i16 %conv311, i16* %arrayidx313, align 2, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %if.end.299
  %293 = load i32, i32* %OutChan, align 4, !tbaa !17
  %inc = add nsw i32 %293, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %294 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #2
  %295 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #2
  %296 = bitcast %struct._cms_interp_struc** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #2
  %297 = bitcast %struct.Prelin8Data** %p8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #2
  %298 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #2
  %299 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #2
  %300 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #2
  %301 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  %302 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #2
  %303 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #2
  %305 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #2
  %306 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #2
  %309 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #2
  %310 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %g) #2
  call void @llvm.lifetime.end(i64 1, i8* %r) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Prelin8free(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %0, i8* %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @Prelin8dup(%struct._cmsContext_struct* %ContextID, i8* %ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call = call i8* @_cmsDupMem(%struct._cmsContext_struct* %0, i8* %1, i32 4624) #7
  ret i8* %call
}

declare i32 @cmsIsToneCurveDescending(%struct._cms_curve_struct*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsToFixedDomain(i32 %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !17
  %0 = load i32, i32* %a.addr, align 4, !tbaa !17
  %1 = load i32, i32* %a.addr, align 4, !tbaa !17
  %add = add nsw i32 %1, 32767
  %div = sdiv i32 %add, 65535
  %add1 = add nsw i32 %0, %div
  ret i32 %add1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin noreturn nounwind }
attributes #9 = { nobuiltin nounwind readnone }
attributes #10 = { nobuiltin nounwind }

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
!10 = !{!11, !2, i64 8}
!11 = !{!"_cmsOptimizationCollection_st", !2, i64 0, !2, i64 8}
!12 = !{!13, !2, i64 24}
!13 = !{!"", !14, i64 0, !2, i64 24}
!14 = !{!"_cmsPluginBaseStruct", !15, i64 0, !15, i64 4, !15, i64 8, !2, i64 16}
!15 = !{!"int", !3, i64 0}
!16 = !{!11, !2, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!19, !2, i64 0}
!19 = !{!"_cmsPipeline_struct", !2, i64 0, !15, i64 8, !15, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !15, i64 64}
!20 = !{!3, !3, i64 0}
!21 = !{!19, !2, i64 56}
!22 = !{!19, !15, i64 8}
!23 = !{!19, !15, i64 12}
!24 = !{!25, !3, i64 8}
!25 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !15, i64 16, !15, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!26 = !{!25, !2, i64 48}
!27 = !{!28, !2, i64 8}
!28 = !{!"", !15, i64 0, !2, i64 8}
!29 = !{!30, !2, i64 8}
!30 = !{!"", !3, i64 0, !2, i64 8, !15, i64 16, !15, i64 20}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !3, i64 0}
!33 = !{!25, !3, i64 12}
!34 = !{!25, !2, i64 56}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !3, i64 0}
!37 = !{!38, !15, i64 8}
!38 = !{!"", !2, i64 0, !15, i64 8, !15, i64 12, !3, i64 16, !3, i64 80, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168}
!39 = !{!38, !15, i64 12}
!40 = !{!41, !2, i64 0}
!41 = !{!"_cms_curve_struct", !2, i64 0, !15, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !15, i64 40, !2, i64 48}
!42 = !{!38, !2, i64 152}
!43 = !{!38, !2, i64 144}
!44 = !{!38, !2, i64 160}
!45 = !{!38, !2, i64 168}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !3, i64 0}
!48 = !{!25, !2, i64 0}
!49 = !{!41, !2, i64 48}
!50 = !{!28, !15, i64 0}
!51 = !{!52, !2, i64 8}
!52 = !{!"", !2, i64 0, !2, i64 8}
!53 = !{!52, !2, i64 0}
!54 = !{!55, !15, i64 8}
!55 = !{!"", !2, i64 0, !15, i64 8, !15, i64 12, !2, i64 16}
!56 = !{!55, !15, i64 12}
!57 = !{!55, !2, i64 16}
!58 = !{!59, !2, i64 0}
!59 = !{!"", !2, i64 0, !3, i64 8, !3, i64 1032, !3, i64 2056, !3, i64 3080, !3, i64 3116, !3, i64 3128, !3, i64 35898, !3, i64 68668}
!60 = !{!41, !15, i64 40}
!61 = !{!62, !2, i64 0}
!62 = !{!"", !2, i64 0, !2, i64 8, !3, i64 16, !3, i64 528, !3, i64 1040, !3, i64 1552, !3, i64 2576, !3, i64 3600}
!63 = !{!62, !2, i64 8}
!64 = !{!65, !15, i64 16}
!65 = !{!"_cms_interp_struc", !2, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!66 = !{!65, !2, i64 120}
