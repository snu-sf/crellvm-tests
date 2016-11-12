; ModuleID = './cmserr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { {}*, {}*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsLogErrorChunkType = type { void (%struct._cmsContext_struct*, i32, i8*)* }
%struct._cmsMutexPluginChunkType = type { i8* (%struct._cmsContext_struct*)*, void (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cmsPluginMemHandler = type { %struct._cmsPluginBaseStruct, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.cmsPluginMutex = type { %struct._cmsPluginBaseStruct, i8* (%struct._cmsContext_struct*)*, void (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)* }
%union.pthread_mutexattr_t = type { i32 }

@_cmsMemPluginChunk = global { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* } { i8* (%struct._cmsContext_struct*, i32)* @_cmsMallocDefaultFn, i8* (%struct._cmsContext_struct*, i32)* @_cmsMallocZeroDefaultFn, void (%struct._cmsContext_struct*, i8*)* @_cmsFreeDefaultFn, i8* (%struct._cmsContext_struct*, i8*, i32)* @_cmsReallocDefaultFn, i8* (%struct._cmsContext_struct*, i32, i32)* @_cmsCallocDefaultFn, i8* (%struct._cmsContext_struct*, i8*, i32)* @_cmsDupDefaultFn }, align 8
@.str = private unnamed_addr constant [20 x i8] c"(ctx != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmserr.c\00", align 1
@__PRETTY_FUNCTION__._cmsAllocMemPluginChunk = private unnamed_addr constant [93 x i8] c"void _cmsAllocMemPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)\00", align 1
@_cmsLogErrorChunk = global %struct._cmsLogErrorChunkType { void (%struct._cmsContext_struct*, i32, i8*)* @DefaultLogErrorHandlerFunction }, align 8
@_cmsAllocLogErrorChunk.LogErrorChunk = internal global %struct._cmsLogErrorChunkType { void (%struct._cmsContext_struct*, i32, i8*)* @DefaultLogErrorHandlerFunction }, align 8
@_cmsMutexPluginChunk = global %struct._cmsMutexPluginChunkType { i8* (%struct._cmsContext_struct*)* @defMtxCreate, void (%struct._cmsContext_struct*, i8*)* @defMtxDestroy, i32 (%struct._cmsContext_struct*, i8*)* @defMtxLock, void (%struct._cmsContext_struct*, i8*)* @defMtxUnlock }, align 8
@_cmsAllocMutexPluginChunk.MutexChunk = internal global %struct._cmsMutexPluginChunkType { i8* (%struct._cmsContext_struct*)* @defMtxCreate, void (%struct._cmsContext_struct*, i8*)* @defMtxDestroy, i32 (%struct._cmsContext_struct*, i8*)* @defMtxLock, void (%struct._cmsContext_struct*, i8*)* @defMtxUnlock }, align 8

; Function Attrs: nounwind uwtable
define i32 @cmsstrcasecmp(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %us1 = alloca i8*, align 8
  %us2 = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res2 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__res14 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %__res21 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8, !tbaa !1
  store i8* %s2, i8** %s2.addr, align 8, !tbaa !1
  %0 = bitcast i8** %us1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %s1.addr, align 8, !tbaa !1
  store i8* %1, i8** %us1, align 8, !tbaa !1
  %2 = bitcast i8** %us2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %s2.addr, align 8, !tbaa !1
  store i8* %3, i8** %us2, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %us1, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i32** @__ctype_toupper_loc() #7
  %7 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !6
  store i32 %8, i32* %__res, align 4, !tbaa !6
  %9 = load i32, i32* %__res, align 4, !tbaa !6
  store i32 %9, i32* %tmp, !tbaa !6
  %10 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %tmp, !tbaa !6
  %12 = bitcast i32* %__res2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %us2, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %us2, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %conv3 = zext i8 %14 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %call5 = call i32** @__ctype_toupper_loc() #7
  %15 = load i32*, i32** %call5, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom4
  %16 = load i32, i32* %arrayidx6, align 4, !tbaa !6
  store i32 %16, i32* %__res2, align 4, !tbaa !6
  %17 = load i32, i32* %__res2, align 4, !tbaa !6
  store i32 %17, i32* %tmp7, !tbaa !6
  %18 = bitcast i32* %__res2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = load i32, i32* %tmp7, !tbaa !6
  %cmp = icmp eq i32 %11, %19
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %us1, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr9, i8** %us1, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %conv10 = zext i8 %21 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = bitcast i32* %__res14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %us1, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !5
  %conv15 = zext i8 %24 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %call17 = call i32** @__ctype_toupper_loc() #7
  %25 = load i32*, i32** %call17, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  %26 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  store i32 %26, i32* %__res14, align 4, !tbaa !6
  %27 = load i32, i32* %__res14, align 4, !tbaa !6
  store i32 %27, i32* %tmp19, !tbaa !6
  %28 = bitcast i32* %__res14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %tmp19, !tbaa !6
  %30 = bitcast i32* %__res21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i8*, i8** %us2, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr22, i8** %us2, align 8, !tbaa !1
  %32 = load i8, i8* %incdec.ptr22, align 1, !tbaa !5
  %conv23 = zext i8 %32 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %call25 = call i32** @__ctype_toupper_loc() #7
  %33 = load i32*, i32** %call25, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i32, i32* %33, i64 %idxprom24
  %34 = load i32, i32* %arrayidx26, align 4, !tbaa !6
  store i32 %34, i32* %__res21, align 4, !tbaa !6
  %35 = load i32, i32* %__res21, align 4, !tbaa !6
  store i32 %35, i32* %tmp27, !tbaa !6
  %36 = bitcast i32* %__res21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %tmp27, !tbaa !6
  %sub = sub nsw i32 %29, %37
  store i32 %sub, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %38 = bitcast i8** %us2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %us1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @cmsfilelength(%struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast i64* %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i64 @ftell(%struct._IO_FILE* %2) #8
  store i64 %call, i64* %p, align 8, !tbaa !8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call1 = call i32 @fseek(%struct._IO_FILE* %3, i64 0, i32 2) #8
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call2 = call i64 @ftell(%struct._IO_FILE* %4) #8
  store i64 %call2, i64* %n, align 8, !tbaa !8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %6 = load i64, i64* %p, align 8, !tbaa !8
  %call3 = call i32 @fseek(%struct._IO_FILE* %5, i64 %6, i32 0) #8
  %7 = load i64, i64* %n, align 8, !tbaa !8
  store i64 %7, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i64* %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @ftell(%struct._IO_FILE*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @_cmsMallocDefaultFn(%struct._cmsContext_struct* %ContextID, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp = icmp ugt i32 %0, 536870912
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv) #9
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @_cmsMallocZeroDefaultFn(%struct._cmsContext_struct* %ContextID, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  %pt = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i8** %pt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call = call i8* @_cmsMalloc(%struct._cmsContext_struct* %1, i32 %2) #8
  store i8* %call, i8** %pt, align 8, !tbaa !1
  %3 = load i8*, i8** %pt, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %pt, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %5 to i64
  %call1 = call i8* @memset(i8* %4, i32 0, i64 %conv) #9
  %6 = load i8*, i8** %pt, align 8, !tbaa !1
  store i8* %6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i8** %pt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal void @_cmsFreeDefaultFn(%struct._cmsContext_struct* %ContextID, i8* %Ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Ptr.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  call void @free(i8* %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @_cmsReallocDefaultFn(%struct._cmsContext_struct* %ContextID, i8* %Ptr, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp = icmp ugt i32 %0, 536870912
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %2 to i64
  %call = call i8* @realloc(i8* %1, i64 %conv) #9
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal i8* @_cmsCallocDefaultFn(%struct._cmsContext_struct* %ContextID, i32 %num, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %num.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %Total = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %num, i32* %num.addr, align 4, !tbaa !6
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i32* %Total to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %num.addr, align 4, !tbaa !6
  %2 = load i32, i32* %size.addr, align 4, !tbaa !6
  %mul = mul i32 %1, %2
  store i32 %mul, i32* %Total, align 4, !tbaa !6
  %3 = load i32, i32* %Total, align 4, !tbaa !6
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %num.addr, align 4, !tbaa !6
  %5 = load i32, i32* %size.addr, align 4, !tbaa !6
  %div = udiv i32 -1, %5
  %cmp1 = icmp uge i32 %4, %div
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %Total, align 4, !tbaa !6
  %7 = load i32, i32* %num.addr, align 4, !tbaa !6
  %cmp4 = icmp ult i32 %6, %7
  br i1 %cmp4, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %8 = load i32, i32* %Total, align 4, !tbaa !6
  %9 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp5 = icmp ult i32 %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.3
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %Total, align 4, !tbaa !6
  %cmp8 = icmp ugt i32 %10, 536870912
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.7
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %12 = load i32, i32* %Total, align 4, !tbaa !6
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %11, i32 %12) #8
  store i8* %call, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.6, %if.then.2, %if.then
  %13 = bitcast i32* %Total to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal i8* @_cmsDupDefaultFn(%struct._cmsContext_struct* %ContextID, i8* %Org, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Org.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Org, i8** %Org.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i8** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp = icmp ugt i32 %1, 536870912
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call = call i8* @_cmsMalloc(%struct._cmsContext_struct* %2, i32 %3) #8
  store i8* %call, i8** %mem, align 8, !tbaa !1
  %4 = load i8*, i8** %mem, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %Org.addr, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %Org.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %8 to i64
  %call4 = call i8* @memmove(i8* %6, i8* %7, i64 %conv) #9
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %9 = load i8*, i8** %mem, align 8, !tbaa !1
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %10 = bitcast i8** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define void @_cmsAllocMemPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
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
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 180, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__._cmsAllocMemPluginChunk, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsContext_struct* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %3, i32 0, i32 1
  %4 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !10
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src.addr, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 4
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %4, i8* %6, i32 48) #8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks2 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks2, i32 0, i64 4
  store i8* %call, i8** %arrayidx3, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %cond.end
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %DefaultMemoryManager = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %8, i32 0, i32 3
  %9 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager to i8*
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks4 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %10, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks4, i32 0, i64 4
  store i8* %9, i8** %arrayidx5, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %s, i8* %ptr, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca %struct._cmsSubAllocator*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %NewPtr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsSubAllocator* %s, %struct._cmsSubAllocator** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i8** %NewPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %s.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call = call i8* @_cmsSubAlloc(%struct._cmsSubAllocator* %2, i32 %3) #8
  store i8* %call, i8** %NewPtr, align 8, !tbaa !1
  %4 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %NewPtr, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %NewPtr, align 8, !tbaa !1
  %7 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %8 to i64
  %call4 = call i8* @memcpy(i8* %6, i8* %7, i64 %conv) #9
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %9 = load i8*, i8** %NewPtr, align 8, !tbaa !1
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %10 = bitcast i8** %NewPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define void @_cmsInstallAllocFunctions(%struct.cmsPluginMemHandler* %Plugin, %struct._cmsMemPluginChunkType* %ptr) #0 {
entry:
  %Plugin.addr = alloca %struct.cmsPluginMemHandler*, align 8
  %ptr.addr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct.cmsPluginMemHandler* %Plugin, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  store %struct._cmsMemPluginChunkType* %ptr, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %0 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsPluginMemHandler* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsMemPluginChunkType* %1 to i8*
  %call = call i8* @memcpy(i8* %2, i8* bitcast ({ i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }* @_cmsMemPluginChunk to i8*), i64 48) #9
  br label %if.end.24

if.else:                                          ; preds = %entry
  %3 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %MallocPtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %3, i32 0, i32 1
  %4 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocPtr, align 8, !tbaa !13
  %5 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %MallocPtr1 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %5, i32 0, i32 0
  %MallocPtr2 = bitcast {}** %MallocPtr1 to i8* (%struct._cmsContext_struct*, i32)**
  store i8* (%struct._cmsContext_struct*, i32)* %4, i8* (%struct._cmsContext_struct*, i32)** %MallocPtr2, align 8, !tbaa !16
  %6 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %FreePtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %6, i32 0, i32 2
  %7 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreePtr, align 8, !tbaa !17
  %8 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %FreePtr3 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %8, i32 0, i32 2
  store void (%struct._cmsContext_struct*, i8*)* %7, void (%struct._cmsContext_struct*, i8*)** %FreePtr3, align 8, !tbaa !18
  %9 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %ReallocPtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %9, i32 0, i32 3
  %10 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %ReallocPtr, align 8, !tbaa !19
  %11 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %ReallocPtr4 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %11, i32 0, i32 3
  store i8* (%struct._cmsContext_struct*, i8*, i32)* %10, i8* (%struct._cmsContext_struct*, i8*, i32)** %ReallocPtr4, align 8, !tbaa !20
  %12 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %MallocZeroPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %12, i32 0, i32 1
  %MallocZeroPtr5 = bitcast {}** %MallocZeroPtr to i8* (%struct._cmsContext_struct*, i32)**
  store i8* (%struct._cmsContext_struct*, i32)* @_cmsMallocZeroDefaultFn, i8* (%struct._cmsContext_struct*, i32)** %MallocZeroPtr5, align 8, !tbaa !21
  %13 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %CallocPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %13, i32 0, i32 4
  store i8* (%struct._cmsContext_struct*, i32, i32)* @_cmsCallocDefaultFn, i8* (%struct._cmsContext_struct*, i32, i32)** %CallocPtr, align 8, !tbaa !22
  %14 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %DupPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %14, i32 0, i32 5
  store i8* (%struct._cmsContext_struct*, i8*, i32)* @_cmsDupDefaultFn, i8* (%struct._cmsContext_struct*, i8*, i32)** %DupPtr, align 8, !tbaa !23
  %15 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %MallocZeroPtr6 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %15, i32 0, i32 4
  %16 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocZeroPtr6, align 8, !tbaa !24
  %cmp7 = icmp ne i8* (%struct._cmsContext_struct*, i32)* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %17 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %MallocZeroPtr9 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %17, i32 0, i32 4
  %18 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocZeroPtr9, align 8, !tbaa !24
  %19 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %MallocZeroPtr10 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %19, i32 0, i32 1
  %MallocZeroPtr11 = bitcast {}** %MallocZeroPtr10 to i8* (%struct._cmsContext_struct*, i32)**
  store i8* (%struct._cmsContext_struct*, i32)* %18, i8* (%struct._cmsContext_struct*, i32)** %MallocZeroPtr11, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  %20 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %CallocPtr12 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %20, i32 0, i32 5
  %21 = load i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)** %CallocPtr12, align 8, !tbaa !25
  %cmp13 = icmp ne i8* (%struct._cmsContext_struct*, i32, i32)* %21, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %22 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %CallocPtr15 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %22, i32 0, i32 5
  %23 = load i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)** %CallocPtr15, align 8, !tbaa !25
  %24 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %CallocPtr16 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %24, i32 0, i32 4
  store i8* (%struct._cmsContext_struct*, i32, i32)* %23, i8* (%struct._cmsContext_struct*, i32, i32)** %CallocPtr16, align 8, !tbaa !22
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  %25 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %DupPtr18 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %25, i32 0, i32 6
  %26 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %DupPtr18, align 8, !tbaa !26
  %cmp19 = icmp ne i8* (%struct._cmsContext_struct*, i8*, i32)* %26, null
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %27 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin.addr, align 8, !tbaa !1
  %DupPtr21 = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %27, i32 0, i32 6
  %28 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %DupPtr21, align 8, !tbaa !26
  %29 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr.addr, align 8, !tbaa !1
  %DupPtr22 = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %29, i32 0, i32 5
  store i8* (%struct._cmsContext_struct*, i8*, i32)* %28, i8* (%struct._cmsContext_struct*, i8*, i32)** %DupPtr22, align 8, !tbaa !23
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterMemHandlerPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %Plugin = alloca %struct.cmsPluginMemHandler*, align 8
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPluginMemHandler** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPluginBaseStruct* %1 to %struct.cmsPluginMemHandler*
  store %struct.cmsPluginMemHandler* %2, %struct.cmsPluginMemHandler** %Plugin, align 8, !tbaa !1
  %3 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %4, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsContext_struct* %6, %struct._cmsContext_struct** %ctx, align 8, !tbaa !1
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct._cmsContext_struct* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !1
  %DefaultMemoryManager = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %8, i32 0, i32 3
  %9 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager to i8*
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !1
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 4
  store i8* %9, i8** %arrayidx, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %11 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  br label %cleanup

if.end.3:                                         ; preds = %entry
  %12 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin, align 8, !tbaa !1
  %MallocPtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %12, i32 0, i32 1
  %13 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocPtr, align 8, !tbaa !13
  %cmp4 = icmp eq i8* (%struct._cmsContext_struct*, i32)* %13, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %14 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin, align 8, !tbaa !1
  %FreePtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %14, i32 0, i32 2
  %15 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreePtr, align 8, !tbaa !17
  %cmp5 = icmp eq void (%struct._cmsContext_struct*, i8*)* %15, null
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %16 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin, align 8, !tbaa !1
  %ReallocPtr = getelementptr inbounds %struct.cmsPluginMemHandler, %struct.cmsPluginMemHandler* %16, i32 0, i32 3
  %17 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %ReallocPtr, align 8, !tbaa !19
  %cmp7 = icmp eq i8* (%struct._cmsContext_struct*, i8*, i32)* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false.6
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %18, i32 4) #8
  %19 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %19, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %20 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cmsMemPluginChunkType* %20, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.9
  %21 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %Plugin, align 8, !tbaa !1
  %22 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  call void @_cmsInstallAllocFunctions(%struct.cmsPluginMemHandler* %21, %struct._cmsMemPluginChunkType* %22) #8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.end
  %23 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.cmsPluginMemHandler** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @_cmsMalloc(%struct._cmsContext_struct* %ContextID, i32 %size) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 4) #8
  %2 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %2, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %MallocPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %3, i32 0, i32 0
  %MallocPtr1 = bitcast {}** %MallocPtr to i8* (%struct._cmsContext_struct*, i32)**
  %4 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocPtr1, align 8, !tbaa !16
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call2 = call i8* %4(%struct._cmsContext_struct* %5, i32 %6) #8
  %7 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %call2
}

; Function Attrs: nounwind uwtable
define i8* @_cmsMallocZero(%struct._cmsContext_struct* %ContextID, i32 %size) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 4) #8
  %2 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %2, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %MallocZeroPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %3, i32 0, i32 1
  %MallocZeroPtr1 = bitcast {}** %MallocZeroPtr to i8* (%struct._cmsContext_struct*, i32)**
  %4 = load i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)** %MallocZeroPtr1, align 8, !tbaa !21
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call2 = call i8* %4(%struct._cmsContext_struct* %5, i32 %6) #8
  %7 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i8* %call2
}

; Function Attrs: nounwind uwtable
define i8* @_cmsCalloc(%struct._cmsContext_struct* %ContextID, i32 %num, i32 %size) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %num.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %num, i32* %num.addr, align 4, !tbaa !6
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 4) #8
  %2 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %2, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %CallocPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %3, i32 0, i32 4
  %4 = load i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)** %CallocPtr, align 8, !tbaa !22
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i32, i32* %num.addr, align 4, !tbaa !6
  %7 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call1 = call i8* %4(%struct._cmsContext_struct* %5, i32 %6, i32 %7) #8
  %8 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i8* @_cmsRealloc(%struct._cmsContext_struct* %ContextID, i8* %Ptr, i32 %size) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Ptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 4) #8
  %2 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %2, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %ReallocPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %3, i32 0, i32 3
  %4 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %ReallocPtr, align 8, !tbaa !20
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call1 = call i8* %4(%struct._cmsContext_struct* %5, i8* %6, i32 %7) #8
  %8 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define void @_cmsFree(%struct._cmsContext_struct* %ContextID, i8* %Ptr) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Ptr.addr = alloca i8*, align 8
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %2, i32 4) #8
  %3 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %3, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %4 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %FreePtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %4, i32 0, i32 2
  %5 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %FreePtr, align 8, !tbaa !18
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  call void %5(%struct._cmsContext_struct* %6, i8* %7) #8
  %8 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_cmsDupMem(%struct._cmsContext_struct* %ContextID, i8* %Org, i32 %size) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Org.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %ptr = alloca %struct._cmsMemPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Org, i8** %Org.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 4) #8
  %2 = bitcast i8* %call to %struct._cmsMemPluginChunkType*
  store %struct._cmsMemPluginChunkType* %2, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMemPluginChunkType*, %struct._cmsMemPluginChunkType** %ptr, align 8, !tbaa !1
  %DupPtr = getelementptr inbounds %struct._cmsMemPluginChunkType, %struct._cmsMemPluginChunkType* %3, i32 0, i32 5
  %4 = load i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)** %DupPtr, align 8, !tbaa !23
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %Org.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !6
  %call1 = call i8* %4(%struct._cmsContext_struct* %5, i8* %6, i32 %7) #8
  %8 = bitcast %struct._cmsMemPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define %struct._cmsSubAllocator* @_cmsCreateSubAlloc(%struct._cmsContext_struct* %ContextID, i32 %Initial) #0 {
