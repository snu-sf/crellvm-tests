; ModuleID = './cmsintrp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsInterpPluginChunkType = type { void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginInterpolation = type { %struct._cmsPluginBaseStruct, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* }
%union.anon = type { double }

@_cmsInterpPluginChunk = global %struct._cmsInterpPluginChunkType zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"(ctx != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmsintrp.c\00", align 1
@__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk = private unnamed_addr constant [96 x i8] c"void _cmsAllocInterpPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@_cmsAllocInterpPluginChunk.InterpPluginChunk = internal global %struct._cmsInterpPluginChunkType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"(from != ((void*)0))\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Too many input channels (%d channels, max=%d)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Unsupported interpolation (%d->%d channels)\00", align 1

; Function Attrs: nounwind uwtable
define void @_cmsAllocInterpPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
entry:
  %ctx.addr = alloca %struct._cmsContext_struct*, align 8
  %src.addr = alloca %struct._cmsContext_struct*, align 8
  %from = alloca i8*, align 8
  store %struct._cmsContext_struct* %ctx, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %src, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %0 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsContext_struct* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsContext_struct* %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 5
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %5, i8** %from, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i8* bitcast (%struct._cmsInterpPluginChunkType* @_cmsAllocInterpPluginChunk.InterpPluginChunk to i8*), i8** %from, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %from, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %6, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %if.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.5

cond.end.5:                                       ; preds = %7, %cond.true.3
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %8, i32 0, i32 1
  %9 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !5
  %10 = load i8*, i8** %from, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %9, i8* %10, i32 8) #8
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks6 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %11, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks6, i32 0, i64 5
  store i8* %call, i8** %arrayidx7, align 8, !tbaa !1
  %12 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i8* @_cmsSubAllocDup(%struct._cmsSubAllocator*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterInterpPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %Plugin = alloca %struct.cmsPluginInterpolation*, align 8
  %ptr = alloca %struct._cmsInterpPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPluginInterpolation** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPluginBaseStruct* %1 to %struct.cmsPluginInterpolation*
  store %struct.cmsPluginInterpolation* %2, %struct.cmsPluginInterpolation** %Plugin, align 8, !tbaa !1
  %3 = bitcast %struct._cmsInterpPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %4, i32 5) #8
  %5 = bitcast i8* %call to %struct._cmsInterpPluginChunkType*
  store %struct._cmsInterpPluginChunkType* %5, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %6 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._cmsInterpPluginChunkType*, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %Interpolators = getelementptr inbounds %struct._cmsInterpPluginChunkType, %struct._cmsInterpPluginChunkType* %7, i32 0, i32 0
  store void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* null, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)** %Interpolators, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.cmsPluginInterpolation*, %struct.cmsPluginInterpolation** %Plugin, align 8, !tbaa !1
  %InterpolatorsFactory = getelementptr inbounds %struct.cmsPluginInterpolation, %struct.cmsPluginInterpolation* %8, i32 0, i32 1
  %9 = load void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)*, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)** %InterpolatorsFactory, align 8, !tbaa !10
  %10 = load %struct._cmsInterpPluginChunkType*, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %Interpolators1 = getelementptr inbounds %struct._cmsInterpPluginChunkType, %struct._cmsInterpPluginChunkType* %10, i32 0, i32 0
  store void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* %9, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)** %Interpolators1, align 8, !tbaa !8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct._cmsInterpPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.cmsPluginInterpolation** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @_cmsSetInterpolationRoutine(%struct._cmsContext_struct* %ContextID, %struct._cms_interp_struc* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %ptr = alloca %struct._cmsInterpPluginChunkType*, align 8
  %coerce = alloca %union.cmsInterpFunction, align 8
  %coerce13 = alloca %union.cmsInterpFunction, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsInterpPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 5) #8
  %2 = bitcast i8* %call to %struct._cmsInterpPluginChunkType*
  store %struct._cmsInterpPluginChunkType* %2, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Interpolation = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %3, i32 0, i32 8
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* null, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  %4 = load %struct._cmsInterpPluginChunkType*, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %Interpolators = getelementptr inbounds %struct._cmsInterpPluginChunkType, %struct._cmsInterpPluginChunkType* %4, i32 0, i32 0
  %5 = load void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)*, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)** %Interpolators, align 8, !tbaa !8
  %cmp = icmp ne void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Interpolation1 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %6, i32 0, i32 8
  %7 = load %struct._cmsInterpPluginChunkType*, %struct._cmsInterpPluginChunkType** %ptr, align 8, !tbaa !1
  %Interpolators2 = getelementptr inbounds %struct._cmsInterpPluginChunkType, %struct._cmsInterpPluginChunkType* %7, i32 0, i32 0
  %8 = load void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)*, void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)** %Interpolators2, align 8, !tbaa !8
  %9 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nInputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %9, i32 0, i32 2
  %10 = load i32, i32* %nInputs, align 4, !tbaa !14
  %11 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %11, i32 0, i32 3
  %12 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %13 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %dwFlags = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %13, i32 0, i32 1
  %14 = load i32, i32* %dwFlags, align 4, !tbaa !17
  %call3 = call void (i16*, i16*, %struct._cms_interp_struc*)* %8(i32 %10, i32 %12, i32 %14) #8
  %coerce.dive = getelementptr %union.cmsInterpFunction, %union.cmsInterpFunction* %coerce, i32 0, i32 0
  store void (i16*, i16*, %struct._cms_interp_struc*)* %call3, void (i16*, i16*, %struct._cms_interp_struc*)** %coerce.dive, align 8
  %15 = bitcast %union.cmsInterpFunction* %Interpolation1 to i8*
  %16 = bitcast %union.cmsInterpFunction* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false), !tbaa.struct !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Interpolation4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %17, i32 0, i32 8
  %Lerp165 = bitcast %union.cmsInterpFunction* %Interpolation4 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %18 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp165, align 8, !tbaa !1
  %cmp6 = icmp eq void (i16*, i16*, %struct._cms_interp_struc*)* %18, null
  br i1 %cmp6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Interpolation8 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %19, i32 0, i32 8
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nInputs9 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 2
  %21 = load i32, i32* %nInputs9, align 4, !tbaa !14
  %22 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %22, i32 0, i32 3
  %23 = load i32, i32* %nOutputs10, align 4, !tbaa !16
  %24 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %dwFlags11 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %24, i32 0, i32 1
  %25 = load i32, i32* %dwFlags11, align 4, !tbaa !17
  %call12 = call void (i16*, i16*, %struct._cms_interp_struc*)* @DefaultInterpolatorsFactory(i32 %21, i32 %23, i32 %25) #8
  %coerce.dive14 = getelementptr %union.cmsInterpFunction, %union.cmsInterpFunction* %coerce13, i32 0, i32 0
  store void (i16*, i16*, %struct._cms_interp_struc*)* %call12, void (i16*, i16*, %struct._cms_interp_struc*)** %coerce.dive14, align 8
  %26 = bitcast %union.cmsInterpFunction* %Interpolation8 to i8*
  %27 = bitcast %union.cmsInterpFunction* %coerce13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false), !tbaa.struct !18
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.7, %if.end
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Interpolation16 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %28, i32 0, i32 8
  %Lerp1617 = bitcast %union.cmsInterpFunction* %Interpolation16 to void (i16*, i16*, %struct._cms_interp_struc*)**
  %29 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1617, align 8, !tbaa !1
  %cmp18 = icmp eq void (i16*, i16*, %struct._cms_interp_struc*)* %29, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.19
  %30 = bitcast %struct._cmsInterpPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void (i16*, i16*, %struct._cms_interp_struc*)* @DefaultInterpolatorsFactory(i32 %nInputChannels, i32 %nOutputChannels, i32 %dwFlags) #0 {
entry:
  %retval = alloca %union.cmsInterpFunction, align 8
  %nInputChannels.addr = alloca i32, align 4
  %nOutputChannels.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %Interpolation = alloca %union.cmsInterpFunction, align 8
  %IsFloat = alloca i32, align 4
  %IsTrilinear = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %nInputChannels, i32* %nInputChannels.addr, align 4, !tbaa !19
  store i32 %nOutputChannels, i32* %nOutputChannels.addr, align 4, !tbaa !19
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !19
  %0 = bitcast %union.cmsInterpFunction* %Interpolation to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %IsFloat to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %dwFlags.addr, align 4, !tbaa !19
  %and = and i32 %2, 1
  store i32 %and, i32* %IsFloat, align 4, !tbaa !19
  %3 = bitcast i32* %IsTrilinear to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %dwFlags.addr, align 4, !tbaa !19
  %and1 = and i32 %4, 256
  store i32 %and1, i32* %IsTrilinear, align 4, !tbaa !19
  %5 = bitcast %union.cmsInterpFunction* %Interpolation to i8*
  %call = call i8* @memset(i8* %5, i32 0, i64 8) #9
  %6 = load i32, i32* %nInputChannels.addr, align 4, !tbaa !19
  %cmp = icmp uge i32 %6, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %nOutputChannels.addr, align 4, !tbaa !19
  %cmp2 = icmp uge i32 %7, 128
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast %union.cmsInterpFunction* %retval to i8*
  %9 = bitcast %union.cmsInterpFunction* %Interpolation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false), !tbaa.struct !18
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load i32, i32* %nInputChannels.addr, align 4, !tbaa !19
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.39
    i32 5, label %sw.bb.46
    i32 6, label %sw.bb.53
    i32 7, label %sw.bb.60
    i32 8, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load i32, i32* %nOutputChannels.addr, align 4, !tbaa !19
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %sw.bb
  %12 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.4
  %LerpFloat = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @LinLerp1Dfloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat, align 8, !tbaa !1
  br label %if.end.6

if.else:                                          ; preds = %if.then.4
  %Lerp16 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @LinLerp1D, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp16, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %if.end.14

if.else.7:                                        ; preds = %sw.bb
  %13 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %LerpFloat10 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval1InputFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat10, align 8, !tbaa !1
  br label %if.end.13

if.else.11:                                       ; preds = %if.else.7
  %Lerp1612 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval1Input, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1612, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end
  %14 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %sw.bb.15
  %LerpFloat18 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @BilinearInterpFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat18, align 8, !tbaa !1
  br label %if.end.21

if.else.19:                                       ; preds = %sw.bb.15
  %Lerp1620 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @BilinearInterp16, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1620, align 8, !tbaa !1
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  %15 = load i32, i32* %IsTrilinear, align 4, !tbaa !19
  %tobool23 = icmp ne i32 %15, 0
  br i1 %tobool23, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %sw.bb.22
  %16 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool25 = icmp ne i32 %16, 0
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.24
  %LerpFloat27 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @TrilinearInterpFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat27, align 8, !tbaa !1
  br label %if.end.30

if.else.28:                                       ; preds = %if.then.24
  %Lerp1629 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @TrilinearInterp16, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1629, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.38

if.else.31:                                       ; preds = %sw.bb.22
  %17 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool32 = icmp ne i32 %17, 0
  br i1 %tobool32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.else.31
  %LerpFloat34 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @TetrahedralInterpFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat34, align 8, !tbaa !1
  br label %if.end.37

if.else.35:                                       ; preds = %if.else.31
  %Lerp1636 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @TetrahedralInterp16, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1636, align 8, !tbaa !1
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.30
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end
  %18 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool40 = icmp ne i32 %18, 0
  br i1 %tobool40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %sw.bb.39
  %LerpFloat42 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval4InputsFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat42, align 8, !tbaa !1
  br label %if.end.45

if.else.43:                                       ; preds = %sw.bb.39
  %Lerp1644 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval4Inputs, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1644, align 8, !tbaa !1
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.41
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end
  %19 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool47 = icmp ne i32 %19, 0
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %sw.bb.46
  %LerpFloat49 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval5InputsFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat49, align 8, !tbaa !1
  br label %if.end.52

if.else.50:                                       ; preds = %sw.bb.46
  %Lerp1651 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval5Inputs, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1651, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.48
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end
  %20 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool54 = icmp ne i32 %20, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %sw.bb.53
  %LerpFloat56 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval6InputsFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat56, align 8, !tbaa !1
  br label %if.end.59

if.else.57:                                       ; preds = %sw.bb.53
  %Lerp1658 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval6Inputs, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1658, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.55
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end
  %21 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool61 = icmp ne i32 %21, 0
  br i1 %tobool61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %sw.bb.60
  %LerpFloat63 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval7InputsFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat63, align 8, !tbaa !1
  br label %if.end.66

if.else.64:                                       ; preds = %sw.bb.60
  %Lerp1665 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval7Inputs, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1665, align 8, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end
  %22 = load i32, i32* %IsFloat, align 4, !tbaa !19
  %tobool68 = icmp ne i32 %22, 0
  br i1 %tobool68, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %sw.bb.67
  %LerpFloat70 = bitcast %union.cmsInterpFunction* %Interpolation to void (float*, float*, %struct._cms_interp_struc*)**
  store void (float*, float*, %struct._cms_interp_struc*)* @Eval8InputsFloat, void (float*, float*, %struct._cms_interp_struc*)** %LerpFloat70, align 8, !tbaa !1
  br label %if.end.73

if.else.71:                                       ; preds = %sw.bb.67
  %Lerp1672 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* @Eval8Inputs, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1672, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.69
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %Lerp1674 = bitcast %union.cmsInterpFunction* %Interpolation to void (i16*, i16*, %struct._cms_interp_struc*)**
  store void (i16*, i16*, %struct._cms_interp_struc*)* null, void (i16*, i16*, %struct._cms_interp_struc*)** %Lerp1674, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.73, %if.end.66, %if.end.59, %if.end.52, %if.end.45, %if.end.38, %if.end.21, %if.end.14
  %23 = bitcast %union.cmsInterpFunction* %retval to i8*
  %24 = bitcast %union.cmsInterpFunction* %Interpolation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false), !tbaa.struct !18
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %25 = bitcast i32* %IsTrilinear to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %IsFloat to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %union.cmsInterpFunction* %Interpolation to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %coerce.dive = getelementptr %union.cmsInterpFunction, %union.cmsInterpFunction* %retval, i32 0, i32 0
  %28 = load void (i16*, i16*, %struct._cms_interp_struc*)*, void (i16*, i16*, %struct._cms_interp_struc*)** %coerce.dive, align 8
  ret void (i16*, i16*, %struct._cms_interp_struc*)* %28
}

; Function Attrs: nounwind uwtable
define %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct* %ContextID, i32* %nSamples, i32 %InputChan, i32 %OutputChan, i8* %Table, i32 %dwFlags) #0 {
entry:
  %retval = alloca %struct._cms_interp_struc*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nSamples.addr = alloca i32*, align 8
  %InputChan.addr = alloca i32, align 4
  %OutputChan.addr = alloca i32, align 4
  %Table.addr = alloca i8*, align 8
  %dwFlags.addr = alloca i32, align 4
  %p = alloca %struct._cms_interp_struc*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32* %nSamples, i32** %nSamples.addr, align 8, !tbaa !1
  store i32 %InputChan, i32* %InputChan.addr, align 4, !tbaa !19
  store i32 %OutputChan, i32* %OutputChan.addr, align 4, !tbaa !19
  store i8* %Table, i8** %Table.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_interp_struc** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %cmp = icmp sgt i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %4 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %3, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i32 %4, i32 8) #8
  store %struct._cms_interp_struc* null, %struct._cms_interp_struc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %5, i32 136) #8
  %6 = bitcast i8* %call to %struct._cms_interp_struc*
  store %struct._cms_interp_struc* %6, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %7 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cms_interp_struc* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cms_interp_struc* null, %struct._cms_interp_struc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %8 = load i32, i32* %dwFlags.addr, align 4, !tbaa !19
  %9 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %dwFlags4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %9, i32 0, i32 1
  store i32 %8, i32* %dwFlags4, align 4, !tbaa !17
  %10 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %11 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %nInputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %11, i32 0, i32 2
  store i32 %10, i32* %nInputs, align 4, !tbaa !14
  %12 = load i32, i32* %OutputChan.addr, align 4, !tbaa !19
  %13 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %13, i32 0, i32 3
  store i32 %12, i32* %nOutputs, align 4, !tbaa !16
  %14 = load i8*, i8** %Table.addr, align 8, !tbaa !1
  %15 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %Table5 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %15, i32 0, i32 7
  store i8* %14, i8** %Table5, align 8, !tbaa !20
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %17 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %17, i32 0, i32 0
  store %struct._cmsContext_struct* %16, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %18 = load i32, i32* %i, align 4, !tbaa !19
  %19 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** %nSamples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %23 to i64
  %24 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %nSamples9 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %24, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %nSamples9, i32 0, i64 %idxprom8
  store i32 %22, i32* %arrayidx10, align 4, !tbaa !19
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom11 = sext i32 %25 to i64
  %26 = load i32*, i32** %nSamples.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 %idxprom11
  %27 = load i32, i32* %arrayidx12, align 4, !tbaa !19
  %sub = sub i32 %27, 1
  %28 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom13 = sext i32 %28 to i64
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %29, i32 0, i32 5
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 %idxprom13
  store i32 %sub, i32* %arrayidx14, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %nOutputs15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %31, i32 0, i32 3
  %32 = load i32, i32* %nOutputs15, align 4, !tbaa !16
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 0
  store i32 %32, i32* %arrayidx16, align 4, !tbaa !19
  store i32 1, i32* %i, align 4, !tbaa !19
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.30, %for.end
  %34 = load i32, i32* %i, align 4, !tbaa !19
  %35 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %34, %35
  br i1 %cmp18, label %for.body.19, label %for.end.32

for.body.19:                                      ; preds = %for.cond.17
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %sub20 = sub nsw i32 %36, 1
  %idxprom21 = sext i32 %sub20 to i64
  %37 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta22 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %37, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %opta22, i32 0, i64 %idxprom21
  %38 = load i32, i32* %arrayidx23, align 4, !tbaa !19
  %39 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %40 = load i32, i32* %i, align 4, !tbaa !19
  %sub24 = sub nsw i32 %39, %40
  %idxprom25 = sext i32 %sub24 to i64
  %41 = load i32*, i32** %nSamples.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %41, i64 %idxprom25
  %42 = load i32, i32* %arrayidx26, align 4, !tbaa !19
  %mul = mul i32 %38, %42
  %43 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %opta28 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %44, i32 0, i32 6
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %opta28, i32 0, i64 %idxprom27
  store i32 %mul, i32* %arrayidx29, align 4, !tbaa !19
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.19
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %inc31 = add nsw i32 %45, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !19
  br label %for.cond.17

for.end.32:                                       ; preds = %for.cond.17
  %46 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %47 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %call33 = call i32 @_cmsSetInterpolationRoutine(%struct._cmsContext_struct* %46, %struct._cms_interp_struc* %47) #8
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %for.end.32
  %48 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %49 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %50 = load i32, i32* %OutputChan.addr, align 4, !tbaa !19
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %48, i32 8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i32 %49, i32 %50) #8
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %52 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  %53 = bitcast %struct._cms_interp_struc* %52 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %51, i8* %53) #8
  store %struct._cms_interp_struc* null, %struct._cms_interp_struc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %for.end.32
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p, align 8, !tbaa !1
  store %struct._cms_interp_struc* %54, %struct._cms_interp_struc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.34, %if.then.2, %if.then
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast %struct._cms_interp_struc** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %retval
  ret %struct._cms_interp_struc* %57
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #3

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #3

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._cms_interp_struc* @_cmsComputeInterpParams(%struct._cmsContext_struct* %ContextID, i32 %nSamples, i32 %InputChan, i32 %OutputChan, i8* %Table, i32 %dwFlags) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nSamples.addr = alloca i32, align 4
  %InputChan.addr = alloca i32, align 4
  %OutputChan.addr = alloca i32, align 4
  %Table.addr = alloca i8*, align 8
  %dwFlags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Samples = alloca [8 x i32], align 16
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nSamples, i32* %nSamples.addr, align 4, !tbaa !19
  store i32 %InputChan, i32* %InputChan.addr, align 4, !tbaa !19
  store i32 %OutputChan, i32* %OutputChan.addr, align 4, !tbaa !19
  store i8* %Table, i8** %Table.addr, align 8, !tbaa !1
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !19
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [8 x i32]* %Samples to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %nSamples.addr, align 4, !tbaa !19
  %4 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %Samples, i32 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %Samples, i32 0, i32 0
  %7 = load i32, i32* %InputChan.addr, align 4, !tbaa !19
  %8 = load i32, i32* %OutputChan.addr, align 4, !tbaa !19
  %9 = load i8*, i8** %Table.addr, align 8, !tbaa !1
  %10 = load i32, i32* %dwFlags.addr, align 4, !tbaa !19
  %call = call %struct._cms_interp_struc* @_cmsComputeInterpParamsEx(%struct._cmsContext_struct* %6, i32* %arraydecay, i32 %7, i32 %8, i8* %9, i32 %10) #8
  %11 = bitcast [8 x i32]* %Samples to i8*
  call void @llvm.lifetime.end(i64 32, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret %struct._cms_interp_struc* %call
}

