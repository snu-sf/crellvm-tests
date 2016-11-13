; ModuleID = './cmsmd5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cms_iccprofile_struct = type { %struct._cms_io_handler*, %struct._cmsContext_struct*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %union.cmsProfileID, i32, [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x i8*], [100 x %struct._cms_typehandler_struct*], i32, i8* }
%struct._cms_io_handler = type { i8*, %struct._cmsContext_struct*, i32, i32, [256 x i8], i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*, i32, i8*)* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_typehandler_struct = type { i32, i8* (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i32*, i32)*, i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)*, i8* (%struct._cms_typehandler_struct*, i8*, i32)*, void (%struct._cms_typehandler_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct._cmsMD5 = type { [4 x i32], [2 x i32], [64 x i8], %struct._cmsContext_struct* }

@.str = private unnamed_addr constant [25 x i8] c"(hProfile != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmsmd5.c\00", align 1
@__PRETTY_FUNCTION__.cmsMD5computeID = private unnamed_addr constant [37 x i8] c"cmsBool cmsMD5computeID(cmsHPROFILE)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cmsMD5computeID(i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %BytesNeeded = alloca i32, align 4
  %Mem = alloca i8*, align 8
  %MD5 = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %Keep = alloca %struct._cms_iccprofile_struct, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %BytesNeeded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %Mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %Mem, align 8, !tbaa !1
  %3 = bitcast i8** %MD5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %MD5, align 8, !tbaa !1
  %4 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %6, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %7 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  call void @llvm.lifetime.start(i64 3752, i8* %7) #1
  %8 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 270, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cmsMD5computeID, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %10) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %11 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %13 = bitcast %struct._cms_iccprofile_struct* %12 to i8*
  %call1 = call i8* @memmove(i8* %11, i8* %13, i64 3752) #7
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 11
  %15 = bitcast i64* %attributes to i8*
  %call2 = call i8* @memset(i8* %15, i32 0, i64 8) #7
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %16, i32 0, i32 7
  store i32 0, i32* %RenderingIntent, align 4, !tbaa !5
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ProfileID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %17, i32 0, i32 13
  %18 = bitcast %union.cmsProfileID* %ProfileID to i8*
  %call3 = call i8* @memset(i8* %18, i32 0, i64 16) #7
  %19 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call4 = call i32 @cmsSaveProfileToMem(i8* %19, i8* null, i32* %BytesNeeded) #6
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %Error

if.end:                                           ; preds = %cond.end
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %21 = load i32, i32* %BytesNeeded, align 4, !tbaa !10
  %call5 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %20, i32 %21) #6
  store i8* %call5, i8** %Mem, align 8, !tbaa !1
  %22 = load i8*, i8** %Mem, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %22, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %Error

if.end.8:                                         ; preds = %if.end
  %23 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %Mem, align 8, !tbaa !1
  %call9 = call i32 @cmsSaveProfileToMem(i8* %23, i8* %24, i32* %BytesNeeded) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %Error

if.end.12:                                        ; preds = %if.end.8
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call13 = call i8* @MD5alloc(%struct._cmsContext_struct* %25) #6
  store i8* %call13, i8** %MD5, align 8, !tbaa !1
  %26 = load i8*, i8** %MD5, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %26, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %Error

if.end.16:                                        ; preds = %if.end.12
  %27 = load i8*, i8** %MD5, align 8, !tbaa !1
  %28 = load i8*, i8** %Mem, align 8, !tbaa !1
  %29 = load i32, i32* %BytesNeeded, align 4, !tbaa !10
  call void @MD5add(i8* %27, i8* %28, i32 %29) #6
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %31 = load i8*, i8** %Mem, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %30, i8* %31) #6
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %33 = bitcast %struct._cms_iccprofile_struct* %32 to i8*
  %34 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %call17 = call i8* @memmove(i8* %33, i8* %34, i64 3752) #7
  %35 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ProfileID18 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %35, i32 0, i32 13
  %36 = load i8*, i8** %MD5, align 8, !tbaa !1
  call void @MD5finish(%union.cmsProfileID* %ProfileID18, i8* %36) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.15, %if.then.11, %if.then.7, %if.then
  %37 = load i8*, i8** %Mem, align 8, !tbaa !1
  %cmp19 = icmp ne i8* %37, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %Error
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %39 = load i8*, i8** %Mem, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %38, i8* %39) #6
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %Error
  %40 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %41 = bitcast %struct._cms_iccprofile_struct* %40 to i8*
  %42 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %call22 = call i8* @memmove(i8* %41, i8* %42, i64 3752) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.end.16
  %43 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  call void @llvm.lifetime.end(i64 3752, i8* %43) #1
  %44 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i8** %MD5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %Mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %BytesNeeded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare %struct._cmsContext_struct* @cmsGetProfileContextID(i8*) #3

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @cmsSaveProfileToMem(i8*, i8*, i32*) #3

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @MD5alloc(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ctx = alloca %struct._cmsMD5*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 96) #6
  %2 = bitcast i8* %call to %struct._cmsMD5*
  store %struct._cmsMD5* %2, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %3 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsMD5* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %5, i32 0, i32 3
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !11
  %6 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %buf, i32 0, i64 0
  store i32 1732584193, i32* %arrayidx, align 4, !tbaa !10
  %7 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %7, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %buf2, i32 0, i64 1
  store i32 -271733879, i32* %arrayidx3, align 4, !tbaa !10
  %8 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf4 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %8, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %buf4, i32 0, i64 2
  store i32 -1732584194, i32* %arrayidx5, align 4, !tbaa !10
  %9 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf6 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %9, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %buf6, i32 0, i64 3
  store i32 271733878, i32* %arrayidx7, align 4, !tbaa !10
  %10 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %bits, i32 0, i64 0
  store i32 0, i32* %arrayidx8, align 4, !tbaa !10
  %11 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits9 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %bits9, i32 0, i64 1
  store i32 0, i32* %arrayidx10, align 4, !tbaa !10
  %12 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %13 = bitcast %struct._cmsMD5* %12 to i8*
  store i8* %13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal void @MD5add(i8* %Handle, i8* %buf, i32 %len) #0 {
entry:
  %Handle.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ctx = alloca %struct._cmsMD5*, align 8
  %t = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %Handle, i8** %Handle.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !10
  %0 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Handle.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsMD5*
  store %struct._cmsMD5* %2, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %3 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %bits, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !10
  store i32 %5, i32* %t, align 4, !tbaa !10
  %6 = load i32, i32* %t, align 4, !tbaa !10
  %7 = load i32, i32* %len.addr, align 4, !tbaa !10
  %shl = shl i32 %7, 3
  %add = add i32 %6, %shl
  %8 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits1 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %bits1, i32 0, i64 0
  store i32 %add, i32* %arrayidx2, align 4, !tbaa !10
  %9 = load i32, i32* %t, align 4, !tbaa !10
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %bits3, i32 0, i64 1
  %11 = load i32, i32* %arrayidx4, align 4, !tbaa !10
  %inc = add i32 %11, 1
  store i32 %inc, i32* %arrayidx4, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %len.addr, align 4, !tbaa !10
  %shr = lshr i32 %12, 29
  %13 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits5 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %13, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %bits5, i32 0, i64 1
  %14 = load i32, i32* %arrayidx6, align 4, !tbaa !10
  %add7 = add i32 %14, %shr
  store i32 %add7, i32* %arrayidx6, align 4, !tbaa !10
  %15 = load i32, i32* %t, align 4, !tbaa !10
  %shr8 = lshr i32 %15, 3
  %and = and i32 %shr8, 63
  store i32 %and, i32* %t, align 4, !tbaa !10
  %16 = load i32, i32* %t, align 4, !tbaa !10
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %18, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %in, i32 0, i32 0
  %19 = load i32, i32* %t, align 4, !tbaa !10
  %idx.ext = zext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %20 = load i32, i32* %t, align 4, !tbaa !10
  %sub = sub i32 64, %20
  store i32 %sub, i32* %t, align 4, !tbaa !10
  %21 = load i32, i32* %len.addr, align 4, !tbaa !10
  %22 = load i32, i32* %t, align 4, !tbaa !10
  %cmp10 = icmp ult i32 %21, %22
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %24 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %25 = load i32, i32* %len.addr, align 4, !tbaa !10
  %conv = zext i32 %25 to i64
  %call = call i8* @memmove(i8* %23, i8* %24, i64 %conv) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.9
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %28 = load i32, i32* %t, align 4, !tbaa !10
  %conv13 = zext i32 %28 to i64
  %call14 = call i8* @memmove(i8* %26, i8* %27, i64 %conv13) #7
  %29 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf15 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %29, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [4 x i32], [4 x i32]* %buf15, i32 0, i32 0
  %30 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in17 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %30, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %in17, i32 0, i32 0
  %31 = bitcast i8* %arraydecay18 to i32*
  call void @MD5_Transform(i32* %arraydecay16, i32* %31) #6
  %32 = load i32, i32* %t, align 4, !tbaa !10
  %33 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %idx.ext19 = zext i32 %32 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %33, i64 %idx.ext19
  store i8* %add.ptr20, i8** %buf.addr, align 8, !tbaa !1
  %34 = load i32, i32* %t, align 4, !tbaa !10
  %35 = load i32, i32* %len.addr, align 4, !tbaa !10
  %sub21 = sub i32 %35, %34
  store i32 %sub21, i32* %len.addr, align 4, !tbaa !10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %36 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.22

if.end.22:                                        ; preds = %cleanup.cont, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.22
  %37 = load i32, i32* %len.addr, align 4, !tbaa !10
  %cmp23 = icmp uge i32 %37, 64
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in25 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %38, i32 0, i32 2
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %in25, i32 0, i32 0
  %39 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call27 = call i8* @memmove(i8* %arraydecay26, i8* %39, i64 64) #7
  %40 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf28 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %40, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [4 x i32], [4 x i32]* %buf28, i32 0, i32 0
  %41 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in30 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %41, i32 0, i32 2
  %arraydecay31 = getelementptr inbounds [64 x i8], [64 x i8]* %in30, i32 0, i32 0
  %42 = bitcast i8* %arraydecay31 to i32*
  call void @MD5_Transform(i32* %arraydecay29, i32* %42) #6
  %43 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %43, i64 64
  store i8* %add.ptr32, i8** %buf.addr, align 8, !tbaa !1
  %44 = load i32, i32* %len.addr, align 4, !tbaa !10
  %sub33 = sub i32 %44, 64
  store i32 %sub33, i32* %len.addr, align 4, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in34 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %45, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %in34, i32 0, i32 0
  %46 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %47 = load i32, i32* %len.addr, align 4, !tbaa !10
  %conv36 = zext i32 %47 to i64
  %call37 = call i8* @memmove(i8* %arraydecay35, i8* %46, i64 %conv36) #7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.38

cleanup.38:                                       ; preds = %while.end, %cleanup
  %48 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %cleanup.dest.40 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.40, label %unreachable [
    i32 0, label %cleanup.cont.41
    i32 1, label %cleanup.cont.41
  ]

cleanup.cont.41:                                  ; preds = %cleanup.38, %cleanup.38
  ret void