entry:
  %retval = alloca %struct._cmsSubAllocator*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Initial.addr = alloca i32, align 4
  %sub = alloca %struct._cmsSubAllocator*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Initial, i32* %Initial.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsSubAllocator** %sub to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 16) #8
  %2 = bitcast i8* %call to %struct._cmsSubAllocator*
  store %struct._cmsSubAllocator* %2, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %3 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsSubAllocator* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsSubAllocator* null, %struct._cmsSubAllocator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %5, i32 0, i32 0
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !27
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i32, i32* %Initial.addr, align 4, !tbaa !6
  %call2 = call %struct._cmsSubAllocator_chunk_st* @_cmsCreateSubAllocChunk(%struct._cmsContext_struct* %6, i32 %7) #8
  %8 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %h = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %8, i32 0, i32 1
  store %struct._cmsSubAllocator_chunk_st* %call2, %struct._cmsSubAllocator_chunk_st** %h, align 8, !tbaa !29
  %9 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %h3 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %9, i32 0, i32 1
  %10 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h3, align 8, !tbaa !29
  %cmp4 = icmp eq %struct._cmsSubAllocator_chunk_st* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %12 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  %13 = bitcast %struct._cmsSubAllocator* %12 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %11, i8* %13) #8
  store %struct._cmsSubAllocator* null, %struct._cmsSubAllocator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub, align 8, !tbaa !1
  store %struct._cmsSubAllocator* %14, %struct._cmsSubAllocator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %15 = bitcast %struct._cmsSubAllocator** %sub to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %retval
  ret %struct._cmsSubAllocator* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._cmsSubAllocator_chunk_st* @_cmsCreateSubAllocChunk(%struct._cmsContext_struct* %ContextID, i32 %Initial) #0 {