; Function Attrs: nounwind uwtable
define void @_cmsFreeInterpParams(%struct._cms_interp_struc* %p) #0 {
entry:
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_interp_struc* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 0
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !21
  %3 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %4 = bitcast %struct._cms_interp_struc* %3 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %2, i8* %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @LinLerp1Dfloat(float* %Value, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Value.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %y1 = alloca float, align 4
  %y0 = alloca float, align 4
  %val2 = alloca float, align 4
  %rest = alloca float, align 4
  %cell0 = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %LutTable = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store float* %Value, float** %Value.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %val2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cell1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %7, i32 0, i32 7
  %8 = load i8*, i8** %Table, align 8, !tbaa !20
  %9 = bitcast i8* %8 to float*
  store float* %9, float** %LutTable, align 8, !tbaa !1
  %10 = load float*, float** %Value.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %10, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %11) #8
  store float %call, float* %val2, align 4, !tbaa !22
  %12 = load float, float* %val2, align 4, !tbaa !22
  %conv = fpext float %12 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %13, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %14 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %idxprom = zext i32 %14 to i64
  %15 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %15, i64 %idxprom
  %16 = load float, float* %arrayidx3, align 4, !tbaa !22
  %17 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %17, i64 0
  store float %16, float* %arrayidx4, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain5 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %18, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain5, i32 0, i64 0
  %19 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  %conv7 = uitofp i32 %19 to float
  %20 = load float, float* %val2, align 4, !tbaa !22
  %mul = fmul float %20, %conv7
  store float %mul, float* %val2, align 4, !tbaa !22
  %21 = load float, float* %val2, align 4, !tbaa !22
  %conv8 = fpext float %21 to double
  %call9 = call double @floor(double %conv8) #10
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %cell0, align 4, !tbaa !19
  %22 = load float, float* %val2, align 4, !tbaa !22
  %conv11 = fpext float %22 to double
  %call12 = call double @ceil(double %conv11) #10
  %conv13 = fptosi double %call12 to i32
  store i32 %conv13, i32* %cell1, align 4, !tbaa !19
  %23 = load float, float* %val2, align 4, !tbaa !22
  %24 = load i32, i32* %cell0, align 4, !tbaa !19
  %conv14 = sitofp i32 %24 to float
  %sub = fsub float %23, %conv14
  store float %sub, float* %rest, align 4, !tbaa !22
  %25 = load i32, i32* %cell0, align 4, !tbaa !19
  %idxprom15 = sext i32 %25 to i64
  %26 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds float, float* %26, i64 %idxprom15
  %27 = load float, float* %arrayidx16, align 4, !tbaa !22
  store float %27, float* %y0, align 4, !tbaa !22
  %28 = load i32, i32* %cell1, align 4, !tbaa !19
  %idxprom17 = sext i32 %28 to i64
  %29 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %29, i64 %idxprom17
  %30 = load float, float* %arrayidx18, align 4, !tbaa !22
  store float %30, float* %y1, align 4, !tbaa !22
  %31 = load float, float* %y0, align 4, !tbaa !22
  %32 = load float, float* %y1, align 4, !tbaa !22
  %33 = load float, float* %y0, align 4, !tbaa !22
  %sub19 = fsub float %32, %33
  %34 = load float, float* %rest, align 4, !tbaa !22
  %mul20 = fmul float %sub19, %34
  %add = fadd float %31, %mul20
  %35 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %35, i64 0
  store float %add, float* %arrayidx21, align 4, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %36 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %cell1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast float* %val2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
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
define internal void @LinLerp1D(i16* %Value, i16* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Value.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %y1 = alloca i16, align 2
  %y0 = alloca i16, align 2
  %cell0 = alloca i32, align 4
  %rest = alloca i32, align 4
  %val3 = alloca i32, align 4
  %LutTable = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i16* %Value, i16** %Value.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast i16* %y1 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %y0 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %val3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %6, i32 0, i32 7
  %7 = load i8*, i8** %Table, align 8, !tbaa !20
  %8 = bitcast i8* %7 to i16*
  store i16* %8, i16** %LutTable, align 8, !tbaa !1
  %9 = load i16*, i16** %Value.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %10 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %11, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %12 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %idxprom = zext i32 %12 to i64
  %13 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx3, align 2, !tbaa !24
  %15 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %15, i64 0
  store i16 %14, i16* %arrayidx4, align 2, !tbaa !24
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain5 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain5, i32 0, i64 0
  %17 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  %18 = load i16*, i16** %Value.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx7, align 2, !tbaa !24
  %conv8 = zext i16 %19 to i32
  %mul = mul i32 %17, %conv8
  store i32 %mul, i32* %val3, align 4, !tbaa !19
  %20 = load i32, i32* %val3, align 4, !tbaa !19
  %call = call i32 @_cmsToFixedDomain(i32 %20) #8
  store i32 %call, i32* %val3, align 4, !tbaa !19
  %21 = load i32, i32* %val3, align 4, !tbaa !19
  %shr = ashr i32 %21, 16
  store i32 %shr, i32* %cell0, align 4, !tbaa !19
  %22 = load i32, i32* %val3, align 4, !tbaa !19
  %and = and i32 %22, 65535
  store i32 %and, i32* %rest, align 4, !tbaa !19
  %23 = load i32, i32* %cell0, align 4, !tbaa !19
  %idxprom9 = sext i32 %23 to i64
  %24 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %24, i64 %idxprom9
  %25 = load i16, i16* %arrayidx10, align 2, !tbaa !24
  store i16 %25, i16* %y0, align 2, !tbaa !24
  %26 = load i32, i32* %cell0, align 4, !tbaa !19
  %add = add nsw i32 %26, 1
  %idxprom11 = sext i32 %add to i64
  %27 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %27, i64 %idxprom11
  %28 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  store i16 %28, i16* %y1, align 2, !tbaa !24
  %29 = load i32, i32* %rest, align 4, !tbaa !19
  %30 = load i16, i16* %y0, align 2, !tbaa !24
  %conv13 = zext i16 %30 to i32
  %31 = load i16, i16* %y1, align 2, !tbaa !24
  %conv14 = zext i16 %31 to i32
  %call15 = call zeroext i16 @LinearInterp(i32 %29, i32 %conv13, i32 %conv14) #8
  %32 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i16, i16* %32, i64 0
  store i16 %call15, i16* %arrayidx16, align 2, !tbaa !24
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %33 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %val3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i16* %y0 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %37) #1
  %38 = bitcast i16* %y1 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %38) #1
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
define internal void @Eval1InputFloat(float* %Value, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Value.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %y1 = alloca float, align 4
  %y0 = alloca float, align 4
  %val2 = alloca float, align 4
  %rest = alloca float, align 4
  %cell0 = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %LutTable = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store float* %Value, float** %Value.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %val2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %cell1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %8, i32 0, i32 7
  %9 = load i8*, i8** %Table, align 8, !tbaa !20
  %10 = bitcast i8* %9 to float*
  store float* %10, float** %LutTable, align 8, !tbaa !1
  %11 = load float*, float** %Value.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %11, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %12) #8
  store float %call, float* %val2, align 4, !tbaa !22
  %13 = load float, float* %val2, align 4, !tbaa !22
  %conv = fpext float %13 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %14, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %15 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %idxprom = zext i32 %15 to i64
  %16 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %16, i64 %idxprom
  %17 = load float, float* %arrayidx3, align 4, !tbaa !22
  %18 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds float, float* %18, i64 0
  store float %17, float* %arrayidx4, align 4, !tbaa !22
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain5 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %19, i32 0, i32 5
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain5, i32 0, i64 0
  %20 = load i32, i32* %arrayidx6, align 4, !tbaa !19
  %conv7 = uitofp i32 %20 to float
  %21 = load float, float* %val2, align 4, !tbaa !22
  %mul = fmul float %21, %conv7
  store float %mul, float* %val2, align 4, !tbaa !22
  %22 = load float, float* %val2, align 4, !tbaa !22
  %conv8 = fpext float %22 to double
  %call9 = call double @floor(double %conv8) #10
  %conv10 = fptosi double %call9 to i32
  store i32 %conv10, i32* %cell0, align 4, !tbaa !19
  %23 = load float, float* %val2, align 4, !tbaa !22
  %conv11 = fpext float %23 to double
  %call12 = call double @ceil(double %conv11) #10
  %conv13 = fptosi double %call12 to i32
  store i32 %conv13, i32* %cell1, align 4, !tbaa !19
  %24 = load float, float* %val2, align 4, !tbaa !22
  %25 = load i32, i32* %cell0, align 4, !tbaa !19
  %conv14 = sitofp i32 %25 to float
  %sub = fsub float %24, %conv14
  store float %sub, float* %rest, align 4, !tbaa !22
  %26 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %26, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 0
  %27 = load i32, i32* %arrayidx15, align 4, !tbaa !19
  %28 = load i32, i32* %cell0, align 4, !tbaa !19
  %mul16 = mul i32 %28, %27
  store i32 %mul16, i32* %cell0, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %29, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %opta17, i32 0, i64 0
  %30 = load i32, i32* %arrayidx18, align 4, !tbaa !19
  %31 = load i32, i32* %cell1, align 4, !tbaa !19
  %mul19 = mul i32 %31, %30
  store i32 %mul19, i32* %cell1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %32 = load i32, i32* %OutChan, align 4, !tbaa !19
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 3
  %34 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp20 = icmp ult i32 %32, %34
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %cell0, align 4, !tbaa !19
  %36 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add = add i32 %35, %36
  %idxprom22 = zext i32 %add to i64
  %37 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds float, float* %37, i64 %idxprom22
  %38 = load float, float* %arrayidx23, align 4, !tbaa !22
  store float %38, float* %y0, align 4, !tbaa !22
  %39 = load i32, i32* %cell1, align 4, !tbaa !19
  %40 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add24 = add i32 %39, %40
  %idxprom25 = zext i32 %add24 to i64
  %41 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds float, float* %41, i64 %idxprom25
  %42 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %42, float* %y1, align 4, !tbaa !22
  %43 = load float, float* %y0, align 4, !tbaa !22
  %44 = load float, float* %y1, align 4, !tbaa !22
  %45 = load float, float* %y0, align 4, !tbaa !22
  %sub27 = fsub float %44, %45
  %46 = load float, float* %rest, align 4, !tbaa !22
  %mul28 = fmul float %sub27, %46
  %add29 = fadd float %43, %mul28
  %47 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom30 = zext i32 %47 to i64
  %48 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %48, i64 %idxprom30
  store float %add29, float* %arrayidx31, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add i32 %49, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %50 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %cell1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %cell0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast float* %val2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
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
define internal void @Eval1Input(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %v = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %LutTable = alloca i16*, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %9, i32 0, i32 7
  %10 = load i8*, i8** %Table, align 8, !tbaa !20
  %11 = bitcast i8* %10 to i16*
  store i16* %11, i16** %LutTable, align 8, !tbaa !1
  %12 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %13 to i32
  %14 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %14, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %15 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %15
  store i32 %mul, i32* %v, align 4, !tbaa !19
  %16 = load i32, i32* %v, align 4, !tbaa !19
  %call = call i32 @_cmsToFixedDomain(i32 %16) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %17 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %17, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %18 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %18, 65535
  %conv2 = trunc i32 %and to i16
  %conv3 = zext i16 %conv2 to i32
  store i32 %conv3, i32* %rk, align 4, !tbaa !19
  %19 = load i32, i32* %k0, align 4, !tbaa !19
  %20 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %20, i64 0
  %21 = load i16, i16* %arrayidx4, align 2, !tbaa !24
  %conv5 = zext i16 %21 to i32
  %cmp = icmp ne i32 %conv5, 65535
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %19, %cond
  store i32 %add, i32* %k1, align 4, !tbaa !19
  %22 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %22, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 0
  %23 = load i32, i32* %arrayidx7, align 4, !tbaa !19
  %24 = load i32, i32* %k0, align 4, !tbaa !19
  %mul8 = mul i32 %23, %24
  store i32 %mul8, i32* %K0, align 4, !tbaa !19
  %25 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta9 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %25, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %opta9, i32 0, i64 0
  %26 = load i32, i32* %arrayidx10, align 4, !tbaa !19
  %27 = load i32, i32* %k1, align 4, !tbaa !19
  %mul11 = mul i32 %26, %27
  store i32 %mul11, i32* %K1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %28 = load i32, i32* %OutChan, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %29, i32 0, i32 3
  %30 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp12 = icmp ult i32 %28, %30
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %rk, align 4, !tbaa !19
  %32 = load i32, i32* %K0, align 4, !tbaa !19
  %33 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add14 = add i32 %32, %33
  %idxprom = zext i32 %add14 to i64
  %34 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %34, i64 %idxprom
  %35 = load i16, i16* %arrayidx15, align 2, !tbaa !24
  %conv16 = zext i16 %35 to i32
  %36 = load i32, i32* %K1, align 4, !tbaa !19
  %37 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add17 = add i32 %36, %37
  %idxprom18 = zext i32 %add17 to i64
  %38 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %38, i64 %idxprom18
  %39 = load i16, i16* %arrayidx19, align 2, !tbaa !24
  %conv20 = zext i16 %39 to i32
  %call21 = call zeroext i16 @LinearInterp(i32 %31, i32 %conv16, i32 %conv20) #8
  %40 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom22 = zext i32 %40 to i64
  %41 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %41, i64 %idxprom22
  store i16 %call21, i16* %arrayidx23, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add i32 %42, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BilinearInterpFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %px = alloca float, align 4
  %py = alloca float, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %fx = alloca float, align 4
  %fy = alloca float, align 4
  %d00 = alloca float, align 4
  %d01 = alloca float, align 4
  %d10 = alloca float, align 4
  %d11 = alloca float, align 4
  %dx0 = alloca float, align 4
  %dx1 = alloca float, align 4
  %dxy = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast float* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast float* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast float* %d00 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast float* %d01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast float* %d10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast float* %d11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast float* %dx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast float* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast float* %dxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 3
  %24 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %24, i32* %TotalOut, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %26) #8
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %28 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %28 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %px, align 4, !tbaa !22
  %29 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %29, i64 1
  %30 = load float, float* %arrayidx2, align 4, !tbaa !22
  %call3 = call float @fclamp(float %30) #8
  %31 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %31, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %32 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %conv6 = uitofp i32 %32 to float
  %mul7 = fmul float %call3, %conv6
  store float %mul7, float* %py, align 4, !tbaa !22
  %33 = load float, float* %px, align 4, !tbaa !22
  %conv8 = fpext float %33 to double
  %call9 = call i32 @_cmsQuickFloor(double %conv8) #8
  store i32 %call9, i32* %x0, align 4, !tbaa !19
  %34 = load float, float* %px, align 4, !tbaa !22
  %35 = load i32, i32* %x0, align 4, !tbaa !19
  %conv10 = sitofp i32 %35 to float
  %sub = fsub float %34, %conv10
  store float %sub, float* %fx, align 4, !tbaa !22
  %36 = load float, float* %py, align 4, !tbaa !22
  %conv11 = fpext float %36 to double
  %call12 = call i32 @_cmsQuickFloor(double %conv11) #8
  store i32 %call12, i32* %y0, align 4, !tbaa !19
  %37 = load float, float* %py, align 4, !tbaa !22
  %38 = load i32, i32* %y0, align 4, !tbaa !19
  %conv13 = sitofp i32 %38 to float
  %sub14 = fsub float %37, %conv13
  store float %sub14, float* %fy, align 4, !tbaa !22
  %39 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %39, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 1
  %40 = load i32, i32* %arrayidx15, align 4, !tbaa !19
  %41 = load i32, i32* %x0, align 4, !tbaa !19
  %mul16 = mul i32 %40, %41
  store i32 %mul16, i32* %X0, align 4, !tbaa !19
  %42 = load i32, i32* %X0, align 4, !tbaa !19
  %43 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds float, float* %43, i64 0
  %44 = load float, float* %arrayidx17, align 4, !tbaa !22
  %conv18 = fpext float %44 to double
  %cmp = fcmp oge double %conv18, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta20 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %opta20, i32 0, i64 1
  %46 = load i32, i32* %arrayidx21, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %46, %cond.false ]
  %add = add i32 %42, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !19
  %47 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta22 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %47, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %opta22, i32 0, i64 0
  %48 = load i32, i32* %arrayidx23, align 4, !tbaa !19
  %49 = load i32, i32* %y0, align 4, !tbaa !19
  %mul24 = mul i32 %48, %49
  store i32 %mul24, i32* %Y0, align 4, !tbaa !19
  %50 = load i32, i32* %Y0, align 4, !tbaa !19
  %51 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds float, float* %51, i64 1
  %52 = load float, float* %arrayidx25, align 4, !tbaa !22
  %conv26 = fpext float %52 to double
  %cmp27 = fcmp oge double %conv26, 1.000000e+00
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.end
  %53 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta31 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %53, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %opta31, i32 0, i64 0
  %54 = load i32, i32* %arrayidx32, align 4, !tbaa !19
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.29
  %cond34 = phi i32 [ 0, %cond.true.29 ], [ %54, %cond.false.30 ]
  %add35 = add i32 %50, %cond34
  store i32 %add35, i32* %Y1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.33
  %55 = load i32, i32* %OutChan, align 4, !tbaa !19
  %56 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %cmp36 = icmp slt i32 %55, %56
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %X0, align 4, !tbaa !19
  %58 = load i32, i32* %Y0, align 4, !tbaa !19
  %add38 = add nsw i32 %57, %58
  %59 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add39 = add nsw i32 %add38, %59
  %idxprom = sext i32 %add39 to i64
  %60 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds float, float* %60, i64 %idxprom
  %61 = load float, float* %arrayidx40, align 4, !tbaa !22
  store float %61, float* %d00, align 4, !tbaa !22
  %62 = load i32, i32* %X0, align 4, !tbaa !19
  %63 = load i32, i32* %Y1, align 4, !tbaa !19
  %add41 = add nsw i32 %62, %63
  %64 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add42 = add nsw i32 %add41, %64
  %idxprom43 = sext i32 %add42 to i64
  %65 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %65, i64 %idxprom43
  %66 = load float, float* %arrayidx44, align 4, !tbaa !22
  store float %66, float* %d01, align 4, !tbaa !22
  %67 = load i32, i32* %X1, align 4, !tbaa !19
  %68 = load i32, i32* %Y0, align 4, !tbaa !19
  %add45 = add nsw i32 %67, %68
  %69 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add46 = add nsw i32 %add45, %69
  %idxprom47 = sext i32 %add46 to i64
  %70 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds float, float* %70, i64 %idxprom47
  %71 = load float, float* %arrayidx48, align 4, !tbaa !22
  store float %71, float* %d10, align 4, !tbaa !22
  %72 = load i32, i32* %X1, align 4, !tbaa !19
  %73 = load i32, i32* %Y1, align 4, !tbaa !19
  %add49 = add nsw i32 %72, %73
  %74 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add50 = add nsw i32 %add49, %74
  %idxprom51 = sext i32 %add50 to i64
  %75 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds float, float* %75, i64 %idxprom51
  %76 = load float, float* %arrayidx52, align 4, !tbaa !22
  store float %76, float* %d11, align 4, !tbaa !22
  %77 = load float, float* %d00, align 4, !tbaa !22
  %78 = load float, float* %d10, align 4, !tbaa !22
  %79 = load float, float* %d00, align 4, !tbaa !22
  %sub53 = fsub float %78, %79
  %80 = load float, float* %fx, align 4, !tbaa !22
  %mul54 = fmul float %sub53, %80
  %add55 = fadd float %77, %mul54
  store float %add55, float* %dx0, align 4, !tbaa !22
  %81 = load float, float* %d01, align 4, !tbaa !22
  %82 = load float, float* %d11, align 4, !tbaa !22
  %83 = load float, float* %d01, align 4, !tbaa !22
  %sub56 = fsub float %82, %83
  %84 = load float, float* %fx, align 4, !tbaa !22
  %mul57 = fmul float %sub56, %84
  %add58 = fadd float %81, %mul57
  store float %add58, float* %dx1, align 4, !tbaa !22
  %85 = load float, float* %dx0, align 4, !tbaa !22
  %86 = load float, float* %dx1, align 4, !tbaa !22
  %87 = load float, float* %dx0, align 4, !tbaa !22
  %sub59 = fsub float %86, %87
  %88 = load float, float* %fy, align 4, !tbaa !22
  %mul60 = fmul float %sub59, %88
  %add61 = fadd float %85, %mul60
  store float %add61, float* %dxy, align 4, !tbaa !22
  %89 = load float, float* %dxy, align 4, !tbaa !22
  %90 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom62 = sext i32 %90 to i64
  %91 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds float, float* %91, i64 %idxprom62
  store float %89, float* %arrayidx63, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %92 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %93 = bitcast float* %dxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast float* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast float* %dx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast float* %d11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast float* %d10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast float* %d01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast float* %d00 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast float* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast float* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast float* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast float* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BilinearInterp16(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %OutChan = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %d00 = alloca i32, align 4
  %d01 = alloca i32, align 4
  %d10 = alloca i32, align 4
  %d11 = alloca i32, align 4
  %dx0 = alloca i32, align 4
  %dx1 = alloca i32, align 4
  %dxy = alloca i32, align 4
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %d00 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %d01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %d10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %d11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %dx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %dxy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 3
  %24 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %24, i32* %TotalOut, align 4, !tbaa !19
  %25 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %25, i64 0
  %26 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %26 to i32
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %28 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %28
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fx, align 4, !tbaa !19
  %29 = load i32, i32* %fx, align 4, !tbaa !19
  %shr = ashr i32 %29, 16
  store i32 %shr, i32* %x0, align 4, !tbaa !19
  %30 = load i32, i32* %fx, align 4, !tbaa !19
  %and = and i32 %30, 65535
  store i32 %and, i32* %rx, align 4, !tbaa !19
  %31 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %31, i64 1
  %32 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = zext i16 %32 to i32
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %34 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %mul6 = mul i32 %conv3, %34
  %call7 = call i32 @_cmsToFixedDomain(i32 %mul6) #8
  store i32 %call7, i32* %fy, align 4, !tbaa !19
  %35 = load i32, i32* %fy, align 4, !tbaa !19
  %shr8 = ashr i32 %35, 16
  store i32 %shr8, i32* %y0, align 4, !tbaa !19
  %36 = load i32, i32* %fy, align 4, !tbaa !19
  %and9 = and i32 %36, 65535
  store i32 %and9, i32* %ry, align 4, !tbaa !19
  %37 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %37, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 1
  %38 = load i32, i32* %arrayidx10, align 4, !tbaa !19
  %39 = load i32, i32* %x0, align 4, !tbaa !19
  %mul11 = mul i32 %38, %39
  store i32 %mul11, i32* %X0, align 4, !tbaa !19
  %40 = load i32, i32* %X0, align 4, !tbaa !19
  %41 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %41, i64 0
  %42 = load i16, i16* %arrayidx12, align 2, !tbaa !24
  %conv13 = zext i16 %42 to i32
  %cmp = icmp eq i32 %conv13, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %43 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %43, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %opta15, i32 0, i64 1
  %44 = load i32, i32* %arrayidx16, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %44, %cond.false ]
  %add = add i32 %40, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %opta17, i32 0, i64 0
  %46 = load i32, i32* %arrayidx18, align 4, !tbaa !19
  %47 = load i32, i32* %y0, align 4, !tbaa !19
  %mul19 = mul i32 %46, %47
  store i32 %mul19, i32* %Y0, align 4, !tbaa !19
  %48 = load i32, i32* %Y0, align 4, !tbaa !19
  %49 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %49, i64 1
  %50 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = zext i16 %50 to i32
  %cmp22 = icmp eq i32 %conv21, 65535
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.end
  br label %cond.end.28

cond.false.25:                                    ; preds = %cond.end
  %51 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta26 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %51, i32 0, i32 6
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %opta26, i32 0, i64 0
  %52 = load i32, i32* %arrayidx27, align 4, !tbaa !19
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.25, %cond.true.24
  %cond29 = phi i32 [ 0, %cond.true.24 ], [ %52, %cond.false.25 ]
  %add30 = add i32 %48, %cond29
  store i32 %add30, i32* %Y1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.28
  %53 = load i32, i32* %OutChan, align 4, !tbaa !19
  %54 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %cmp31 = icmp slt i32 %53, %54
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %X0, align 4, !tbaa !19
  %56 = load i32, i32* %Y0, align 4, !tbaa !19
  %add33 = add nsw i32 %55, %56
  %57 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add34 = add nsw i32 %add33, %57
  %idxprom = sext i32 %add34 to i64
  %58 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %58, i64 %idxprom
  %59 = load i16, i16* %arrayidx35, align 2, !tbaa !24
  %conv36 = zext i16 %59 to i32
  store i32 %conv36, i32* %d00, align 4, !tbaa !19
  %60 = load i32, i32* %X0, align 4, !tbaa !19
  %61 = load i32, i32* %Y1, align 4, !tbaa !19
  %add37 = add nsw i32 %60, %61
  %62 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add38 = add nsw i32 %add37, %62
  %idxprom39 = sext i32 %add38 to i64
  %63 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %63, i64 %idxprom39
  %64 = load i16, i16* %arrayidx40, align 2, !tbaa !24
  %conv41 = zext i16 %64 to i32
  store i32 %conv41, i32* %d01, align 4, !tbaa !19
  %65 = load i32, i32* %X1, align 4, !tbaa !19
  %66 = load i32, i32* %Y0, align 4, !tbaa !19
  %add42 = add nsw i32 %65, %66
  %67 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add43 = add nsw i32 %add42, %67
  %idxprom44 = sext i32 %add43 to i64
  %68 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %68, i64 %idxprom44
  %69 = load i16, i16* %arrayidx45, align 2, !tbaa !24
  %conv46 = zext i16 %69 to i32
  store i32 %conv46, i32* %d10, align 4, !tbaa !19
  %70 = load i32, i32* %X1, align 4, !tbaa !19
  %71 = load i32, i32* %Y1, align 4, !tbaa !19
  %add47 = add nsw i32 %70, %71
  %72 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add48 = add nsw i32 %add47, %72
  %idxprom49 = sext i32 %add48 to i64
  %73 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %73, i64 %idxprom49
  %74 = load i16, i16* %arrayidx50, align 2, !tbaa !24
  %conv51 = zext i16 %74 to i32
  store i32 %conv51, i32* %d11, align 4, !tbaa !19
  %75 = load i32, i32* %d00, align 4, !tbaa !19
  %76 = load i32, i32* %d10, align 4, !tbaa !19
  %77 = load i32, i32* %d00, align 4, !tbaa !19
  %sub = sub nsw i32 %76, %77
  %78 = load i32, i32* %rx, align 4, !tbaa !19
  %mul52 = mul nsw i32 %sub, %78
  %add53 = add nsw i32 %mul52, 32768
  %shr54 = ashr i32 %add53, 16
  %add55 = add nsw i32 %75, %shr54
  %conv56 = trunc i32 %add55 to i16
  %conv57 = zext i16 %conv56 to i32
  store i32 %conv57, i32* %dx0, align 4, !tbaa !19
  %79 = load i32, i32* %d01, align 4, !tbaa !19
  %80 = load i32, i32* %d11, align 4, !tbaa !19
  %81 = load i32, i32* %d01, align 4, !tbaa !19
  %sub58 = sub nsw i32 %80, %81
  %82 = load i32, i32* %rx, align 4, !tbaa !19
  %mul59 = mul nsw i32 %sub58, %82
  %add60 = add nsw i32 %mul59, 32768
  %shr61 = ashr i32 %add60, 16
  %add62 = add nsw i32 %79, %shr61
  %conv63 = trunc i32 %add62 to i16
  %conv64 = zext i16 %conv63 to i32
  store i32 %conv64, i32* %dx1, align 4, !tbaa !19
  %83 = load i32, i32* %dx0, align 4, !tbaa !19
  %84 = load i32, i32* %dx1, align 4, !tbaa !19
  %85 = load i32, i32* %dx0, align 4, !tbaa !19
  %sub65 = sub nsw i32 %84, %85
  %86 = load i32, i32* %ry, align 4, !tbaa !19
  %mul66 = mul nsw i32 %sub65, %86
  %add67 = add nsw i32 %mul66, 32768
  %shr68 = ashr i32 %add67, 16
  %add69 = add nsw i32 %83, %shr68
  %conv70 = trunc i32 %add69 to i16
  %conv71 = zext i16 %conv70 to i32
  store i32 %conv71, i32* %dxy, align 4, !tbaa !19
  %87 = load i32, i32* %dxy, align 4, !tbaa !19
  %conv72 = trunc i32 %87 to i16
  %88 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom73 = sext i32 %88 to i64
  %89 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i16, i16* %89, i64 %idxprom73
  store i16 %conv72, i16* %arrayidx74, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %91 = bitcast i32* %dxy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %dx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %d11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %d10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %d01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %d00 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TrilinearInterpFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %px = alloca float, align 4
  %py = alloca float, align 4
  %pz = alloca float, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %fx = alloca float, align 4
  %fy = alloca float, align 4
  %fz = alloca float, align 4
  %d000 = alloca float, align 4
  %d001 = alloca float, align 4
  %d010 = alloca float, align 4
  %d011 = alloca float, align 4
  %d100 = alloca float, align 4
  %d101 = alloca float, align 4
  %d110 = alloca float, align 4
  %d111 = alloca float, align 4
  %dx00 = alloca float, align 4
  %dx01 = alloca float, align 4
  %dx10 = alloca float, align 4
  %dx11 = alloca float, align 4
  %dxy0 = alloca float, align 4
  %dxy1 = alloca float, align 4
  %dxyz = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %pz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast float* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast float* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast float* %fz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast float* %d000 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast float* %d001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast float* %d010 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast float* %d011 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast float* %d100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast float* %d101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast float* %d110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast float* %d111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast float* %dx00 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast float* %dx01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast float* %dx10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast float* %dx11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast float* %dxy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast float* %dxy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast float* %dxyz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 3
  %37 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %37, i32* %TotalOut, align 4, !tbaa !19
  %38 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %38, i64 0
  %39 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %39) #8
  %40 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %40, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %41 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %41 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %px, align 4, !tbaa !22
  %42 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %42, i64 1
  %43 = load float, float* %arrayidx2, align 4, !tbaa !22
  %call3 = call float @fclamp(float %43) #8
  %44 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %44, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %45 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %conv6 = uitofp i32 %45 to float
  %mul7 = fmul float %call3, %conv6
  store float %mul7, float* %py, align 4, !tbaa !22
  %46 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %46, i64 2
  %47 = load float, float* %arrayidx8, align 4, !tbaa !22
  %call9 = call float @fclamp(float %47) #8
  %48 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %48, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 2
  %49 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  %conv12 = uitofp i32 %49 to float
  %mul13 = fmul float %call9, %conv12
  store float %mul13, float* %pz, align 4, !tbaa !22
  %50 = load float, float* %px, align 4, !tbaa !22
  %conv14 = fpext float %50 to double
  %call15 = call i32 @_cmsQuickFloor(double %conv14) #8
  store i32 %call15, i32* %x0, align 4, !tbaa !19
  %51 = load float, float* %px, align 4, !tbaa !22
  %52 = load i32, i32* %x0, align 4, !tbaa !19
  %conv16 = sitofp i32 %52 to float
  %sub = fsub float %51, %conv16
  store float %sub, float* %fx, align 4, !tbaa !22
  %53 = load float, float* %py, align 4, !tbaa !22
  %conv17 = fpext float %53 to double
  %call18 = call i32 @_cmsQuickFloor(double %conv17) #8
  store i32 %call18, i32* %y0, align 4, !tbaa !19
  %54 = load float, float* %py, align 4, !tbaa !22
  %55 = load i32, i32* %y0, align 4, !tbaa !19
  %conv19 = sitofp i32 %55 to float
  %sub20 = fsub float %54, %conv19
  store float %sub20, float* %fy, align 4, !tbaa !22
  %56 = load float, float* %pz, align 4, !tbaa !22
  %conv21 = fpext float %56 to double
  %call22 = call i32 @_cmsQuickFloor(double %conv21) #8
  store i32 %call22, i32* %z0, align 4, !tbaa !19
  %57 = load float, float* %pz, align 4, !tbaa !22
  %58 = load i32, i32* %z0, align 4, !tbaa !19
  %conv23 = sitofp i32 %58 to float
  %sub24 = fsub float %57, %conv23
  store float %sub24, float* %fz, align 4, !tbaa !22
  %59 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %59, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %60 = load i32, i32* %arrayidx25, align 4, !tbaa !19
  %61 = load i32, i32* %x0, align 4, !tbaa !19
  %mul26 = mul i32 %60, %61
  store i32 %mul26, i32* %X0, align 4, !tbaa !19
  %62 = load i32, i32* %X0, align 4, !tbaa !19
  %63 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %63, i64 0
  %64 = load float, float* %arrayidx27, align 4, !tbaa !22
  %conv28 = fpext float %64 to double
  %cmp = fcmp oge double %conv28, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %65 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta30 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %65, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %opta30, i32 0, i64 2
  %66 = load i32, i32* %arrayidx31, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %66, %cond.false ]
  %add = add i32 %62, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !19
  %67 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta32 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %67, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %opta32, i32 0, i64 1
  %68 = load i32, i32* %arrayidx33, align 4, !tbaa !19
  %69 = load i32, i32* %y0, align 4, !tbaa !19
  %mul34 = mul i32 %68, %69
  store i32 %mul34, i32* %Y0, align 4, !tbaa !19
  %70 = load i32, i32* %Y0, align 4, !tbaa !19
  %71 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float, float* %71, i64 1
  %72 = load float, float* %arrayidx35, align 4, !tbaa !22
  %conv36 = fpext float %72 to double
  %cmp37 = fcmp oge double %conv36, 1.000000e+00
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.end
  %73 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta41 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %73, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %opta41, i32 0, i64 1
  %74 = load i32, i32* %arrayidx42, align 4, !tbaa !19
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi i32 [ 0, %cond.true.39 ], [ %74, %cond.false.40 ]
  %add45 = add i32 %70, %cond44
  store i32 %add45, i32* %Y1, align 4, !tbaa !19
  %75 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta46 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %75, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %opta46, i32 0, i64 0
  %76 = load i32, i32* %arrayidx47, align 4, !tbaa !19
  %77 = load i32, i32* %z0, align 4, !tbaa !19
  %mul48 = mul i32 %76, %77
  store i32 %mul48, i32* %Z0, align 4, !tbaa !19
  %78 = load i32, i32* %Z0, align 4, !tbaa !19
  %79 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %79, i64 2
  %80 = load float, float* %arrayidx49, align 4, !tbaa !22
  %conv50 = fpext float %80 to double
  %cmp51 = fcmp oge double %conv50, 1.000000e+00
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.43
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.end.43
  %81 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta55 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %81, i32 0, i32 6
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %opta55, i32 0, i64 0
  %82 = load i32, i32* %arrayidx56, align 4, !tbaa !19
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 0, %cond.true.53 ], [ %82, %cond.false.54 ]
  %add59 = add i32 %78, %cond58
  store i32 %add59, i32* %Z1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.57
  %83 = load i32, i32* %OutChan, align 4, !tbaa !19
  %84 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %cmp60 = icmp slt i32 %83, %84
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %85 = load i32, i32* %X0, align 4, !tbaa !19
  %86 = load i32, i32* %Y0, align 4, !tbaa !19
  %add62 = add nsw i32 %85, %86
  %87 = load i32, i32* %Z0, align 4, !tbaa !19
  %add63 = add nsw i32 %add62, %87
  %88 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add64 = add nsw i32 %add63, %88
  %idxprom = sext i32 %add64 to i64
  %89 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds float, float* %89, i64 %idxprom
  %90 = load float, float* %arrayidx65, align 4, !tbaa !22
  store float %90, float* %d000, align 4, !tbaa !22
  %91 = load i32, i32* %X0, align 4, !tbaa !19
  %92 = load i32, i32* %Y0, align 4, !tbaa !19
  %add66 = add nsw i32 %91, %92
  %93 = load i32, i32* %Z1, align 4, !tbaa !19
  %add67 = add nsw i32 %add66, %93
  %94 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add68 = add nsw i32 %add67, %94
  %idxprom69 = sext i32 %add68 to i64
  %95 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds float, float* %95, i64 %idxprom69
  %96 = load float, float* %arrayidx70, align 4, !tbaa !22
  store float %96, float* %d001, align 4, !tbaa !22
  %97 = load i32, i32* %X0, align 4, !tbaa !19
  %98 = load i32, i32* %Y1, align 4, !tbaa !19
  %add71 = add nsw i32 %97, %98
  %99 = load i32, i32* %Z0, align 4, !tbaa !19
  %add72 = add nsw i32 %add71, %99
  %100 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add73 = add nsw i32 %add72, %100
  %idxprom74 = sext i32 %add73 to i64
  %101 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds float, float* %101, i64 %idxprom74
  %102 = load float, float* %arrayidx75, align 4, !tbaa !22
  store float %102, float* %d010, align 4, !tbaa !22
  %103 = load i32, i32* %X0, align 4, !tbaa !19
  %104 = load i32, i32* %Y1, align 4, !tbaa !19
  %add76 = add nsw i32 %103, %104
  %105 = load i32, i32* %Z1, align 4, !tbaa !19
  %add77 = add nsw i32 %add76, %105
  %106 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add78 = add nsw i32 %add77, %106
  %idxprom79 = sext i32 %add78 to i64
  %107 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds float, float* %107, i64 %idxprom79
  %108 = load float, float* %arrayidx80, align 4, !tbaa !22
  store float %108, float* %d011, align 4, !tbaa !22
  %109 = load i32, i32* %X1, align 4, !tbaa !19
  %110 = load i32, i32* %Y0, align 4, !tbaa !19
  %add81 = add nsw i32 %109, %110
  %111 = load i32, i32* %Z0, align 4, !tbaa !19
  %add82 = add nsw i32 %add81, %111
  %112 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add83 = add nsw i32 %add82, %112
  %idxprom84 = sext i32 %add83 to i64
  %113 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds float, float* %113, i64 %idxprom84
  %114 = load float, float* %arrayidx85, align 4, !tbaa !22
  store float %114, float* %d100, align 4, !tbaa !22
  %115 = load i32, i32* %X1, align 4, !tbaa !19
  %116 = load i32, i32* %Y0, align 4, !tbaa !19
  %add86 = add nsw i32 %115, %116
  %117 = load i32, i32* %Z1, align 4, !tbaa !19
  %add87 = add nsw i32 %add86, %117
  %118 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add88 = add nsw i32 %add87, %118
  %idxprom89 = sext i32 %add88 to i64
  %119 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds float, float* %119, i64 %idxprom89
  %120 = load float, float* %arrayidx90, align 4, !tbaa !22
  store float %120, float* %d101, align 4, !tbaa !22
  %121 = load i32, i32* %X1, align 4, !tbaa !19
  %122 = load i32, i32* %Y1, align 4, !tbaa !19
  %add91 = add nsw i32 %121, %122
  %123 = load i32, i32* %Z0, align 4, !tbaa !19
  %add92 = add nsw i32 %add91, %123
  %124 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add93 = add nsw i32 %add92, %124
  %idxprom94 = sext i32 %add93 to i64
  %125 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds float, float* %125, i64 %idxprom94
  %126 = load float, float* %arrayidx95, align 4, !tbaa !22
  store float %126, float* %d110, align 4, !tbaa !22
  %127 = load i32, i32* %X1, align 4, !tbaa !19
  %128 = load i32, i32* %Y1, align 4, !tbaa !19
  %add96 = add nsw i32 %127, %128
  %129 = load i32, i32* %Z1, align 4, !tbaa !19
  %add97 = add nsw i32 %add96, %129
  %130 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add98 = add nsw i32 %add97, %130
  %idxprom99 = sext i32 %add98 to i64
  %131 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds float, float* %131, i64 %idxprom99
  %132 = load float, float* %arrayidx100, align 4, !tbaa !22
  store float %132, float* %d111, align 4, !tbaa !22
  %133 = load float, float* %d000, align 4, !tbaa !22
  %134 = load float, float* %d100, align 4, !tbaa !22
  %135 = load float, float* %d000, align 4, !tbaa !22
  %sub101 = fsub float %134, %135
  %136 = load float, float* %fx, align 4, !tbaa !22
  %mul102 = fmul float %sub101, %136
  %add103 = fadd float %133, %mul102
  store float %add103, float* %dx00, align 4, !tbaa !22
  %137 = load float, float* %d001, align 4, !tbaa !22
  %138 = load float, float* %d101, align 4, !tbaa !22
  %139 = load float, float* %d001, align 4, !tbaa !22
  %sub104 = fsub float %138, %139
  %140 = load float, float* %fx, align 4, !tbaa !22
  %mul105 = fmul float %sub104, %140
  %add106 = fadd float %137, %mul105
  store float %add106, float* %dx01, align 4, !tbaa !22
  %141 = load float, float* %d010, align 4, !tbaa !22
  %142 = load float, float* %d110, align 4, !tbaa !22
  %143 = load float, float* %d010, align 4, !tbaa !22
  %sub107 = fsub float %142, %143
  %144 = load float, float* %fx, align 4, !tbaa !22
  %mul108 = fmul float %sub107, %144
  %add109 = fadd float %141, %mul108
  store float %add109, float* %dx10, align 4, !tbaa !22
  %145 = load float, float* %d011, align 4, !tbaa !22
  %146 = load float, float* %d111, align 4, !tbaa !22
  %147 = load float, float* %d011, align 4, !tbaa !22
  %sub110 = fsub float %146, %147
  %148 = load float, float* %fx, align 4, !tbaa !22
  %mul111 = fmul float %sub110, %148
  %add112 = fadd float %145, %mul111
  store float %add112, float* %dx11, align 4, !tbaa !22
  %149 = load float, float* %dx00, align 4, !tbaa !22
  %150 = load float, float* %dx10, align 4, !tbaa !22
  %151 = load float, float* %dx00, align 4, !tbaa !22
  %sub113 = fsub float %150, %151
  %152 = load float, float* %fy, align 4, !tbaa !22
  %mul114 = fmul float %sub113, %152
  %add115 = fadd float %149, %mul114
  store float %add115, float* %dxy0, align 4, !tbaa !22
  %153 = load float, float* %dx01, align 4, !tbaa !22
  %154 = load float, float* %dx11, align 4, !tbaa !22
  %155 = load float, float* %dx01, align 4, !tbaa !22
  %sub116 = fsub float %154, %155
  %156 = load float, float* %fy, align 4, !tbaa !22
  %mul117 = fmul float %sub116, %156
  %add118 = fadd float %153, %mul117
  store float %add118, float* %dxy1, align 4, !tbaa !22
  %157 = load float, float* %dxy0, align 4, !tbaa !22
  %158 = load float, float* %dxy1, align 4, !tbaa !22
  %159 = load float, float* %dxy0, align 4, !tbaa !22
  %sub119 = fsub float %158, %159
  %160 = load float, float* %fz, align 4, !tbaa !22
  %mul120 = fmul float %sub119, %160
  %add121 = fadd float %157, %mul120
  store float %add121, float* %dxyz, align 4, !tbaa !22
  %161 = load float, float* %dxyz, align 4, !tbaa !22
  %162 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom122 = sext i32 %162 to i64
  %163 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds float, float* %163, i64 %idxprom122
  store float %161, float* %arrayidx123, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %164 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %165 = bitcast float* %dxyz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast float* %dxy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast float* %dxy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast float* %dx11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast float* %dx10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast float* %dx01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast float* %dx00 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast float* %d111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast float* %d110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast float* %d101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast float* %d100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast float* %d011 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast float* %d010 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast float* %d001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast float* %d000 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast float* %fz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast float* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast float* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast float* %pz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast float* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast float* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TrilinearInterp16(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %OutChan = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %fz = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rz = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %d000 = alloca i32, align 4
  %d001 = alloca i32, align 4
  %d010 = alloca i32, align 4
  %d011 = alloca i32, align 4
  %d100 = alloca i32, align 4
  %d101 = alloca i32, align 4
  %d110 = alloca i32, align 4
  %d111 = alloca i32, align 4
  %dx00 = alloca i32, align 4
  %dx01 = alloca i32, align 4
  %dx10 = alloca i32, align 4
  %dx11 = alloca i32, align 4
  %dxy0 = alloca i32, align 4
  %dxy1 = alloca i32, align 4
  %dxyz = alloca i32, align 4
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %d000 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %d001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %d010 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %d011 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %d100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %d101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %d110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %d111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %dx00 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %dx01 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %dx10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %dx11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %dxy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %dxy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %dxyz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 3
  %37 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %37, i32* %TotalOut, align 4, !tbaa !19
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %38, i64 0
  %39 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %39 to i32
  %40 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %40, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %41 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %41
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fx, align 4, !tbaa !19
  %42 = load i32, i32* %fx, align 4, !tbaa !19
  %shr = ashr i32 %42, 16
  store i32 %shr, i32* %x0, align 4, !tbaa !19
  %43 = load i32, i32* %fx, align 4, !tbaa !19
  %and = and i32 %43, 65535
  store i32 %and, i32* %rx, align 4, !tbaa !19
  %44 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %44, i64 1
  %45 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = zext i16 %45 to i32
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %47 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %mul6 = mul i32 %conv3, %47
  %call7 = call i32 @_cmsToFixedDomain(i32 %mul6) #8
  store i32 %call7, i32* %fy, align 4, !tbaa !19
  %48 = load i32, i32* %fy, align 4, !tbaa !19
  %shr8 = ashr i32 %48, 16
  store i32 %shr8, i32* %y0, align 4, !tbaa !19
  %49 = load i32, i32* %fy, align 4, !tbaa !19
  %and9 = and i32 %49, 65535
  store i32 %and9, i32* %ry, align 4, !tbaa !19
  %50 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %50, i64 2
  %51 = load i16, i16* %arrayidx10, align 2, !tbaa !24
  %conv11 = zext i16 %51 to i32
  %52 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %52, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 2
  %53 = load i32, i32* %arrayidx13, align 4, !tbaa !19
  %mul14 = mul i32 %conv11, %53
  %call15 = call i32 @_cmsToFixedDomain(i32 %mul14) #8
  store i32 %call15, i32* %fz, align 4, !tbaa !19
  %54 = load i32, i32* %fz, align 4, !tbaa !19
  %shr16 = ashr i32 %54, 16
  store i32 %shr16, i32* %z0, align 4, !tbaa !19
  %55 = load i32, i32* %fz, align 4, !tbaa !19
  %and17 = and i32 %55, 65535
  store i32 %and17, i32* %rz, align 4, !tbaa !19
  %56 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %56, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %57 = load i32, i32* %arrayidx18, align 4, !tbaa !19
  %58 = load i32, i32* %x0, align 4, !tbaa !19
  %mul19 = mul i32 %57, %58
  store i32 %mul19, i32* %X0, align 4, !tbaa !19
  %59 = load i32, i32* %X0, align 4, !tbaa !19
  %60 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %60, i64 0
  %61 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = zext i16 %61 to i32
  %cmp = icmp eq i32 %conv21, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %62 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta23 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %62, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %opta23, i32 0, i64 2
  %63 = load i32, i32* %arrayidx24, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %63, %cond.false ]
  %add = add i32 %59, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !19
  %64 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta25 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %64, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %opta25, i32 0, i64 1
  %65 = load i32, i32* %arrayidx26, align 4, !tbaa !19
  %66 = load i32, i32* %y0, align 4, !tbaa !19
  %mul27 = mul i32 %65, %66
  store i32 %mul27, i32* %Y0, align 4, !tbaa !19
  %67 = load i32, i32* %Y0, align 4, !tbaa !19
  %68 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %68, i64 1
  %69 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %conv29 = zext i16 %69 to i32
  %cmp30 = icmp eq i32 %conv29, 65535
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end
  br label %cond.end.36

