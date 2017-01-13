; ModuleID = './cmsgamma.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsCurvesPluginChunkType = type { %struct._cmsParametricCurvesCollection_st* }
%struct._cmsParametricCurvesCollection_st = type { i32, [20 x i32], [20 x i32], double (i32, double*, double)*, %struct._cmsParametricCurvesCollection_st* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginParametricCurves = type { %struct._cmsPluginBaseStruct, i32, [20 x i32], [20 x i32], double (i32, double*, double)* }
%struct._cms_curve_struct = type { %struct._cms_interp_struc*, i32, %struct.cmsCurveSegment*, %struct._cms_interp_struc**, double (i32, double*, double)**, i32, i16* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct.cmsCurveSegment = type { float, float, i32, [10 x double], i32, float* }
%union.anon = type { double }

@.str = private unnamed_addr constant [20 x i8] c"(ctx != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmsgamma.c\00", align 1
@__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk = private unnamed_addr constant [96 x i8] c"void _cmsAllocCurvesPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@_cmsAllocCurvesPluginChunk.CurvesPluginChunk = internal global %struct._cmsCurvesPluginChunkType zeroinitializer, align 8
@_cmsCurvesPluginChunk = global %struct._cmsCurvesPluginChunkType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"(t != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries = private unnamed_addr constant [75 x i8] c"cmsUInt32Number cmsGetToneCurveEstimatedTableEntries(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable = private unnamed_addr constant [75 x i8] c"const cmsUInt16Number *cmsGetToneCurveEstimatedTable(const cmsToneCurve *)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(Segments != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve = private unnamed_addr constant [94 x i8] c"cmsToneCurve *cmsBuildSegmentedToneCurve(cmsContext, cmsInt32Number, const cmsCurveSegment *)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"(Params != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsBuildParametricToneCurve = private unnamed_addr constant [96 x i8] c"cmsToneCurve *cmsBuildParametricToneCurve(cmsContext, cmsInt32Number, const cmsFloat64Number *)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid parametric curve type %d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"(Curve != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsFreeToneCurveTriple = private unnamed_addr constant [45 x i8] c"void cmsFreeToneCurveTriple(cmsToneCurve **)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"(X != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsJoinToneCurve = private unnamed_addr constant [104 x i8] c"cmsToneCurve *cmsJoinToneCurve(cmsContext, const cmsToneCurve *, const cmsToneCurve *, cmsUInt32Number)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(Y != ((void*)0))\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"(InCurve != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsReverseToneCurveEx = private unnamed_addr constant [74 x i8] c"cmsToneCurve *cmsReverseToneCurveEx(cmsInt32Number, const cmsToneCurve *)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"(InGamma != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsReverseToneCurve = private unnamed_addr constant [56 x i8] c"cmsToneCurve *cmsReverseToneCurve(const cmsToneCurve *)\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"cmsSmoothToneCurve: too many points.\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cmsSmoothToneCurve: Non-Monotonic.\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"cmsSmoothToneCurve: Degenerated, mostly zeros.\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"cmsSmoothToneCurve: Degenerated, mostly poles.\00", align 1
@__PRETTY_FUNCTION__.cmsIsToneCurveLinear = private unnamed_addr constant [51 x i8] c"cmsBool cmsIsToneCurveLinear(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic = private unnamed_addr constant [54 x i8] c"cmsBool cmsIsToneCurveMonotonic(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsIsToneCurveDescending = private unnamed_addr constant [55 x i8] c"cmsBool cmsIsToneCurveDescending(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment = private unnamed_addr constant [57 x i8] c"cmsBool cmsIsToneCurveMultisegment(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsGetToneCurveParametricType = private unnamed_addr constant [67 x i8] c"cmsInt32Number cmsGetToneCurveParametricType(const cmsToneCurve *)\00", align 1
@__PRETTY_FUNCTION__.cmsEvalToneCurveFloat = private unnamed_addr constant [79 x i8] c"cmsFloat32Number cmsEvalToneCurveFloat(const cmsToneCurve *, cmsFloat32Number)\00", align 1
@__PRETTY_FUNCTION__.cmsEvalToneCurve16 = private unnamed_addr constant [74 x i8] c"cmsUInt16Number cmsEvalToneCurve16(const cmsToneCurve *, cmsUInt16Number)\00", align 1
@__PRETTY_FUNCTION__.cmsEstimateGamma = private unnamed_addr constant [74 x i8] c"cmsFloat64Number cmsEstimateGamma(const cmsToneCurve *, cmsFloat64Number)\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"(head != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.DupPluginCurvesList = private unnamed_addr constant [89 x i8] c"void DupPluginCurvesList(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Couldn't create tone curve of more than 65530 entries\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Couldn't create tone curve with zero segments and no table\00", align 1
@DefaultCurves = internal global %struct._cmsParametricCurvesCollection_st { i32 9, [20 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 108, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [20 x i32] [i32 1, i32 3, i32 4, i32 5, i32 7, i32 4, i32 5, i32 5, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], double (i32, double*, double)* @DefaultEvalParametricFn, %struct._cmsParametricCurvesCollection_st* null }, align 8

; Function Attrs: nounwind uwtable
define void @_cmsAllocCurvesPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsContext_struct* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  call void @DupPluginCurvesList(%struct._cmsContext_struct* %3, %struct._cmsContext_struct* %4) #8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 1
  %6 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %6, i8* bitcast (%struct._cmsCurvesPluginChunkType* @_cmsAllocCurvesPluginChunk.CurvesPluginChunk to i8*), i32 8) #8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 6
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @DupPluginCurvesList(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %newHead = alloca %struct._cmsCurvesPluginChunkType, align 8
  %entry1 = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %Anterior = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %head = alloca %struct._cmsCurvesPluginChunkType*, align 8
  %newEntry = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsCurvesPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast %struct._cmsCurvesPluginChunkType* %newHead to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 8, i1 false)
  %2 = bitcast %struct._cmsParametricCurvesCollection_st** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast %struct._cmsParametricCurvesCollection_st** %Anterior to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  store %struct._cmsParametricCurvesCollection_st* null, %struct._cmsParametricCurvesCollection_st** %Anterior, align 8, !tbaa !1
  %4 = bitcast %struct._cmsCurvesPluginChunkType** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 6
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct._cmsCurvesPluginChunkType*
  store %struct._cmsCurvesPluginChunkType* %7, %struct._cmsCurvesPluginChunkType** %head, align 8, !tbaa !1
  %8 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %head, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsCurvesPluginChunkType* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.DupPluginCurvesList, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %head, align 8, !tbaa !1
  %ParametricCurves = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %10, i32 0, i32 0
  %11 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %ParametricCurves, align 8, !tbaa !8
  store %struct._cmsParametricCurvesCollection_st* %11, %struct._cmsParametricCurvesCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %entry1, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cmsParametricCurvesCollection_st* %12, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct._cmsParametricCurvesCollection_st** %newEntry to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #3
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %14, i32 0, i32 1
  %15 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %16 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %entry1, align 8, !tbaa !1
  %17 = bitcast %struct._cmsParametricCurvesCollection_st* %16 to i8*
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %15, i8* %17, i32 184) #8
  %18 = bitcast i8* %call to %struct._cmsParametricCurvesCollection_st*
  store %struct._cmsParametricCurvesCollection_st* %18, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  %19 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cmsParametricCurvesCollection_st* %19, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %20, i32 0, i32 4
  store %struct._cmsParametricCurvesCollection_st* null, %struct._cmsParametricCurvesCollection_st** %Next, align 8, !tbaa !10
  %21 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %Anterior, align 8, !tbaa !1
  %tobool = icmp ne %struct._cmsParametricCurvesCollection_st* %21, null
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %22 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  %23 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %Anterior, align 8, !tbaa !1
  %Next5 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %23, i32 0, i32 4
  store %struct._cmsParametricCurvesCollection_st* %22, %struct._cmsParametricCurvesCollection_st** %Next5, align 8, !tbaa !10
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %24 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  store %struct._cmsParametricCurvesCollection_st* %24, %struct._cmsParametricCurvesCollection_st** %Anterior, align 8, !tbaa !1
  %ParametricCurves7 = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %newHead, i32 0, i32 0
  %25 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %ParametricCurves7, align 8, !tbaa !8
  %cmp8 = icmp eq %struct._cmsParametricCurvesCollection_st* %25, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %26 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %newEntry, align 8, !tbaa !1
  %ParametricCurves10 = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %newHead, i32 0, i32 0
  store %struct._cmsParametricCurvesCollection_st* %26, %struct._cmsParametricCurvesCollection_st** %ParametricCurves10, align 8, !tbaa !8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then
  %27 = bitcast %struct._cmsParametricCurvesCollection_st** %newEntry to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %28 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %entry1, align 8, !tbaa !1
  %Next12 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %28, i32 0, i32 4
  %29 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %Next12, align 8, !tbaa !10
  store %struct._cmsParametricCurvesCollection_st* %29, %struct._cmsParametricCurvesCollection_st** %entry1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %30, i32 0, i32 1
  %31 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool13, align 8, !tbaa !5
  %32 = bitcast %struct._cmsCurvesPluginChunkType* %newHead to i8*
  %call14 = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %31, i8* %32, i32 8) #8
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks15 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %33, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks15, i32 0, i64 6
  store i8* %call14, i8** %arrayidx16, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.17

cleanup.17:                                       ; preds = %for.end, %cleanup
  %34 = bitcast %struct._cmsCurvesPluginChunkType** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast %struct._cmsParametricCurvesCollection_st** %Anterior to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  %36 = bitcast %struct._cmsParametricCurvesCollection_st** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #3
  %37 = bitcast %struct._cmsCurvesPluginChunkType* %newHead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %cleanup.dest.21 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.21, label %unreachable [
    i32 0, label %cleanup.cont.22
    i32 1, label %cleanup.cont.22
  ]

cleanup.cont.22:                                  ; preds = %cleanup.17, %cleanup.17
  ret void

unreachable:                                      ; preds = %cleanup.17
  unreachable
}

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterParametricCurvesPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %ctx = alloca %struct._cmsCurvesPluginChunkType*, align 8
  %Plugin = alloca %struct.cmsPluginParametricCurves*, align 8
  %fl = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsCurvesPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 6) #8
  %2 = bitcast i8* %call to %struct._cmsCurvesPluginChunkType*
  store %struct._cmsCurvesPluginChunkType* %2, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %3 = bitcast %struct.cmsPluginParametricCurves** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %5 = bitcast %struct._cmsPluginBaseStruct* %4 to %struct.cmsPluginParametricCurves*
  store %struct.cmsPluginParametricCurves* %5, %struct.cmsPluginParametricCurves** %Plugin, align 8, !tbaa !1
  %6 = bitcast %struct._cmsParametricCurvesCollection_st** %fl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %ParametricCurves = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %8, i32 0, i32 0
  store %struct._cmsParametricCurvesCollection_st* null, %struct._cmsParametricCurvesCollection_st** %ParametricCurves, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %9, i32 184) #8
  %10 = bitcast i8* %call1 to %struct._cmsParametricCurvesCollection_st*
  store %struct._cmsParametricCurvesCollection_st* %10, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %11 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cmsParametricCurvesCollection_st* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.cmsPluginParametricCurves*, %struct.cmsPluginParametricCurves** %Plugin, align 8, !tbaa !1
  %Evaluator = getelementptr inbounds %struct.cmsPluginParametricCurves, %struct.cmsPluginParametricCurves* %12, i32 0, i32 4
  %13 = load double (i32, double*, double)*, double (i32, double*, double)** %Evaluator, align 8, !tbaa !13
  %14 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %Evaluator5 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %14, i32 0, i32 3
  store double (i32, double*, double)* %13, double (i32, double*, double)** %Evaluator5, align 8, !tbaa !16
  %15 = load %struct.cmsPluginParametricCurves*, %struct.cmsPluginParametricCurves** %Plugin, align 8, !tbaa !1
  %nFunctions = getelementptr inbounds %struct.cmsPluginParametricCurves, %struct.cmsPluginParametricCurves* %15, i32 0, i32 1
  %16 = load i32, i32* %nFunctions, align 4, !tbaa !17
  %17 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %nFunctions6 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %17, i32 0, i32 0
  store i32 %16, i32* %nFunctions6, align 4, !tbaa !18
  %18 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %nFunctions7 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %18, i32 0, i32 0
  %19 = load i32, i32* %nFunctions7, align 4, !tbaa !18
  %cmp8 = icmp sgt i32 %19, 20
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.4
  %20 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %nFunctions10 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %20, i32 0, i32 0
  store i32 20, i32* %nFunctions10, align 4, !tbaa !18
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.4
  %21 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %FunctionTypes = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %21, i32 0, i32 1
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %FunctionTypes, i32 0, i32 0
  %22 = bitcast i32* %arraydecay to i8*
  %23 = load %struct.cmsPluginParametricCurves*, %struct.cmsPluginParametricCurves** %Plugin, align 8, !tbaa !1
  %FunctionTypes12 = getelementptr inbounds %struct.cmsPluginParametricCurves, %struct.cmsPluginParametricCurves* %23, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [20 x i32], [20 x i32]* %FunctionTypes12, i32 0, i32 0
  %24 = bitcast i32* %arraydecay13 to i8*
  %25 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %nFunctions14 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %25, i32 0, i32 0
  %26 = load i32, i32* %nFunctions14, align 4, !tbaa !18
  %conv = sext i32 %26 to i64
  %mul = mul i64 %conv, 4
  %call15 = call i8* @memmove(i8* %22, i8* %24, i64 %mul) #9
  %27 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %ParameterCount = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %27, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [20 x i32], [20 x i32]* %ParameterCount, i32 0, i32 0
  %28 = bitcast i32* %arraydecay16 to i8*
  %29 = load %struct.cmsPluginParametricCurves*, %struct.cmsPluginParametricCurves** %Plugin, align 8, !tbaa !1
  %ParameterCount17 = getelementptr inbounds %struct.cmsPluginParametricCurves, %struct.cmsPluginParametricCurves* %29, i32 0, i32 3
  %arraydecay18 = getelementptr inbounds [20 x i32], [20 x i32]* %ParameterCount17, i32 0, i32 0
  %30 = bitcast i32* %arraydecay18 to i8*
  %31 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %nFunctions19 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %31, i32 0, i32 0
  %32 = load i32, i32* %nFunctions19, align 4, !tbaa !18
  %conv20 = sext i32 %32 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call i8* @memmove(i8* %28, i8* %30, i64 %mul21) #9
  %33 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %ParametricCurves23 = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %33, i32 0, i32 0
  %34 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %ParametricCurves23, align 8, !tbaa !8
  %35 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %35, i32 0, i32 4
  store %struct._cmsParametricCurvesCollection_st* %34, %struct._cmsParametricCurvesCollection_st** %Next, align 8, !tbaa !10
  %36 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %fl, align 8, !tbaa !1
  %37 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %ParametricCurves24 = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %37, i32 0, i32 0
  store %struct._cmsParametricCurvesCollection_st* %36, %struct._cmsParametricCurvesCollection_st** %ParametricCurves24, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.3, %if.then
  %38 = bitcast %struct._cmsParametricCurvesCollection_st** %fl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast %struct.cmsPluginParametricCurves** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast %struct._cmsCurvesPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #2

declare i8* @_cmsPluginMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @cmsGetToneCurveEstimatedTableEntries(%struct._cms_curve_struct* %t) #0 {
entry:
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 606, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 5
  %3 = load i32, i32* %nEntries, align 4, !tbaa !19
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i16* @cmsGetToneCurveEstimatedTable(%struct._cms_curve_struct* %t) #0 {
entry:
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 612, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 6
  %3 = load i16*, i16** %Table16, align 8, !tbaa !21
  ret i16* %3
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %ContextID, i32 %nEntries, i16* %Values) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nEntries.addr = alloca i32, align 4
  %Values.addr = alloca i16*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nEntries, i32* %nEntries.addr, align 4, !tbaa !22
  store i16* %Values, i16** %Values.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %2 = load i16*, i16** %Values.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @AllocateToneCurveStruct(%struct._cmsContext_struct* %0, i32 %1, i32 0, %struct.cmsCurveSegment* null, i16* %2) #8
  ret %struct._cms_curve_struct* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._cms_curve_struct* @AllocateToneCurveStruct(%struct._cmsContext_struct* %ContextID, i32 %nEntries, i32 %nSegments, %struct.cmsCurveSegment* %Segments, i16* %Values) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nEntries.addr = alloca i32, align 4
  %nSegments.addr = alloca i32, align 4
  %Segments.addr = alloca %struct.cmsCurveSegment*, align 8
  %Values.addr = alloca i16*, align 8
  %p = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nEntries, i32* %nEntries.addr, align 4, !tbaa !22
  store i32 %nSegments, i32* %nSegments.addr, align 4, !tbaa !22
  store %struct.cmsCurveSegment* %Segments, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  store i16* %Values, i16** %Values.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp = icmp sgt i32 %2, 65530
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %4, i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0)) #8
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp2 = icmp sle i32 %5, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %cmp3 = icmp sle i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %7, i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0)) #8
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %8, i32 56) #8
  %9 = bitcast i8* %call to %struct._cms_curve_struct*
  store %struct._cms_curve_struct* %9, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %10 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_curve_struct* %10, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.7:                                         ; preds = %if.end.5
  %11 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %cmp8 = icmp sle i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments10 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %12, i32 0, i32 2
  store %struct.cmsCurveSegment* null, %struct.cmsCurveSegment** %Segments10, align 8, !tbaa !23
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %13, i32 0, i32 4
  store double (i32, double*, double)** null, double (i32, double*, double)*** %Evals, align 8, !tbaa !24
  br label %if.end.23

if.else:                                          ; preds = %if.end.7
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %15 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %call11 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %14, i32 %15, i32 112) #8
  %16 = bitcast i8* %call11 to %struct.cmsCurveSegment*
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments12 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %17, i32 0, i32 2
  store %struct.cmsCurveSegment* %16, %struct.cmsCurveSegment** %Segments12, align 8, !tbaa !23
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments13 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %18, i32 0, i32 2
  %19 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments13, align 8, !tbaa !23
  %cmp14 = icmp eq %struct.cmsCurveSegment* %19, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  br label %Error

if.end.16:                                        ; preds = %if.else
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %21 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %call17 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %20, i32 %21, i32 8) #8
  %22 = bitcast i8* %call17 to double (i32, double*, double)**
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals18 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %23, i32 0, i32 4
  store double (i32, double*, double)** %22, double (i32, double*, double)*** %Evals18, align 8, !tbaa !24
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals19 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %24, i32 0, i32 4
  %25 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals19, align 8, !tbaa !24
  %cmp20 = icmp eq double (i32, double*, double)** %25, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  br label %Error

if.end.22:                                        ; preds = %if.end.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.9
  %26 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %27 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %nSegments24 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %27, i32 0, i32 1
  store i32 %26, i32* %nSegments24, align 4, !tbaa !25
  %28 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp25 = icmp sle i32 %28, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.23
  %29 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %29, i32 0, i32 6
  store i16* null, i16** %Table16, align 8, !tbaa !21
  br label %if.end.34

if.else.27:                                       ; preds = %if.end.23
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %31 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %call28 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %30, i32 %31, i32 2) #8
  %32 = bitcast i8* %call28 to i16*
  %33 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table1629 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %33, i32 0, i32 6
  store i16* %32, i16** %Table1629, align 8, !tbaa !21
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table1630 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %34, i32 0, i32 6
  %35 = load i16*, i16** %Table1630, align 8, !tbaa !21
  %cmp31 = icmp eq i16* %35, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.27
  br label %Error

if.end.33:                                        ; preds = %if.else.27
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.26
  %36 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %37 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %nEntries35 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %37, i32 0, i32 5
  store i32 %36, i32* %nEntries35, align 4, !tbaa !19
  %38 = load i16*, i16** %Values.addr, align 8, !tbaa !1
  %cmp36 = icmp ne i16* %38, null
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.44