entry:
  %retval = alloca %struct._cmsSubAllocator_chunk_st*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Initial.addr = alloca i32, align 4
  %chunk = alloca %struct._cmsSubAllocator_chunk_st*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %Initial, i32* %Initial.addr, align 4, !tbaa !6
  %0 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %Initial.addr, align 4, !tbaa !6
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 20480, i32* %Initial.addr, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 24) #8
  %3 = bitcast i8* %call to %struct._cmsSubAllocator_chunk_st*
  store %struct._cmsSubAllocator_chunk_st* %3, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %4 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cmsSubAllocator_chunk_st* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cmsSubAllocator_chunk_st* null, %struct._cmsSubAllocator_chunk_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load i32, i32* %Initial.addr, align 4, !tbaa !6
  %call4 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %5, i32 %6) #8
  %7 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %7, i32 0, i32 0
  store i8* %call4, i8** %Block, align 8, !tbaa !30
  %8 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %Block5 = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %8, i32 0, i32 0
  %9 = load i8*, i8** %Block5, align 8, !tbaa !30
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %11 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %12 = bitcast %struct._cmsSubAllocator_chunk_st* %11 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %10, i8* %12) #8
  store %struct._cmsSubAllocator_chunk_st* null, %struct._cmsSubAllocator_chunk_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.3
  %13 = load i32, i32* %Initial.addr, align 4, !tbaa !6
  %14 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %BlockSize = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %14, i32 0, i32 1
  store i32 %13, i32* %BlockSize, align 4, !tbaa !32
  %15 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %Used = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %15, i32 0, i32 2
  store i32 0, i32* %Used, align 4, !tbaa !33
  %16 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %16, i32 0, i32 3
  store %struct._cmsSubAllocator_chunk_st* null, %struct._cmsSubAllocator_chunk_st** %next, align 8, !tbaa !34
  %17 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  store %struct._cmsSubAllocator_chunk_st* %17, %struct._cmsSubAllocator_chunk_st** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.2
  %18 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %retval
  ret %struct._cmsSubAllocator_chunk_st* %19
}