cond.false.33:                                    ; preds = %cond.end
  %70 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta34 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %70, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %opta34, i32 0, i64 1
  %71 = load i32, i32* %arrayidx35, align 4, !tbaa !19
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.32
  %cond37 = phi i32 [ 0, %cond.true.32 ], [ %71, %cond.false.33 ]
  %add38 = add i32 %67, %cond37
  store i32 %add38, i32* %Y1, align 4, !tbaa !19
  %72 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta39 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %72, i32 0, i32 6
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* %opta39, i32 0, i64 0
  %73 = load i32, i32* %arrayidx40, align 4, !tbaa !19
  %74 = load i32, i32* %z0, align 4, !tbaa !19
  %mul41 = mul i32 %73, %74
  store i32 %mul41, i32* %Z0, align 4, !tbaa !19
  %75 = load i32, i32* %Z0, align 4, !tbaa !19
  %76 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i16, i16* %76, i64 2
  %77 = load i16, i16* %arrayidx42, align 2, !tbaa !24
  %conv43 = zext i16 %77 to i32
  %cmp44 = icmp eq i32 %conv43, 65535
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end.36
  br label %cond.end.50

cond.false.47:                                    ; preds = %cond.end.36
  %78 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta48 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %78, i32 0, i32 6
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %opta48, i32 0, i64 0
  %79 = load i32, i32* %arrayidx49, align 4, !tbaa !19
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.46
  %cond51 = phi i32 [ 0, %cond.true.46 ], [ %79, %cond.false.47 ]
  %add52 = add i32 %75, %cond51
  store i32 %add52, i32* %Z1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.50
  %80 = load i32, i32* %OutChan, align 4, !tbaa !19
  %81 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %cmp53 = icmp slt i32 %80, %81
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %82 = load i32, i32* %X0, align 4, !tbaa !19
  %83 = load i32, i32* %Y0, align 4, !tbaa !19
  %add55 = add nsw i32 %82, %83
  %84 = load i32, i32* %Z0, align 4, !tbaa !19
  %add56 = add nsw i32 %add55, %84
  %85 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add57 = add nsw i32 %add56, %85
  %idxprom = sext i32 %add57 to i64
  %86 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i16, i16* %86, i64 %idxprom
  %87 = load i16, i16* %arrayidx58, align 2, !tbaa !24
  %conv59 = zext i16 %87 to i32
  store i32 %conv59, i32* %d000, align 4, !tbaa !19
  %88 = load i32, i32* %X0, align 4, !tbaa !19
  %89 = load i32, i32* %Y0, align 4, !tbaa !19
  %add60 = add nsw i32 %88, %89
  %90 = load i32, i32* %Z1, align 4, !tbaa !19
  %add61 = add nsw i32 %add60, %90
  %91 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add62 = add nsw i32 %add61, %91
  %idxprom63 = sext i32 %add62 to i64
  %92 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %92, i64 %idxprom63
  %93 = load i16, i16* %arrayidx64, align 2, !tbaa !24
  %conv65 = zext i16 %93 to i32
  store i32 %conv65, i32* %d001, align 4, !tbaa !19
  %94 = load i32, i32* %X0, align 4, !tbaa !19
  %95 = load i32, i32* %Y1, align 4, !tbaa !19
  %add66 = add nsw i32 %94, %95
  %96 = load i32, i32* %Z0, align 4, !tbaa !19
  %add67 = add nsw i32 %add66, %96
  %97 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add68 = add nsw i32 %add67, %97
  %idxprom69 = sext i32 %add68 to i64
  %98 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i16, i16* %98, i64 %idxprom69
  %99 = load i16, i16* %arrayidx70, align 2, !tbaa !24
  %conv71 = zext i16 %99 to i32
  store i32 %conv71, i32* %d010, align 4, !tbaa !19
  %100 = load i32, i32* %X0, align 4, !tbaa !19
  %101 = load i32, i32* %Y1, align 4, !tbaa !19
  %add72 = add nsw i32 %100, %101
  %102 = load i32, i32* %Z1, align 4, !tbaa !19
  %add73 = add nsw i32 %add72, %102
  %103 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add74 = add nsw i32 %add73, %103
  %idxprom75 = sext i32 %add74 to i64
  %104 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i16, i16* %104, i64 %idxprom75
  %105 = load i16, i16* %arrayidx76, align 2, !tbaa !24
  %conv77 = zext i16 %105 to i32
  store i32 %conv77, i32* %d011, align 4, !tbaa !19
  %106 = load i32, i32* %X1, align 4, !tbaa !19
  %107 = load i32, i32* %Y0, align 4, !tbaa !19
  %add78 = add nsw i32 %106, %107
  %108 = load i32, i32* %Z0, align 4, !tbaa !19
  %add79 = add nsw i32 %add78, %108
  %109 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add80 = add nsw i32 %add79, %109
  %idxprom81 = sext i32 %add80 to i64
  %110 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %110, i64 %idxprom81
  %111 = load i16, i16* %arrayidx82, align 2, !tbaa !24
  %conv83 = zext i16 %111 to i32
  store i32 %conv83, i32* %d100, align 4, !tbaa !19
  %112 = load i32, i32* %X1, align 4, !tbaa !19
  %113 = load i32, i32* %Y0, align 4, !tbaa !19
  %add84 = add nsw i32 %112, %113
  %114 = load i32, i32* %Z1, align 4, !tbaa !19
  %add85 = add nsw i32 %add84, %114
  %115 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add86 = add nsw i32 %add85, %115
  %idxprom87 = sext i32 %add86 to i64
  %116 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i16, i16* %116, i64 %idxprom87
  %117 = load i16, i16* %arrayidx88, align 2, !tbaa !24
  %conv89 = zext i16 %117 to i32
  store i32 %conv89, i32* %d101, align 4, !tbaa !19
  %118 = load i32, i32* %X1, align 4, !tbaa !19
  %119 = load i32, i32* %Y1, align 4, !tbaa !19
  %add90 = add nsw i32 %118, %119
  %120 = load i32, i32* %Z0, align 4, !tbaa !19
  %add91 = add nsw i32 %add90, %120
  %121 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add92 = add nsw i32 %add91, %121
  %idxprom93 = sext i32 %add92 to i64
  %122 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i16, i16* %122, i64 %idxprom93
  %123 = load i16, i16* %arrayidx94, align 2, !tbaa !24
  %conv95 = zext i16 %123 to i32
  store i32 %conv95, i32* %d110, align 4, !tbaa !19
  %124 = load i32, i32* %X1, align 4, !tbaa !19
  %125 = load i32, i32* %Y1, align 4, !tbaa !19
  %add96 = add nsw i32 %124, %125
  %126 = load i32, i32* %Z1, align 4, !tbaa !19
  %add97 = add nsw i32 %add96, %126
  %127 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add98 = add nsw i32 %add97, %127
  %idxprom99 = sext i32 %add98 to i64
  %128 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i16, i16* %128, i64 %idxprom99
  %129 = load i16, i16* %arrayidx100, align 2, !tbaa !24
  %conv101 = zext i16 %129 to i32
  store i32 %conv101, i32* %d111, align 4, !tbaa !19
  %130 = load i32, i32* %d000, align 4, !tbaa !19
  %131 = load i32, i32* %d100, align 4, !tbaa !19
  %132 = load i32, i32* %d000, align 4, !tbaa !19
  %sub = sub nsw i32 %131, %132
  %133 = load i32, i32* %rx, align 4, !tbaa !19
  %mul102 = mul nsw i32 %sub, %133
  %add103 = add nsw i32 %mul102, 32768
  %shr104 = ashr i32 %add103, 16
  %add105 = add nsw i32 %130, %shr104
  %conv106 = trunc i32 %add105 to i16
  %conv107 = zext i16 %conv106 to i32
  store i32 %conv107, i32* %dx00, align 4, !tbaa !19
  %134 = load i32, i32* %d001, align 4, !tbaa !19
  %135 = load i32, i32* %d101, align 4, !tbaa !19
  %136 = load i32, i32* %d001, align 4, !tbaa !19
  %sub108 = sub nsw i32 %135, %136
  %137 = load i32, i32* %rx, align 4, !tbaa !19
  %mul109 = mul nsw i32 %sub108, %137
  %add110 = add nsw i32 %mul109, 32768
  %shr111 = ashr i32 %add110, 16
  %add112 = add nsw i32 %134, %shr111
  %conv113 = trunc i32 %add112 to i16
  %conv114 = zext i16 %conv113 to i32
  store i32 %conv114, i32* %dx01, align 4, !tbaa !19
  %138 = load i32, i32* %d010, align 4, !tbaa !19
  %139 = load i32, i32* %d110, align 4, !tbaa !19
  %140 = load i32, i32* %d010, align 4, !tbaa !19
  %sub115 = sub nsw i32 %139, %140
  %141 = load i32, i32* %rx, align 4, !tbaa !19
  %mul116 = mul nsw i32 %sub115, %141
  %add117 = add nsw i32 %mul116, 32768
  %shr118 = ashr i32 %add117, 16
  %add119 = add nsw i32 %138, %shr118
  %conv120 = trunc i32 %add119 to i16
  %conv121 = zext i16 %conv120 to i32
  store i32 %conv121, i32* %dx10, align 4, !tbaa !19
  %142 = load i32, i32* %d011, align 4, !tbaa !19
  %143 = load i32, i32* %d111, align 4, !tbaa !19
  %144 = load i32, i32* %d011, align 4, !tbaa !19
  %sub122 = sub nsw i32 %143, %144
  %145 = load i32, i32* %rx, align 4, !tbaa !19
  %mul123 = mul nsw i32 %sub122, %145
  %add124 = add nsw i32 %mul123, 32768
  %shr125 = ashr i32 %add124, 16
  %add126 = add nsw i32 %142, %shr125
  %conv127 = trunc i32 %add126 to i16
  %conv128 = zext i16 %conv127 to i32
  store i32 %conv128, i32* %dx11, align 4, !tbaa !19
  %146 = load i32, i32* %dx00, align 4, !tbaa !19
  %147 = load i32, i32* %dx10, align 4, !tbaa !19
  %148 = load i32, i32* %dx00, align 4, !tbaa !19
  %sub129 = sub nsw i32 %147, %148
  %149 = load i32, i32* %ry, align 4, !tbaa !19
  %mul130 = mul nsw i32 %sub129, %149
  %add131 = add nsw i32 %mul130, 32768
  %shr132 = ashr i32 %add131, 16
  %add133 = add nsw i32 %146, %shr132
  %conv134 = trunc i32 %add133 to i16
  %conv135 = zext i16 %conv134 to i32
  store i32 %conv135, i32* %dxy0, align 4, !tbaa !19
  %150 = load i32, i32* %dx01, align 4, !tbaa !19
  %151 = load i32, i32* %dx11, align 4, !tbaa !19
  %152 = load i32, i32* %dx01, align 4, !tbaa !19
  %sub136 = sub nsw i32 %151, %152
  %153 = load i32, i32* %ry, align 4, !tbaa !19
  %mul137 = mul nsw i32 %sub136, %153
  %add138 = add nsw i32 %mul137, 32768
  %shr139 = ashr i32 %add138, 16
  %add140 = add nsw i32 %150, %shr139
  %conv141 = trunc i32 %add140 to i16
  %conv142 = zext i16 %conv141 to i32
  store i32 %conv142, i32* %dxy1, align 4, !tbaa !19
  %154 = load i32, i32* %dxy0, align 4, !tbaa !19
  %155 = load i32, i32* %dxy1, align 4, !tbaa !19
  %156 = load i32, i32* %dxy0, align 4, !tbaa !19
  %sub143 = sub nsw i32 %155, %156
  %157 = load i32, i32* %rz, align 4, !tbaa !19
  %mul144 = mul nsw i32 %sub143, %157
  %add145 = add nsw i32 %mul144, 32768
  %shr146 = ashr i32 %add145, 16
  %add147 = add nsw i32 %154, %shr146
  %conv148 = trunc i32 %add147 to i16
  %conv149 = zext i16 %conv148 to i32
  store i32 %conv149, i32* %dxyz, align 4, !tbaa !19
  %158 = load i32, i32* %dxyz, align 4, !tbaa !19
  %conv150 = trunc i32 %158 to i16
  %159 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom151 = sext i32 %159 to i64
  %160 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i16, i16* %160, i64 %idxprom151
  store i16 %conv150, i16* %arrayidx152, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %161 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %162 = bitcast i32* %dxyz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %dxy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %dxy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %dx11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %dx10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %dx01 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %dx00 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %d111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %d110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %d101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %d100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %d011 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %d010 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %d001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %d000 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TetrahedralInterpFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %px = alloca float, align 4
  %py = alloca float, align 4
  %pz = alloca float, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %rx = alloca float, align 4
  %ry = alloca float, align 4
  %rz = alloca float, align 4
  %c0 = alloca float, align 4
  %c1 = alloca float, align 4
  %c2 = alloca float, align 4
  %c3 = alloca float, align 4
  %OutChan = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %pz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast float* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast float* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast float* %rz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast float* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast float* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store float 0.000000e+00, float* %c1, align 4, !tbaa !22
  %21 = bitcast float* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store float 0.000000e+00, float* %c2, align 4, !tbaa !22
  %22 = bitcast float* %c3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store float 0.000000e+00, float* %c3, align 4, !tbaa !22
  %23 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %25, i32 0, i32 3
  %26 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %26, i32* %TotalOut, align 4, !tbaa !19
  %27 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %27, i64 0
  %28 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %28) #8
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %29, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %30 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %30 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %px, align 4, !tbaa !22
  %31 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %31, i64 1
  %32 = load float, float* %arrayidx2, align 4, !tbaa !22
  %call3 = call float @fclamp(float %32) #8
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %34 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %conv6 = uitofp i32 %34 to float
  %mul7 = fmul float %call3, %conv6
  store float %mul7, float* %py, align 4, !tbaa !22
  %35 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds float, float* %35, i64 2
  %36 = load float, float* %arrayidx8, align 4, !tbaa !22
  %call9 = call float @fclamp(float %36) #8
  %37 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %37, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 2
  %38 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  %conv12 = uitofp i32 %38 to float
  %mul13 = fmul float %call9, %conv12
  store float %mul13, float* %pz, align 4, !tbaa !22
  %39 = load float, float* %px, align 4, !tbaa !22
  %conv14 = fpext float %39 to double
  %call15 = call i32 @_cmsQuickFloor(double %conv14) #8
  store i32 %call15, i32* %x0, align 4, !tbaa !19
  %40 = load float, float* %px, align 4, !tbaa !22
  %41 = load i32, i32* %x0, align 4, !tbaa !19
  %conv16 = sitofp i32 %41 to float
  %sub = fsub float %40, %conv16
  store float %sub, float* %rx, align 4, !tbaa !22
  %42 = load float, float* %py, align 4, !tbaa !22
  %conv17 = fpext float %42 to double
  %call18 = call i32 @_cmsQuickFloor(double %conv17) #8
  store i32 %call18, i32* %y0, align 4, !tbaa !19
  %43 = load float, float* %py, align 4, !tbaa !22
  %44 = load i32, i32* %y0, align 4, !tbaa !19
  %conv19 = sitofp i32 %44 to float
  %sub20 = fsub float %43, %conv19
  store float %sub20, float* %ry, align 4, !tbaa !22
  %45 = load float, float* %pz, align 4, !tbaa !22
  %conv21 = fpext float %45 to double
  %call22 = call i32 @_cmsQuickFloor(double %conv21) #8
  store i32 %call22, i32* %z0, align 4, !tbaa !19
  %46 = load float, float* %pz, align 4, !tbaa !22
  %47 = load i32, i32* %z0, align 4, !tbaa !19
  %conv23 = sitofp i32 %47 to float
  %sub24 = fsub float %46, %conv23
  store float %sub24, float* %rz, align 4, !tbaa !22
  %48 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %48, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %49 = load i32, i32* %arrayidx25, align 4, !tbaa !19
  %50 = load i32, i32* %x0, align 4, !tbaa !19
  %mul26 = mul i32 %49, %50
  store i32 %mul26, i32* %X0, align 4, !tbaa !19
  %51 = load i32, i32* %X0, align 4, !tbaa !19
  %52 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds float, float* %52, i64 0
  %53 = load float, float* %arrayidx27, align 4, !tbaa !22
  %conv28 = fpext float %53 to double
  %cmp = fcmp oge double %conv28, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta30 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %54, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %opta30, i32 0, i64 2
  %55 = load i32, i32* %arrayidx31, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %55, %cond.false ]
  %add = add i32 %51, %cond
  store i32 %add, i32* %X1, align 4, !tbaa !19
  %56 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta32 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %56, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %opta32, i32 0, i64 1
  %57 = load i32, i32* %arrayidx33, align 4, !tbaa !19
  %58 = load i32, i32* %y0, align 4, !tbaa !19
  %mul34 = mul i32 %57, %58
  store i32 %mul34, i32* %Y0, align 4, !tbaa !19
  %59 = load i32, i32* %Y0, align 4, !tbaa !19
  %60 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float, float* %60, i64 1
  %61 = load float, float* %arrayidx35, align 4, !tbaa !22
  %conv36 = fpext float %61 to double
  %cmp37 = fcmp oge double %conv36, 1.000000e+00
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end
  br label %cond.end.43

cond.false.40:                                    ; preds = %cond.end
  %62 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta41 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %62, i32 0, i32 6
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %opta41, i32 0, i64 1
  %63 = load i32, i32* %arrayidx42, align 4, !tbaa !19
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.40, %cond.true.39
  %cond44 = phi i32 [ 0, %cond.true.39 ], [ %63, %cond.false.40 ]
  %add45 = add i32 %59, %cond44
  store i32 %add45, i32* %Y1, align 4, !tbaa !19
  %64 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta46 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %64, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %opta46, i32 0, i64 0
  %65 = load i32, i32* %arrayidx47, align 4, !tbaa !19
  %66 = load i32, i32* %z0, align 4, !tbaa !19
  %mul48 = mul i32 %65, %66
  store i32 %mul48, i32* %Z0, align 4, !tbaa !19
  %67 = load i32, i32* %Z0, align 4, !tbaa !19
  %68 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %68, i64 2
  %69 = load float, float* %arrayidx49, align 4, !tbaa !22
  %conv50 = fpext float %69 to double
  %cmp51 = fcmp oge double %conv50, 1.000000e+00
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.43
  br label %cond.end.57

cond.false.54:                                    ; preds = %cond.end.43
  %70 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta55 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %70, i32 0, i32 6
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %opta55, i32 0, i64 0
  %71 = load i32, i32* %arrayidx56, align 4, !tbaa !19
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.54, %cond.true.53
  %cond58 = phi i32 [ 0, %cond.true.53 ], [ %71, %cond.false.54 ]
  %add59 = add i32 %67, %cond58
  store i32 %add59, i32* %Z1, align 4, !tbaa !19
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.57
  %72 = load i32, i32* %OutChan, align 4, !tbaa !19
  %73 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %cmp60 = icmp slt i32 %72, %73
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %X0, align 4, !tbaa !19
  %75 = load i32, i32* %Y0, align 4, !tbaa !19
  %add62 = add nsw i32 %74, %75
  %76 = load i32, i32* %Z0, align 4, !tbaa !19
  %add63 = add nsw i32 %add62, %76
  %77 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add64 = add nsw i32 %add63, %77
  %idxprom = sext i32 %add64 to i64
  %78 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds float, float* %78, i64 %idxprom
  %79 = load float, float* %arrayidx65, align 4, !tbaa !22
  store float %79, float* %c0, align 4, !tbaa !22
  %80 = load float, float* %rx, align 4, !tbaa !22
  %81 = load float, float* %ry, align 4, !tbaa !22
  %cmp66 = fcmp oge float %80, %81
  br i1 %cmp66, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %82 = load float, float* %ry, align 4, !tbaa !22
  %83 = load float, float* %rz, align 4, !tbaa !22
  %cmp68 = fcmp oge float %82, %83
  br i1 %cmp68, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %84 = load i32, i32* %X1, align 4, !tbaa !19
  %85 = load i32, i32* %Y0, align 4, !tbaa !19
  %add70 = add nsw i32 %84, %85
  %86 = load i32, i32* %Z0, align 4, !tbaa !19
  %add71 = add nsw i32 %add70, %86
  %87 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add72 = add nsw i32 %add71, %87
  %idxprom73 = sext i32 %add72 to i64
  %88 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds float, float* %88, i64 %idxprom73
  %89 = load float, float* %arrayidx74, align 4, !tbaa !22
  %90 = load float, float* %c0, align 4, !tbaa !22
  %sub75 = fsub float %89, %90
  store float %sub75, float* %c1, align 4, !tbaa !22
  %91 = load i32, i32* %X1, align 4, !tbaa !19
  %92 = load i32, i32* %Y1, align 4, !tbaa !19
  %add76 = add nsw i32 %91, %92
  %93 = load i32, i32* %Z0, align 4, !tbaa !19
  %add77 = add nsw i32 %add76, %93
  %94 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add78 = add nsw i32 %add77, %94
  %idxprom79 = sext i32 %add78 to i64
  %95 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds float, float* %95, i64 %idxprom79
  %96 = load float, float* %arrayidx80, align 4, !tbaa !22
  %97 = load i32, i32* %X1, align 4, !tbaa !19
  %98 = load i32, i32* %Y0, align 4, !tbaa !19
  %add81 = add nsw i32 %97, %98
  %99 = load i32, i32* %Z0, align 4, !tbaa !19
  %add82 = add nsw i32 %add81, %99
  %100 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add83 = add nsw i32 %add82, %100
  %idxprom84 = sext i32 %add83 to i64
  %101 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds float, float* %101, i64 %idxprom84
  %102 = load float, float* %arrayidx85, align 4, !tbaa !22
  %sub86 = fsub float %96, %102
  store float %sub86, float* %c2, align 4, !tbaa !22
  %103 = load i32, i32* %X1, align 4, !tbaa !19
  %104 = load i32, i32* %Y1, align 4, !tbaa !19
  %add87 = add nsw i32 %103, %104
  %105 = load i32, i32* %Z1, align 4, !tbaa !19
  %add88 = add nsw i32 %add87, %105
  %106 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add89 = add nsw i32 %add88, %106
  %idxprom90 = sext i32 %add89 to i64
  %107 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds float, float* %107, i64 %idxprom90
  %108 = load float, float* %arrayidx91, align 4, !tbaa !22
  %109 = load i32, i32* %X1, align 4, !tbaa !19
  %110 = load i32, i32* %Y1, align 4, !tbaa !19
  %add92 = add nsw i32 %109, %110
  %111 = load i32, i32* %Z0, align 4, !tbaa !19
  %add93 = add nsw i32 %add92, %111
  %112 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add94 = add nsw i32 %add93, %112
  %idxprom95 = sext i32 %add94 to i64
  %113 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds float, float* %113, i64 %idxprom95
  %114 = load float, float* %arrayidx96, align 4, !tbaa !22
  %sub97 = fsub float %108, %114
  store float %sub97, float* %c3, align 4, !tbaa !22
  br label %if.end.277

if.else:                                          ; preds = %land.lhs.true, %for.body
  %115 = load float, float* %rx, align 4, !tbaa !22
  %116 = load float, float* %rz, align 4, !tbaa !22
  %cmp98 = fcmp oge float %115, %116
  br i1 %cmp98, label %land.lhs.true.100, label %if.else.132

land.lhs.true.100:                                ; preds = %if.else
  %117 = load float, float* %rz, align 4, !tbaa !22
  %118 = load float, float* %ry, align 4, !tbaa !22
  %cmp101 = fcmp oge float %117, %118
  br i1 %cmp101, label %if.then.103, label %if.else.132