unreachable:                                      ; preds = %cleanup.38
  unreachable
}

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @MD5finish(%union.cmsProfileID* %ProfileID, i8* %Handle) #0 {
entry:
  %ProfileID.addr = alloca %union.cmsProfileID*, align 8
  %Handle.addr = alloca i8*, align 8
  %ctx = alloca %struct._cmsMD5*, align 8
  %count = alloca i32, align 4
  %p = alloca i8*, align 8
  store %union.cmsProfileID* %ProfileID, %union.cmsProfileID** %ProfileID.addr, align 8, !tbaa !1
  store i8* %Handle, i8** %Handle.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Handle.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsMD5*
  store %struct._cmsMD5* %2, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %bits, i32 0, i64 0
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %shr = lshr i32 %6, 3
  %and = and i32 %shr, 63
  store i32 %and, i32* %count, align 4, !tbaa !10
  %7 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %in, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !10
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 -128, i8* %9, align 1, !tbaa !13
  %10 = load i32, i32* %count, align 4, !tbaa !10
  %sub = sub i32 63, %10
  store i32 %sub, i32* %count, align 4, !tbaa !10
  %11 = load i32, i32* %count, align 4, !tbaa !10
  %cmp = icmp ult i32 %11, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i32, i32* %count, align 4, !tbaa !10
  %conv = zext i32 %13 to i64
  %call = call i8* @memset(i8* %12, i32 0, i64 %conv) #7
  %14 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %14, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %buf, i32 0, i32 0
  %15 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in2 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %15, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %in2, i32 0, i32 0
  %16 = bitcast i8* %arraydecay3 to i32*
  call void @MD5_Transform(i32* %arraydecay1, i32* %16) #6
  %17 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in4 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %17, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %in4, i32 0, i32 0
  %call6 = call i8* @memset(i8* %arraydecay5, i32 0, i64 56) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i32, i32* %count, align 4, !tbaa !10
  %sub7 = sub i32 %19, 8
  %conv8 = zext i32 %sub7 to i64
  %call9 = call i8* @memset(i8* %18, i32 0, i64 %conv8) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits10 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %20, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %bits10, i32 0, i64 0
  %21 = load i32, i32* %arrayidx11, align 4, !tbaa !10
  %22 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in12 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %22, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %in12, i32 0, i32 0
  %23 = bitcast i8* %arraydecay13 to i32*
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 14
  store i32 %21, i32* %arrayidx14, align 4, !tbaa !10
  %24 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %bits15 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %24, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %bits15, i32 0, i64 1
  %25 = load i32, i32* %arrayidx16, align 4, !tbaa !10
  %26 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in17 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %26, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %in17, i32 0, i32 0
  %27 = bitcast i8* %arraydecay18 to i32*
  %arrayidx19 = getelementptr inbounds i32, i32* %27, i64 15
  store i32 %25, i32* %arrayidx19, align 4, !tbaa !10
  %28 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf20 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %28, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [4 x i32], [4 x i32]* %buf20, i32 0, i32 0
  %29 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %in22 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %29, i32 0, i32 2
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %in22, i32 0, i32 0
  %30 = bitcast i8* %arraydecay23 to i32*
  call void @MD5_Transform(i32* %arraydecay21, i32* %30) #6
  %31 = load %union.cmsProfileID*, %union.cmsProfileID** %ProfileID.addr, align 8, !tbaa !1
  %ID8 = bitcast %union.cmsProfileID* %31 to [16 x i8]*
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %ID8, i32 0, i32 0
  %32 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %buf25 = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %32, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x i32], [4 x i32]* %buf25, i32 0, i32 0
  %33 = bitcast i32* %arraydecay26 to i8*
  %call27 = call i8* @memmove(i8* %arraydecay24, i8* %33, i64 16) #7
  %34 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsMD5, %struct._cmsMD5* %34, i32 0, i32 3
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !11
  %36 = load %struct._cmsMD5*, %struct._cmsMD5** %ctx, align 8, !tbaa !1
  %37 = bitcast %struct._cmsMD5* %36 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %35, i8* %37) #6
  %38 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct._cmsMD5** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @MD5_Transform(i32* %buf, i32* %in) #0 {