; Function Attrs: nounwind uwtable
define void @_cmsSubAllocDestroy(%struct._cmsSubAllocator* %sub) #0 {
entry:
  %sub.addr = alloca %struct._cmsSubAllocator*, align 8
  %chunk = alloca %struct._cmsSubAllocator_chunk_st*, align 8
  %n = alloca %struct._cmsSubAllocator_chunk_st*, align 8
  store %struct._cmsSubAllocator* %sub, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsSubAllocator_chunk_st** %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %2, i32 0, i32 1
  %3 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h, align 8, !tbaa !29
  store %struct._cmsSubAllocator_chunk_st* %3, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsSubAllocator_chunk_st* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %5, i32 0, i32 3
  %6 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %next, align 8, !tbaa !34
  store %struct._cmsSubAllocator_chunk_st* %6, %struct._cmsSubAllocator_chunk_st** %n, align 8, !tbaa !1
  %7 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %7, i32 0, i32 0
  %8 = load i8*, i8** %Block, align 8, !tbaa !30
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %9, i32 0, i32 0
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %11 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %Block2 = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %11, i32 0, i32 0
  %12 = load i8*, i8** %Block2, align 8, !tbaa !30
  call void @_cmsFree(%struct._cmsContext_struct* %10, i8* %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %ContextID3 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %13, i32 0, i32 0
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID3, align 8, !tbaa !27
  %15 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %16 = bitcast %struct._cmsSubAllocator_chunk_st* %15 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %14, i8* %16) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %n, align 8, !tbaa !1
  store %struct._cmsSubAllocator_chunk_st* %17, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %18, i32 0, i32 0
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !27
  %20 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %21 = bitcast %struct._cmsSubAllocator* %20 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %19, i8* %21) #8
  %22 = bitcast %struct._cmsSubAllocator_chunk_st** %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_cmsSubAlloc(%struct._cmsSubAllocator* %sub, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %sub.addr = alloca %struct._cmsSubAllocator*, align 8
  %size.addr = alloca i32, align 4
  %Free = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %chunk = alloca %struct._cmsSubAllocator_chunk_st*, align 8
  %newSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsSubAllocator* %sub, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !6
  %0 = bitcast i32* %Free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %1, i32 0, i32 1
  %2 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h, align 8, !tbaa !29
  %BlockSize = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %2, i32 0, i32 1
  %3 = load i32, i32* %BlockSize, align 4, !tbaa !32
  %4 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %4, i32 0, i32 1
  %5 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h1, align 8, !tbaa !29
  %Used = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %5, i32 0, i32 2
  %6 = load i32, i32* %Used, align 4, !tbaa !33
  %sub2 = sub i32 %3, %6
  store i32 %sub2, i32* %Free, align 4, !tbaa !6
  %7 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %size.addr, align 4, !tbaa !6
  %conv = zext i32 %8 to i64
  %add = add i64 %conv, 7
  %and = and i64 %add, -8
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %size.addr, align 4, !tbaa !6
  %9 = load i32, i32* %size.addr, align 4, !tbaa !6
  %10 = load i32, i32* %Free, align 4, !tbaa !6
  %cmp = icmp ugt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %11 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %newSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h5 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %13, i32 0, i32 1
  %14 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h5, align 8, !tbaa !29
  %BlockSize6 = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %14, i32 0, i32 1
  %15 = load i32, i32* %BlockSize6, align 4, !tbaa !32
  %mul = mul i32 %15, 2
  store i32 %mul, i32* %newSize, align 4, !tbaa !6
  %16 = load i32, i32* %newSize, align 4, !tbaa !6
  %17 = load i32, i32* %size.addr, align 4, !tbaa !6
  %cmp7 = icmp ult i32 %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %18 = load i32, i32* %size.addr, align 4, !tbaa !6
  store i32 %18, i32* %newSize, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %19 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %21 = load i32, i32* %newSize, align 4, !tbaa !6
  %call = call %struct._cmsSubAllocator_chunk_st* @_cmsCreateSubAllocChunk(%struct._cmsContext_struct* %20, i32 %21) #8
  store %struct._cmsSubAllocator_chunk_st* %call, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %22 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cmsSubAllocator_chunk_st* %22, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %23 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h14 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %23, i32 0, i32 1
  %24 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h14, align 8, !tbaa !29
  %25 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %next = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %25, i32 0, i32 3
  store %struct._cmsSubAllocator_chunk_st* %24, %struct._cmsSubAllocator_chunk_st** %next, align 8, !tbaa !34
  %26 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %chunk, align 8, !tbaa !1
  %27 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h15 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %27, i32 0, i32 1
  store %struct._cmsSubAllocator_chunk_st* %26, %struct._cmsSubAllocator_chunk_st** %h15, align 8, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12
  %28 = bitcast i32* %newSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct._cmsSubAllocator_chunk_st** %chunk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %entry
  %30 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h18 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %30, i32 0, i32 1
  %31 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h18, align 8, !tbaa !29
  %Block = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %31, i32 0, i32 0
  %32 = load i8*, i8** %Block, align 8, !tbaa !30
  %33 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h19 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %33, i32 0, i32 1
  %34 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h19, align 8, !tbaa !29
  %Used20 = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %34, i32 0, i32 2
  %35 = load i32, i32* %Used20, align 4, !tbaa !33
  %idx.ext = zext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !1
  %36 = load i32, i32* %size.addr, align 4, !tbaa !6
  %37 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %sub.addr, align 8, !tbaa !1
  %h21 = getelementptr inbounds %struct._cmsSubAllocator, %struct._cmsSubAllocator* %37, i32 0, i32 1
  %38 = load %struct._cmsSubAllocator_chunk_st*, %struct._cmsSubAllocator_chunk_st** %h21, align 8, !tbaa !29
  %Used22 = getelementptr inbounds %struct._cmsSubAllocator_chunk_st, %struct._cmsSubAllocator_chunk_st* %38, i32 0, i32 2
  %39 = load i32, i32* %Used22, align 4, !tbaa !33
  %add23 = add i32 %39, %36
  store i32 %add23, i32* %Used22, align 4, !tbaa !33
  %40 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8* %40, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24

cleanup.24:                                       ; preds = %if.end.17, %cleanup
  %41 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %Free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i8*, i8** %retval
  ret i8* %43
}