if.then.103:                                      ; preds = %land.lhs.true.100
  %119 = load i32, i32* %X1, align 4, !tbaa !19
  %120 = load i32, i32* %Y0, align 4, !tbaa !19
  %add104 = add nsw i32 %119, %120
  %121 = load i32, i32* %Z0, align 4, !tbaa !19
  %add105 = add nsw i32 %add104, %121
  %122 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add106 = add nsw i32 %add105, %122
  %idxprom107 = sext i32 %add106 to i64
  %123 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds float, float* %123, i64 %idxprom107
  %124 = load float, float* %arrayidx108, align 4, !tbaa !22
  %125 = load float, float* %c0, align 4, !tbaa !22
  %sub109 = fsub float %124, %125
  store float %sub109, float* %c1, align 4, !tbaa !22
  %126 = load i32, i32* %X1, align 4, !tbaa !19
  %127 = load i32, i32* %Y1, align 4, !tbaa !19
  %add110 = add nsw i32 %126, %127
  %128 = load i32, i32* %Z1, align 4, !tbaa !19
  %add111 = add nsw i32 %add110, %128
  %129 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add112 = add nsw i32 %add111, %129
  %idxprom113 = sext i32 %add112 to i64
  %130 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds float, float* %130, i64 %idxprom113
  %131 = load float, float* %arrayidx114, align 4, !tbaa !22
  %132 = load i32, i32* %X1, align 4, !tbaa !19
  %133 = load i32, i32* %Y0, align 4, !tbaa !19
  %add115 = add nsw i32 %132, %133
  %134 = load i32, i32* %Z1, align 4, !tbaa !19
  %add116 = add nsw i32 %add115, %134
  %135 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add117 = add nsw i32 %add116, %135
  %idxprom118 = sext i32 %add117 to i64
  %136 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds float, float* %136, i64 %idxprom118
  %137 = load float, float* %arrayidx119, align 4, !tbaa !22
  %sub120 = fsub float %131, %137
  store float %sub120, float* %c2, align 4, !tbaa !22
  %138 = load i32, i32* %X1, align 4, !tbaa !19
  %139 = load i32, i32* %Y0, align 4, !tbaa !19
  %add121 = add nsw i32 %138, %139
  %140 = load i32, i32* %Z1, align 4, !tbaa !19
  %add122 = add nsw i32 %add121, %140
  %141 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add123 = add nsw i32 %add122, %141
  %idxprom124 = sext i32 %add123 to i64
  %142 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds float, float* %142, i64 %idxprom124
  %143 = load float, float* %arrayidx125, align 4, !tbaa !22
  %144 = load i32, i32* %X1, align 4, !tbaa !19
  %145 = load i32, i32* %Y0, align 4, !tbaa !19
  %add126 = add nsw i32 %144, %145
  %146 = load i32, i32* %Z0, align 4, !tbaa !19
  %add127 = add nsw i32 %add126, %146
  %147 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add128 = add nsw i32 %add127, %147
  %idxprom129 = sext i32 %add128 to i64
  %148 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds float, float* %148, i64 %idxprom129
  %149 = load float, float* %arrayidx130, align 4, !tbaa !22
  %sub131 = fsub float %143, %149
  store float %sub131, float* %c3, align 4, !tbaa !22
  br label %if.end.276

if.else.132:                                      ; preds = %land.lhs.true.100, %if.else
  %150 = load float, float* %rz, align 4, !tbaa !22
  %151 = load float, float* %rx, align 4, !tbaa !22
  %cmp133 = fcmp oge float %150, %151
  br i1 %cmp133, label %land.lhs.true.135, label %if.else.167

land.lhs.true.135:                                ; preds = %if.else.132
  %152 = load float, float* %rx, align 4, !tbaa !22
  %153 = load float, float* %ry, align 4, !tbaa !22
  %cmp136 = fcmp oge float %152, %153
  br i1 %cmp136, label %if.then.138, label %if.else.167

if.then.138:                                      ; preds = %land.lhs.true.135
  %154 = load i32, i32* %X1, align 4, !tbaa !19
  %155 = load i32, i32* %Y0, align 4, !tbaa !19
  %add139 = add nsw i32 %154, %155
  %156 = load i32, i32* %Z1, align 4, !tbaa !19
  %add140 = add nsw i32 %add139, %156
  %157 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add141 = add nsw i32 %add140, %157
  %idxprom142 = sext i32 %add141 to i64
  %158 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds float, float* %158, i64 %idxprom142
  %159 = load float, float* %arrayidx143, align 4, !tbaa !22
  %160 = load i32, i32* %X0, align 4, !tbaa !19
  %161 = load i32, i32* %Y0, align 4, !tbaa !19
  %add144 = add nsw i32 %160, %161
  %162 = load i32, i32* %Z1, align 4, !tbaa !19
  %add145 = add nsw i32 %add144, %162
  %163 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add146 = add nsw i32 %add145, %163
  %idxprom147 = sext i32 %add146 to i64
  %164 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds float, float* %164, i64 %idxprom147
  %165 = load float, float* %arrayidx148, align 4, !tbaa !22
  %sub149 = fsub float %159, %165
  store float %sub149, float* %c1, align 4, !tbaa !22
  %166 = load i32, i32* %X1, align 4, !tbaa !19
  %167 = load i32, i32* %Y1, align 4, !tbaa !19
  %add150 = add nsw i32 %166, %167
  %168 = load i32, i32* %Z1, align 4, !tbaa !19
  %add151 = add nsw i32 %add150, %168
  %169 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add152 = add nsw i32 %add151, %169
  %idxprom153 = sext i32 %add152 to i64
  %170 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds float, float* %170, i64 %idxprom153
  %171 = load float, float* %arrayidx154, align 4, !tbaa !22
  %172 = load i32, i32* %X1, align 4, !tbaa !19
  %173 = load i32, i32* %Y0, align 4, !tbaa !19
  %add155 = add nsw i32 %172, %173
  %174 = load i32, i32* %Z1, align 4, !tbaa !19
  %add156 = add nsw i32 %add155, %174
  %175 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add157 = add nsw i32 %add156, %175
  %idxprom158 = sext i32 %add157 to i64
  %176 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds float, float* %176, i64 %idxprom158
  %177 = load float, float* %arrayidx159, align 4, !tbaa !22
  %sub160 = fsub float %171, %177
  store float %sub160, float* %c2, align 4, !tbaa !22
  %178 = load i32, i32* %X0, align 4, !tbaa !19
  %179 = load i32, i32* %Y0, align 4, !tbaa !19
  %add161 = add nsw i32 %178, %179
  %180 = load i32, i32* %Z1, align 4, !tbaa !19
  %add162 = add nsw i32 %add161, %180
  %181 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add163 = add nsw i32 %add162, %181
  %idxprom164 = sext i32 %add163 to i64
  %182 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds float, float* %182, i64 %idxprom164
  %183 = load float, float* %arrayidx165, align 4, !tbaa !22
  %184 = load float, float* %c0, align 4, !tbaa !22
  %sub166 = fsub float %183, %184
  store float %sub166, float* %c3, align 4, !tbaa !22
  br label %if.end.275

if.else.167:                                      ; preds = %land.lhs.true.135, %if.else.132
  %185 = load float, float* %ry, align 4, !tbaa !22
  %186 = load float, float* %rx, align 4, !tbaa !22
  %cmp168 = fcmp oge float %185, %186
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.202

land.lhs.true.170:                                ; preds = %if.else.167
  %187 = load float, float* %rx, align 4, !tbaa !22
  %188 = load float, float* %rz, align 4, !tbaa !22
  %cmp171 = fcmp oge float %187, %188
  br i1 %cmp171, label %if.then.173, label %if.else.202

if.then.173:                                      ; preds = %land.lhs.true.170
  %189 = load i32, i32* %X1, align 4, !tbaa !19
  %190 = load i32, i32* %Y1, align 4, !tbaa !19
  %add174 = add nsw i32 %189, %190
  %191 = load i32, i32* %Z0, align 4, !tbaa !19
  %add175 = add nsw i32 %add174, %191
  %192 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add176 = add nsw i32 %add175, %192
  %idxprom177 = sext i32 %add176 to i64
  %193 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds float, float* %193, i64 %idxprom177
  %194 = load float, float* %arrayidx178, align 4, !tbaa !22
  %195 = load i32, i32* %X0, align 4, !tbaa !19
  %196 = load i32, i32* %Y1, align 4, !tbaa !19
  %add179 = add nsw i32 %195, %196
  %197 = load i32, i32* %Z0, align 4, !tbaa !19
  %add180 = add nsw i32 %add179, %197
  %198 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add181 = add nsw i32 %add180, %198
  %idxprom182 = sext i32 %add181 to i64
  %199 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds float, float* %199, i64 %idxprom182
  %200 = load float, float* %arrayidx183, align 4, !tbaa !22
  %sub184 = fsub float %194, %200
  store float %sub184, float* %c1, align 4, !tbaa !22
  %201 = load i32, i32* %X0, align 4, !tbaa !19
  %202 = load i32, i32* %Y1, align 4, !tbaa !19
  %add185 = add nsw i32 %201, %202
  %203 = load i32, i32* %Z0, align 4, !tbaa !19
  %add186 = add nsw i32 %add185, %203
  %204 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add187 = add nsw i32 %add186, %204
  %idxprom188 = sext i32 %add187 to i64
  %205 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds float, float* %205, i64 %idxprom188
  %206 = load float, float* %arrayidx189, align 4, !tbaa !22
  %207 = load float, float* %c0, align 4, !tbaa !22
  %sub190 = fsub float %206, %207
  store float %sub190, float* %c2, align 4, !tbaa !22
  %208 = load i32, i32* %X1, align 4, !tbaa !19
  %209 = load i32, i32* %Y1, align 4, !tbaa !19
  %add191 = add nsw i32 %208, %209
  %210 = load i32, i32* %Z1, align 4, !tbaa !19
  %add192 = add nsw i32 %add191, %210
  %211 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add193 = add nsw i32 %add192, %211
  %idxprom194 = sext i32 %add193 to i64
  %212 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds float, float* %212, i64 %idxprom194
  %213 = load float, float* %arrayidx195, align 4, !tbaa !22
  %214 = load i32, i32* %X1, align 4, !tbaa !19
  %215 = load i32, i32* %Y1, align 4, !tbaa !19
  %add196 = add nsw i32 %214, %215
  %216 = load i32, i32* %Z0, align 4, !tbaa !19
  %add197 = add nsw i32 %add196, %216
  %217 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add198 = add nsw i32 %add197, %217
  %idxprom199 = sext i32 %add198 to i64
  %218 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds float, float* %218, i64 %idxprom199
  %219 = load float, float* %arrayidx200, align 4, !tbaa !22
  %sub201 = fsub float %213, %219
  store float %sub201, float* %c3, align 4, !tbaa !22
  br label %if.end.274

if.else.202:                                      ; preds = %land.lhs.true.170, %if.else.167
  %220 = load float, float* %ry, align 4, !tbaa !22
  %221 = load float, float* %rz, align 4, !tbaa !22
  %cmp203 = fcmp oge float %220, %221
  br i1 %cmp203, label %land.lhs.true.205, label %if.else.237

land.lhs.true.205:                                ; preds = %if.else.202
  %222 = load float, float* %rz, align 4, !tbaa !22
  %223 = load float, float* %rx, align 4, !tbaa !22
  %cmp206 = fcmp oge float %222, %223
  br i1 %cmp206, label %if.then.208, label %if.else.237

if.then.208:                                      ; preds = %land.lhs.true.205
  %224 = load i32, i32* %X1, align 4, !tbaa !19
  %225 = load i32, i32* %Y1, align 4, !tbaa !19
  %add209 = add nsw i32 %224, %225
  %226 = load i32, i32* %Z1, align 4, !tbaa !19
  %add210 = add nsw i32 %add209, %226
  %227 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add211 = add nsw i32 %add210, %227
  %idxprom212 = sext i32 %add211 to i64
  %228 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds float, float* %228, i64 %idxprom212
  %229 = load float, float* %arrayidx213, align 4, !tbaa !22
  %230 = load i32, i32* %X0, align 4, !tbaa !19
  %231 = load i32, i32* %Y1, align 4, !tbaa !19
  %add214 = add nsw i32 %230, %231
  %232 = load i32, i32* %Z1, align 4, !tbaa !19
  %add215 = add nsw i32 %add214, %232
  %233 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add216 = add nsw i32 %add215, %233
  %idxprom217 = sext i32 %add216 to i64
  %234 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds float, float* %234, i64 %idxprom217
  %235 = load float, float* %arrayidx218, align 4, !tbaa !22
  %sub219 = fsub float %229, %235
  store float %sub219, float* %c1, align 4, !tbaa !22
  %236 = load i32, i32* %X0, align 4, !tbaa !19
  %237 = load i32, i32* %Y1, align 4, !tbaa !19
  %add220 = add nsw i32 %236, %237
  %238 = load i32, i32* %Z0, align 4, !tbaa !19
  %add221 = add nsw i32 %add220, %238
  %239 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add222 = add nsw i32 %add221, %239
  %idxprom223 = sext i32 %add222 to i64
  %240 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds float, float* %240, i64 %idxprom223
  %241 = load float, float* %arrayidx224, align 4, !tbaa !22
  %242 = load float, float* %c0, align 4, !tbaa !22
  %sub225 = fsub float %241, %242
  store float %sub225, float* %c2, align 4, !tbaa !22
  %243 = load i32, i32* %X0, align 4, !tbaa !19
  %244 = load i32, i32* %Y1, align 4, !tbaa !19
  %add226 = add nsw i32 %243, %244
  %245 = load i32, i32* %Z1, align 4, !tbaa !19
  %add227 = add nsw i32 %add226, %245
  %246 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add228 = add nsw i32 %add227, %246
  %idxprom229 = sext i32 %add228 to i64
  %247 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds float, float* %247, i64 %idxprom229
  %248 = load float, float* %arrayidx230, align 4, !tbaa !22
  %249 = load i32, i32* %X0, align 4, !tbaa !19
  %250 = load i32, i32* %Y1, align 4, !tbaa !19
  %add231 = add nsw i32 %249, %250
  %251 = load i32, i32* %Z0, align 4, !tbaa !19
  %add232 = add nsw i32 %add231, %251
  %252 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add233 = add nsw i32 %add232, %252
  %idxprom234 = sext i32 %add233 to i64
  %253 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds float, float* %253, i64 %idxprom234
  %254 = load float, float* %arrayidx235, align 4, !tbaa !22
  %sub236 = fsub float %248, %254
  store float %sub236, float* %c3, align 4, !tbaa !22
  br label %if.end.273

if.else.237:                                      ; preds = %land.lhs.true.205, %if.else.202
  %255 = load float, float* %rz, align 4, !tbaa !22
  %256 = load float, float* %ry, align 4, !tbaa !22
  %cmp238 = fcmp oge float %255, %256
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.272

land.lhs.true.240:                                ; preds = %if.else.237
  %257 = load float, float* %ry, align 4, !tbaa !22
  %258 = load float, float* %rx, align 4, !tbaa !22
  %cmp241 = fcmp oge float %257, %258
  br i1 %cmp241, label %if.then.243, label %if.else.272

if.then.243:                                      ; preds = %land.lhs.true.240
  %259 = load i32, i32* %X1, align 4, !tbaa !19
  %260 = load i32, i32* %Y1, align 4, !tbaa !19
  %add244 = add nsw i32 %259, %260
  %261 = load i32, i32* %Z1, align 4, !tbaa !19
  %add245 = add nsw i32 %add244, %261
  %262 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add246 = add nsw i32 %add245, %262
  %idxprom247 = sext i32 %add246 to i64
  %263 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds float, float* %263, i64 %idxprom247
  %264 = load float, float* %arrayidx248, align 4, !tbaa !22
  %265 = load i32, i32* %X0, align 4, !tbaa !19
  %266 = load i32, i32* %Y1, align 4, !tbaa !19
  %add249 = add nsw i32 %265, %266
  %267 = load i32, i32* %Z1, align 4, !tbaa !19
  %add250 = add nsw i32 %add249, %267
  %268 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add251 = add nsw i32 %add250, %268
  %idxprom252 = sext i32 %add251 to i64
  %269 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds float, float* %269, i64 %idxprom252
  %270 = load float, float* %arrayidx253, align 4, !tbaa !22
  %sub254 = fsub float %264, %270
  store float %sub254, float* %c1, align 4, !tbaa !22
  %271 = load i32, i32* %X0, align 4, !tbaa !19
  %272 = load i32, i32* %Y1, align 4, !tbaa !19
  %add255 = add nsw i32 %271, %272
  %273 = load i32, i32* %Z1, align 4, !tbaa !19
  %add256 = add nsw i32 %add255, %273
  %274 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add257 = add nsw i32 %add256, %274
  %idxprom258 = sext i32 %add257 to i64
  %275 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds float, float* %275, i64 %idxprom258
  %276 = load float, float* %arrayidx259, align 4, !tbaa !22
  %277 = load i32, i32* %X0, align 4, !tbaa !19
  %278 = load i32, i32* %Y0, align 4, !tbaa !19
  %add260 = add nsw i32 %277, %278
  %279 = load i32, i32* %Z1, align 4, !tbaa !19
  %add261 = add nsw i32 %add260, %279
  %280 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add262 = add nsw i32 %add261, %280
  %idxprom263 = sext i32 %add262 to i64
  %281 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds float, float* %281, i64 %idxprom263
  %282 = load float, float* %arrayidx264, align 4, !tbaa !22
  %sub265 = fsub float %276, %282
  store float %sub265, float* %c2, align 4, !tbaa !22
  %283 = load i32, i32* %X0, align 4, !tbaa !19
  %284 = load i32, i32* %Y0, align 4, !tbaa !19
  %add266 = add nsw i32 %283, %284
  %285 = load i32, i32* %Z1, align 4, !tbaa !19
  %add267 = add nsw i32 %add266, %285
  %286 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add268 = add nsw i32 %add267, %286
  %idxprom269 = sext i32 %add268 to i64
  %287 = load float*, float** %LutTable, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds float, float* %287, i64 %idxprom269
  %288 = load float, float* %arrayidx270, align 4, !tbaa !22
  %289 = load float, float* %c0, align 4, !tbaa !22
  %sub271 = fsub float %288, %289
  store float %sub271, float* %c3, align 4, !tbaa !22
  br label %if.end

if.else.272:                                      ; preds = %land.lhs.true.240, %if.else.237
  store float 0.000000e+00, float* %c3, align 4, !tbaa !22
  store float 0.000000e+00, float* %c2, align 4, !tbaa !22
  store float 0.000000e+00, float* %c1, align 4, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else.272, %if.then.243
  br label %if.end.273

if.end.273:                                       ; preds = %if.end, %if.then.208
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %if.then.173
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %if.then.138
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.103
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then
  %290 = load float, float* %c0, align 4, !tbaa !22
  %291 = load float, float* %c1, align 4, !tbaa !22
  %292 = load float, float* %rx, align 4, !tbaa !22
  %mul278 = fmul float %291, %292
  %add279 = fadd float %290, %mul278
  %293 = load float, float* %c2, align 4, !tbaa !22
  %294 = load float, float* %ry, align 4, !tbaa !22
  %mul280 = fmul float %293, %294
  %add281 = fadd float %add279, %mul280
  %295 = load float, float* %c3, align 4, !tbaa !22
  %296 = load float, float* %rz, align 4, !tbaa !22
  %mul282 = fmul float %295, %296
  %add283 = fadd float %add281, %mul282
  %297 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom284 = sext i32 %297 to i64
  %298 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds float, float* %298, i64 %idxprom284
  store float %add283, float* %arrayidx285, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.end.277
  %299 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add nsw i32 %299, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %300 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast float* %c3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast float* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast float* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast float* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast float* %rz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast float* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast float* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast float* %pz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast float* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast float* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TetrahedralInterp16(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %fz = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rz = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %Rest = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %TotalOut = alloca i32, align 4
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %25, i32 0, i32 3
  %26 = load i32, i32* %nOutputs, align 4, !tbaa !16
  store i32 %26, i32* %TotalOut, align 4, !tbaa !19
  %27 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 0
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %28 to i32
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %29, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %30 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %30
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fx, align 4, !tbaa !19
  %31 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %31, i64 1
  %32 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = zext i16 %32 to i32
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %34 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %mul6 = mul i32 %conv3, %34
  %call7 = call i32 @_cmsToFixedDomain(i32 %mul6) #8
  store i32 %call7, i32* %fy, align 4, !tbaa !19
  %35 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %35, i64 2
  %36 = load i16, i16* %arrayidx8, align 2, !tbaa !24
  %conv9 = zext i16 %36 to i32
  %37 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %37, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 2
  %38 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  %mul12 = mul i32 %conv9, %38
  %call13 = call i32 @_cmsToFixedDomain(i32 %mul12) #8
  store i32 %call13, i32* %fz, align 4, !tbaa !19
  %39 = load i32, i32* %fx, align 4, !tbaa !19
  %shr = ashr i32 %39, 16
  store i32 %shr, i32* %x0, align 4, !tbaa !19
  %40 = load i32, i32* %fy, align 4, !tbaa !19
  %shr14 = ashr i32 %40, 16
  store i32 %shr14, i32* %y0, align 4, !tbaa !19
  %41 = load i32, i32* %fz, align 4, !tbaa !19
  %shr15 = ashr i32 %41, 16
  store i32 %shr15, i32* %z0, align 4, !tbaa !19
  %42 = load i32, i32* %fx, align 4, !tbaa !19
  %and = and i32 %42, 65535
  store i32 %and, i32* %rx, align 4, !tbaa !19
  %43 = load i32, i32* %fy, align 4, !tbaa !19
  %and16 = and i32 %43, 65535
  store i32 %and16, i32* %ry, align 4, !tbaa !19
  %44 = load i32, i32* %fz, align 4, !tbaa !19
  %and17 = and i32 %44, 65535
  store i32 %and17, i32* %rz, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 2
  %46 = load i32, i32* %arrayidx18, align 4, !tbaa !19
  %47 = load i32, i32* %x0, align 4, !tbaa !19
  %mul19 = mul i32 %46, %47
  store i32 %mul19, i32* %X0, align 4, !tbaa !19
  %48 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %48, i64 0
  %49 = load i16, i16* %arrayidx20, align 2, !tbaa !24
  %conv21 = zext i16 %49 to i32
  %cmp = icmp eq i32 %conv21, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %50 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta23 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %50, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %opta23, i32 0, i64 2
  %51 = load i32, i32* %arrayidx24, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %51, %cond.false ]
  store i32 %cond, i32* %X1, align 4, !tbaa !19
  %52 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta25 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %52, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %opta25, i32 0, i64 1
  %53 = load i32, i32* %arrayidx26, align 4, !tbaa !19
  %54 = load i32, i32* %y0, align 4, !tbaa !19
  %mul27 = mul i32 %53, %54
  store i32 %mul27, i32* %Y0, align 4, !tbaa !19
  %55 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %55, i64 1
  %56 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %conv29 = zext i16 %56 to i32
  %cmp30 = icmp eq i32 %conv29, 65535
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end
  br label %cond.end.36

cond.false.33:                                    ; preds = %cond.end
  %57 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta34 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %57, i32 0, i32 6
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %opta34, i32 0, i64 1
  %58 = load i32, i32* %arrayidx35, align 4, !tbaa !19
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.32
  %cond37 = phi i32 [ 0, %cond.true.32 ], [ %58, %cond.false.33 ]
  store i32 %cond37, i32* %Y1, align 4, !tbaa !19
  %59 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta38 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %59, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %opta38, i32 0, i64 0
  %60 = load i32, i32* %arrayidx39, align 4, !tbaa !19
  %61 = load i32, i32* %z0, align 4, !tbaa !19
  %mul40 = mul i32 %60, %61
  store i32 %mul40, i32* %Z0, align 4, !tbaa !19
  %62 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %62, i64 2
  %63 = load i16, i16* %arrayidx41, align 2, !tbaa !24
  %conv42 = zext i16 %63 to i32
  %cmp43 = icmp eq i32 %conv42, 65535
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.end.36
  br label %cond.end.49

cond.false.46:                                    ; preds = %cond.end.36
  %64 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta47 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %64, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %opta47, i32 0, i64 0
  %65 = load i32, i32* %arrayidx48, align 4, !tbaa !19
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.45
  %cond50 = phi i32 [ 0, %cond.true.45 ], [ %65, %cond.false.46 ]
  store i32 %cond50, i32* %Z1, align 4, !tbaa !19
  %66 = load i32, i32* %X0, align 4, !tbaa !19
  %67 = load i32, i32* %Y0, align 4, !tbaa !19
  %add = add nsw i32 %66, %67
  %68 = load i32, i32* %Z0, align 4, !tbaa !19
  %add51 = add nsw i32 %add, %68
  %idxprom = sext i32 %add51 to i64
  %69 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %69, i64 %idxprom
  store i16* %arrayidx52, i16** %LutTable, align 8, !tbaa !1
  %70 = load i32, i32* %rx, align 4, !tbaa !19
  %71 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp53 = icmp sge i32 %70, %71
  br i1 %cmp53, label %if.then, label %if.else.163

if.then:                                          ; preds = %cond.end.49
  %72 = load i32, i32* %ry, align 4, !tbaa !19
  %73 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp55 = icmp sge i32 %72, %73
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then
  %74 = load i32, i32* %X1, align 4, !tbaa !19
  %75 = load i32, i32* %Y1, align 4, !tbaa !19
  %add58 = add nsw i32 %75, %74
  store i32 %add58, i32* %Y1, align 4, !tbaa !19
  %76 = load i32, i32* %Y1, align 4, !tbaa !19
  %77 = load i32, i32* %Z1, align 4, !tbaa !19
  %add59 = add nsw i32 %77, %76
  store i32 %add59, i32* %Z1, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.57
  %78 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom60 = sext i32 %79 to i64
  %80 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %80, i64 %idxprom60
  %81 = load i16, i16* %arrayidx61, align 2, !tbaa !24
  %conv62 = zext i16 %81 to i32
  store i32 %conv62, i32* %c1, align 4, !tbaa !19
  %82 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom63 = sext i32 %82 to i64
  %83 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %83, i64 %idxprom63
  %84 = load i16, i16* %arrayidx64, align 2, !tbaa !24
  %conv65 = zext i16 %84 to i32
  store i32 %conv65, i32* %c2, align 4, !tbaa !19
  %85 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom66 = sext i32 %85 to i64
  %86 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i16, i16* %86, i64 %idxprom66
  %87 = load i16, i16* %arrayidx67, align 2, !tbaa !24
  %conv68 = zext i16 %87 to i32
  store i32 %conv68, i32* %c3, align 4, !tbaa !19
  %88 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %88, i32 1
  store i16* %incdec.ptr, i16** %LutTable, align 8, !tbaa !1
  %89 = load i16, i16* %88, align 2, !tbaa !24
  %conv69 = zext i16 %89 to i32
  store i32 %conv69, i32* %c0, align 4, !tbaa !19
  %90 = load i32, i32* %c2, align 4, !tbaa !19
  %91 = load i32, i32* %c3, align 4, !tbaa !19
  %sub = sub nsw i32 %91, %90
  store i32 %sub, i32* %c3, align 4, !tbaa !19
  %92 = load i32, i32* %c1, align 4, !tbaa !19
  %93 = load i32, i32* %c2, align 4, !tbaa !19
  %sub70 = sub nsw i32 %93, %92
  store i32 %sub70, i32* %c2, align 4, !tbaa !19
  %94 = load i32, i32* %c0, align 4, !tbaa !19
  %95 = load i32, i32* %c1, align 4, !tbaa !19
  %sub71 = sub nsw i32 %95, %94
  store i32 %sub71, i32* %c1, align 4, !tbaa !19
  %96 = load i32, i32* %c1, align 4, !tbaa !19
  %97 = load i32, i32* %rx, align 4, !tbaa !19
  %mul72 = mul nsw i32 %96, %97
  %98 = load i32, i32* %c2, align 4, !tbaa !19
  %99 = load i32, i32* %ry, align 4, !tbaa !19
  %mul73 = mul nsw i32 %98, %99
  %add74 = add nsw i32 %mul72, %mul73
  %100 = load i32, i32* %c3, align 4, !tbaa !19
  %101 = load i32, i32* %rz, align 4, !tbaa !19
  %mul75 = mul nsw i32 %100, %101
  %add76 = add nsw i32 %add74, %mul75
  %add77 = add nsw i32 %add76, 32769
  store i32 %add77, i32* %Rest, align 4, !tbaa !19
  %102 = load i32, i32* %c0, align 4, !tbaa !19
  %conv78 = trunc i32 %102 to i16
  %conv79 = zext i16 %conv78 to i32
  %103 = load i32, i32* %Rest, align 4, !tbaa !19
  %104 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr80 = ashr i32 %104, 16
  %add81 = add nsw i32 %103, %shr80
  %shr82 = ashr i32 %add81, 16
  %add83 = add nsw i32 %conv79, %shr82
  %conv84 = trunc i32 %add83 to i16
  %105 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %incdec.ptr85, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv84, i16* %105, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %106 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec = add i32 %106, -1
  store i32 %dec, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.162

if.else:                                          ; preds = %if.then
  %107 = load i32, i32* %rz, align 4, !tbaa !19
  %108 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp86 = icmp sge i32 %107, %108
  br i1 %cmp86, label %if.then.88, label %if.else.125

if.then.88:                                       ; preds = %if.else
  %109 = load i32, i32* %Z1, align 4, !tbaa !19
  %110 = load i32, i32* %X1, align 4, !tbaa !19
  %add89 = add nsw i32 %110, %109
  store i32 %add89, i32* %X1, align 4, !tbaa !19
  %111 = load i32, i32* %X1, align 4, !tbaa !19
  %112 = load i32, i32* %Y1, align 4, !tbaa !19
  %add90 = add nsw i32 %112, %111
  store i32 %add90, i32* %Y1, align 4, !tbaa !19
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.122, %if.then.88
  %113 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool92 = icmp ne i32 %113, 0
  br i1 %tobool92, label %for.body.93, label %for.end.124