land.lhs.true.37:                                 ; preds = %if.end.34
  %39 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp38 = icmp sgt i32 %39, 0
  br i1 %cmp38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %land.lhs.true.37
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.39
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %41 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %cmp40 = icmp slt i32 %40, %41
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %42 to i64
  %43 = load i16*, i16** %Values.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %43, i64 %idxprom
  %44 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %45 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom41 = sext i32 %45 to i64
  %46 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table1642 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %46, i32 0, i32 6
  %47 = load i16*, i16** %Table1642, align 8, !tbaa !21
  %arrayidx43 = getelementptr inbounds i16, i16* %47, i64 %idxprom41
  store i16 %44, i16* %arrayidx43, align 2, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %land.lhs.true.37, %if.end.34
  %49 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %cmp45 = icmp ne %struct.cmsCurveSegment* %49, null
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.115

land.lhs.true.46:                                 ; preds = %if.end.44
  %50 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %cmp47 = icmp sgt i32 %50, 0
  br i1 %cmp47, label %if.then.48, label %if.end.115

if.then.48:                                       ; preds = %land.lhs.true.46
  %51 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #3
  %52 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %53 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %call49 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %52, i32 %53, i32 8) #8
  %54 = bitcast i8* %call49 to %struct._cms_interp_struc**
  %55 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %SegInterp = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %55, i32 0, i32 3
  store %struct._cms_interp_struc** %54, %struct._cms_interp_struc*** %SegInterp, align 8, !tbaa !28
  %56 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %SegInterp50 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %56, i32 0, i32 3
  %57 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp50, align 8, !tbaa !28
  %cmp51 = icmp eq %struct._cms_interp_struc** %57, null
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.48
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.112, %if.end.53
  %58 = load i32, i32* %i, align 4, !tbaa !22
  %59 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %cmp55 = icmp slt i32 %58, %59
  br i1 %cmp55, label %for.body.56, label %for.end.114

for.body.56:                                      ; preds = %for.cond.54
  %60 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom57 = sext i32 %60 to i64
  %61 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %61, i64 %idxprom57
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx58, i32 0, i32 2
  %62 = load i32, i32* %Type, align 4, !tbaa !29
  %cmp59 = icmp eq i32 %62, 0
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %for.body.56
  %63 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %64 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom61 = sext i32 %64 to i64
  %65 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %65, i64 %idxprom61
  %nGridPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx62, i32 0, i32 4
  %66 = load i32, i32* %nGridPoints, align 4, !tbaa !32
  %call63 = call %struct._cms_interp_struc* @_cmsComputeInterpParams(%struct._cmsContext_struct* %63, i32 %66, i32 1, i32 1, i8* null, i32 1) #8
  %67 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom64 = sext i32 %67 to i64
  %68 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %SegInterp65 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %68, i32 0, i32 3
  %69 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp65, align 8, !tbaa !28
  %arrayidx66 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %69, i64 %idxprom64
  store %struct._cms_interp_struc* %call63, %struct._cms_interp_struc** %arrayidx66, align 8, !tbaa !1
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %for.body.56
  %70 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom68 = sext i32 %70 to i64
  %71 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments69 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %71, i32 0, i32 2
  %72 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments69, align 8, !tbaa !23
  %arrayidx70 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %72, i64 %idxprom68
  %73 = bitcast %struct.cmsCurveSegment* %arrayidx70 to i8*
  %74 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom71 = sext i32 %74 to i64
  %75 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %75, i64 %idxprom71
  %76 = bitcast %struct.cmsCurveSegment* %arrayidx72 to i8*
  %call73 = call i8* @memmove(i8* %73, i8* %76, i64 112) #9
  %77 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom74 = sext i32 %77 to i64
  %78 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %78, i64 %idxprom74
  %Type76 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx75, i32 0, i32 2
  %79 = load i32, i32* %Type76, align 4, !tbaa !29
  %cmp77 = icmp eq i32 %79, 0
  br i1 %cmp77, label %land.lhs.true.78, label %if.else.95

land.lhs.true.78:                                 ; preds = %if.end.67
  %80 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom79 = sext i32 %80 to i64
  %81 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %81, i64 %idxprom79
  %SampledPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx80, i32 0, i32 5
  %82 = load float*, float** %SampledPoints, align 8, !tbaa !33
  %cmp81 = icmp ne float* %82, null
  br i1 %cmp81, label %if.then.82, label %if.else.95

if.then.82:                                       ; preds = %land.lhs.true.78
  %83 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %84 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom83 = sext i32 %84 to i64
  %85 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %85, i64 %idxprom83
  %SampledPoints85 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx84, i32 0, i32 5
  %86 = load float*, float** %SampledPoints85, align 8, !tbaa !33
  %87 = bitcast float* %86 to i8*
  %88 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom86 = sext i32 %88 to i64
  %89 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %89, i64 %idxprom86
  %nGridPoints88 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx87, i32 0, i32 4
  %90 = load i32, i32* %nGridPoints88, align 4, !tbaa !32
  %conv = zext i32 %90 to i64
  %mul = mul i64 4, %conv
  %conv89 = trunc i64 %mul to i32
  %call90 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %83, i8* %87, i32 %conv89) #8
  %91 = bitcast i8* %call90 to float*
  %92 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom91 = sext i32 %92 to i64
  %93 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments92 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %93, i32 0, i32 2
  %94 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments92, align 8, !tbaa !23
  %arrayidx93 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %94, i64 %idxprom91
  %SampledPoints94 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx93, i32 0, i32 5
  store float* %91, float** %SampledPoints94, align 8, !tbaa !33
  br label %if.end.100

if.else.95:                                       ; preds = %land.lhs.true.78, %if.end.67
  %95 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments97 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %96, i32 0, i32 2
  %97 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments97, align 8, !tbaa !23
  %arrayidx98 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %97, i64 %idxprom96
  %SampledPoints99 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx98, i32 0, i32 5
  store float* null, float** %SampledPoints99, align 8, !tbaa !33
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.95, %if.then.82
  %98 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %99 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom101 = sext i32 %99 to i64
  %100 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %100, i64 %idxprom101
  %Type103 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx102, i32 0, i32 2
  %101 = load i32, i32* %Type103, align 4, !tbaa !29
  %call104 = call %struct._cmsParametricCurvesCollection_st* @GetParametricCurveByType(%struct._cmsContext_struct* %98, i32 %101, i32* null) #8
  store %struct._cmsParametricCurvesCollection_st* %call104, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %102 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %cmp105 = icmp ne %struct._cmsParametricCurvesCollection_st* %102, null
  br i1 %cmp105, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.end.100
  %103 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %Evaluator = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %103, i32 0, i32 3
  %104 = load double (i32, double*, double)*, double (i32, double*, double)** %Evaluator, align 8, !tbaa !16
  %105 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom108 = sext i32 %105 to i64
  %106 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals109 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %106, i32 0, i32 4
  %107 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals109, align 8, !tbaa !24
  %arrayidx110 = getelementptr inbounds double (i32, double*, double)*, double (i32, double*, double)** %107, i64 %idxprom108
  store double (i32, double*, double)* %104, double (i32, double*, double)** %arrayidx110, align 8, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %if.end.100
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %108 = load i32, i32* %i, align 4, !tbaa !22
  %inc113 = add nsw i32 %108, 1
  store i32 %inc113, i32* %i, align 4, !tbaa !22
  br label %for.cond.54

for.end.114:                                      ; preds = %for.cond.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.52, %for.end.114
  %109 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.139 [
    i32 0, label %cleanup.cont
    i32 2, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.115

if.end.115:                                       ; preds = %cleanup.cont, %land.lhs.true.46, %if.end.44
  %110 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %111 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %nEntries116 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %111, i32 0, i32 5
  %112 = load i32, i32* %nEntries116, align 4, !tbaa !19
  %113 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table16117 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %113, i32 0, i32 6
  %114 = load i16*, i16** %Table16117, align 8, !tbaa !21
  %115 = bitcast i16* %114 to i8*
  %call118 = call %struct._cms_interp_struc* @_cmsComputeInterpParams(%struct._cmsContext_struct* %110, i32 %112, i32 1, i32 1, i8* %115, i32 0) #8
  %116 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %116, i32 0, i32 0
  store %struct._cms_interp_struc* %call118, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %117 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %InterpParams119 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %117, i32 0, i32 0
  %118 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams119, align 8, !tbaa !34
  %cmp120 = icmp ne %struct._cms_interp_struc* %118, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.115
  %119 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  store %struct._cms_curve_struct* %119, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.123:                                       ; preds = %if.end.115
  br label %Error

Error:                                            ; preds = %if.end.123, %cleanup, %if.then.32, %if.then.21, %if.then.15
  %120 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments124 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %120, i32 0, i32 2
  %121 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments124, align 8, !tbaa !23
  %tobool125 = icmp ne %struct.cmsCurveSegment* %121, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %Error
  %122 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %123 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Segments127 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %123, i32 0, i32 2
  %124 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments127, align 8, !tbaa !23
  %125 = bitcast %struct.cmsCurveSegment* %124 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %122, i8* %125) #8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %Error
  %126 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals129 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %126, i32 0, i32 4
  %127 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals129, align 8, !tbaa !24
  %tobool130 = icmp ne double (i32, double*, double)** %127, null
  br i1 %tobool130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %if.end.128
  %128 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %129 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Evals132 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %129, i32 0, i32 4
  %130 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals132, align 8, !tbaa !24
  %131 = bitcast double (i32, double*, double)** %130 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %128, i8* %131) #8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %if.end.128
  %132 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table16134 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %132, i32 0, i32 6
  %133 = load i16*, i16** %Table16134, align 8, !tbaa !21
  %tobool135 = icmp ne i16* %133, null
  br i1 %tobool135, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.133
  %134 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %135 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %Table16137 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %135, i32 0, i32 6
  %136 = load i16*, i16** %Table16137, align 8, !tbaa !21
  %137 = bitcast i16* %136 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %134, i8* %137) #8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.133
  %138 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %139 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %p, align 8, !tbaa !1
  %140 = bitcast %struct._cms_curve_struct* %139 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %138, i8* %140) #8
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.138, %if.then.122, %cleanup, %if.then.6, %if.then.4, %if.then
  %141 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #3
  %142 = bitcast %struct._cms_curve_struct** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #3
  %143 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %143
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsBuildSegmentedToneCurve(%struct._cmsContext_struct* %ContextID, i32 %nSegments, %struct.cmsCurveSegment* %Segments) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nSegments.addr = alloca i32, align 4
  %Segments.addr = alloca %struct.cmsCurveSegment*, align 8
  %i = alloca i32, align 4
  %R = alloca double, align 8
  %Val = alloca double, align 8
  %g = alloca %struct._cms_curve_struct*, align 8
  %nGridPoints = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nSegments, i32* %nSegments.addr, align 4, !tbaa !22
  store %struct.cmsCurveSegment* %Segments, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast double* %R to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast double* %Val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast %struct._cms_curve_struct** %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 4096, i32* %nGridPoints, align 4, !tbaa !22
  %5 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCurveSegment* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 641, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %8 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %8, i64 0
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %Type, align 4, !tbaa !29
  %cmp2 = icmp eq i32 %9, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %10, i64 0
  %Params = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx3, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [10 x double], [10 x double]* %Params, i32 0, i64 0
  %11 = load double, double* %arrayidx4, align 8, !tbaa !35
  %call = call i32 @EntriesByGamma(double %11) #8
  store i32 %call, i32* %nGridPoints, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %13 = load i32, i32* %nGridPoints, align 4, !tbaa !22
  %14 = load i32, i32* %nSegments.addr, align 4, !tbaa !22
  %15 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments.addr, align 8, !tbaa !1
  %call5 = call %struct._cms_curve_struct* @AllocateToneCurveStruct(%struct._cmsContext_struct* %12, i32 %13, i32 %14, %struct.cmsCurveSegment* %15, i16* null) #8
  store %struct._cms_curve_struct* %call5, %struct._cms_curve_struct** %g, align 8, !tbaa !1
  %16 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cms_curve_struct* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %18 = load i32, i32* %nGridPoints, align 4, !tbaa !22
  %cmp9 = icmp slt i32 %17, %18
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %conv = sitofp i32 %19 to double
  %20 = load i32, i32* %nGridPoints, align 4, !tbaa !22
  %sub = sub nsw i32 %20, 1
  %conv10 = sitofp i32 %sub to double
  %div = fdiv double %conv, %conv10
  store double %div, double* %R, align 8, !tbaa !35
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g, align 8, !tbaa !1
  %22 = load double, double* %R, align 8, !tbaa !35
  %call11 = call double @EvalSegmentedFn(%struct._cms_curve_struct* %21, double %22) #8
  store double %call11, double* %Val, align 8, !tbaa !35
  %23 = load double, double* %Val, align 8, !tbaa !35
  %mul = fmul double %23, 6.553500e+04
  %call12 = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #8
  %24 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %25, i32 0, i32 6
  %26 = load i16*, i16** %Table16, align 8, !tbaa !21
  %arrayidx13 = getelementptr inbounds i16, i16* %26, i64 %idxprom
  store i16 %call12, i16* %arrayidx13, align 2, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g, align 8, !tbaa !1
  store %struct._cms_curve_struct* %28, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %29 = bitcast i32* %nGridPoints to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #3
  %30 = bitcast %struct._cms_curve_struct** %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #3
  %31 = bitcast double* %Val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #3
  %32 = bitcast double* %R to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #3
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %34
}

; Function Attrs: nounwind uwtable
define internal i32 @EntriesByGamma(double %Gamma) #0 {
entry:
  %retval = alloca i32, align 4
  %Gamma.addr = alloca double, align 8
  store double %Gamma, double* %Gamma.addr, align 8, !tbaa !35
  %0 = load double, double* %Gamma.addr, align 8, !tbaa !35
  %sub = fsub double %0, 1.000000e+00
  %call = call double @fabs(double %sub) #10
  %cmp = fcmp olt double %call, 1.000000e-03
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 4096, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal double @EvalSegmentedFn(%struct._cms_curve_struct* %g, double %R) #0 {
entry:
  %retval = alloca double, align 8
  %g.addr = alloca %struct._cms_curve_struct*, align 8
  %R.addr = alloca double, align 8
  %i = alloca i32, align 4
  %R1 = alloca float, align 4
  %Out = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %g, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  store double %R, double* %R.addr, align 8, !tbaa !35
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %nSegments, align 4, !tbaa !25
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !22
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %R.addr, align 8, !tbaa !35
  %5 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %6, i32 0, i32 2
  %7 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %7, i64 %idxprom
  %x0 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 0
  %8 = load float, float* %x0, align 4, !tbaa !37
  %conv = fpext float %8 to double
  %cmp1 = fcmp ogt double %4, %conv
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load double, double* %R.addr, align 8, !tbaa !35
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments4 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %11, i32 0, i32 2
  %12 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments4, align 8, !tbaa !23
  %arrayidx5 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %12, i64 %idxprom3
  %x1 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx5, i32 0, i32 1
  %13 = load float, float* %x1, align 4, !tbaa !38
  %conv6 = fpext float %13 to double
  %cmp7 = fcmp ole double %9, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments10 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %15, i32 0, i32 2
  %16 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments10, align 8, !tbaa !23
  %arrayidx11 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %16, i64 %idxprom9
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx11, i32 0, i32 2
  %17 = load i32, i32* %Type, align 4, !tbaa !29
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %18 = bitcast float* %R1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load double, double* %R.addr, align 8, !tbaa !35
  %20 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom15 = sext i32 %20 to i64
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %21, i32 0, i32 2
  %22 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments16, align 8, !tbaa !23
  %arrayidx17 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %22, i64 %idxprom15
  %x018 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx17, i32 0, i32 0
  %23 = load float, float* %x018, align 4, !tbaa !37
  %conv19 = fpext float %23 to double
  %sub20 = fsub double %19, %conv19
  %conv21 = fptrunc double %sub20 to float
  %24 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments23 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %25, i32 0, i32 2
  %26 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments23, align 8, !tbaa !23
  %arrayidx24 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %26, i64 %idxprom22
  %x125 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx24, i32 0, i32 1
  %27 = load float, float* %x125, align 4, !tbaa !38
  %28 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom26 = sext i32 %28 to i64
  %29 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments27 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %29, i32 0, i32 2
  %30 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments27, align 8, !tbaa !23
  %arrayidx28 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %30, i64 %idxprom26
  %x029 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx28, i32 0, i32 0
  %31 = load float, float* %x029, align 4, !tbaa !37
  %sub30 = fsub float %27, %31
  %div = fdiv float %conv21, %sub30
  store float %div, float* %R1, align 4, !tbaa !39
  %32 = bitcast float* %Out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #3
  %33 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom31 = sext i32 %33 to i64
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments32 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %34, i32 0, i32 2
  %35 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments32, align 8, !tbaa !23
  %arrayidx33 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %35, i64 %idxprom31
  %SampledPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx33, i32 0, i32 5
  %36 = load float*, float** %SampledPoints, align 8, !tbaa !33
  %37 = bitcast float* %36 to i8*
  %38 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %SegInterp = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %39, i32 0, i32 3
  %40 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp, align 8, !tbaa !28
  %arrayidx35 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %40, i64 %idxprom34
  %41 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx35, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %41, i32 0, i32 7
  store i8* %37, i8** %Table, align 8, !tbaa !40
  %42 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %SegInterp37 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %43, i32 0, i32 3
  %44 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp37, align 8, !tbaa !28
  %arrayidx38 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %44, i64 %idxprom36
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx38, align 8, !tbaa !1
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 8
  %LerpFloat = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  %46 = load void (float*, float*, %struct._cms_interp_struc*)*, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom39 = sext i32 %47 to i64
  %48 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %SegInterp40 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %48, i32 0, i32 3
  %49 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp40, align 8, !tbaa !28
  %arrayidx41 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %49, i64 %idxprom39
  %50 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx41, align 8, !tbaa !1
  call void %46(float* %R1, float* %Out, %struct._cms_interp_struc* %50) #8
  %51 = load float, float* %Out, align 4, !tbaa !39
  %conv42 = fpext float %51 to double
  store double %conv42, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  %52 = bitcast float* %Out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast float* %R1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  br label %cleanup