entry:
  %buf.addr = alloca i32*, align 8
  %in.addr = alloca i32*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32* %buf, i32** %buf.addr, align 8, !tbaa !1
  store i32* %in, i32** %in.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !10
  store i32 %5, i32* %a, align 4, !tbaa !10
  %6 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 1
  %7 = load i32, i32* %arrayidx1, align 4, !tbaa !10
  store i32 %7, i32* %b, align 4, !tbaa !10
  %8 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 2
  %9 = load i32, i32* %arrayidx2, align 4, !tbaa !10
  store i32 %9, i32* %c, align 4, !tbaa !10
  %10 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 3
  %11 = load i32, i32* %arrayidx3, align 4, !tbaa !10
  store i32 %11, i32* %d, align 4, !tbaa !10
  %12 = load i32, i32* %d, align 4, !tbaa !10
  %13 = load i32, i32* %b, align 4, !tbaa !10
  %14 = load i32, i32* %c, align 4, !tbaa !10
  %15 = load i32, i32* %d, align 4, !tbaa !10
  %xor = xor i32 %14, %15
  %and = and i32 %13, %xor
  %xor4 = xor i32 %12, %and
  %16 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx5, align 4, !tbaa !10
  %add = add i32 %xor4, %17
  %add6 = add i32 %add, -680876936
  %18 = load i32, i32* %a, align 4, !tbaa !10
  %add7 = add i32 %18, %add6
  store i32 %add7, i32* %a, align 4, !tbaa !10
  %19 = load i32, i32* %a, align 4, !tbaa !10
  %shl = shl i32 %19, 7
  %20 = load i32, i32* %a, align 4, !tbaa !10
  %shr = lshr i32 %20, 25
  %or = or i32 %shl, %shr
  store i32 %or, i32* %a, align 4, !tbaa !10
  %21 = load i32, i32* %b, align 4, !tbaa !10
  %22 = load i32, i32* %a, align 4, !tbaa !10
  %add8 = add i32 %22, %21
  store i32 %add8, i32* %a, align 4, !tbaa !10
  %23 = load i32, i32* %c, align 4, !tbaa !10
  %24 = load i32, i32* %a, align 4, !tbaa !10
  %25 = load i32, i32* %b, align 4, !tbaa !10
  %26 = load i32, i32* %c, align 4, !tbaa !10
  %xor9 = xor i32 %25, %26
  %and10 = and i32 %24, %xor9
  %xor11 = xor i32 %23, %and10
  %27 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %27, i64 1
  %28 = load i32, i32* %arrayidx12, align 4, !tbaa !10
  %add13 = add i32 %xor11, %28
  %add14 = add i32 %add13, -389564586
  %29 = load i32, i32* %d, align 4, !tbaa !10
  %add15 = add i32 %29, %add14
  store i32 %add15, i32* %d, align 4, !tbaa !10
  %30 = load i32, i32* %d, align 4, !tbaa !10
  %shl16 = shl i32 %30, 12
  %31 = load i32, i32* %d, align 4, !tbaa !10
  %shr17 = lshr i32 %31, 20
  %or18 = or i32 %shl16, %shr17
  store i32 %or18, i32* %d, align 4, !tbaa !10
  %32 = load i32, i32* %a, align 4, !tbaa !10
  %33 = load i32, i32* %d, align 4, !tbaa !10
  %add19 = add i32 %33, %32
  store i32 %add19, i32* %d, align 4, !tbaa !10
  %34 = load i32, i32* %b, align 4, !tbaa !10
  %35 = load i32, i32* %d, align 4, !tbaa !10
  %36 = load i32, i32* %a, align 4, !tbaa !10
  %37 = load i32, i32* %b, align 4, !tbaa !10
  %xor20 = xor i32 %36, %37
  %and21 = and i32 %35, %xor20
  %xor22 = xor i32 %34, %and21
  %38 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i32, i32* %38, i64 2
  %39 = load i32, i32* %arrayidx23, align 4, !tbaa !10
  %add24 = add i32 %xor22, %39
  %add25 = add i32 %add24, 606105819
  %40 = load i32, i32* %c, align 4, !tbaa !10
  %add26 = add i32 %40, %add25
  store i32 %add26, i32* %c, align 4, !tbaa !10
  %41 = load i32, i32* %c, align 4, !tbaa !10
  %shl27 = shl i32 %41, 17
  %42 = load i32, i32* %c, align 4, !tbaa !10
  %shr28 = lshr i32 %42, 15
  %or29 = or i32 %shl27, %shr28
  store i32 %or29, i32* %c, align 4, !tbaa !10
  %43 = load i32, i32* %d, align 4, !tbaa !10
  %44 = load i32, i32* %c, align 4, !tbaa !10
  %add30 = add i32 %44, %43
  store i32 %add30, i32* %c, align 4, !tbaa !10
  %45 = load i32, i32* %a, align 4, !tbaa !10
  %46 = load i32, i32* %c, align 4, !tbaa !10
  %47 = load i32, i32* %d, align 4, !tbaa !10
  %48 = load i32, i32* %a, align 4, !tbaa !10
  %xor31 = xor i32 %47, %48
  %and32 = and i32 %46, %xor31
  %xor33 = xor i32 %45, %and32
  %49 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i32, i32* %49, i64 3
  %50 = load i32, i32* %arrayidx34, align 4, !tbaa !10
  %add35 = add i32 %xor33, %50
  %add36 = add i32 %add35, -1044525330
  %51 = load i32, i32* %b, align 4, !tbaa !10
  %add37 = add i32 %51, %add36
  store i32 %add37, i32* %b, align 4, !tbaa !10
  %52 = load i32, i32* %b, align 4, !tbaa !10
  %shl38 = shl i32 %52, 22
  %53 = load i32, i32* %b, align 4, !tbaa !10
  %shr39 = lshr i32 %53, 10
  %or40 = or i32 %shl38, %shr39
  store i32 %or40, i32* %b, align 4, !tbaa !10
  %54 = load i32, i32* %c, align 4, !tbaa !10
  %55 = load i32, i32* %b, align 4, !tbaa !10
  %add41 = add i32 %55, %54
  store i32 %add41, i32* %b, align 4, !tbaa !10
  %56 = load i32, i32* %d, align 4, !tbaa !10
  %57 = load i32, i32* %b, align 4, !tbaa !10
  %58 = load i32, i32* %c, align 4, !tbaa !10
  %59 = load i32, i32* %d, align 4, !tbaa !10
  %xor42 = xor i32 %58, %59
  %and43 = and i32 %57, %xor42
  %xor44 = xor i32 %56, %and43
  %60 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i32, i32* %60, i64 4
  %61 = load i32, i32* %arrayidx45, align 4, !tbaa !10
  %add46 = add i32 %xor44, %61
  %add47 = add i32 %add46, -176418897
  %62 = load i32, i32* %a, align 4, !tbaa !10
  %add48 = add i32 %62, %add47
  store i32 %add48, i32* %a, align 4, !tbaa !10
  %63 = load i32, i32* %a, align 4, !tbaa !10
  %shl49 = shl i32 %63, 7
  %64 = load i32, i32* %a, align 4, !tbaa !10
  %shr50 = lshr i32 %64, 25
  %or51 = or i32 %shl49, %shr50
  store i32 %or51, i32* %a, align 4, !tbaa !10
  %65 = load i32, i32* %b, align 4, !tbaa !10
  %66 = load i32, i32* %a, align 4, !tbaa !10
  %add52 = add i32 %66, %65
  store i32 %add52, i32* %a, align 4, !tbaa !10
  %67 = load i32, i32* %c, align 4, !tbaa !10
  %68 = load i32, i32* %a, align 4, !tbaa !10
  %69 = load i32, i32* %b, align 4, !tbaa !10
  %70 = load i32, i32* %c, align 4, !tbaa !10
  %xor53 = xor i32 %69, %70
  %and54 = and i32 %68, %xor53
  %xor55 = xor i32 %67, %and54
  %71 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %71, i64 5
  %72 = load i32, i32* %arrayidx56, align 4, !tbaa !10
  %add57 = add i32 %xor55, %72
  %add58 = add i32 %add57, 1200080426
  %73 = load i32, i32* %d, align 4, !tbaa !10
  %add59 = add i32 %73, %add58
  store i32 %add59, i32* %d, align 4, !tbaa !10
  %74 = load i32, i32* %d, align 4, !tbaa !10
  %shl60 = shl i32 %74, 12
  %75 = load i32, i32* %d, align 4, !tbaa !10
  %shr61 = lshr i32 %75, 20
  %or62 = or i32 %shl60, %shr61
  store i32 %or62, i32* %d, align 4, !tbaa !10
  %76 = load i32, i32* %a, align 4, !tbaa !10
  %77 = load i32, i32* %d, align 4, !tbaa !10
  %add63 = add i32 %77, %76
  store i32 %add63, i32* %d, align 4, !tbaa !10
  %78 = load i32, i32* %b, align 4, !tbaa !10
  %79 = load i32, i32* %d, align 4, !tbaa !10
  %80 = load i32, i32* %a, align 4, !tbaa !10
  %81 = load i32, i32* %b, align 4, !tbaa !10
  %xor64 = xor i32 %80, %81
  %and65 = and i32 %79, %xor64
  %xor66 = xor i32 %78, %and65
  %82 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i32, i32* %82, i64 6
  %83 = load i32, i32* %arrayidx67, align 4, !tbaa !10
  %add68 = add i32 %xor66, %83
  %add69 = add i32 %add68, -1473231341
  %84 = load i32, i32* %c, align 4, !tbaa !10
  %add70 = add i32 %84, %add69
  store i32 %add70, i32* %c, align 4, !tbaa !10
  %85 = load i32, i32* %c, align 4, !tbaa !10
  %shl71 = shl i32 %85, 17
  %86 = load i32, i32* %c, align 4, !tbaa !10
  %shr72 = lshr i32 %86, 15
  %or73 = or i32 %shl71, %shr72
  store i32 %or73, i32* %c, align 4, !tbaa !10
  %87 = load i32, i32* %d, align 4, !tbaa !10
  %88 = load i32, i32* %c, align 4, !tbaa !10
  %add74 = add i32 %88, %87
  store i32 %add74, i32* %c, align 4, !tbaa !10
  %89 = load i32, i32* %a, align 4, !tbaa !10
  %90 = load i32, i32* %c, align 4, !tbaa !10
  %91 = load i32, i32* %d, align 4, !tbaa !10
  %92 = load i32, i32* %a, align 4, !tbaa !10
  %xor75 = xor i32 %91, %92
  %and76 = and i32 %90, %xor75
  %xor77 = xor i32 %89, %and76
  %93 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %93, i64 7
  %94 = load i32, i32* %arrayidx78, align 4, !tbaa !10
  %add79 = add i32 %xor77, %94
  %add80 = add i32 %add79, -45705983
  %95 = load i32, i32* %b, align 4, !tbaa !10
  %add81 = add i32 %95, %add80
  store i32 %add81, i32* %b, align 4, !tbaa !10
  %96 = load i32, i32* %b, align 4, !tbaa !10
  %shl82 = shl i32 %96, 22
  %97 = load i32, i32* %b, align 4, !tbaa !10
  %shr83 = lshr i32 %97, 10
  %or84 = or i32 %shl82, %shr83
  store i32 %or84, i32* %b, align 4, !tbaa !10
  %98 = load i32, i32* %c, align 4, !tbaa !10
  %99 = load i32, i32* %b, align 4, !tbaa !10
  %add85 = add i32 %99, %98
  store i32 %add85, i32* %b, align 4, !tbaa !10
  %100 = load i32, i32* %d, align 4, !tbaa !10
  %101 = load i32, i32* %b, align 4, !tbaa !10
  %102 = load i32, i32* %c, align 4, !tbaa !10
  %103 = load i32, i32* %d, align 4, !tbaa !10
  %xor86 = xor i32 %102, %103
  %and87 = and i32 %101, %xor86
  %xor88 = xor i32 %100, %and87
  %104 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i32, i32* %104, i64 8
  %105 = load i32, i32* %arrayidx89, align 4, !tbaa !10
  %add90 = add i32 %xor88, %105
  %add91 = add i32 %add90, 1770035416
  %106 = load i32, i32* %a, align 4, !tbaa !10
  %add92 = add i32 %106, %add91
  store i32 %add92, i32* %a, align 4, !tbaa !10
  %107 = load i32, i32* %a, align 4, !tbaa !10
  %shl93 = shl i32 %107, 7
  %108 = load i32, i32* %a, align 4, !tbaa !10
  %shr94 = lshr i32 %108, 25
  %or95 = or i32 %shl93, %shr94
  store i32 %or95, i32* %a, align 4, !tbaa !10
  %109 = load i32, i32* %b, align 4, !tbaa !10
  %110 = load i32, i32* %a, align 4, !tbaa !10
  %add96 = add i32 %110, %109
  store i32 %add96, i32* %a, align 4, !tbaa !10
  %111 = load i32, i32* %c, align 4, !tbaa !10
  %112 = load i32, i32* %a, align 4, !tbaa !10
  %113 = load i32, i32* %b, align 4, !tbaa !10
  %114 = load i32, i32* %c, align 4, !tbaa !10
  %xor97 = xor i32 %113, %114
  %and98 = and i32 %112, %xor97
  %xor99 = xor i32 %111, %and98
  %115 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i32, i32* %115, i64 9
  %116 = load i32, i32* %arrayidx100, align 4, !tbaa !10
  %add101 = add i32 %xor99, %116
  %add102 = add i32 %add101, -1958414417
  %117 = load i32, i32* %d, align 4, !tbaa !10
  %add103 = add i32 %117, %add102
  store i32 %add103, i32* %d, align 4, !tbaa !10
  %118 = load i32, i32* %d, align 4, !tbaa !10
  %shl104 = shl i32 %118, 12
  %119 = load i32, i32* %d, align 4, !tbaa !10
  %shr105 = lshr i32 %119, 20
  %or106 = or i32 %shl104, %shr105
  store i32 %or106, i32* %d, align 4, !tbaa !10
  %120 = load i32, i32* %a, align 4, !tbaa !10
  %121 = load i32, i32* %d, align 4, !tbaa !10
  %add107 = add i32 %121, %120
  store i32 %add107, i32* %d, align 4, !tbaa !10
  %122 = load i32, i32* %b, align 4, !tbaa !10
  %123 = load i32, i32* %d, align 4, !tbaa !10
  %124 = load i32, i32* %a, align 4, !tbaa !10
  %125 = load i32, i32* %b, align 4, !tbaa !10
  %xor108 = xor i32 %124, %125
  %and109 = and i32 %123, %xor108
  %xor110 = xor i32 %122, %and109
  %126 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %126, i64 10
  %127 = load i32, i32* %arrayidx111, align 4, !tbaa !10
  %add112 = add i32 %xor110, %127
  %add113 = add i32 %add112, -42063
  %128 = load i32, i32* %c, align 4, !tbaa !10
  %add114 = add i32 %128, %add113
  store i32 %add114, i32* %c, align 4, !tbaa !10
  %129 = load i32, i32* %c, align 4, !tbaa !10
  %shl115 = shl i32 %129, 17
  %130 = load i32, i32* %c, align 4, !tbaa !10
  %shr116 = lshr i32 %130, 15
  %or117 = or i32 %shl115, %shr116
  store i32 %or117, i32* %c, align 4, !tbaa !10
  %131 = load i32, i32* %d, align 4, !tbaa !10
  %132 = load i32, i32* %c, align 4, !tbaa !10
  %add118 = add i32 %132, %131
  store i32 %add118, i32* %c, align 4, !tbaa !10
  %133 = load i32, i32* %a, align 4, !tbaa !10
  %134 = load i32, i32* %c, align 4, !tbaa !10
  %135 = load i32, i32* %d, align 4, !tbaa !10
  %136 = load i32, i32* %a, align 4, !tbaa !10
  %xor119 = xor i32 %135, %136
  %and120 = and i32 %134, %xor119
  %xor121 = xor i32 %133, %and120
  %137 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i32, i32* %137, i64 11
  %138 = load i32, i32* %arrayidx122, align 4, !tbaa !10
  %add123 = add i32 %xor121, %138
  %add124 = add i32 %add123, -1990404162
  %139 = load i32, i32* %b, align 4, !tbaa !10
  %add125 = add i32 %139, %add124
  store i32 %add125, i32* %b, align 4, !tbaa !10
  %140 = load i32, i32* %b, align 4, !tbaa !10
  %shl126 = shl i32 %140, 22
  %141 = load i32, i32* %b, align 4, !tbaa !10
  %shr127 = lshr i32 %141, 10
  %or128 = or i32 %shl126, %shr127
  store i32 %or128, i32* %b, align 4, !tbaa !10
  %142 = load i32, i32* %c, align 4, !tbaa !10
  %143 = load i32, i32* %b, align 4, !tbaa !10
  %add129 = add i32 %143, %142
  store i32 %add129, i32* %b, align 4, !tbaa !10
  %144 = load i32, i32* %d, align 4, !tbaa !10
  %145 = load i32, i32* %b, align 4, !tbaa !10
  %146 = load i32, i32* %c, align 4, !tbaa !10
  %147 = load i32, i32* %d, align 4, !tbaa !10
  %xor130 = xor i32 %146, %147
  %and131 = and i32 %145, %xor130
  %xor132 = xor i32 %144, %and131
  %148 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %148, i64 12
  %149 = load i32, i32* %arrayidx133, align 4, !tbaa !10
  %add134 = add i32 %xor132, %149
  %add135 = add i32 %add134, 1804603682
  %150 = load i32, i32* %a, align 4, !tbaa !10
  %add136 = add i32 %150, %add135
  store i32 %add136, i32* %a, align 4, !tbaa !10
  %151 = load i32, i32* %a, align 4, !tbaa !10
  %shl137 = shl i32 %151, 7
  %152 = load i32, i32* %a, align 4, !tbaa !10
  %shr138 = lshr i32 %152, 25
  %or139 = or i32 %shl137, %shr138
  store i32 %or139, i32* %a, align 4, !tbaa !10
  %153 = load i32, i32* %b, align 4, !tbaa !10
  %154 = load i32, i32* %a, align 4, !tbaa !10
  %add140 = add i32 %154, %153
  store i32 %add140, i32* %a, align 4, !tbaa !10
  %155 = load i32, i32* %c, align 4, !tbaa !10
  %156 = load i32, i32* %a, align 4, !tbaa !10
  %157 = load i32, i32* %b, align 4, !tbaa !10
  %158 = load i32, i32* %c, align 4, !tbaa !10
  %xor141 = xor i32 %157, %158
  %and142 = and i32 %156, %xor141
  %xor143 = xor i32 %155, %and142
  %159 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i32, i32* %159, i64 13
  %160 = load i32, i32* %arrayidx144, align 4, !tbaa !10
  %add145 = add i32 %xor143, %160
  %add146 = add i32 %add145, -40341101
  %161 = load i32, i32* %d, align 4, !tbaa !10
  %add147 = add i32 %161, %add146
  store i32 %add147, i32* %d, align 4, !tbaa !10
  %162 = load i32, i32* %d, align 4, !tbaa !10
  %shl148 = shl i32 %162, 12
  %163 = load i32, i32* %d, align 4, !tbaa !10
  %shr149 = lshr i32 %163, 20
  %or150 = or i32 %shl148, %shr149
  store i32 %or150, i32* %d, align 4, !tbaa !10
  %164 = load i32, i32* %a, align 4, !tbaa !10
  %165 = load i32, i32* %d, align 4, !tbaa !10
  %add151 = add i32 %165, %164
  store i32 %add151, i32* %d, align 4, !tbaa !10
  %166 = load i32, i32* %b, align 4, !tbaa !10
  %167 = load i32, i32* %d, align 4, !tbaa !10
  %168 = load i32, i32* %a, align 4, !tbaa !10
  %169 = load i32, i32* %b, align 4, !tbaa !10
  %xor152 = xor i32 %168, %169
  %and153 = and i32 %167, %xor152
  %xor154 = xor i32 %166, %and153
  %170 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i32, i32* %170, i64 14
  %171 = load i32, i32* %arrayidx155, align 4, !tbaa !10
  %add156 = add i32 %xor154, %171
  %add157 = add i32 %add156, -1502002290
  %172 = load i32, i32* %c, align 4, !tbaa !10
  %add158 = add i32 %172, %add157
  store i32 %add158, i32* %c, align 4, !tbaa !10
  %173 = load i32, i32* %c, align 4, !tbaa !10
  %shl159 = shl i32 %173, 17
  %174 = load i32, i32* %c, align 4, !tbaa !10
  %shr160 = lshr i32 %174, 15
  %or161 = or i32 %shl159, %shr160
  store i32 %or161, i32* %c, align 4, !tbaa !10
  %175 = load i32, i32* %d, align 4, !tbaa !10
  %176 = load i32, i32* %c, align 4, !tbaa !10
  %add162 = add i32 %176, %175
  store i32 %add162, i32* %c, align 4, !tbaa !10
  %177 = load i32, i32* %a, align 4, !tbaa !10
  %178 = load i32, i32* %c, align 4, !tbaa !10
  %179 = load i32, i32* %d, align 4, !tbaa !10
  %180 = load i32, i32* %a, align 4, !tbaa !10
  %xor163 = xor i32 %179, %180
  %and164 = and i32 %178, %xor163
  %xor165 = xor i32 %177, %and164
  %181 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i32, i32* %181, i64 15
  %182 = load i32, i32* %arrayidx166, align 4, !tbaa !10
  %add167 = add i32 %xor165, %182
  %add168 = add i32 %add167, 1236535329
  %183 = load i32, i32* %b, align 4, !tbaa !10
  %add169 = add i32 %183, %add168
  store i32 %add169, i32* %b, align 4, !tbaa !10
  %184 = load i32, i32* %b, align 4, !tbaa !10
  %shl170 = shl i32 %184, 22
  %185 = load i32, i32* %b, align 4, !tbaa !10
  %shr171 = lshr i32 %185, 10
  %or172 = or i32 %shl170, %shr171
  store i32 %or172, i32* %b, align 4, !tbaa !10
  %186 = load i32, i32* %c, align 4, !tbaa !10
  %187 = load i32, i32* %b, align 4, !tbaa !10
  %add173 = add i32 %187, %186
  store i32 %add173, i32* %b, align 4, !tbaa !10
  %188 = load i32, i32* %c, align 4, !tbaa !10
  %189 = load i32, i32* %d, align 4, !tbaa !10
  %190 = load i32, i32* %b, align 4, !tbaa !10
  %191 = load i32, i32* %c, align 4, !tbaa !10
  %xor174 = xor i32 %190, %191
  %and175 = and i32 %189, %xor174
  %xor176 = xor i32 %188, %and175
  %192 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i32, i32* %192, i64 1
  %193 = load i32, i32* %arrayidx177, align 4, !tbaa !10
  %add178 = add i32 %xor176, %193
  %add179 = add i32 %add178, -165796510
  %194 = load i32, i32* %a, align 4, !tbaa !10
  %add180 = add i32 %194, %add179
  store i32 %add180, i32* %a, align 4, !tbaa !10
  %195 = load i32, i32* %a, align 4, !tbaa !10
  %shl181 = shl i32 %195, 5
  %196 = load i32, i32* %a, align 4, !tbaa !10
  %shr182 = lshr i32 %196, 27
  %or183 = or i32 %shl181, %shr182
  store i32 %or183, i32* %a, align 4, !tbaa !10
  %197 = load i32, i32* %b, align 4, !tbaa !10
  %198 = load i32, i32* %a, align 4, !tbaa !10
  %add184 = add i32 %198, %197
  store i32 %add184, i32* %a, align 4, !tbaa !10
  %199 = load i32, i32* %b, align 4, !tbaa !10
  %200 = load i32, i32* %c, align 4, !tbaa !10
  %201 = load i32, i32* %a, align 4, !tbaa !10
  %202 = load i32, i32* %b, align 4, !tbaa !10
  %xor185 = xor i32 %201, %202
  %and186 = and i32 %200, %xor185
  %xor187 = xor i32 %199, %and186
  %203 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %203, i64 6
  %204 = load i32, i32* %arrayidx188, align 4, !tbaa !10
  %add189 = add i32 %xor187, %204
  %add190 = add i32 %add189, -1069501632
  %205 = load i32, i32* %d, align 4, !tbaa !10
  %add191 = add i32 %205, %add190
  store i32 %add191, i32* %d, align 4, !tbaa !10
  %206 = load i32, i32* %d, align 4, !tbaa !10
  %shl192 = shl i32 %206, 9
  %207 = load i32, i32* %d, align 4, !tbaa !10
  %shr193 = lshr i32 %207, 23
  %or194 = or i32 %shl192, %shr193
  store i32 %or194, i32* %d, align 4, !tbaa !10
  %208 = load i32, i32* %a, align 4, !tbaa !10
  %209 = load i32, i32* %d, align 4, !tbaa !10
  %add195 = add i32 %209, %208
  store i32 %add195, i32* %d, align 4, !tbaa !10
  %210 = load i32, i32* %a, align 4, !tbaa !10
  %211 = load i32, i32* %b, align 4, !tbaa !10
  %212 = load i32, i32* %d, align 4, !tbaa !10
  %213 = load i32, i32* %a, align 4, !tbaa !10
  %xor196 = xor i32 %212, %213
  %and197 = and i32 %211, %xor196
  %xor198 = xor i32 %210, %and197
  %214 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i32, i32* %214, i64 11
  %215 = load i32, i32* %arrayidx199, align 4, !tbaa !10
  %add200 = add i32 %xor198, %215
  %add201 = add i32 %add200, 643717713
  %216 = load i32, i32* %c, align 4, !tbaa !10
  %add202 = add i32 %216, %add201
  store i32 %add202, i32* %c, align 4, !tbaa !10
  %217 = load i32, i32* %c, align 4, !tbaa !10
  %shl203 = shl i32 %217, 14
  %218 = load i32, i32* %c, align 4, !tbaa !10
  %shr204 = lshr i32 %218, 18
  %or205 = or i32 %shl203, %shr204
  store i32 %or205, i32* %c, align 4, !tbaa !10
  %219 = load i32, i32* %d, align 4, !tbaa !10
  %220 = load i32, i32* %c, align 4, !tbaa !10
  %add206 = add i32 %220, %219
  store i32 %add206, i32* %c, align 4, !tbaa !10
  %221 = load i32, i32* %d, align 4, !tbaa !10
  %222 = load i32, i32* %a, align 4, !tbaa !10
  %223 = load i32, i32* %c, align 4, !tbaa !10
  %224 = load i32, i32* %d, align 4, !tbaa !10
  %xor207 = xor i32 %223, %224
  %and208 = and i32 %222, %xor207
  %xor209 = xor i32 %221, %and208
  %225 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i32, i32* %225, i64 0
  %226 = load i32, i32* %arrayidx210, align 4, !tbaa !10
  %add211 = add i32 %xor209, %226
  %add212 = add i32 %add211, -373897302
  %227 = load i32, i32* %b, align 4, !tbaa !10
  %add213 = add i32 %227, %add212
  store i32 %add213, i32* %b, align 4, !tbaa !10
  %228 = load i32, i32* %b, align 4, !tbaa !10
  %shl214 = shl i32 %228, 20
  %229 = load i32, i32* %b, align 4, !tbaa !10
  %shr215 = lshr i32 %229, 12
  %or216 = or i32 %shl214, %shr215
  store i32 %or216, i32* %b, align 4, !tbaa !10
  %230 = load i32, i32* %c, align 4, !tbaa !10
  %231 = load i32, i32* %b, align 4, !tbaa !10
  %add217 = add i32 %231, %230
  store i32 %add217, i32* %b, align 4, !tbaa !10
  %232 = load i32, i32* %c, align 4, !tbaa !10
  %233 = load i32, i32* %d, align 4, !tbaa !10
  %234 = load i32, i32* %b, align 4, !tbaa !10
  %235 = load i32, i32* %c, align 4, !tbaa !10
  %xor218 = xor i32 %234, %235
  %and219 = and i32 %233, %xor218
  %xor220 = xor i32 %232, %and219
  %236 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i32, i32* %236, i64 5
  %237 = load i32, i32* %arrayidx221, align 4, !tbaa !10
  %add222 = add i32 %xor220, %237
  %add223 = add i32 %add222, -701558691
  %238 = load i32, i32* %a, align 4, !tbaa !10
  %add224 = add i32 %238, %add223
  store i32 %add224, i32* %a, align 4, !tbaa !10
  %239 = load i32, i32* %a, align 4, !tbaa !10
  %shl225 = shl i32 %239, 5
  %240 = load i32, i32* %a, align 4, !tbaa !10
  %shr226 = lshr i32 %240, 27
  %or227 = or i32 %shl225, %shr226
  store i32 %or227, i32* %a, align 4, !tbaa !10
  %241 = load i32, i32* %b, align 4, !tbaa !10
  %242 = load i32, i32* %a, align 4, !tbaa !10
  %add228 = add i32 %242, %241
  store i32 %add228, i32* %a, align 4, !tbaa !10
  %243 = load i32, i32* %b, align 4, !tbaa !10
  %244 = load i32, i32* %c, align 4, !tbaa !10
  %245 = load i32, i32* %a, align 4, !tbaa !10
  %246 = load i32, i32* %b, align 4, !tbaa !10
  %xor229 = xor i32 %245, %246
  %and230 = and i32 %244, %xor229
  %xor231 = xor i32 %243, %and230
  %247 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i32, i32* %247, i64 10
  %248 = load i32, i32* %arrayidx232, align 4, !tbaa !10
  %add233 = add i32 %xor231, %248
  %add234 = add i32 %add233, 38016083
  %249 = load i32, i32* %d, align 4, !tbaa !10
  %add235 = add i32 %249, %add234
  store i32 %add235, i32* %d, align 4, !tbaa !10
  %250 = load i32, i32* %d, align 4, !tbaa !10
  %shl236 = shl i32 %250, 9
  %251 = load i32, i32* %d, align 4, !tbaa !10
  %shr237 = lshr i32 %251, 23
  %or238 = or i32 %shl236, %shr237
  store i32 %or238, i32* %d, align 4, !tbaa !10
  %252 = load i32, i32* %a, align 4, !tbaa !10
  %253 = load i32, i32* %d, align 4, !tbaa !10
  %add239 = add i32 %253, %252
  store i32 %add239, i32* %d, align 4, !tbaa !10
  %254 = load i32, i32* %a, align 4, !tbaa !10
  %255 = load i32, i32* %b, align 4, !tbaa !10
  %256 = load i32, i32* %d, align 4, !tbaa !10
  %257 = load i32, i32* %a, align 4, !tbaa !10
  %xor240 = xor i32 %256, %257
  %and241 = and i32 %255, %xor240
  %xor242 = xor i32 %254, %and241
  %258 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i32, i32* %258, i64 15
  %259 = load i32, i32* %arrayidx243, align 4, !tbaa !10
  %add244 = add i32 %xor242, %259
  %add245 = add i32 %add244, -660478335
  %260 = load i32, i32* %c, align 4, !tbaa !10
  %add246 = add i32 %260, %add245
  store i32 %add246, i32* %c, align 4, !tbaa !10
  %261 = load i32, i32* %c, align 4, !tbaa !10
  %shl247 = shl i32 %261, 14
  %262 = load i32, i32* %c, align 4, !tbaa !10
  %shr248 = lshr i32 %262, 18
  %or249 = or i32 %shl247, %shr248
  store i32 %or249, i32* %c, align 4, !tbaa !10
  %263 = load i32, i32* %d, align 4, !tbaa !10
  %264 = load i32, i32* %c, align 4, !tbaa !10
  %add250 = add i32 %264, %263
  store i32 %add250, i32* %c, align 4, !tbaa !10
  %265 = load i32, i32* %d, align 4, !tbaa !10
  %266 = load i32, i32* %a, align 4, !tbaa !10
  %267 = load i32, i32* %c, align 4, !tbaa !10
  %268 = load i32, i32* %d, align 4, !tbaa !10
  %xor251 = xor i32 %267, %268
  %and252 = and i32 %266, %xor251
  %xor253 = xor i32 %265, %and252
  %269 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i32, i32* %269, i64 4
  %270 = load i32, i32* %arrayidx254, align 4, !tbaa !10
  %add255 = add i32 %xor253, %270
  %add256 = add i32 %add255, -405537848
  %271 = load i32, i32* %b, align 4, !tbaa !10
  %add257 = add i32 %271, %add256
  store i32 %add257, i32* %b, align 4, !tbaa !10
  %272 = load i32, i32* %b, align 4, !tbaa !10
  %shl258 = shl i32 %272, 20
  %273 = load i32, i32* %b, align 4, !tbaa !10
  %shr259 = lshr i32 %273, 12
  %or260 = or i32 %shl258, %shr259
  store i32 %or260, i32* %b, align 4, !tbaa !10
  %274 = load i32, i32* %c, align 4, !tbaa !10
  %275 = load i32, i32* %b, align 4, !tbaa !10
  %add261 = add i32 %275, %274
  store i32 %add261, i32* %b, align 4, !tbaa !10
  %276 = load i32, i32* %c, align 4, !tbaa !10
  %277 = load i32, i32* %d, align 4, !tbaa !10
  %278 = load i32, i32* %b, align 4, !tbaa !10
  %279 = load i32, i32* %c, align 4, !tbaa !10
  %xor262 = xor i32 %278, %279
  %and263 = and i32 %277, %xor262
  %xor264 = xor i32 %276, %and263
  %280 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i32, i32* %280, i64 9
  %281 = load i32, i32* %arrayidx265, align 4, !tbaa !10
  %add266 = add i32 %xor264, %281
  %add267 = add i32 %add266, 568446438
  %282 = load i32, i32* %a, align 4, !tbaa !10
  %add268 = add i32 %282, %add267
  store i32 %add268, i32* %a, align 4, !tbaa !10
  %283 = load i32, i32* %a, align 4, !tbaa !10
  %shl269 = shl i32 %283, 5
  %284 = load i32, i32* %a, align 4, !tbaa !10
  %shr270 = lshr i32 %284, 27
  %or271 = or i32 %shl269, %shr270
  store i32 %or271, i32* %a, align 4, !tbaa !10
  %285 = load i32, i32* %b, align 4, !tbaa !10
  %286 = load i32, i32* %a, align 4, !tbaa !10
  %add272 = add i32 %286, %285
  store i32 %add272, i32* %a, align 4, !tbaa !10
  %287 = load i32, i32* %b, align 4, !tbaa !10
  %288 = load i32, i32* %c, align 4, !tbaa !10
  %289 = load i32, i32* %a, align 4, !tbaa !10
  %290 = load i32, i32* %b, align 4, !tbaa !10
  %xor273 = xor i32 %289, %290
  %and274 = and i32 %288, %xor273
  %xor275 = xor i32 %287, %and274
  %291 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i32, i32* %291, i64 14
  %292 = load i32, i32* %arrayidx276, align 4, !tbaa !10
  %add277 = add i32 %xor275, %292
  %add278 = add i32 %add277, -1019803690
  %293 = load i32, i32* %d, align 4, !tbaa !10
  %add279 = add i32 %293, %add278
  store i32 %add279, i32* %d, align 4, !tbaa !10
  %294 = load i32, i32* %d, align 4, !tbaa !10
  %shl280 = shl i32 %294, 9
  %295 = load i32, i32* %d, align 4, !tbaa !10
  %shr281 = lshr i32 %295, 23
  %or282 = or i32 %shl280, %shr281
  store i32 %or282, i32* %d, align 4, !tbaa !10
  %296 = load i32, i32* %a, align 4, !tbaa !10
  %297 = load i32, i32* %d, align 4, !tbaa !10
  %add283 = add i32 %297, %296
  store i32 %add283, i32* %d, align 4, !tbaa !10
  %298 = load i32, i32* %a, align 4, !tbaa !10
  %299 = load i32, i32* %b, align 4, !tbaa !10
  %300 = load i32, i32* %d, align 4, !tbaa !10
  %301 = load i32, i32* %a, align 4, !tbaa !10
  %xor284 = xor i32 %300, %301
  %and285 = and i32 %299, %xor284
  %xor286 = xor i32 %298, %and285
  %302 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i32, i32* %302, i64 3
  %303 = load i32, i32* %arrayidx287, align 4, !tbaa !10
  %add288 = add i32 %xor286, %303
  %add289 = add i32 %add288, -187363961
  %304 = load i32, i32* %c, align 4, !tbaa !10
  %add290 = add i32 %304, %add289
  store i32 %add290, i32* %c, align 4, !tbaa !10
  %305 = load i32, i32* %c, align 4, !tbaa !10
  %shl291 = shl i32 %305, 14
  %306 = load i32, i32* %c, align 4, !tbaa !10
  %shr292 = lshr i32 %306, 18
  %or293 = or i32 %shl291, %shr292
  store i32 %or293, i32* %c, align 4, !tbaa !10
  %307 = load i32, i32* %d, align 4, !tbaa !10
  %308 = load i32, i32* %c, align 4, !tbaa !10
  %add294 = add i32 %308, %307
  store i32 %add294, i32* %c, align 4, !tbaa !10
  %309 = load i32, i32* %d, align 4, !tbaa !10
  %310 = load i32, i32* %a, align 4, !tbaa !10
  %311 = load i32, i32* %c, align 4, !tbaa !10
  %312 = load i32, i32* %d, align 4, !tbaa !10
  %xor295 = xor i32 %311, %312
  %and296 = and i32 %310, %xor295
  %xor297 = xor i32 %309, %and296
  %313 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i32, i32* %313, i64 8
  %314 = load i32, i32* %arrayidx298, align 4, !tbaa !10
  %add299 = add i32 %xor297, %314
  %add300 = add i32 %add299, 1163531501
  %315 = load i32, i32* %b, align 4, !tbaa !10
  %add301 = add i32 %315, %add300
  store i32 %add301, i32* %b, align 4, !tbaa !10
  %316 = load i32, i32* %b, align 4, !tbaa !10
  %shl302 = shl i32 %316, 20
  %317 = load i32, i32* %b, align 4, !tbaa !10
  %shr303 = lshr i32 %317, 12
  %or304 = or i32 %shl302, %shr303
  store i32 %or304, i32* %b, align 4, !tbaa !10
  %318 = load i32, i32* %c, align 4, !tbaa !10
  %319 = load i32, i32* %b, align 4, !tbaa !10
  %add305 = add i32 %319, %318
  store i32 %add305, i32* %b, align 4, !tbaa !10
  %320 = load i32, i32* %c, align 4, !tbaa !10
  %321 = load i32, i32* %d, align 4, !tbaa !10
  %322 = load i32, i32* %b, align 4, !tbaa !10
  %323 = load i32, i32* %c, align 4, !tbaa !10
  %xor306 = xor i32 %322, %323
  %and307 = and i32 %321, %xor306
  %xor308 = xor i32 %320, %and307
  %324 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i32, i32* %324, i64 13
  %325 = load i32, i32* %arrayidx309, align 4, !tbaa !10
  %add310 = add i32 %xor308, %325
  %add311 = add i32 %add310, -1444681467
  %326 = load i32, i32* %a, align 4, !tbaa !10
  %add312 = add i32 %326, %add311
  store i32 %add312, i32* %a, align 4, !tbaa !10
  %327 = load i32, i32* %a, align 4, !tbaa !10
  %shl313 = shl i32 %327, 5
  %328 = load i32, i32* %a, align 4, !tbaa !10
  %shr314 = lshr i32 %328, 27
  %or315 = or i32 %shl313, %shr314
  store i32 %or315, i32* %a, align 4, !tbaa !10
  %329 = load i32, i32* %b, align 4, !tbaa !10
  %330 = load i32, i32* %a, align 4, !tbaa !10
  %add316 = add i32 %330, %329
  store i32 %add316, i32* %a, align 4, !tbaa !10
  %331 = load i32, i32* %b, align 4, !tbaa !10
  %332 = load i32, i32* %c, align 4, !tbaa !10
  %333 = load i32, i32* %a, align 4, !tbaa !10
  %334 = load i32, i32* %b, align 4, !tbaa !10
  %xor317 = xor i32 %333, %334
  %and318 = and i32 %332, %xor317
  %xor319 = xor i32 %331, %and318
  %335 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i32, i32* %335, i64 2
  %336 = load i32, i32* %arrayidx320, align 4, !tbaa !10
  %add321 = add i32 %xor319, %336
  %add322 = add i32 %add321, -51403784
  %337 = load i32, i32* %d, align 4, !tbaa !10
  %add323 = add i32 %337, %add322
  store i32 %add323, i32* %d, align 4, !tbaa !10
  %338 = load i32, i32* %d, align 4, !tbaa !10
  %shl324 = shl i32 %338, 9
  %339 = load i32, i32* %d, align 4, !tbaa !10
  %shr325 = lshr i32 %339, 23
  %or326 = or i32 %shl324, %shr325
  store i32 %or326, i32* %d, align 4, !tbaa !10
  %340 = load i32, i32* %a, align 4, !tbaa !10
  %341 = load i32, i32* %d, align 4, !tbaa !10
  %add327 = add i32 %341, %340
  store i32 %add327, i32* %d, align 4, !tbaa !10
  %342 = load i32, i32* %a, align 4, !tbaa !10
  %343 = load i32, i32* %b, align 4, !tbaa !10
  %344 = load i32, i32* %d, align 4, !tbaa !10
  %345 = load i32, i32* %a, align 4, !tbaa !10
  %xor328 = xor i32 %344, %345
  %and329 = and i32 %343, %xor328
  %xor330 = xor i32 %342, %and329
  %346 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i32, i32* %346, i64 7
  %347 = load i32, i32* %arrayidx331, align 4, !tbaa !10
  %add332 = add i32 %xor330, %347
  %add333 = add i32 %add332, 1735328473
  %348 = load i32, i32* %c, align 4, !tbaa !10
  %add334 = add i32 %348, %add333
  store i32 %add334, i32* %c, align 4, !tbaa !10
  %349 = load i32, i32* %c, align 4, !tbaa !10
  %shl335 = shl i32 %349, 14
  %350 = load i32, i32* %c, align 4, !tbaa !10
  %shr336 = lshr i32 %350, 18
  %or337 = or i32 %shl335, %shr336
  store i32 %or337, i32* %c, align 4, !tbaa !10
  %351 = load i32, i32* %d, align 4, !tbaa !10
  %352 = load i32, i32* %c, align 4, !tbaa !10
  %add338 = add i32 %352, %351
  store i32 %add338, i32* %c, align 4, !tbaa !10
  %353 = load i32, i32* %d, align 4, !tbaa !10
  %354 = load i32, i32* %a, align 4, !tbaa !10
  %355 = load i32, i32* %c, align 4, !tbaa !10
  %356 = load i32, i32* %d, align 4, !tbaa !10
  %xor339 = xor i32 %355, %356
  %and340 = and i32 %354, %xor339
  %xor341 = xor i32 %353, %and340
  %357 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds i32, i32* %357, i64 12
  %358 = load i32, i32* %arrayidx342, align 4, !tbaa !10
  %add343 = add i32 %xor341, %358
  %add344 = add i32 %add343, -1926607734
  %359 = load i32, i32* %b, align 4, !tbaa !10
  %add345 = add i32 %359, %add344
  store i32 %add345, i32* %b, align 4, !tbaa !10
  %360 = load i32, i32* %b, align 4, !tbaa !10
  %shl346 = shl i32 %360, 20
  %361 = load i32, i32* %b, align 4, !tbaa !10
  %shr347 = lshr i32 %361, 12
  %or348 = or i32 %shl346, %shr347
  store i32 %or348, i32* %b, align 4, !tbaa !10
  %362 = load i32, i32* %c, align 4, !tbaa !10
  %363 = load i32, i32* %b, align 4, !tbaa !10
  %add349 = add i32 %363, %362
  store i32 %add349, i32* %b, align 4, !tbaa !10
  %364 = load i32, i32* %b, align 4, !tbaa !10
  %365 = load i32, i32* %c, align 4, !tbaa !10
  %xor350 = xor i32 %364, %365
  %366 = load i32, i32* %d, align 4, !tbaa !10
  %xor351 = xor i32 %xor350, %366
  %367 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds i32, i32* %367, i64 5
  %368 = load i32, i32* %arrayidx352, align 4, !tbaa !10
  %add353 = add i32 %xor351, %368
  %add354 = add i32 %add353, -378558
  %369 = load i32, i32* %a, align 4, !tbaa !10
  %add355 = add i32 %369, %add354
  store i32 %add355, i32* %a, align 4, !tbaa !10
  %370 = load i32, i32* %a, align 4, !tbaa !10
  %shl356 = shl i32 %370, 4
  %371 = load i32, i32* %a, align 4, !tbaa !10
  %shr357 = lshr i32 %371, 28
  %or358 = or i32 %shl356, %shr357
  store i32 %or358, i32* %a, align 4, !tbaa !10
  %372 = load i32, i32* %b, align 4, !tbaa !10
  %373 = load i32, i32* %a, align 4, !tbaa !10
  %add359 = add i32 %373, %372
  store i32 %add359, i32* %a, align 4, !tbaa !10
  %374 = load i32, i32* %a, align 4, !tbaa !10
  %375 = load i32, i32* %b, align 4, !tbaa !10
  %xor360 = xor i32 %374, %375
  %376 = load i32, i32* %c, align 4, !tbaa !10
  %xor361 = xor i32 %xor360, %376
  %377 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i32, i32* %377, i64 8
  %378 = load i32, i32* %arrayidx362, align 4, !tbaa !10
  %add363 = add i32 %xor361, %378
  %add364 = add i32 %add363, -2022574463
  %379 = load i32, i32* %d, align 4, !tbaa !10
  %add365 = add i32 %379, %add364
  store i32 %add365, i32* %d, align 4, !tbaa !10
  %380 = load i32, i32* %d, align 4, !tbaa !10
  %shl366 = shl i32 %380, 11
  %381 = load i32, i32* %d, align 4, !tbaa !10
  %shr367 = lshr i32 %381, 21
  %or368 = or i32 %shl366, %shr367
  store i32 %or368, i32* %d, align 4, !tbaa !10
  %382 = load i32, i32* %a, align 4, !tbaa !10
  %383 = load i32, i32* %d, align 4, !tbaa !10
  %add369 = add i32 %383, %382
  store i32 %add369, i32* %d, align 4, !tbaa !10
  %384 = load i32, i32* %d, align 4, !tbaa !10
  %385 = load i32, i32* %a, align 4, !tbaa !10
  %xor370 = xor i32 %384, %385
  %386 = load i32, i32* %b, align 4, !tbaa !10
  %xor371 = xor i32 %xor370, %386
  %387 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx372 = getelementptr inbounds i32, i32* %387, i64 11
  %388 = load i32, i32* %arrayidx372, align 4, !tbaa !10
  %add373 = add i32 %xor371, %388
  %add374 = add i32 %add373, 1839030562
  %389 = load i32, i32* %c, align 4, !tbaa !10
  %add375 = add i32 %389, %add374
  store i32 %add375, i32* %c, align 4, !tbaa !10
  %390 = load i32, i32* %c, align 4, !tbaa !10
  %shl376 = shl i32 %390, 16
  %391 = load i32, i32* %c, align 4, !tbaa !10
  %shr377 = lshr i32 %391, 16
  %or378 = or i32 %shl376, %shr377
  store i32 %or378, i32* %c, align 4, !tbaa !10
  %392 = load i32, i32* %d, align 4, !tbaa !10
  %393 = load i32, i32* %c, align 4, !tbaa !10
  %add379 = add i32 %393, %392
  store i32 %add379, i32* %c, align 4, !tbaa !10
  %394 = load i32, i32* %c, align 4, !tbaa !10
  %395 = load i32, i32* %d, align 4, !tbaa !10
  %xor380 = xor i32 %394, %395
  %396 = load i32, i32* %a, align 4, !tbaa !10
  %xor381 = xor i32 %xor380, %396
  %397 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds i32, i32* %397, i64 14
  %398 = load i32, i32* %arrayidx382, align 4, !tbaa !10
  %add383 = add i32 %xor381, %398
  %add384 = add i32 %add383, -35309556
  %399 = load i32, i32* %b, align 4, !tbaa !10
  %add385 = add i32 %399, %add384
  store i32 %add385, i32* %b, align 4, !tbaa !10
  %400 = load i32, i32* %b, align 4, !tbaa !10
  %shl386 = shl i32 %400, 23
  %401 = load i32, i32* %b, align 4, !tbaa !10
  %shr387 = lshr i32 %401, 9
  %or388 = or i32 %shl386, %shr387
  store i32 %or388, i32* %b, align 4, !tbaa !10
  %402 = load i32, i32* %c, align 4, !tbaa !10
  %403 = load i32, i32* %b, align 4, !tbaa !10
  %add389 = add i32 %403, %402
  store i32 %add389, i32* %b, align 4, !tbaa !10
  %404 = load i32, i32* %b, align 4, !tbaa !10
  %405 = load i32, i32* %c, align 4, !tbaa !10
  %xor390 = xor i32 %404, %405
  %406 = load i32, i32* %d, align 4, !tbaa !10
  %xor391 = xor i32 %xor390, %406
  %407 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx392 = getelementptr inbounds i32, i32* %407, i64 1
  %408 = load i32, i32* %arrayidx392, align 4, !tbaa !10
  %add393 = add i32 %xor391, %408
  %add394 = add i32 %add393, -1530992060
  %409 = load i32, i32* %a, align 4, !tbaa !10
  %add395 = add i32 %409, %add394
  store i32 %add395, i32* %a, align 4, !tbaa !10
  %410 = load i32, i32* %a, align 4, !tbaa !10
  %shl396 = shl i32 %410, 4
  %411 = load i32, i32* %a, align 4, !tbaa !10
  %shr397 = lshr i32 %411, 28
  %or398 = or i32 %shl396, %shr397
  store i32 %or398, i32* %a, align 4, !tbaa !10
  %412 = load i32, i32* %b, align 4, !tbaa !10
  %413 = load i32, i32* %a, align 4, !tbaa !10
  %add399 = add i32 %413, %412
  store i32 %add399, i32* %a, align 4, !tbaa !10
  %414 = load i32, i32* %a, align 4, !tbaa !10
  %415 = load i32, i32* %b, align 4, !tbaa !10
  %xor400 = xor i32 %414, %415
  %416 = load i32, i32* %c, align 4, !tbaa !10
  %xor401 = xor i32 %xor400, %416
  %417 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds i32, i32* %417, i64 4
  %418 = load i32, i32* %arrayidx402, align 4, !tbaa !10
  %add403 = add i32 %xor401, %418
  %add404 = add i32 %add403, 1272893353
  %419 = load i32, i32* %d, align 4, !tbaa !10
  %add405 = add i32 %419, %add404
  store i32 %add405, i32* %d, align 4, !tbaa !10
  %420 = load i32, i32* %d, align 4, !tbaa !10
  %shl406 = shl i32 %420, 11
  %421 = load i32, i32* %d, align 4, !tbaa !10
  %shr407 = lshr i32 %421, 21
  %or408 = or i32 %shl406, %shr407
  store i32 %or408, i32* %d, align 4, !tbaa !10
  %422 = load i32, i32* %a, align 4, !tbaa !10
  %423 = load i32, i32* %d, align 4, !tbaa !10
  %add409 = add i32 %423, %422
  store i32 %add409, i32* %d, align 4, !tbaa !10
  %424 = load i32, i32* %d, align 4, !tbaa !10
  %425 = load i32, i32* %a, align 4, !tbaa !10
  %xor410 = xor i32 %424, %425
  %426 = load i32, i32* %b, align 4, !tbaa !10
  %xor411 = xor i32 %xor410, %426
  %427 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i32, i32* %427, i64 7
  %428 = load i32, i32* %arrayidx412, align 4, !tbaa !10
  %add413 = add i32 %xor411, %428
  %add414 = add i32 %add413, -155497632
  %429 = load i32, i32* %c, align 4, !tbaa !10
  %add415 = add i32 %429, %add414
  store i32 %add415, i32* %c, align 4, !tbaa !10
  %430 = load i32, i32* %c, align 4, !tbaa !10
  %shl416 = shl i32 %430, 16
  %431 = load i32, i32* %c, align 4, !tbaa !10
  %shr417 = lshr i32 %431, 16
  %or418 = or i32 %shl416, %shr417
  store i32 %or418, i32* %c, align 4, !tbaa !10
  %432 = load i32, i32* %d, align 4, !tbaa !10
  %433 = load i32, i32* %c, align 4, !tbaa !10
  %add419 = add i32 %433, %432
  store i32 %add419, i32* %c, align 4, !tbaa !10
  %434 = load i32, i32* %c, align 4, !tbaa !10
  %435 = load i32, i32* %d, align 4, !tbaa !10
  %xor420 = xor i32 %434, %435
  %436 = load i32, i32* %a, align 4, !tbaa !10
  %xor421 = xor i32 %xor420, %436
  %437 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx422 = getelementptr inbounds i32, i32* %437, i64 10
  %438 = load i32, i32* %arrayidx422, align 4, !tbaa !10
  %add423 = add i32 %xor421, %438
  %add424 = add i32 %add423, -1094730640
  %439 = load i32, i32* %b, align 4, !tbaa !10
  %add425 = add i32 %439, %add424
  store i32 %add425, i32* %b, align 4, !tbaa !10
  %440 = load i32, i32* %b, align 4, !tbaa !10
  %shl426 = shl i32 %440, 23
  %441 = load i32, i32* %b, align 4, !tbaa !10
  %shr427 = lshr i32 %441, 9
  %or428 = or i32 %shl426, %shr427
  store i32 %or428, i32* %b, align 4, !tbaa !10
  %442 = load i32, i32* %c, align 4, !tbaa !10
  %443 = load i32, i32* %b, align 4, !tbaa !10
  %add429 = add i32 %443, %442
  store i32 %add429, i32* %b, align 4, !tbaa !10
  %444 = load i32, i32* %b, align 4, !tbaa !10
  %445 = load i32, i32* %c, align 4, !tbaa !10
  %xor430 = xor i32 %444, %445
  %446 = load i32, i32* %d, align 4, !tbaa !10
  %xor431 = xor i32 %xor430, %446
  %447 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx432 = getelementptr inbounds i32, i32* %447, i64 13
  %448 = load i32, i32* %arrayidx432, align 4, !tbaa !10
  %add433 = add i32 %xor431, %448
  %add434 = add i32 %add433, 681279174
  %449 = load i32, i32* %a, align 4, !tbaa !10
  %add435 = add i32 %449, %add434
  store i32 %add435, i32* %a, align 4, !tbaa !10
  %450 = load i32, i32* %a, align 4, !tbaa !10
  %shl436 = shl i32 %450, 4
  %451 = load i32, i32* %a, align 4, !tbaa !10
  %shr437 = lshr i32 %451, 28
  %or438 = or i32 %shl436, %shr437
  store i32 %or438, i32* %a, align 4, !tbaa !10
  %452 = load i32, i32* %b, align 4, !tbaa !10
  %453 = load i32, i32* %a, align 4, !tbaa !10
  %add439 = add i32 %453, %452
  store i32 %add439, i32* %a, align 4, !tbaa !10
  %454 = load i32, i32* %a, align 4, !tbaa !10
  %455 = load i32, i32* %b, align 4, !tbaa !10
  %xor440 = xor i32 %454, %455
  %456 = load i32, i32* %c, align 4, !tbaa !10
  %xor441 = xor i32 %xor440, %456
  %457 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds i32, i32* %457, i64 0
  %458 = load i32, i32* %arrayidx442, align 4, !tbaa !10
  %add443 = add i32 %xor441, %458
  %add444 = add i32 %add443, -358537222
  %459 = load i32, i32* %d, align 4, !tbaa !10
  %add445 = add i32 %459, %add444
  store i32 %add445, i32* %d, align 4, !tbaa !10
  %460 = load i32, i32* %d, align 4, !tbaa !10
  %shl446 = shl i32 %460, 11
  %461 = load i32, i32* %d, align 4, !tbaa !10
  %shr447 = lshr i32 %461, 21
  %or448 = or i32 %shl446, %shr447
  store i32 %or448, i32* %d, align 4, !tbaa !10
  %462 = load i32, i32* %a, align 4, !tbaa !10
  %463 = load i32, i32* %d, align 4, !tbaa !10
  %add449 = add i32 %463, %462
  store i32 %add449, i32* %d, align 4, !tbaa !10
  %464 = load i32, i32* %d, align 4, !tbaa !10
  %465 = load i32, i32* %a, align 4, !tbaa !10
  %xor450 = xor i32 %464, %465
  %466 = load i32, i32* %b, align 4, !tbaa !10
  %xor451 = xor i32 %xor450, %466
  %467 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx452 = getelementptr inbounds i32, i32* %467, i64 3
  %468 = load i32, i32* %arrayidx452, align 4, !tbaa !10
  %add453 = add i32 %xor451, %468
  %add454 = add i32 %add453, -722521979
  %469 = load i32, i32* %c, align 4, !tbaa !10
  %add455 = add i32 %469, %add454
  store i32 %add455, i32* %c, align 4, !tbaa !10
  %470 = load i32, i32* %c, align 4, !tbaa !10
  %shl456 = shl i32 %470, 16
  %471 = load i32, i32* %c, align 4, !tbaa !10
  %shr457 = lshr i32 %471, 16
  %or458 = or i32 %shl456, %shr457
  store i32 %or458, i32* %c, align 4, !tbaa !10
  %472 = load i32, i32* %d, align 4, !tbaa !10
  %473 = load i32, i32* %c, align 4, !tbaa !10
  %add459 = add i32 %473, %472
  store i32 %add459, i32* %c, align 4, !tbaa !10
  %474 = load i32, i32* %c, align 4, !tbaa !10
  %475 = load i32, i32* %d, align 4, !tbaa !10
  %xor460 = xor i32 %474, %475
  %476 = load i32, i32* %a, align 4, !tbaa !10
  %xor461 = xor i32 %xor460, %476
  %477 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx462 = getelementptr inbounds i32, i32* %477, i64 6
  %478 = load i32, i32* %arrayidx462, align 4, !tbaa !10
  %add463 = add i32 %xor461, %478
  %add464 = add i32 %add463, 76029189
  %479 = load i32, i32* %b, align 4, !tbaa !10
  %add465 = add i32 %479, %add464
  store i32 %add465, i32* %b, align 4, !tbaa !10
  %480 = load i32, i32* %b, align 4, !tbaa !10
  %shl466 = shl i32 %480, 23
  %481 = load i32, i32* %b, align 4, !tbaa !10
  %shr467 = lshr i32 %481, 9
  %or468 = or i32 %shl466, %shr467
  store i32 %or468, i32* %b, align 4, !tbaa !10
  %482 = load i32, i32* %c, align 4, !tbaa !10
  %483 = load i32, i32* %b, align 4, !tbaa !10
  %add469 = add i32 %483, %482
  store i32 %add469, i32* %b, align 4, !tbaa !10
  %484 = load i32, i32* %b, align 4, !tbaa !10
  %485 = load i32, i32* %c, align 4, !tbaa !10
  %xor470 = xor i32 %484, %485
  %486 = load i32, i32* %d, align 4, !tbaa !10
  %xor471 = xor i32 %xor470, %486
  %487 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i32, i32* %487, i64 9
  %488 = load i32, i32* %arrayidx472, align 4, !tbaa !10
  %add473 = add i32 %xor471, %488
  %add474 = add i32 %add473, -640364487
  %489 = load i32, i32* %a, align 4, !tbaa !10
  %add475 = add i32 %489, %add474
  store i32 %add475, i32* %a, align 4, !tbaa !10
  %490 = load i32, i32* %a, align 4, !tbaa !10
  %shl476 = shl i32 %490, 4
  %491 = load i32, i32* %a, align 4, !tbaa !10
  %shr477 = lshr i32 %491, 28
  %or478 = or i32 %shl476, %shr477
  store i32 %or478, i32* %a, align 4, !tbaa !10
  %492 = load i32, i32* %b, align 4, !tbaa !10
  %493 = load i32, i32* %a, align 4, !tbaa !10
  %add479 = add i32 %493, %492
  store i32 %add479, i32* %a, align 4, !tbaa !10
  %494 = load i32, i32* %a, align 4, !tbaa !10
  %495 = load i32, i32* %b, align 4, !tbaa !10
  %xor480 = xor i32 %494, %495
  %496 = load i32, i32* %c, align 4, !tbaa !10
  %xor481 = xor i32 %xor480, %496
  %497 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx482 = getelementptr inbounds i32, i32* %497, i64 12
  %498 = load i32, i32* %arrayidx482, align 4, !tbaa !10
  %add483 = add i32 %xor481, %498
  %add484 = add i32 %add483, -421815835
  %499 = load i32, i32* %d, align 4, !tbaa !10
  %add485 = add i32 %499, %add484
  store i32 %add485, i32* %d, align 4, !tbaa !10
  %500 = load i32, i32* %d, align 4, !tbaa !10
  %shl486 = shl i32 %500, 11
  %501 = load i32, i32* %d, align 4, !tbaa !10
  %shr487 = lshr i32 %501, 21
  %or488 = or i32 %shl486, %shr487
  store i32 %or488, i32* %d, align 4, !tbaa !10
  %502 = load i32, i32* %a, align 4, !tbaa !10
  %503 = load i32, i32* %d, align 4, !tbaa !10
  %add489 = add i32 %503, %502
  store i32 %add489, i32* %d, align 4, !tbaa !10
  %504 = load i32, i32* %d, align 4, !tbaa !10
  %505 = load i32, i32* %a, align 4, !tbaa !10
  %xor490 = xor i32 %504, %505
  %506 = load i32, i32* %b, align 4, !tbaa !10
  %xor491 = xor i32 %xor490, %506
  %507 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i32, i32* %507, i64 15
  %508 = load i32, i32* %arrayidx492, align 4, !tbaa !10
  %add493 = add i32 %xor491, %508
  %add494 = add i32 %add493, 530742520
  %509 = load i32, i32* %c, align 4, !tbaa !10
  %add495 = add i32 %509, %add494
  store i32 %add495, i32* %c, align 4, !tbaa !10
  %510 = load i32, i32* %c, align 4, !tbaa !10
  %shl496 = shl i32 %510, 16
  %511 = load i32, i32* %c, align 4, !tbaa !10
  %shr497 = lshr i32 %511, 16
  %or498 = or i32 %shl496, %shr497
  store i32 %or498, i32* %c, align 4, !tbaa !10
  %512 = load i32, i32* %d, align 4, !tbaa !10
  %513 = load i32, i32* %c, align 4, !tbaa !10
  %add499 = add i32 %513, %512
  store i32 %add499, i32* %c, align 4, !tbaa !10
  %514 = load i32, i32* %c, align 4, !tbaa !10
  %515 = load i32, i32* %d, align 4, !tbaa !10
  %xor500 = xor i32 %514, %515
  %516 = load i32, i32* %a, align 4, !tbaa !10
  %xor501 = xor i32 %xor500, %516
  %517 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx502 = getelementptr inbounds i32, i32* %517, i64 2
  %518 = load i32, i32* %arrayidx502, align 4, !tbaa !10
  %add503 = add i32 %xor501, %518
  %add504 = add i32 %add503, -995338651
  %519 = load i32, i32* %b, align 4, !tbaa !10
  %add505 = add i32 %519, %add504
  store i32 %add505, i32* %b, align 4, !tbaa !10
  %520 = load i32, i32* %b, align 4, !tbaa !10
  %shl506 = shl i32 %520, 23
  %521 = load i32, i32* %b, align 4, !tbaa !10
  %shr507 = lshr i32 %521, 9
  %or508 = or i32 %shl506, %shr507
  store i32 %or508, i32* %b, align 4, !tbaa !10
  %522 = load i32, i32* %c, align 4, !tbaa !10
  %523 = load i32, i32* %b, align 4, !tbaa !10
  %add509 = add i32 %523, %522
  store i32 %add509, i32* %b, align 4, !tbaa !10
  %524 = load i32, i32* %c, align 4, !tbaa !10
  %525 = load i32, i32* %b, align 4, !tbaa !10
  %526 = load i32, i32* %d, align 4, !tbaa !10
  %neg = xor i32 %526, -1
  %or510 = or i32 %525, %neg
  %xor511 = xor i32 %524, %or510
  %527 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx512 = getelementptr inbounds i32, i32* %527, i64 0
  %528 = load i32, i32* %arrayidx512, align 4, !tbaa !10
  %add513 = add i32 %xor511, %528
  %add514 = add i32 %add513, -198630844
  %529 = load i32, i32* %a, align 4, !tbaa !10
  %add515 = add i32 %529, %add514
  store i32 %add515, i32* %a, align 4, !tbaa !10
  %530 = load i32, i32* %a, align 4, !tbaa !10
  %shl516 = shl i32 %530, 6
  %531 = load i32, i32* %a, align 4, !tbaa !10
  %shr517 = lshr i32 %531, 26
  %or518 = or i32 %shl516, %shr517
  store i32 %or518, i32* %a, align 4, !tbaa !10
  %532 = load i32, i32* %b, align 4, !tbaa !10
  %533 = load i32, i32* %a, align 4, !tbaa !10
  %add519 = add i32 %533, %532
  store i32 %add519, i32* %a, align 4, !tbaa !10
  %534 = load i32, i32* %b, align 4, !tbaa !10
  %535 = load i32, i32* %a, align 4, !tbaa !10
  %536 = load i32, i32* %c, align 4, !tbaa !10
  %neg520 = xor i32 %536, -1
  %or521 = or i32 %535, %neg520
  %xor522 = xor i32 %534, %or521
  %537 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx523 = getelementptr inbounds i32, i32* %537, i64 7
  %538 = load i32, i32* %arrayidx523, align 4, !tbaa !10
  %add524 = add i32 %xor522, %538
  %add525 = add i32 %add524, 1126891415
  %539 = load i32, i32* %d, align 4, !tbaa !10
  %add526 = add i32 %539, %add525
  store i32 %add526, i32* %d, align 4, !tbaa !10
  %540 = load i32, i32* %d, align 4, !tbaa !10
  %shl527 = shl i32 %540, 10
  %541 = load i32, i32* %d, align 4, !tbaa !10
  %shr528 = lshr i32 %541, 22
  %or529 = or i32 %shl527, %shr528
  store i32 %or529, i32* %d, align 4, !tbaa !10
  %542 = load i32, i32* %a, align 4, !tbaa !10
  %543 = load i32, i32* %d, align 4, !tbaa !10
  %add530 = add i32 %543, %542
  store i32 %add530, i32* %d, align 4, !tbaa !10
  %544 = load i32, i32* %a, align 4, !tbaa !10
  %545 = load i32, i32* %d, align 4, !tbaa !10
  %546 = load i32, i32* %b, align 4, !tbaa !10
  %neg531 = xor i32 %546, -1
  %or532 = or i32 %545, %neg531
  %xor533 = xor i32 %544, %or532
  %547 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx534 = getelementptr inbounds i32, i32* %547, i64 14
  %548 = load i32, i32* %arrayidx534, align 4, !tbaa !10
  %add535 = add i32 %xor533, %548
  %add536 = add i32 %add535, -1416354905
  %549 = load i32, i32* %c, align 4, !tbaa !10
  %add537 = add i32 %549, %add536
  store i32 %add537, i32* %c, align 4, !tbaa !10
  %550 = load i32, i32* %c, align 4, !tbaa !10
  %shl538 = shl i32 %550, 15
  %551 = load i32, i32* %c, align 4, !tbaa !10
  %shr539 = lshr i32 %551, 17
  %or540 = or i32 %shl538, %shr539
  store i32 %or540, i32* %c, align 4, !tbaa !10
  %552 = load i32, i32* %d, align 4, !tbaa !10
  %553 = load i32, i32* %c, align 4, !tbaa !10
  %add541 = add i32 %553, %552
  store i32 %add541, i32* %c, align 4, !tbaa !10
  %554 = load i32, i32* %d, align 4, !tbaa !10
  %555 = load i32, i32* %c, align 4, !tbaa !10
  %556 = load i32, i32* %a, align 4, !tbaa !10
  %neg542 = xor i32 %556, -1
  %or543 = or i32 %555, %neg542
  %xor544 = xor i32 %554, %or543
  %557 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds i32, i32* %557, i64 5
  %558 = load i32, i32* %arrayidx545, align 4, !tbaa !10
  %add546 = add i32 %xor544, %558
  %add547 = add i32 %add546, -57434055
  %559 = load i32, i32* %b, align 4, !tbaa !10
  %add548 = add i32 %559, %add547
  store i32 %add548, i32* %b, align 4, !tbaa !10
  %560 = load i32, i32* %b, align 4, !tbaa !10
  %shl549 = shl i32 %560, 21
  %561 = load i32, i32* %b, align 4, !tbaa !10
  %shr550 = lshr i32 %561, 11
  %or551 = or i32 %shl549, %shr550
  store i32 %or551, i32* %b, align 4, !tbaa !10
  %562 = load i32, i32* %c, align 4, !tbaa !10
  %563 = load i32, i32* %b, align 4, !tbaa !10
  %add552 = add i32 %563, %562
  store i32 %add552, i32* %b, align 4, !tbaa !10
  %564 = load i32, i32* %c, align 4, !tbaa !10
  %565 = load i32, i32* %b, align 4, !tbaa !10
  %566 = load i32, i32* %d, align 4, !tbaa !10
  %neg553 = xor i32 %566, -1
  %or554 = or i32 %565, %neg553
  %xor555 = xor i32 %564, %or554
  %567 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds i32, i32* %567, i64 12
  %568 = load i32, i32* %arrayidx556, align 4, !tbaa !10
  %add557 = add i32 %xor555, %568
  %add558 = add i32 %add557, 1700485571
  %569 = load i32, i32* %a, align 4, !tbaa !10
  %add559 = add i32 %569, %add558
  store i32 %add559, i32* %a, align 4, !tbaa !10
  %570 = load i32, i32* %a, align 4, !tbaa !10
  %shl560 = shl i32 %570, 6
  %571 = load i32, i32* %a, align 4, !tbaa !10
  %shr561 = lshr i32 %571, 26
  %or562 = or i32 %shl560, %shr561
  store i32 %or562, i32* %a, align 4, !tbaa !10
  %572 = load i32, i32* %b, align 4, !tbaa !10
  %573 = load i32, i32* %a, align 4, !tbaa !10
  %add563 = add i32 %573, %572
  store i32 %add563, i32* %a, align 4, !tbaa !10
  %574 = load i32, i32* %b, align 4, !tbaa !10
  %575 = load i32, i32* %a, align 4, !tbaa !10
  %576 = load i32, i32* %c, align 4, !tbaa !10
  %neg564 = xor i32 %576, -1
  %or565 = or i32 %575, %neg564
  %xor566 = xor i32 %574, %or565
  %577 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx567 = getelementptr inbounds i32, i32* %577, i64 3
  %578 = load i32, i32* %arrayidx567, align 4, !tbaa !10
  %add568 = add i32 %xor566, %578
  %add569 = add i32 %add568, -1894986606
  %579 = load i32, i32* %d, align 4, !tbaa !10
  %add570 = add i32 %579, %add569
  store i32 %add570, i32* %d, align 4, !tbaa !10
  %580 = load i32, i32* %d, align 4, !tbaa !10
  %shl571 = shl i32 %580, 10
  %581 = load i32, i32* %d, align 4, !tbaa !10
  %shr572 = lshr i32 %581, 22
  %or573 = or i32 %shl571, %shr572
  store i32 %or573, i32* %d, align 4, !tbaa !10
  %582 = load i32, i32* %a, align 4, !tbaa !10
  %583 = load i32, i32* %d, align 4, !tbaa !10
  %add574 = add i32 %583, %582
  store i32 %add574, i32* %d, align 4, !tbaa !10
  %584 = load i32, i32* %a, align 4, !tbaa !10
  %585 = load i32, i32* %d, align 4, !tbaa !10
  %586 = load i32, i32* %b, align 4, !tbaa !10
  %neg575 = xor i32 %586, -1
  %or576 = or i32 %585, %neg575
  %xor577 = xor i32 %584, %or576
  %587 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx578 = getelementptr inbounds i32, i32* %587, i64 10
  %588 = load i32, i32* %arrayidx578, align 4, !tbaa !10
  %add579 = add i32 %xor577, %588
  %add580 = add i32 %add579, -1051523
  %589 = load i32, i32* %c, align 4, !tbaa !10
  %add581 = add i32 %589, %add580
  store i32 %add581, i32* %c, align 4, !tbaa !10
  %590 = load i32, i32* %c, align 4, !tbaa !10
  %shl582 = shl i32 %590, 15
  %591 = load i32, i32* %c, align 4, !tbaa !10
  %shr583 = lshr i32 %591, 17
  %or584 = or i32 %shl582, %shr583
  store i32 %or584, i32* %c, align 4, !tbaa !10
  %592 = load i32, i32* %d, align 4, !tbaa !10
  %593 = load i32, i32* %c, align 4, !tbaa !10
  %add585 = add i32 %593, %592
  store i32 %add585, i32* %c, align 4, !tbaa !10
  %594 = load i32, i32* %d, align 4, !tbaa !10
  %595 = load i32, i32* %c, align 4, !tbaa !10
  %596 = load i32, i32* %a, align 4, !tbaa !10
  %neg586 = xor i32 %596, -1
  %or587 = or i32 %595, %neg586
  %xor588 = xor i32 %594, %or587
  %597 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx589 = getelementptr inbounds i32, i32* %597, i64 1
  %598 = load i32, i32* %arrayidx589, align 4, !tbaa !10
  %add590 = add i32 %xor588, %598
  %add591 = add i32 %add590, -2054922799
  %599 = load i32, i32* %b, align 4, !tbaa !10
  %add592 = add i32 %599, %add591
  store i32 %add592, i32* %b, align 4, !tbaa !10
  %600 = load i32, i32* %b, align 4, !tbaa !10
  %shl593 = shl i32 %600, 21
  %601 = load i32, i32* %b, align 4, !tbaa !10
  %shr594 = lshr i32 %601, 11
  %or595 = or i32 %shl593, %shr594
  store i32 %or595, i32* %b, align 4, !tbaa !10
  %602 = load i32, i32* %c, align 4, !tbaa !10
  %603 = load i32, i32* %b, align 4, !tbaa !10
  %add596 = add i32 %603, %602
  store i32 %add596, i32* %b, align 4, !tbaa !10
  %604 = load i32, i32* %c, align 4, !tbaa !10
  %605 = load i32, i32* %b, align 4, !tbaa !10
  %606 = load i32, i32* %d, align 4, !tbaa !10
  %neg597 = xor i32 %606, -1
  %or598 = or i32 %605, %neg597
  %xor599 = xor i32 %604, %or598
  %607 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i32, i32* %607, i64 8
  %608 = load i32, i32* %arrayidx600, align 4, !tbaa !10
  %add601 = add i32 %xor599, %608
  %add602 = add i32 %add601, 1873313359
  %609 = load i32, i32* %a, align 4, !tbaa !10
  %add603 = add i32 %609, %add602
  store i32 %add603, i32* %a, align 4, !tbaa !10
  %610 = load i32, i32* %a, align 4, !tbaa !10
  %shl604 = shl i32 %610, 6
  %611 = load i32, i32* %a, align 4, !tbaa !10
  %shr605 = lshr i32 %611, 26
  %or606 = or i32 %shl604, %shr605
  store i32 %or606, i32* %a, align 4, !tbaa !10
  %612 = load i32, i32* %b, align 4, !tbaa !10
  %613 = load i32, i32* %a, align 4, !tbaa !10
  %add607 = add i32 %613, %612
  store i32 %add607, i32* %a, align 4, !tbaa !10
  %614 = load i32, i32* %b, align 4, !tbaa !10
  %615 = load i32, i32* %a, align 4, !tbaa !10
  %616 = load i32, i32* %c, align 4, !tbaa !10
  %neg608 = xor i32 %616, -1
  %or609 = or i32 %615, %neg608
  %xor610 = xor i32 %614, %or609
  %617 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx611 = getelementptr inbounds i32, i32* %617, i64 15
  %618 = load i32, i32* %arrayidx611, align 4, !tbaa !10
  %add612 = add i32 %xor610, %618
  %add613 = add i32 %add612, -30611744
  %619 = load i32, i32* %d, align 4, !tbaa !10
  %add614 = add i32 %619, %add613
  store i32 %add614, i32* %d, align 4, !tbaa !10
  %620 = load i32, i32* %d, align 4, !tbaa !10
  %shl615 = shl i32 %620, 10
  %621 = load i32, i32* %d, align 4, !tbaa !10
  %shr616 = lshr i32 %621, 22
  %or617 = or i32 %shl615, %shr616
  store i32 %or617, i32* %d, align 4, !tbaa !10
  %622 = load i32, i32* %a, align 4, !tbaa !10
  %623 = load i32, i32* %d, align 4, !tbaa !10
  %add618 = add i32 %623, %622
  store i32 %add618, i32* %d, align 4, !tbaa !10
  %624 = load i32, i32* %a, align 4, !tbaa !10
  %625 = load i32, i32* %d, align 4, !tbaa !10
  %626 = load i32, i32* %b, align 4, !tbaa !10
  %neg619 = xor i32 %626, -1
  %or620 = or i32 %625, %neg619
  %xor621 = xor i32 %624, %or620
  %627 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx622 = getelementptr inbounds i32, i32* %627, i64 6
  %628 = load i32, i32* %arrayidx622, align 4, !tbaa !10
  %add623 = add i32 %xor621, %628
  %add624 = add i32 %add623, -1560198380
  %629 = load i32, i32* %c, align 4, !tbaa !10
  %add625 = add i32 %629, %add624
  store i32 %add625, i32* %c, align 4, !tbaa !10
  %630 = load i32, i32* %c, align 4, !tbaa !10
  %shl626 = shl i32 %630, 15
  %631 = load i32, i32* %c, align 4, !tbaa !10
  %shr627 = lshr i32 %631, 17
  %or628 = or i32 %shl626, %shr627
  store i32 %or628, i32* %c, align 4, !tbaa !10
  %632 = load i32, i32* %d, align 4, !tbaa !10
  %633 = load i32, i32* %c, align 4, !tbaa !10
  %add629 = add i32 %633, %632
  store i32 %add629, i32* %c, align 4, !tbaa !10
  %634 = load i32, i32* %d, align 4, !tbaa !10
  %635 = load i32, i32* %c, align 4, !tbaa !10
  %636 = load i32, i32* %a, align 4, !tbaa !10
  %neg630 = xor i32 %636, -1
  %or631 = or i32 %635, %neg630
  %xor632 = xor i32 %634, %or631
  %637 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx633 = getelementptr inbounds i32, i32* %637, i64 13
  %638 = load i32, i32* %arrayidx633, align 4, !tbaa !10
  %add634 = add i32 %xor632, %638
  %add635 = add i32 %add634, 1309151649
  %639 = load i32, i32* %b, align 4, !tbaa !10
  %add636 = add i32 %639, %add635
  store i32 %add636, i32* %b, align 4, !tbaa !10
  %640 = load i32, i32* %b, align 4, !tbaa !10
  %shl637 = shl i32 %640, 21
  %641 = load i32, i32* %b, align 4, !tbaa !10
  %shr638 = lshr i32 %641, 11
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %b, align 4, !tbaa !10
  %642 = load i32, i32* %c, align 4, !tbaa !10
  %643 = load i32, i32* %b, align 4, !tbaa !10
  %add640 = add i32 %643, %642
  store i32 %add640, i32* %b, align 4, !tbaa !10
  %644 = load i32, i32* %c, align 4, !tbaa !10
  %645 = load i32, i32* %b, align 4, !tbaa !10
  %646 = load i32, i32* %d, align 4, !tbaa !10
  %neg641 = xor i32 %646, -1
  %or642 = or i32 %645, %neg641
  %xor643 = xor i32 %644, %or642
  %647 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx644 = getelementptr inbounds i32, i32* %647, i64 4
  %648 = load i32, i32* %arrayidx644, align 4, !tbaa !10
  %add645 = add i32 %xor643, %648
  %add646 = add i32 %add645, -145523070
  %649 = load i32, i32* %a, align 4, !tbaa !10
  %add647 = add i32 %649, %add646
  store i32 %add647, i32* %a, align 4, !tbaa !10
  %650 = load i32, i32* %a, align 4, !tbaa !10
  %shl648 = shl i32 %650, 6
  %651 = load i32, i32* %a, align 4, !tbaa !10
  %shr649 = lshr i32 %651, 26
  %or650 = or i32 %shl648, %shr649
  store i32 %or650, i32* %a, align 4, !tbaa !10
  %652 = load i32, i32* %b, align 4, !tbaa !10
  %653 = load i32, i32* %a, align 4, !tbaa !10
  %add651 = add i32 %653, %652
  store i32 %add651, i32* %a, align 4, !tbaa !10
  %654 = load i32, i32* %b, align 4, !tbaa !10
  %655 = load i32, i32* %a, align 4, !tbaa !10
  %656 = load i32, i32* %c, align 4, !tbaa !10
  %neg652 = xor i32 %656, -1
  %or653 = or i32 %655, %neg652
  %xor654 = xor i32 %654, %or653
  %657 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx655 = getelementptr inbounds i32, i32* %657, i64 11
  %658 = load i32, i32* %arrayidx655, align 4, !tbaa !10
  %add656 = add i32 %xor654, %658
  %add657 = add i32 %add656, -1120210379
  %659 = load i32, i32* %d, align 4, !tbaa !10
  %add658 = add i32 %659, %add657
  store i32 %add658, i32* %d, align 4, !tbaa !10
  %660 = load i32, i32* %d, align 4, !tbaa !10
  %shl659 = shl i32 %660, 10
  %661 = load i32, i32* %d, align 4, !tbaa !10
  %shr660 = lshr i32 %661, 22
  %or661 = or i32 %shl659, %shr660
  store i32 %or661, i32* %d, align 4, !tbaa !10
  %662 = load i32, i32* %a, align 4, !tbaa !10
  %663 = load i32, i32* %d, align 4, !tbaa !10
  %add662 = add i32 %663, %662
  store i32 %add662, i32* %d, align 4, !tbaa !10
  %664 = load i32, i32* %a, align 4, !tbaa !10
  %665 = load i32, i32* %d, align 4, !tbaa !10
  %666 = load i32, i32* %b, align 4, !tbaa !10
  %neg663 = xor i32 %666, -1
  %or664 = or i32 %665, %neg663
  %xor665 = xor i32 %664, %or664
  %667 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx666 = getelementptr inbounds i32, i32* %667, i64 2
  %668 = load i32, i32* %arrayidx666, align 4, !tbaa !10
  %add667 = add i32 %xor665, %668
  %add668 = add i32 %add667, 718787259
  %669 = load i32, i32* %c, align 4, !tbaa !10
  %add669 = add i32 %669, %add668
  store i32 %add669, i32* %c, align 4, !tbaa !10
  %670 = load i32, i32* %c, align 4, !tbaa !10
  %shl670 = shl i32 %670, 15
  %671 = load i32, i32* %c, align 4, !tbaa !10
  %shr671 = lshr i32 %671, 17
  %or672 = or i32 %shl670, %shr671
  store i32 %or672, i32* %c, align 4, !tbaa !10
  %672 = load i32, i32* %d, align 4, !tbaa !10
  %673 = load i32, i32* %c, align 4, !tbaa !10
  %add673 = add i32 %673, %672
  store i32 %add673, i32* %c, align 4, !tbaa !10
  %674 = load i32, i32* %d, align 4, !tbaa !10
  %675 = load i32, i32* %c, align 4, !tbaa !10
  %676 = load i32, i32* %a, align 4, !tbaa !10
  %neg674 = xor i32 %676, -1
  %or675 = or i32 %675, %neg674
  %xor676 = xor i32 %674, %or675
  %677 = load i32*, i32** %in.addr, align 8, !tbaa !1
  %arrayidx677 = getelementptr inbounds i32, i32* %677, i64 9
  %678 = load i32, i32* %arrayidx677, align 4, !tbaa !10
  %add678 = add i32 %xor676, %678
  %add679 = add i32 %add678, -343485551
  %679 = load i32, i32* %b, align 4, !tbaa !10
  %add680 = add i32 %679, %add679
  store i32 %add680, i32* %b, align 4, !tbaa !10
  %680 = load i32, i32* %b, align 4, !tbaa !10
  %shl681 = shl i32 %680, 21
  %681 = load i32, i32* %b, align 4, !tbaa !10
  %shr682 = lshr i32 %681, 11
  %or683 = or i32 %shl681, %shr682
  store i32 %or683, i32* %b, align 4, !tbaa !10
  %682 = load i32, i32* %c, align 4, !tbaa !10
  %683 = load i32, i32* %b, align 4, !tbaa !10
  %add684 = add i32 %683, %682
  store i32 %add684, i32* %b, align 4, !tbaa !10
  %684 = load i32, i32* %a, align 4, !tbaa !10
  %685 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx685 = getelementptr inbounds i32, i32* %685, i64 0
  %686 = load i32, i32* %arrayidx685, align 4, !tbaa !10
  %add686 = add i32 %686, %684
  store i32 %add686, i32* %arrayidx685, align 4, !tbaa !10
  %687 = load i32, i32* %b, align 4, !tbaa !10
  %688 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx687 = getelementptr inbounds i32, i32* %688, i64 1
  %689 = load i32, i32* %arrayidx687, align 4, !tbaa !10
  %add688 = add i32 %689, %687
  store i32 %add688, i32* %arrayidx687, align 4, !tbaa !10
  %690 = load i32, i32* %c, align 4, !tbaa !10
  %691 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx689 = getelementptr inbounds i32, i32* %691, i64 2
  %692 = load i32, i32* %arrayidx689, align 4, !tbaa !10
  %add690 = add i32 %692, %690
  store i32 %add690, i32* %arrayidx689, align 4, !tbaa !10
  %693 = load i32, i32* %d, align 4, !tbaa !10
  %694 = load i32*, i32** %buf.addr, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds i32, i32* %694, i64 3
  %695 = load i32, i32* %arrayidx691, align 4, !tbaa !10
  %add692 = add i32 %695, %693
  store i32 %add692, i32* %arrayidx691, align 4, !tbaa !10
  %696 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %696) #1
  %697 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %698 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  ret void
}

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
!5 = !{!6, !8, i64 88}
!6 = !{!"_cms_iccprofile_struct", !2, i64 0, !2, i64 8, !7, i64 16, !8, i64 72, !3, i64 76, !3, i64 80, !3, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !8, i64 112, !3, i64 116, !8, i64 132, !3, i64 136, !3, i64 536, !3, i64 936, !3, i64 1336, !3, i64 1736, !3, i64 2136, !3, i64 2936, !8, i64 3736, !2, i64 3744}
!7 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 40, !2, i64 48}
!8 = !{!"int", !3, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !2, i64 88}
!12 = !{!"", !3, i64 0, !3, i64 16, !3, i64 24, !2, i64 88}
!13 = !{!3, !3, i64 0}