for.body.93:                                      ; preds = %for.cond.91
  %114 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom94 = sext i32 %114 to i64
  %115 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i16, i16* %115, i64 %idxprom94
  %116 = load i16, i16* %arrayidx95, align 2, !tbaa !24
  %conv96 = zext i16 %116 to i32
  store i32 %conv96, i32* %c1, align 4, !tbaa !19
  %117 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom97 = sext i32 %117 to i64
  %118 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i16, i16* %118, i64 %idxprom97
  %119 = load i16, i16* %arrayidx98, align 2, !tbaa !24
  %conv99 = zext i16 %119 to i32
  store i32 %conv99, i32* %c2, align 4, !tbaa !19
  %120 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom100 = sext i32 %120 to i64
  %121 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i16, i16* %121, i64 %idxprom100
  %122 = load i16, i16* %arrayidx101, align 2, !tbaa !24
  %conv102 = zext i16 %122 to i32
  store i32 %conv102, i32* %c3, align 4, !tbaa !19
  %123 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i16, i16* %123, i32 1
  store i16* %incdec.ptr103, i16** %LutTable, align 8, !tbaa !1
  %124 = load i16, i16* %123, align 2, !tbaa !24
  %conv104 = zext i16 %124 to i32
  store i32 %conv104, i32* %c0, align 4, !tbaa !19
  %125 = load i32, i32* %c1, align 4, !tbaa !19
  %126 = load i32, i32* %c2, align 4, !tbaa !19
  %sub105 = sub nsw i32 %126, %125
  store i32 %sub105, i32* %c2, align 4, !tbaa !19
  %127 = load i32, i32* %c3, align 4, !tbaa !19
  %128 = load i32, i32* %c1, align 4, !tbaa !19
  %sub106 = sub nsw i32 %128, %127
  store i32 %sub106, i32* %c1, align 4, !tbaa !19
  %129 = load i32, i32* %c0, align 4, !tbaa !19
  %130 = load i32, i32* %c3, align 4, !tbaa !19
  %sub107 = sub nsw i32 %130, %129
  store i32 %sub107, i32* %c3, align 4, !tbaa !19
  %131 = load i32, i32* %c1, align 4, !tbaa !19
  %132 = load i32, i32* %rx, align 4, !tbaa !19
  %mul108 = mul nsw i32 %131, %132
  %133 = load i32, i32* %c2, align 4, !tbaa !19
  %134 = load i32, i32* %ry, align 4, !tbaa !19
  %mul109 = mul nsw i32 %133, %134
  %add110 = add nsw i32 %mul108, %mul109
  %135 = load i32, i32* %c3, align 4, !tbaa !19
  %136 = load i32, i32* %rz, align 4, !tbaa !19
  %mul111 = mul nsw i32 %135, %136
  %add112 = add nsw i32 %add110, %mul111
  %add113 = add nsw i32 %add112, 32769
  store i32 %add113, i32* %Rest, align 4, !tbaa !19
  %137 = load i32, i32* %c0, align 4, !tbaa !19
  %conv114 = trunc i32 %137 to i16
  %conv115 = zext i16 %conv114 to i32
  %138 = load i32, i32* %Rest, align 4, !tbaa !19
  %139 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr116 = ashr i32 %139, 16
  %add117 = add nsw i32 %138, %shr116
  %shr118 = ashr i32 %add117, 16
  %add119 = add nsw i32 %conv115, %shr118
  %conv120 = trunc i32 %add119 to i16
  %140 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i16, i16* %140, i32 1
  store i16* %incdec.ptr121, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv120, i16* %140, align 2, !tbaa !24
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.93
  %141 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec123 = add i32 %141, -1
  store i32 %dec123, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond.91

for.end.124:                                      ; preds = %for.cond.91
  br label %if.end

if.else.125:                                      ; preds = %if.else
  %142 = load i32, i32* %X1, align 4, !tbaa !19
  %143 = load i32, i32* %Z1, align 4, !tbaa !19
  %add126 = add nsw i32 %143, %142
  store i32 %add126, i32* %Z1, align 4, !tbaa !19
  %144 = load i32, i32* %Z1, align 4, !tbaa !19
  %145 = load i32, i32* %Y1, align 4, !tbaa !19
  %add127 = add nsw i32 %145, %144
  store i32 %add127, i32* %Y1, align 4, !tbaa !19
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.159, %if.else.125
  %146 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool129 = icmp ne i32 %146, 0
  br i1 %tobool129, label %for.body.130, label %for.end.161

for.body.130:                                     ; preds = %for.cond.128
  %147 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom131 = sext i32 %147 to i64
  %148 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i16, i16* %148, i64 %idxprom131
  %149 = load i16, i16* %arrayidx132, align 2, !tbaa !24
  %conv133 = zext i16 %149 to i32
  store i32 %conv133, i32* %c1, align 4, !tbaa !19
  %150 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom134 = sext i32 %150 to i64
  %151 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i16, i16* %151, i64 %idxprom134
  %152 = load i16, i16* %arrayidx135, align 2, !tbaa !24
  %conv136 = zext i16 %152 to i32
  store i32 %conv136, i32* %c2, align 4, !tbaa !19
  %153 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom137 = sext i32 %153 to i64
  %154 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i16, i16* %154, i64 %idxprom137
  %155 = load i16, i16* %arrayidx138, align 2, !tbaa !24
  %conv139 = zext i16 %155 to i32
  store i32 %conv139, i32* %c3, align 4, !tbaa !19
  %156 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr140 = getelementptr inbounds i16, i16* %156, i32 1
  store i16* %incdec.ptr140, i16** %LutTable, align 8, !tbaa !1
  %157 = load i16, i16* %156, align 2, !tbaa !24
  %conv141 = zext i16 %157 to i32
  store i32 %conv141, i32* %c0, align 4, !tbaa !19
  %158 = load i32, i32* %c3, align 4, !tbaa !19
  %159 = load i32, i32* %c2, align 4, !tbaa !19
  %sub142 = sub nsw i32 %159, %158
  store i32 %sub142, i32* %c2, align 4, !tbaa !19
  %160 = load i32, i32* %c1, align 4, !tbaa !19
  %161 = load i32, i32* %c3, align 4, !tbaa !19
  %sub143 = sub nsw i32 %161, %160
  store i32 %sub143, i32* %c3, align 4, !tbaa !19
  %162 = load i32, i32* %c0, align 4, !tbaa !19
  %163 = load i32, i32* %c1, align 4, !tbaa !19
  %sub144 = sub nsw i32 %163, %162
  store i32 %sub144, i32* %c1, align 4, !tbaa !19
  %164 = load i32, i32* %c1, align 4, !tbaa !19
  %165 = load i32, i32* %rx, align 4, !tbaa !19
  %mul145 = mul nsw i32 %164, %165
  %166 = load i32, i32* %c2, align 4, !tbaa !19
  %167 = load i32, i32* %ry, align 4, !tbaa !19
  %mul146 = mul nsw i32 %166, %167
  %add147 = add nsw i32 %mul145, %mul146
  %168 = load i32, i32* %c3, align 4, !tbaa !19
  %169 = load i32, i32* %rz, align 4, !tbaa !19
  %mul148 = mul nsw i32 %168, %169
  %add149 = add nsw i32 %add147, %mul148
  %add150 = add nsw i32 %add149, 32769
  store i32 %add150, i32* %Rest, align 4, !tbaa !19
  %170 = load i32, i32* %c0, align 4, !tbaa !19
  %conv151 = trunc i32 %170 to i16
  %conv152 = zext i16 %conv151 to i32
  %171 = load i32, i32* %Rest, align 4, !tbaa !19
  %172 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr153 = ashr i32 %172, 16
  %add154 = add nsw i32 %171, %shr153
  %shr155 = ashr i32 %add154, 16
  %add156 = add nsw i32 %conv152, %shr155
  %conv157 = trunc i32 %add156 to i16
  %173 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr158 = getelementptr inbounds i16, i16* %173, i32 1
  store i16* %incdec.ptr158, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv157, i16* %173, align 2, !tbaa !24
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.130
  %174 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec160 = add i32 %174, -1
  store i32 %dec160, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond.128

for.end.161:                                      ; preds = %for.cond.128
  br label %if.end

if.end:                                           ; preds = %for.end.161, %for.end.124
  br label %if.end.162

if.end.162:                                       ; preds = %if.end, %for.end
  br label %if.end.282

if.else.163:                                      ; preds = %cond.end.49
  %175 = load i32, i32* %rx, align 4, !tbaa !19
  %176 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp164 = icmp sge i32 %175, %176
  br i1 %cmp164, label %if.then.166, label %if.else.203

if.then.166:                                      ; preds = %if.else.163
  %177 = load i32, i32* %Y1, align 4, !tbaa !19
  %178 = load i32, i32* %X1, align 4, !tbaa !19
  %add167 = add nsw i32 %178, %177
  store i32 %add167, i32* %X1, align 4, !tbaa !19
  %179 = load i32, i32* %X1, align 4, !tbaa !19
  %180 = load i32, i32* %Z1, align 4, !tbaa !19
  %add168 = add nsw i32 %180, %179
  store i32 %add168, i32* %Z1, align 4, !tbaa !19
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.200, %if.then.166
  %181 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool170 = icmp ne i32 %181, 0
  br i1 %tobool170, label %for.body.171, label %for.end.202

for.body.171:                                     ; preds = %for.cond.169
  %182 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom172 = sext i32 %182 to i64
  %183 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i16, i16* %183, i64 %idxprom172
  %184 = load i16, i16* %arrayidx173, align 2, !tbaa !24
  %conv174 = zext i16 %184 to i32
  store i32 %conv174, i32* %c1, align 4, !tbaa !19
  %185 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom175 = sext i32 %185 to i64
  %186 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i16, i16* %186, i64 %idxprom175
  %187 = load i16, i16* %arrayidx176, align 2, !tbaa !24
  %conv177 = zext i16 %187 to i32
  store i32 %conv177, i32* %c2, align 4, !tbaa !19
  %188 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom178 = sext i32 %188 to i64
  %189 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i16, i16* %189, i64 %idxprom178
  %190 = load i16, i16* %arrayidx179, align 2, !tbaa !24
  %conv180 = zext i16 %190 to i32
  store i32 %conv180, i32* %c3, align 4, !tbaa !19
  %191 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr181 = getelementptr inbounds i16, i16* %191, i32 1
  store i16* %incdec.ptr181, i16** %LutTable, align 8, !tbaa !1
  %192 = load i16, i16* %191, align 2, !tbaa !24
  %conv182 = zext i16 %192 to i32
  store i32 %conv182, i32* %c0, align 4, !tbaa !19
  %193 = load i32, i32* %c1, align 4, !tbaa !19
  %194 = load i32, i32* %c3, align 4, !tbaa !19
  %sub183 = sub nsw i32 %194, %193
  store i32 %sub183, i32* %c3, align 4, !tbaa !19
  %195 = load i32, i32* %c2, align 4, !tbaa !19
  %196 = load i32, i32* %c1, align 4, !tbaa !19
  %sub184 = sub nsw i32 %196, %195
  store i32 %sub184, i32* %c1, align 4, !tbaa !19
  %197 = load i32, i32* %c0, align 4, !tbaa !19
  %198 = load i32, i32* %c2, align 4, !tbaa !19
  %sub185 = sub nsw i32 %198, %197
  store i32 %sub185, i32* %c2, align 4, !tbaa !19
  %199 = load i32, i32* %c1, align 4, !tbaa !19
  %200 = load i32, i32* %rx, align 4, !tbaa !19
  %mul186 = mul nsw i32 %199, %200
  %201 = load i32, i32* %c2, align 4, !tbaa !19
  %202 = load i32, i32* %ry, align 4, !tbaa !19
  %mul187 = mul nsw i32 %201, %202
  %add188 = add nsw i32 %mul186, %mul187
  %203 = load i32, i32* %c3, align 4, !tbaa !19
  %204 = load i32, i32* %rz, align 4, !tbaa !19
  %mul189 = mul nsw i32 %203, %204
  %add190 = add nsw i32 %add188, %mul189
  %add191 = add nsw i32 %add190, 32769
  store i32 %add191, i32* %Rest, align 4, !tbaa !19
  %205 = load i32, i32* %c0, align 4, !tbaa !19
  %conv192 = trunc i32 %205 to i16
  %conv193 = zext i16 %conv192 to i32
  %206 = load i32, i32* %Rest, align 4, !tbaa !19
  %207 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr194 = ashr i32 %207, 16
  %add195 = add nsw i32 %206, %shr194
  %shr196 = ashr i32 %add195, 16
  %add197 = add nsw i32 %conv193, %shr196
  %conv198 = trunc i32 %add197 to i16
  %208 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr199 = getelementptr inbounds i16, i16* %208, i32 1
  store i16* %incdec.ptr199, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv198, i16* %208, align 2, !tbaa !24
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.171
  %209 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec201 = add i32 %209, -1
  store i32 %dec201, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond.169

for.end.202:                                      ; preds = %for.cond.169
  br label %if.end.281

if.else.203:                                      ; preds = %if.else.163
  %210 = load i32, i32* %ry, align 4, !tbaa !19
  %211 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp204 = icmp sge i32 %210, %211
  br i1 %cmp204, label %if.then.206, label %if.else.243

if.then.206:                                      ; preds = %if.else.203
  %212 = load i32, i32* %Y1, align 4, !tbaa !19
  %213 = load i32, i32* %Z1, align 4, !tbaa !19
  %add207 = add nsw i32 %213, %212
  store i32 %add207, i32* %Z1, align 4, !tbaa !19
  %214 = load i32, i32* %Z1, align 4, !tbaa !19
  %215 = load i32, i32* %X1, align 4, !tbaa !19
  %add208 = add nsw i32 %215, %214
  store i32 %add208, i32* %X1, align 4, !tbaa !19
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.240, %if.then.206
  %216 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool210 = icmp ne i32 %216, 0
  br i1 %tobool210, label %for.body.211, label %for.end.242

for.body.211:                                     ; preds = %for.cond.209
  %217 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom212 = sext i32 %217 to i64
  %218 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i16, i16* %218, i64 %idxprom212
  %219 = load i16, i16* %arrayidx213, align 2, !tbaa !24
  %conv214 = zext i16 %219 to i32
  store i32 %conv214, i32* %c1, align 4, !tbaa !19
  %220 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom215 = sext i32 %220 to i64
  %221 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i16, i16* %221, i64 %idxprom215
  %222 = load i16, i16* %arrayidx216, align 2, !tbaa !24
  %conv217 = zext i16 %222 to i32
  store i32 %conv217, i32* %c2, align 4, !tbaa !19
  %223 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom218 = sext i32 %223 to i64
  %224 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i16, i16* %224, i64 %idxprom218
  %225 = load i16, i16* %arrayidx219, align 2, !tbaa !24
  %conv220 = zext i16 %225 to i32
  store i32 %conv220, i32* %c3, align 4, !tbaa !19
  %226 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr221 = getelementptr inbounds i16, i16* %226, i32 1
  store i16* %incdec.ptr221, i16** %LutTable, align 8, !tbaa !1
  %227 = load i16, i16* %226, align 2, !tbaa !24
  %conv222 = zext i16 %227 to i32
  store i32 %conv222, i32* %c0, align 4, !tbaa !19
  %228 = load i32, i32* %c3, align 4, !tbaa !19
  %229 = load i32, i32* %c1, align 4, !tbaa !19
  %sub223 = sub nsw i32 %229, %228
  store i32 %sub223, i32* %c1, align 4, !tbaa !19
  %230 = load i32, i32* %c2, align 4, !tbaa !19
  %231 = load i32, i32* %c3, align 4, !tbaa !19
  %sub224 = sub nsw i32 %231, %230
  store i32 %sub224, i32* %c3, align 4, !tbaa !19
  %232 = load i32, i32* %c0, align 4, !tbaa !19
  %233 = load i32, i32* %c2, align 4, !tbaa !19
  %sub225 = sub nsw i32 %233, %232
  store i32 %sub225, i32* %c2, align 4, !tbaa !19
  %234 = load i32, i32* %c1, align 4, !tbaa !19
  %235 = load i32, i32* %rx, align 4, !tbaa !19
  %mul226 = mul nsw i32 %234, %235
  %236 = load i32, i32* %c2, align 4, !tbaa !19
  %237 = load i32, i32* %ry, align 4, !tbaa !19
  %mul227 = mul nsw i32 %236, %237
  %add228 = add nsw i32 %mul226, %mul227
  %238 = load i32, i32* %c3, align 4, !tbaa !19
  %239 = load i32, i32* %rz, align 4, !tbaa !19
  %mul229 = mul nsw i32 %238, %239
  %add230 = add nsw i32 %add228, %mul229
  %add231 = add nsw i32 %add230, 32769
  store i32 %add231, i32* %Rest, align 4, !tbaa !19
  %240 = load i32, i32* %c0, align 4, !tbaa !19
  %conv232 = trunc i32 %240 to i16
  %conv233 = zext i16 %conv232 to i32
  %241 = load i32, i32* %Rest, align 4, !tbaa !19
  %242 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr234 = ashr i32 %242, 16
  %add235 = add nsw i32 %241, %shr234
  %shr236 = ashr i32 %add235, 16
  %add237 = add nsw i32 %conv233, %shr236
  %conv238 = trunc i32 %add237 to i16
  %243 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i16, i16* %243, i32 1
  store i16* %incdec.ptr239, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv238, i16* %243, align 2, !tbaa !24
  br label %for.inc.240

for.inc.240:                                      ; preds = %for.body.211
  %244 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec241 = add i32 %244, -1
  store i32 %dec241, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond.209

for.end.242:                                      ; preds = %for.cond.209
  br label %if.end.280

if.else.243:                                      ; preds = %if.else.203
  %245 = load i32, i32* %Z1, align 4, !tbaa !19
  %246 = load i32, i32* %Y1, align 4, !tbaa !19
  %add244 = add nsw i32 %246, %245
  store i32 %add244, i32* %Y1, align 4, !tbaa !19
  %247 = load i32, i32* %Y1, align 4, !tbaa !19
  %248 = load i32, i32* %X1, align 4, !tbaa !19
  %add245 = add nsw i32 %248, %247
  store i32 %add245, i32* %X1, align 4, !tbaa !19
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.277, %if.else.243
  %249 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %tobool247 = icmp ne i32 %249, 0
  br i1 %tobool247, label %for.body.248, label %for.end.279

for.body.248:                                     ; preds = %for.cond.246
  %250 = load i32, i32* %X1, align 4, !tbaa !19
  %idxprom249 = sext i32 %250 to i64
  %251 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i16, i16* %251, i64 %idxprom249
  %252 = load i16, i16* %arrayidx250, align 2, !tbaa !24
  %conv251 = zext i16 %252 to i32
  store i32 %conv251, i32* %c1, align 4, !tbaa !19
  %253 = load i32, i32* %Y1, align 4, !tbaa !19
  %idxprom252 = sext i32 %253 to i64
  %254 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds i16, i16* %254, i64 %idxprom252
  %255 = load i16, i16* %arrayidx253, align 2, !tbaa !24
  %conv254 = zext i16 %255 to i32
  store i32 %conv254, i32* %c2, align 4, !tbaa !19
  %256 = load i32, i32* %Z1, align 4, !tbaa !19
  %idxprom255 = sext i32 %256 to i64
  %257 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i16, i16* %257, i64 %idxprom255
  %258 = load i16, i16* %arrayidx256, align 2, !tbaa !24
  %conv257 = zext i16 %258 to i32
  store i32 %conv257, i32* %c3, align 4, !tbaa !19
  %259 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %incdec.ptr258 = getelementptr inbounds i16, i16* %259, i32 1
  store i16* %incdec.ptr258, i16** %LutTable, align 8, !tbaa !1
  %260 = load i16, i16* %259, align 2, !tbaa !24
  %conv259 = zext i16 %260 to i32
  store i32 %conv259, i32* %c0, align 4, !tbaa !19
  %261 = load i32, i32* %c2, align 4, !tbaa !19
  %262 = load i32, i32* %c1, align 4, !tbaa !19
  %sub260 = sub nsw i32 %262, %261
  store i32 %sub260, i32* %c1, align 4, !tbaa !19
  %263 = load i32, i32* %c3, align 4, !tbaa !19
  %264 = load i32, i32* %c2, align 4, !tbaa !19
  %sub261 = sub nsw i32 %264, %263
  store i32 %sub261, i32* %c2, align 4, !tbaa !19
  %265 = load i32, i32* %c0, align 4, !tbaa !19
  %266 = load i32, i32* %c3, align 4, !tbaa !19
  %sub262 = sub nsw i32 %266, %265
  store i32 %sub262, i32* %c3, align 4, !tbaa !19
  %267 = load i32, i32* %c1, align 4, !tbaa !19
  %268 = load i32, i32* %rx, align 4, !tbaa !19
  %mul263 = mul nsw i32 %267, %268
  %269 = load i32, i32* %c2, align 4, !tbaa !19
  %270 = load i32, i32* %ry, align 4, !tbaa !19
  %mul264 = mul nsw i32 %269, %270
  %add265 = add nsw i32 %mul263, %mul264
  %271 = load i32, i32* %c3, align 4, !tbaa !19
  %272 = load i32, i32* %rz, align 4, !tbaa !19
  %mul266 = mul nsw i32 %271, %272
  %add267 = add nsw i32 %add265, %mul266
  %add268 = add nsw i32 %add267, 32769
  store i32 %add268, i32* %Rest, align 4, !tbaa !19
  %273 = load i32, i32* %c0, align 4, !tbaa !19
  %conv269 = trunc i32 %273 to i16
  %conv270 = zext i16 %conv269 to i32
  %274 = load i32, i32* %Rest, align 4, !tbaa !19
  %275 = load i32, i32* %Rest, align 4, !tbaa !19
  %shr271 = ashr i32 %275, 16
  %add272 = add nsw i32 %274, %shr271
  %shr273 = ashr i32 %add272, 16
  %add274 = add nsw i32 %conv270, %shr273
  %conv275 = trunc i32 %add274 to i16
  %276 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %incdec.ptr276 = getelementptr inbounds i16, i16* %276, i32 1
  store i16* %incdec.ptr276, i16** %Output.addr, align 8, !tbaa !1
  store i16 %conv275, i16* %276, align 2, !tbaa !24
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.248
  %277 = load i32, i32* %TotalOut, align 4, !tbaa !19
  %dec278 = add i32 %277, -1
  store i32 %dec278, i32* %TotalOut, align 4, !tbaa !19
  br label %for.cond.246

for.end.279:                                      ; preds = %for.cond.246
  br label %if.end.280

if.end.280:                                       ; preds = %for.end.279, %for.end.242
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %for.end.202
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.162
  %278 = bitcast i32* %TotalOut to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval4InputsFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %rest = alloca float, align 4
  %pk = alloca float, align 4
  %k0 = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca float*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x float], align 16
  %Tmp2 = alloca [128 x float], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  %y0 = alloca float, align 4
  %y1 = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %pk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %15) #8
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %17 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %pk, align 4, !tbaa !22
  %18 = load float, float* %pk, align 4, !tbaa !22
  %conv2 = fpext float %18 to double
  %call3 = call i32 @_cmsQuickFloor(double %conv2) #8
  store i32 %call3, i32* %k0, align 4, !tbaa !19
  %19 = load float, float* %pk, align 4, !tbaa !22
  %20 = load i32, i32* %k0, align 4, !tbaa !19
  %conv4 = sitofp i32 %20 to float
  %sub = fsub float %19, %conv4
  store float %sub, float* %rest, align 4, !tbaa !22
  %21 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %21, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 3
  %22 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %23 = load i32, i32* %k0, align 4, !tbaa !19
  %mul6 = mul i32 %22, %23
  store i32 %mul6, i32* %K0, align 4, !tbaa !19
  %24 = load i32, i32* %K0, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx7, align 4, !tbaa !22
  %conv8 = fpext float %26 to double
  %cmp = fcmp oge double %conv8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %opta10, i32 0, i64 3
  %28 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %add = add i32 %24, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %30 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %31 = bitcast %struct._cms_interp_struc* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 0
  %32 = bitcast i32* %arrayidx13 to i8*
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 1
  %34 = bitcast i32* %arrayidx15 to i8*
  %call16 = call i8* @memmove(i8* %32, i8* %34, i64 12) #9
  %35 = load float*, float** %LutTable, align 8, !tbaa !1
  %36 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds float, float* %35, i64 %idx.ext
  store float* %add.ptr, float** %T, align 8, !tbaa !1
  %37 = load float*, float** %T, align 8, !tbaa !1
  %38 = bitcast float* %37 to i8*
  %Table17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %38, i8** %Table17, align 8, !tbaa !20
  %39 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds float, float* %39, i64 1
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i32 0
  call void @TetrahedralInterpFloat(float* %add.ptr18, float* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %40 = load float*, float** %LutTable, align 8, !tbaa !1
  %41 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext19 = sext i32 %41 to i64
  %add.ptr20 = getelementptr inbounds float, float* %40, i64 %idx.ext19
  store float* %add.ptr20, float** %T, align 8, !tbaa !1
  %42 = load float*, float** %T, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %Table21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %43, i8** %Table21, align 8, !tbaa !20
  %44 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds float, float* %44, i64 1
  %arraydecay23 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i32 0
  call void @TetrahedralInterpFloat(float* %add.ptr22, float* %arraydecay23, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 3
  %47 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp24 = icmp ult i32 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %50, float* %y0, align 4, !tbaa !22
  %51 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = zext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i64 %idxprom27
  %53 = load float, float* %arrayidx28, align 4, !tbaa !22
  store float %53, float* %y1, align 4, !tbaa !22
  %54 = load float, float* %y0, align 4, !tbaa !22
  %55 = load float, float* %y1, align 4, !tbaa !22
  %56 = load float, float* %y0, align 4, !tbaa !22
  %sub29 = fsub float %55, %56
  %57 = load float, float* %rest, align 4, !tbaa !22
  %mul30 = fmul float %sub29, %57
  %add31 = fadd float %54, %mul30
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom32 = zext i32 %58 to i64
  %59 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %59, i64 %idxprom32
  store float %add31, float* %arrayidx33, align 4, !tbaa !22
  %60 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %63) #1
  %64 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %64) #1
  %65 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast float* %pk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval4Inputs(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %fz = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rz = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %z0 = alloca i32, align 4
  %X0 = alloca i32, align 4
  %X1 = alloca i32, align 4
  %Y0 = alloca i32, align 4
  %Y1 = alloca i32, align 4
  %Z0 = alloca i32, align 4
  %Z1 = alloca i32, align 4
  %i = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %Rest = alloca i32, align 4
  %OutChan = alloca i32, align 4
  %Tmp1 = alloca [128 x i16], align 16
  %Tmp2 = alloca [128 x i16], align 16
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %28) #1
  %29 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %29) #1
  %30 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %31 to i32
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %33 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %33
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %34 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %34, i64 1
  %35 = load i16, i16* %arrayidx2, align 2, !tbaa !24
  %conv3 = zext i16 %35 to i32
  %36 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %36, i32 0, i32 5
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain4, i32 0, i64 1
  %37 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %mul6 = mul i32 %conv3, %37
  %call7 = call i32 @_cmsToFixedDomain(i32 %mul6) #8
  store i32 %call7, i32* %fx, align 4, !tbaa !19
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %38, i64 2
  %39 = load i16, i16* %arrayidx8, align 2, !tbaa !24
  %conv9 = zext i16 %39 to i32
  %40 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %40, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 2
  %41 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  %mul12 = mul i32 %conv9, %41
  %call13 = call i32 @_cmsToFixedDomain(i32 %mul12) #8
  store i32 %call13, i32* %fy, align 4, !tbaa !19
  %42 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %42, i64 3
  %43 = load i16, i16* %arrayidx14, align 2, !tbaa !24
  %conv15 = zext i16 %43 to i32
  %44 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain16 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %44, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain16, i32 0, i64 3
  %45 = load i32, i32* %arrayidx17, align 4, !tbaa !19
  %mul18 = mul i32 %conv15, %45
  %call19 = call i32 @_cmsToFixedDomain(i32 %mul18) #8
  store i32 %call19, i32* %fz, align 4, !tbaa !19
  %46 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %46, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %47 = load i32, i32* %fx, align 4, !tbaa !19
  %shr20 = ashr i32 %47, 16
  store i32 %shr20, i32* %x0, align 4, !tbaa !19
  %48 = load i32, i32* %fy, align 4, !tbaa !19
  %shr21 = ashr i32 %48, 16
  store i32 %shr21, i32* %y0, align 4, !tbaa !19
  %49 = load i32, i32* %fz, align 4, !tbaa !19
  %shr22 = ashr i32 %49, 16
  store i32 %shr22, i32* %z0, align 4, !tbaa !19
  %50 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %50, 65535
  store i32 %and, i32* %rk, align 4, !tbaa !19
  %51 = load i32, i32* %fx, align 4, !tbaa !19
  %and23 = and i32 %51, 65535
  store i32 %and23, i32* %rx, align 4, !tbaa !19
  %52 = load i32, i32* %fy, align 4, !tbaa !19
  %and24 = and i32 %52, 65535
  store i32 %and24, i32* %ry, align 4, !tbaa !19
  %53 = load i32, i32* %fz, align 4, !tbaa !19
  %and25 = and i32 %53, 65535
  store i32 %and25, i32* %rz, align 4, !tbaa !19
  %54 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %54, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 3
  %55 = load i32, i32* %arrayidx26, align 4, !tbaa !19
  %56 = load i32, i32* %k0, align 4, !tbaa !19
  %mul27 = mul i32 %55, %56
  store i32 %mul27, i32* %K0, align 4, !tbaa !19
  %57 = load i32, i32* %K0, align 4, !tbaa !19
  %58 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %58, i64 0
  %59 = load i16, i16* %arrayidx28, align 2, !tbaa !24
  %conv29 = zext i16 %59 to i32
  %cmp = icmp eq i32 %conv29, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %60 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta31 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %60, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %opta31, i32 0, i64 3
  %61 = load i32, i32* %arrayidx32, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %61, %cond.false ]
  %add = add i32 %57, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %62 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta33 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %62, i32 0, i32 6
  %arrayidx34 = getelementptr inbounds [8 x i32], [8 x i32]* %opta33, i32 0, i64 2
  %63 = load i32, i32* %arrayidx34, align 4, !tbaa !19
  %64 = load i32, i32* %x0, align 4, !tbaa !19
  %mul35 = mul i32 %63, %64
  store i32 %mul35, i32* %X0, align 4, !tbaa !19
  %65 = load i32, i32* %X0, align 4, !tbaa !19
  %66 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i16, i16* %66, i64 1
  %67 = load i16, i16* %arrayidx36, align 2, !tbaa !24
  %conv37 = zext i16 %67 to i32
  %cmp38 = icmp eq i32 %conv37, 65535
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %cond.end
  br label %cond.end.44

cond.false.41:                                    ; preds = %cond.end
  %68 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta42 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %68, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %opta42, i32 0, i64 2
  %69 = load i32, i32* %arrayidx43, align 4, !tbaa !19
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ 0, %cond.true.40 ], [ %69, %cond.false.41 ]
  %add46 = add i32 %65, %cond45
  store i32 %add46, i32* %X1, align 4, !tbaa !19
  %70 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta47 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %70, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %opta47, i32 0, i64 1
  %71 = load i32, i32* %arrayidx48, align 4, !tbaa !19
  %72 = load i32, i32* %y0, align 4, !tbaa !19
  %mul49 = mul i32 %71, %72
  store i32 %mul49, i32* %Y0, align 4, !tbaa !19
  %73 = load i32, i32* %Y0, align 4, !tbaa !19
  %74 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %74, i64 2
  %75 = load i16, i16* %arrayidx50, align 2, !tbaa !24
  %conv51 = zext i16 %75 to i32
  %cmp52 = icmp eq i32 %conv51, 65535
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %cond.end.44
  br label %cond.end.58