if.else:                                          ; preds = %if.then
  %54 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom43 = sext i32 %54 to i64
  %55 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Evals = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %55, i32 0, i32 4
  %56 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals, align 8, !tbaa !24
  %arrayidx44 = getelementptr inbounds double (i32, double*, double)*, double (i32, double*, double)** %56, i64 %idxprom43
  %57 = load double (i32, double*, double)*, double (i32, double*, double)** %arrayidx44, align 8, !tbaa !1
  %58 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom45 = sext i32 %58 to i64
  %59 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments46 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %59, i32 0, i32 2
  %60 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments46, align 8, !tbaa !23
  %arrayidx47 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %60, i64 %idxprom45
  %Type48 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx47, i32 0, i32 2
  %61 = load i32, i32* %Type48, align 4, !tbaa !29
  %62 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom49 = sext i32 %62 to i64
  %63 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %g.addr, align 8, !tbaa !1
  %Segments50 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %63, i32 0, i32 2
  %64 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments50, align 8, !tbaa !23
  %arrayidx51 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %64, i64 %idxprom49
  %Params = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx51, i32 0, i32 3
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %Params, i32 0, i32 0
  %65 = load double, double* %R.addr, align 8, !tbaa !35
  %call = call double %57(i32 %61, double* %arraydecay, double %65) #8
  store double %call, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0xC480F0CF00000000, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else, %if.then.14
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = load double, double* %retval
  ret double %68
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #5 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !35
  %0 = load double, double* %d.addr, align 8, !tbaa !35
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !35
  %1 = load double, double* %d.addr, align 8, !tbaa !35
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !35
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !35
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #8
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsBuildTabulatedToneCurveFloat(%struct._cmsContext_struct* %ContextID, i32 %nEntries, float* %values) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nEntries.addr = alloca i32, align 4
  %values.addr = alloca float*, align 8
  %Seg = alloca [3 x %struct.cmsCurveSegment], align 16
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nEntries, i32* %nEntries.addr, align 4, !tbaa !22
  store float* %values, float** %values.addr, align 8, !tbaa !1
  %0 = bitcast [3 x %struct.cmsCurveSegment]* %Seg to i8*
  call void @llvm.lifetime.start(i64 336, i8* %0) #3
  %arrayidx = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %x0 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 0
  store float 0xC480F0CF00000000, float* %x0, align 4, !tbaa !37
  %arrayidx1 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %x1 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx1, i32 0, i32 1
  store float 0.000000e+00, float* %x1, align 4, !tbaa !38
  %arrayidx2 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx2, i32 0, i32 2
  store i32 6, i32* %Type, align 4, !tbaa !29
  %arrayidx3 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Params = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx3, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [10 x double], [10 x double]* %Params, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx4, align 8, !tbaa !35
  %arrayidx5 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Params6 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx5, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %Params6, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx7, align 8, !tbaa !35
  %arrayidx8 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Params9 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx8, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [10 x double], [10 x double]* %Params9, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx10, align 8, !tbaa !35
  %1 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %1, i64 0
  %2 = load float, float* %arrayidx11, align 4, !tbaa !39
  %conv = fpext float %2 to double
  %arrayidx12 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Params13 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx12, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [10 x double], [10 x double]* %Params13, i32 0, i64 3
  store double %conv, double* %arrayidx14, align 8, !tbaa !35
  %arrayidx15 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 0
  %Params16 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx15, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [10 x double], [10 x double]* %Params16, i32 0, i64 4
  store double 0.000000e+00, double* %arrayidx17, align 8, !tbaa !35
  %arrayidx18 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 1
  %x019 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx18, i32 0, i32 0
  store float 0.000000e+00, float* %x019, align 4, !tbaa !37
  %arrayidx20 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 1
  %x121 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx20, i32 0, i32 1
  store float 1.000000e+00, float* %x121, align 4, !tbaa !38
  %arrayidx22 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 1
  %Type23 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %Type23, align 4, !tbaa !29
  %3 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %arrayidx24 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 1
  %nGridPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx24, i32 0, i32 4
  store i32 %3, i32* %nGridPoints, align 4, !tbaa !32
  %4 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 1
  %SampledPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx25, i32 0, i32 5
  store float* %4, float** %SampledPoints, align 8, !tbaa !33
  %arrayidx26 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %x027 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx26, i32 0, i32 0
  store float 1.000000e+00, float* %x027, align 4, !tbaa !37
  %arrayidx28 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %x129 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx28, i32 0, i32 1
  store float 0x4480F0CF00000000, float* %x129, align 4, !tbaa !38
  %arrayidx30 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Type31 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx30, i32 0, i32 2
  store i32 6, i32* %Type31, align 4, !tbaa !29
  %arrayidx32 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Params33 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx32, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [10 x double], [10 x double]* %Params33, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx34, align 8, !tbaa !35
  %arrayidx35 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Params36 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx35, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [10 x double], [10 x double]* %Params36, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx37, align 8, !tbaa !35
  %arrayidx38 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Params39 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx38, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [10 x double], [10 x double]* %Params39, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx40, align 8, !tbaa !35
  %5 = load i32, i32* %nEntries.addr, align 4, !tbaa !22
  %sub = sub i32 %5, 1
  %idxprom = zext i32 %sub to i64
  %6 = load float*, float** %values.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx41, align 4, !tbaa !39
  %conv42 = fpext float %7 to double
  %arrayidx43 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Params44 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx43, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [10 x double], [10 x double]* %Params44, i32 0, i64 3
  store double %conv42, double* %arrayidx45, align 8, !tbaa !35
  %arrayidx46 = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i64 2
  %Params47 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx46, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [10 x double], [10 x double]* %Params47, i32 0, i64 4
  store double 0.000000e+00, double* %arrayidx48, align 8, !tbaa !35
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x %struct.cmsCurveSegment], [3 x %struct.cmsCurveSegment]* %Seg, i32 0, i32 0
  %call = call %struct._cms_curve_struct* @cmsBuildSegmentedToneCurve(%struct._cmsContext_struct* %8, i32 3, %struct.cmsCurveSegment* %arraydecay) #8
  %9 = bitcast [3 x %struct.cmsCurveSegment]* %Seg to i8*
  call void @llvm.lifetime.end(i64 336, i8* %9) #3
  ret %struct._cms_curve_struct* %call
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %ContextID, i32 %Type, double* %Params) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Type.addr = alloca i32, align 4
  %Params.addr = alloca double*, align 8
  %Seg0 = alloca %struct.cmsCurveSegment, align 8
  %Pos = alloca i32, align 4
  %size = alloca i32, align 4
  %c = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !22
  store double* %Params, double** %Params.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCurveSegment* %Seg0 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %0) #3
  %1 = bitcast i32* %Pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 0, i32* %Pos, align 4, !tbaa !22
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load i32, i32* %Type.addr, align 4, !tbaa !22
  %call = call %struct._cmsParametricCurvesCollection_st* @GetParametricCurveByType(%struct._cmsContext_struct* %4, i32 %5, i32* %Pos) #8
  store %struct._cmsParametricCurvesCollection_st* %call, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %6 = load double*, double** %Params.addr, align 8, !tbaa !1
  %cmp = icmp ne double* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 719, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__.cmsBuildParametricToneCurve, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsParametricCurvesCollection_st* %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load i32, i32* %Type.addr, align 4, !tbaa !22
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %9, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %10) #8
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %11 = bitcast %struct.cmsCurveSegment* %Seg0 to i8*
  %call2 = call i8* @memset(i8* %11, i32 0, i64 112) #9
  %x0 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %Seg0, i32 0, i32 0
  store float 0xC480F0CF00000000, float* %x0, align 4, !tbaa !37
  %x1 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %Seg0, i32 0, i32 1
  store float 0x4480F0CF00000000, float* %x1, align 4, !tbaa !38
  %12 = load i32, i32* %Type.addr, align 4, !tbaa !22
  %Type3 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %Seg0, i32 0, i32 2
  store i32 %12, i32* %Type3, align 4, !tbaa !29
  %13 = load i32, i32* %Pos, align 4, !tbaa !22
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %ParameterCount = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %ParameterCount, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %conv = sext i32 %15 to i64
  %mul = mul i64 %conv, 8
  %conv4 = trunc i64 %mul to i32
  store i32 %conv4, i32* %size, align 4, !tbaa !22
  %Params5 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %Seg0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %Params5, i32 0, i32 0
  %16 = bitcast double* %arraydecay to i8*
  %17 = load double*, double** %Params.addr, align 8, !tbaa !1
  %18 = bitcast double* %17 to i8*
  %19 = load i32, i32* %size, align 4, !tbaa !22
  %conv6 = zext i32 %19 to i64
  %call7 = call i8* @memmove(i8* %16, i8* %18, i64 %conv6) #9
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call8 = call %struct._cms_curve_struct* @cmsBuildSegmentedToneCurve(%struct._cmsContext_struct* %20, i32 1, %struct.cmsCurveSegment* %Seg0) #8
  store %struct._cms_curve_struct* %call8, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #3
  %22 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #3
  %23 = bitcast i32* %Pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  %24 = bitcast %struct.cmsCurveSegment* %Seg0 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %24) #3
  %25 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsParametricCurvesCollection_st* @GetParametricCurveByType(%struct._cmsContext_struct* %ContextID, i32 %Type, i32* %index) #0 {
entry:
  %retval = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Type.addr = alloca i32, align 4
  %index.addr = alloca i32*, align 8
  %c = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %Position = alloca i32, align 4
  %ctx = alloca %struct._cmsCurvesPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !22
  store i32* %index, i32** %index.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %Position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast %struct._cmsCurvesPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %3, i32 6) #8
  %4 = bitcast i8* %call to %struct._cmsCurvesPluginChunkType*
  store %struct._cmsCurvesPluginChunkType* %4, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %5 = load %struct._cmsCurvesPluginChunkType*, %struct._cmsCurvesPluginChunkType** %ctx, align 8, !tbaa !1
  %ParametricCurves = getelementptr inbounds %struct._cmsCurvesPluginChunkType, %struct._cmsCurvesPluginChunkType* %5, i32 0, i32 0
  %6 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %ParametricCurves, align 8, !tbaa !8
  store %struct._cmsParametricCurvesCollection_st* %6, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsParametricCurvesCollection_st* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %Type.addr, align 4, !tbaa !22
  %9 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %call1 = call i32 @IsInSet(i32 %8, %struct._cmsParametricCurvesCollection_st* %9) #8
  store i32 %call1, i32* %Position, align 4, !tbaa !22
  %10 = load i32, i32* %Position, align 4, !tbaa !22
  %cmp2 = icmp ne i32 %10, -1
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %cmp3 = icmp ne i32* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %12 = load i32, i32* %Position, align 4, !tbaa !22
  %13 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 %12, i32* %13, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %14 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  store %struct._cmsParametricCurvesCollection_st* %14, %struct._cmsParametricCurvesCollection_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %15 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %15, i32 0, i32 4
  %16 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %Next, align 8, !tbaa !10
  store %struct._cmsParametricCurvesCollection_st* %16, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._cmsParametricCurvesCollection_st* @DefaultCurves, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %17 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %cmp7 = icmp ne %struct._cmsParametricCurvesCollection_st* %17, null
  br i1 %cmp7, label %for.body.8, label %for.end.18

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %Type.addr, align 4, !tbaa !22
  %19 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %call9 = call i32 @IsInSet(i32 %18, %struct._cmsParametricCurvesCollection_st* %19) #8
  store i32 %call9, i32* %Position, align 4, !tbaa !22
  %20 = load i32, i32* %Position, align 4, !tbaa !22
  %cmp10 = icmp ne i32 %20, -1
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.body.8
  %21 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %cmp12 = icmp ne i32* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %22 = load i32, i32* %Position, align 4, !tbaa !22
  %23 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 %22, i32* %23, align 4, !tbaa !22
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  %24 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  store %struct._cmsParametricCurvesCollection_st* %24, %struct._cmsParametricCurvesCollection_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.body.8
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %25 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  %Next17 = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %25, i32 0, i32 4
  %26 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %Next17, align 8, !tbaa !10
  store %struct._cmsParametricCurvesCollection_st* %26, %struct._cmsParametricCurvesCollection_st** %c, align 8, !tbaa !1
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  store %struct._cmsParametricCurvesCollection_st* null, %struct._cmsParametricCurvesCollection_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.18, %if.end.14, %if.end
  %27 = bitcast %struct._cmsCurvesPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #3
  %28 = bitcast i32* %Position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #3
  %29 = bitcast %struct._cmsParametricCurvesCollection_st** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #3
  %30 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %retval
  ret %struct._cmsParametricCurvesCollection_st* %30
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsBuildGamma(%struct._cmsContext_struct* %ContextID, double %Gamma) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Gamma.addr = alloca double, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store double %Gamma, double* %Gamma.addr, align 8, !tbaa !35
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %0, i32 1, double* %Gamma.addr) #8
  ret %struct._cms_curve_struct* %call
}

; Function Attrs: nounwind uwtable
define void @cmsFreeToneCurve(%struct._cms_curve_struct* %Curve) #0 {
entry:
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 0
  %3 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %ContextID1 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %3, i32 0, i32 0
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !42
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %InterpParams2 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %5, i32 0, i32 0
  %6 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams2, align 8, !tbaa !34
  call void @_cmsFreeInterpParams(%struct._cms_interp_struc* %6) #8
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %7, i32 0, i32 6
  %8 = load i16*, i16** %Table16, align 8, !tbaa !21
  %tobool = icmp ne i16* %8, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %10 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Table164 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %10, i32 0, i32 6
  %11 = load i16*, i16** %Table164, align 8, !tbaa !21
  %12 = bitcast i16* %11 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %9, i8* %12) #8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Segments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %13, i32 0, i32 2
  %14 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments, align 8, !tbaa !23
  %tobool6 = icmp ne %struct.cmsCurveSegment* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.27

if.then.7:                                        ; preds = %if.end.5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #3
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %16 = load i32, i32* %i, align 4, !tbaa !22
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %nSegments, align 4, !tbaa !25
  %cmp8 = icmp ult i32 %16, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = zext i32 %19 to i64
  %20 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Segments9 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %20, i32 0, i32 2
  %21 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments9, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %21, i64 %idxprom
  %SampledPoints = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 5
  %22 = load float*, float** %SampledPoints, align 8, !tbaa !33
  %tobool10 = icmp ne float* %22, null
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %for.body
  %23 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom12 = zext i32 %24 to i64
  %25 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Segments13 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %25, i32 0, i32 2
  %26 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments13, align 8, !tbaa !23
  %arrayidx14 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %26, i64 %idxprom12
  %SampledPoints15 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx14, i32 0, i32 5
  %27 = load float*, float** %SampledPoints15, align 8, !tbaa !33
  %28 = bitcast float* %27 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %23, i8* %28) #8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom17 = zext i32 %29 to i64
  %30 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %SegInterp = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %30, i32 0, i32 3
  %31 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp, align 8, !tbaa !28
  %arrayidx18 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %31, i64 %idxprom17
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx18, align 8, !tbaa !1
  %cmp19 = icmp ne %struct._cms_interp_struc* %32, null
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.16
  %33 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom21 = zext i32 %33 to i64
  %34 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %SegInterp22 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %34, i32 0, i32 3
  %35 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp22, align 8, !tbaa !28
  %arrayidx23 = getelementptr inbounds %struct._cms_interp_struc*, %struct._cms_interp_struc** %35, i64 %idxprom21
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %arrayidx23, align 8, !tbaa !1
  call void @_cmsFreeInterpParams(%struct._cms_interp_struc* %36) #8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %37 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %39 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Segments25 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %39, i32 0, i32 2
  %40 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments25, align 8, !tbaa !23
  %41 = bitcast %struct.cmsCurveSegment* %40 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %38, i8* %41) #8
  %42 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %43 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %SegInterp26 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %43, i32 0, i32 3
  %44 = load %struct._cms_interp_struc**, %struct._cms_interp_struc*** %SegInterp26, align 8, !tbaa !28
  %45 = bitcast %struct._cms_interp_struc** %44 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %42, i8* %45) #8
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end.5
  %47 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Evals = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %47, i32 0, i32 4
  %48 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals, align 8, !tbaa !24
  %tobool28 = icmp ne double (i32, double*, double)** %48, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %49 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %50 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Evals30 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %50, i32 0, i32 4
  %51 = load double (i32, double*, double)**, double (i32, double*, double)*** %Evals30, align 8, !tbaa !24
  %52 = bitcast double (i32, double*, double)** %51 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %49, i8* %52) #8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %53 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %tobool32 = icmp ne %struct._cms_curve_struct* %53, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %54 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %55 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %56 = bitcast %struct._cms_curve_struct* %55 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %54, i8* %56) #8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then
  %57 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #3
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

declare void @_cmsFreeInterpParams(%struct._cms_interp_struc*) #2

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind uwtable
define void @cmsFreeToneCurveTriple(%struct._cms_curve_struct** %Curve) #0 {
entry:
  %Curve.addr = alloca %struct._cms_curve_struct**, align 8
  store %struct._cms_curve_struct** %Curve, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct** %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 789, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.cmsFreeToneCurveTriple, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %2, i64 0
  %3 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cms_curve_struct* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %4, i64 0
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx2, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %6, i64 1
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx3, align 8, !tbaa !1
  %cmp4 = icmp ne %struct._cms_curve_struct* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %8, i64 1
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx6, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %9) #8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %10, i64 2
  %11 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx8, align 8, !tbaa !1
  %cmp9 = icmp ne %struct._cms_curve_struct* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %12 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %12, i64 2
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %arrayidx11, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %13) #8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %14 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %14, i64 2
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %arrayidx13, align 8, !tbaa !1
  %15 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %15, i64 1
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %arrayidx14, align 8, !tbaa !1
  %16 = load %struct._cms_curve_struct**, %struct._cms_curve_struct*** %Curve.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct._cms_curve_struct*, %struct._cms_curve_struct** %16, i64 0
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %arrayidx15, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsDupToneCurve(%struct._cms_curve_struct* %In) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %In.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %In, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %1, i32 0, i32 0
  %2 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %ContextID = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %2, i32 0, i32 0
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !42
  %4 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %4, i32 0, i32 5
  %5 = load i32, i32* %nEntries, align 4, !tbaa !19
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %nSegments, align 4, !tbaa !25
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %Segments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %8, i32 0, i32 2
  %9 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments, align 8, !tbaa !23
  %10 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %In.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %10, i32 0, i32 6
  %11 = load i16*, i16** %Table16, align 8, !tbaa !21
  %call = call %struct._cms_curve_struct* @AllocateToneCurveStruct(%struct._cmsContext_struct* %3, i32 %5, i32 %7, %struct.cmsCurveSegment* %9, i16* %11) #8
  store %struct._cms_curve_struct* %call, %struct._cms_curve_struct** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %12
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsJoinToneCurve(%struct._cmsContext_struct* %ContextID, %struct._cms_curve_struct* %X, %struct._cms_curve_struct* %Y, i32 %nResultingPoints) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %X.addr = alloca %struct._cms_curve_struct*, align 8
  %Y.addr = alloca %struct._cms_curve_struct*, align 8
  %nResultingPoints.addr = alloca i32, align 4
  %out = alloca %struct._cms_curve_struct*, align 8
  %Yreversed = alloca %struct._cms_curve_struct*, align 8
  %t = alloca float, align 4
  %x = alloca float, align 4
  %Res = alloca float*, align 8
  %i = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %X, %struct._cms_curve_struct** %X.addr, align 8, !tbaa !1
  store %struct._cms_curve_struct* %Y, %struct._cms_curve_struct** %Y.addr, align 8, !tbaa !1
  store i32 %nResultingPoints, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %0 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %1 = bitcast %struct._cms_curve_struct** %Yreversed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  %2 = bitcast float* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast float* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast float** %Res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  store float* null, float** %Res, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %X.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 823, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.cmsJoinToneCurve, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Y.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cms_curve_struct* %8, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 824, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.cmsJoinToneCurve, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %9, %cond.true.2
  %10 = load i32, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %11 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Y.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsReverseToneCurveEx(i32 %10, %struct._cms_curve_struct* %11) #8
  store %struct._cms_curve_struct* %call, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_curve_struct* %12, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  br label %Error

if.end:                                           ; preds = %cond.end.4
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %14 = load i32, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %call6 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %13, i32 %14, i32 4) #8
  %15 = bitcast i8* %call6 to float*
  store float* %15, float** %Res, align 8, !tbaa !1
  %16 = load float*, float** %Res, align 8, !tbaa !1
  %cmp7 = icmp eq float* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %Error

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %18 = load i32, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %cmp10 = icmp ult i32 %17, %18
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %conv = uitofp i32 %19 to float
  %20 = load i32, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %sub = sub i32 %20, 1
  %conv11 = uitofp i32 %sub to float
  %div = fdiv float %conv, %conv11
  store float %div, float* %t, align 4, !tbaa !39
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %X.addr, align 8, !tbaa !1
  %22 = load float, float* %t, align 4, !tbaa !39
  %call12 = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %21, float %22) #8
  store float %call12, float* %x, align 4, !tbaa !39
  %23 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  %24 = load float, float* %x, align 4, !tbaa !39
  %call13 = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %23, float %24) #8
  %25 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = zext i32 %25 to i64
  %26 = load float*, float** %Res, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %26, i64 %idxprom
  store float %call13, float* %arrayidx, align 4, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %29 = load i32, i32* %nResultingPoints.addr, align 4, !tbaa !22
  %30 = load float*, float** %Res, align 8, !tbaa !1
  %call14 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurveFloat(%struct._cmsContext_struct* %28, i32 %29, float* %30) #8
  store %struct._cms_curve_struct* %call14, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  br label %Error