; Function Attrs: nounwind uwtable
define internal void @DefaultLogErrorHandlerFunction(%struct._cmsContext_struct* %ContextID, i32 %ErrorCode, i8* %Text) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ErrorCode.addr = alloca i32, align 4
  %Text.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %ErrorCode, i32* %ErrorCode.addr, align 4, !tbaa !6
  store i8* %Text, i8** %Text.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %1 = load i32, i32* %ErrorCode.addr, align 4, !tbaa !6
  %2 = load i8*, i8** %Text.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsAllocLogErrorChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
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
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 1
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %3, i8** %from, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* bitcast (%struct._cmsLogErrorChunkType* @_cmsAllocLogErrorChunk.LogErrorChunk to i8*), i8** %from, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !10
  %6 = load i8*, i8** %from, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %5, i8* %6, i32 8) #8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks1, i32 0, i64 1
  store i8* %call, i8** %arrayidx2, align 8, !tbaa !1
  %8 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetLogErrorHandlerTHR(%struct._cmsContext_struct* %ContextID, void (%struct._cmsContext_struct*, i32, i8*)* %Fn) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Fn.addr = alloca void (%struct._cmsContext_struct*, i32, i8*)*, align 8
  %lhg = alloca %struct._cmsLogErrorChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store void (%struct._cmsContext_struct*, i32, i8*)* %Fn, void (%struct._cmsContext_struct*, i32, i8*)** %Fn.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsLogErrorChunkType** %lhg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 1) #8
  %2 = bitcast i8* %call to %struct._cmsLogErrorChunkType*
  store %struct._cmsLogErrorChunkType* %2, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %3 = load %struct._cmsLogErrorChunkType*, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsLogErrorChunkType* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load void (%struct._cmsContext_struct*, i32, i8*)*, void (%struct._cmsContext_struct*, i32, i8*)** %Fn.addr, align 8, !tbaa !1
  %cmp1 = icmp eq void (%struct._cmsContext_struct*, i32, i8*)* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load %struct._cmsLogErrorChunkType*, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %LogErrorHandler = getelementptr inbounds %struct._cmsLogErrorChunkType, %struct._cmsLogErrorChunkType* %5, i32 0, i32 0
  store void (%struct._cmsContext_struct*, i32, i8*)* @DefaultLogErrorHandlerFunction, void (%struct._cmsContext_struct*, i32, i8*)** %LogErrorHandler, align 8, !tbaa !35
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load void (%struct._cmsContext_struct*, i32, i8*)*, void (%struct._cmsContext_struct*, i32, i8*)** %Fn.addr, align 8, !tbaa !1
  %7 = load %struct._cmsLogErrorChunkType*, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %LogErrorHandler3 = getelementptr inbounds %struct._cmsLogErrorChunkType, %struct._cmsLogErrorChunkType* %7, i32 0, i32 0
  store void (%struct._cmsContext_struct*, i32, i8*)* %6, void (%struct._cmsContext_struct*, i32, i8*)** %LogErrorHandler3, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = bitcast %struct._cmsLogErrorChunkType** %lhg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetLogErrorHandler(void (%struct._cmsContext_struct*, i32, i8*)* %Fn) #0 {