cond.false.55:                                    ; preds = %cond.end.44
  %76 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta56 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %76, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %opta56, i32 0, i64 1
  %77 = load i32, i32* %arrayidx57, align 4, !tbaa !19
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.55, %cond.true.54
  %cond59 = phi i32 [ 0, %cond.true.54 ], [ %77, %cond.false.55 ]
  %add60 = add i32 %73, %cond59
  store i32 %add60, i32* %Y1, align 4, !tbaa !19
  %78 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta61 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %78, i32 0, i32 6
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %opta61, i32 0, i64 0
  %79 = load i32, i32* %arrayidx62, align 4, !tbaa !19
  %80 = load i32, i32* %z0, align 4, !tbaa !19
  %mul63 = mul i32 %79, %80
  store i32 %mul63, i32* %Z0, align 4, !tbaa !19
  %81 = load i32, i32* %Z0, align 4, !tbaa !19
  %82 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %82, i64 3
  %83 = load i16, i16* %arrayidx64, align 2, !tbaa !24
  %conv65 = zext i16 %83 to i32
  %cmp66 = icmp eq i32 %conv65, 65535
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.end.58
  br label %cond.end.72

cond.false.69:                                    ; preds = %cond.end.58
  %84 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta70 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %84, i32 0, i32 6
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %opta70, i32 0, i64 0
  %85 = load i32, i32* %arrayidx71, align 4, !tbaa !19
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.true.68
  %cond73 = phi i32 [ 0, %cond.true.68 ], [ %85, %cond.false.69 ]
  %add74 = add i32 %81, %cond73
  store i32 %add74, i32* %Z1, align 4, !tbaa !19
  %86 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %86, i32 0, i32 7
  %87 = load i8*, i8** %Table, align 8, !tbaa !20
  %88 = bitcast i8* %87 to i16*
  store i16* %88, i16** %LutTable, align 8, !tbaa !1
  %89 = load i32, i32* %K0, align 4, !tbaa !19
  %90 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %idx.ext = sext i32 %89 to i64
  %add.ptr = getelementptr inbounds i16, i16* %90, i64 %idx.ext
  store i16* %add.ptr, i16** %LutTable, align 8, !tbaa !1
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.72
  %91 = load i32, i32* %OutChan, align 4, !tbaa !19
  %92 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %92, i32 0, i32 3
  %93 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp75 = icmp ult i32 %91, %93
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load i32, i32* %X0, align 4, !tbaa !19
  %95 = load i32, i32* %Y0, align 4, !tbaa !19
  %add77 = add nsw i32 %94, %95
  %96 = load i32, i32* %Z0, align 4, !tbaa !19
  %add78 = add nsw i32 %add77, %96
  %97 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add79 = add i32 %add78, %97
  %idxprom = zext i32 %add79 to i64
  %98 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i16, i16* %98, i64 %idxprom
  %99 = load i16, i16* %arrayidx80, align 2, !tbaa !24
  %conv81 = zext i16 %99 to i32
  store i32 %conv81, i32* %c0, align 4, !tbaa !19
  %100 = load i32, i32* %rx, align 4, !tbaa !19
  %101 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp82 = icmp sge i32 %100, %101
  br i1 %cmp82, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %102 = load i32, i32* %ry, align 4, !tbaa !19
  %103 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp84 = icmp sge i32 %102, %103
  br i1 %cmp84, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %104 = load i32, i32* %X1, align 4, !tbaa !19
  %105 = load i32, i32* %Y0, align 4, !tbaa !19
  %add86 = add nsw i32 %104, %105
  %106 = load i32, i32* %Z0, align 4, !tbaa !19
  %add87 = add nsw i32 %add86, %106
  %107 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add88 = add i32 %add87, %107
  %idxprom89 = zext i32 %add88 to i64
  %108 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i16, i16* %108, i64 %idxprom89
  %109 = load i16, i16* %arrayidx90, align 2, !tbaa !24
  %conv91 = zext i16 %109 to i32
  %110 = load i32, i32* %c0, align 4, !tbaa !19
  %sub = sub nsw i32 %conv91, %110
  store i32 %sub, i32* %c1, align 4, !tbaa !19
  %111 = load i32, i32* %X1, align 4, !tbaa !19
  %112 = load i32, i32* %Y1, align 4, !tbaa !19
  %add92 = add nsw i32 %111, %112
  %113 = load i32, i32* %Z0, align 4, !tbaa !19
  %add93 = add nsw i32 %add92, %113
  %114 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add94 = add i32 %add93, %114
  %idxprom95 = zext i32 %add94 to i64
  %115 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i16, i16* %115, i64 %idxprom95
  %116 = load i16, i16* %arrayidx96, align 2, !tbaa !24
  %conv97 = zext i16 %116 to i32
  %117 = load i32, i32* %X1, align 4, !tbaa !19
  %118 = load i32, i32* %Y0, align 4, !tbaa !19
  %add98 = add nsw i32 %117, %118
  %119 = load i32, i32* %Z0, align 4, !tbaa !19
  %add99 = add nsw i32 %add98, %119
  %120 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add100 = add i32 %add99, %120
  %idxprom101 = zext i32 %add100 to i64
  %121 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i16, i16* %121, i64 %idxprom101
  %122 = load i16, i16* %arrayidx102, align 2, !tbaa !24
  %conv103 = zext i16 %122 to i32
  %sub104 = sub nsw i32 %conv97, %conv103
  store i32 %sub104, i32* %c2, align 4, !tbaa !19
  %123 = load i32, i32* %X1, align 4, !tbaa !19
  %124 = load i32, i32* %Y1, align 4, !tbaa !19
  %add105 = add nsw i32 %123, %124
  %125 = load i32, i32* %Z1, align 4, !tbaa !19
  %add106 = add nsw i32 %add105, %125
  %126 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add107 = add i32 %add106, %126
  %idxprom108 = zext i32 %add107 to i64
  %127 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i16, i16* %127, i64 %idxprom108
  %128 = load i16, i16* %arrayidx109, align 2, !tbaa !24
  %conv110 = zext i16 %128 to i32
  %129 = load i32, i32* %X1, align 4, !tbaa !19
  %130 = load i32, i32* %Y1, align 4, !tbaa !19
  %add111 = add nsw i32 %129, %130
  %131 = load i32, i32* %Z0, align 4, !tbaa !19
  %add112 = add nsw i32 %add111, %131
  %132 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add113 = add i32 %add112, %132
  %idxprom114 = zext i32 %add113 to i64
  %133 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i16, i16* %133, i64 %idxprom114
  %134 = load i16, i16* %arrayidx115, align 2, !tbaa !24
  %conv116 = zext i16 %134 to i32
  %sub117 = sub nsw i32 %conv110, %conv116
  store i32 %sub117, i32* %c3, align 4, !tbaa !19
  br label %if.end.322

if.else:                                          ; preds = %land.lhs.true, %for.body
  %135 = load i32, i32* %rx, align 4, !tbaa !19
  %136 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp118 = icmp sge i32 %135, %136
  br i1 %cmp118, label %land.lhs.true.120, label %if.else.157

land.lhs.true.120:                                ; preds = %if.else
  %137 = load i32, i32* %rz, align 4, !tbaa !19
  %138 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp121 = icmp sge i32 %137, %138
  br i1 %cmp121, label %if.then.123, label %if.else.157

if.then.123:                                      ; preds = %land.lhs.true.120
  %139 = load i32, i32* %X1, align 4, !tbaa !19
  %140 = load i32, i32* %Y0, align 4, !tbaa !19
  %add124 = add nsw i32 %139, %140
  %141 = load i32, i32* %Z0, align 4, !tbaa !19
  %add125 = add nsw i32 %add124, %141
  %142 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add126 = add i32 %add125, %142
  %idxprom127 = zext i32 %add126 to i64
  %143 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i16, i16* %143, i64 %idxprom127
  %144 = load i16, i16* %arrayidx128, align 2, !tbaa !24
  %conv129 = zext i16 %144 to i32
  %145 = load i32, i32* %c0, align 4, !tbaa !19
  %sub130 = sub nsw i32 %conv129, %145
  store i32 %sub130, i32* %c1, align 4, !tbaa !19
  %146 = load i32, i32* %X1, align 4, !tbaa !19
  %147 = load i32, i32* %Y1, align 4, !tbaa !19
  %add131 = add nsw i32 %146, %147
  %148 = load i32, i32* %Z1, align 4, !tbaa !19
  %add132 = add nsw i32 %add131, %148
  %149 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add133 = add i32 %add132, %149
  %idxprom134 = zext i32 %add133 to i64
  %150 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i16, i16* %150, i64 %idxprom134
  %151 = load i16, i16* %arrayidx135, align 2, !tbaa !24
  %conv136 = zext i16 %151 to i32
  %152 = load i32, i32* %X1, align 4, !tbaa !19
  %153 = load i32, i32* %Y0, align 4, !tbaa !19
  %add137 = add nsw i32 %152, %153
  %154 = load i32, i32* %Z1, align 4, !tbaa !19
  %add138 = add nsw i32 %add137, %154
  %155 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add139 = add i32 %add138, %155
  %idxprom140 = zext i32 %add139 to i64
  %156 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i16, i16* %156, i64 %idxprom140
  %157 = load i16, i16* %arrayidx141, align 2, !tbaa !24
  %conv142 = zext i16 %157 to i32
  %sub143 = sub nsw i32 %conv136, %conv142
  store i32 %sub143, i32* %c2, align 4, !tbaa !19
  %158 = load i32, i32* %X1, align 4, !tbaa !19
  %159 = load i32, i32* %Y0, align 4, !tbaa !19
  %add144 = add nsw i32 %158, %159
  %160 = load i32, i32* %Z1, align 4, !tbaa !19
  %add145 = add nsw i32 %add144, %160
  %161 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add146 = add i32 %add145, %161
  %idxprom147 = zext i32 %add146 to i64
  %162 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i16, i16* %162, i64 %idxprom147
  %163 = load i16, i16* %arrayidx148, align 2, !tbaa !24
  %conv149 = zext i16 %163 to i32
  %164 = load i32, i32* %X1, align 4, !tbaa !19
  %165 = load i32, i32* %Y0, align 4, !tbaa !19
  %add150 = add nsw i32 %164, %165
  %166 = load i32, i32* %Z0, align 4, !tbaa !19
  %add151 = add nsw i32 %add150, %166
  %167 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add152 = add i32 %add151, %167
  %idxprom153 = zext i32 %add152 to i64
  %168 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i16, i16* %168, i64 %idxprom153
  %169 = load i16, i16* %arrayidx154, align 2, !tbaa !24
  %conv155 = zext i16 %169 to i32
  %sub156 = sub nsw i32 %conv149, %conv155
  store i32 %sub156, i32* %c3, align 4, !tbaa !19
  br label %if.end.321

if.else.157:                                      ; preds = %land.lhs.true.120, %if.else
  %170 = load i32, i32* %rz, align 4, !tbaa !19
  %171 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp158 = icmp sge i32 %170, %171
  br i1 %cmp158, label %land.lhs.true.160, label %if.else.197

land.lhs.true.160:                                ; preds = %if.else.157
  %172 = load i32, i32* %rx, align 4, !tbaa !19
  %173 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp161 = icmp sge i32 %172, %173
  br i1 %cmp161, label %if.then.163, label %if.else.197

if.then.163:                                      ; preds = %land.lhs.true.160
  %174 = load i32, i32* %X1, align 4, !tbaa !19
  %175 = load i32, i32* %Y0, align 4, !tbaa !19
  %add164 = add nsw i32 %174, %175
  %176 = load i32, i32* %Z1, align 4, !tbaa !19
  %add165 = add nsw i32 %add164, %176
  %177 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add166 = add i32 %add165, %177
  %idxprom167 = zext i32 %add166 to i64
  %178 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i16, i16* %178, i64 %idxprom167
  %179 = load i16, i16* %arrayidx168, align 2, !tbaa !24
  %conv169 = zext i16 %179 to i32
  %180 = load i32, i32* %X0, align 4, !tbaa !19
  %181 = load i32, i32* %Y0, align 4, !tbaa !19
  %add170 = add nsw i32 %180, %181
  %182 = load i32, i32* %Z1, align 4, !tbaa !19
  %add171 = add nsw i32 %add170, %182
  %183 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add172 = add i32 %add171, %183
  %idxprom173 = zext i32 %add172 to i64
  %184 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i16, i16* %184, i64 %idxprom173
  %185 = load i16, i16* %arrayidx174, align 2, !tbaa !24
  %conv175 = zext i16 %185 to i32
  %sub176 = sub nsw i32 %conv169, %conv175
  store i32 %sub176, i32* %c1, align 4, !tbaa !19
  %186 = load i32, i32* %X1, align 4, !tbaa !19
  %187 = load i32, i32* %Y1, align 4, !tbaa !19
  %add177 = add nsw i32 %186, %187
  %188 = load i32, i32* %Z1, align 4, !tbaa !19
  %add178 = add nsw i32 %add177, %188
  %189 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add179 = add i32 %add178, %189
  %idxprom180 = zext i32 %add179 to i64
  %190 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i16, i16* %190, i64 %idxprom180
  %191 = load i16, i16* %arrayidx181, align 2, !tbaa !24
  %conv182 = zext i16 %191 to i32
  %192 = load i32, i32* %X1, align 4, !tbaa !19
  %193 = load i32, i32* %Y0, align 4, !tbaa !19
  %add183 = add nsw i32 %192, %193
  %194 = load i32, i32* %Z1, align 4, !tbaa !19
  %add184 = add nsw i32 %add183, %194
  %195 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add185 = add i32 %add184, %195
  %idxprom186 = zext i32 %add185 to i64
  %196 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i16, i16* %196, i64 %idxprom186
  %197 = load i16, i16* %arrayidx187, align 2, !tbaa !24
  %conv188 = zext i16 %197 to i32
  %sub189 = sub nsw i32 %conv182, %conv188
  store i32 %sub189, i32* %c2, align 4, !tbaa !19
  %198 = load i32, i32* %X0, align 4, !tbaa !19
  %199 = load i32, i32* %Y0, align 4, !tbaa !19
  %add190 = add nsw i32 %198, %199
  %200 = load i32, i32* %Z1, align 4, !tbaa !19
  %add191 = add nsw i32 %add190, %200
  %201 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add192 = add i32 %add191, %201
  %idxprom193 = zext i32 %add192 to i64
  %202 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i16, i16* %202, i64 %idxprom193
  %203 = load i16, i16* %arrayidx194, align 2, !tbaa !24
  %conv195 = zext i16 %203 to i32
  %204 = load i32, i32* %c0, align 4, !tbaa !19
  %sub196 = sub nsw i32 %conv195, %204
  store i32 %sub196, i32* %c3, align 4, !tbaa !19
  br label %if.end.320

if.else.197:                                      ; preds = %land.lhs.true.160, %if.else.157
  %205 = load i32, i32* %ry, align 4, !tbaa !19
  %206 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp198 = icmp sge i32 %205, %206
  br i1 %cmp198, label %land.lhs.true.200, label %if.else.237

land.lhs.true.200:                                ; preds = %if.else.197
  %207 = load i32, i32* %rx, align 4, !tbaa !19
  %208 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp201 = icmp sge i32 %207, %208
  br i1 %cmp201, label %if.then.203, label %if.else.237

if.then.203:                                      ; preds = %land.lhs.true.200
  %209 = load i32, i32* %X1, align 4, !tbaa !19
  %210 = load i32, i32* %Y1, align 4, !tbaa !19
  %add204 = add nsw i32 %209, %210
  %211 = load i32, i32* %Z0, align 4, !tbaa !19
  %add205 = add nsw i32 %add204, %211
  %212 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add206 = add i32 %add205, %212
  %idxprom207 = zext i32 %add206 to i64
  %213 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i16, i16* %213, i64 %idxprom207
  %214 = load i16, i16* %arrayidx208, align 2, !tbaa !24
  %conv209 = zext i16 %214 to i32
  %215 = load i32, i32* %X0, align 4, !tbaa !19
  %216 = load i32, i32* %Y1, align 4, !tbaa !19
  %add210 = add nsw i32 %215, %216
  %217 = load i32, i32* %Z0, align 4, !tbaa !19
  %add211 = add nsw i32 %add210, %217
  %218 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add212 = add i32 %add211, %218
  %idxprom213 = zext i32 %add212 to i64
  %219 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i16, i16* %219, i64 %idxprom213
  %220 = load i16, i16* %arrayidx214, align 2, !tbaa !24
  %conv215 = zext i16 %220 to i32
  %sub216 = sub nsw i32 %conv209, %conv215
  store i32 %sub216, i32* %c1, align 4, !tbaa !19
  %221 = load i32, i32* %X0, align 4, !tbaa !19
  %222 = load i32, i32* %Y1, align 4, !tbaa !19
  %add217 = add nsw i32 %221, %222
  %223 = load i32, i32* %Z0, align 4, !tbaa !19
  %add218 = add nsw i32 %add217, %223
  %224 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add219 = add i32 %add218, %224
  %idxprom220 = zext i32 %add219 to i64
  %225 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i16, i16* %225, i64 %idxprom220
  %226 = load i16, i16* %arrayidx221, align 2, !tbaa !24
  %conv222 = zext i16 %226 to i32
  %227 = load i32, i32* %c0, align 4, !tbaa !19
  %sub223 = sub nsw i32 %conv222, %227
  store i32 %sub223, i32* %c2, align 4, !tbaa !19
  %228 = load i32, i32* %X1, align 4, !tbaa !19
  %229 = load i32, i32* %Y1, align 4, !tbaa !19
  %add224 = add nsw i32 %228, %229
  %230 = load i32, i32* %Z1, align 4, !tbaa !19
  %add225 = add nsw i32 %add224, %230
  %231 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add226 = add i32 %add225, %231
  %idxprom227 = zext i32 %add226 to i64
  %232 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i16, i16* %232, i64 %idxprom227
  %233 = load i16, i16* %arrayidx228, align 2, !tbaa !24
  %conv229 = zext i16 %233 to i32
  %234 = load i32, i32* %X1, align 4, !tbaa !19
  %235 = load i32, i32* %Y1, align 4, !tbaa !19
  %add230 = add nsw i32 %234, %235
  %236 = load i32, i32* %Z0, align 4, !tbaa !19
  %add231 = add nsw i32 %add230, %236
  %237 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add232 = add i32 %add231, %237
  %idxprom233 = zext i32 %add232 to i64
  %238 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i16, i16* %238, i64 %idxprom233
  %239 = load i16, i16* %arrayidx234, align 2, !tbaa !24
  %conv235 = zext i16 %239 to i32
  %sub236 = sub nsw i32 %conv229, %conv235
  store i32 %sub236, i32* %c3, align 4, !tbaa !19
  br label %if.end.319

if.else.237:                                      ; preds = %land.lhs.true.200, %if.else.197
  %240 = load i32, i32* %ry, align 4, !tbaa !19
  %241 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp238 = icmp sge i32 %240, %241
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.277

land.lhs.true.240:                                ; preds = %if.else.237
  %242 = load i32, i32* %rz, align 4, !tbaa !19
  %243 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp241 = icmp sge i32 %242, %243
  br i1 %cmp241, label %if.then.243, label %if.else.277

if.then.243:                                      ; preds = %land.lhs.true.240
  %244 = load i32, i32* %X1, align 4, !tbaa !19
  %245 = load i32, i32* %Y1, align 4, !tbaa !19
  %add244 = add nsw i32 %244, %245
  %246 = load i32, i32* %Z1, align 4, !tbaa !19
  %add245 = add nsw i32 %add244, %246
  %247 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add246 = add i32 %add245, %247
  %idxprom247 = zext i32 %add246 to i64
  %248 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i16, i16* %248, i64 %idxprom247
  %249 = load i16, i16* %arrayidx248, align 2, !tbaa !24
  %conv249 = zext i16 %249 to i32
  %250 = load i32, i32* %X0, align 4, !tbaa !19
  %251 = load i32, i32* %Y1, align 4, !tbaa !19
  %add250 = add nsw i32 %250, %251
  %252 = load i32, i32* %Z1, align 4, !tbaa !19
  %add251 = add nsw i32 %add250, %252
  %253 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add252 = add i32 %add251, %253
  %idxprom253 = zext i32 %add252 to i64
  %254 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i16, i16* %254, i64 %idxprom253
  %255 = load i16, i16* %arrayidx254, align 2, !tbaa !24
  %conv255 = zext i16 %255 to i32
  %sub256 = sub nsw i32 %conv249, %conv255
  store i32 %sub256, i32* %c1, align 4, !tbaa !19
  %256 = load i32, i32* %X0, align 4, !tbaa !19
  %257 = load i32, i32* %Y1, align 4, !tbaa !19
  %add257 = add nsw i32 %256, %257
  %258 = load i32, i32* %Z0, align 4, !tbaa !19
  %add258 = add nsw i32 %add257, %258
  %259 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add259 = add i32 %add258, %259
  %idxprom260 = zext i32 %add259 to i64
  %260 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i16, i16* %260, i64 %idxprom260
  %261 = load i16, i16* %arrayidx261, align 2, !tbaa !24
  %conv262 = zext i16 %261 to i32
  %262 = load i32, i32* %c0, align 4, !tbaa !19
  %sub263 = sub nsw i32 %conv262, %262
  store i32 %sub263, i32* %c2, align 4, !tbaa !19
  %263 = load i32, i32* %X0, align 4, !tbaa !19
  %264 = load i32, i32* %Y1, align 4, !tbaa !19
  %add264 = add nsw i32 %263, %264
  %265 = load i32, i32* %Z1, align 4, !tbaa !19
  %add265 = add nsw i32 %add264, %265
  %266 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add266 = add i32 %add265, %266
  %idxprom267 = zext i32 %add266 to i64
  %267 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i16, i16* %267, i64 %idxprom267
  %268 = load i16, i16* %arrayidx268, align 2, !tbaa !24
  %conv269 = zext i16 %268 to i32
  %269 = load i32, i32* %X0, align 4, !tbaa !19
  %270 = load i32, i32* %Y1, align 4, !tbaa !19
  %add270 = add nsw i32 %269, %270
  %271 = load i32, i32* %Z0, align 4, !tbaa !19
  %add271 = add nsw i32 %add270, %271
  %272 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add272 = add i32 %add271, %272
  %idxprom273 = zext i32 %add272 to i64
  %273 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i16, i16* %273, i64 %idxprom273
  %274 = load i16, i16* %arrayidx274, align 2, !tbaa !24
  %conv275 = zext i16 %274 to i32
  %sub276 = sub nsw i32 %conv269, %conv275
  store i32 %sub276, i32* %c3, align 4, !tbaa !19
  br label %if.end.318

if.else.277:                                      ; preds = %land.lhs.true.240, %if.else.237
  %275 = load i32, i32* %rz, align 4, !tbaa !19
  %276 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp278 = icmp sge i32 %275, %276
  br i1 %cmp278, label %land.lhs.true.280, label %if.else.317

land.lhs.true.280:                                ; preds = %if.else.277
  %277 = load i32, i32* %ry, align 4, !tbaa !19
  %278 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp281 = icmp sge i32 %277, %278
  br i1 %cmp281, label %if.then.283, label %if.else.317

if.then.283:                                      ; preds = %land.lhs.true.280
  %279 = load i32, i32* %X1, align 4, !tbaa !19
  %280 = load i32, i32* %Y1, align 4, !tbaa !19
  %add284 = add nsw i32 %279, %280
  %281 = load i32, i32* %Z1, align 4, !tbaa !19
  %add285 = add nsw i32 %add284, %281
  %282 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add286 = add i32 %add285, %282
  %idxprom287 = zext i32 %add286 to i64
  %283 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i16, i16* %283, i64 %idxprom287
  %284 = load i16, i16* %arrayidx288, align 2, !tbaa !24
  %conv289 = zext i16 %284 to i32
  %285 = load i32, i32* %X0, align 4, !tbaa !19
  %286 = load i32, i32* %Y1, align 4, !tbaa !19
  %add290 = add nsw i32 %285, %286
  %287 = load i32, i32* %Z1, align 4, !tbaa !19
  %add291 = add nsw i32 %add290, %287
  %288 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add292 = add i32 %add291, %288
  %idxprom293 = zext i32 %add292 to i64
  %289 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i16, i16* %289, i64 %idxprom293
  %290 = load i16, i16* %arrayidx294, align 2, !tbaa !24
  %conv295 = zext i16 %290 to i32
  %sub296 = sub nsw i32 %conv289, %conv295
  store i32 %sub296, i32* %c1, align 4, !tbaa !19
  %291 = load i32, i32* %X0, align 4, !tbaa !19
  %292 = load i32, i32* %Y1, align 4, !tbaa !19
  %add297 = add nsw i32 %291, %292
  %293 = load i32, i32* %Z1, align 4, !tbaa !19
  %add298 = add nsw i32 %add297, %293
  %294 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add299 = add i32 %add298, %294
  %idxprom300 = zext i32 %add299 to i64
  %295 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i16, i16* %295, i64 %idxprom300
  %296 = load i16, i16* %arrayidx301, align 2, !tbaa !24
  %conv302 = zext i16 %296 to i32
  %297 = load i32, i32* %X0, align 4, !tbaa !19
  %298 = load i32, i32* %Y0, align 4, !tbaa !19
  %add303 = add nsw i32 %297, %298
  %299 = load i32, i32* %Z1, align 4, !tbaa !19
  %add304 = add nsw i32 %add303, %299
  %300 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add305 = add i32 %add304, %300
  %idxprom306 = zext i32 %add305 to i64
  %301 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds i16, i16* %301, i64 %idxprom306
  %302 = load i16, i16* %arrayidx307, align 2, !tbaa !24
  %conv308 = zext i16 %302 to i32
  %sub309 = sub nsw i32 %conv302, %conv308
  store i32 %sub309, i32* %c2, align 4, !tbaa !19
  %303 = load i32, i32* %X0, align 4, !tbaa !19
  %304 = load i32, i32* %Y0, align 4, !tbaa !19
  %add310 = add nsw i32 %303, %304
  %305 = load i32, i32* %Z1, align 4, !tbaa !19
  %add311 = add nsw i32 %add310, %305
  %306 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add312 = add i32 %add311, %306
  %idxprom313 = zext i32 %add312 to i64
  %307 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i16, i16* %307, i64 %idxprom313
  %308 = load i16, i16* %arrayidx314, align 2, !tbaa !24
  %conv315 = zext i16 %308 to i32
  %309 = load i32, i32* %c0, align 4, !tbaa !19
  %sub316 = sub nsw i32 %conv315, %309
  store i32 %sub316, i32* %c3, align 4, !tbaa !19
  br label %if.end

if.else.317:                                      ; preds = %land.lhs.true.280, %if.else.277
  store i32 0, i32* %c3, align 4, !tbaa !19
  store i32 0, i32* %c2, align 4, !tbaa !19
  store i32 0, i32* %c1, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else.317, %if.then.283
  br label %if.end.318

if.end.318:                                       ; preds = %if.end, %if.then.243
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.203
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.then.163
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.123
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.then
  %310 = load i32, i32* %c1, align 4, !tbaa !19
  %311 = load i32, i32* %rx, align 4, !tbaa !19
  %mul323 = mul nsw i32 %310, %311
  %312 = load i32, i32* %c2, align 4, !tbaa !19
  %313 = load i32, i32* %ry, align 4, !tbaa !19
  %mul324 = mul nsw i32 %312, %313
  %add325 = add nsw i32 %mul323, %mul324
  %314 = load i32, i32* %c3, align 4, !tbaa !19
  %315 = load i32, i32* %rz, align 4, !tbaa !19
  %mul326 = mul nsw i32 %314, %315
  %add327 = add nsw i32 %add325, %mul326
  store i32 %add327, i32* %Rest, align 4, !tbaa !19
  %316 = load i32, i32* %c0, align 4, !tbaa !19
  %conv328 = trunc i32 %316 to i16
  %conv329 = zext i16 %conv328 to i32
  %317 = load i32, i32* %Rest, align 4, !tbaa !19
  %call330 = call i32 @_cmsToFixedDomain(i32 %317) #8
  %add331 = add nsw i32 %call330, 32768
  %shr332 = ashr i32 %add331, 16
  %add333 = add nsw i32 %conv329, %shr332
  %conv334 = trunc i32 %add333 to i16
  %318 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom335 = zext i32 %318 to i64
  %arrayidx336 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom335
  store i16 %conv334, i16* %arrayidx336, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %if.end.322
  %319 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc = add i32 %319, 1
  store i32 %inc, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %320 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table337 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %320, i32 0, i32 7
  %321 = load i8*, i8** %Table337, align 8, !tbaa !20
  %322 = bitcast i8* %321 to i16*
  store i16* %322, i16** %LutTable, align 8, !tbaa !1
  %323 = load i32, i32* %K1, align 4, !tbaa !19
  %324 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %idx.ext338 = sext i32 %323 to i64
  %add.ptr339 = getelementptr inbounds i16, i16* %324, i64 %idx.ext338
  store i16* %add.ptr339, i16** %LutTable, align 8, !tbaa !1
  store i32 0, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.611, %for.end
  %325 = load i32, i32* %OutChan, align 4, !tbaa !19
  %326 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs341 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %326, i32 0, i32 3
  %327 = load i32, i32* %nOutputs341, align 4, !tbaa !16
  %cmp342 = icmp ult i32 %325, %327
  br i1 %cmp342, label %for.body.344, label %for.end.613

for.body.344:                                     ; preds = %for.cond.340
  %328 = load i32, i32* %X0, align 4, !tbaa !19
  %329 = load i32, i32* %Y0, align 4, !tbaa !19
  %add345 = add nsw i32 %328, %329
  %330 = load i32, i32* %Z0, align 4, !tbaa !19
  %add346 = add nsw i32 %add345, %330
  %331 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add347 = add i32 %add346, %331
  %idxprom348 = zext i32 %add347 to i64
  %332 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds i16, i16* %332, i64 %idxprom348
  %333 = load i16, i16* %arrayidx349, align 2, !tbaa !24
  %conv350 = zext i16 %333 to i32
  store i32 %conv350, i32* %c0, align 4, !tbaa !19
  %334 = load i32, i32* %rx, align 4, !tbaa !19
  %335 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp351 = icmp sge i32 %334, %335
  br i1 %cmp351, label %land.lhs.true.353, label %if.else.390

land.lhs.true.353:                                ; preds = %for.body.344
  %336 = load i32, i32* %ry, align 4, !tbaa !19
  %337 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp354 = icmp sge i32 %336, %337
  br i1 %cmp354, label %if.then.356, label %if.else.390