Error:                                            ; preds = %for.end, %if.then.8, %if.then
  %31 = load float*, float** %Res, align 8, !tbaa !1
  %cmp15 = icmp ne float* %31, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %Error
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %33 = load float*, float** %Res, align 8, !tbaa !1
  %34 = bitcast float* %33 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %32, i8* %34) #8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %Error
  %35 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  %cmp19 = icmp ne %struct._cms_curve_struct* %35, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %36 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Yreversed, align 8, !tbaa !1
  call void @cmsFreeToneCurve(%struct._cms_curve_struct* %36) #8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %37 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  %39 = bitcast float** %Res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast float* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #3
  %41 = bitcast float* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  %42 = bitcast %struct._cms_curve_struct** %Yreversed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  %43 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #3
  ret %struct._cms_curve_struct* %37
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsReverseToneCurveEx(i32 %nResultSamples, %struct._cms_curve_struct* %InCurve) #0 {
entry:
  %retval = alloca %struct._cms_curve_struct*, align 8
  %nResultSamples.addr = alloca i32, align 4
  %InCurve.addr = alloca %struct._cms_curve_struct*, align 8
  %out = alloca %struct._cms_curve_struct*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %y = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Ascending = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %nResultSamples, i32* %nResultSamples.addr, align 4, !tbaa !22
  store %struct._cms_curve_struct* %InCurve, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  store double 0.000000e+00, double* %a, align 8, !tbaa !35
  %2 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  store double 0.000000e+00, double* %b, align 8, !tbaa !35
  %3 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %Ascending to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %11, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 909, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.cmsReverseToneCurveEx, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  %13 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %nSegments, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %14, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %15 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Segments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %15, i32 0, i32 2
  %16 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %16, i64 0
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 2
  %17 = load i32, i32* %Type, align 4, !tbaa !29
  %cmp2 = icmp sgt i32 %17, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %18 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %18, i32 0, i32 0
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %ContextID = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !42
  %21 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Segments4 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %21, i32 0, i32 2
  %22 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments4, align 8, !tbaa !23
  %arrayidx5 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %22, i64 0
  %Type6 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx5, i32 0, i32 2
  %23 = load i32, i32* %Type6, align 4, !tbaa !29
  %call = call %struct._cmsParametricCurvesCollection_st* @GetParametricCurveByType(%struct._cmsContext_struct* %20, i32 %23, i32* null) #8
  %cmp7 = icmp ne %struct._cmsParametricCurvesCollection_st* %call, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %InterpParams8 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %24, i32 0, i32 0
  %25 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams8, align 8, !tbaa !34
  %ContextID9 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %25, i32 0, i32 0
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID9, align 8, !tbaa !42
  %27 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Segments10 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %27, i32 0, i32 2
  %28 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments10, align 8, !tbaa !23
  %arrayidx11 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %28, i64 0
  %Type12 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx11, i32 0, i32 2
  %29 = load i32, i32* %Type12, align 4, !tbaa !29
  %sub = sub nsw i32 0, %29
  %30 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Segments13 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %30, i32 0, i32 2
  %31 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments13, align 8, !tbaa !23
  %arrayidx14 = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %31, i64 0
  %Params = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %Params, i32 0, i32 0
  %call15 = call %struct._cms_curve_struct* @cmsBuildParametricToneCurve(%struct._cmsContext_struct* %26, i32 %sub, double* %arraydecay) #8
  store %struct._cms_curve_struct* %call15, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %cond.end
  %32 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %InterpParams16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %32, i32 0, i32 0
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams16, align 8, !tbaa !34
  %ContextID17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 0
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !42
  %35 = load i32, i32* %nResultSamples.addr, align 4, !tbaa !22
  %call18 = call %struct._cms_curve_struct* @cmsBuildTabulatedToneCurve16(%struct._cmsContext_struct* %34, i32 %35, i16* null) #8
  store %struct._cms_curve_struct* %call18, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %36 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %cmp19 = icmp eq %struct._cms_curve_struct* %36, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store %struct._cms_curve_struct* null, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %37 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %call22 = call i32 @cmsIsToneCurveDescending(%struct._cms_curve_struct* %37) #8
  %tobool = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %Ascending, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %38 = load i32, i32* %i, align 4, !tbaa !22
  %39 = load i32, i32* %nResultSamples.addr, align 4, !tbaa !22
  %cmp23 = icmp slt i32 %38, %39
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %conv = sitofp i32 %40 to double
  %mul = fmul double %conv, 6.553500e+04
  %41 = load i32, i32* %nResultSamples.addr, align 4, !tbaa !22
  %sub24 = sub nsw i32 %41, 1
  %conv25 = sitofp i32 %sub24 to double
  %div = fdiv double %mul, %conv25
  store double %div, double* %y, align 8, !tbaa !35
  %42 = load double, double* %y, align 8, !tbaa !35
  %43 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %43, i32 0, i32 6
  %44 = load i16*, i16** %Table16, align 8, !tbaa !21
  %45 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %InterpParams26 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %45, i32 0, i32 0
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams26, align 8, !tbaa !34
  %call27 = call i32 @GetInterval(double %42, i16* %44, %struct._cms_interp_struc* %46) #8
  store i32 %call27, i32* %j, align 4, !tbaa !22
  %47 = load i32, i32* %j, align 4, !tbaa !22
  %cmp28 = icmp sge i32 %47, 0
  br i1 %cmp28, label %if.then.30, label %if.end.67

if.then.30:                                       ; preds = %for.body
  %48 = load i32, i32* %j, align 4, !tbaa !22
  %idxprom = sext i32 %48 to i64
  %49 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Table1631 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %49, i32 0, i32 6
  %50 = load i16*, i16** %Table1631, align 8, !tbaa !21
  %arrayidx32 = getelementptr inbounds i16, i16* %50, i64 %idxprom
  %51 = load i16, i16* %arrayidx32, align 2, !tbaa !26
  %conv33 = uitofp i16 %51 to double
  store double %conv33, double* %x1, align 8, !tbaa !35
  %52 = load i32, i32* %j, align 4, !tbaa !22
  %add = add nsw i32 %52, 1
  %idxprom34 = sext i32 %add to i64
  %53 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %Table1635 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %53, i32 0, i32 6
  %54 = load i16*, i16** %Table1635, align 8, !tbaa !21
  %arrayidx36 = getelementptr inbounds i16, i16* %54, i64 %idxprom34
  %55 = load i16, i16* %arrayidx36, align 2, !tbaa !26
  %conv37 = uitofp i16 %55 to double
  store double %conv37, double* %x2, align 8, !tbaa !35
  %56 = load i32, i32* %j, align 4, !tbaa !22
  %conv38 = sitofp i32 %56 to double
  %mul39 = fmul double %conv38, 6.553500e+04
  %57 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %57, i32 0, i32 5
  %58 = load i32, i32* %nEntries, align 4, !tbaa !19
  %sub40 = sub i32 %58, 1
  %conv41 = uitofp i32 %sub40 to double
  %div42 = fdiv double %mul39, %conv41
  store double %div42, double* %y1, align 8, !tbaa !35
  %59 = load i32, i32* %j, align 4, !tbaa !22
  %add43 = add nsw i32 %59, 1
  %conv44 = sitofp i32 %add43 to double
  %mul45 = fmul double %conv44, 6.553500e+04
  %60 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InCurve.addr, align 8, !tbaa !1
  %nEntries46 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %60, i32 0, i32 5
  %61 = load i32, i32* %nEntries46, align 4, !tbaa !19
  %sub47 = sub i32 %61, 1
  %conv48 = uitofp i32 %sub47 to double
  %div49 = fdiv double %mul45, %conv48
  store double %div49, double* %y2, align 8, !tbaa !35
  %62 = load double, double* %x1, align 8, !tbaa !35
  %63 = load double, double* %x2, align 8, !tbaa !35
  %cmp50 = fcmp oeq double %62, %63
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.30
  %64 = load i32, i32* %Ascending, align 4, !tbaa !22
  %tobool53 = icmp ne i32 %64, 0
  br i1 %tobool53, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %if.then.52
  %65 = load double, double* %y2, align 8, !tbaa !35
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.then.52
  %66 = load double, double* %y1, align 8, !tbaa !35
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond = phi double [ %65, %cond.true.54 ], [ %66, %cond.false.55 ]
  %call57 = call zeroext i16 @_cmsQuickSaturateWord(double %cond) #8
  %67 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom58 = sext i32 %67 to i64
  %68 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %Table1659 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %68, i32 0, i32 6
  %69 = load i16*, i16** %Table1659, align 8, !tbaa !21
  %arrayidx60 = getelementptr inbounds i16, i16* %69, i64 %idxprom58
  store i16 %call57, i16* %arrayidx60, align 2, !tbaa !26
  br label %for.inc

if.else:                                          ; preds = %if.then.30
  %70 = load double, double* %y2, align 8, !tbaa !35
  %71 = load double, double* %y1, align 8, !tbaa !35
  %sub61 = fsub double %70, %71
  %72 = load double, double* %x2, align 8, !tbaa !35
  %73 = load double, double* %x1, align 8, !tbaa !35
  %sub62 = fsub double %72, %73
  %div63 = fdiv double %sub61, %sub62
  store double %div63, double* %a, align 8, !tbaa !35
  %74 = load double, double* %y2, align 8, !tbaa !35
  %75 = load double, double* %a, align 8, !tbaa !35
  %76 = load double, double* %x2, align 8, !tbaa !35
  %mul64 = fmul double %75, %76
  %sub65 = fsub double %74, %mul64
  store double %sub65, double* %b, align 8, !tbaa !35
  br label %if.end.66

if.end.66:                                        ; preds = %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.body
  %77 = load double, double* %a, align 8, !tbaa !35
  %78 = load double, double* %y, align 8, !tbaa !35
  %mul68 = fmul double %77, %78
  %79 = load double, double* %b, align 8, !tbaa !35
  %add69 = fadd double %mul68, %79
  %call70 = call zeroext i16 @_cmsQuickSaturateWord(double %add69) #8
  %80 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom71 = sext i32 %80 to i64
  %81 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  %Table1672 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %81, i32 0, i32 6
  %82 = load i16*, i16** %Table1672, align 8, !tbaa !21
  %arrayidx73 = getelementptr inbounds i16, i16* %82, i64 %idxprom71
  store i16 %call70, i16* %arrayidx73, align 2, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %if.end.67, %cond.end.56
  %83 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %out, align 8, !tbaa !1
  store %struct._cms_curve_struct* %84, %struct._cms_curve_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.20, %if.then
  %85 = bitcast i32* %Ascending to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast double* %y2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  %89 = bitcast double* %x2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #3
  %90 = bitcast double* %y1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #3
  %91 = bitcast double* %x1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #3
  %92 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #3
  %95 = bitcast %struct._cms_curve_struct** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %retval
  ret %struct._cms_curve_struct* %96
}

declare i8* @_cmsCalloc(%struct._cmsContext_struct*, i32, i32) #2

; Function Attrs: nounwind uwtable
define float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %Curve, float %v) #0 {
entry:
  %retval = alloca float, align 4
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %v.addr = alloca float, align 4
  %In = alloca i16, align 2
  %Out = alloca i16, align 2
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  store float %v, float* %v.addr, align 4, !tbaa !39
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1195, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.cmsEvalToneCurveFloat, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %nSegments, align 4, !tbaa !25
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = bitcast i16* %In to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #3
  %5 = bitcast i16* %Out to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #3
  %6 = load float, float* %v.addr, align 4, !tbaa !39
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #8
  store i16 %call, i16* %In, align 2, !tbaa !26
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %8 = load i16, i16* %In, align 2, !tbaa !26
  %call2 = call zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %7, i16 zeroext %8) #8
  store i16 %call2, i16* %Out, align 2, !tbaa !26
  %9 = load i16, i16* %Out, align 2, !tbaa !26
  %conv3 = zext i16 %9 to i32
  %conv4 = sitofp i32 %conv3 to double
  %div = fdiv double %conv4, 6.553500e+04
  %conv5 = fptrunc double %div to float
  store float %conv5, float* %retval
  %10 = bitcast i16* %Out to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #3
  %11 = bitcast i16* %In to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #3
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %13 = load float, float* %v.addr, align 4, !tbaa !39
  %conv6 = fpext float %13 to double
  %call7 = call double @EvalSegmentedFn(%struct._cms_curve_struct* %12, double %conv6) #8
  %conv8 = fptrunc double %call7 to float
  store float %conv8, float* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load float, float* %retval
  ret float %14
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsToneCurveDescending(%struct._cms_curve_struct* %t) #0 {
entry:
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1170, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.cmsIsToneCurveDescending, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 6
  %3 = load i16*, i16** %Table16, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %conv = zext i16 %4 to i32
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %5, i32 0, i32 5
  %6 = load i32, i32* %nEntries, align 4, !tbaa !19
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table161 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %7, i32 0, i32 6
  %8 = load i16*, i16** %Table161, align 8, !tbaa !21
  %arrayidx2 = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx2, align 2, !tbaa !26
  %conv3 = zext i16 %9 to i32
  %cmp4 = icmp sgt i32 %conv, %conv3
  %conv5 = zext i1 %cmp4 to i32
  ret i32 %conv5
}

; Function Attrs: nounwind uwtable
define internal i32 @GetInterval(double %In, i16* %LutTable, %struct._cms_interp_struc* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %In.addr = alloca double, align 8
  %LutTable.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %i = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store double %In, double* %In.addr, align 8, !tbaa !35
  store i16* %LutTable, i16** %LutTable.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %3, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %cmp = icmp ult i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 0
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !26
  %conv = zext i16 %6 to i32
  %7 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain2 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %7, i32 0, i32 5
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain2, i32 0, i64 0
  %8 = load i32, i32* %arrayidx3, align 4, !tbaa !22
  %idxprom = zext i32 %8 to i64
  %9 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx4, align 2, !tbaa !26
  %conv5 = zext i16 %10 to i32
  %cmp6 = icmp slt i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else.44

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain9 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %11, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain9, i32 0, i64 0
  %12 = load i32, i32* %arrayidx10, align 4, !tbaa !22
  %sub = sub i32 %12, 1
  store i32 %sub, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %13 = load i32, i32* %i, align 4, !tbaa !22
  %cmp11 = icmp sge i32 %13, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom13 = sext i32 %14 to i64
  %15 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 %idxprom13
  %16 = load i16, i16* %arrayidx14, align 2, !tbaa !26
  %conv15 = zext i16 %16 to i32
  store i32 %conv15, i32* %y0, align 4, !tbaa !22
  %17 = load i32, i32* %i, align 4, !tbaa !22
  %add = add nsw i32 %17, 1
  %idxprom16 = sext i32 %add to i64
  %18 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i16, i16* %18, i64 %idxprom16
  %19 = load i16, i16* %arrayidx17, align 2, !tbaa !26
  %conv18 = zext i16 %19 to i32
  store i32 %conv18, i32* %y1, align 4, !tbaa !22
  %20 = load i32, i32* %y0, align 4, !tbaa !22
  %21 = load i32, i32* %y1, align 4, !tbaa !22
  %cmp19 = icmp sle i32 %20, %21
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %22 = load double, double* %In.addr, align 8, !tbaa !35
  %23 = load i32, i32* %y0, align 4, !tbaa !22
  %conv22 = sitofp i32 %23 to double
  %cmp23 = fcmp oge double %22, %conv22
  br i1 %cmp23, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.then.21
  %24 = load double, double* %In.addr, align 8, !tbaa !35
  %25 = load i32, i32* %y1, align 4, !tbaa !22
  %conv25 = sitofp i32 %25 to double
  %cmp26 = fcmp ole double %24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %land.lhs.true, %if.then.21
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %y1, align 4, !tbaa !22
  %28 = load i32, i32* %y0, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %27, %28
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %if.else
  %29 = load double, double* %In.addr, align 8, !tbaa !35
  %30 = load i32, i32* %y1, align 4, !tbaa !22
  %conv33 = sitofp i32 %30 to double
  %cmp34 = fcmp oge double %29, %conv33
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.41

land.lhs.true.36:                                 ; preds = %if.then.32
  %31 = load double, double* %In.addr, align 8, !tbaa !35
  %32 = load i32, i32* %y0, align 4, !tbaa !22
  %conv37 = sitofp i32 %32 to double
  %cmp38 = fcmp ole double %31, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.36
  %33 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %land.lhs.true.36, %if.then.32
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %34 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.87

if.else.44:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.85, %if.else.44
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain46 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 5
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain46, i32 0, i64 0
  %37 = load i32, i32* %arrayidx47, align 4, !tbaa !22
  %cmp48 = icmp slt i32 %35, %37
  br i1 %cmp48, label %for.body.50, label %for.end.86

for.body.50:                                      ; preds = %for.cond.45
  %38 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom51 = sext i32 %38 to i64
  %39 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %39, i64 %idxprom51
  %40 = load i16, i16* %arrayidx52, align 2, !tbaa !26
  %conv53 = zext i16 %40 to i32
  store i32 %conv53, i32* %y0, align 4, !tbaa !22
  %41 = load i32, i32* %i, align 4, !tbaa !22
  %add54 = add nsw i32 %41, 1
  %idxprom55 = sext i32 %add54 to i64
  %42 = load i16*, i16** %LutTable.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i16, i16* %42, i64 %idxprom55
  %43 = load i16, i16* %arrayidx56, align 2, !tbaa !26
  %conv57 = zext i16 %43 to i32
  store i32 %conv57, i32* %y1, align 4, !tbaa !22
  %44 = load i32, i32* %y0, align 4, !tbaa !22
  %45 = load i32, i32* %y1, align 4, !tbaa !22
  %cmp58 = icmp sle i32 %44, %45
  br i1 %cmp58, label %if.then.60, label %if.else.70

if.then.60:                                       ; preds = %for.body.50
  %46 = load double, double* %In.addr, align 8, !tbaa !35
  %47 = load i32, i32* %y0, align 4, !tbaa !22
  %conv61 = sitofp i32 %47 to double
  %cmp62 = fcmp oge double %46, %conv61
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.then.60
  %48 = load double, double* %In.addr, align 8, !tbaa !35
  %49 = load i32, i32* %y1, align 4, !tbaa !22
  %conv65 = sitofp i32 %49 to double
  %cmp66 = fcmp ole double %48, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.64
  %50 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %land.lhs.true.64, %if.then.60
  br label %if.end.84

if.else.70:                                       ; preds = %for.body.50
  %51 = load i32, i32* %y1, align 4, !tbaa !22
  %52 = load i32, i32* %y0, align 4, !tbaa !22
  %cmp71 = icmp slt i32 %51, %52
  br i1 %cmp71, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %if.else.70
  %53 = load double, double* %In.addr, align 8, !tbaa !35
  %54 = load i32, i32* %y1, align 4, !tbaa !22
  %conv74 = sitofp i32 %54 to double
  %cmp75 = fcmp oge double %53, %conv74
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.82

land.lhs.true.77:                                 ; preds = %if.then.73
  %55 = load double, double* %In.addr, align 8, !tbaa !35
  %56 = load i32, i32* %y0, align 4, !tbaa !22
  %conv78 = sitofp i32 %56 to double
  %cmp79 = fcmp ole double %55, %conv78
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %land.lhs.true.77
  %57 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %land.lhs.true.77, %if.then.73
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.else.70
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.69
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %58 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond.45

for.end.86:                                       ; preds = %for.cond.45
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %for.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.81, %if.then.68, %if.then.40, %if.then.28, %if.then
  %59 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #3
  %60 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define %struct._cms_curve_struct* @cmsReverseToneCurve(%struct._cms_curve_struct* %InGamma) #0 {
entry:
  %InGamma.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %InGamma, %struct._cms_curve_struct** %InGamma.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InGamma.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 971, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.cmsReverseToneCurve, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %InGamma.addr, align 8, !tbaa !1
  %call = call %struct._cms_curve_struct* @cmsReverseToneCurveEx(i32 4096, %struct._cms_curve_struct* %2) #8
  ret %struct._cms_curve_struct* %call
}