entry:
  %Fn.addr = alloca void (%struct._cmsContext_struct*, i32, i8*)*, align 8
  store void (%struct._cmsContext_struct*, i32, i8*)* %Fn, void (%struct._cmsContext_struct*, i32, i8*)** %Fn.addr, align 8, !tbaa !1
  %0 = load void (%struct._cmsContext_struct*, i32, i8*)*, void (%struct._cmsContext_struct*, i32, i8*)** %Fn.addr, align 8, !tbaa !1
  call void @cmsSetLogErrorHandlerTHR(%struct._cmsContext_struct* null, void (%struct._cmsContext_struct*, i32, i8*)* %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSignalError(%struct._cmsContext_struct* %ContextID, i32 %ErrorCode, i8* %ErrorText, ...) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ErrorCode.addr = alloca i32, align 4
  %ErrorText.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %Buffer = alloca [1024 x i8], align 16
  %lhg = alloca %struct._cmsLogErrorChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %ErrorCode, i32* %ErrorCode.addr, align 4, !tbaa !6
  store i8* %ErrorText, i8** %ErrorText.addr, align 8, !tbaa !1
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast %struct._cmsLogErrorChunkType** %lhg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  %3 = load i8*, i8** %ErrorText.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1023, i8* %3, %struct.__va_list_tag* %arraydecay3) #9
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call6 = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %4, i32 1) #8
  %5 = bitcast i8* %call6 to %struct._cmsLogErrorChunkType*
  store %struct._cmsLogErrorChunkType* %5, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %6 = load %struct._cmsLogErrorChunkType*, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %LogErrorHandler = getelementptr inbounds %struct._cmsLogErrorChunkType, %struct._cmsLogErrorChunkType* %6, i32 0, i32 0
  %7 = load void (%struct._cmsContext_struct*, i32, i8*)*, void (%struct._cmsContext_struct*, i32, i8*)** %LogErrorHandler, align 8, !tbaa !35
  %tobool = icmp ne void (%struct._cmsContext_struct*, i32, i8*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._cmsLogErrorChunkType*, %struct._cmsLogErrorChunkType** %lhg, align 8, !tbaa !1
  %LogErrorHandler7 = getelementptr inbounds %struct._cmsLogErrorChunkType, %struct._cmsLogErrorChunkType* %8, i32 0, i32 0
  %9 = load void (%struct._cmsContext_struct*, i32, i8*)*, void (%struct._cmsContext_struct*, i32, i8*)** %LogErrorHandler7, align 8, !tbaa !35
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %11 = load i32, i32* %ErrorCode.addr, align 4, !tbaa !6
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %Buffer, i32 0, i32 0
  call void %9(%struct._cmsContext_struct* %10, i32 %11, i8* %arraydecay8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct._cmsLogErrorChunkType** %lhg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast [1024 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %13) #1
  %14 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %14) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define void @_cmsTagSignature2String(i8* %String, i32 %sig) #0 {
entry:
  %String.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %be = alloca i32, align 4
  store i8* %String, i8** %String.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !5
  %0 = bitcast i32* %be to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %sig.addr, align 4, !tbaa !5
  %call = call i32 @_cmsAdjustEndianess32(i32 %1) #8
  store i32 %call, i32* %be, align 4, !tbaa !6
  %2 = load i8*, i8** %String.addr, align 8, !tbaa !1
  %3 = bitcast i32* %be to i8*
  %call1 = call i8* @memmove(i8* %2, i8* %3, i64 4) #9
  %4 = load i8*, i8** %String.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 4
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %5 = bitcast i32* %be to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

declare i32 @_cmsAdjustEndianess32(i32) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define internal i8* @defMtxCreate(%struct._cmsContext_struct* %id) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr_mutex = alloca %union.pthread_mutex_t*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %0 = bitcast %union.pthread_mutex_t** %ptr_mutex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMalloc(%struct._cmsContext_struct* %1, i32 40) #8
  %2 = bitcast i8* %call to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %2, %union.pthread_mutex_t** %ptr_mutex, align 8, !tbaa !1
  %3 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %ptr_mutex, align 8, !tbaa !1
  %call1 = call i32 @_cmsInitMutexPrimitive(%union.pthread_mutex_t* %3) #8
  %4 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %ptr_mutex, align 8, !tbaa !1
  %5 = bitcast %union.pthread_mutex_t* %4 to i8*
  %6 = bitcast %union.pthread_mutex_t** %ptr_mutex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal void @defMtxDestroy(%struct._cmsContext_struct* %id, i8* %mtx) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %union.pthread_mutex_t*
  %call = call i32 @_cmsDestroyMutexPrimitive(%union.pthread_mutex_t* %1) #8
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %2, i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @defMtxLock(%struct._cmsContext_struct* %id, i8* %mtx) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %union.pthread_mutex_t*
  %call = call i32 @_cmsLockPrimitive(%union.pthread_mutex_t* %2) #8
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @defMtxUnlock(%struct._cmsContext_struct* %id, i8* %mtx) #0 {
entry:
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %union.pthread_mutex_t*
  %call = call i32 @_cmsUnlockPrimitive(%union.pthread_mutex_t* %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsAllocMutexPluginChunk(%struct._cmsContext_struct* %ctx, %struct._cmsContext_struct* %src) #0 {
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
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 14
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %3, i8** %from, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* bitcast (%struct._cmsMutexPluginChunkType* @_cmsAllocMutexPluginChunk.MutexChunk to i8*), i8** %from, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !10
  %6 = load i8*, i8** %from, align 8, !tbaa !1
  %call = call i8* @_cmsSubAllocDup(%struct._cmsSubAllocator* %5, i8* %6, i32 32) #8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx.addr, align 8, !tbaa !1
  %chunks1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks1, i32 0, i64 14
  store i8* %call, i8** %arrayidx2, align 8, !tbaa !1
  %8 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsRegisterMutexPlugin(%struct._cmsContext_struct* %ContextID, %struct._cmsPluginBaseStruct* %Data) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Data.addr = alloca %struct._cmsPluginBaseStruct*, align 8
  %Plugin = alloca %struct.cmsPluginMutex*, align 8
  %ctx = alloca %struct._cmsMutexPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cmsPluginBaseStruct* %Data, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsPluginMutex** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %2 = bitcast %struct._cmsPluginBaseStruct* %1 to %struct.cmsPluginMutex*
  store %struct.cmsPluginMutex* %2, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %3 = bitcast %struct._cmsMutexPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %4, i32 14) #8
  %5 = bitcast i8* %call to %struct._cmsMutexPluginChunkType*
  store %struct._cmsMutexPluginChunkType* %5, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %6 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Data.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsPluginBaseStruct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %CreateMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %7, i32 0, i32 0
  store i8* (%struct._cmsContext_struct*)* null, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr, align 8, !tbaa !37
  %8 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %DestroyMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %8, i32 0, i32 1
  store void (%struct._cmsContext_struct*, i8*)* null, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr, align 8, !tbaa !39
  %9 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %LockMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %9, i32 0, i32 2
  store i32 (%struct._cmsContext_struct*, i8*)* null, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr, align 8, !tbaa !40
  %10 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %UnlockMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %10, i32 0, i32 3
  store void (%struct._cmsContext_struct*, i8*)* null, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr, align 8, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %CreateMutexPtr1 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %11, i32 0, i32 1
  %12 = load i8* (%struct._cmsContext_struct*)*, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr1, align 8, !tbaa !42
  %cmp2 = icmp eq i8* (%struct._cmsContext_struct*)* %12, null
  br i1 %cmp2, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %DestroyMutexPtr3 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %13, i32 0, i32 2
  %14 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr3, align 8, !tbaa !44
  %cmp4 = icmp eq void (%struct._cmsContext_struct*, i8*)* %14, null
  br i1 %cmp4, label %if.then.11, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %15 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %LockMutexPtr6 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %15, i32 0, i32 3
  %16 = load i32 (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr6, align 8, !tbaa !45
  %cmp7 = icmp eq i32 (%struct._cmsContext_struct*, i8*)* %16, null
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %17 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %UnlockMutexPtr9 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %17, i32 0, i32 4
  %18 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr9, align 8, !tbaa !46
  %cmp10 = icmp eq void (%struct._cmsContext_struct*, i8*)* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false.8
  %19 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %CreateMutexPtr13 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %19, i32 0, i32 1
  %20 = load i8* (%struct._cmsContext_struct*)*, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr13, align 8, !tbaa !42
  %21 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %CreateMutexPtr14 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %21, i32 0, i32 0
  store i8* (%struct._cmsContext_struct*)* %20, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr14, align 8, !tbaa !37
  %22 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %DestroyMutexPtr15 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %22, i32 0, i32 2
  %23 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr15, align 8, !tbaa !44
  %24 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %DestroyMutexPtr16 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %24, i32 0, i32 1
  store void (%struct._cmsContext_struct*, i8*)* %23, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr16, align 8, !tbaa !39
  %25 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %LockMutexPtr17 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %25, i32 0, i32 3
  %26 = load i32 (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr17, align 8, !tbaa !45
  %27 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %LockMutexPtr18 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %27, i32 0, i32 2
  store i32 (%struct._cmsContext_struct*, i8*)* %26, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr18, align 8, !tbaa !40
  %28 = load %struct.cmsPluginMutex*, %struct.cmsPluginMutex** %Plugin, align 8, !tbaa !1
  %UnlockMutexPtr19 = getelementptr inbounds %struct.cmsPluginMutex, %struct.cmsPluginMutex* %28, i32 0, i32 4
  %29 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr19, align 8, !tbaa !46
  %30 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ctx, align 8, !tbaa !1
  %UnlockMutexPtr20 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %30, i32 0, i32 3
  store void (%struct._cmsContext_struct*, i8*)* %29, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr20, align 8, !tbaa !41
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then
  %31 = bitcast %struct._cmsMutexPluginChunkType** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.cmsPluginMutex** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i8* @_cmsCreateMutex(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr = alloca %struct._cmsMutexPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 14) #8
  %2 = bitcast i8* %call to %struct._cmsMutexPluginChunkType*
  store %struct._cmsMutexPluginChunkType* %2, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %CreateMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %3, i32 0, i32 0
  %4 = load i8* (%struct._cmsContext_struct*)*, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr, align 8, !tbaa !37
  %cmp = icmp eq i8* (%struct._cmsContext_struct*)* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %CreateMutexPtr1 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %5, i32 0, i32 0
  %6 = load i8* (%struct._cmsContext_struct*)*, i8* (%struct._cmsContext_struct*)** %CreateMutexPtr1, align 8, !tbaa !37
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call2 = call i8* %6(%struct._cmsContext_struct* %7) #8
  store i8* %call2, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define void @_cmsDestroyMutex(%struct._cmsContext_struct* %ContextID, i8* %mtx) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  %ptr = alloca %struct._cmsMutexPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 14) #8
  %2 = bitcast i8* %call to %struct._cmsMutexPluginChunkType*
  store %struct._cmsMutexPluginChunkType* %2, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %DestroyMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %3, i32 0, i32 1
  %4 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr, align 8, !tbaa !39
  %cmp = icmp ne void (%struct._cmsContext_struct*, i8*)* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %DestroyMutexPtr1 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %5, i32 0, i32 1
  %6 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %DestroyMutexPtr1, align 8, !tbaa !39
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  call void %6(%struct._cmsContext_struct* %7, i8* %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsLockMutex(%struct._cmsContext_struct* %ContextID, i8* %mtx) #0 {
entry:
  %retval = alloca i32, align 4
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  %ptr = alloca %struct._cmsMutexPluginChunkType*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 14) #8
  %2 = bitcast i8* %call to %struct._cmsMutexPluginChunkType*
  store %struct._cmsMutexPluginChunkType* %2, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %LockMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %3, i32 0, i32 2
  %4 = load i32 (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr, align 8, !tbaa !40
  %cmp = icmp eq i32 (%struct._cmsContext_struct*, i8*)* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %LockMutexPtr1 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %5, i32 0, i32 2
  %6 = load i32 (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)** %LockMutexPtr1, align 8, !tbaa !40
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  %call2 = call i32 %6(%struct._cmsContext_struct* %7, i8* %8) #8
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @_cmsUnlockMutex(%struct._cmsContext_struct* %ContextID, i8* %mtx) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mtx.addr = alloca i8*, align 8
  %ptr = alloca %struct._cmsMutexPluginChunkType*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %mtx, i8** %mtx.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %1, i32 14) #8
  %2 = bitcast i8* %call to %struct._cmsMutexPluginChunkType*
  store %struct._cmsMutexPluginChunkType* %2, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %3 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %UnlockMutexPtr = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %3, i32 0, i32 3
  %4 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr, align 8, !tbaa !41
  %cmp = icmp ne void (%struct._cmsContext_struct*, i8*)* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._cmsMutexPluginChunkType*, %struct._cmsMutexPluginChunkType** %ptr, align 8, !tbaa !1
  %UnlockMutexPtr1 = getelementptr inbounds %struct._cmsMutexPluginChunkType, %struct._cmsMutexPluginChunkType* %5, i32 0, i32 3
  %6 = load void (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)** %UnlockMutexPtr1, align 8, !tbaa !41
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %mtx.addr, align 8, !tbaa !1
  call void %6(%struct._cmsContext_struct* %7, i8* %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = bitcast %struct._cmsMutexPluginChunkType** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsInitMutexPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %0, %union.pthread_mutexattr_t* null) #9
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsDestroyMutexPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %0) #9
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsLockPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %0) #9
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsUnlockPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !1
  %call = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %0) #9
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind readnone }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !2, i64 8}
!11 = !{!"_cmsContext_struct", !2, i64 0, !2, i64 8, !3, i64 16, !12, i64 136}
!12 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!13 = !{!14, !2, i64 24}
!14 = !{!"", !15, i64 0, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!15 = !{!"_cmsPluginBaseStruct", !7, i64 0, !7, i64 4, !7, i64 8, !2, i64 16}
!16 = !{!12, !2, i64 0}
!17 = !{!14, !2, i64 32}
!18 = !{!12, !2, i64 16}
!19 = !{!14, !2, i64 40}
!20 = !{!12, !2, i64 24}
!21 = !{!12, !2, i64 8}
!22 = !{!12, !2, i64 32}
!23 = !{!12, !2, i64 40}
!24 = !{!14, !2, i64 48}
!25 = !{!14, !2, i64 56}
!26 = !{!14, !2, i64 64}
!27 = !{!28, !2, i64 0}
!28 = !{!"", !2, i64 0, !2, i64 8}
!29 = !{!28, !2, i64 8}
!30 = !{!31, !2, i64 0}
!31 = !{!"_cmsSubAllocator_chunk_st", !2, i64 0, !7, i64 8, !7, i64 12, !2, i64 16}
!32 = !{!31, !7, i64 8}
!33 = !{!31, !7, i64 12}
!34 = !{!31, !2, i64 16}
!35 = !{!36, !2, i64 0}
!36 = !{!"", !2, i64 0}
!37 = !{!38, !2, i64 0}
!38 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!39 = !{!38, !2, i64 8}
!40 = !{!38, !2, i64 16}
!41 = !{!38, !2, i64 24}
!42 = !{!43, !2, i64 24}
!43 = !{!"", !15, i64 0, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!44 = !{!43, !2, i64 32}
!45 = !{!43, !2, i64 40}
!46 = !{!43, !2, i64 48}