if.then.356:                                      ; preds = %land.lhs.true.353
  %338 = load i32, i32* %X1, align 4, !tbaa !19
  %339 = load i32, i32* %Y0, align 4, !tbaa !19
  %add357 = add nsw i32 %338, %339
  %340 = load i32, i32* %Z0, align 4, !tbaa !19
  %add358 = add nsw i32 %add357, %340
  %341 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add359 = add i32 %add358, %341
  %idxprom360 = zext i32 %add359 to i64
  %342 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx361 = getelementptr inbounds i16, i16* %342, i64 %idxprom360
  %343 = load i16, i16* %arrayidx361, align 2, !tbaa !24
  %conv362 = zext i16 %343 to i32
  %344 = load i32, i32* %c0, align 4, !tbaa !19
  %sub363 = sub nsw i32 %conv362, %344
  store i32 %sub363, i32* %c1, align 4, !tbaa !19
  %345 = load i32, i32* %X1, align 4, !tbaa !19
  %346 = load i32, i32* %Y1, align 4, !tbaa !19
  %add364 = add nsw i32 %345, %346
  %347 = load i32, i32* %Z0, align 4, !tbaa !19
  %add365 = add nsw i32 %add364, %347
  %348 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add366 = add i32 %add365, %348
  %idxprom367 = zext i32 %add366 to i64
  %349 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds i16, i16* %349, i64 %idxprom367
  %350 = load i16, i16* %arrayidx368, align 2, !tbaa !24
  %conv369 = zext i16 %350 to i32
  %351 = load i32, i32* %X1, align 4, !tbaa !19
  %352 = load i32, i32* %Y0, align 4, !tbaa !19
  %add370 = add nsw i32 %351, %352
  %353 = load i32, i32* %Z0, align 4, !tbaa !19
  %add371 = add nsw i32 %add370, %353
  %354 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add372 = add i32 %add371, %354
  %idxprom373 = zext i32 %add372 to i64
  %355 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds i16, i16* %355, i64 %idxprom373
  %356 = load i16, i16* %arrayidx374, align 2, !tbaa !24
  %conv375 = zext i16 %356 to i32
  %sub376 = sub nsw i32 %conv369, %conv375
  store i32 %sub376, i32* %c2, align 4, !tbaa !19
  %357 = load i32, i32* %X1, align 4, !tbaa !19
  %358 = load i32, i32* %Y1, align 4, !tbaa !19
  %add377 = add nsw i32 %357, %358
  %359 = load i32, i32* %Z1, align 4, !tbaa !19
  %add378 = add nsw i32 %add377, %359
  %360 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add379 = add i32 %add378, %360
  %idxprom380 = zext i32 %add379 to i64
  %361 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx381 = getelementptr inbounds i16, i16* %361, i64 %idxprom380
  %362 = load i16, i16* %arrayidx381, align 2, !tbaa !24
  %conv382 = zext i16 %362 to i32
  %363 = load i32, i32* %X1, align 4, !tbaa !19
  %364 = load i32, i32* %Y1, align 4, !tbaa !19
  %add383 = add nsw i32 %363, %364
  %365 = load i32, i32* %Z0, align 4, !tbaa !19
  %add384 = add nsw i32 %add383, %365
  %366 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add385 = add i32 %add384, %366
  %idxprom386 = zext i32 %add385 to i64
  %367 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds i16, i16* %367, i64 %idxprom386
  %368 = load i16, i16* %arrayidx387, align 2, !tbaa !24
  %conv388 = zext i16 %368 to i32
  %sub389 = sub nsw i32 %conv382, %conv388
  store i32 %sub389, i32* %c3, align 4, !tbaa !19
  br label %if.end.596

if.else.390:                                      ; preds = %land.lhs.true.353, %for.body.344
  %369 = load i32, i32* %rx, align 4, !tbaa !19
  %370 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp391 = icmp sge i32 %369, %370
  br i1 %cmp391, label %land.lhs.true.393, label %if.else.430

land.lhs.true.393:                                ; preds = %if.else.390
  %371 = load i32, i32* %rz, align 4, !tbaa !19
  %372 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp394 = icmp sge i32 %371, %372
  br i1 %cmp394, label %if.then.396, label %if.else.430

if.then.396:                                      ; preds = %land.lhs.true.393
  %373 = load i32, i32* %X1, align 4, !tbaa !19
  %374 = load i32, i32* %Y0, align 4, !tbaa !19
  %add397 = add nsw i32 %373, %374
  %375 = load i32, i32* %Z0, align 4, !tbaa !19
  %add398 = add nsw i32 %add397, %375
  %376 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add399 = add i32 %add398, %376
  %idxprom400 = zext i32 %add399 to i64
  %377 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds i16, i16* %377, i64 %idxprom400
  %378 = load i16, i16* %arrayidx401, align 2, !tbaa !24
  %conv402 = zext i16 %378 to i32
  %379 = load i32, i32* %c0, align 4, !tbaa !19
  %sub403 = sub nsw i32 %conv402, %379
  store i32 %sub403, i32* %c1, align 4, !tbaa !19
  %380 = load i32, i32* %X1, align 4, !tbaa !19
  %381 = load i32, i32* %Y1, align 4, !tbaa !19
  %add404 = add nsw i32 %380, %381
  %382 = load i32, i32* %Z1, align 4, !tbaa !19
  %add405 = add nsw i32 %add404, %382
  %383 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add406 = add i32 %add405, %383
  %idxprom407 = zext i32 %add406 to i64
  %384 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i16, i16* %384, i64 %idxprom407
  %385 = load i16, i16* %arrayidx408, align 2, !tbaa !24
  %conv409 = zext i16 %385 to i32
  %386 = load i32, i32* %X1, align 4, !tbaa !19
  %387 = load i32, i32* %Y0, align 4, !tbaa !19
  %add410 = add nsw i32 %386, %387
  %388 = load i32, i32* %Z1, align 4, !tbaa !19
  %add411 = add nsw i32 %add410, %388
  %389 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add412 = add i32 %add411, %389
  %idxprom413 = zext i32 %add412 to i64
  %390 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds i16, i16* %390, i64 %idxprom413
  %391 = load i16, i16* %arrayidx414, align 2, !tbaa !24
  %conv415 = zext i16 %391 to i32
  %sub416 = sub nsw i32 %conv409, %conv415
  store i32 %sub416, i32* %c2, align 4, !tbaa !19
  %392 = load i32, i32* %X1, align 4, !tbaa !19
  %393 = load i32, i32* %Y0, align 4, !tbaa !19
  %add417 = add nsw i32 %392, %393
  %394 = load i32, i32* %Z1, align 4, !tbaa !19
  %add418 = add nsw i32 %add417, %394
  %395 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add419 = add i32 %add418, %395
  %idxprom420 = zext i32 %add419 to i64
  %396 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds i16, i16* %396, i64 %idxprom420
  %397 = load i16, i16* %arrayidx421, align 2, !tbaa !24
  %conv422 = zext i16 %397 to i32
  %398 = load i32, i32* %X1, align 4, !tbaa !19
  %399 = load i32, i32* %Y0, align 4, !tbaa !19
  %add423 = add nsw i32 %398, %399
  %400 = load i32, i32* %Z0, align 4, !tbaa !19
  %add424 = add nsw i32 %add423, %400
  %401 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add425 = add i32 %add424, %401
  %idxprom426 = zext i32 %add425 to i64
  %402 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx427 = getelementptr inbounds i16, i16* %402, i64 %idxprom426
  %403 = load i16, i16* %arrayidx427, align 2, !tbaa !24
  %conv428 = zext i16 %403 to i32
  %sub429 = sub nsw i32 %conv422, %conv428
  store i32 %sub429, i32* %c3, align 4, !tbaa !19
  br label %if.end.595

if.else.430:                                      ; preds = %land.lhs.true.393, %if.else.390
  %404 = load i32, i32* %rz, align 4, !tbaa !19
  %405 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp431 = icmp sge i32 %404, %405
  br i1 %cmp431, label %land.lhs.true.433, label %if.else.470

land.lhs.true.433:                                ; preds = %if.else.430
  %406 = load i32, i32* %rx, align 4, !tbaa !19
  %407 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp434 = icmp sge i32 %406, %407
  br i1 %cmp434, label %if.then.436, label %if.else.470

if.then.436:                                      ; preds = %land.lhs.true.433
  %408 = load i32, i32* %X1, align 4, !tbaa !19
  %409 = load i32, i32* %Y0, align 4, !tbaa !19
  %add437 = add nsw i32 %408, %409
  %410 = load i32, i32* %Z1, align 4, !tbaa !19
  %add438 = add nsw i32 %add437, %410
  %411 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add439 = add i32 %add438, %411
  %idxprom440 = zext i32 %add439 to i64
  %412 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx441 = getelementptr inbounds i16, i16* %412, i64 %idxprom440
  %413 = load i16, i16* %arrayidx441, align 2, !tbaa !24
  %conv442 = zext i16 %413 to i32
  %414 = load i32, i32* %X0, align 4, !tbaa !19
  %415 = load i32, i32* %Y0, align 4, !tbaa !19
  %add443 = add nsw i32 %414, %415
  %416 = load i32, i32* %Z1, align 4, !tbaa !19
  %add444 = add nsw i32 %add443, %416
  %417 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add445 = add i32 %add444, %417
  %idxprom446 = zext i32 %add445 to i64
  %418 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx447 = getelementptr inbounds i16, i16* %418, i64 %idxprom446
  %419 = load i16, i16* %arrayidx447, align 2, !tbaa !24
  %conv448 = zext i16 %419 to i32
  %sub449 = sub nsw i32 %conv442, %conv448
  store i32 %sub449, i32* %c1, align 4, !tbaa !19
  %420 = load i32, i32* %X1, align 4, !tbaa !19
  %421 = load i32, i32* %Y1, align 4, !tbaa !19
  %add450 = add nsw i32 %420, %421
  %422 = load i32, i32* %Z1, align 4, !tbaa !19
  %add451 = add nsw i32 %add450, %422
  %423 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add452 = add i32 %add451, %423
  %idxprom453 = zext i32 %add452 to i64
  %424 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx454 = getelementptr inbounds i16, i16* %424, i64 %idxprom453
  %425 = load i16, i16* %arrayidx454, align 2, !tbaa !24
  %conv455 = zext i16 %425 to i32
  %426 = load i32, i32* %X1, align 4, !tbaa !19
  %427 = load i32, i32* %Y0, align 4, !tbaa !19
  %add456 = add nsw i32 %426, %427
  %428 = load i32, i32* %Z1, align 4, !tbaa !19
  %add457 = add nsw i32 %add456, %428
  %429 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add458 = add i32 %add457, %429
  %idxprom459 = zext i32 %add458 to i64
  %430 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds i16, i16* %430, i64 %idxprom459
  %431 = load i16, i16* %arrayidx460, align 2, !tbaa !24
  %conv461 = zext i16 %431 to i32
  %sub462 = sub nsw i32 %conv455, %conv461
  store i32 %sub462, i32* %c2, align 4, !tbaa !19
  %432 = load i32, i32* %X0, align 4, !tbaa !19
  %433 = load i32, i32* %Y0, align 4, !tbaa !19
  %add463 = add nsw i32 %432, %433
  %434 = load i32, i32* %Z1, align 4, !tbaa !19
  %add464 = add nsw i32 %add463, %434
  %435 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add465 = add i32 %add464, %435
  %idxprom466 = zext i32 %add465 to i64
  %436 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds i16, i16* %436, i64 %idxprom466
  %437 = load i16, i16* %arrayidx467, align 2, !tbaa !24
  %conv468 = zext i16 %437 to i32
  %438 = load i32, i32* %c0, align 4, !tbaa !19
  %sub469 = sub nsw i32 %conv468, %438
  store i32 %sub469, i32* %c3, align 4, !tbaa !19
  br label %if.end.594

if.else.470:                                      ; preds = %land.lhs.true.433, %if.else.430
  %439 = load i32, i32* %ry, align 4, !tbaa !19
  %440 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp471 = icmp sge i32 %439, %440
  br i1 %cmp471, label %land.lhs.true.473, label %if.else.510

land.lhs.true.473:                                ; preds = %if.else.470
  %441 = load i32, i32* %rx, align 4, !tbaa !19
  %442 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp474 = icmp sge i32 %441, %442
  br i1 %cmp474, label %if.then.476, label %if.else.510

if.then.476:                                      ; preds = %land.lhs.true.473
  %443 = load i32, i32* %X1, align 4, !tbaa !19
  %444 = load i32, i32* %Y1, align 4, !tbaa !19
  %add477 = add nsw i32 %443, %444
  %445 = load i32, i32* %Z0, align 4, !tbaa !19
  %add478 = add nsw i32 %add477, %445
  %446 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add479 = add i32 %add478, %446
  %idxprom480 = zext i32 %add479 to i64
  %447 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx481 = getelementptr inbounds i16, i16* %447, i64 %idxprom480
  %448 = load i16, i16* %arrayidx481, align 2, !tbaa !24
  %conv482 = zext i16 %448 to i32
  %449 = load i32, i32* %X0, align 4, !tbaa !19
  %450 = load i32, i32* %Y1, align 4, !tbaa !19
  %add483 = add nsw i32 %449, %450
  %451 = load i32, i32* %Z0, align 4, !tbaa !19
  %add484 = add nsw i32 %add483, %451
  %452 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add485 = add i32 %add484, %452
  %idxprom486 = zext i32 %add485 to i64
  %453 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx487 = getelementptr inbounds i16, i16* %453, i64 %idxprom486
  %454 = load i16, i16* %arrayidx487, align 2, !tbaa !24
  %conv488 = zext i16 %454 to i32
  %sub489 = sub nsw i32 %conv482, %conv488
  store i32 %sub489, i32* %c1, align 4, !tbaa !19
  %455 = load i32, i32* %X0, align 4, !tbaa !19
  %456 = load i32, i32* %Y1, align 4, !tbaa !19
  %add490 = add nsw i32 %455, %456
  %457 = load i32, i32* %Z0, align 4, !tbaa !19
  %add491 = add nsw i32 %add490, %457
  %458 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add492 = add i32 %add491, %458
  %idxprom493 = zext i32 %add492 to i64
  %459 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx494 = getelementptr inbounds i16, i16* %459, i64 %idxprom493
  %460 = load i16, i16* %arrayidx494, align 2, !tbaa !24
  %conv495 = zext i16 %460 to i32
  %461 = load i32, i32* %c0, align 4, !tbaa !19
  %sub496 = sub nsw i32 %conv495, %461
  store i32 %sub496, i32* %c2, align 4, !tbaa !19
  %462 = load i32, i32* %X1, align 4, !tbaa !19
  %463 = load i32, i32* %Y1, align 4, !tbaa !19
  %add497 = add nsw i32 %462, %463
  %464 = load i32, i32* %Z1, align 4, !tbaa !19
  %add498 = add nsw i32 %add497, %464
  %465 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add499 = add i32 %add498, %465
  %idxprom500 = zext i32 %add499 to i64
  %466 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx501 = getelementptr inbounds i16, i16* %466, i64 %idxprom500
  %467 = load i16, i16* %arrayidx501, align 2, !tbaa !24
  %conv502 = zext i16 %467 to i32
  %468 = load i32, i32* %X1, align 4, !tbaa !19
  %469 = load i32, i32* %Y1, align 4, !tbaa !19
  %add503 = add nsw i32 %468, %469
  %470 = load i32, i32* %Z0, align 4, !tbaa !19
  %add504 = add nsw i32 %add503, %470
  %471 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add505 = add i32 %add504, %471
  %idxprom506 = zext i32 %add505 to i64
  %472 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx507 = getelementptr inbounds i16, i16* %472, i64 %idxprom506
  %473 = load i16, i16* %arrayidx507, align 2, !tbaa !24
  %conv508 = zext i16 %473 to i32
  %sub509 = sub nsw i32 %conv502, %conv508
  store i32 %sub509, i32* %c3, align 4, !tbaa !19
  br label %if.end.593

if.else.510:                                      ; preds = %land.lhs.true.473, %if.else.470
  %474 = load i32, i32* %ry, align 4, !tbaa !19
  %475 = load i32, i32* %rz, align 4, !tbaa !19
  %cmp511 = icmp sge i32 %474, %475
  br i1 %cmp511, label %land.lhs.true.513, label %if.else.550

land.lhs.true.513:                                ; preds = %if.else.510
  %476 = load i32, i32* %rz, align 4, !tbaa !19
  %477 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp514 = icmp sge i32 %476, %477
  br i1 %cmp514, label %if.then.516, label %if.else.550

if.then.516:                                      ; preds = %land.lhs.true.513
  %478 = load i32, i32* %X1, align 4, !tbaa !19
  %479 = load i32, i32* %Y1, align 4, !tbaa !19
  %add517 = add nsw i32 %478, %479
  %480 = load i32, i32* %Z1, align 4, !tbaa !19
  %add518 = add nsw i32 %add517, %480
  %481 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add519 = add i32 %add518, %481
  %idxprom520 = zext i32 %add519 to i64
  %482 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx521 = getelementptr inbounds i16, i16* %482, i64 %idxprom520
  %483 = load i16, i16* %arrayidx521, align 2, !tbaa !24
  %conv522 = zext i16 %483 to i32
  %484 = load i32, i32* %X0, align 4, !tbaa !19
  %485 = load i32, i32* %Y1, align 4, !tbaa !19
  %add523 = add nsw i32 %484, %485
  %486 = load i32, i32* %Z1, align 4, !tbaa !19
  %add524 = add nsw i32 %add523, %486
  %487 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add525 = add i32 %add524, %487
  %idxprom526 = zext i32 %add525 to i64
  %488 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx527 = getelementptr inbounds i16, i16* %488, i64 %idxprom526
  %489 = load i16, i16* %arrayidx527, align 2, !tbaa !24
  %conv528 = zext i16 %489 to i32
  %sub529 = sub nsw i32 %conv522, %conv528
  store i32 %sub529, i32* %c1, align 4, !tbaa !19
  %490 = load i32, i32* %X0, align 4, !tbaa !19
  %491 = load i32, i32* %Y1, align 4, !tbaa !19
  %add530 = add nsw i32 %490, %491
  %492 = load i32, i32* %Z0, align 4, !tbaa !19
  %add531 = add nsw i32 %add530, %492
  %493 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add532 = add i32 %add531, %493
  %idxprom533 = zext i32 %add532 to i64
  %494 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx534 = getelementptr inbounds i16, i16* %494, i64 %idxprom533
  %495 = load i16, i16* %arrayidx534, align 2, !tbaa !24
  %conv535 = zext i16 %495 to i32
  %496 = load i32, i32* %c0, align 4, !tbaa !19
  %sub536 = sub nsw i32 %conv535, %496
  store i32 %sub536, i32* %c2, align 4, !tbaa !19
  %497 = load i32, i32* %X0, align 4, !tbaa !19
  %498 = load i32, i32* %Y1, align 4, !tbaa !19
  %add537 = add nsw i32 %497, %498
  %499 = load i32, i32* %Z1, align 4, !tbaa !19
  %add538 = add nsw i32 %add537, %499
  %500 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add539 = add i32 %add538, %500
  %idxprom540 = zext i32 %add539 to i64
  %501 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx541 = getelementptr inbounds i16, i16* %501, i64 %idxprom540
  %502 = load i16, i16* %arrayidx541, align 2, !tbaa !24
  %conv542 = zext i16 %502 to i32
  %503 = load i32, i32* %X0, align 4, !tbaa !19
  %504 = load i32, i32* %Y1, align 4, !tbaa !19
  %add543 = add nsw i32 %503, %504
  %505 = load i32, i32* %Z0, align 4, !tbaa !19
  %add544 = add nsw i32 %add543, %505
  %506 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add545 = add i32 %add544, %506
  %idxprom546 = zext i32 %add545 to i64
  %507 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx547 = getelementptr inbounds i16, i16* %507, i64 %idxprom546
  %508 = load i16, i16* %arrayidx547, align 2, !tbaa !24
  %conv548 = zext i16 %508 to i32
  %sub549 = sub nsw i32 %conv542, %conv548
  store i32 %sub549, i32* %c3, align 4, !tbaa !19
  br label %if.end.592

if.else.550:                                      ; preds = %land.lhs.true.513, %if.else.510
  %509 = load i32, i32* %rz, align 4, !tbaa !19
  %510 = load i32, i32* %ry, align 4, !tbaa !19
  %cmp551 = icmp sge i32 %509, %510
  br i1 %cmp551, label %land.lhs.true.553, label %if.else.590

land.lhs.true.553:                                ; preds = %if.else.550
  %511 = load i32, i32* %ry, align 4, !tbaa !19
  %512 = load i32, i32* %rx, align 4, !tbaa !19
  %cmp554 = icmp sge i32 %511, %512
  br i1 %cmp554, label %if.then.556, label %if.else.590

if.then.556:                                      ; preds = %land.lhs.true.553
  %513 = load i32, i32* %X1, align 4, !tbaa !19
  %514 = load i32, i32* %Y1, align 4, !tbaa !19
  %add557 = add nsw i32 %513, %514
  %515 = load i32, i32* %Z1, align 4, !tbaa !19
  %add558 = add nsw i32 %add557, %515
  %516 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add559 = add i32 %add558, %516
  %idxprom560 = zext i32 %add559 to i64
  %517 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds i16, i16* %517, i64 %idxprom560
  %518 = load i16, i16* %arrayidx561, align 2, !tbaa !24
  %conv562 = zext i16 %518 to i32
  %519 = load i32, i32* %X0, align 4, !tbaa !19
  %520 = load i32, i32* %Y1, align 4, !tbaa !19
  %add563 = add nsw i32 %519, %520
  %521 = load i32, i32* %Z1, align 4, !tbaa !19
  %add564 = add nsw i32 %add563, %521
  %522 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add565 = add i32 %add564, %522
  %idxprom566 = zext i32 %add565 to i64
  %523 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx567 = getelementptr inbounds i16, i16* %523, i64 %idxprom566
  %524 = load i16, i16* %arrayidx567, align 2, !tbaa !24
  %conv568 = zext i16 %524 to i32
  %sub569 = sub nsw i32 %conv562, %conv568
  store i32 %sub569, i32* %c1, align 4, !tbaa !19
  %525 = load i32, i32* %X0, align 4, !tbaa !19
  %526 = load i32, i32* %Y1, align 4, !tbaa !19
  %add570 = add nsw i32 %525, %526
  %527 = load i32, i32* %Z1, align 4, !tbaa !19
  %add571 = add nsw i32 %add570, %527
  %528 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add572 = add i32 %add571, %528
  %idxprom573 = zext i32 %add572 to i64
  %529 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i16, i16* %529, i64 %idxprom573
  %530 = load i16, i16* %arrayidx574, align 2, !tbaa !24
  %conv575 = zext i16 %530 to i32
  %531 = load i32, i32* %X0, align 4, !tbaa !19
  %532 = load i32, i32* %Y0, align 4, !tbaa !19
  %add576 = add nsw i32 %531, %532
  %533 = load i32, i32* %Z1, align 4, !tbaa !19
  %add577 = add nsw i32 %add576, %533
  %534 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add578 = add i32 %add577, %534
  %idxprom579 = zext i32 %add578 to i64
  %535 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx580 = getelementptr inbounds i16, i16* %535, i64 %idxprom579
  %536 = load i16, i16* %arrayidx580, align 2, !tbaa !24
  %conv581 = zext i16 %536 to i32
  %sub582 = sub nsw i32 %conv575, %conv581
  store i32 %sub582, i32* %c2, align 4, !tbaa !19
  %537 = load i32, i32* %X0, align 4, !tbaa !19
  %538 = load i32, i32* %Y0, align 4, !tbaa !19
  %add583 = add nsw i32 %537, %538
  %539 = load i32, i32* %Z1, align 4, !tbaa !19
  %add584 = add nsw i32 %add583, %539
  %540 = load i32, i32* %OutChan, align 4, !tbaa !19
  %add585 = add i32 %add584, %540
  %idxprom586 = zext i32 %add585 to i64
  %541 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %arrayidx587 = getelementptr inbounds i16, i16* %541, i64 %idxprom586
  %542 = load i16, i16* %arrayidx587, align 2, !tbaa !24
  %conv588 = zext i16 %542 to i32
  %543 = load i32, i32* %c0, align 4, !tbaa !19
  %sub589 = sub nsw i32 %conv588, %543
  store i32 %sub589, i32* %c3, align 4, !tbaa !19
  br label %if.end.591

if.else.590:                                      ; preds = %land.lhs.true.553, %if.else.550
  store i32 0, i32* %c3, align 4, !tbaa !19
  store i32 0, i32* %c2, align 4, !tbaa !19
  store i32 0, i32* %c1, align 4, !tbaa !19
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.590, %if.then.556
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.then.516
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %if.then.476
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %if.then.436
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.594, %if.then.396
  br label %if.end.596

if.end.596:                                       ; preds = %if.end.595, %if.then.356
  %544 = load i32, i32* %c1, align 4, !tbaa !19
  %545 = load i32, i32* %rx, align 4, !tbaa !19
  %mul597 = mul nsw i32 %544, %545
  %546 = load i32, i32* %c2, align 4, !tbaa !19
  %547 = load i32, i32* %ry, align 4, !tbaa !19
  %mul598 = mul nsw i32 %546, %547
  %add599 = add nsw i32 %mul597, %mul598
  %548 = load i32, i32* %c3, align 4, !tbaa !19
  %549 = load i32, i32* %rz, align 4, !tbaa !19
  %mul600 = mul nsw i32 %548, %549
  %add601 = add nsw i32 %add599, %mul600
  store i32 %add601, i32* %Rest, align 4, !tbaa !19
  %550 = load i32, i32* %c0, align 4, !tbaa !19
  %conv602 = trunc i32 %550 to i16
  %conv603 = zext i16 %conv602 to i32
  %551 = load i32, i32* %Rest, align 4, !tbaa !19
  %call604 = call i32 @_cmsToFixedDomain(i32 %551) #8
  %add605 = add nsw i32 %call604, 32768
  %shr606 = ashr i32 %add605, 16
  %add607 = add nsw i32 %conv603, %shr606
  %conv608 = trunc i32 %add607 to i16
  %552 = load i32, i32* %OutChan, align 4, !tbaa !19
  %idxprom609 = zext i32 %552 to i64
  %arrayidx610 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom609
  store i16 %conv608, i16* %arrayidx610, align 2, !tbaa !24
  br label %for.inc.611

for.inc.611:                                      ; preds = %if.end.596
  %553 = load i32, i32* %OutChan, align 4, !tbaa !19
  %inc612 = add i32 %553, 1
  store i32 %inc612, i32* %OutChan, align 4, !tbaa !19
  br label %for.cond.340

for.end.613:                                      ; preds = %for.cond.340
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.614

for.cond.614:                                     ; preds = %for.inc.628, %for.end.613
  %554 = load i32, i32* %i, align 4, !tbaa !19
  %555 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs615 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %555, i32 0, i32 3
  %556 = load i32, i32* %nOutputs615, align 4, !tbaa !16
  %cmp616 = icmp ult i32 %554, %556
  br i1 %cmp616, label %for.body.618, label %for.end.630

for.body.618:                                     ; preds = %for.cond.614
  %557 = load i32, i32* %rk, align 4, !tbaa !19
  %558 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom619 = zext i32 %558 to i64
  %arrayidx620 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom619
  %559 = load i16, i16* %arrayidx620, align 2, !tbaa !24
  %conv621 = zext i16 %559 to i32
  %560 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom622 = zext i32 %560 to i64
  %arrayidx623 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom622
  %561 = load i16, i16* %arrayidx623, align 2, !tbaa !24
  %conv624 = zext i16 %561 to i32
  %call625 = call zeroext i16 @LinearInterp(i32 %557, i32 %conv621, i32 %conv624) #8
  %562 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom626 = zext i32 %562 to i64
  %563 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx627 = getelementptr inbounds i16, i16* %563, i64 %idxprom626
  store i16 %call625, i16* %arrayidx627, align 2, !tbaa !24
  br label %for.inc.628

for.inc.628:                                      ; preds = %for.body.618
  %564 = load i32, i32* %i, align 4, !tbaa !19
  %inc629 = add i32 %564, 1
  store i32 %inc629, i32* %i, align 4, !tbaa !19
  br label %for.cond.614