; Function Attrs: nounwind uwtable
define i32 @cmsSmoothToneCurve(%struct._cms_curve_struct* %Tab, double %lambda) #0 {
entry:
  %retval = alloca i32, align 4
  %Tab.addr = alloca %struct._cms_curve_struct*, align 8
  %lambda.addr = alloca double, align 8
  %w = alloca [4097 x float], align 16
  %y = alloca [4097 x float], align 16
  %z = alloca [4097 x float], align 16
  %i = alloca i32, align 4
  %nItems = alloca i32, align 4
  %Zeros = alloca i32, align 4
  %Poles = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %Tab, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  store double %lambda, double* %lambda.addr, align 8, !tbaa !35
  %0 = bitcast [4097 x float]* %w to i8*
  call void @llvm.lifetime.start(i64 16388, i8* %0) #3
  %1 = bitcast [4097 x float]* %y to i8*
  call void @llvm.lifetime.start(i64 16388, i8* %1) #3
  %2 = bitcast [4097 x float]* %z to i8*
  call void @llvm.lifetime.start(i64 16388, i8* %2) #3
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %nItems to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %Zeros to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %Poles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_curve_struct* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %call = call i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct* %8) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %9, i32 0, i32 5
  %10 = load i32, i32* %nEntries, align 4, !tbaa !19
  store i32 %10, i32* %nItems, align 4, !tbaa !22
  %11 = load i32, i32* %nItems, align 4, !tbaa !22
  %cmp3 = icmp sge i32 %11, 4097
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %12, i32 0, i32 0
  %13 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %ContextID = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %13, i32 0, i32 0
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !42
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %14, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.2
  %arraydecay = getelementptr inbounds [4097 x float], [4097 x float]* %w, i32 0, i32 0
  %15 = bitcast float* %arraydecay to i8*
  %16 = load i32, i32* %nItems, align 4, !tbaa !22
  %conv = sext i32 %16 to i64
  %mul = mul i64 %conv, 4
  %call6 = call i8* @memset(i8* %15, i32 0, i64 %mul) #9
  %arraydecay7 = getelementptr inbounds [4097 x float], [4097 x float]* %y, i32 0, i32 0
  %17 = bitcast float* %arraydecay7 to i8*
  %18 = load i32, i32* %nItems, align 4, !tbaa !22
  %conv8 = sext i32 %18 to i64
  %mul9 = mul i64 %conv8, 4
  %call10 = call i8* @memset(i8* %17, i32 0, i64 %mul9) #9
  %arraydecay11 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i32 0
  %19 = bitcast float* %arraydecay11 to i8*
  %20 = load i32, i32* %nItems, align 4, !tbaa !22
  %conv12 = sext i32 %20 to i64
  %mul13 = mul i64 %conv12, 4
  %call14 = call i8* @memset(i8* %19, i32 0, i64 %mul13) #9
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %22 = load i32, i32* %nItems, align 4, !tbaa !22
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %24, i32 0, i32 6
  %25 = load i16*, i16** %Table16, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 %idxprom
  %26 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %conv17 = uitofp i16 %26 to float
  %27 = load i32, i32* %i, align 4, !tbaa !22
  %add = add nsw i32 %27, 1
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [4097 x float], [4097 x float]* %y, i32 0, i64 %idxprom18
  store float %conv17, float* %arrayidx19, align 4, !tbaa !39
  %28 = load i32, i32* %i, align 4, !tbaa !22
  %add20 = add nsw i32 %28, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [4097 x float], [4097 x float]* %w, i32 0, i64 %idxprom21
  store float 1.000000e+00, float* %arrayidx22, align 4, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %InterpParams23 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %30, i32 0, i32 0
  %31 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams23, align 8, !tbaa !34
  %ContextID24 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %31, i32 0, i32 0
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID24, align 8, !tbaa !42
  %arraydecay25 = getelementptr inbounds [4097 x float], [4097 x float]* %w, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4097 x float], [4097 x float]* %y, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i32 0
  %33 = load double, double* %lambda.addr, align 8, !tbaa !35
  %conv28 = fptrunc double %33 to float
  %34 = load i32, i32* %nItems, align 4, !tbaa !22
  %call29 = call i32 @smooth2(%struct._cmsContext_struct* %32, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float %conv28, i32 %34) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %for.end
  store i32 0, i32* %Poles, align 4, !tbaa !22
  store i32 0, i32* %Zeros, align 4, !tbaa !22
  %35 = load i32, i32* %nItems, align 4, !tbaa !22
  store i32 %35, i32* %i, align 4, !tbaa !22
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.63, %if.end.32
  %36 = load i32, i32* %i, align 4, !tbaa !22
  %cmp34 = icmp sgt i32 %36, 1
  br i1 %cmp34, label %for.body.36, label %for.end.64

for.body.36:                                      ; preds = %for.cond.33
  %37 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom37 = sext i32 %37 to i64
  %arrayidx38 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i64 %idxprom37
  %38 = load float, float* %arrayidx38, align 4, !tbaa !39
  %conv39 = fpext float %38 to double
  %cmp40 = fcmp oeq double %conv39, 0.000000e+00
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body.36
  %39 = load i32, i32* %Zeros, align 4, !tbaa !22
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, i32* %Zeros, align 4, !tbaa !22
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body.36
  %40 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i64 %idxprom45
  %41 = load float, float* %arrayidx46, align 4, !tbaa !39
  %conv47 = fpext float %41 to double
  %cmp48 = fcmp oge double %conv47, 6.553500e+04
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.44
  %42 = load i32, i32* %Poles, align 4, !tbaa !22
  %inc51 = add nsw i32 %42, 1
  store i32 %inc51, i32* %Poles, align 4, !tbaa !22
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.44
  %43 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom53 = sext i32 %43 to i64
  %arrayidx54 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i64 %idxprom53
  %44 = load float, float* %arrayidx54, align 4, !tbaa !39
  %45 = load i32, i32* %i, align 4, !tbaa !22
  %sub = sub nsw i32 %45, 1
  %idxprom55 = sext i32 %sub to i64
  %arrayidx56 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i64 %idxprom55
  %46 = load float, float* %arrayidx56, align 4, !tbaa !39
  %cmp57 = fcmp olt float %44, %46
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.52
  %47 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %InterpParams60 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %47, i32 0, i32 0
  %48 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams60, align 8, !tbaa !34
  %ContextID61 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %48, i32 0, i32 0
  %49 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID61, align 8, !tbaa !42
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %49, i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.52
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %50 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond.33

for.end.64:                                       ; preds = %for.cond.33
  %51 = load i32, i32* %Zeros, align 4, !tbaa !22
  %52 = load i32, i32* %nItems, align 4, !tbaa !22
  %div = sdiv i32 %52, 3
  %cmp65 = icmp sgt i32 %51, %div
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %for.end.64
  %53 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %InterpParams68 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %53, i32 0, i32 0
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams68, align 8, !tbaa !34
  %ContextID69 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %54, i32 0, i32 0
  %55 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID69, align 8, !tbaa !42
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %55, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %for.end.64
  %56 = load i32, i32* %Poles, align 4, !tbaa !22
  %57 = load i32, i32* %nItems, align 4, !tbaa !22
  %div71 = sdiv i32 %57, 3
  %cmp72 = icmp sgt i32 %56, %div71
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.70
  %58 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %InterpParams75 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %58, i32 0, i32 0
  %59 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams75, align 8, !tbaa !34
  %ContextID76 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %59, i32 0, i32 0
  %60 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID76, align 8, !tbaa !42
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %60, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.end.70
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.90, %if.end.77
  %61 = load i32, i32* %i, align 4, !tbaa !22
  %62 = load i32, i32* %nItems, align 4, !tbaa !22
  %cmp79 = icmp slt i32 %61, %62
  br i1 %cmp79, label %for.body.81, label %for.end.92

for.body.81:                                      ; preds = %for.cond.78
  %63 = load i32, i32* %i, align 4, !tbaa !22
  %add82 = add nsw i32 %63, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [4097 x float], [4097 x float]* %z, i32 0, i64 %idxprom83
  %64 = load float, float* %arrayidx84, align 4, !tbaa !39
  %conv85 = fpext float %64 to double
  %call86 = call zeroext i16 @_cmsQuickSaturateWord(double %conv85) #8
  %65 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom87 = sext i32 %65 to i64
  %66 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Tab.addr, align 8, !tbaa !1
  %Table1688 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %66, i32 0, i32 6
  %67 = load i16*, i16** %Table1688, align 8, !tbaa !21
  %arrayidx89 = getelementptr inbounds i16, i16* %67, i64 %idxprom87
  store i16 %call86, i16* %arrayidx89, align 2, !tbaa !26
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.81
  %68 = load i32, i32* %i, align 4, !tbaa !22
  %inc91 = add nsw i32 %68, 1
  store i32 %inc91, i32* %i, align 4, !tbaa !22
  br label %for.cond.78