for.end.630:                                      ; preds = %for.cond.614
  %565 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %565) #1
  %566 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %566) #1
  %567 = bitcast i32* %OutChan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %Rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %c3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast i32* %Z1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %574) #1
  %575 = bitcast i32* %Z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %575) #1
  %576 = bitcast i32* %Y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i32* %Y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %577) #1
  %578 = bitcast i32* %X1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %578) #1
  %579 = bitcast i32* %X0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #1
  %580 = bitcast i32* %z0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %580) #1
  %581 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %581) #1
  %582 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %582) #1
  %583 = bitcast i32* %rz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %583) #1
  %584 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %585) #1
  %586 = bitcast i32* %fz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %586) #1
  %587 = bitcast i32* %fy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %587) #1
  %588 = bitcast i32* %fx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %588) #1
  %589 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %589) #1
  %590 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %590) #1
  %591 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %591) #1
  %592 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %592) #1
  %593 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %593) #1
  %594 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %594) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval5InputsFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %rest = alloca float, align 4
  %pk = alloca float, align 4
  %k0 = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca float*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x float], align 16
  %Tmp2 = alloca [128 x float], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  %y0 = alloca float, align 4
  %y1 = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %pk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %15) #8
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %17 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %pk, align 4, !tbaa !22
  %18 = load float, float* %pk, align 4, !tbaa !22
  %conv2 = fpext float %18 to double
  %call3 = call i32 @_cmsQuickFloor(double %conv2) #8
  store i32 %call3, i32* %k0, align 4, !tbaa !19
  %19 = load float, float* %pk, align 4, !tbaa !22
  %20 = load i32, i32* %k0, align 4, !tbaa !19
  %conv4 = sitofp i32 %20 to float
  %sub = fsub float %19, %conv4
  store float %sub, float* %rest, align 4, !tbaa !22
  %21 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %21, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 4
  %22 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %23 = load i32, i32* %k0, align 4, !tbaa !19
  %mul6 = mul i32 %22, %23
  store i32 %mul6, i32* %K0, align 4, !tbaa !19
  %24 = load i32, i32* %K0, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx7, align 4, !tbaa !22
  %conv8 = fpext float %26 to double
  %cmp = fcmp oge double %conv8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %opta10, i32 0, i64 4
  %28 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %add = add i32 %24, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %30 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %31 = bitcast %struct._cms_interp_struc* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 0
  %32 = bitcast i32* %arrayidx13 to i8*
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 1
  %34 = bitcast i32* %arrayidx15 to i8*
  %call16 = call i8* @memmove(i8* %32, i8* %34, i64 16) #9
  %35 = load float*, float** %LutTable, align 8, !tbaa !1
  %36 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds float, float* %35, i64 %idx.ext
  store float* %add.ptr, float** %T, align 8, !tbaa !1
  %37 = load float*, float** %T, align 8, !tbaa !1
  %38 = bitcast float* %37 to i8*
  %Table17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %38, i8** %Table17, align 8, !tbaa !20
  %39 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds float, float* %39, i64 1
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i32 0
  call void @Eval4InputsFloat(float* %add.ptr18, float* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %40 = load float*, float** %LutTable, align 8, !tbaa !1
  %41 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext19 = sext i32 %41 to i64
  %add.ptr20 = getelementptr inbounds float, float* %40, i64 %idx.ext19
  store float* %add.ptr20, float** %T, align 8, !tbaa !1
  %42 = load float*, float** %T, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %Table21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %43, i8** %Table21, align 8, !tbaa !20
  %44 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds float, float* %44, i64 1
  %arraydecay23 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i32 0
  call void @Eval4InputsFloat(float* %add.ptr22, float* %arraydecay23, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 3
  %47 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp24 = icmp ult i32 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %50, float* %y0, align 4, !tbaa !22
  %51 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = zext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i64 %idxprom27
  %53 = load float, float* %arrayidx28, align 4, !tbaa !22
  store float %53, float* %y1, align 4, !tbaa !22
  %54 = load float, float* %y0, align 4, !tbaa !22
  %55 = load float, float* %y1, align 4, !tbaa !22
  %56 = load float, float* %y0, align 4, !tbaa !22
  %sub29 = fsub float %55, %56
  %57 = load float, float* %rest, align 4, !tbaa !22
  %mul30 = fmul float %sub29, %57
  %add31 = fadd float %54, %mul30
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom32 = zext i32 %58 to i64
  %59 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %59, i64 %idxprom32
  store float %add31, float* %arrayidx33, align 4, !tbaa !22
  %60 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %63) #1
  %64 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %64) #1
  %65 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast float* %pk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval5Inputs(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca i16*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x i16], align 16
  %Tmp2 = alloca [128 x i16], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i16** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %11) #1
  %12 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %15 to i32
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %17
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %18 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %18, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %19 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %19, 65535
  store i32 %and, i32* %rk, align 4, !tbaa !19
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 4
  %21 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %22 = load i32, i32* %k0, align 4, !tbaa !19
  %mul3 = mul i32 %21, %22
  store i32 %mul3, i32* %K0, align 4, !tbaa !19
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta4, i32 0, i64 4
  %24 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %25 = load i32, i32* %k0, align 4, !tbaa !19
  %26 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = zext i16 %27 to i32
  %cmp = icmp ne i32 %conv7, 65535
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %25, %cond
  %mul9 = mul i32 %24, %add
  store i32 %mul9, i32* %K1, align 4, !tbaa !19
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %29 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %30 = bitcast %struct._cms_interp_struc* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 0
  %31 = bitcast i32* %arrayidx11 to i8*
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 1
  %33 = bitcast i32* %arrayidx13 to i8*
  %call14 = call i8* @memmove(i8* %31, i8* %33, i64 16) #9
  %34 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %35 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i16, i16* %34, i64 %idx.ext
  store i16* %add.ptr, i16** %T, align 8, !tbaa !1
  %36 = load i16*, i16** %T, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i8*
  %Table15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %37, i8** %Table15, align 8, !tbaa !20
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i16, i16* %38, i64 1
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i32 0
  call void @Eval4Inputs(i16* %add.ptr16, i16* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %39 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %40 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext17 = sext i32 %40 to i64
  %add.ptr18 = getelementptr inbounds i16, i16* %39, i64 %idx.ext17
  store i16* %add.ptr18, i16** %T, align 8, !tbaa !1
  %41 = load i16*, i16** %T, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  %Table19 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %42, i8** %Table19, align 8, !tbaa !20
  %43 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i16, i16* %43, i64 1
  %arraydecay21 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i32 0
  call void @Eval4Inputs(i16* %add.ptr20, i16* %arraydecay21, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 3
  %46 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp22 = icmp ult i32 %44, %46
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %rk, align 4, !tbaa !19
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %48 to i64
  %arrayidx24 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom
  %49 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %conv25 = zext i16 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom26 = zext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom26
  %51 = load i16, i16* %arrayidx27, align 2, !tbaa !24
  %conv28 = zext i16 %51 to i32
  %call29 = call zeroext i16 @LinearInterp(i32 %47, i32 %conv25, i32 %conv28) #8
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom30 = zext i32 %52 to i64
  %53 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %53, i64 %idxprom30
  store i16 %call29, i16* %arrayidx31, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %55) #1
  %56 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %56) #1
  %57 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i16** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval6InputsFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %rest = alloca float, align 4
  %pk = alloca float, align 4
  %k0 = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca float*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x float], align 16
  %Tmp2 = alloca [128 x float], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  %y0 = alloca float, align 4
  %y1 = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %pk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %15) #8
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %17 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %pk, align 4, !tbaa !22
  %18 = load float, float* %pk, align 4, !tbaa !22
  %conv2 = fpext float %18 to double
  %call3 = call i32 @_cmsQuickFloor(double %conv2) #8
  store i32 %call3, i32* %k0, align 4, !tbaa !19
  %19 = load float, float* %pk, align 4, !tbaa !22
  %20 = load i32, i32* %k0, align 4, !tbaa !19
  %conv4 = sitofp i32 %20 to float
  %sub = fsub float %19, %conv4
  store float %sub, float* %rest, align 4, !tbaa !22
  %21 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %21, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 5
  %22 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %23 = load i32, i32* %k0, align 4, !tbaa !19
  %mul6 = mul i32 %22, %23
  store i32 %mul6, i32* %K0, align 4, !tbaa !19
  %24 = load i32, i32* %K0, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx7, align 4, !tbaa !22
  %conv8 = fpext float %26 to double
  %cmp = fcmp oge double %conv8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %opta10, i32 0, i64 5
  %28 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %add = add i32 %24, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %30 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %31 = bitcast %struct._cms_interp_struc* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 0
  %32 = bitcast i32* %arrayidx13 to i8*
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 1
  %34 = bitcast i32* %arrayidx15 to i8*
  %call16 = call i8* @memmove(i8* %32, i8* %34, i64 20) #9
  %35 = load float*, float** %LutTable, align 8, !tbaa !1
  %36 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds float, float* %35, i64 %idx.ext
  store float* %add.ptr, float** %T, align 8, !tbaa !1
  %37 = load float*, float** %T, align 8, !tbaa !1
  %38 = bitcast float* %37 to i8*
  %Table17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %38, i8** %Table17, align 8, !tbaa !20
  %39 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds float, float* %39, i64 1
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i32 0
  call void @Eval5InputsFloat(float* %add.ptr18, float* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %40 = load float*, float** %LutTable, align 8, !tbaa !1
  %41 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext19 = sext i32 %41 to i64
  %add.ptr20 = getelementptr inbounds float, float* %40, i64 %idx.ext19
  store float* %add.ptr20, float** %T, align 8, !tbaa !1
  %42 = load float*, float** %T, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %Table21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %43, i8** %Table21, align 8, !tbaa !20
  %44 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds float, float* %44, i64 1
  %arraydecay23 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i32 0
  call void @Eval5InputsFloat(float* %add.ptr22, float* %arraydecay23, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 3
  %47 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp24 = icmp ult i32 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %50, float* %y0, align 4, !tbaa !22
  %51 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = zext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i64 %idxprom27
  %53 = load float, float* %arrayidx28, align 4, !tbaa !22
  store float %53, float* %y1, align 4, !tbaa !22
  %54 = load float, float* %y0, align 4, !tbaa !22
  %55 = load float, float* %y1, align 4, !tbaa !22
  %56 = load float, float* %y0, align 4, !tbaa !22
  %sub29 = fsub float %55, %56
  %57 = load float, float* %rest, align 4, !tbaa !22
  %mul30 = fmul float %sub29, %57
  %add31 = fadd float %54, %mul30
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom32 = zext i32 %58 to i64
  %59 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %59, i64 %idxprom32
  store float %add31, float* %arrayidx33, align 4, !tbaa !22
  %60 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %63) #1
  %64 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %64) #1
  %65 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast float* %pk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval6Inputs(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca i16*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x i16], align 16
  %Tmp2 = alloca [128 x i16], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i16** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %11) #1
  %12 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %15 to i32
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %17
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %18 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %18, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %19 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %19, 65535
  store i32 %and, i32* %rk, align 4, !tbaa !19
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 5
  %21 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %22 = load i32, i32* %k0, align 4, !tbaa !19
  %mul3 = mul i32 %21, %22
  store i32 %mul3, i32* %K0, align 4, !tbaa !19
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta4, i32 0, i64 5
  %24 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %25 = load i32, i32* %k0, align 4, !tbaa !19
  %26 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = zext i16 %27 to i32
  %cmp = icmp ne i32 %conv7, 65535
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %25, %cond
  %mul9 = mul i32 %24, %add
  store i32 %mul9, i32* %K1, align 4, !tbaa !19
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %29 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %30 = bitcast %struct._cms_interp_struc* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 0
  %31 = bitcast i32* %arrayidx11 to i8*
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 1
  %33 = bitcast i32* %arrayidx13 to i8*
  %call14 = call i8* @memmove(i8* %31, i8* %33, i64 20) #9
  %34 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %35 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i16, i16* %34, i64 %idx.ext
  store i16* %add.ptr, i16** %T, align 8, !tbaa !1
  %36 = load i16*, i16** %T, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i8*
  %Table15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %37, i8** %Table15, align 8, !tbaa !20
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i16, i16* %38, i64 1
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i32 0
  call void @Eval5Inputs(i16* %add.ptr16, i16* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %39 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %40 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext17 = sext i32 %40 to i64
  %add.ptr18 = getelementptr inbounds i16, i16* %39, i64 %idx.ext17
  store i16* %add.ptr18, i16** %T, align 8, !tbaa !1
  %41 = load i16*, i16** %T, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  %Table19 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %42, i8** %Table19, align 8, !tbaa !20
  %43 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i16, i16* %43, i64 1
  %arraydecay21 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i32 0
  call void @Eval5Inputs(i16* %add.ptr20, i16* %arraydecay21, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 3
  %46 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp22 = icmp ult i32 %44, %46
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %rk, align 4, !tbaa !19
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %48 to i64
  %arrayidx24 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom
  %49 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %conv25 = zext i16 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom26 = zext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom26
  %51 = load i16, i16* %arrayidx27, align 2, !tbaa !24
  %conv28 = zext i16 %51 to i32
  %call29 = call zeroext i16 @LinearInterp(i32 %47, i32 %conv25, i32 %conv28) #8
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom30 = zext i32 %52 to i64
  %53 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %53, i64 %idxprom30
  store i16 %call29, i16* %arrayidx31, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %55) #1
  %56 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %56) #1
  %57 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i16** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval7InputsFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %rest = alloca float, align 4
  %pk = alloca float, align 4
  %k0 = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca float*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x float], align 16
  %Tmp2 = alloca [128 x float], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  %y0 = alloca float, align 4
  %y1 = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %pk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %15) #8
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %17 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %pk, align 4, !tbaa !22
  %18 = load float, float* %pk, align 4, !tbaa !22
  %conv2 = fpext float %18 to double
  %call3 = call i32 @_cmsQuickFloor(double %conv2) #8
  store i32 %call3, i32* %k0, align 4, !tbaa !19
  %19 = load float, float* %pk, align 4, !tbaa !22
  %20 = load i32, i32* %k0, align 4, !tbaa !19
  %conv4 = sitofp i32 %20 to float
  %sub = fsub float %19, %conv4
  store float %sub, float* %rest, align 4, !tbaa !22
  %21 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %21, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 6
  %22 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %23 = load i32, i32* %k0, align 4, !tbaa !19
  %mul6 = mul i32 %22, %23
  store i32 %mul6, i32* %K0, align 4, !tbaa !19
  %24 = load i32, i32* %K0, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx7, align 4, !tbaa !22
  %conv8 = fpext float %26 to double
  %cmp = fcmp oge double %conv8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %opta10, i32 0, i64 6
  %28 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %add = add i32 %24, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %30 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %31 = bitcast %struct._cms_interp_struc* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 0
  %32 = bitcast i32* %arrayidx13 to i8*
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 1
  %34 = bitcast i32* %arrayidx15 to i8*
  %call16 = call i8* @memmove(i8* %32, i8* %34, i64 24) #9
  %35 = load float*, float** %LutTable, align 8, !tbaa !1
  %36 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds float, float* %35, i64 %idx.ext
  store float* %add.ptr, float** %T, align 8, !tbaa !1
  %37 = load float*, float** %T, align 8, !tbaa !1
  %38 = bitcast float* %37 to i8*
  %Table17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %38, i8** %Table17, align 8, !tbaa !20
  %39 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds float, float* %39, i64 1
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i32 0
  call void @Eval6InputsFloat(float* %add.ptr18, float* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %40 = load float*, float** %LutTable, align 8, !tbaa !1
  %41 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext19 = sext i32 %41 to i64
  %add.ptr20 = getelementptr inbounds float, float* %40, i64 %idx.ext19
  store float* %add.ptr20, float** %T, align 8, !tbaa !1
  %42 = load float*, float** %T, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %Table21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %43, i8** %Table21, align 8, !tbaa !20
  %44 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds float, float* %44, i64 1
  %arraydecay23 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i32 0
  call void @Eval6InputsFloat(float* %add.ptr22, float* %arraydecay23, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 3
  %47 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp24 = icmp ult i32 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %50, float* %y0, align 4, !tbaa !22
  %51 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = zext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i64 %idxprom27
  %53 = load float, float* %arrayidx28, align 4, !tbaa !22
  store float %53, float* %y1, align 4, !tbaa !22
  %54 = load float, float* %y0, align 4, !tbaa !22
  %55 = load float, float* %y1, align 4, !tbaa !22
  %56 = load float, float* %y0, align 4, !tbaa !22
  %sub29 = fsub float %55, %56
  %57 = load float, float* %rest, align 4, !tbaa !22
  %mul30 = fmul float %sub29, %57
  %add31 = fadd float %54, %mul30
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom32 = zext i32 %58 to i64
  %59 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %59, i64 %idxprom32
  store float %add31, float* %arrayidx33, align 4, !tbaa !22
  %60 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %63) #1
  %64 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %64) #1
  %65 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast float* %pk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval7Inputs(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca i16*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x i16], align 16
  %Tmp2 = alloca [128 x i16], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i16** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %11) #1
  %12 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %15 to i32
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %17
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %18 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %18, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %19 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %19, 65535
  store i32 %and, i32* %rk, align 4, !tbaa !19
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 6
  %21 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %22 = load i32, i32* %k0, align 4, !tbaa !19
  %mul3 = mul i32 %21, %22
  store i32 %mul3, i32* %K0, align 4, !tbaa !19
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta4, i32 0, i64 6
  %24 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %25 = load i32, i32* %k0, align 4, !tbaa !19
  %26 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = zext i16 %27 to i32
  %cmp = icmp ne i32 %conv7, 65535
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %25, %cond
  %mul9 = mul i32 %24, %add
  store i32 %mul9, i32* %K1, align 4, !tbaa !19
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %29 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %30 = bitcast %struct._cms_interp_struc* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 0
  %31 = bitcast i32* %arrayidx11 to i8*
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 1
  %33 = bitcast i32* %arrayidx13 to i8*
  %call14 = call i8* @memmove(i8* %31, i8* %33, i64 24) #9
  %34 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %35 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i16, i16* %34, i64 %idx.ext
  store i16* %add.ptr, i16** %T, align 8, !tbaa !1
  %36 = load i16*, i16** %T, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i8*
  %Table15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %37, i8** %Table15, align 8, !tbaa !20
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i16, i16* %38, i64 1
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i32 0
  call void @Eval6Inputs(i16* %add.ptr16, i16* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %39 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %40 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext17 = sext i32 %40 to i64
  %add.ptr18 = getelementptr inbounds i16, i16* %39, i64 %idx.ext17
  store i16* %add.ptr18, i16** %T, align 8, !tbaa !1
  %41 = load i16*, i16** %T, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  %Table19 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %42, i8** %Table19, align 8, !tbaa !20
  %43 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i16, i16* %43, i64 1
  %arraydecay21 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i32 0
  call void @Eval6Inputs(i16* %add.ptr20, i16* %arraydecay21, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 3
  %46 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp22 = icmp ult i32 %44, %46
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %rk, align 4, !tbaa !19
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %48 to i64
  %arrayidx24 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom
  %49 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %conv25 = zext i16 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom26 = zext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom26
  %51 = load i16, i16* %arrayidx27, align 2, !tbaa !24
  %conv28 = zext i16 %51 to i32
  %call29 = call zeroext i16 @LinearInterp(i32 %47, i32 %conv25, i32 %conv28) #8
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom30 = zext i32 %52 to i64
  %53 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %53, i64 %idxprom30
  store i16 %call29, i16* %arrayidx31, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %55) #1
  %56 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %56) #1
  %57 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i16** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval8InputsFloat(float* %Input, float* %Output, %struct._cms_interp_struc* %p) #0 {
entry:
  %Input.addr = alloca float*, align 8
  %Output.addr = alloca float*, align 8
  %p.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca float*, align 8
  %rest = alloca float, align 4
  %pk = alloca float, align 4
  %k0 = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca float*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x float], align 16
  %Tmp2 = alloca [128 x float], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  %y0 = alloca float, align 4
  %y1 = alloca float, align 4
  store float* %Input, float** %Input.addr, align 8, !tbaa !1
  store float* %Output, float** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %0 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %LutTable, align 8, !tbaa !1
  %4 = bitcast float* %rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast float* %pk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast float** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 0
  %15 = load float, float* %arrayidx, align 4, !tbaa !22
  %call = call float @fclamp(float %15) #8
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %conv = uitofp i32 %17 to float
  %mul = fmul float %call, %conv
  store float %mul, float* %pk, align 4, !tbaa !22
  %18 = load float, float* %pk, align 4, !tbaa !22
  %conv2 = fpext float %18 to double
  %call3 = call i32 @_cmsQuickFloor(double %conv2) #8
  store i32 %call3, i32* %k0, align 4, !tbaa !19
  %19 = load float, float* %pk, align 4, !tbaa !22
  %20 = load i32, i32* %k0, align 4, !tbaa !19
  %conv4 = sitofp i32 %20 to float
  %sub = fsub float %19, %conv4
  store float %sub, float* %rest, align 4, !tbaa !22
  %21 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %21, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 7
  %22 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %23 = load i32, i32* %k0, align 4, !tbaa !19
  %mul6 = mul i32 %22, %23
  store i32 %mul6, i32* %K0, align 4, !tbaa !19
  %24 = load i32, i32* %K0, align 4, !tbaa !19
  %25 = load float*, float** %Input.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %25, i64 0
  %26 = load float, float* %arrayidx7, align 4, !tbaa !22
  %conv8 = fpext float %26 to double
  %cmp = fcmp oge double %conv8, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %opta10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %27, i32 0, i32 6
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %opta10, i32 0, i64 7
  %28 = load i32, i32* %arrayidx11, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %28, %cond.false ]
  %add = add i32 %24, %cond
  store i32 %add, i32* %K1, align 4, !tbaa !19
  %29 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %30 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %31 = bitcast %struct._cms_interp_struc* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 0
  %32 = bitcast i32* %arrayidx13 to i8*
  %33 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %Domain14 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %33, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain14, i32 0, i64 1
  %34 = bitcast i32* %arrayidx15 to i8*
  %call16 = call i8* @memmove(i8* %32, i8* %34, i64 28) #9
  %35 = load float*, float** %LutTable, align 8, !tbaa !1
  %36 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds float, float* %35, i64 %idx.ext
  store float* %add.ptr, float** %T, align 8, !tbaa !1
  %37 = load float*, float** %T, align 8, !tbaa !1
  %38 = bitcast float* %37 to i8*
  %Table17 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %38, i8** %Table17, align 8, !tbaa !20
  %39 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds float, float* %39, i64 1
  %arraydecay = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i32 0
  call void @Eval7InputsFloat(float* %add.ptr18, float* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %40 = load float*, float** %LutTable, align 8, !tbaa !1
  %41 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext19 = sext i32 %41 to i64
  %add.ptr20 = getelementptr inbounds float, float* %40, i64 %idx.ext19
  store float* %add.ptr20, float** %T, align 8, !tbaa !1
  %42 = load float*, float** %T, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %Table21 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %43, i8** %Table21, align 8, !tbaa !20
  %44 = load float*, float** %Input.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds float, float* %44, i64 1
  %arraydecay23 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i32 0
  call void @Eval7InputsFloat(float* %add.ptr22, float* %arraydecay23, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %46 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %46, i32 0, i32 3
  %47 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp24 = icmp ult i32 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %49 to i64
  %arrayidx26 = getelementptr inbounds [128 x float], [128 x float]* %Tmp1, i32 0, i64 %idxprom
  %50 = load float, float* %arrayidx26, align 4, !tbaa !22
  store float %50, float* %y0, align 4, !tbaa !22
  %51 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom27 = zext i32 %52 to i64
  %arrayidx28 = getelementptr inbounds [128 x float], [128 x float]* %Tmp2, i32 0, i64 %idxprom27
  %53 = load float, float* %arrayidx28, align 4, !tbaa !22
  store float %53, float* %y1, align 4, !tbaa !22
  %54 = load float, float* %y0, align 4, !tbaa !22
  %55 = load float, float* %y1, align 4, !tbaa !22
  %56 = load float, float* %y0, align 4, !tbaa !22
  %sub29 = fsub float %55, %56
  %57 = load float, float* %rest, align 4, !tbaa !22
  %mul30 = fmul float %sub29, %57
  %add31 = fadd float %54, %mul30
  %58 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom32 = zext i32 %58 to i64
  %59 = load float*, float** %Output.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds float, float* %59, i64 %idxprom32
  store float %add31, float* %arrayidx33, align 4, !tbaa !22
  %60 = bitcast float* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast float* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %63) #1
  %64 = bitcast [128 x float]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %64) #1
  %65 = bitcast [128 x float]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %65) #1
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast float** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast float* %pk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast float* %rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast float** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Eval8Inputs(i16* %Input, i16* %Output, %struct._cms_interp_struc* %p16) #0 {
entry:
  %Input.addr = alloca i16*, align 8
  %Output.addr = alloca i16*, align 8
  %p16.addr = alloca %struct._cms_interp_struc*, align 8
  %LutTable = alloca i16*, align 8
  %fk = alloca i32, align 4
  %k0 = alloca i32, align 4
  %rk = alloca i32, align 4
  %K0 = alloca i32, align 4
  %K1 = alloca i32, align 4
  %T = alloca i16*, align 8
  %i = alloca i32, align 4
  %Tmp1 = alloca [128 x i16], align 16
  %Tmp2 = alloca [128 x i16], align 16
  %p1 = alloca %struct._cms_interp_struc, align 8
  store i16* %Input, i16** %Input.addr, align 8, !tbaa !1
  store i16* %Output, i16** %Output.addr, align 8, !tbaa !1
  store %struct._cms_interp_struc* %p16, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %0 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %1, i32 0, i32 7
  %2 = load i8*, i8** %Table, align 8, !tbaa !20
  %3 = bitcast i8* %2 to i16*
  store i16* %3, i16** %LutTable, align 8, !tbaa !1
  %4 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i16** %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %11) #1
  %12 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #1
  %13 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.start(i64 136, i8* %13) #1
  %14 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !24
  %conv = zext i16 %15 to i32
  %16 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %16, i32 0, i32 5
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain, i32 0, i64 0
  %17 = load i32, i32* %arrayidx1, align 4, !tbaa !19
  %mul = mul i32 %conv, %17
  %call = call i32 @_cmsToFixedDomain(i32 %mul) #8
  store i32 %call, i32* %fk, align 4, !tbaa !19
  %18 = load i32, i32* %fk, align 4, !tbaa !19
  %shr = ashr i32 %18, 16
  store i32 %shr, i32* %k0, align 4, !tbaa !19
  %19 = load i32, i32* %fk, align 4, !tbaa !19
  %and = and i32 %19, 65535
  store i32 %and, i32* %rk, align 4, !tbaa !19
  %20 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %20, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %opta, i32 0, i64 7
  %21 = load i32, i32* %arrayidx2, align 4, !tbaa !19
  %22 = load i32, i32* %k0, align 4, !tbaa !19
  %mul3 = mul i32 %21, %22
  store i32 %mul3, i32* %K0, align 4, !tbaa !19
  %23 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %opta4 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %23, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %opta4, i32 0, i64 7
  %24 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %25 = load i32, i32* %k0, align 4, !tbaa !19
  %26 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx6, align 2, !tbaa !24
  %conv7 = zext i16 %27 to i32
  %cmp = icmp ne i32 %conv7, 65535
  %cond = select i1 %cmp, i32 1, i32 0
  %add = add nsw i32 %25, %cond
  %mul9 = mul i32 %24, %add
  store i32 %mul9, i32* %K1, align 4, !tbaa !19
  %28 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %29 = bitcast %struct._cms_interp_struc* %p1 to i8*
  %30 = bitcast %struct._cms_interp_struc* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 136, i32 8, i1 false), !tbaa.struct !26
  %Domain10 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 5
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain10, i32 0, i64 0
  %31 = bitcast i32* %arrayidx11 to i8*
  %32 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %Domain12 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %32, i32 0, i32 5
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %Domain12, i32 0, i64 1
  %33 = bitcast i32* %arrayidx13 to i8*
  %call14 = call i8* @memmove(i8* %31, i8* %33, i64 28) #9
  %34 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %35 = load i32, i32* %K0, align 4, !tbaa !19
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i16, i16* %34, i64 %idx.ext
  store i16* %add.ptr, i16** %T, align 8, !tbaa !1
  %36 = load i16*, i16** %T, align 8, !tbaa !1
  %37 = bitcast i16* %36 to i8*
  %Table15 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %37, i8** %Table15, align 8, !tbaa !20
  %38 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i16, i16* %38, i64 1
  %arraydecay = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i32 0
  call void @Eval7Inputs(i16* %add.ptr16, i16* %arraydecay, %struct._cms_interp_struc* %p1) #8
  %39 = load i16*, i16** %LutTable, align 8, !tbaa !1
  %40 = load i32, i32* %K1, align 4, !tbaa !19
  %idx.ext17 = sext i32 %40 to i64
  %add.ptr18 = getelementptr inbounds i16, i16* %39, i64 %idx.ext17
  store i16* %add.ptr18, i16** %T, align 8, !tbaa !1
  %41 = load i16*, i16** %T, align 8, !tbaa !1
  %42 = bitcast i16* %41 to i8*
  %Table19 = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %p1, i32 0, i32 7
  store i8* %42, i8** %Table19, align 8, !tbaa !20
  %43 = load i16*, i16** %Input.addr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i16, i16* %43, i64 1
  %arraydecay21 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i32 0
  call void @Eval7Inputs(i16* %add.ptr20, i16* %arraydecay21, %struct._cms_interp_struc* %p1) #8
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %44 = load i32, i32* %i, align 4, !tbaa !19
  %45 = load %struct._cms_interp_struc*, %struct._cms_interp_struc** %p16.addr, align 8, !tbaa !1
  %nOutputs = getelementptr inbounds %struct._cms_interp_struc, %struct._cms_interp_struc* %45, i32 0, i32 3
  %46 = load i32, i32* %nOutputs, align 4, !tbaa !16
  %cmp22 = icmp ult i32 %44, %46
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %rk, align 4, !tbaa !19
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %48 to i64
  %arrayidx24 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp1, i32 0, i64 %idxprom
  %49 = load i16, i16* %arrayidx24, align 2, !tbaa !24
  %conv25 = zext i16 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom26 = zext i32 %50 to i64
  %arrayidx27 = getelementptr inbounds [128 x i16], [128 x i16]* %Tmp2, i32 0, i64 %idxprom26
  %51 = load i16, i16* %arrayidx27, align 2, !tbaa !24
  %conv28 = zext i16 %51 to i32
  %call29 = call zeroext i16 @LinearInterp(i32 %47, i32 %conv25, i32 %conv28) #8
  %52 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom30 = zext i32 %52 to i64
  %53 = load i16*, i16** %Output.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %53, i64 %idxprom30
  store i16 %call29, i16* %arrayidx31, align 2, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = bitcast %struct._cms_interp_struc* %p1 to i8*
  call void @llvm.lifetime.end(i64 136, i8* %55) #1
  %56 = bitcast [128 x i16]* %Tmp2 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %56) #1
  %57 = bitcast [128 x i16]* %Tmp1 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %57) #1
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i16** %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %K1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %K0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %rk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %k0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %fk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i16** %LutTable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal float @fclamp(float %v) #5 {
entry:
  %v.addr = alloca float, align 4
  store float %v, float* %v.addr, align 4, !tbaa !22
  %0 = load float, float* %v.addr, align 4, !tbaa !22
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load float, float* %v.addr, align 4, !tbaa !22
  %cmp1 = fcmp ogt float %1, 1.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load float, float* %v.addr, align 4, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi float [ 1.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi float [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  ret float %cond5
}

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind readnone
declare double @ceil(double) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsToFixedDomain(i32 %a) #5 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !19
  %0 = load i32, i32* %a.addr, align 4, !tbaa !19
  %1 = load i32, i32* %a.addr, align 4, !tbaa !19
  %add = add nsw i32 %1, 32767
  %div = sdiv i32 %add, 65535
  %add1 = add nsw i32 %0, %div
  ret i32 %add1
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @LinearInterp(i32 %a, i32 %l, i32 %h) #5 {
entry:
  %a.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dif = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !19
  store i32 %l, i32* %l.addr, align 4, !tbaa !19
  store i32 %h, i32* %h.addr, align 4, !tbaa !19
  %0 = bitcast i32* %dif to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %h.addr, align 4, !tbaa !19
  %2 = load i32, i32* %l.addr, align 4, !tbaa !19
  %sub = sub nsw i32 %1, %2
  %3 = load i32, i32* %a.addr, align 4, !tbaa !19
  %mul = mul i32 %sub, %3
  %add = add i32 %mul, 32768
  store i32 %add, i32* %dif, align 4, !tbaa !19
  %4 = load i32, i32* %dif, align 4, !tbaa !19
  %shr = lshr i32 %4, 16
  %5 = load i32, i32* %l.addr, align 4, !tbaa !19
  %add1 = add i32 %shr, %5
  store i32 %add1, i32* %dif, align 4, !tbaa !19
  %6 = load i32, i32* %dif, align 4, !tbaa !19
  %conv = trunc i32 %6 to i16
  %7 = bitcast i32* %dif to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i16 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #5 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !28
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !28
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !28
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !28
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !19
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!10 = !{!11, !2, i64 24}
!11 = !{!"", !12, i64 0, !2, i64 24}
!12 = !{!"_cmsPluginBaseStruct", !13, i64 0, !13, i64 4, !13, i64 8, !2, i64 16}
!13 = !{!"int", !3, i64 0}
!14 = !{!15, !13, i64 12}
!15 = !{!"_cms_interp_struc", !2, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !3, i64 20, !3, i64 52, !3, i64 84, !2, i64 120, !3, i64 128}
!16 = !{!15, !13, i64 16}
!17 = !{!15, !13, i64 8}
!18 = !{i64 0, i64 8, !1, i64 0, i64 8, !1}
!19 = !{!13, !13, i64 0}
!20 = !{!15, !2, i64 120}
!21 = !{!15, !2, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !3, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !3, i64 0}
!26 = !{i64 0, i64 8, !1, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 32, !27, i64 52, i64 32, !27, i64 84, i64 32, !27, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 128, i64 8, !1}
!27 = !{!3, !3, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !3, i64 0}