for.end.92:                                       ; preds = %for.cond.78
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.92, %if.then.74, %if.then.67, %if.then.59, %if.then.31, %if.then.4, %if.then.1, %if.then
  %69 = bitcast i32* %Poles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #3
  %70 = bitcast i32* %Zeros to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #3
  %71 = bitcast i32* %nItems to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast [4097 x float]* %z to i8*
  call void @llvm.lifetime.end(i64 16388, i8* %73) #3
  %74 = bitcast [4097 x float]* %y to i8*
  call void @llvm.lifetime.end(i64 16388, i8* %74) #3
  %75 = bitcast [4097 x float]* %w to i8*
  call void @llvm.lifetime.end(i64 16388, i8* %75) #3
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsToneCurveLinear(%struct._cms_curve_struct* %Curve) #0 {
entry:
  %retval = alloca i32, align 4
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %i = alloca i32, align 4
  %diff = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1109, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.cmsIsToneCurveLinear, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %i, align 4, !tbaa !22
  %5 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %5, i32 0, i32 5
  %6 = load i32, i32* %nEntries, align 4, !tbaa !19
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %8, i32 0, i32 6
  %9 = load i16*, i16** %Table16, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %conv = zext i16 %10 to i32
  %11 = load i32, i32* %i, align 4, !tbaa !22
  %conv2 = uitofp i32 %11 to double
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %nEntries3 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %12, i32 0, i32 5
  %13 = load i32, i32* %nEntries3, align 4, !tbaa !19
  %call = call zeroext i16 @_cmsQuantizeVal(double %conv2, i32 %13) #8
  %conv4 = zext i16 %call to i32
  %sub = sub nsw i32 %conv, %conv4
  %call5 = call i32 @abs(i32 %sub) #10
  store i32 %call5, i32* %diff, align 4, !tbaa !22
  %14 = load i32, i32* %diff, align 4, !tbaa !22
  %cmp6 = icmp sgt i32 %14, 15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #3
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @smooth2(%struct._cmsContext_struct* %ContextID, float* %w, float* %y, float* %z, float %lambda, i32 %m) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %w.addr = alloca float*, align 8
  %y.addr = alloca float*, align 8
  %z.addr = alloca float*, align 8
  %lambda.addr = alloca float, align 4
  %m.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %c = alloca float*, align 8
  %d = alloca float*, align 8
  %e = alloca float*, align 8
  %st = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store float* %w, float** %w.addr, align 8, !tbaa !1
  store float* %y, float** %y.addr, align 8, !tbaa !1
  store float* %z, float** %z.addr, align 8, !tbaa !1
  store float %lambda, float* %lambda.addr, align 4, !tbaa !39
  store i32 %m, i32* %m.addr, align 4, !tbaa !22
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast float** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast float** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast float** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %st to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsCalloc(%struct._cmsContext_struct* %7, i32 4097, i32 4) #8
  %8 = bitcast i8* %call to float*
  store float* %8, float** %c, align 8, !tbaa !1
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %9, i32 4097, i32 4) #8
  %10 = bitcast i8* %call1 to float*
  store float* %10, float** %d, align 8, !tbaa !1
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call2 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %11, i32 4097, i32 4) #8
  %12 = bitcast i8* %call2 to float*
  store float* %12, float** %e, align 8, !tbaa !1
  %13 = load float*, float** %c, align 8, !tbaa !1
  %cmp = icmp ne float* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = load float*, float** %d, align 8, !tbaa !1
  %cmp3 = icmp ne float* %14, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %15 = load float*, float** %e, align 8, !tbaa !1
  %cmp5 = icmp ne float* %15, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %16 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %16, i64 1
  %17 = load float, float* %arrayidx, align 4, !tbaa !39
  %18 = load float, float* %lambda.addr, align 4, !tbaa !39
  %add = fadd float %17, %18
  %19 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds float, float* %19, i64 1
  store float %add, float* %arrayidx6, align 4, !tbaa !39
  %20 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul = fmul float -2.000000e+00, %20
  %21 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %21, i64 1
  %22 = load float, float* %arrayidx7, align 4, !tbaa !39
  %div = fdiv float %mul, %22
  %23 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %23, i64 1
  store float %div, float* %arrayidx8, align 4, !tbaa !39
  %24 = load float, float* %lambda.addr, align 4, !tbaa !39
  %25 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %25, i64 1
  %26 = load float, float* %arrayidx9, align 4, !tbaa !39
  %div10 = fdiv float %24, %26
  %27 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds float, float* %27, i64 1
  store float %div10, float* %arrayidx11, align 4, !tbaa !39
  %28 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %28, i64 1
  %29 = load float, float* %arrayidx12, align 4, !tbaa !39
  %30 = load float*, float** %y.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %30, i64 1
  %31 = load float, float* %arrayidx13, align 4, !tbaa !39
  %mul14 = fmul float %29, %31
  %32 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds float, float* %32, i64 1
  store float %mul14, float* %arrayidx15, align 4, !tbaa !39
  %33 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %33, i64 2
  %34 = load float, float* %arrayidx16, align 4, !tbaa !39
  %35 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul17 = fmul float 5.000000e+00, %35
  %add18 = fadd float %34, %mul17
  %36 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %36, i64 1
  %37 = load float, float* %arrayidx19, align 4, !tbaa !39
  %38 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds float, float* %38, i64 1
  %39 = load float, float* %arrayidx20, align 4, !tbaa !39
  %mul21 = fmul float %37, %39
  %40 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds float, float* %40, i64 1
  %41 = load float, float* %arrayidx22, align 4, !tbaa !39
  %mul23 = fmul float %mul21, %41
  %sub = fsub float %add18, %mul23
  %42 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %42, i64 2
  store float %sub, float* %arrayidx24, align 4, !tbaa !39
  %43 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul25 = fmul float -4.000000e+00, %43
  %44 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %44, i64 1
  %45 = load float, float* %arrayidx26, align 4, !tbaa !39
  %46 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %46, i64 1
  %47 = load float, float* %arrayidx27, align 4, !tbaa !39
  %mul28 = fmul float %45, %47
  %48 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds float, float* %48, i64 1
  %49 = load float, float* %arrayidx29, align 4, !tbaa !39
  %mul30 = fmul float %mul28, %49
  %sub31 = fsub float %mul25, %mul30
  %50 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds float, float* %50, i64 2
  %51 = load float, float* %arrayidx32, align 4, !tbaa !39
  %div33 = fdiv float %sub31, %51
  %52 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %52, i64 2
  store float %div33, float* %arrayidx34, align 4, !tbaa !39
  %53 = load float, float* %lambda.addr, align 4, !tbaa !39
  %54 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float, float* %54, i64 2
  %55 = load float, float* %arrayidx35, align 4, !tbaa !39
  %div36 = fdiv float %53, %55
  %56 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds float, float* %56, i64 2
  store float %div36, float* %arrayidx37, align 4, !tbaa !39
  %57 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds float, float* %57, i64 2
  %58 = load float, float* %arrayidx38, align 4, !tbaa !39
  %59 = load float*, float** %y.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds float, float* %59, i64 2
  %60 = load float, float* %arrayidx39, align 4, !tbaa !39
  %mul40 = fmul float %58, %60
  %61 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %61, i64 1
  %62 = load float, float* %arrayidx41, align 4, !tbaa !39
  %63 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds float, float* %63, i64 1
  %64 = load float, float* %arrayidx42, align 4, !tbaa !39
  %mul43 = fmul float %62, %64
  %sub44 = fsub float %mul40, %mul43
  %65 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds float, float* %65, i64 2
  store float %sub44, float* %arrayidx45, align 4, !tbaa !39
  store i32 3, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %66 = load i32, i32* %i, align 4, !tbaa !22
  %67 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub46 = sub nsw i32 %67, 1
  %cmp47 = icmp slt i32 %66, %sub46
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load i32, i32* %i, align 4, !tbaa !22
  %sub48 = sub nsw i32 %68, 1
  store i32 %sub48, i32* %i1, align 4, !tbaa !22
  %69 = load i32, i32* %i, align 4, !tbaa !22
  %sub49 = sub nsw i32 %69, 2
  store i32 %sub49, i32* %i2, align 4, !tbaa !22
  %70 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %70 to i64
  %71 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds float, float* %71, i64 %idxprom
  %72 = load float, float* %arrayidx50, align 4, !tbaa !39
  %73 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul51 = fmul float 6.000000e+00, %73
  %add52 = fadd float %72, %mul51
  %74 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom53 = sext i32 %74 to i64
  %75 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds float, float* %75, i64 %idxprom53
  %76 = load float, float* %arrayidx54, align 4, !tbaa !39
  %77 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom55 = sext i32 %77 to i64
  %78 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds float, float* %78, i64 %idxprom55
  %79 = load float, float* %arrayidx56, align 4, !tbaa !39
  %mul57 = fmul float %76, %79
  %80 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom58 = sext i32 %80 to i64
  %81 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds float, float* %81, i64 %idxprom58
  %82 = load float, float* %arrayidx59, align 4, !tbaa !39
  %mul60 = fmul float %mul57, %82
  %sub61 = fsub float %add52, %mul60
  %83 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom62 = sext i32 %83 to i64
  %84 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds float, float* %84, i64 %idxprom62
  %85 = load float, float* %arrayidx63, align 4, !tbaa !39
  %86 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom64 = sext i32 %86 to i64
  %87 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds float, float* %87, i64 %idxprom64
  %88 = load float, float* %arrayidx65, align 4, !tbaa !39
  %mul66 = fmul float %85, %88
  %89 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom67 = sext i32 %89 to i64
  %90 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds float, float* %90, i64 %idxprom67
  %91 = load float, float* %arrayidx68, align 4, !tbaa !39
  %mul69 = fmul float %mul66, %91
  %sub70 = fsub float %sub61, %mul69
  %92 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom71 = sext i32 %92 to i64
  %93 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds float, float* %93, i64 %idxprom71
  store float %sub70, float* %arrayidx72, align 4, !tbaa !39
  %94 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul73 = fmul float -4.000000e+00, %94
  %95 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom74 = sext i32 %95 to i64
  %96 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds float, float* %96, i64 %idxprom74
  %97 = load float, float* %arrayidx75, align 4, !tbaa !39
  %98 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom76 = sext i32 %98 to i64
  %99 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %99, i64 %idxprom76
  %100 = load float, float* %arrayidx77, align 4, !tbaa !39
  %mul78 = fmul float %97, %100
  %101 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom79 = sext i32 %101 to i64
  %102 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds float, float* %102, i64 %idxprom79
  %103 = load float, float* %arrayidx80, align 4, !tbaa !39
  %mul81 = fmul float %mul78, %103
  %sub82 = fsub float %mul73, %mul81
  %104 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom83 = sext i32 %104 to i64
  %105 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds float, float* %105, i64 %idxprom83
  %106 = load float, float* %arrayidx84, align 4, !tbaa !39
  %div85 = fdiv float %sub82, %106
  %107 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom86 = sext i32 %107 to i64
  %108 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds float, float* %108, i64 %idxprom86
  store float %div85, float* %arrayidx87, align 4, !tbaa !39
  %109 = load float, float* %lambda.addr, align 4, !tbaa !39
  %110 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom88 = sext i32 %110 to i64
  %111 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds float, float* %111, i64 %idxprom88
  %112 = load float, float* %arrayidx89, align 4, !tbaa !39
  %div90 = fdiv float %109, %112
  %113 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom91 = sext i32 %113 to i64
  %114 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds float, float* %114, i64 %idxprom91
  store float %div90, float* %arrayidx92, align 4, !tbaa !39
  %115 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom93 = sext i32 %115 to i64
  %116 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds float, float* %116, i64 %idxprom93
  %117 = load float, float* %arrayidx94, align 4, !tbaa !39
  %118 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom95 = sext i32 %118 to i64
  %119 = load float*, float** %y.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds float, float* %119, i64 %idxprom95
  %120 = load float, float* %arrayidx96, align 4, !tbaa !39
  %mul97 = fmul float %117, %120
  %121 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom98 = sext i32 %121 to i64
  %122 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds float, float* %122, i64 %idxprom98
  %123 = load float, float* %arrayidx99, align 4, !tbaa !39
  %124 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom100 = sext i32 %124 to i64
  %125 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds float, float* %125, i64 %idxprom100
  %126 = load float, float* %arrayidx101, align 4, !tbaa !39
  %mul102 = fmul float %123, %126
  %sub103 = fsub float %mul97, %mul102
  %127 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom104 = sext i32 %127 to i64
  %128 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds float, float* %128, i64 %idxprom104
  %129 = load float, float* %arrayidx105, align 4, !tbaa !39
  %130 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom106 = sext i32 %130 to i64
  %131 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds float, float* %131, i64 %idxprom106
  %132 = load float, float* %arrayidx107, align 4, !tbaa !39
  %mul108 = fmul float %129, %132
  %sub109 = fsub float %sub103, %mul108
  %133 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom110 = sext i32 %133 to i64
  %134 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds float, float* %134, i64 %idxprom110
  store float %sub109, float* %arrayidx111, align 4, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %135 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %136 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub112 = sub nsw i32 %136, 2
  store i32 %sub112, i32* %i1, align 4, !tbaa !22
  %137 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub113 = sub nsw i32 %137, 3
  store i32 %sub113, i32* %i2, align 4, !tbaa !22
  %138 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub114 = sub nsw i32 %138, 1
  %idxprom115 = sext i32 %sub114 to i64
  %139 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds float, float* %139, i64 %idxprom115
  %140 = load float, float* %arrayidx116, align 4, !tbaa !39
  %141 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul117 = fmul float 5.000000e+00, %141
  %add118 = fadd float %140, %mul117
  %142 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom119 = sext i32 %142 to i64
  %143 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds float, float* %143, i64 %idxprom119
  %144 = load float, float* %arrayidx120, align 4, !tbaa !39
  %145 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom121 = sext i32 %145 to i64
  %146 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds float, float* %146, i64 %idxprom121
  %147 = load float, float* %arrayidx122, align 4, !tbaa !39
  %mul123 = fmul float %144, %147
  %148 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom124 = sext i32 %148 to i64
  %149 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds float, float* %149, i64 %idxprom124
  %150 = load float, float* %arrayidx125, align 4, !tbaa !39
  %mul126 = fmul float %mul123, %150
  %sub127 = fsub float %add118, %mul126
  %151 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom128 = sext i32 %151 to i64
  %152 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds float, float* %152, i64 %idxprom128
  %153 = load float, float* %arrayidx129, align 4, !tbaa !39
  %154 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom130 = sext i32 %154 to i64
  %155 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds float, float* %155, i64 %idxprom130
  %156 = load float, float* %arrayidx131, align 4, !tbaa !39
  %mul132 = fmul float %153, %156
  %157 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom133 = sext i32 %157 to i64
  %158 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds float, float* %158, i64 %idxprom133
  %159 = load float, float* %arrayidx134, align 4, !tbaa !39
  %mul135 = fmul float %mul132, %159
  %sub136 = fsub float %sub127, %mul135
  %160 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub137 = sub nsw i32 %160, 1
  %idxprom138 = sext i32 %sub137 to i64
  %161 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds float, float* %161, i64 %idxprom138
  store float %sub136, float* %arrayidx139, align 4, !tbaa !39
  %162 = load float, float* %lambda.addr, align 4, !tbaa !39
  %mul140 = fmul float -2.000000e+00, %162
  %163 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom141 = sext i32 %163 to i64
  %164 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds float, float* %164, i64 %idxprom141
  %165 = load float, float* %arrayidx142, align 4, !tbaa !39
  %166 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom143 = sext i32 %166 to i64
  %167 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds float, float* %167, i64 %idxprom143
  %168 = load float, float* %arrayidx144, align 4, !tbaa !39
  %mul145 = fmul float %165, %168
  %169 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom146 = sext i32 %169 to i64
  %170 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds float, float* %170, i64 %idxprom146
  %171 = load float, float* %arrayidx147, align 4, !tbaa !39
  %mul148 = fmul float %mul145, %171
  %sub149 = fsub float %mul140, %mul148
  %172 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub150 = sub nsw i32 %172, 1
  %idxprom151 = sext i32 %sub150 to i64
  %173 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds float, float* %173, i64 %idxprom151
  %174 = load float, float* %arrayidx152, align 4, !tbaa !39
  %div153 = fdiv float %sub149, %174
  %175 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub154 = sub nsw i32 %175, 1
  %idxprom155 = sext i32 %sub154 to i64
  %176 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds float, float* %176, i64 %idxprom155
  store float %div153, float* %arrayidx156, align 4, !tbaa !39
  %177 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub157 = sub nsw i32 %177, 1
  %idxprom158 = sext i32 %sub157 to i64
  %178 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds float, float* %178, i64 %idxprom158
  %179 = load float, float* %arrayidx159, align 4, !tbaa !39
  %180 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub160 = sub nsw i32 %180, 1
  %idxprom161 = sext i32 %sub160 to i64
  %181 = load float*, float** %y.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds float, float* %181, i64 %idxprom161
  %182 = load float, float* %arrayidx162, align 4, !tbaa !39
  %mul163 = fmul float %179, %182
  %183 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom164 = sext i32 %183 to i64
  %184 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds float, float* %184, i64 %idxprom164
  %185 = load float, float* %arrayidx165, align 4, !tbaa !39
  %186 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom166 = sext i32 %186 to i64
  %187 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds float, float* %187, i64 %idxprom166
  %188 = load float, float* %arrayidx167, align 4, !tbaa !39
  %mul168 = fmul float %185, %188
  %sub169 = fsub float %mul163, %mul168
  %189 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom170 = sext i32 %189 to i64
  %190 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds float, float* %190, i64 %idxprom170
  %191 = load float, float* %arrayidx171, align 4, !tbaa !39
  %192 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom172 = sext i32 %192 to i64
  %193 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds float, float* %193, i64 %idxprom172
  %194 = load float, float* %arrayidx173, align 4, !tbaa !39
  %mul174 = fmul float %191, %194
  %sub175 = fsub float %sub169, %mul174
  %195 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub176 = sub nsw i32 %195, 1
  %idxprom177 = sext i32 %sub176 to i64
  %196 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds float, float* %196, i64 %idxprom177
  store float %sub175, float* %arrayidx178, align 4, !tbaa !39
  %197 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub179 = sub nsw i32 %197, 1
  store i32 %sub179, i32* %i1, align 4, !tbaa !22
  %198 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub180 = sub nsw i32 %198, 2
  store i32 %sub180, i32* %i2, align 4, !tbaa !22
  %199 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom181 = sext i32 %199 to i64
  %200 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds float, float* %200, i64 %idxprom181
  %201 = load float, float* %arrayidx182, align 4, !tbaa !39
  %202 = load float, float* %lambda.addr, align 4, !tbaa !39
  %add183 = fadd float %201, %202
  %203 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom184 = sext i32 %203 to i64
  %204 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds float, float* %204, i64 %idxprom184
  %205 = load float, float* %arrayidx185, align 4, !tbaa !39
  %206 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom186 = sext i32 %206 to i64
  %207 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds float, float* %207, i64 %idxprom186
  %208 = load float, float* %arrayidx187, align 4, !tbaa !39
  %mul188 = fmul float %205, %208
  %209 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom189 = sext i32 %209 to i64
  %210 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds float, float* %210, i64 %idxprom189
  %211 = load float, float* %arrayidx190, align 4, !tbaa !39
  %mul191 = fmul float %mul188, %211
  %sub192 = fsub float %add183, %mul191
  %212 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom193 = sext i32 %212 to i64
  %213 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds float, float* %213, i64 %idxprom193
  %214 = load float, float* %arrayidx194, align 4, !tbaa !39
  %215 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom195 = sext i32 %215 to i64
  %216 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds float, float* %216, i64 %idxprom195
  %217 = load float, float* %arrayidx196, align 4, !tbaa !39
  %mul197 = fmul float %214, %217
  %218 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom198 = sext i32 %218 to i64
  %219 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds float, float* %219, i64 %idxprom198
  %220 = load float, float* %arrayidx199, align 4, !tbaa !39
  %mul200 = fmul float %mul197, %220
  %sub201 = fsub float %sub192, %mul200
  %221 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom202 = sext i32 %221 to i64
  %222 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds float, float* %222, i64 %idxprom202
  store float %sub201, float* %arrayidx203, align 4, !tbaa !39
  %223 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom204 = sext i32 %223 to i64
  %224 = load float*, float** %w.addr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds float, float* %224, i64 %idxprom204
  %225 = load float, float* %arrayidx205, align 4, !tbaa !39
  %226 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom206 = sext i32 %226 to i64
  %227 = load float*, float** %y.addr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds float, float* %227, i64 %idxprom206
  %228 = load float, float* %arrayidx207, align 4, !tbaa !39
  %mul208 = fmul float %225, %228
  %229 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom209 = sext i32 %229 to i64
  %230 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds float, float* %230, i64 %idxprom209
  %231 = load float, float* %arrayidx210, align 4, !tbaa !39
  %232 = load i32, i32* %i1, align 4, !tbaa !22
  %idxprom211 = sext i32 %232 to i64
  %233 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds float, float* %233, i64 %idxprom211
  %234 = load float, float* %arrayidx212, align 4, !tbaa !39
  %mul213 = fmul float %231, %234
  %sub214 = fsub float %mul208, %mul213
  %235 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom215 = sext i32 %235 to i64
  %236 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds float, float* %236, i64 %idxprom215
  %237 = load float, float* %arrayidx216, align 4, !tbaa !39
  %238 = load i32, i32* %i2, align 4, !tbaa !22
  %idxprom217 = sext i32 %238 to i64
  %239 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds float, float* %239, i64 %idxprom217
  %240 = load float, float* %arrayidx218, align 4, !tbaa !39
  %mul219 = fmul float %237, %240
  %sub220 = fsub float %sub214, %mul219
  %241 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom221 = sext i32 %241 to i64
  %242 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds float, float* %242, i64 %idxprom221
  %243 = load float, float* %arrayidx222, align 4, !tbaa !39
  %div223 = fdiv float %sub220, %243
  %244 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom224 = sext i32 %244 to i64
  %245 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds float, float* %245, i64 %idxprom224
  store float %div223, float* %arrayidx225, align 4, !tbaa !39
  %246 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub226 = sub nsw i32 %246, 1
  %idxprom227 = sext i32 %sub226 to i64
  %247 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds float, float* %247, i64 %idxprom227
  %248 = load float, float* %arrayidx228, align 4, !tbaa !39
  %249 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub229 = sub nsw i32 %249, 1
  %idxprom230 = sext i32 %sub229 to i64
  %250 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds float, float* %250, i64 %idxprom230
  %251 = load float, float* %arrayidx231, align 4, !tbaa !39
  %div232 = fdiv float %248, %251
  %252 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub233 = sub nsw i32 %252, 1
  %idxprom234 = sext i32 %sub233 to i64
  %253 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds float, float* %253, i64 %idxprom234
  %254 = load float, float* %arrayidx235, align 4, !tbaa !39
  %255 = load i32, i32* %m.addr, align 4, !tbaa !22
  %idxprom236 = sext i32 %255 to i64
  %256 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds float, float* %256, i64 %idxprom236
  %257 = load float, float* %arrayidx237, align 4, !tbaa !39
  %mul238 = fmul float %254, %257
  %sub239 = fsub float %div232, %mul238
  %258 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub240 = sub nsw i32 %258, 1
  %idxprom241 = sext i32 %sub240 to i64
  %259 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds float, float* %259, i64 %idxprom241
  store float %sub239, float* %arrayidx242, align 4, !tbaa !39
  %260 = load i32, i32* %m.addr, align 4, !tbaa !22
  %sub243 = sub nsw i32 %260, 2
  store i32 %sub243, i32* %i, align 4, !tbaa !22
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.268, %for.end
  %261 = load i32, i32* %i, align 4, !tbaa !22
  %cmp245 = icmp sle i32 1, %261
  br i1 %cmp245, label %for.body.246, label %for.end.269

for.body.246:                                     ; preds = %for.cond.244
  %262 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom247 = sext i32 %262 to i64
  %263 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds float, float* %263, i64 %idxprom247
  %264 = load float, float* %arrayidx248, align 4, !tbaa !39
  %265 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom249 = sext i32 %265 to i64
  %266 = load float*, float** %d, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds float, float* %266, i64 %idxprom249
  %267 = load float, float* %arrayidx250, align 4, !tbaa !39
  %div251 = fdiv float %264, %267
  %268 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom252 = sext i32 %268 to i64
  %269 = load float*, float** %c, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds float, float* %269, i64 %idxprom252
  %270 = load float, float* %arrayidx253, align 4, !tbaa !39
  %271 = load i32, i32* %i, align 4, !tbaa !22
  %add254 = add nsw i32 %271, 1
  %idxprom255 = sext i32 %add254 to i64
  %272 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds float, float* %272, i64 %idxprom255
  %273 = load float, float* %arrayidx256, align 4, !tbaa !39
  %mul257 = fmul float %270, %273
  %sub258 = fsub float %div251, %mul257
  %274 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom259 = sext i32 %274 to i64
  %275 = load float*, float** %e, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds float, float* %275, i64 %idxprom259
  %276 = load float, float* %arrayidx260, align 4, !tbaa !39
  %277 = load i32, i32* %i, align 4, !tbaa !22
  %add261 = add nsw i32 %277, 2
  %idxprom262 = sext i32 %add261 to i64
  %278 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds float, float* %278, i64 %idxprom262
  %279 = load float, float* %arrayidx263, align 4, !tbaa !39
  %mul264 = fmul float %276, %279
  %sub265 = fsub float %sub258, %mul264
  %280 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom266 = sext i32 %280 to i64
  %281 = load float*, float** %z.addr, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds float, float* %281, i64 %idxprom266
  store float %sub265, float* %arrayidx267, align 4, !tbaa !39
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.246
  %282 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add nsw i32 %282, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond.244

for.end.269:                                      ; preds = %for.cond.244
  store i32 1, i32* %st, align 4, !tbaa !22
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  store i32 0, i32* %st, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.269
  %283 = load float*, float** %c, align 8, !tbaa !1
  %cmp270 = icmp ne float* %283, null
  br i1 %cmp270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end
  %284 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %285 = load float*, float** %c, align 8, !tbaa !1
  %286 = bitcast float* %285 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %284, i8* %286) #8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.end
  %287 = load float*, float** %d, align 8, !tbaa !1
  %cmp273 = icmp ne float* %287, null
  br i1 %cmp273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.end.272
  %288 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %289 = load float*, float** %d, align 8, !tbaa !1
  %290 = bitcast float* %289 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %288, i8* %290) #8
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.end.272
  %291 = load float*, float** %e, align 8, !tbaa !1
  %cmp276 = icmp ne float* %291, null
  br i1 %cmp276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.end.275
  %292 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %293 = load float*, float** %e, align 8, !tbaa !1
  %294 = bitcast float* %293 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %292, i8* %294) #8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.275
  %295 = load i32, i32* %st, align 4, !tbaa !22
  %296 = bitcast i32* %st to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #3
  %297 = bitcast float** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #3
  %298 = bitcast float** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #3
  %299 = bitcast float** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #3
  %300 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #3
  %301 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #3
  %302 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #3
  ret i32 %295
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #6

declare zeroext i16 @_cmsQuantizeVal(double, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmsIsToneCurveMonotonic(%struct._cms_curve_struct* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %lDescending = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %lDescending to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %nEntries = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %6, i32 0, i32 5
  %7 = load i32, i32* %nEntries, align 4, !tbaa !19
  store i32 %7, i32* %n, align 4, !tbaa !22
  %8 = load i32, i32* %n, align 4, !tbaa !22
  %cmp1 = icmp slt i32 %8, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %call = call i32 @cmsIsToneCurveDescending(%struct._cms_curve_struct* %9) #8
  store i32 %call, i32* %lDescending, align 4, !tbaa !22
  %10 = load i32, i32* %lDescending, align 4, !tbaa !22
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.2, label %if.else.16

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table16 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %11, i32 0, i32 6
  %12 = load i16*, i16** %Table16, align 8, !tbaa !21
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !26
  %conv = zext i16 %13 to i32
  store i32 %conv, i32* %last, align 4, !tbaa !22
  store i32 1, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %14 = load i32, i32* %i, align 4, !tbaa !22
  %15 = load i32, i32* %n, align 4, !tbaa !22
  %cmp3 = icmp slt i32 %14, %15
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table165 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %17, i32 0, i32 6
  %18 = load i16*, i16** %Table165, align 8, !tbaa !21
  %arrayidx6 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx6, align 2, !tbaa !26
  %conv7 = zext i16 %19 to i32
  %20 = load i32, i32* %last, align 4, !tbaa !22
  %sub = sub nsw i32 %conv7, %20
  %cmp8 = icmp sgt i32 %sub, 2
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table1612 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %22, i32 0, i32 6
  %23 = load i16*, i16** %Table1612, align 8, !tbaa !21
  %arrayidx13 = getelementptr inbounds i16, i16* %23, i64 %idxprom11
  %24 = load i16, i16* %arrayidx13, align 2, !tbaa !26
  %conv14 = zext i16 %24 to i32
  store i32 %conv14, i32* %last, align 4, !tbaa !22
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %25 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else.16:                                       ; preds = %if.end
  %26 = load i32, i32* %n, align 4, !tbaa !22
  %sub17 = sub nsw i32 %26, 1
  %idxprom18 = sext i32 %sub17 to i64
  %27 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table1619 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %27, i32 0, i32 6
  %28 = load i16*, i16** %Table1619, align 8, !tbaa !21
  %arrayidx20 = getelementptr inbounds i16, i16* %28, i64 %idxprom18
  %29 = load i16, i16* %arrayidx20, align 2, !tbaa !26
  %conv21 = zext i16 %29 to i32
  store i32 %conv21, i32* %last, align 4, !tbaa !22
  %30 = load i32, i32* %n, align 4, !tbaa !22
  %sub22 = sub nsw i32 %30, 2
  store i32 %sub22, i32* %i, align 4, !tbaa !22
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.41, %if.else.16
  %31 = load i32, i32* %i, align 4, !tbaa !22
  %cmp24 = icmp sge i32 %31, 0
  br i1 %cmp24, label %for.body.26, label %for.end.42

for.body.26:                                      ; preds = %for.cond.23
  %32 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom27 = sext i32 %32 to i64
  %33 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table1628 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %33, i32 0, i32 6
  %34 = load i16*, i16** %Table1628, align 8, !tbaa !21
  %arrayidx29 = getelementptr inbounds i16, i16* %34, i64 %idxprom27
  %35 = load i16, i16* %arrayidx29, align 2, !tbaa !26
  %conv30 = zext i16 %35 to i32
  %36 = load i32, i32* %last, align 4, !tbaa !22
  %sub31 = sub nsw i32 %conv30, %36
  %cmp32 = icmp sgt i32 %sub31, 2
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %for.body.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.35:                                       ; preds = %for.body.26
  %37 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Table1637 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %38, i32 0, i32 6
  %39 = load i16*, i16** %Table1637, align 8, !tbaa !21
  %arrayidx38 = getelementptr inbounds i16, i16* %39, i64 %idxprom36
  %40 = load i16, i16* %arrayidx38, align 2, !tbaa !26
  %conv39 = zext i16 %40 to i32
  store i32 %conv39, i32* %last, align 4, !tbaa !22
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.35
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %41 = load i32, i32* %i, align 4, !tbaa !22
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4, !tbaa !22
  br label %for.cond.23

for.end.42:                                       ; preds = %for.cond.23
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.34, %if.then.10, %if.then
  %42 = bitcast i32* %lDescending to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #3
  %43 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #3
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #3
  %45 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #3
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsToneCurveMultisegment(%struct._cms_curve_struct* %t) #0 {
entry:
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1179, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %nSegments, align 4, !tbaa !25
  %cmp1 = icmp ugt i32 %3, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetToneCurveParametricType(%struct._cms_curve_struct* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %0 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1186, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cmsGetToneCurveParametricType, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %nSegments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %nSegments, align 4, !tbaa !25
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %Segments = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %4, i32 0, i32 2
  %5 = load %struct.cmsCurveSegment*, %struct.cmsCurveSegment** %Segments, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %5, i64 0
  %Type = getelementptr inbounds %struct.cmsCurveSegment, %struct.cmsCurveSegment* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %Type, align 4, !tbaa !29
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define zeroext i16 @cmsEvalToneCurve16(%struct._cms_curve_struct* %Curve, i16 zeroext %v) #0 {
entry:
  %Curve.addr = alloca %struct._cms_curve_struct*, align 8
  %v.addr = alloca i16, align 2
  %out = alloca i16, align 2
  store %struct._cms_curve_struct* %Curve, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  store i16 %v, i16* %v.addr, align 2, !tbaa !26
  %0 = bitcast i16* %out to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #3
  %1 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1216, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.cmsEvalToneCurve16, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %InterpParams = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %3, i32 0, i32 0
  %4 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams, align 8, !tbaa !34
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %4, i32 0, i32 8
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  %5 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  %6 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %Curve.addr, align 8, !tbaa !1
  %InterpParams1 = getelementptr inbounds %struct._cms_curve_struct, %struct._cms_curve_struct* %6, i32 0, i32 0
  %7 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %InterpParams1, align 8, !tbaa !34
  call void %5(i16* %v.addr, i16* %out, %struct._cms_interp_struc* %7) #8
  %8 = load i16, i16* %out, align 2, !tbaa !26
  %9 = bitcast i16* %out to i8*
  call void @llvm.lifetime.end(i64 2, i8* %9) #3
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define double @cmsEstimateGamma(%struct._cms_curve_struct* %t, double %Precision) #0 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca %struct._cms_curve_struct*, align 8
  %Precision.addr = alloca double, align 8
  %gamma = alloca double, align 8
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  %n = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %Std = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_curve_struct* %t, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  store double %Precision, double* %Precision.addr, align 8, !tbaa !35
  %0 = bitcast double* %gamma to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast double* %sum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast double* %sum2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast double* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast double* %Std to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_curve_struct* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 1246, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.cmsEstimateGamma, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  store double 0.000000e+00, double* %n, align 8, !tbaa !35
  store double 0.000000e+00, double* %sum2, align 8, !tbaa !35
  store double 0.000000e+00, double* %sum, align 8, !tbaa !35
  store i32 1, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, i32* %i, align 4, !tbaa !22
  %cmp1 = icmp ult i32 %10, 4096
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !22
  %conv = uitofp i32 %11 to double
  %div = fdiv double %conv, 4.096000e+03
  store double %div, double* %x, align 8, !tbaa !35
  %12 = load %struct._cms_curve_struct*, %struct._cms_curve_struct** %t.addr, align 8, !tbaa !1
  %13 = load double, double* %x, align 8, !tbaa !35
  %conv2 = fptrunc double %13 to float
  %call = call float @cmsEvalToneCurveFloat(%struct._cms_curve_struct* %12, float %conv2) #8
  %conv3 = fpext float %call to double
  store double %conv3, double* %y, align 8, !tbaa !35
  %14 = load double, double* %y, align 8, !tbaa !35
  %cmp4 = fcmp ogt double %14, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load double, double* %y, align 8, !tbaa !35
  %cmp6 = fcmp olt double %15, 1.000000e+00
  br i1 %cmp6, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %16 = load double, double* %x, align 8, !tbaa !35
  %cmp9 = fcmp ogt double %16, 7.000000e-02
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  %17 = load double, double* %y, align 8, !tbaa !35
  %call11 = call double @log(double %17) #9
  %18 = load double, double* %x, align 8, !tbaa !35
  %call12 = call double @log(double %18) #9
  %div13 = fdiv double %call11, %call12
  store double %div13, double* %gamma, align 8, !tbaa !35
  %19 = load double, double* %gamma, align 8, !tbaa !35
  %20 = load double, double* %sum, align 8, !tbaa !35
  %add = fadd double %20, %19
  store double %add, double* %sum, align 8, !tbaa !35
  %21 = load double, double* %gamma, align 8, !tbaa !35
  %22 = load double, double* %gamma, align 8, !tbaa !35
  %mul = fmul double %21, %22
  %23 = load double, double* %sum2, align 8, !tbaa !35
  %add14 = fadd double %23, %mul
  store double %add14, double* %sum2, align 8, !tbaa !35
  %24 = load double, double* %n, align 8, !tbaa !35
  %inc = fadd double %24, 1.000000e+00
  store double %inc, double* %n, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !22
  %inc15 = add i32 %25, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load double, double* %n, align 8, !tbaa !35
  %27 = load double, double* %sum2, align 8, !tbaa !35
  %mul16 = fmul double %26, %27
  %28 = load double, double* %sum, align 8, !tbaa !35
  %29 = load double, double* %sum, align 8, !tbaa !35
  %mul17 = fmul double %28, %29
  %sub = fsub double %mul16, %mul17
  %30 = load double, double* %n, align 8, !tbaa !35
  %31 = load double, double* %n, align 8, !tbaa !35
  %sub18 = fsub double %31, 1.000000e+00
  %mul19 = fmul double %30, %sub18
  %div20 = fdiv double %sub, %mul19
  %call21 = call double @sqrt(double %div20) #9
  store double %call21, double* %Std, align 8, !tbaa !35
  %32 = load double, double* %Std, align 8, !tbaa !35
  %33 = load double, double* %Precision.addr, align 8, !tbaa !35
  %cmp22 = fcmp ogt double %32, %33
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  store double -1.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.end
  %34 = load double, double* %sum, align 8, !tbaa !35
  %35 = load double, double* %n, align 8, !tbaa !35
  %div26 = fdiv double %34, %35
  store double %div26, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.then.24
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #3
  %37 = bitcast double* %Std to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #3
  %38 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #3
  %39 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #3
  %40 = bitcast double* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #3
  %41 = bitcast double* %sum2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #3
  %42 = bitcast double* %sum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #3
  %43 = bitcast double* %gamma to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #3
  %44 = load double, double* %retval
  ret double %44
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

declare %struct._cms_interp_struc* @_cmsComputeInterpParams(%struct._cmsContext_struct*, i32, i32, i32, i8*, i32) #2

declare i8* @_cmsDupMem(%struct._cmsContext_struct*, i8*, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #5 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !35
  %0 = load double, double* %d.addr, align 8, !tbaa !35
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #8
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
  store double %val, double* %val.addr, align 8, !tbaa !35
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !35
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = load double, double* %val.addr, align 8, !tbaa !35
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !35
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #3
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #3
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define internal i32 @IsInSet(i32 %Type, %struct._cmsParametricCurvesCollection_st* %c) #0 {
entry:
  %retval = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  %c.addr = alloca %struct._cmsParametricCurvesCollection_st*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !22
  store %struct._cmsParametricCurvesCollection_st* %c, %struct._cmsParametricCurvesCollection_st** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !22
  %2 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c.addr, align 8, !tbaa !1
  %nFunctions = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %2, i32 0, i32 0
  %3 = load i32, i32* %nFunctions, align 4, !tbaa !18
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %Type.addr, align 4, !tbaa !22
  %call = call i32 @abs(i32 %4) #10
  %5 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._cmsParametricCurvesCollection_st*, %struct._cmsParametricCurvesCollection_st** %c.addr, align 8, !tbaa !1
  %FunctionTypes = getelementptr inbounds %struct._cmsParametricCurvesCollection_st, %struct._cmsParametricCurvesCollection_st* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %FunctionTypes, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !22
  %cmp1 = icmp eq i32 %call, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !22
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #3
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal double @DefaultEvalParametricFn(i32 %Type, double* %Params, double %R) #0 {
entry:
  %retval = alloca double, align 8
  %Type.addr = alloca i32, align 4
  %Params.addr = alloca double*, align 8
  %R.addr = alloca double, align 8
  %e = alloca double, align 8
  %Val = alloca double, align 8
  %disc = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !22
  store double* %Params, double** %Params.addr, align 8, !tbaa !1
  store double %R, double* %R.addr, align 8, !tbaa !35
  %0 = bitcast double* %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast double* %Val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast double* %disc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = load i32, i32* %Type.addr, align 4, !tbaa !22
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb.7
    i32 2, label %sw.bb.21
    i32 -2, label %sw.bb.38
    i32 3, label %sw.bb.53
    i32 -3, label %sw.bb.78
    i32 4, label %sw.bb.101
    i32 -4, label %sw.bb.119
    i32 5, label %sw.bb.144
    i32 -5, label %sw.bb.167
    i32 6, label %sw.bb.194
    i32 -6, label %sw.bb.208
    i32 7, label %sw.bb.222
    i32 -7, label %sw.bb.239
    i32 8, label %sw.bb.252
    i32 -8, label %sw.bb.263
    i32 108, label %sw.bb.280
    i32 -108, label %sw.bb.289
  ]

sw.bb:                                            ; preds = %entry
  %4 = load double, double* %R.addr, align 8, !tbaa !35
  %cmp = fcmp olt double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %sw.bb
  %5 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %5, i64 0
  %6 = load double, double* %arrayidx, align 8, !tbaa !35
  %sub = fsub double %6, 1.000000e+00
  %call = call double @fabs(double %sub) #10
  %cmp1 = fcmp olt double %call, 1.000000e-04
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load double, double* %R.addr, align 8, !tbaa !35
  store double %7, double* %Val, align 8, !tbaa !35
  br label %if.end

if.else:                                          ; preds = %if.then
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.6

if.else.3:                                        ; preds = %sw.bb
  %8 = load double, double* %R.addr, align 8, !tbaa !35
  %9 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 0
  %10 = load double, double* %arrayidx4, align 8, !tbaa !35
  %call5 = call double @pow(double %8, double %10) #9
  store double %call5, double* %Val, align 8, !tbaa !35
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.3, %if.end
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load double, double* %R.addr, align 8, !tbaa !35
  %cmp8 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else.17

if.then.9:                                        ; preds = %sw.bb.7
  %12 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %12, i64 0
  %13 = load double, double* %arrayidx10, align 8, !tbaa !35
  %sub11 = fsub double %13, 1.000000e+00
  %call12 = call double @fabs(double %sub11) #10
  %cmp13 = fcmp olt double %call12, 1.000000e-04
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.9
  %14 = load double, double* %R.addr, align 8, !tbaa !35
  store double %14, double* %Val, align 8, !tbaa !35
  br label %if.end.16

if.else.15:                                       ; preds = %if.then.9
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.20

if.else.17:                                       ; preds = %sw.bb.7
  %15 = load double, double* %R.addr, align 8, !tbaa !35
  %16 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %16, i64 0
  %17 = load double, double* %arrayidx18, align 8, !tbaa !35
  %div = fdiv double 1.000000e+00, %17
  %call19 = call double @pow(double %15, double %div) #9
  store double %call19, double* %Val, align 8, !tbaa !35
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.end.16
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %18 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds double, double* %18, i64 2
  %19 = load double, double* %arrayidx22, align 8, !tbaa !35
  %sub23 = fsub double -0.000000e+00, %19
  %20 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds double, double* %20, i64 1
  %21 = load double, double* %arrayidx24, align 8, !tbaa !35
  %div25 = fdiv double %sub23, %21
  store double %div25, double* %disc, align 8, !tbaa !35
  %22 = load double, double* %R.addr, align 8, !tbaa !35
  %23 = load double, double* %disc, align 8, !tbaa !35
  %cmp26 = fcmp oge double %22, %23
  br i1 %cmp26, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %sw.bb.21
  %24 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds double, double* %24, i64 1
  %25 = load double, double* %arrayidx28, align 8, !tbaa !35
  %26 = load double, double* %R.addr, align 8, !tbaa !35
  %mul = fmul double %25, %26
  %27 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds double, double* %27, i64 2
  %28 = load double, double* %arrayidx29, align 8, !tbaa !35
  %add = fadd double %mul, %28
  store double %add, double* %e, align 8, !tbaa !35
  %29 = load double, double* %e, align 8, !tbaa !35
  %cmp30 = fcmp ogt double %29, 0.000000e+00
  br i1 %cmp30, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.then.27
  %30 = load double, double* %e, align 8, !tbaa !35
  %31 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds double, double* %31, i64 0
  %32 = load double, double* %arrayidx32, align 8, !tbaa !35
  %call33 = call double @pow(double %30, double %32) #9
  store double %call33, double* %Val, align 8, !tbaa !35
  br label %if.end.35

if.else.34:                                       ; preds = %if.then.27
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.31
  br label %if.end.37

if.else.36:                                       ; preds = %sw.bb.21
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.end.35
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %33 = load double, double* %R.addr, align 8, !tbaa !35
  %cmp39 = fcmp olt double %33, 0.000000e+00
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %sw.bb.38
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.49

if.else.41:                                       ; preds = %sw.bb.38
  %34 = load double, double* %R.addr, align 8, !tbaa !35
  %35 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %35, i64 0
  %36 = load double, double* %arrayidx42, align 8, !tbaa !35
  %div43 = fdiv double 1.000000e+00, %36
  %call44 = call double @pow(double %34, double %div43) #9
  %37 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %37, i64 2
  %38 = load double, double* %arrayidx45, align 8, !tbaa !35
  %sub46 = fsub double %call44, %38
  %39 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds double, double* %39, i64 1
  %40 = load double, double* %arrayidx47, align 8, !tbaa !35
  %div48 = fdiv double %sub46, %40
  store double %div48, double* %Val, align 8, !tbaa !35
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.41, %if.then.40
  %41 = load double, double* %Val, align 8, !tbaa !35
  %cmp50 = fcmp olt double %41, 0.000000e+00
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.49
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %42 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds double, double* %42, i64 2
  %43 = load double, double* %arrayidx54, align 8, !tbaa !35
  %sub55 = fsub double -0.000000e+00, %43
  %44 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds double, double* %44, i64 1
  %45 = load double, double* %arrayidx56, align 8, !tbaa !35
  %div57 = fdiv double %sub55, %45
  store double %div57, double* %disc, align 8, !tbaa !35
  %46 = load double, double* %disc, align 8, !tbaa !35
  %cmp58 = fcmp olt double %46, 0.000000e+00
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.bb.53
  store double 0.000000e+00, double* %disc, align 8, !tbaa !35
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %sw.bb.53
  %47 = load double, double* %R.addr, align 8, !tbaa !35
  %48 = load double, double* %disc, align 8, !tbaa !35
  %cmp61 = fcmp oge double %47, %48
  br i1 %cmp61, label %if.then.62, label %if.else.75

if.then.62:                                       ; preds = %if.end.60
  %49 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds double, double* %49, i64 1
  %50 = load double, double* %arrayidx63, align 8, !tbaa !35
  %51 = load double, double* %R.addr, align 8, !tbaa !35
  %mul64 = fmul double %50, %51
  %52 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds double, double* %52, i64 2
  %53 = load double, double* %arrayidx65, align 8, !tbaa !35
  %add66 = fadd double %mul64, %53
  store double %add66, double* %e, align 8, !tbaa !35
  %54 = load double, double* %e, align 8, !tbaa !35
  %cmp67 = fcmp ogt double %54, 0.000000e+00
  br i1 %cmp67, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.then.62
  %55 = load double, double* %e, align 8, !tbaa !35
  %56 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds double, double* %56, i64 0
  %57 = load double, double* %arrayidx69, align 8, !tbaa !35
  %call70 = call double @pow(double %55, double %57) #9
  %58 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds double, double* %58, i64 3
  %59 = load double, double* %arrayidx71, align 8, !tbaa !35
  %add72 = fadd double %call70, %59
  store double %add72, double* %Val, align 8, !tbaa !35
  br label %if.end.74

if.else.73:                                       ; preds = %if.then.62
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.then.68
  br label %if.end.77

if.else.75:                                       ; preds = %if.end.60
  %60 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds double, double* %60, i64 3
  %61 = load double, double* %arrayidx76, align 8, !tbaa !35
  store double %61, double* %Val, align 8, !tbaa !35
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.end.74
  br label %sw.epilog

sw.bb.78:                                         ; preds = %entry
  %62 = load double, double* %R.addr, align 8, !tbaa !35
  %63 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds double, double* %63, i64 3
  %64 = load double, double* %arrayidx79, align 8, !tbaa !35
  %cmp80 = fcmp oge double %62, %64
  br i1 %cmp80, label %if.then.81, label %if.else.95

if.then.81:                                       ; preds = %sw.bb.78
  %65 = load double, double* %R.addr, align 8, !tbaa !35
  %66 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds double, double* %66, i64 3
  %67 = load double, double* %arrayidx82, align 8, !tbaa !35
  %sub83 = fsub double %65, %67
  store double %sub83, double* %e, align 8, !tbaa !35
  %68 = load double, double* %e, align 8, !tbaa !35
  %cmp84 = fcmp ogt double %68, 0.000000e+00
  br i1 %cmp84, label %if.then.85, label %if.else.93

if.then.85:                                       ; preds = %if.then.81
  %69 = load double, double* %e, align 8, !tbaa !35
  %70 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds double, double* %70, i64 0
  %71 = load double, double* %arrayidx86, align 8, !tbaa !35
  %div87 = fdiv double 1.000000e+00, %71
  %call88 = call double @pow(double %69, double %div87) #9
  %72 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds double, double* %72, i64 2
  %73 = load double, double* %arrayidx89, align 8, !tbaa !35
  %sub90 = fsub double %call88, %73
  %74 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds double, double* %74, i64 1
  %75 = load double, double* %arrayidx91, align 8, !tbaa !35
  %div92 = fdiv double %sub90, %75
  store double %div92, double* %Val, align 8, !tbaa !35
  br label %if.end.94

if.else.93:                                       ; preds = %if.then.81
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.93, %if.then.85
  br label %if.end.100

if.else.95:                                       ; preds = %sw.bb.78
  %76 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds double, double* %76, i64 2
  %77 = load double, double* %arrayidx96, align 8, !tbaa !35
  %sub97 = fsub double -0.000000e+00, %77
  %78 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds double, double* %78, i64 1
  %79 = load double, double* %arrayidx98, align 8, !tbaa !35
  %div99 = fdiv double %sub97, %79
  store double %div99, double* %Val, align 8, !tbaa !35
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.95, %if.end.94
  br label %sw.epilog

sw.bb.101:                                        ; preds = %entry
  %80 = load double, double* %R.addr, align 8, !tbaa !35
  %81 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds double, double* %81, i64 4
  %82 = load double, double* %arrayidx102, align 8, !tbaa !35
  %cmp103 = fcmp oge double %80, %82
  br i1 %cmp103, label %if.then.104, label %if.else.115

if.then.104:                                      ; preds = %sw.bb.101
  %83 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds double, double* %83, i64 1
  %84 = load double, double* %arrayidx105, align 8, !tbaa !35
  %85 = load double, double* %R.addr, align 8, !tbaa !35
  %mul106 = fmul double %84, %85
  %86 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds double, double* %86, i64 2
  %87 = load double, double* %arrayidx107, align 8, !tbaa !35
  %add108 = fadd double %mul106, %87
  store double %add108, double* %e, align 8, !tbaa !35
  %88 = load double, double* %e, align 8, !tbaa !35
  %cmp109 = fcmp ogt double %88, 0.000000e+00
  br i1 %cmp109, label %if.then.110, label %if.else.113

if.then.110:                                      ; preds = %if.then.104
  %89 = load double, double* %e, align 8, !tbaa !35
  %90 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds double, double* %90, i64 0
  %91 = load double, double* %arrayidx111, align 8, !tbaa !35
  %call112 = call double @pow(double %89, double %91) #9
  store double %call112, double* %Val, align 8, !tbaa !35
  br label %if.end.114

if.else.113:                                      ; preds = %if.then.104
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.113, %if.then.110
  br label %if.end.118

if.else.115:                                      ; preds = %sw.bb.101
  %92 = load double, double* %R.addr, align 8, !tbaa !35
  %93 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds double, double* %93, i64 3
  %94 = load double, double* %arrayidx116, align 8, !tbaa !35
  %mul117 = fmul double %92, %94
  store double %mul117, double* %Val, align 8, !tbaa !35
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.end.114
  br label %sw.epilog

sw.bb.119:                                        ; preds = %entry
  %95 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds double, double* %95, i64 1
  %96 = load double, double* %arrayidx120, align 8, !tbaa !35
  %97 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds double, double* %97, i64 4
  %98 = load double, double* %arrayidx121, align 8, !tbaa !35
  %mul122 = fmul double %96, %98
  %99 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds double, double* %99, i64 2
  %100 = load double, double* %arrayidx123, align 8, !tbaa !35
  %add124 = fadd double %mul122, %100
  store double %add124, double* %e, align 8, !tbaa !35
  %101 = load double, double* %e, align 8, !tbaa !35
  %cmp125 = fcmp olt double %101, 0.000000e+00
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %sw.bb.119
  store double 0.000000e+00, double* %disc, align 8, !tbaa !35
  br label %if.end.130

if.else.127:                                      ; preds = %sw.bb.119
  %102 = load double, double* %e, align 8, !tbaa !35
  %103 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds double, double* %103, i64 0
  %104 = load double, double* %arrayidx128, align 8, !tbaa !35
  %call129 = call double @pow(double %102, double %104) #9
  store double %call129, double* %disc, align 8, !tbaa !35
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  %105 = load double, double* %R.addr, align 8, !tbaa !35
  %106 = load double, double* %disc, align 8, !tbaa !35
  %cmp131 = fcmp oge double %105, %106
  br i1 %cmp131, label %if.then.132, label %if.else.140

if.then.132:                                      ; preds = %if.end.130
  %107 = load double, double* %R.addr, align 8, !tbaa !35
  %108 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds double, double* %108, i64 0
  %109 = load double, double* %arrayidx133, align 8, !tbaa !35
  %div134 = fdiv double 1.000000e+00, %109
  %call135 = call double @pow(double %107, double %div134) #9
  %110 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds double, double* %110, i64 2
  %111 = load double, double* %arrayidx136, align 8, !tbaa !35
  %sub137 = fsub double %call135, %111
  %112 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds double, double* %112, i64 1
  %113 = load double, double* %arrayidx138, align 8, !tbaa !35
  %div139 = fdiv double %sub137, %113
  store double %div139, double* %Val, align 8, !tbaa !35
  br label %if.end.143

if.else.140:                                      ; preds = %if.end.130
  %114 = load double, double* %R.addr, align 8, !tbaa !35
  %115 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds double, double* %115, i64 3
  %116 = load double, double* %arrayidx141, align 8, !tbaa !35
  %div142 = fdiv double %114, %116
  store double %div142, double* %Val, align 8, !tbaa !35
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.132
  br label %sw.epilog

sw.bb.144:                                        ; preds = %entry
  %117 = load double, double* %R.addr, align 8, !tbaa !35
  %118 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds double, double* %118, i64 4
  %119 = load double, double* %arrayidx145, align 8, !tbaa !35
  %cmp146 = fcmp oge double %117, %119
  br i1 %cmp146, label %if.then.147, label %if.else.161

if.then.147:                                      ; preds = %sw.bb.144
  %120 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds double, double* %120, i64 1
  %121 = load double, double* %arrayidx148, align 8, !tbaa !35
  %122 = load double, double* %R.addr, align 8, !tbaa !35
  %mul149 = fmul double %121, %122
  %123 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds double, double* %123, i64 2
  %124 = load double, double* %arrayidx150, align 8, !tbaa !35
  %add151 = fadd double %mul149, %124
  store double %add151, double* %e, align 8, !tbaa !35
  %125 = load double, double* %e, align 8, !tbaa !35
  %cmp152 = fcmp ogt double %125, 0.000000e+00
  br i1 %cmp152, label %if.then.153, label %if.else.158

if.then.153:                                      ; preds = %if.then.147
  %126 = load double, double* %e, align 8, !tbaa !35
  %127 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds double, double* %127, i64 0
  %128 = load double, double* %arrayidx154, align 8, !tbaa !35
  %call155 = call double @pow(double %126, double %128) #9
  %129 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds double, double* %129, i64 5
  %130 = load double, double* %arrayidx156, align 8, !tbaa !35
  %add157 = fadd double %call155, %130
  store double %add157, double* %Val, align 8, !tbaa !35
  br label %if.end.160

if.else.158:                                      ; preds = %if.then.147
  %131 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds double, double* %131, i64 5
  %132 = load double, double* %arrayidx159, align 8, !tbaa !35
  store double %132, double* %Val, align 8, !tbaa !35
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.158, %if.then.153
  br label %if.end.166

if.else.161:                                      ; preds = %sw.bb.144
  %133 = load double, double* %R.addr, align 8, !tbaa !35
  %134 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds double, double* %134, i64 3
  %135 = load double, double* %arrayidx162, align 8, !tbaa !35
  %mul163 = fmul double %133, %135
  %136 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds double, double* %136, i64 6
  %137 = load double, double* %arrayidx164, align 8, !tbaa !35
  %add165 = fadd double %mul163, %137
  store double %add165, double* %Val, align 8, !tbaa !35
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.161, %if.end.160
  br label %sw.epilog

sw.bb.167:                                        ; preds = %entry
  %138 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds double, double* %138, i64 3
  %139 = load double, double* %arrayidx168, align 8, !tbaa !35
  %140 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds double, double* %140, i64 4
  %141 = load double, double* %arrayidx169, align 8, !tbaa !35
  %mul170 = fmul double %139, %141
  %142 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds double, double* %142, i64 6
  %143 = load double, double* %arrayidx171, align 8, !tbaa !35
  %add172 = fadd double %mul170, %143
  store double %add172, double* %disc, align 8, !tbaa !35
  %144 = load double, double* %R.addr, align 8, !tbaa !35
  %145 = load double, double* %disc, align 8, !tbaa !35
  %cmp173 = fcmp oge double %144, %145
  br i1 %cmp173, label %if.then.174, label %if.else.188

if.then.174:                                      ; preds = %sw.bb.167
  %146 = load double, double* %R.addr, align 8, !tbaa !35
  %147 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds double, double* %147, i64 5
  %148 = load double, double* %arrayidx175, align 8, !tbaa !35
  %sub176 = fsub double %146, %148
  store double %sub176, double* %e, align 8, !tbaa !35
  %149 = load double, double* %e, align 8, !tbaa !35
  %cmp177 = fcmp olt double %149, 0.000000e+00
  br i1 %cmp177, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %if.then.174
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.187

if.else.179:                                      ; preds = %if.then.174
  %150 = load double, double* %e, align 8, !tbaa !35
  %151 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds double, double* %151, i64 0
  %152 = load double, double* %arrayidx180, align 8, !tbaa !35
  %div181 = fdiv double 1.000000e+00, %152
  %call182 = call double @pow(double %150, double %div181) #9
  %153 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds double, double* %153, i64 2
  %154 = load double, double* %arrayidx183, align 8, !tbaa !35
  %sub184 = fsub double %call182, %154
  %155 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds double, double* %155, i64 1
  %156 = load double, double* %arrayidx185, align 8, !tbaa !35
  %div186 = fdiv double %sub184, %156
  store double %div186, double* %Val, align 8, !tbaa !35
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.179, %if.then.178
  br label %if.end.193

if.else.188:                                      ; preds = %sw.bb.167
  %157 = load double, double* %R.addr, align 8, !tbaa !35
  %158 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds double, double* %158, i64 6
  %159 = load double, double* %arrayidx189, align 8, !tbaa !35
  %sub190 = fsub double %157, %159
  %160 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds double, double* %160, i64 3
  %161 = load double, double* %arrayidx191, align 8, !tbaa !35
  %div192 = fdiv double %sub190, %161
  store double %div192, double* %Val, align 8, !tbaa !35
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.188, %if.end.187
  br label %sw.epilog

sw.bb.194:                                        ; preds = %entry
  %162 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds double, double* %162, i64 1
  %163 = load double, double* %arrayidx195, align 8, !tbaa !35
  %164 = load double, double* %R.addr, align 8, !tbaa !35
  %mul196 = fmul double %163, %164
  %165 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds double, double* %165, i64 2
  %166 = load double, double* %arrayidx197, align 8, !tbaa !35
  %add198 = fadd double %mul196, %166
  store double %add198, double* %e, align 8, !tbaa !35
  %167 = load double, double* %e, align 8, !tbaa !35
  %cmp199 = fcmp olt double %167, 0.000000e+00
  br i1 %cmp199, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %sw.bb.194
  %168 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds double, double* %168, i64 3
  %169 = load double, double* %arrayidx201, align 8, !tbaa !35
  store double %169, double* %Val, align 8, !tbaa !35
  br label %if.end.207

if.else.202:                                      ; preds = %sw.bb.194
  %170 = load double, double* %e, align 8, !tbaa !35
  %171 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds double, double* %171, i64 0
  %172 = load double, double* %arrayidx203, align 8, !tbaa !35
  %call204 = call double @pow(double %170, double %172) #9
  %173 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds double, double* %173, i64 3
  %174 = load double, double* %arrayidx205, align 8, !tbaa !35
  %add206 = fadd double %call204, %174
  store double %add206, double* %Val, align 8, !tbaa !35
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.202, %if.then.200
  br label %sw.epilog

sw.bb.208:                                        ; preds = %entry
  %175 = load double, double* %R.addr, align 8, !tbaa !35
  %176 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds double, double* %176, i64 3
  %177 = load double, double* %arrayidx209, align 8, !tbaa !35
  %sub210 = fsub double %175, %177
  store double %sub210, double* %e, align 8, !tbaa !35
  %178 = load double, double* %e, align 8, !tbaa !35
  %cmp211 = fcmp olt double %178, 0.000000e+00
  br i1 %cmp211, label %if.then.212, label %if.else.213

if.then.212:                                      ; preds = %sw.bb.208
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.221

if.else.213:                                      ; preds = %sw.bb.208
  %179 = load double, double* %e, align 8, !tbaa !35
  %180 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds double, double* %180, i64 0
  %181 = load double, double* %arrayidx214, align 8, !tbaa !35
  %div215 = fdiv double 1.000000e+00, %181
  %call216 = call double @pow(double %179, double %div215) #9
  %182 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds double, double* %182, i64 2
  %183 = load double, double* %arrayidx217, align 8, !tbaa !35
  %sub218 = fsub double %call216, %183
  %184 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds double, double* %184, i64 1
  %185 = load double, double* %arrayidx219, align 8, !tbaa !35
  %div220 = fdiv double %sub218, %185
  store double %div220, double* %Val, align 8, !tbaa !35
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.213, %if.then.212
  br label %sw.epilog

sw.bb.222:                                        ; preds = %entry
  %186 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds double, double* %186, i64 2
  %187 = load double, double* %arrayidx223, align 8, !tbaa !35
  %188 = load double, double* %R.addr, align 8, !tbaa !35
  %189 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds double, double* %189, i64 0
  %190 = load double, double* %arrayidx224, align 8, !tbaa !35
  %call225 = call double @pow(double %188, double %190) #9
  %mul226 = fmul double %187, %call225
  %191 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds double, double* %191, i64 3
  %192 = load double, double* %arrayidx227, align 8, !tbaa !35
  %add228 = fadd double %mul226, %192
  store double %add228, double* %e, align 8, !tbaa !35
  %193 = load double, double* %e, align 8, !tbaa !35
  %cmp229 = fcmp ole double %193, 0.000000e+00
  br i1 %cmp229, label %if.then.230, label %if.else.232

if.then.230:                                      ; preds = %sw.bb.222
  %194 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds double, double* %194, i64 4
  %195 = load double, double* %arrayidx231, align 8, !tbaa !35
  store double %195, double* %Val, align 8, !tbaa !35
  br label %if.end.238

if.else.232:                                      ; preds = %sw.bb.222
  %196 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds double, double* %196, i64 1
  %197 = load double, double* %arrayidx233, align 8, !tbaa !35
  %198 = load double, double* %e, align 8, !tbaa !35
  %call234 = call double @log10(double %198) #9
  %mul235 = fmul double %197, %call234
  %199 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds double, double* %199, i64 4
  %200 = load double, double* %arrayidx236, align 8, !tbaa !35
  %add237 = fadd double %mul235, %200
  store double %add237, double* %Val, align 8, !tbaa !35
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.232, %if.then.230
  br label %sw.epilog

sw.bb.239:                                        ; preds = %entry
  %201 = load double, double* %R.addr, align 8, !tbaa !35
  %202 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds double, double* %202, i64 4
  %203 = load double, double* %arrayidx240, align 8, !tbaa !35
  %sub241 = fsub double %201, %203
  %204 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds double, double* %204, i64 1
  %205 = load double, double* %arrayidx242, align 8, !tbaa !35
  %div243 = fdiv double %sub241, %205
  %call244 = call double @pow(double 1.000000e+01, double %div243) #9
  %206 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds double, double* %206, i64 3
  %207 = load double, double* %arrayidx245, align 8, !tbaa !35
  %sub246 = fsub double %call244, %207
  %208 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds double, double* %208, i64 2
  %209 = load double, double* %arrayidx247, align 8, !tbaa !35
  %div248 = fdiv double %sub246, %209
  %210 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds double, double* %210, i64 0
  %211 = load double, double* %arrayidx249, align 8, !tbaa !35
  %div250 = fdiv double 1.000000e+00, %211
  %call251 = call double @pow(double %div248, double %div250) #9
  store double %call251, double* %Val, align 8, !tbaa !35
  br label %sw.epilog

sw.bb.252:                                        ; preds = %entry
  %212 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds double, double* %212, i64 0
  %213 = load double, double* %arrayidx253, align 8, !tbaa !35
  %214 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds double, double* %214, i64 1
  %215 = load double, double* %arrayidx254, align 8, !tbaa !35
  %216 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds double, double* %216, i64 2
  %217 = load double, double* %arrayidx255, align 8, !tbaa !35
  %218 = load double, double* %R.addr, align 8, !tbaa !35
  %mul256 = fmul double %217, %218
  %219 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds double, double* %219, i64 3
  %220 = load double, double* %arrayidx257, align 8, !tbaa !35
  %add258 = fadd double %mul256, %220
  %call259 = call double @pow(double %215, double %add258) #9
  %mul260 = fmul double %213, %call259
  %221 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds double, double* %221, i64 4
  %222 = load double, double* %arrayidx261, align 8, !tbaa !35
  %add262 = fadd double %mul260, %222
  store double %add262, double* %Val, align 8, !tbaa !35
  br label %sw.epilog

sw.bb.263:                                        ; preds = %entry
  %223 = load double, double* %R.addr, align 8, !tbaa !35
  %224 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds double, double* %224, i64 4
  %225 = load double, double* %arrayidx264, align 8, !tbaa !35
  %sub265 = fsub double %223, %225
  store double %sub265, double* %disc, align 8, !tbaa !35
  %226 = load double, double* %disc, align 8, !tbaa !35
  %cmp266 = fcmp olt double %226, 0.000000e+00
  br i1 %cmp266, label %if.then.267, label %if.else.268

if.then.267:                                      ; preds = %sw.bb.263
  store double 0.000000e+00, double* %Val, align 8, !tbaa !35
  br label %if.end.279

if.else.268:                                      ; preds = %sw.bb.263
  %227 = load double, double* %disc, align 8, !tbaa !35
  %228 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds double, double* %228, i64 0
  %229 = load double, double* %arrayidx269, align 8, !tbaa !35
  %div270 = fdiv double %227, %229
  %call271 = call double @log(double %div270) #9
  %230 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds double, double* %230, i64 1
  %231 = load double, double* %arrayidx272, align 8, !tbaa !35
  %call273 = call double @log(double %231) #9
  %div274 = fdiv double %call271, %call273
  %232 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds double, double* %232, i64 3
  %233 = load double, double* %arrayidx275, align 8, !tbaa !35
  %sub276 = fsub double %div274, %233
  %234 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds double, double* %234, i64 2
  %235 = load double, double* %arrayidx277, align 8, !tbaa !35
  %div278 = fdiv double %sub276, %235
  store double %div278, double* %Val, align 8, !tbaa !35
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.268, %if.then.267
  br label %sw.epilog

sw.bb.280:                                        ; preds = %entry
  %236 = load double, double* %R.addr, align 8, !tbaa !35
  %sub281 = fsub double 1.000000e+00, %236
  %237 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds double, double* %237, i64 0
  %238 = load double, double* %arrayidx282, align 8, !tbaa !35
  %div283 = fdiv double 1.000000e+00, %238
  %call284 = call double @pow(double %sub281, double %div283) #9
  %sub285 = fsub double 1.000000e+00, %call284
  %239 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds double, double* %239, i64 0
  %240 = load double, double* %arrayidx286, align 8, !tbaa !35
  %div287 = fdiv double 1.000000e+00, %240
  %call288 = call double @pow(double %sub285, double %div287) #9
  store double %call288, double* %Val, align 8, !tbaa !35
  br label %sw.epilog

sw.bb.289:                                        ; preds = %entry
  %241 = load double, double* %R.addr, align 8, !tbaa !35
  %242 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds double, double* %242, i64 0
  %243 = load double, double* %arrayidx290, align 8, !tbaa !35
  %call291 = call double @pow(double %241, double %243) #9
  %sub292 = fsub double 1.000000e+00, %call291
  %244 = load double*, double** %Params.addr, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds double, double* %244, i64 0
  %245 = load double, double* %arrayidx293, align 8, !tbaa !35
  %call294 = call double @pow(double %sub292, double %245) #9
  %sub295 = fsub double 1.000000e+00, %call294
  store double %sub295, double* %Val, align 8, !tbaa !35
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.289, %sw.bb.280, %if.end.279, %sw.bb.252, %sw.bb.239, %if.end.238, %if.end.221, %if.end.207, %if.end.193, %if.end.166, %if.end.143, %if.end.118, %if.end.100, %if.end.77, %if.end.52, %if.end.37, %if.end.20, %if.end.6
  %246 = load double, double* %Val, align 8, !tbaa !35
  store double %246, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %247 = bitcast double* %disc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #3
  %248 = bitcast double* %Val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #3
  %249 = bitcast double* %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #3
  %250 = load double, double* %retval
  ret double %250
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @log10(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readnone }

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
!10 = !{!11, !2, i64 176}
!11 = !{!"_cmsParametricCurvesCollection_st", !12, i64 0, !3, i64 4, !3, i64 84, !2, i64 168, !2, i64 176}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !2, i64 192}
!14 = !{!"", !15, i64 0, !12, i64 24, !3, i64 28, !3, i64 108, !2, i64 192}
!15 = !{!"_cmsPluginBaseStruct", !12, i64 0, !12, i64 4, !12, i64 8, !2, i64 16}
!16 = !{!11, !2, i64 168}
!17 = !{!14, !12, i64 24}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !12, i64 40}
!20 = !{!"_cms_curve_struct", !2, i64 0, !12, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !12, i64 40, !2, i64 48}
!21 = !{!20, !2, i64 48}
!22 = !{!12, !12, i64 0}
!23 = !{!20, !2, i64 16}
!24 = !{!20, !2, i64 32}
!25 = !{!20, !12, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !3, i64 0}
!28 = !{!20, !2, i64 24}
!29 = !{!30, !12, i64 8}
!30 = !{!"", !31, i64 0, !31, i64 4, !12, i64 8, !3, i64 16, !12, i64 96, !2, i64 104}
!31 = !{!"float", !3, i64 0}
!32 = !{!30, !12, i64 96}
!33 = !{!30, !2, i64 104}
!34 = !{!20, !2, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !3, i64 0}
!37 = !{!30, !31, i64 0}
!38 = !{!30, !31, i64 4}
!39 = !{!31, !31, i64 0}
!40 = !{!41, !2, i64 120}
!41 = !{!"_cms_interp_struc", !2, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!42 = !{!41, !2, i64 0}
