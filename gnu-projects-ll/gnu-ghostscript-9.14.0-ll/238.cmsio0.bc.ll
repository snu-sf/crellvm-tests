; ModuleID = './cmsio0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_io_handler = type { i8*, %struct._cmsContext_struct*, i32, i32, [256 x i8], i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*, i32, i8*)* }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.FILENULL = type { i32 }
%struct.FILEMEM = type { i8*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._cms_iccprofile_struct = type { %struct._cms_io_handler*, %struct._cmsContext_struct*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %union.cmsProfileID, i32, [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x i8*], [100 x %struct._cms_typehandler_struct*], i32, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cms_typehandler_struct = type { i32, i8* (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i32*, i32)*, i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)*, i8* (%struct._cms_typehandler_struct*, i8*, i32)*, void (%struct._cms_typehandler_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct.cmsTagEntry = type { i32, i32, i32 }
%struct.cmsICCHeader = type { i32, i32, i32, i32, i32, i32, %struct.cmsDateTimeNumber, i32, i32, i32, i32, i32, i64, i32, %struct.cmsEncodedXYZNumber, i32, %union.cmsProfileID, [28 x i8] }
%struct.cmsDateTimeNumber = type { i16, i16, i16, i16, i16, i16 }
%struct.cmsEncodedXYZNumber = type { i32, i32, i32 }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsTagDescriptor = type { i32, i32, [20 x i32], i32 (double, i8*)* }

@.str = private unnamed_addr constant [27 x i8] c"(AccessMode != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./lcms2/src/cmsio0.c\00", align 1
@__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem = private unnamed_addr constant [89 x i8] c"cmsIOHANDLER *cmsOpenIOhandlerFromMem(cmsContext, void *, cmsUInt32Number, const char *)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't read profile from NULL pointer\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Couldn't allocate %ld bytes for profile\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown access mode '%c'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"(FileName != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile = private unnamed_addr constant [79 x i8] c"cmsIOHANDLER *cmsOpenIOhandlerFromFile(cmsContext, const char *, const char *)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"File '%s' not found\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Couldn't create '%s'\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"not an ICC profile, invalid signature\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Too many tags (%d)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"(hProfile != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler = private unnamed_addr constant [71 x i8] c"cmsUInt32Number cmsSaveProfileToIOhandler(cmsHPROFILE, cmsIOHANDLER *)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"(BytesNeeded != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsSaveProfileToMem = private unnamed_addr constant [68 x i8] c"cmsBool cmsSaveProfileToMem(cmsHPROFILE, void *, cmsUInt32Number *)\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Unknown tag type '%s' found.\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Corrupted tag '%s'\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"'%s' Inconsistent number of items: expected %d, got %d\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Unsupported tag '%x'\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Unsupported type '%s' for tag '%s'\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Malformed struct in type '%s' for tag '%s'\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"Read from memory error. Got %d bytes, block should be of %d bytes\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Too few data; probably corrupted profile\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Read error. Got %d bytes, block should be of %d bytes\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Seek error; probably corrupted file\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"(Internal) no handler for tag %x\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Couldn't write type '%s'\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"(Icc != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsDeleteTagByPos = private unnamed_addr constant [47 x i8] c"void _cmsDeleteTagByPos(_cmsICCPROFILE *, int)\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"(i >= 0)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cms_io_handler*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %iohandler = alloca %struct._cms_io_handler*, align 8
  %fm = alloca %struct.FILENULL*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %1 = bitcast %struct.FILENULL** %fm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.FILENULL* null, %struct.FILENULL** %fm, align 8, !tbaa !1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 320) #6
  %3 = bitcast i8* %call to %struct._cms_io_handler*
  store %struct._cms_io_handler* %3, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_io_handler* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %5, i32 4) #6
  %6 = bitcast i8* %call1 to %struct.FILENULL*
  store %struct.FILENULL* %6, %struct.FILENULL** %fm, align 8, !tbaa !1
  %7 = load %struct.FILENULL*, %struct.FILENULL** %fm, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.FILENULL* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %Error

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.FILENULL*, %struct.FILENULL** %fm, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %8, i32 0, i32 0
  store i32 0, i32* %Pointer, align 4, !tbaa !5
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ContextID5 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %10, i32 0, i32 1
  store %struct._cmsContext_struct* %9, %struct._cmsContext_struct** %ContextID5, align 8, !tbaa !8
  %11 = load %struct.FILENULL*, %struct.FILENULL** %fm, align 8, !tbaa !1
  %12 = bitcast %struct.FILENULL* %11 to i8*
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %13, i32 0, i32 0
  store i8* %12, i8** %stream, align 8, !tbaa !10
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %14, i32 0, i32 2
  store i32 0, i32* %UsedSpace, align 4, !tbaa !11
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %15, i32 0, i32 3
  store i32 0, i32* %ReportedSize, align 4, !tbaa !12
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %PhysicalFile = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %17, i32 0, i32 5
  store i32 (%struct._cms_io_handler*, i8*, i32, i32)* @NULLRead, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %18, i32 0, i32 6
  store i32 (%struct._cms_io_handler*, i32)* @NULLSeek, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Close = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %19, i32 0, i32 7
  store i32 (%struct._cms_io_handler*)* @NULLClose, i32 (%struct._cms_io_handler*)** %Close, align 8, !tbaa !16
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %20, i32 0, i32 8
  store i32 (%struct._cms_io_handler*)* @NULLTell, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !17
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %21, i32 0, i32 9
  store i32 (%struct._cms_io_handler*, i32, i8*)* @NULLWrite, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %22 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  store %struct._cms_io_handler* %22, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.3
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_io_handler* %23, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %Error
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %25 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %26 = bitcast %struct._cms_io_handler* %25 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %24, i8* %26) #6
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %Error
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.end.4, %if.then
  %27 = bitcast %struct.FILENULL** %fm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct._cms_io_handler*, %struct._cms_io_handler** %retval
  ret %struct._cms_io_handler* %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @NULLRead(%struct._cms_io_handler* %iohandler, i8* %Buffer, i32 %size, i32 %count) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %Buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %ResData = alloca %struct.FILENULL*, align 8
  %len = alloca i32, align 4
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  %0 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILENULL*
  store %struct.FILENULL* %3, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !19
  %6 = load i32, i32* %count.addr, align 4, !tbaa !19
  %mul = mul i32 %5, %6
  store i32 %mul, i32* %len, align 4, !tbaa !19
  %7 = load i32, i32* %len, align 4, !tbaa !19
  %8 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %8, i32 0, i32 0
  %9 = load i32, i32* %Pointer, align 4, !tbaa !5
  %add = add i32 %9, %7
  store i32 %add, i32* %Pointer, align 4, !tbaa !5
  %10 = load i32, i32* %count.addr, align 4, !tbaa !19
  %11 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @NULLSeek(%struct._cms_io_handler* %iohandler, i32 %offset) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %offset.addr = alloca i32, align 4
  %ResData = alloca %struct.FILENULL*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  %0 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILENULL*
  store %struct.FILENULL* %3, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %4 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %5 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %5, i32 0, i32 0
  store i32 %4, i32* %Pointer, align 4, !tbaa !5
  %6 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @NULLClose(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %ResData = alloca %struct.FILENULL*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILENULL*
  store %struct.FILENULL* %3, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %6 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %7 = bitcast %struct.FILENULL* %6 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %5, i8* %7) #6
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %8, i32 0, i32 1
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !8
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %11 = bitcast %struct._cms_io_handler* %10 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %9, i8* %11) #6
  %12 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @NULLTell(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %ResData = alloca %struct.FILENULL*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILENULL*
  store %struct.FILENULL* %3, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %4 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %4, i32 0, i32 0
  %5 = load i32, i32* %Pointer, align 4, !tbaa !5
  %6 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @NULLWrite(%struct._cms_io_handler* %iohandler, i32 %size, i8* %Ptr) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %size.addr = alloca i32, align 4
  %Ptr.addr = alloca i8*, align 8
  %ResData = alloca %struct.FILENULL*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILENULL*
  store %struct.FILENULL* %3, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !19
  %5 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %5, i32 0, i32 0
  %6 = load i32, i32* %Pointer, align 4, !tbaa !5
  %add = add i32 %6, %4
  store i32 %add, i32* %Pointer, align 4, !tbaa !5
  %7 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer1 = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %7, i32 0, i32 0
  %8 = load i32, i32* %Pointer1, align 4, !tbaa !5
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %9, i32 0, i32 2
  %10 = load i32, i32* %UsedSpace, align 4, !tbaa !11
  %cmp = icmp ugt i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.FILENULL*, %struct.FILENULL** %ResData, align 8, !tbaa !1
  %Pointer2 = getelementptr inbounds %struct.FILENULL, %struct.FILENULL* %11, i32 0, i32 0
  %12 = load i32, i32* %Pointer2, align 4, !tbaa !5
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %UsedSpace3 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %13, i32 0, i32 2
  store i32 %12, i32* %UsedSpace3, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = bitcast %struct.FILENULL** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 1
}

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %ContextID, i8* %Buffer, i32 %size, i8* %AccessMode) #0 {
entry:
  %retval = alloca %struct._cms_io_handler*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %AccessMode.addr = alloca i8*, align 8
  %iohandler = alloca %struct._cms_io_handler*, align 8
  %fm = alloca %struct.FILEMEM*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %AccessMode, i8** %AccessMode.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %1 = bitcast %struct.FILEMEM** %fm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.FILEMEM* null, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %2 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 243, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %4, i32 320) #6
  %5 = bitcast i8* %call to %struct._cms_io_handler*
  store %struct._cms_io_handler* %5, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cms_io_handler* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !13
  %conv = sext i8 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call2 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %9, i32 24) #6
  %10 = bitcast i8* %call2 to %struct.FILEMEM*
  store %struct.FILEMEM* %10, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %11 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.FILEMEM* %11, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  br label %Error

if.end.6:                                         ; preds = %sw.bb
  %12 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %12, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %13, i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %Error

if.end.10:                                        ; preds = %if.end.6
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !19
  %call11 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %14, i32 %15) #6
  %16 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %16, i32 0, i32 0
  store i8* %call11, i8** %Block, align 8, !tbaa !20
  %17 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Block12 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %17, i32 0, i32 0
  %18 = load i8*, i8** %Block12, align 8, !tbaa !20
  %cmp13 = icmp eq i8* %18, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %20 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %21 = bitcast %struct.FILEMEM* %20 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %19, i8* %21) #6
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %24 = bitcast %struct._cms_io_handler* %23 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %22, i8* %24) #6
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %26 = load i32, i32* %size.addr, align 4, !tbaa !19
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %25, i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i32 %26) #6
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.10
  %27 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Block17 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %27, i32 0, i32 0
  %28 = load i8*, i8** %Block17, align 8, !tbaa !20
  %29 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %30 = load i32, i32* %size.addr, align 4, !tbaa !19
  %conv18 = zext i32 %30 to i64
  %call19 = call i8* @memmove(i8* %28, i8* %29, i64 %conv18) #8
  %31 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %FreeBlockOnClose = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %31, i32 0, i32 3
  store i32 1, i32* %FreeBlockOnClose, align 4, !tbaa !22
  %32 = load i32, i32* %size.addr, align 4, !tbaa !19
  %33 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %33, i32 0, i32 1
  store i32 %32, i32* %Size, align 4, !tbaa !23
  %34 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %34, i32 0, i32 2
  store i32 0, i32* %Pointer, align 4, !tbaa !24
  %35 = load i32, i32* %size.addr, align 4, !tbaa !19
  %36 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %36, i32 0, i32 3
  store i32 %35, i32* %ReportedSize, align 4, !tbaa !12
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call21 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %37, i32 24) #6
  %38 = bitcast i8* %call21 to %struct.FILEMEM*
  store %struct.FILEMEM* %38, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %39 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %cmp22 = icmp eq %struct.FILEMEM* %39, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb.20
  br label %Error

if.end.25:                                        ; preds = %sw.bb.20
  %40 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %41 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Block26 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %41, i32 0, i32 0
  store i8* %40, i8** %Block26, align 8, !tbaa !20
  %42 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %FreeBlockOnClose27 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %42, i32 0, i32 3
  store i32 0, i32* %FreeBlockOnClose27, align 4, !tbaa !22
  %43 = load i32, i32* %size.addr, align 4, !tbaa !19
  %44 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Size28 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %44, i32 0, i32 1
  store i32 %43, i32* %Size28, align 4, !tbaa !23
  %45 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %Pointer29 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %45, i32 0, i32 2
  store i32 0, i32* %Pointer29, align 4, !tbaa !24
  %46 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize30 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %46, i32 0, i32 3
  store i32 0, i32* %ReportedSize30, align 4, !tbaa !12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %47 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %48 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !13
  %conv31 = sext i8 %49 to i32
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %47, i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %conv31) #6
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.25, %if.end.16
  %50 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %51 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ContextID32 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %51, i32 0, i32 1
  store %struct._cmsContext_struct* %50, %struct._cmsContext_struct** %ContextID32, align 8, !tbaa !8
  %52 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %53 = bitcast %struct.FILEMEM* %52 to i8*
  %54 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %54, i32 0, i32 0
  store i8* %53, i8** %stream, align 8, !tbaa !10
  %55 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %55, i32 0, i32 2
  store i32 0, i32* %UsedSpace, align 4, !tbaa !11
  %56 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %PhysicalFile = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %56, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %57 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %57, i32 0, i32 5
  store i32 (%struct._cms_io_handler*, i8*, i32, i32)* @MemoryRead, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %58 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %58, i32 0, i32 6
  store i32 (%struct._cms_io_handler*, i32)* @MemorySeek, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %59 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Close = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %59, i32 0, i32 7
  store i32 (%struct._cms_io_handler*)* @MemoryClose, i32 (%struct._cms_io_handler*)** %Close, align 8, !tbaa !16
  %60 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %60, i32 0, i32 8
  store i32 (%struct._cms_io_handler*)* @MemoryTell, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !17
  %61 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %61, i32 0, i32 9
  store i32 (%struct._cms_io_handler*, i32, i8*)* @MemoryWrite, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %62 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  store %struct._cms_io_handler* %62, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.24, %if.then.9, %if.then.5
  %63 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %tobool = icmp ne %struct.FILEMEM* %63, null
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %Error
  %64 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %65 = load %struct.FILEMEM*, %struct.FILEMEM** %fm, align 8, !tbaa !1
  %66 = bitcast %struct.FILEMEM* %65 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %64, i8* %66) #6
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %Error
  %67 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %tobool35 = icmp ne %struct._cms_io_handler* %67, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  %68 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %69 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %70 = bitcast %struct._cms_io_handler* %69 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %68, i8* %70) #6
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %sw.epilog, %sw.default, %if.then.15, %if.then
  %71 = bitcast %struct.FILEMEM** %fm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load %struct._cms_io_handler*, %struct._cms_io_handler** %retval
  ret %struct._cms_io_handler* %73
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @MemoryRead(%struct._cms_io_handler* %iohandler, i8* %Buffer, i32 %size, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %Buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %ResData = alloca %struct.FILEMEM*, align 8
  %Ptr = alloca i8*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  %0 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILEMEM*
  store %struct.FILEMEM* %3, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %4 = bitcast i8** %Ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !19
  %7 = load i32, i32* %count.addr, align 4, !tbaa !19
  %mul = mul i32 %6, %7
  store i32 %mul, i32* %len, align 4, !tbaa !19
  %8 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %8, i32 0, i32 2
  %9 = load i32, i32* %Pointer, align 4, !tbaa !24
  %10 = load i32, i32* %len, align 4, !tbaa !19
  %add = add i32 %9, %10
  %11 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %11, i32 0, i32 1
  %12 = load i32, i32* %Size, align 4, !tbaa !23
  %cmp = icmp ugt i32 %add, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Size1 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %13, i32 0, i32 1
  %14 = load i32, i32* %Size1, align 4, !tbaa !23
  %15 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer2 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %15, i32 0, i32 2
  %16 = load i32, i32* %Pointer2, align 4, !tbaa !24
  %sub = sub i32 %14, %16
  store i32 %sub, i32* %len, align 4, !tbaa !19
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %17, i32 0, i32 1
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %19 = load i32, i32* %len, align 4, !tbaa !19
  %20 = load i32, i32* %count.addr, align 4, !tbaa !19
  %21 = load i32, i32* %size.addr, align 4, !tbaa !19
  %mul3 = mul i32 %20, %21
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %18, i32 5, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0), i32 %19, i32 %mul3) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %22, i32 0, i32 0
  %23 = load i8*, i8** %Block, align 8, !tbaa !20
  store i8* %23, i8** %Ptr, align 8, !tbaa !1
  %24 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer4 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %24, i32 0, i32 2
  %25 = load i32, i32* %Pointer4, align 4, !tbaa !24
  %26 = load i8*, i8** %Ptr, align 8, !tbaa !1
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %Ptr, align 8, !tbaa !1
  %27 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %Ptr, align 8, !tbaa !1
  %29 = load i32, i32* %len, align 4, !tbaa !19
  %conv = zext i32 %29 to i64
  %call = call i8* @memmove(i8* %27, i8* %28, i64 %conv) #8
  %30 = load i32, i32* %len, align 4, !tbaa !19
  %31 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer5 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %31, i32 0, i32 2
  %32 = load i32, i32* %Pointer5, align 4, !tbaa !24
  %add6 = add i32 %32, %30
  store i32 %add6, i32* %Pointer5, align 4, !tbaa !24
  %33 = load i32, i32* %count.addr, align 4, !tbaa !19
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %34 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i8** %Ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @MemorySeek(%struct._cms_io_handler* %iohandler, i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %offset.addr = alloca i32, align 4
  %ResData = alloca %struct.FILEMEM*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  %0 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILEMEM*
  store %struct.FILEMEM* %3, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %4 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %5 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %5, i32 0, i32 1
  %6 = load i32, i32* %Size, align 4, !tbaa !23
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %7, i32 0, i32 1
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %8, i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %10 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %10, i32 0, i32 2
  store i32 %9, i32* %Pointer, align 4, !tbaa !24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @MemoryClose(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %ResData = alloca %struct.FILEMEM*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILEMEM*
  store %struct.FILEMEM* %3, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %4 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %FreeBlockOnClose = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %4, i32 0, i32 3
  %5 = load i32, i32* %FreeBlockOnClose, align 4, !tbaa !22
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %6, i32 0, i32 0
  %7 = load i8*, i8** %Block, align 8, !tbaa !20
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %8, i32 0, i32 1
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %10 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Block3 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %10, i32 0, i32 0
  %11 = load i8*, i8** %Block3, align 8, !tbaa !20
  call void @_cmsFree(%struct._cmsContext_struct* %9, i8* %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID5 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %12, i32 0, i32 1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID5, align 8, !tbaa !8
  %14 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %15 = bitcast %struct.FILEMEM* %14 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %13, i8* %15) #6
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %16, i32 0, i32 1
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !8
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %19 = bitcast %struct._cms_io_handler* %18 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %17, i8* %19) #6
  %20 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @MemoryTell(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %ResData = alloca %struct.FILEMEM*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILEMEM*
  store %struct.FILEMEM* %3, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %4 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %cmp = icmp eq %struct.FILEMEM* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %5, i32 0, i32 2
  %6 = load i32, i32* %Pointer, align 4, !tbaa !24
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @MemoryWrite(%struct._cms_io_handler* %iohandler, i32 %size, i8* %Ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %size.addr = alloca i32, align 4
  %Ptr.addr = alloca i8*, align 8
  %ResData = alloca %struct.FILEMEM*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %Ptr, i8** %Ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %1, i32 0, i32 0
  %2 = load i8*, i8** %stream, align 8, !tbaa !10
  %3 = bitcast i8* %2 to %struct.FILEMEM*
  store %struct.FILEMEM* %3, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %4 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %cmp = icmp eq %struct.FILEMEM* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %5, i32 0, i32 2
  %6 = load i32, i32* %Pointer, align 4, !tbaa !24
  %7 = load i32, i32* %size.addr, align 4, !tbaa !19
  %add = add i32 %6, %7
  %8 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Size = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %8, i32 0, i32 1
  %9 = load i32, i32* %Size, align 4, !tbaa !23
  %cmp1 = icmp ugt i32 %add, %9
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Size3 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %10, i32 0, i32 1
  %11 = load i32, i32* %Size3, align 4, !tbaa !23
  %12 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer4 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %12, i32 0, i32 2
  %13 = load i32, i32* %Pointer4, align 4, !tbaa !24
  %sub = sub i32 %11, %13
  store i32 %sub, i32* %size.addr, align 4, !tbaa !19
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %14 = load i32, i32* %size.addr, align 4, !tbaa !19
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %15 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Block = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %15, i32 0, i32 0
  %16 = load i8*, i8** %Block, align 8, !tbaa !20
  %17 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer9 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %17, i32 0, i32 2
  %18 = load i32, i32* %Pointer9, align 4, !tbaa !24
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %19 = load i8*, i8** %Ptr.addr, align 8, !tbaa !1
  %20 = load i32, i32* %size.addr, align 4, !tbaa !19
  %conv = zext i32 %20 to i64
  %call = call i8* @memmove(i8* %add.ptr, i8* %19, i64 %conv) #8
  %21 = load i32, i32* %size.addr, align 4, !tbaa !19
  %22 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer10 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %22, i32 0, i32 2
  %23 = load i32, i32* %Pointer10, align 4, !tbaa !24
  %add11 = add i32 %23, %21
  store i32 %add11, i32* %Pointer10, align 4, !tbaa !24
  %24 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer12 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %24, i32 0, i32 2
  %25 = load i32, i32* %Pointer12, align 4, !tbaa !24
  %26 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %26, i32 0, i32 2
  %27 = load i32, i32* %UsedSpace, align 4, !tbaa !11
  %cmp13 = icmp ugt i32 %25, %27
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.8
  %28 = load %struct.FILEMEM*, %struct.FILEMEM** %ResData, align 8, !tbaa !1
  %Pointer16 = getelementptr inbounds %struct.FILEMEM, %struct.FILEMEM* %28, i32 0, i32 2
  %29 = load i32, i32* %Pointer16, align 4, !tbaa !24
  %30 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %UsedSpace17 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %30, i32 0, i32 2
  store i32 %29, i32* %UsedSpace17, align 4, !tbaa !11
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.7, %if.then
  %31 = bitcast %struct.FILEMEM** %ResData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define %struct._cms_io_handler* @cmsOpenIOhandlerFromFile(%struct._cmsContext_struct* %ContextID, i8* %FileName, i8* %AccessMode) #0 {
entry:
  %retval = alloca %struct._cms_io_handler*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %FileName.addr = alloca i8*, align 8
  %AccessMode.addr = alloca i8*, align 8
  %iohandler = alloca %struct._cms_io_handler*, align 8
  %fm = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %FileName, i8** %FileName.addr, align 8, !tbaa !1
  store i8* %AccessMode, i8** %AccessMode.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %1 = bitcast %struct._IO_FILE** %fm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %2 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 372, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 373, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %6, i32 320) #6
  %7 = bitcast i8* %call to %struct._cms_io_handler*
  store %struct._cms_io_handler* %7, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_io_handler* %8, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.4
  %9 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !13
  %conv = sext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call6 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %cmp7 = icmp eq %struct._IO_FILE* %12, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %15 = bitcast %struct._cms_io_handler* %14 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %13, i8* %15) #6
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %16, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* %17) #6
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %sw.bb
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %call11 = call i64 @cmsfilelength(%struct._IO_FILE* %18) #6
  %conv12 = trunc i64 %call11 to i32
  %19 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %19, i32 0, i32 3
  store i32 %conv12, i32* %ReportedSize, align 4, !tbaa !12
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %20 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call14 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %cmp15 = icmp eq %struct._IO_FILE* %21, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.13
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %24 = bitcast %struct._cms_io_handler* %23 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %22, i8* %24) #6
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %25, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* %26) #6
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %sw.bb.13
  %27 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize19 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %27, i32 0, i32 3
  store i32 0, i32* %ReportedSize19, align 4, !tbaa !12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %29 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %30 = bitcast %struct._cms_io_handler* %29 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %28, i8* %30) #6
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %AccessMode.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !13
  %conv20 = sext i8 %33 to i32
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %31, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %conv20) #6
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.18, %if.end.10
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %35 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ContextID21 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %35, i32 0, i32 1
  store %struct._cmsContext_struct* %34, %struct._cmsContext_struct** %ContextID21, align 8, !tbaa !8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fm, align 8, !tbaa !1
  %37 = bitcast %struct._IO_FILE* %36 to i8*
  %38 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %38, i32 0, i32 0
  store i8* %37, i8** %stream, align 8, !tbaa !10
  %39 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %39, i32 0, i32 2
  store i32 0, i32* %UsedSpace, align 4, !tbaa !11
  %40 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %PhysicalFile = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %40, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile, i32 0, i32 0
  %41 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call22 = call i8* @strncpy(i8* %arraydecay, i8* %41, i64 255) #8
  %42 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %PhysicalFile23 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %42, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile23, i32 0, i64 255
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %43 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %43, i32 0, i32 5
  store i32 (%struct._cms_io_handler*, i8*, i32, i32)* @FileRead, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %44 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %44, i32 0, i32 6
  store i32 (%struct._cms_io_handler*, i32)* @FileSeek, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %45 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Close = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %45, i32 0, i32 7
  store i32 (%struct._cms_io_handler*)* @FileClose, i32 (%struct._cms_io_handler*)** %Close, align 8, !tbaa !16
  %46 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %46, i32 0, i32 8
  store i32 (%struct._cms_io_handler*)* @FileTell, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !17
  %47 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %47, i32 0, i32 9
  store i32 (%struct._cms_io_handler*, i32, i8*)* @FileWrite, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %48 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  store %struct._cms_io_handler* %48, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.17, %if.then.9, %if.then
  %49 = bitcast %struct._IO_FILE** %fm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load %struct._cms_io_handler*, %struct._cms_io_handler** %retval
  ret %struct._cms_io_handler* %51
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @cmsfilelength(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @FileRead(%struct._cms_io_handler* %iohandler, i8* %Buffer, i32 %size, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %Buffer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %nReaded = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  %0 = bitcast i32* %nReaded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !19
  %conv = zext i32 %2 to i64
  %3 = load i32, i32* %count.addr, align 4, !tbaa !19
  %conv1 = zext i32 %3 to i64
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 0
  %5 = load i8*, i8** %stream, align 8, !tbaa !10
  %6 = bitcast i8* %5 to %struct._IO_FILE*
  %call = call i64 @fread(i8* %1, i64 %conv, i64 %conv1, %struct._IO_FILE* %6) #6
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %nReaded, align 4, !tbaa !19
  %7 = load i32, i32* %nReaded, align 4, !tbaa !19
  %8 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %9, i32 0, i32 1
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %11 = load i32, i32* %nReaded, align 4, !tbaa !19
  %12 = load i32, i32* %size.addr, align 4, !tbaa !19
  %mul = mul i32 %11, %12
  %13 = load i32, i32* %count.addr, align 4, !tbaa !19
  %14 = load i32, i32* %size.addr, align 4, !tbaa !19
  %mul4 = mul i32 %13, %14
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %10, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i32 %mul, i32 %mul4) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i32, i32* %nReaded, align 4, !tbaa !19
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast i32* %nReaded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @FileSeek(%struct._cms_io_handler* %iohandler, i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %offset.addr = alloca i32, align 4
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !19
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %0, i32 0, i32 0
  %1 = load i8*, i8** %stream, align 8, !tbaa !10
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  %3 = load i32, i32* %offset.addr, align 4, !tbaa !19
  %conv = zext i32 %3 to i64
  %call = call i32 @fseek(%struct._IO_FILE* %2, i64 %conv, i32 0) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %5, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @FileClose(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %0, i32 0, i32 0
  %1 = load i8*, i8** %stream, align 8, !tbaa !10
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  %call = call i32 @fclose(%struct._IO_FILE* %2) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !8
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %6 = bitcast %struct._cms_io_handler* %5 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %4, i8* %6) #6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @FileTell(%struct._cms_io_handler* %iohandler) #0 {
entry:
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %0, i32 0, i32 0
  %1 = load i8*, i8** %stream, align 8, !tbaa !10
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  %call = call i64 @ftell(%struct._IO_FILE* %2) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @FileWrite(%struct._cms_io_handler* %iohandler, i32 %size, i8* %Buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %iohandler.addr = alloca %struct._cms_io_handler*, align 8
  %size.addr = alloca i32, align 4
  %Buffer.addr = alloca i8*, align 8
  store %struct._cms_io_handler* %iohandler, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  %0 = load i32, i32* %size.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4, !tbaa !19
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %2, i32 0, i32 2
  %3 = load i32, i32* %UsedSpace, align 4, !tbaa !11
  %add = add i32 %3, %1
  store i32 %add, i32* %UsedSpace, align 4, !tbaa !11
  %4 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !19
  %conv = zext i32 %5 to i64
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler.addr, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 0
  %7 = load i8*, i8** %stream, align 8, !tbaa !10
  %8 = bitcast i8* %7 to %struct._IO_FILE*
  %call = call i64 @fwrite(i8* %4, i64 %conv, i64 1, %struct._IO_FILE* %8) #6
  %cmp1 = icmp eq i64 %call, 1
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %struct._cms_io_handler* @cmsOpenIOhandlerFromStream(%struct._cmsContext_struct* %ContextID, %struct._IO_FILE* %Stream) #0 {
entry:
  %retval = alloca %struct._cms_io_handler*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %Stream.addr = alloca %struct._IO_FILE*, align 8
  %iohandler = alloca %struct._cms_io_handler*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %Stream, %struct._IO_FILE** %Stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 320) #6
  %2 = bitcast i8* %call to %struct._cms_io_handler*
  store %struct._cms_io_handler* %2, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_io_handler* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %5, i32 0, i32 1
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream.addr, align 8, !tbaa !1
  %7 = bitcast %struct._IO_FILE* %6 to i8*
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %8, i32 0, i32 0
  store i8* %7, i8** %stream, align 8, !tbaa !10
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %9, i32 0, i32 2
  store i32 0, i32* %UsedSpace, align 4, !tbaa !11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream.addr, align 8, !tbaa !1
  %call2 = call i64 @cmsfilelength(%struct._IO_FILE* %10) #6
  %conv = trunc i64 %call2 to i32
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %ReportedSize = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %11, i32 0, i32 3
  store i32 %conv, i32* %ReportedSize, align 4, !tbaa !12
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %PhysicalFile = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %13, i32 0, i32 5
  store i32 (%struct._cms_io_handler*, i8*, i32, i32)* @FileRead, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %14, i32 0, i32 6
  store i32 (%struct._cms_io_handler*, i32)* @FileSeek, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Close = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %15, i32 0, i32 7
  store i32 (%struct._cms_io_handler*)* @FileClose, i32 (%struct._cms_io_handler*)** %Close, align 8, !tbaa !16
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %16, i32 0, i32 8
  store i32 (%struct._cms_io_handler*)* @FileTell, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !17
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %17, i32 0, i32 9
  store i32 (%struct._cms_io_handler*, i32, i8*)* @FileWrite, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %iohandler, align 8, !tbaa !1
  store %struct._cms_io_handler* %18, %struct._cms_io_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct._cms_io_handler** %iohandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %retval
  ret %struct._cms_io_handler* %20
}

; Function Attrs: nounwind uwtable
define i32 @cmsCloseIOhandler(%struct._cms_io_handler* %io) #0 {
entry:
  %io.addr = alloca %struct._cms_io_handler*, align 8
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %Close = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %0, i32 0, i32 7
  %1 = load i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)** %Close, align 8, !tbaa !16
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %call = call i32 %1(%struct._cms_io_handler* %2) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %now = alloca i64, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call i64 @time(i64* null) #8
  store i64 %call, i64* %now, align 8, !tbaa !25
  %1 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call1 = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 3752) #6
  %3 = bitcast i8* %call1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %3, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_iccprofile_struct* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID2 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 1
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %ContextID2, align 8, !tbaa !27
  %7 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %7, i32 0, i32 14
  store i32 0, i32* %TagCount, align 4, !tbaa !30
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 3
  store i32 34603008, i32* %Version, align 4, !tbaa !31
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Created = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 2
  %10 = bitcast %struct.tm* %Created to i8*
  %call3 = call %struct.tm* @gmtime(i64* %now) #8
  %11 = bitcast %struct.tm* %call3 to i8*
  %call4 = call i8* @memmove(i8* %10, i8* %11, i64 56) #8
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call5 = call i8* @_cmsCreateMutex(%struct._cmsContext_struct* %12) #6
  %13 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %13, i32 0, i32 23
  store i8* %call5, i8** %UsrMutex, align 8, !tbaa !32
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %15 = bitcast %struct._cms_iccprofile_struct* %14 to i8*
  store i8* %15, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #4

declare i8* @_cmsCreateMutex(%struct._cmsContext_struct*) #2

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %hProfile) #0 {
entry:
  %retval = alloca %struct._cmsContext_struct*, align 8
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_iccprofile_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %retval
  ret %struct._cmsContext_struct* %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetTagCount(i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_iccprofile_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 14
  %5 = load i32, i32* %TagCount, align 4, !tbaa !30
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetTagSignature(i8* %hProfile, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %n.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 14
  %5 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %n.addr, align 4, !tbaa !19
  %cmp1 = icmp uge i32 %6, 100
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %n.addr, align 4, !tbaa !19
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !13
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %10 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %Icc, i32 %sig, i32 %lFollowLinks) #0 {
entry:
  %retval = alloca i32, align 4
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %sig.addr = alloca i32, align 4
  %lFollowLinks.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %LinkedSig = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i32 %lFollowLinks, i32* %lFollowLinks.addr, align 4, !tbaa !19
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %LinkedSig to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %3 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call = call i32 @SearchOneTag(%struct._cms_iccprofile_struct* %2, i32 %3) #6
  store i32 %call, i32* %n, align 4, !tbaa !19
  %4 = load i32, i32* %n, align 4, !tbaa !19
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %5 = load i32, i32* %lFollowLinks.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %6 = load i32, i32* %n, align 4, !tbaa !19
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %7 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 16
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !13
  store i32 %9, i32* %LinkedSig, align 4, !tbaa !13
  %10 = load i32, i32* %LinkedSig, align 4, !tbaa !13
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %11 = load i32, i32* %LinkedSig, align 4, !tbaa !13
  store i32 %11, i32* %sig.addr, align 4, !tbaa !13
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  %12 = load i32, i32* %LinkedSig, align 4, !tbaa !13
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %n, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.1, %if.then
  %14 = bitcast i32* %LinkedSig to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @SearchOneTag(%struct._cms_iccprofile_struct* %Profile, i32 %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %Profile.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %sig.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_iccprofile_struct* %Profile, %struct._cms_iccprofile_struct** %Profile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %2 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Profile.addr, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %2, i32 0, i32 14
  %3 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Profile.addr, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %4, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !19
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @cmsIsTag(i8* %hProfile, i32 %sig) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %4 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %3, i32 %4, i32 0) #6
  %cmp = icmp sge i32 %call, 0
  %conv = zext i1 %cmp to i32
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %Icc) #0 {
entry:
  %retval = alloca i32, align 4
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %Tag = alloca %struct.cmsTagEntry, align 4
  %Header = alloca %struct.cmsICCHeader, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %HeaderSize = alloca i32, align 4
  %io = alloca %struct._cms_io_handler*, align 8
  %TagCount = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsTagEntry* %Tag to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %1 = bitcast %struct.cmsICCHeader* %Header to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %HeaderSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 0
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  store %struct._cms_io_handler* %7, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %8 = bitcast i32* %TagCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %9, i32 0, i32 5
  %10 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %12 = bitcast %struct.cmsICCHeader* %Header to i8*
  %call = call i32 %10(%struct._cms_io_handler* %11, i8* %12, i32 128, i32 1) #6
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 7
  %13 = load i32, i32* %magic, align 4, !tbaa !34
  %call1 = call i32 @_cmsAdjustEndianess32(i32 %13) #6
  %cmp2 = icmp ne i32 %call1, 1633907568
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 1
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %15, i32 11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %deviceClass = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 3
  %16 = load i32, i32* %deviceClass, align 4, !tbaa !39
  %call5 = call i32 @_cmsAdjustEndianess32(i32 %16) #6
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %DeviceClass = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %17, i32 0, i32 4
  store i32 %call5, i32* %DeviceClass, align 4, !tbaa !40
  %colorSpace = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 4
  %18 = load i32, i32* %colorSpace, align 4, !tbaa !41
  %call6 = call i32 @_cmsAdjustEndianess32(i32 %18) #6
  %19 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %19, i32 0, i32 5
  store i32 %call6, i32* %ColorSpace, align 4, !tbaa !42
  %pcs = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 5
  %20 = load i32, i32* %pcs, align 4, !tbaa !43
  %call7 = call i32 @_cmsAdjustEndianess32(i32 %20) #6
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %PCS = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 6
  store i32 %call7, i32* %PCS, align 4, !tbaa !44
  %renderingIntent = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 13
  %22 = load i32, i32* %renderingIntent, align 4, !tbaa !45
  %call8 = call i32 @_cmsAdjustEndianess32(i32 %22) #6
  %23 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %23, i32 0, i32 7
  store i32 %call8, i32* %RenderingIntent, align 4, !tbaa !46
  %flags = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 9
  %24 = load i32, i32* %flags, align 4, !tbaa !47
  %call9 = call i32 @_cmsAdjustEndianess32(i32 %24) #6
  %25 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %flags10 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %25, i32 0, i32 8
  store i32 %call9, i32* %flags10, align 4, !tbaa !48
  %manufacturer = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 10
  %26 = load i32, i32* %manufacturer, align 4, !tbaa !49
  %call11 = call i32 @_cmsAdjustEndianess32(i32 %26) #6
  %27 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %manufacturer12 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %27, i32 0, i32 9
  store i32 %call11, i32* %manufacturer12, align 4, !tbaa !50
  %model = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 11
  %28 = load i32, i32* %model, align 4, !tbaa !51
  %call13 = call i32 @_cmsAdjustEndianess32(i32 %28) #6
  %29 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %model14 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %29, i32 0, i32 10
  store i32 %call13, i32* %model14, align 4, !tbaa !52
  %creator = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 15
  %30 = load i32, i32* %creator, align 4, !tbaa !53
  %call15 = call i32 @_cmsAdjustEndianess32(i32 %30) #6
  %31 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %creator16 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %31, i32 0, i32 12
  store i32 %call15, i32* %creator16, align 4, !tbaa !54
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %32, i32 0, i32 11
  %attributes17 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 12
  call void @_cmsAdjustEndianess64(i64* %attributes, i64* %attributes17) #6
  %version = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 2
  %33 = load i32, i32* %version, align 4, !tbaa !55
  %call18 = call i32 @_cmsAdjustEndianess32(i32 %33) #6
  %34 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %34, i32 0, i32 3
  store i32 %call18, i32* %Version, align 4, !tbaa !31
  %size = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 0
  %35 = load i32, i32* %size, align 4, !tbaa !56
  %call19 = call i32 @_cmsAdjustEndianess32(i32 %35) #6
  store i32 %call19, i32* %HeaderSize, align 4, !tbaa !19
  %36 = load i32, i32* %HeaderSize, align 4, !tbaa !19
  %37 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler20 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %37, i32 0, i32 0
  %38 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler20, align 8, !tbaa !33
  %ReportedSize = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %38, i32 0, i32 3
  %39 = load i32, i32* %ReportedSize, align 4, !tbaa !12
  %cmp21 = icmp uge i32 %36, %39
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.4
  %40 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler23 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %40, i32 0, i32 0
  %41 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler23, align 8, !tbaa !33
  %ReportedSize24 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %41, i32 0, i32 3
  %42 = load i32, i32* %ReportedSize24, align 4, !tbaa !12
  store i32 %42, i32* %HeaderSize, align 4, !tbaa !19
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.4
  %date = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 6
  %43 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Created = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %43, i32 0, i32 2
  call void @_cmsDecodeDateTimeNumber(%struct.cmsDateTimeNumber* %date, %struct.tm* %Created) #6
  %44 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ProfileID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %44, i32 0, i32 13
  %ID32 = bitcast %union.cmsProfileID* %ProfileID to [4 x i32]*
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %ID32, i32 0, i32 0
  %45 = bitcast i32* %arraydecay to i8*
  %profileID = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 16
  %ID3226 = bitcast %union.cmsProfileID* %profileID to [4 x i32]*
  %arraydecay27 = getelementptr inbounds [4 x i32], [4 x i32]* %ID3226, i32 0, i32 0
  %46 = bitcast i32* %arraydecay27 to i8*
  %call28 = call i8* @memmove(i8* %45, i8* %46, i64 16) #8
  %47 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call29 = call i32 @_cmsReadUInt32Number(%struct._cms_io_handler* %47, i32* %TagCount) #6
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.25
  %48 = load i32, i32* %TagCount, align 4, !tbaa !19
  %cmp32 = icmp ugt i32 %48, 100
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %49 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID34 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %49, i32 0, i32 1
  %50 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID34, align 8, !tbaa !27
  %51 = load i32, i32* %TagCount, align 4, !tbaa !19
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %50, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 %51) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.31
  %52 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount36 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %52, i32 0, i32 14
  store i32 0, i32* %TagCount36, align 4, !tbaa !30
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.end.35
  %53 = load i32, i32* %i, align 4, !tbaa !19
  %54 = load i32, i32* %TagCount, align 4, !tbaa !19
  %cmp37 = icmp ult i32 %53, %54
  br i1 %cmp37, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %55 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %sig = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 0
  %call38 = call i32 @_cmsReadUInt32Number(%struct._cms_io_handler* %55, i32* %sig) #6
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %for.body
  %56 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %call42 = call i32 @_cmsReadUInt32Number(%struct._cms_io_handler* %56, i32* %offset) #6
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.41
  %57 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %size46 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  %call47 = call i32 @_cmsReadUInt32Number(%struct._cms_io_handler* %57, i32* %size46) #6
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.45
  %offset51 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %58 = load i32, i32* %offset51, align 4, !tbaa !57
  %size52 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  %59 = load i32, i32* %size52, align 4, !tbaa !59
  %add = add i32 %58, %59
  %60 = load i32, i32* %HeaderSize, align 4, !tbaa !19
  %cmp53 = icmp ugt i32 %add, %60
  br i1 %cmp53, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %offset54 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %61 = load i32, i32* %offset54, align 4, !tbaa !57
  %size55 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  %62 = load i32, i32* %size55, align 4, !tbaa !59
  %add56 = add i32 %61, %62
  %offset57 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %63 = load i32, i32* %offset57, align 4, !tbaa !57
  %cmp58 = icmp ult i32 %add56, %63
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.50
  br label %for.inc.95

if.end.60:                                        ; preds = %lor.lhs.false
  %sig61 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 0
  %64 = load i32, i32* %sig61, align 4, !tbaa !60
  %65 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount62 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %65, i32 0, i32 14
  %66 = load i32, i32* %TagCount62, align 4, !tbaa !30
  %idxprom = zext i32 %66 to i64
  %67 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %67, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  store i32 %64, i32* %arrayidx, align 4, !tbaa !13
  %offset63 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %68 = load i32, i32* %offset63, align 4, !tbaa !57
  %69 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount64 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %69, i32 0, i32 14
  %70 = load i32, i32* %TagCount64, align 4, !tbaa !30
  %idxprom65 = zext i32 %70 to i64
  %71 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %71, i32 0, i32 18
  %arrayidx66 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom65
  store i32 %68, i32* %arrayidx66, align 4, !tbaa !19
  %size67 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  %72 = load i32, i32* %size67, align 4, !tbaa !59
  %73 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount68 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %73, i32 0, i32 14
  %74 = load i32, i32* %TagCount68, align 4, !tbaa !30
  %idxprom69 = zext i32 %74 to i64
  %75 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %75, i32 0, i32 17
  %arrayidx70 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom69
  store i32 %72, i32* %arrayidx70, align 4, !tbaa !19
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end.60
  %76 = load i32, i32* %j, align 4, !tbaa !19
  %77 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount72 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %77, i32 0, i32 14
  %78 = load i32, i32* %TagCount72, align 4, !tbaa !30
  %cmp73 = icmp ult i32 %76, %78
  br i1 %cmp73, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %79 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom75 = zext i32 %79 to i64
  %80 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets76 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %80, i32 0, i32 18
  %arrayidx77 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets76, i32 0, i64 %idxprom75
  %81 = load i32, i32* %arrayidx77, align 4, !tbaa !19
  %offset78 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  %82 = load i32, i32* %offset78, align 4, !tbaa !57
  %cmp79 = icmp eq i32 %81, %82
  br i1 %cmp79, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %for.body.74
  %83 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom80 = zext i32 %83 to i64
  %84 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes81 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %84, i32 0, i32 17
  %arrayidx82 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes81, i32 0, i64 %idxprom80
  %85 = load i32, i32* %arrayidx82, align 4, !tbaa !19
  %size83 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  %86 = load i32, i32* %size83, align 4, !tbaa !59
  %cmp84 = icmp eq i32 %85, %86
  br i1 %cmp84, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %land.lhs.true
  %87 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom86 = zext i32 %87 to i64
  %88 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames87 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %88, i32 0, i32 15
  %arrayidx88 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames87, i32 0, i64 %idxprom86
  %89 = load i32, i32* %arrayidx88, align 4, !tbaa !13
  %90 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount89 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %90, i32 0, i32 14
  %91 = load i32, i32* %TagCount89, align 4, !tbaa !30
  %idxprom90 = zext i32 %91 to i64
  %92 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %92, i32 0, i32 16
  %arrayidx91 = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom90
  store i32 %89, i32* %arrayidx91, align 4, !tbaa !13
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.85, %land.lhs.true, %for.body.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %93 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add i32 %93, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  %94 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount93 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %94, i32 0, i32 14
  %95 = load i32, i32* %TagCount93, align 4, !tbaa !30
  %inc94 = add i32 %95, 1
  store i32 %inc94, i32* %TagCount93, align 4, !tbaa !30
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end, %if.then.59
  %96 = load i32, i32* %i, align 4, !tbaa !19
  %inc96 = add i32 %96, 1
  store i32 %inc96, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.97, %if.then.49, %if.then.44, %if.then.40, %if.then.33, %if.then.30, %if.then.3, %if.then
  %97 = bitcast i32* %TagCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %HeaderSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.cmsICCHeader* %Header to i8*
  call void @llvm.lifetime.end(i64 128, i8* %102) #1
  %103 = bitcast %struct.cmsTagEntry* %Tag to i8*
  call void @llvm.lifetime.end(i64 12, i8* %103) #1
  %104 = load i32, i32* %retval
  ret i32 %104
}

declare i32 @_cmsAdjustEndianess32(i32) #2

declare void @_cmsAdjustEndianess64(i64*, i64*) #2

declare void @_cmsDecodeDateTimeNumber(%struct.cmsDateTimeNumber*, %struct.tm*) #2

declare i32 @_cmsReadUInt32Number(%struct._cms_io_handler*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteHeader(%struct._cms_iccprofile_struct* %Icc, i32 %UsedSpace) #0 {
entry:
  %retval = alloca i32, align 4
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %UsedSpace.addr = alloca i32, align 4
  %Header = alloca %struct.cmsICCHeader, align 8
  %i = alloca i32, align 4
  %Tag = alloca %struct.cmsTagEntry, align 4
  %Count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  store i32 %UsedSpace, i32* %UsedSpace.addr, align 4, !tbaa !19
  %0 = bitcast %struct.cmsICCHeader* %Header to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.cmsTagEntry* %Tag to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2) #1
  %3 = bitcast i32* %Count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %Count, align 4, !tbaa !19
  %4 = load i32, i32* %UsedSpace.addr, align 4, !tbaa !19
  %call = call i32 @_cmsAdjustEndianess32(i32 %4) #6
  %size = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 0
  store i32 %call, i32* %size, align 4, !tbaa !56
  %call1 = call i32 @_cmsAdjustEndianess32(i32 1818455411) #6
  %cmmId = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 1
  store i32 %call1, i32* %cmmId, align 4, !tbaa !61
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %5, i32 0, i32 3
  %6 = load i32, i32* %Version, align 4, !tbaa !31
  %call2 = call i32 @_cmsAdjustEndianess32(i32 %6) #6
  %version = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 2
  store i32 %call2, i32* %version, align 4, !tbaa !55
  %7 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %DeviceClass = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %7, i32 0, i32 4
  %8 = load i32, i32* %DeviceClass, align 4, !tbaa !40
  %call3 = call i32 @_cmsAdjustEndianess32(i32 %8) #6
  %deviceClass = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 3
  store i32 %call3, i32* %deviceClass, align 4, !tbaa !39
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 5
  %10 = load i32, i32* %ColorSpace, align 4, !tbaa !42
  %call4 = call i32 @_cmsAdjustEndianess32(i32 %10) #6
  %colorSpace = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 4
  store i32 %call4, i32* %colorSpace, align 4, !tbaa !41
  %11 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %PCS = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %11, i32 0, i32 6
  %12 = load i32, i32* %PCS, align 4, !tbaa !44
  %call5 = call i32 @_cmsAdjustEndianess32(i32 %12) #6
  %pcs = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 5
  store i32 %call5, i32* %pcs, align 4, !tbaa !43
  %date = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 6
  %13 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Created = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %13, i32 0, i32 2
  call void @_cmsEncodeDateTimeNumber(%struct.cmsDateTimeNumber* %date, %struct.tm* %Created) #6
  %call6 = call i32 @_cmsAdjustEndianess32(i32 1633907568) #6
  %magic = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 7
  store i32 %call6, i32* %magic, align 4, !tbaa !34
  %call7 = call i32 @_cmsAdjustEndianess32(i32 1095782476) #6
  %platform = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 8
  store i32 %call7, i32* %platform, align 4, !tbaa !62
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 8
  %15 = load i32, i32* %flags, align 4, !tbaa !48
  %call8 = call i32 @_cmsAdjustEndianess32(i32 %15) #6
  %flags9 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 9
  store i32 %call8, i32* %flags9, align 4, !tbaa !47
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %16, i32 0, i32 9
  %17 = load i32, i32* %manufacturer, align 4, !tbaa !50
  %call10 = call i32 @_cmsAdjustEndianess32(i32 %17) #6
  %manufacturer11 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 10
  store i32 %call10, i32* %manufacturer11, align 4, !tbaa !49
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %18, i32 0, i32 10
  %19 = load i32, i32* %model, align 4, !tbaa !52
  %call12 = call i32 @_cmsAdjustEndianess32(i32 %19) #6
  %model13 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 11
  store i32 %call12, i32* %model13, align 4, !tbaa !51
  %attributes = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 12
  %20 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %attributes14 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %20, i32 0, i32 11
  call void @_cmsAdjustEndianess64(i64* %attributes, i64* %attributes14) #6
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 7
  %22 = load i32, i32* %RenderingIntent, align 4, !tbaa !46
  %call15 = call i32 @_cmsAdjustEndianess32(i32 %22) #6
  %renderingIntent = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 13
  store i32 %call15, i32* %renderingIntent, align 4, !tbaa !45
  %call16 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call16, i32 0, i32 0
  %23 = load double, double* %X, align 8, !tbaa !63
  %call17 = call i32 @_cmsDoubleTo15Fixed16(double %23) #6
  %call18 = call i32 @_cmsAdjustEndianess32(i32 %call17) #6
  %illuminant = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 14
  %X19 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %illuminant, i32 0, i32 0
  store i32 %call18, i32* %X19, align 4, !tbaa !66
  %call20 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call20, i32 0, i32 1
  %24 = load double, double* %Y, align 8, !tbaa !67
  %call21 = call i32 @_cmsDoubleTo15Fixed16(double %24) #6
  %call22 = call i32 @_cmsAdjustEndianess32(i32 %call21) #6
  %illuminant23 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 14
  %Y24 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %illuminant23, i32 0, i32 1
  store i32 %call22, i32* %Y24, align 4, !tbaa !68
  %call25 = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %call25, i32 0, i32 2
  %25 = load double, double* %Z, align 8, !tbaa !69
  %call26 = call i32 @_cmsDoubleTo15Fixed16(double %25) #6
  %call27 = call i32 @_cmsAdjustEndianess32(i32 %call26) #6
  %illuminant28 = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 14
  %Z29 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %illuminant28, i32 0, i32 2
  store i32 %call27, i32* %Z29, align 4, !tbaa !70
  %call30 = call i32 @_cmsAdjustEndianess32(i32 1818455411) #6
  %creator = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 15
  store i32 %call30, i32* %creator, align 4, !tbaa !53
  %reserved = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 17
  %26 = bitcast [28 x i8]* %reserved to i8*
  %call31 = call i8* @memset(i8* %26, i32 0, i64 28) #8
  %profileID = getelementptr inbounds %struct.cmsICCHeader, %struct.cmsICCHeader* %Header, i32 0, i32 16
  %27 = bitcast %union.cmsProfileID* %profileID to i8*
  %28 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ProfileID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %28, i32 0, i32 13
  %29 = bitcast %union.cmsProfileID* %ProfileID to i8*
  %call32 = call i8* @memmove(i8* %27, i8* %29, i64 16) #8
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 0
  %31 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %31, i32 0, i32 9
  %32 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %33 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler33 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %33, i32 0, i32 0
  %34 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler33, align 8, !tbaa !33
  %35 = bitcast %struct.cmsICCHeader* %Header to i8*
  %call34 = call i32 %32(%struct._cms_io_handler* %34, i32 128, i8* %35) #6
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %37 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %37, i32 0, i32 14
  %38 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ult i32 %36, %38
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %39 to i64
  %40 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %40, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %cmp35 = icmp ne i32 %41, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  %42 = load i32, i32* %Count, align 4, !tbaa !19
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %Count, align 4, !tbaa !19
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %43 = load i32, i32* %i, align 4, !tbaa !19
  %inc38 = add i32 %43, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler39 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %44, i32 0, i32 0
  %45 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler39, align 8, !tbaa !33
  %46 = load i32, i32* %Count, align 4, !tbaa !19
  %call40 = call i32 @_cmsWriteUInt32Number(%struct._cms_io_handler* %45, i32 %46) #6
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.72, %if.end.43
  %47 = load i32, i32* %i, align 4, !tbaa !19
  %48 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount45 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %48, i32 0, i32 14
  %49 = load i32, i32* %TagCount45, align 4, !tbaa !30
  %cmp46 = icmp ult i32 %47, %49
  br i1 %cmp46, label %for.body.47, label %for.end.74

for.body.47:                                      ; preds = %for.cond.44
  %50 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom48 = zext i32 %50 to i64
  %51 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames49 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %51, i32 0, i32 15
  %arrayidx50 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames49, i32 0, i64 %idxprom48
  %52 = load i32, i32* %arrayidx50, align 4, !tbaa !13
  %cmp51 = icmp eq i32 %52, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.body.47
  br label %for.inc.72

if.end.53:                                        ; preds = %for.body.47
  %53 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom54 = zext i32 %53 to i64
  %54 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames55 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %54, i32 0, i32 15
  %arrayidx56 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames55, i32 0, i64 %idxprom54
  %55 = load i32, i32* %arrayidx56, align 4, !tbaa !13
  %call57 = call i32 @_cmsAdjustEndianess32(i32 %55) #6
  %sig = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 0
  store i32 %call57, i32* %sig, align 4, !tbaa !60
  %56 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom58 = zext i32 %56 to i64
  %57 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %57, i32 0, i32 18
  %arrayidx59 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom58
  %58 = load i32, i32* %arrayidx59, align 4, !tbaa !19
  %call60 = call i32 @_cmsAdjustEndianess32(i32 %58) #6
  %offset = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 1
  store i32 %call60, i32* %offset, align 4, !tbaa !57
  %59 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom61 = zext i32 %59 to i64
  %60 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %60, i32 0, i32 17
  %arrayidx62 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom61
  %61 = load i32, i32* %arrayidx62, align 4, !tbaa !19
  %call63 = call i32 @_cmsAdjustEndianess32(i32 %61) #6
  %size64 = getelementptr inbounds %struct.cmsTagEntry, %struct.cmsTagEntry* %Tag, i32 0, i32 2
  store i32 %call63, i32* %size64, align 4, !tbaa !59
  %62 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler65 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %62, i32 0, i32 0
  %63 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler65, align 8, !tbaa !33
  %Write66 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %63, i32 0, i32 9
  %64 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write66, align 8, !tbaa !18
  %65 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler67 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %65, i32 0, i32 0
  %66 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler67, align 8, !tbaa !33
  %67 = bitcast %struct.cmsTagEntry* %Tag to i8*
  %call68 = call i32 %64(%struct._cms_io_handler* %66, i32 12, i8* %67) #6
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.53
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71, %if.then.52
  %68 = load i32, i32* %i, align 4, !tbaa !19
  %inc73 = add i32 %68, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !19
  br label %for.cond.44

for.end.74:                                       ; preds = %for.cond.44
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.74, %if.then.70, %if.then.42, %if.then
  %69 = bitcast i32* %Count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.cmsTagEntry* %Tag to i8*
  call void @llvm.lifetime.end(i64 12, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast %struct.cmsICCHeader* %Header to i8*
  call void @llvm.lifetime.end(i64 128, i8* %72) #1
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare void @_cmsEncodeDateTimeNumber(%struct.cmsDateTimeNumber*, %struct.tm*) #2

declare i32 @_cmsDoubleTo15Fixed16(double) #2

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @_cmsWriteUInt32Number(%struct._cms_io_handler*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderRenderingIntent(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %RenderingIntent = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 7
  %4 = load i32, i32* %RenderingIntent, align 4, !tbaa !46
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderRenderingIntent(i8* %hProfile, i32 %RenderingIntent) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %RenderingIntent.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %RenderingIntent, i32* %RenderingIntent.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %RenderingIntent.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %RenderingIntent1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 7
  store i32 %3, i32* %RenderingIntent1, align 4, !tbaa !46
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderFlags(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 8
  %4 = load i32, i32* %flags, align 4, !tbaa !48
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderFlags(i8* %hProfile, i32 %Flags) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Flags.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Flags, i32* %Flags.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %Flags.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 8
  store i32 %3, i32* %flags, align 4, !tbaa !48
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderManufacturer(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 9
  %4 = load i32, i32* %manufacturer, align 4, !tbaa !50
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderManufacturer(i8* %hProfile, i32 %manufacturer) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %manufacturer.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %manufacturer, i32* %manufacturer.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %manufacturer.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %manufacturer1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 9
  store i32 %3, i32* %manufacturer1, align 4, !tbaa !50
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderCreator(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %creator = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 12
  %4 = load i32, i32* %creator, align 4, !tbaa !54
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderModel(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %model = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 10
  %4 = load i32, i32* %model, align 4, !tbaa !52
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderModel(i8* %hProfile, i32 %model) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %model.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %model, i32* %model.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %model.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %model1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 10
  store i32 %3, i32* %model1, align 4, !tbaa !52
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsGetHeaderAttributes(i8* %hProfile, i64* %Flags) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Flags.addr = alloca i64*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i64* %Flags, i64** %Flags.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i64*, i64** %Flags.addr, align 8, !tbaa !1
  %4 = bitcast i64* %3 to i8*
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %5, i32 0, i32 11
  %6 = bitcast i64* %attributes to i8*
  %call = call i8* @memmove(i8* %4, i8* %6, i64 8) #8
  %7 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderAttributes(i8* %hProfile, i64 %Flags) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Flags.addr = alloca i64, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i64 %Flags, i64* %Flags.addr, align 8, !tbaa !25
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 11
  %4 = bitcast i64* %attributes to i8*
  %5 = bitcast i64* %Flags.addr to i8*
  %call = call i8* @memmove(i8* %4, i8* %5, i64 8) #8
  %6 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsGetHeaderProfileID(i8* %hProfile, i8* %ProfileID) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %ProfileID.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i8* %ProfileID, i8** %ProfileID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i8*, i8** %ProfileID.addr, align 8, !tbaa !1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ProfileID1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 13
  %ID8 = bitcast %union.cmsProfileID* %ProfileID1 to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %ID8, i32 0, i32 0
  %call = call i8* @memmove(i8* %3, i8* %arraydecay, i64 16) #8
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetHeaderProfileID(i8* %hProfile, i8* %ProfileID) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %ProfileID.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i8* %ProfileID, i8** %ProfileID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ProfileID1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 13
  %4 = bitcast %union.cmsProfileID* %ProfileID1 to i8*
  %5 = load i8*, i8** %ProfileID.addr, align 8, !tbaa !1
  %call = call i8* @memmove(i8* %4, i8* %5, i64 16) #8
  %6 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetHeaderCreationDateTime(i8* %hProfile, %struct.tm* %Dest) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Dest.addr = alloca %struct.tm*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store %struct.tm* %Dest, %struct.tm** %Dest.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !1
  %4 = bitcast %struct.tm* %3 to i8*
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Created = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %5, i32 0, i32 2
  %6 = bitcast %struct.tm* %Created to i8*
  %call = call i8* @memmove(i8* %4, i8* %6, i64 56) #8
  %7 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetPCS(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %PCS = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 6
  %4 = load i32, i32* %PCS, align 4, !tbaa !44
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetPCS(i8* %hProfile, i32 %pcs) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %pcs.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %pcs, i32* %pcs.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %pcs.addr, align 4, !tbaa !13
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %PCS = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 6
  store i32 %3, i32* %PCS, align 4, !tbaa !44
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetColorSpace(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 5
  %4 = load i32, i32* %ColorSpace, align 4, !tbaa !42
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetColorSpace(i8* %hProfile, i32 %sig) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ColorSpace = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 5
  store i32 %3, i32* %ColorSpace, align 4, !tbaa !42
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetDeviceClass(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %DeviceClass = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %DeviceClass, align 4, !tbaa !40
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetDeviceClass(i8* %hProfile, i32 %sig) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %DeviceClass = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 4
  store i32 %3, i32* %DeviceClass, align 4, !tbaa !40
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsGetEncodedICCversion(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %Version, align 4, !tbaa !31
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cmsSetEncodedICCversion(i8* %hProfile, i32 %Version) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Version.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %Version, i32* %Version.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load i32, i32* %Version.addr, align 4, !tbaa !19
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version1 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 3
  store i32 %3, i32* %Version1, align 4, !tbaa !31
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsSetProfileVersion(i8* %hProfile, double %Version) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Version.addr = alloca double, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store double %Version, double* %Version.addr, align 8, !tbaa !71
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = load double, double* %Version.addr, align 8, !tbaa !71
  %mul = fmul double %3, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #9
  %conv = fptoui double %call to i32
  %call1 = call i32 @BaseToBase(i32 %conv, i32 10, i32 16) #6
  %shl = shl i32 %call1, 16
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version2 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 3
  store i32 %shl, i32* %Version2, align 4, !tbaa !31
  %5 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseToBase(i32 %in, i32 %BaseIn, i32 %BaseOut) #0 {
entry:
  %in.addr = alloca i32, align 4
  %BaseIn.addr = alloca i32, align 4
  %BaseOut.addr = alloca i32, align 4
  %Buff = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4, !tbaa !19
  store i32 %BaseIn, i32* %BaseIn.addr, align 4, !tbaa !19
  store i32 %BaseOut, i32* %BaseOut.addr, align 4, !tbaa !19
  %0 = bitcast [100 x i8]* %Buff to i8*
  call void @llvm.lifetime.start(i64 100, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %len, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %in.addr, align 4, !tbaa !19
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %len, align 4, !tbaa !19
  %cmp1 = icmp slt i32 %5, 100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load i32, i32* %in.addr, align 4, !tbaa !19
  %8 = load i32, i32* %BaseIn.addr, align 4, !tbaa !19
  %rem = urem i32 %7, %8
  %conv = trunc i32 %rem to i8
  %9 = load i32, i32* %len, align 4, !tbaa !19
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %Buff, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !13
  %10 = load i32, i32* %BaseIn.addr, align 4, !tbaa !19
  %11 = load i32, i32* %in.addr, align 4, !tbaa !19
  %div = udiv i32 %11, %10
  store i32 %div, i32* %in.addr, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %len, align 4, !tbaa !19
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %len, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %len, align 4, !tbaa !19
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %i, align 4, !tbaa !19
  store i32 0, i32* %out, align 4, !tbaa !19
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.9, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %cmp3 = icmp sge i32 %14, 0
  br i1 %cmp3, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %out, align 4, !tbaa !19
  %16 = load i32, i32* %BaseOut.addr, align 4, !tbaa !19
  %mul = mul i32 %15, %16
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds [100 x i8], [100 x i8]* %Buff, i32 0, i64 %idxprom6
  %18 = load i8, i8* %arrayidx7, align 1, !tbaa !13
  %conv8 = sext i8 %18 to i32
  %add = add i32 %mul, %conv8
  store i32 %add, i32* %out, align 4, !tbaa !19
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4, !tbaa !19
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %20 = load i32, i32* %out, align 4, !tbaa !19
  %21 = bitcast i32* %out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast [100 x i8]* %Buff to i8*
  call void @llvm.lifetime.end(i64 100, i8* %24) #1
  ret i32 %20
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind uwtable
define double @cmsGetProfileVersion(i8* %hProfile) #0 {
entry:
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %n = alloca i32, align 4
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 3
  %5 = load i32, i32* %Version, align 4, !tbaa !31
  %shr = lshr i32 %5, 16
  store i32 %shr, i32* %n, align 4, !tbaa !19
  %6 = load i32, i32* %n, align 4, !tbaa !19
  %call = call i32 @BaseToBase(i32 %6, i32 16, i32 10) #6
  %conv = uitofp i32 %call to double
  %div = fdiv double %conv, 1.000000e+02
  %7 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret double %div
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromIOhandlerTHR(%struct._cmsContext_struct* %ContextID, %struct._cms_io_handler* %io) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %NewIcc = alloca %struct._cms_iccprofile_struct*, align 8
  %hEmpty = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #6
  store i8* %call, i8** %hEmpty, align 8, !tbaa !1
  %3 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %5, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %7 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %7, i32 0, i32 0
  store %struct._cms_io_handler* %6, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %call1 = call i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %8) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %Error

if.end.3:                                         ; preds = %if.end
  %9 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.2
  %10 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %call4 = call i32 @cmsCloseProfile(i8* %10) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.3, %if.then
  %11 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define i32 @cmsCloseProfile(i8* %hProfile) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %rc, align 4, !tbaa !19
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_iccprofile_struct* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IsWrite = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 22
  %7 = load i32, i32* %IsWrite, align 4, !tbaa !72
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IsWrite3 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 22
  store i32 0, i32* %IsWrite3, align 4, !tbaa !72
  %9 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 0
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %PhysicalFile = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %PhysicalFile, i32 0, i32 0
  %call = call i32 @cmsSaveProfileToFile(i8* %9, i8* %arraydecay) #6
  %12 = load i32, i32* %rc, align 4, !tbaa !19
  %and = and i32 %12, %call
  store i32 %and, i32* %rc, align 4, !tbaa !19
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %13 = load i32, i32* %i, align 4, !tbaa !19
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 14
  %15 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %16 to i64
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %17, i32 0, i32 20
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool5 = icmp ne i8* %18, null
  br i1 %tobool5, label %if.then.6, label %if.end.20

if.then.6:                                        ; preds = %for.body
  %19 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom7 = zext i32 %20 to i64
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 21
  %arrayidx8 = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom7
  %22 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %arrayidx8, align 8, !tbaa !1
  store %struct._cms_typehandler_struct* %22, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %23 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp9 = icmp ne %struct._cms_typehandler_struct* %23, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.6
  %24 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %24) #1
  %25 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %26 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %27 = bitcast %struct._cms_typehandler_struct* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 56, i32 8, i1 false), !tbaa.struct !73
  %28 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %28, i32 0, i32 1
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %ContextID11 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %29, %struct._cmsContext_struct** %ContextID11, align 8, !tbaa !74
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 3
  %31 = load i32, i32* %Version, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %31, i32* %ICCVersion, align 4, !tbaa !76
  %FreePtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 4
  %32 = load void (%struct._cms_typehandler_struct*, i8*)*, void (%struct._cms_typehandler_struct*, i8*)** %FreePtr, align 8, !tbaa !77
  %33 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom12 = zext i32 %33 to i64
  %34 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs13 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %34, i32 0, i32 20
  %arrayidx14 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs13, i32 0, i64 %idxprom12
  %35 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  call void %32(%struct._cms_typehandler_struct* %LocalTypeHandler, i8* %35) #6
  %36 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %36) #1
  br label %if.end.19

if.else:                                          ; preds = %if.then.6
  %37 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %37, i32 0, i32 1
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !27
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom16 = zext i32 %39 to i64
  %40 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs17 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %40, i32 0, i32 20
  %arrayidx18 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs17, i32 0, i64 %idxprom16
  %41 = load i8*, i8** %arrayidx18, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %38, i8* %41) #6
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.10
  %42 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %43 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler21 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %44, i32 0, i32 0
  %45 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler21, align 8, !tbaa !33
  %cmp22 = icmp ne %struct._cms_io_handler* %45, null
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %for.end
  %46 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler24 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %46, i32 0, i32 0
  %47 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler24, align 8, !tbaa !33
  %call25 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %47) #6
  %48 = load i32, i32* %rc, align 4, !tbaa !19
  %and26 = and i32 %48, %call25
  store i32 %and26, i32* %rc, align 4, !tbaa !19
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %for.end
  %49 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID28 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %49, i32 0, i32 1
  %50 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID28, align 8, !tbaa !27
  %51 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %51, i32 0, i32 23
  %52 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  call void @_cmsDestroyMutex(%struct._cmsContext_struct* %50, i8* %52) #6
  %53 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID29 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %53, i32 0, i32 1
  %54 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID29, align 8, !tbaa !27
  %55 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %56 = bitcast %struct._cms_iccprofile_struct* %55 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %54, i8* %56) #6
  %57 = load i32, i32* %rc, align 4, !tbaa !19
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromIOhandler2THR(%struct._cmsContext_struct* %ContextID, %struct._cms_io_handler* %io, i32 %write) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %write.addr = alloca i32, align 4
  %NewIcc = alloca %struct._cms_iccprofile_struct*, align 8
  %hEmpty = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  store i32 %write, i32* %write.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #6
  store i8* %call, i8** %hEmpty, align 8, !tbaa !1
  %3 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %5, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %7 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %7, i32 0, i32 0
  store %struct._cms_io_handler* %6, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %8 = load i32, i32* %write.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IsWrite = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 22
  store i32 1, i32* %IsWrite, align 4, !tbaa !72
  %10 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %11 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %call3 = call i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %11) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  br label %Error

if.end.6:                                         ; preds = %if.end.2
  %12 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %12, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.5
  %13 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %call7 = call i32 @cmsCloseProfile(i8* %13) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.6, %if.then.1, %if.then
  %14 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromFileTHR(%struct._cmsContext_struct* %ContextID, i8* %lpFileName, i8* %sAccess) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %lpFileName.addr = alloca i8*, align 8
  %sAccess.addr = alloca i8*, align 8
  %NewIcc = alloca %struct._cms_iccprofile_struct*, align 8
  %hEmpty = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %lpFileName, i8** %lpFileName.addr, align 8, !tbaa !1
  store i8* %sAccess, i8** %sAccess.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #6
  store i8* %call, i8** %hEmpty, align 8, !tbaa !1
  %3 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %5, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %lpFileName.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromFile(%struct._cmsContext_struct* %6, i8* %7, i8* %8) #6
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 0
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler2 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 0
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler2, align 8, !tbaa !33
  %cmp3 = icmp eq %struct._cms_io_handler* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %Error

if.end.5:                                         ; preds = %if.end
  %12 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !13
  %conv = sext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, 87
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %14 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !13
  %conv8 = sext i8 %15 to i32
  %cmp9 = icmp eq i32 %conv8, 119
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.5
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IsWrite = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %16, i32 0, i32 22
  store i32 1, i32* %IsWrite, align 4, !tbaa !72
  %17 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %17, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %call13 = call i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %18) #6
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  br label %Error

if.end.15:                                        ; preds = %if.end.12
  %19 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %19, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.14, %if.then.4
  %20 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %call16 = call i32 @cmsCloseProfile(i8* %20) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.15, %if.then.11, %if.then
  %21 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromFile(i8* %ICCProfile, i8* %sAccess) #0 {
entry:
  %ICCProfile.addr = alloca i8*, align 8
  %sAccess.addr = alloca i8*, align 8
  store i8* %ICCProfile, i8** %ICCProfile.addr, align 8, !tbaa !1
  store i8* %sAccess, i8** %sAccess.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ICCProfile.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %call = call i8* @cmsOpenProfileFromFileTHR(%struct._cmsContext_struct* null, i8* %0, i8* %1) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromStreamTHR(%struct._cmsContext_struct* %ContextID, %struct._IO_FILE* %ICCProfile, i8* %sAccess) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ICCProfile.addr = alloca %struct._IO_FILE*, align 8
  %sAccess.addr = alloca i8*, align 8
  %NewIcc = alloca %struct._cms_iccprofile_struct*, align 8
  %hEmpty = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %ICCProfile, %struct._IO_FILE** %ICCProfile.addr, align 8, !tbaa !1
  store i8* %sAccess, i8** %sAccess.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #6
  store i8* %call, i8** %hEmpty, align 8, !tbaa !1
  %3 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %5, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ICCProfile.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromStream(%struct._cmsContext_struct* %6, %struct._IO_FILE* %7) #6
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 0
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler2 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 0
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler2, align 8, !tbaa !33
  %cmp3 = icmp eq %struct._cms_io_handler* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %Error

if.end.5:                                         ; preds = %if.end
  %11 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %conv = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 119
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IsWrite = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %13, i32 0, i32 22
  store i32 1, i32* %IsWrite, align 4, !tbaa !72
  %14 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %14, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %15 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %call10 = call i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %15) #6
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  br label %Error

if.end.12:                                        ; preds = %if.end.9
  %16 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %16, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.11, %if.then.4
  %17 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %call13 = call i32 @cmsCloseProfile(i8* %17) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.12, %if.then.8, %if.then
  %18 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromStream(%struct._IO_FILE* %ICCProfile, i8* %sAccess) #0 {
entry:
  %ICCProfile.addr = alloca %struct._IO_FILE*, align 8
  %sAccess.addr = alloca i8*, align 8
  store %struct._IO_FILE* %ICCProfile, %struct._IO_FILE** %ICCProfile.addr, align 8, !tbaa !1
  store i8* %sAccess, i8** %sAccess.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %ICCProfile.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %sAccess.addr, align 8, !tbaa !1
  %call = call i8* @cmsOpenProfileFromStreamTHR(%struct._cmsContext_struct* null, %struct._IO_FILE* %0, i8* %1) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromMemTHR(%struct._cmsContext_struct* %ContextID, i8* %MemPtr, i32 %dwSize) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %MemPtr.addr = alloca i8*, align 8
  %dwSize.addr = alloca i32, align 4
  %NewIcc = alloca %struct._cms_iccprofile_struct*, align 8
  %hEmpty = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i8* %MemPtr, i8** %MemPtr.addr, align 8, !tbaa !1
  store i32 %dwSize, i32* %dwSize.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @cmsCreateProfilePlaceholder(%struct._cmsContext_struct* %2) #6
  store i8* %call, i8** %hEmpty, align 8, !tbaa !1
  %3 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %5, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %MemPtr.addr, align 8, !tbaa !1
  %8 = load i32, i32* %dwSize.addr, align 4, !tbaa !19
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %6, i8* %7, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)) #6
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 0
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %IOhandler2 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 0
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler2, align 8, !tbaa !33
  %cmp3 = icmp eq %struct._cms_io_handler* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %Error

if.end.5:                                         ; preds = %if.end
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %NewIcc, align 8, !tbaa !1
  %call6 = call i32 @_cmsReadHeader(%struct._cms_iccprofile_struct* %12) #6
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  br label %Error

if.end.8:                                         ; preds = %if.end.5
  %13 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  store i8* %13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.7, %if.then.4
  %14 = load i8*, i8** %hEmpty, align 8, !tbaa !1
  %call9 = call i32 @cmsCloseProfile(i8* %14) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.8, %if.then
  %15 = bitcast i8** %hEmpty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct._cms_iccprofile_struct** %NewIcc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i8* @cmsOpenProfileFromMem(i8* %MemPtr, i32 %dwSize) #0 {
entry:
  %MemPtr.addr = alloca i8*, align 8
  %dwSize.addr = alloca i32, align 4
  store i8* %MemPtr, i8** %MemPtr.addr, align 8, !tbaa !1
  store i32 %dwSize, i32* %dwSize.addr, align 4, !tbaa !19
  %0 = load i8*, i8** %MemPtr.addr, align 8, !tbaa !1
  %1 = load i32, i32* %dwSize.addr, align 4, !tbaa !19
  %call = call i8* @cmsOpenProfileFromMemTHR(%struct._cmsContext_struct* null, i8* %0, i32 %1) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @cmsSaveProfileToIOhandler(i8* %hProfile, %struct._cms_io_handler* %io) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %Keep = alloca %struct._cms_iccprofile_struct, align 8
  %PrevIO = alloca %struct._cms_io_handler*, align 8
  %UsedSpace = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  call void @llvm.lifetime.start(i64 3752, i8* %3) #1
  %4 = bitcast %struct._cms_io_handler** %PrevIO to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct._cms_io_handler* null, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %5 = bitcast i32* %UsedSpace to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1267, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %11 = bitcast %struct._cms_iccprofile_struct* %10 to i8*
  %call = call i8* @memmove(i8* %9, i8* %11, i64 3752) #8
  %12 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call1 = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %12) #6
  store %struct._cmsContext_struct* %call1, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %call2 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct* %13) #6
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 0
  store %struct._cms_io_handler* %call2, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  store %struct._cms_io_handler* %call2, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._cms_io_handler* %15, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %call4 = call i32 @_cmsWriteHeader(%struct._cms_iccprofile_struct* %16, i32 0) #6
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  br label %Error

if.end.6:                                         ; preds = %if.end
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %call7 = call i32 @SaveTags(%struct._cms_iccprofile_struct* %17, %struct._cms_iccprofile_struct* %Keep) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %Error

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %UsedSpace11 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %18, i32 0, i32 2
  %19 = load i32, i32* %UsedSpace11, align 4, !tbaa !11
  store i32 %19, i32* %UsedSpace, align 4, !tbaa !19
  %20 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._cms_io_handler* %20, null
  br i1 %cmp12, label %if.then.13, label %if.end.27

if.then.13:                                       ; preds = %if.end.10
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !1
  %22 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler14 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %22, i32 0, i32 0
  store %struct._cms_io_handler* %21, %struct._cms_io_handler** %IOhandler14, align 8, !tbaa !33
  %23 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %call15 = call i32 @SetLinks(%struct._cms_iccprofile_struct* %23) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  br label %Error

if.end.18:                                        ; preds = %if.then.13
  %24 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %25 = load i32, i32* %UsedSpace, align 4, !tbaa !19
  %call19 = call i32 @_cmsWriteHeader(%struct._cms_iccprofile_struct* %24, i32 %25) #6
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  br label %Error

if.end.22:                                        ; preds = %if.end.18
  %26 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %call23 = call i32 @SaveTags(%struct._cms_iccprofile_struct* %26, %struct._cms_iccprofile_struct* %Keep) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  br label %Error

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.10
  %27 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %28 = bitcast %struct._cms_iccprofile_struct* %27 to i8*
  %29 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %call28 = call i8* @memmove(i8* %28, i8* %29, i64 3752) #8
  %30 = load %struct._cms_io_handler*, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %call29 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %30) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.27
  %31 = load i32, i32* %UsedSpace, align 4, !tbaa !19
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.25, %if.then.21, %if.then.17, %if.then.9, %if.then.5
  %32 = load %struct._cms_io_handler*, %struct._cms_io_handler** %PrevIO, align 8, !tbaa !1
  %call33 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %32) #6
  %33 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %34 = bitcast %struct._cms_iccprofile_struct* %33 to i8*
  %35 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  %call34 = call i8* @memmove(i8* %34, i8* %35, i64 3752) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.32, %if.then.31, %if.then
  %36 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %UsedSpace to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast %struct._cms_io_handler** %PrevIO to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct._cms_iccprofile_struct* %Keep to i8*
  call void @llvm.lifetime.end(i64 3752, i8* %39) #1
  %40 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @SaveTags(%struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct* %FileOrig) #0 {
entry:
  %retval = alloca i32, align 4
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %FileOrig.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %Data = alloca i8*, align 8
  %i = alloca i32, align 4
  %Begin = alloca i32, align 4
  %io = alloca %struct._cms_io_handler*, align 8
  %TagDescriptor = alloca %struct.cmsTagDescriptor*, align 8
  %TypeBase = alloca i32, align 4
  %Type = alloca i32, align 4
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %Version = alloca double, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  %TagSize = alloca i32, align 4
  %TagOffset = alloca i32, align 4
  %Mem = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %String = alloca [5 x i8], align 1
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  store %struct._cms_iccprofile_struct* %FileOrig, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %0 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %Begin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 0
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  store %struct._cms_io_handler* %5, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %6 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %TypeBase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %Version to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %12 = bitcast %struct._cms_iccprofile_struct* %11 to i8*
  %call = call double @cmsGetProfileVersion(i8* %12) #6
  store double %call, double* %Version, align 8, !tbaa !71
  %13 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %15 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %15, i32 0, i32 14
  %16 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %17 to i64
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %18, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %19, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom2 = zext i32 %20 to i64
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom2
  %22 = load i32, i32* %arrayidx3, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %22, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %for.inc

if.end.6:                                         ; preds = %if.end
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %UsedSpace = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %23, i32 0, i32 2
  %24 = load i32, i32* %UsedSpace, align 4, !tbaa !11
  store i32 %24, i32* %Begin, align 4, !tbaa !19
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom7 = zext i32 %25 to i64
  %26 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %26, i32 0, i32 18
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom7
  store i32 %24, i32* %arrayidx8, align 4, !tbaa !19
  %27 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom9 = zext i32 %27 to i64
  %28 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %28, i32 0, i32 20
  %arrayidx10 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom9
  %29 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  store i8* %29, i8** %Data, align 8, !tbaa !1
  %30 = load i8*, i8** %Data, align 8, !tbaa !1
  %tobool = icmp ne i8* %30, null
  br i1 %tobool, label %if.end.55, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %31 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %cmp12 = icmp ne %struct._cms_iccprofile_struct* %31, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.then.11
  %32 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom13 = zext i32 %32 to i64
  %33 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets14 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %33, i32 0, i32 18
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets14, i32 0, i64 %idxprom13
  %34 = load i32, i32* %arrayidx15, align 4, !tbaa !19
  %tobool16 = icmp ne i32 %34, 0
  br i1 %tobool16, label %if.then.17, label %if.end.54

if.then.17:                                       ; preds = %land.lhs.true
  %35 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom18 = zext i32 %36 to i64
  %37 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %37, i32 0, i32 17
  %arrayidx19 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom18
  %38 = load i32, i32* %arrayidx19, align 4, !tbaa !19
  store i32 %38, i32* %TagSize, align 4, !tbaa !19
  %39 = bitcast i32* %TagOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom20 = zext i32 %40 to i64
  %41 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %TagOffsets21 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %41, i32 0, i32 18
  %arrayidx22 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets21, i32 0, i64 %idxprom20
  %42 = load i32, i32* %arrayidx22, align 4, !tbaa !19
  store i32 %42, i32* %TagOffset, align 4, !tbaa !19
  %43 = bitcast i8** %Mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %IOhandler23 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %44, i32 0, i32 0
  %45 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler23, align 8, !tbaa !33
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %45, i32 0, i32 6
  %46 = load i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %47 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %IOhandler24 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %47, i32 0, i32 0
  %48 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler24, align 8, !tbaa !33
  %49 = load i32, i32* %TagOffset, align 4, !tbaa !19
  %call25 = call i32 %46(%struct._cms_io_handler* %48, i32 %49) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.17
  %50 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %50, i32 0, i32 1
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %52 = load i32, i32* %TagSize, align 4, !tbaa !19
  %call29 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %51, i32 %52) #6
  store i8* %call29, i8** %Mem, align 8, !tbaa !1
  %53 = load i8*, i8** %Mem, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %53, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %54 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %IOhandler33 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %54, i32 0, i32 0
  %55 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler33, align 8, !tbaa !33
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %55, i32 0, i32 5
  %56 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %57 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %FileOrig.addr, align 8, !tbaa !1
  %IOhandler34 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %57, i32 0, i32 0
  %58 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler34, align 8, !tbaa !33
  %59 = load i8*, i8** %Mem, align 8, !tbaa !1
  %60 = load i32, i32* %TagSize, align 4, !tbaa !19
  %call35 = call i32 %56(%struct._cms_io_handler* %58, i8* %59, i32 %60, i32 1) #6
  %cmp36 = icmp ne i32 %call35, 1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.32
  %61 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %61, i32 0, i32 9
  %62 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !18
  %63 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %64 = load i32, i32* %TagSize, align 4, !tbaa !19
  %65 = load i8*, i8** %Mem, align 8, !tbaa !1
  %call39 = call i32 %62(%struct._cms_io_handler* %63, i32 %64, i8* %65) #6
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.end.38
  %66 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID43 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %66, i32 0, i32 1
  %67 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID43, align 8, !tbaa !27
  %68 = load i8*, i8** %Mem, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %67, i8* %68) #6
  %69 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %UsedSpace44 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %69, i32 0, i32 2
  %70 = load i32, i32* %UsedSpace44, align 4, !tbaa !11
  %71 = load i32, i32* %Begin, align 4, !tbaa !19
  %sub = sub i32 %70, %71
  %72 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom45 = zext i32 %72 to i64
  %73 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes46 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %73, i32 0, i32 17
  %arrayidx47 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes46, i32 0, i64 %idxprom45
  store i32 %sub, i32* %arrayidx47, align 4, !tbaa !19
  %74 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call48 = call i32 @_cmsWriteAlignment(%struct._cms_io_handler* %74) #6
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.42
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.50, %if.then.41, %if.then.37, %if.then.31, %if.then.27
  %75 = bitcast i8** %Mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %TagOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.116 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54

if.end.54:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.then.11
  br label %for.inc

if.end.55:                                        ; preds = %if.end.6
  %78 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom56 = zext i32 %78 to i64
  %79 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %79, i32 0, i32 19
  %arrayidx57 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom56
  %80 = load i32, i32* %arrayidx57, align 4, !tbaa !19
  %tobool58 = icmp ne i32 %80, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.55
  %81 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %Write60 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %81, i32 0, i32 9
  %82 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write60, align 8, !tbaa !18
  %83 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %84 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom61 = zext i32 %84 to i64
  %85 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes62 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %85, i32 0, i32 17
  %arrayidx63 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes62, i32 0, i64 %idxprom61
  %86 = load i32, i32* %arrayidx63, align 4, !tbaa !19
  %87 = load i8*, i8** %Data, align 8, !tbaa !1
  %call64 = call i32 %82(%struct._cms_io_handler* %83, i32 %86, i8* %87) #6
  %cmp65 = icmp ne i32 %call64, 1
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.67:                                        ; preds = %if.then.59
  br label %if.end.106

if.else:                                          ; preds = %if.end.55
  %88 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID68 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %88, i32 0, i32 1
  %89 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID68, align 8, !tbaa !27
  %90 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom69 = zext i32 %90 to i64
  %91 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames70 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %91, i32 0, i32 15
  %arrayidx71 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames70, i32 0, i64 %idxprom69
  %92 = load i32, i32* %arrayidx71, align 4, !tbaa !13
  %call72 = call %struct.cmsTagDescriptor* @_cmsGetTagDescriptor(%struct._cmsContext_struct* %89, i32 %92) #6
  store %struct.cmsTagDescriptor* %call72, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %93 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %cmp73 = icmp eq %struct.cmsTagDescriptor* %93, null
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.else
  br label %for.inc

if.end.75:                                        ; preds = %if.else
  %94 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %DecideType = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %94, i32 0, i32 3
  %95 = load i32 (double, i8*)*, i32 (double, i8*)** %DecideType, align 8, !tbaa !78
  %cmp76 = icmp ne i32 (double, i8*)* %95, null
  br i1 %cmp76, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.end.75
  %96 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %DecideType78 = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %96, i32 0, i32 3
  %97 = load i32 (double, i8*)*, i32 (double, i8*)** %DecideType78, align 8, !tbaa !78
  %98 = load double, double* %Version, align 8, !tbaa !71
  %99 = load i8*, i8** %Data, align 8, !tbaa !1
  %call79 = call i32 %97(double %98, i8* %99) #6
  store i32 %call79, i32* %Type, align 4, !tbaa !13
  br label %if.end.82

if.else.80:                                       ; preds = %if.end.75
  %100 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %SupportedTypes = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %100, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [20 x i32], [20 x i32]* %SupportedTypes, i32 0, i64 0
  %101 = load i32, i32* %arrayidx81, align 4, !tbaa !13
  store i32 %101, i32* %Type, align 4, !tbaa !13
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.77
  %102 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID83 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %102, i32 0, i32 1
  %103 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID83, align 8, !tbaa !27
  %104 = load i32, i32* %Type, align 4, !tbaa !13
  %call84 = call %struct._cms_typehandler_struct* @_cmsGetTagTypeHandler(%struct._cmsContext_struct* %103, i32 %104) #6
  store %struct._cms_typehandler_struct* %call84, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %105 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp85 = icmp eq %struct._cms_typehandler_struct* %105, null
  br i1 %cmp85, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.end.82
  %106 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID87 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %106, i32 0, i32 1
  %107 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID87, align 8, !tbaa !27
  %108 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom88 = zext i32 %108 to i64
  %109 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagNames89 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %109, i32 0, i32 15
  %arrayidx90 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames89, i32 0, i64 %idxprom88
  %110 = load i32, i32* %arrayidx90, align 4, !tbaa !13
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %107, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0), i32 %110) #6
  br label %for.inc

if.end.91:                                        ; preds = %if.end.82
  %111 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %Signature = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %111, i32 0, i32 0
  %112 = load i32, i32* %Signature, align 4, !tbaa !80
  store i32 %112, i32* %TypeBase, align 4, !tbaa !13
  %113 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %114 = load i32, i32* %TypeBase, align 4, !tbaa !13
  %call92 = call i32 @_cmsWriteTypeBase(%struct._cms_io_handler* %113, i32 %114) #6
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.end.91
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.95:                                        ; preds = %if.end.91
  %115 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %116 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %117 = bitcast %struct._cms_typehandler_struct* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 56, i32 8, i1 false), !tbaa.struct !73
  %118 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID96 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %118, i32 0, i32 1
  %119 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID96, align 8, !tbaa !27
  %ContextID97 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %119, %struct._cmsContext_struct** %ContextID97, align 8, !tbaa !74
  %120 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Version98 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %120, i32 0, i32 3
  %121 = load i32, i32* %Version98, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %121, i32* %ICCVersion, align 4, !tbaa !76
  %WritePtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 2
  %122 = load i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)*, i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)** %WritePtr, align 8, !tbaa !81
  %123 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %124 = load i8*, i8** %Data, align 8, !tbaa !1
  %125 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %ElemCount = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %125, i32 0, i32 0
  %126 = load i32, i32* %ElemCount, align 4, !tbaa !82
  %call99 = call i32 %122(%struct._cms_typehandler_struct* %LocalTypeHandler, %struct._cms_io_handler* %123, i8* %124, i32 %126) #6
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.105, label %if.then.101

if.then.101:                                      ; preds = %if.end.95
  %127 = bitcast [5 x i8]* %String to i8*
  call void @llvm.lifetime.start(i64 5, i8* %127) #1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %String, i32 0, i32 0
  %128 = load i32, i32* %TypeBase, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay, i32 %128) #6
  %129 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID102 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %129, i32 0, i32 1
  %130 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID102, align 8, !tbaa !27
  %arraydecay103 = getelementptr inbounds [5 x i8], [5 x i8]* %String, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %130, i32 7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0), i8* %arraydecay103) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %131 = bitcast [5 x i8]* %String to i8*
  call void @llvm.lifetime.end(i64 5, i8* %131) #1
  br label %cleanup.116

if.end.105:                                       ; preds = %if.end.95
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.67
  %132 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %UsedSpace107 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %132, i32 0, i32 2
  %133 = load i32, i32* %UsedSpace107, align 4, !tbaa !11
  %134 = load i32, i32* %Begin, align 4, !tbaa !19
  %sub108 = sub i32 %133, %134
  %135 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom109 = zext i32 %135 to i64
  %136 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes110 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %136, i32 0, i32 17
  %arrayidx111 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes110, i32 0, i64 %idxprom109
  store i32 %sub108, i32* %arrayidx111, align 4, !tbaa !19
  %137 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call112 = call i32 @_cmsWriteAlignment(%struct._cms_io_handler* %137) #6
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.106
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.115:                                       ; preds = %if.end.106
  br label %for.inc

for.inc:                                          ; preds = %if.end.115, %if.then.86, %if.then.74, %if.end.54, %if.then.5, %if.then
  %138 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %138, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

cleanup.116:                                      ; preds = %for.end, %if.then.114, %if.then.101, %if.then.94, %if.then.66, %cleanup
  %139 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %139) #1
  %140 = bitcast double* %Version to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %TypeBase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %Begin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i8** %Data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = load i32, i32* %retval
  ret i32 %149
}

; Function Attrs: nounwind uwtable
define internal i32 @SetLinks(%struct._cms_iccprofile_struct* %Icc) #0 {
entry:
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %i = alloca i32, align 4
  %lnk = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %2 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %2, i32 0, i32 14
  %3 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast i32* %lnk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 16
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !13
  store i32 %7, i32* %lnk, align 4, !tbaa !13
  %8 = load i32, i32* %lnk, align 4, !tbaa !13
  %cmp1 = icmp ne i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %11 = load i32, i32* %lnk, align 4, !tbaa !13
  %call = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %10, i32 %11, i32 0) #6
  store i32 %call, i32* %j, align 4, !tbaa !19
  %12 = load i32, i32* %j, align 4, !tbaa !19
  %cmp2 = icmp sge i32 %12, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %13 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 18
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom4
  %15 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  %16 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom6 = zext i32 %16 to i64
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagOffsets7 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %17, i32 0, i32 18
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets7, i32 0, i64 %idxprom6
  store i32 %15, i32* %arrayidx8, align 4, !tbaa !19
  %18 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %19, i32 0, i32 17
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom9
  %20 = load i32, i32* %arrayidx10, align 4, !tbaa !19
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom11 = zext i32 %21 to i64
  %22 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSizes12 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %22, i32 0, i32 17
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes12, i32 0, i64 %idxprom11
  store i32 %20, i32* %arrayidx13, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  %24 = bitcast i32* %lnk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @cmsSaveProfileToFile(i8* %hProfile, i8* %FileName) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %FileName.addr = alloca i8*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %io = alloca %struct._cms_io_handler*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i8* %FileName, i8** %FileName.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %1) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %2 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %4 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromFile(%struct._cmsContext_struct* %3, i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #6
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %5 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_io_handler* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call2 = call i32 @cmsSaveProfileToIOhandler(i8* %7, %struct._cms_io_handler* %8) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %rc, align 4, !tbaa !19
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call4 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %9) #6
  %10 = load i32, i32* %rc, align 4, !tbaa !19
  %and = and i32 %10, %call4
  store i32 %and, i32* %rc, align 4, !tbaa !19
  %11 = load i32, i32* %rc, align 4, !tbaa !19
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %12 = load i8*, i8** %FileName.addr, align 8, !tbaa !1
  %call8 = call i32 @remove(i8* %12) #8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %13 = load i32, i32* %rc, align 4, !tbaa !19
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %14 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare i32 @remove(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @cmsSaveProfileToStream(i8* %hProfile, %struct._IO_FILE* %Stream) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %Stream.addr = alloca %struct._IO_FILE*, align 8
  %rc = alloca i32, align 4
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %io = alloca %struct._cms_io_handler*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %Stream, %struct._IO_FILE** %Stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %2) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %3 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %Stream.addr, align 8, !tbaa !1
  %call1 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromStream(%struct._cmsContext_struct* %4, %struct._IO_FILE* %5) #6
  store %struct._cms_io_handler* %call1, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_io_handler* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call2 = call i32 @cmsSaveProfileToIOhandler(i8* %7, %struct._cms_io_handler* %8) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %rc, align 4, !tbaa !19
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call4 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %9) #6
  %10 = load i32, i32* %rc, align 4, !tbaa !19
  %and = and i32 %10, %call4
  store i32 %and, i32* %rc, align 4, !tbaa !19
  %11 = load i32, i32* %rc, align 4, !tbaa !19
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @cmsSaveProfileToMem(i8* %hProfile, i8* %MemPtr, i32* %BytesNeeded) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %MemPtr.addr = alloca i8*, align 8
  %BytesNeeded.addr = alloca i32*, align 8
  %rc = alloca i32, align 4
  %io = alloca %struct._cms_io_handler*, align 8
  %ContextID = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i8* %MemPtr, i8** %MemPtr.addr, align 8, !tbaa !1
  store i32* %BytesNeeded, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %0 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %3) #6
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %4 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 1346, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.cmsSaveProfileToMem, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i8*, i8** %MemPtr.addr, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call2 = call i32 @cmsSaveProfileToIOhandler(i8* %7, %struct._cms_io_handler* null) #6
  %8 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  store i32 %call2, i32* %8, align 4, !tbaa !19
  %9 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !19
  %cmp3 = icmp eq i32 %10, 0
  %cond = select i1 %cmp3, i32 0, i32 1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !1
  %12 = load i8*, i8** %MemPtr.addr, align 8, !tbaa !1
  %13 = load i32*, i32** %BytesNeeded.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !19
  %call4 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %11, i8* %12, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #6
  store %struct._cms_io_handler* %call4, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %cmp5 = icmp eq %struct._cms_io_handler* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %16 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call8 = call i32 @cmsSaveProfileToIOhandler(i8* %16, %struct._cms_io_handler* %17) #6
  %cmp9 = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, i32* %rc, align 4, !tbaa !19
  %18 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call10 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %18) #6
  %19 = load i32, i32* %rc, align 4, !tbaa !19
  %and = and i32 %19, %call10
  store i32 %and, i32* %rc, align 4, !tbaa !19
  %20 = load i32, i32* %rc, align 4, !tbaa !19
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %21 = bitcast %struct._cmsContext_struct** %ContextID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @_cmsDestroyMutex(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @cmsReadTag(i8* %hProfile, i32 %sig) #0 {
entry:
  %retval = alloca i8*, align 8
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %io = alloca %struct._cms_io_handler*, align 8
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  %TagDescriptor = alloca %struct.cmsTagDescriptor*, align 8
  %BaseType = alloca i32, align 4
  %Offset = alloca i32, align 4
  %TagSize = alloca i32, align 4
  %ElemCount = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %String = alloca [5 x i8], align 1
  %String58 = alloca [5 x i8], align 1
  %String66 = alloca [5 x i8], align 1
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 0
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  store %struct._cms_io_handler* %5, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %6 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #1
  %8 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %BaseType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %ElemCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 1
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %16, i32 0, i32 23
  %17 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  %call = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %15, i8* %17) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %19 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call1 = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %18, i32 %19, i32 1) #6
  store i32 %call1, i32* %n, align 4, !tbaa !19
  %20 = load i32, i32* %n, align 4, !tbaa !19
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %Error

if.end.3:                                         ; preds = %if.end
  %21 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %22, i32 0, i32 20
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool4 = icmp ne i8* %23, null
  br i1 %tobool4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end.3
  %24 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom6 = sext i32 %24 to i64
  %25 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %25, i32 0, i32 19
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom6
  %26 = load i32, i32* %arrayidx7, align 4, !tbaa !19
  %tobool8 = icmp ne i32 %26, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  br label %Error

if.end.10:                                        ; preds = %if.then.5
  %27 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID11 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %27, i32 0, i32 1
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID11, align 8, !tbaa !27
  %29 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex12 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %29, i32 0, i32 23
  %30 = load i8*, i8** %UsrMutex12, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %28, i8* %30) #6
  %31 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom13 = sext i32 %31 to i64
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs14 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %32, i32 0, i32 20
  %arrayidx15 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs14, i32 0, i64 %idxprom13
  %33 = load i8*, i8** %arrayidx15, align 8, !tbaa !1
  store i8* %33, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.3
  %34 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom17 = sext i32 %34 to i64
  %35 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %35, i32 0, i32 18
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom17
  %36 = load i32, i32* %arrayidx18, align 4, !tbaa !19
  store i32 %36, i32* %Offset, align 4, !tbaa !19
  %37 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom19 = sext i32 %37 to i64
  %38 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %38, i32 0, i32 17
  %arrayidx20 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom19
  %39 = load i32, i32* %arrayidx20, align 4, !tbaa !19
  store i32 %39, i32* %TagSize, align 4, !tbaa !19
  %40 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %40, i32 0, i32 6
  %41 = load i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %42 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %43 = load i32, i32* %Offset, align 4, !tbaa !19
  %call21 = call i32 %41(%struct._cms_io_handler* %42, i32 %43) #6
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.16
  br label %Error

if.end.24:                                        ; preds = %if.end.16
  %44 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID25 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %44, i32 0, i32 1
  %45 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID25, align 8, !tbaa !27
  %46 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call26 = call %struct.cmsTagDescriptor* @_cmsGetTagDescriptor(%struct._cmsContext_struct* %45, i32 %46) #6
  store %struct.cmsTagDescriptor* %call26, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %47 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.cmsTagDescriptor* %47, null
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.24
  %48 = bitcast [5 x i8]* %String to i8*
  call void @llvm.lifetime.start(i64 5, i8* %48) #1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %String, i32 0, i32 0
  %49 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay, i32 %49) #6
  %50 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID29 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %50, i32 0, i32 1
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID29, align 8, !tbaa !27
  %arraydecay30 = getelementptr inbounds [5 x i8], [5 x i8]* %String, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %51, i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay30) #6
  store i32 2, i32* %cleanup.dest.slot
  %52 = bitcast [5 x i8]* %String to i8*
  call void @llvm.lifetime.end(i64 5, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup [
    i32 2, label %Error
  ]

if.end.31:                                        ; preds = %if.end.24
  %53 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %call32 = call i32 @_cmsReadTypeBase(%struct._cms_io_handler* %53) #6
  store i32 %call32, i32* %BaseType, align 4, !tbaa !13
  %54 = load i32, i32* %BaseType, align 4, !tbaa !13
  %cmp33 = icmp eq i32 %54, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  br label %Error

if.end.35:                                        ; preds = %if.end.31
  %55 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %56 = load i32, i32* %BaseType, align 4, !tbaa !13
  %call36 = call i32 @IsTypeSupported(%struct.cmsTagDescriptor* %55, i32 %56) #6
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  br label %Error

if.end.39:                                        ; preds = %if.end.35
  %57 = load i32, i32* %TagSize, align 4, !tbaa !19
  %sub = sub i32 %57, 8
  store i32 %sub, i32* %TagSize, align 4, !tbaa !19
  %58 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID40 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %58, i32 0, i32 1
  %59 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID40, align 8, !tbaa !27
  %60 = load i32, i32* %BaseType, align 4, !tbaa !13
  %call41 = call %struct._cms_typehandler_struct* @_cmsGetTagTypeHandler(%struct._cmsContext_struct* %59, i32 %60) #6
  store %struct._cms_typehandler_struct* %call41, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %61 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp42 = icmp eq %struct._cms_typehandler_struct* %61, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  br label %Error

if.end.44:                                        ; preds = %if.end.39
  %62 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %63 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %64 = bitcast %struct._cms_typehandler_struct* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 56, i32 8, i1 false), !tbaa.struct !73
  %65 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %66 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom45 = sext i32 %66 to i64
  %67 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %67, i32 0, i32 21
  %arrayidx46 = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom45
  store %struct._cms_typehandler_struct* %65, %struct._cms_typehandler_struct** %arrayidx46, align 8, !tbaa !1
  %68 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID47 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %68, i32 0, i32 1
  %69 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID47, align 8, !tbaa !27
  %ContextID48 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %69, %struct._cmsContext_struct** %ContextID48, align 8, !tbaa !74
  %70 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %70, i32 0, i32 3
  %71 = load i32, i32* %Version, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %71, i32* %ICCVersion, align 4, !tbaa !76
  %ReadPtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 1
  %72 = load i8* (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i32*, i32)*, i8* (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i32*, i32)** %ReadPtr, align 8, !tbaa !83
  %73 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io, align 8, !tbaa !1
  %74 = load i32, i32* %TagSize, align 4, !tbaa !19
  %call49 = call i8* %72(%struct._cms_typehandler_struct* %LocalTypeHandler, %struct._cms_io_handler* %73, i32* %ElemCount, i32 %74) #6
  %75 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom50 = sext i32 %75 to i64
  %76 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs51 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %76, i32 0, i32 20
  %arrayidx52 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs51, i32 0, i64 %idxprom50
  store i8* %call49, i8** %arrayidx52, align 8, !tbaa !1
  %77 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom53 = sext i32 %77 to i64
  %78 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs54 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %78, i32 0, i32 20
  %arrayidx55 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs54, i32 0, i64 %idxprom53
  %79 = load i8*, i8** %arrayidx55, align 8, !tbaa !1
  %cmp56 = icmp eq i8* %79, null
  br i1 %cmp56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.end.44
  %80 = bitcast [5 x i8]* %String58 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %80) #1
  %arraydecay59 = getelementptr inbounds [5 x i8], [5 x i8]* %String58, i32 0, i32 0
  %81 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay59, i32 %81) #6
  %82 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID60 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %82, i32 0, i32 1
  %83 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID60, align 8, !tbaa !27
  %arraydecay61 = getelementptr inbounds [5 x i8], [5 x i8]* %String58, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %83, i32 12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay61) #6
  store i32 2, i32* %cleanup.dest.slot
  %84 = bitcast [5 x i8]* %String58 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %84) #1
  %cleanup.dest77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest77, label %cleanup [
    i32 2, label %Error
  ]

if.end.62:                                        ; preds = %if.end.44
  %85 = load i32, i32* %ElemCount, align 4, !tbaa !19
  %86 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %ElemCount63 = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %86, i32 0, i32 0
  %87 = load i32, i32* %ElemCount63, align 4, !tbaa !82
  %cmp64 = icmp ult i32 %85, %87
  br i1 %cmp64, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.62
  %88 = bitcast [5 x i8]* %String66 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %88) #1
  %arraydecay67 = getelementptr inbounds [5 x i8], [5 x i8]* %String66, i32 0, i32 0
  %89 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay67, i32 %89) #6
  %90 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID68 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %90, i32 0, i32 1
  %91 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID68, align 8, !tbaa !27
  %arraydecay69 = getelementptr inbounds [5 x i8], [5 x i8]* %String66, i32 0, i32 0
  %92 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %ElemCount70 = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %92, i32 0, i32 0
  %93 = load i32, i32* %ElemCount70, align 4, !tbaa !82
  %94 = load i32, i32* %ElemCount, align 4, !tbaa !19
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %91, i32 12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay69, i32 %93, i32 %94) #6
  %95 = bitcast [5 x i8]* %String66 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %95) #1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.end.62
  %96 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID72 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %96, i32 0, i32 1
  %97 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID72, align 8, !tbaa !27
  %98 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex73 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %98, i32 0, i32 23
  %99 = load i8*, i8** %UsrMutex73, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %97, i8* %99) #6
  %100 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom74 = sext i32 %100 to i64
  %101 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs75 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %101, i32 0, i32 20
  %arrayidx76 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs75, i32 0, i64 %idxprom74
  %102 = load i8*, i8** %arrayidx76, align 8, !tbaa !1
  store i8* %102, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.57, %if.then.28, %if.then.43, %if.then.38, %if.then.34, %if.then.23, %if.then.9, %if.then.2
  %103 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID78 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %103, i32 0, i32 1
  %104 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID78, align 8, !tbaa !27
  %105 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex79 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %105, i32 0, i32 23
  %106 = load i8*, i8** %UsrMutex79, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %104, i8* %106) #6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.then.57, %if.then.28, %if.end.71, %if.end.10, %if.then
  %107 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %ElemCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %BaseType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %113) #1
  %114 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct._cms_io_handler** %io to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = load i8*, i8** %retval
  ret i8* %117
}

declare i32 @_cmsLockMutex(%struct._cmsContext_struct*, i8*) #2

declare void @_cmsUnlockMutex(%struct._cmsContext_struct*, i8*) #2

declare %struct.cmsTagDescriptor* @_cmsGetTagDescriptor(%struct._cmsContext_struct*, i32) #2

declare void @_cmsTagSignature2String(i8*, i32) #2

declare i32 @_cmsReadTypeBase(%struct._cms_io_handler*) #2

; Function Attrs: nounwind uwtable
define internal i32 @IsTypeSupported(%struct.cmsTagDescriptor* %TagDescriptor, i32 %Type) #0 {
entry:
  %retval = alloca i32, align 4
  %TagDescriptor.addr = alloca %struct.cmsTagDescriptor*, align 8
  %Type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nMaxTypes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsTagDescriptor* %TagDescriptor, %struct.cmsTagDescriptor** %TagDescriptor.addr, align 8, !tbaa !1
  store i32 %Type, i32* %Type.addr, align 4, !tbaa !13
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nMaxTypes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor.addr, align 8, !tbaa !1
  %nSupportedTypes = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %2, i32 0, i32 1
  %3 = load i32, i32* %nSupportedTypes, align 4, !tbaa !84
  store i32 %3, i32* %nMaxTypes, align 4, !tbaa !19
  %4 = load i32, i32* %nMaxTypes, align 4, !tbaa !19
  %cmp = icmp uge i32 %4, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 20, i32* %nMaxTypes, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %6 = load i32, i32* %nMaxTypes, align 4, !tbaa !19
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %Type.addr, align 4, !tbaa !13
  %8 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor.addr, align 8, !tbaa !1
  %SupportedTypes = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %SupportedTypes, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %cmp2 = icmp eq i32 %7, %10
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %11 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.3
  %12 = bitcast i32* %nMaxTypes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct._cms_typehandler_struct* @_cmsGetTagTypeHandler(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsGetTagTrueType(i8* %hProfile, i32 %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %6 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %5, i32 %6, i32 1) #6
  store i32 %call, i32* %n, align 4, !tbaa !19
  %7 = load i32, i32* %n, align 4, !tbaa !19
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %n, align 4, !tbaa !19
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %9, i32 0, i32 21
  %arrayidx = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom
  %10 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %arrayidx, align 8, !tbaa !1
  store %struct._cms_typehandler_struct* %10, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %11 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %Signature = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %11, i32 0, i32 0
  %12 = load i32, i32* %Signature, align 4, !tbaa !80
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @cmsWriteTag(i8* %hProfile, i32 %sig, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  %TagDescriptor = alloca %struct.cmsTagDescriptor*, align 8
  %Type = alloca i32, align 4
  %i = alloca i32, align 4
  %Version = alloca double, align 8
  %TypeString = alloca [5 x i8], align 1
  %SigString = alloca [5 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._cms_typehandler_struct* null, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %4 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.cmsTagDescriptor* null, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %6 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast double* %Version to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [5 x i8]* %TypeString to i8*
  call void @llvm.lifetime.start(i64 5, i8* %9) #1
  %10 = bitcast [5 x i8]* %SigString to i8*
  call void @llvm.lifetime.start(i64 5, i8* %10) #1
  %11 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %11, i32 0, i32 1
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %13 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %13, i32 0, i32 23
  %14 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  %call = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %12, i8* %14) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %15, null
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %17 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call2 = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %16, i32 %17, i32 0) #6
  store i32 %call2, i32* %i, align 4, !tbaa !19
  %18 = load i32, i32* %i, align 4, !tbaa !19
  %cmp3 = icmp sge i32 %18, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then.1
  %19 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !19
  call void @_cmsDeleteTagByPos(%struct._cms_iccprofile_struct* %19, i32 %20) #6
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %22, i32 0, i32 15
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !13
  %23 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID5 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %23, i32 0, i32 1
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID5, align 8, !tbaa !27
  %25 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex6 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %25, i32 0, i32 23
  %26 = load i8*, i8** %UsrMutex6, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %24, i8* %26) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.1
  br label %Error

if.end.8:                                         ; preds = %if.end
  %27 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %28 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call9 = call i32 @_cmsNewTag(%struct._cms_iccprofile_struct* %27, i32 %28, i32* %i) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %Error

if.end.12:                                        ; preds = %if.end.8
  %29 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom13 = sext i32 %29 to i64
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 19
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4, !tbaa !19
  %31 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom15 = sext i32 %31 to i64
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %32, i32 0, i32 16
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4, !tbaa !13
  %33 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID17 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %33, i32 0, i32 1
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !27
  %35 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call18 = call %struct.cmsTagDescriptor* @_cmsGetTagDescriptor(%struct._cmsContext_struct* %34, i32 %35) #6
  store %struct.cmsTagDescriptor* %call18, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %36 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.cmsTagDescriptor* %36, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.12
  %37 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID21 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %37, i32 0, i32 1
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID21, align 8, !tbaa !27
  %39 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %38, i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i32 %39) #6
  br label %Error

if.end.22:                                        ; preds = %if.end.12
  %40 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call23 = call double @cmsGetProfileVersion(i8* %40) #6
  store double %call23, double* %Version, align 8, !tbaa !71
  %41 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %DecideType = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %41, i32 0, i32 3
  %42 = load i32 (double, i8*)*, i32 (double, i8*)** %DecideType, align 8, !tbaa !78
  %cmp24 = icmp ne i32 (double, i8*)* %42, null
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %43 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %DecideType26 = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %43, i32 0, i32 3
  %44 = load i32 (double, i8*)*, i32 (double, i8*)** %DecideType26, align 8, !tbaa !78
  %45 = load double, double* %Version, align 8, !tbaa !71
  %46 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call27 = call i32 %44(double %45, i8* %46) #6
  store i32 %call27, i32* %Type, align 4, !tbaa !13
  br label %if.end.29

if.else:                                          ; preds = %if.end.22
  %47 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %SupportedTypes = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %47, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [20 x i32], [20 x i32]* %SupportedTypes, i32 0, i64 0
  %48 = load i32, i32* %arrayidx28, align 4, !tbaa !13
  store i32 %48, i32* %Type, align 4, !tbaa !13
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.25
  %49 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %50 = load i32, i32* %Type, align 4, !tbaa !13
  %call30 = call i32 @IsTypeSupported(%struct.cmsTagDescriptor* %49, i32 %50) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %51 = load i32, i32* %Type, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay, i32 %51) #6
  %arraydecay33 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  %52 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay33, i32 %52) #6
  %53 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID34 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %53, i32 0, i32 1
  %54 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID34, align 8, !tbaa !27
  %arraydecay35 = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %54, i32 8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay35, i8* %arraydecay36) #6
  br label %Error

if.end.37:                                        ; preds = %if.end.29
  %55 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID38 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %55, i32 0, i32 1
  %56 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID38, align 8, !tbaa !27
  %57 = load i32, i32* %Type, align 4, !tbaa !13
  %call39 = call %struct._cms_typehandler_struct* @_cmsGetTagTypeHandler(%struct._cmsContext_struct* %56, i32 %57) #6
  store %struct._cms_typehandler_struct* %call39, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %58 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp40 = icmp eq %struct._cms_typehandler_struct* %58, null
  br i1 %cmp40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.end.37
  %arraydecay42 = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %59 = load i32, i32* %Type, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay42, i32 %59) #6
  %arraydecay43 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  %60 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay43, i32 %60) #6
  %61 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID44 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %61, i32 0, i32 1
  %62 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID44, align 8, !tbaa !27
  %arraydecay45 = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %62, i32 8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay45, i8* %arraydecay46) #6
  br label %Error

if.end.47:                                        ; preds = %if.end.37
  %63 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %64 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom48 = sext i32 %64 to i64
  %65 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %65, i32 0, i32 21
  %arrayidx49 = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom48
  store %struct._cms_typehandler_struct* %63, %struct._cms_typehandler_struct** %arrayidx49, align 8, !tbaa !1
  %66 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %67 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom50 = sext i32 %67 to i64
  %68 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagNames51 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %68, i32 0, i32 15
  %arrayidx52 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames51, i32 0, i64 %idxprom50
  store i32 %66, i32* %arrayidx52, align 4, !tbaa !13
  %69 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom53 = sext i32 %69 to i64
  %70 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %70, i32 0, i32 17
  %arrayidx54 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4, !tbaa !19
  %71 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom55 = sext i32 %71 to i64
  %72 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %72, i32 0, i32 18
  %arrayidx56 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom55
  store i32 0, i32* %arrayidx56, align 4, !tbaa !19
  %73 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %74 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %75 = bitcast %struct._cms_typehandler_struct* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 56, i32 8, i1 false), !tbaa.struct !73
  %76 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID57 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %76, i32 0, i32 1
  %77 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID57, align 8, !tbaa !27
  %ContextID58 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %77, %struct._cmsContext_struct** %ContextID58, align 8, !tbaa !74
  %78 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version59 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %78, i32 0, i32 3
  %79 = load i32, i32* %Version59, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %79, i32* %ICCVersion, align 4, !tbaa !76
  %DupPtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 3
  %80 = load i8* (%struct._cms_typehandler_struct*, i8*, i32)*, i8* (%struct._cms_typehandler_struct*, i8*, i32)** %DupPtr, align 8, !tbaa !85
  %81 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %82 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %ElemCount = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %82, i32 0, i32 0
  %83 = load i32, i32* %ElemCount, align 4, !tbaa !82
  %call60 = call i8* %80(%struct._cms_typehandler_struct* %LocalTypeHandler, i8* %81, i32 %83) #6
  %84 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom61 = sext i32 %84 to i64
  %85 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %85, i32 0, i32 20
  %arrayidx62 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom61
  store i8* %call60, i8** %arrayidx62, align 8, !tbaa !1
  %86 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom63 = sext i32 %86 to i64
  %87 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs64 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %87, i32 0, i32 20
  %arrayidx65 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs64, i32 0, i64 %idxprom63
  %88 = load i8*, i8** %arrayidx65, align 8, !tbaa !1
  %cmp66 = icmp eq i8* %88, null
  br i1 %cmp66, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %if.end.47
  %arraydecay68 = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %89 = load i32, i32* %Type, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay68, i32 %89) #6
  %arraydecay69 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  %90 = load i32, i32* %sig.addr, align 4, !tbaa !13
  call void @_cmsTagSignature2String(i8* %arraydecay69, i32 %90) #6
  %91 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID70 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %91, i32 0, i32 1
  %92 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID70, align 8, !tbaa !27
  %arraydecay71 = getelementptr inbounds [5 x i8], [5 x i8]* %TypeString, i32 0, i32 0
  %arraydecay72 = getelementptr inbounds [5 x i8], [5 x i8]* %SigString, i32 0, i32 0
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %92, i32 12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %arraydecay71, i8* %arraydecay72) #6
  br label %Error

if.end.73:                                        ; preds = %if.end.47
  %93 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID74 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %93, i32 0, i32 1
  %94 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID74, align 8, !tbaa !27
  %95 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex75 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %95, i32 0, i32 23
  %96 = load i8*, i8** %UsrMutex75, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %94, i8* %96) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.67, %if.then.41, %if.then.32, %if.then.20, %if.then.11, %if.end.7
  %97 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID76 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %97, i32 0, i32 1
  %98 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID76, align 8, !tbaa !27
  %99 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex77 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %99, i32 0, i32 23
  %100 = load i8*, i8** %UsrMutex77, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %98, i8* %100) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.73, %if.then.4, %if.then
  %101 = bitcast [5 x i8]* %SigString to i8*
  call void @llvm.lifetime.end(i64 5, i8* %101) #1
  %102 = bitcast [5 x i8]* %TypeString to i8*
  call void @llvm.lifetime.end(i64 5, i8* %102) #1
  %103 = bitcast double* %Version to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %Type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %107) #1
  %108 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal void @_cmsDeleteTagByPos(%struct._cms_iccprofile_struct* %Icc, i32 %i) #0 {
entry:
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %i.addr = alloca i32, align 4
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !19
  %0 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct._cms_iccprofile_struct* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 560, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__._cmsDeleteTagByPos, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i32, i32* %i.addr, align 4, !tbaa !19
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 561, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__._cmsDeleteTagByPos, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %5, i32 0, i32 20
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %6, null
  br i1 %cmp5, label %if.then, label %if.end.25

if.then:                                          ; preds = %cond.end.4
  %7 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 19
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4, !tbaa !19
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 1
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %12 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagPtrs10 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %13, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs10, i32 0, i64 %idxprom9
  %14 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  call void @_cmsFree(%struct._cmsContext_struct* %11, i8* %14) #6
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %15 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %17, i32 0, i32 21
  %arrayidx13 = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom12
  %18 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %arrayidx13, align 8, !tbaa !1
  store %struct._cms_typehandler_struct* %18, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %19 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp14 = icmp ne %struct._cms_typehandler_struct* %19, null
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %20 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %20) #1
  %21 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %22 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %23 = bitcast %struct._cms_typehandler_struct* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 56, i32 8, i1 false), !tbaa.struct !73
  %24 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID16 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %24, i32 0, i32 1
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID16, align 8, !tbaa !27
  %ContextID17 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %25, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !74
  %26 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %26, i32 0, i32 3
  %27 = load i32, i32* %Version, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %27, i32* %ICCVersion, align 4, !tbaa !76
  %FreePtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 4
  %28 = load void (%struct._cms_typehandler_struct*, i8*)*, void (%struct._cms_typehandler_struct*, i8*)** %FreePtr, align 8, !tbaa !77
  %29 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom18 = sext i32 %29 to i64
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagPtrs19 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 20
  %arrayidx20 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs19, i32 0, i64 %idxprom18
  %31 = load i8*, i8** %arrayidx20, align 8, !tbaa !1
  call void %28(%struct._cms_typehandler_struct* %LocalTypeHandler, i8* %31) #6
  %32 = load i32, i32* %i.addr, align 4, !tbaa !19
  %idxprom21 = sext i32 %32 to i64
  %33 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagPtrs22 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %33, i32 0, i32 20
  %arrayidx23 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs22, i32 0, i64 %idxprom21
  store i8* null, i8** %arrayidx23, align 8, !tbaa !1
  %34 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %34) #1
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  %35 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %cond.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_cmsNewTag(%struct._cms_iccprofile_struct* %Icc, i32 %sig, i32* %NewPos) #0 {
entry:
  %retval = alloca i32, align 4
  %Icc.addr = alloca %struct._cms_iccprofile_struct*, align 8
  %sig.addr = alloca i32, align 4
  %NewPos.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_iccprofile_struct* %Icc, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i32* %NewPos, i32** %NewPos.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %1, i32 %2, i32 0) #6
  store i32 %call, i32* %i, align 4, !tbaa !19
  %3 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %5 = load i32, i32* %i, align 4, !tbaa !19
  call void @_cmsDeleteTagByPos(%struct._cms_iccprofile_struct* %4, i32 %5) #6
  %6 = load i32, i32* %i, align 4, !tbaa !19
  %7 = load i32*, i32** %NewPos.addr, align 8, !tbaa !1
  store i32 %6, i32* %7, align 4, !tbaa !19
  br label %if.end.5

if.else:                                          ; preds = %entry
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 14
  %9 = load i32, i32* %TagCount, align 4, !tbaa !30
  %cmp1 = icmp uge i32 %9, 100
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 1
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %11, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 100) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount3 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %12, i32 0, i32 14
  %13 = load i32, i32* %TagCount3, align 4, !tbaa !30
  %14 = load i32*, i32** %NewPos.addr, align 8, !tbaa !1
  store i32 %13, i32* %14, align 4, !tbaa !19
  %15 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc.addr, align 8, !tbaa !1
  %TagCount4 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %15, i32 0, i32 14
  %16 = load i32, i32* %TagCount4, align 4, !tbaa !30
  %inc = add i32 %16, 1
  store i32 %inc, i32* %TagCount4, align 4, !tbaa !30
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.2
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @cmsReadRawTag(i8* %hProfile, i32 %sig, i8* %data, i32 %BufferSize) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %BufferSize.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %Object = alloca i8*, align 8
  %i = alloca i32, align 4
  %MemIO = alloca %struct._cms_io_handler*, align 8
  %TypeHandler = alloca %struct._cms_typehandler_struct*, align 8
  %LocalTypeHandler = alloca %struct._cms_typehandler_struct, align 8
  %TagDescriptor = alloca %struct.cmsTagDescriptor*, align 8
  %rc = alloca i32, align 4
  %Offset = alloca i32, align 4
  %TagSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %BufferSize, i32* %BufferSize.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i8** %Object to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct._cms_io_handler** %MemIO to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct._cms_typehandler_struct* null, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %7 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #1
  %8 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.cmsTagDescriptor* null, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %9 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %12, i32 0, i32 1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %14 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %14, i32 0, i32 23
  %15 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  %call = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %13, i8* %15) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %17 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call1 = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %16, i32 %17, i32 1) #6
  store i32 %call1, i32* %i, align 4, !tbaa !19
  %18 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %Error

if.end.3:                                         ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %20, i32 0, i32 20
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %21, null
  br i1 %cmp4, label %if.then.5, label %if.end.34

if.then.5:                                        ; preds = %if.end.3
  %22 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom6 = sext i32 %22 to i64
  %23 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %23, i32 0, i32 18
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom6
  %24 = load i32, i32* %arrayidx7, align 4, !tbaa !19
  store i32 %24, i32* %Offset, align 4, !tbaa !19
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom8 = sext i32 %25 to i64
  %26 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %26, i32 0, i32 17
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom8
  %27 = load i32, i32* %arrayidx9, align 4, !tbaa !19
  store i32 %27, i32* %TagSize, align 4, !tbaa !19
  %28 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp10 = icmp ne i8* %28, null
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %if.then.5
  %29 = load i32, i32* %BufferSize.addr, align 4, !tbaa !19
  %30 = load i32, i32* %TagSize, align 4, !tbaa !19
  %cmp12 = icmp ult i32 %29, %30
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  %31 = load i32, i32* %BufferSize.addr, align 4, !tbaa !19
  store i32 %31, i32* %TagSize, align 4, !tbaa !19
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %32, i32 0, i32 0
  %33 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler, align 8, !tbaa !33
  %Seek = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %33, i32 0, i32 6
  %34 = load i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*, i32)** %Seek, align 8, !tbaa !15
  %35 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler15 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %35, i32 0, i32 0
  %36 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler15, align 8, !tbaa !33
  %37 = load i32, i32* %Offset, align 4, !tbaa !19
  %call16 = call i32 %34(%struct._cms_io_handler* %36, i32 %37) #6
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.14
  br label %Error

if.end.19:                                        ; preds = %if.end.14
  %38 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler20 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %38, i32 0, i32 0
  %39 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler20, align 8, !tbaa !33
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %39, i32 0, i32 5
  %40 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !14
  %41 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %IOhandler21 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %41, i32 0, i32 0
  %42 = load %struct._cms_io_handler*, %struct._cms_io_handler** %IOhandler21, align 8, !tbaa !33
  %43 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %44 = load i32, i32* %TagSize, align 4, !tbaa !19
  %call22 = call i32 %40(%struct._cms_io_handler* %42, i8* %43, i32 1, i32 %44) #6
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  br label %Error

if.end.25:                                        ; preds = %if.end.19
  %45 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID26 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %45, i32 0, i32 1
  %46 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID26, align 8, !tbaa !27
  %47 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex27 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %47, i32 0, i32 23
  %48 = load i8*, i8** %UsrMutex27, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %46, i8* %48) #6
  %49 = load i32, i32* %TagSize, align 4, !tbaa !19
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.then.5
  %50 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID29 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %50, i32 0, i32 1
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID29, align 8, !tbaa !27
  %52 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex30 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %52, i32 0, i32 23
  %53 = load i8*, i8** %UsrMutex30, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %51, i8* %53) #6
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom31 = sext i32 %54 to i64
  %55 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes32 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %55, i32 0, i32 17
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes32, i32 0, i64 %idxprom31
  %56 = load i32, i32* %arrayidx33, align 4, !tbaa !19
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.3
  %57 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom35 = sext i32 %57 to i64
  %58 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %58, i32 0, i32 19
  %arrayidx36 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom35
  %59 = load i32, i32* %arrayidx36, align 4, !tbaa !19
  %tobool37 = icmp ne i32 %59, 0
  br i1 %tobool37, label %if.then.38, label %if.end.59

if.then.38:                                       ; preds = %if.end.34
  %60 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp39 = icmp ne i8* %60, null
  br i1 %cmp39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %if.then.38
  %61 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom41 = sext i32 %61 to i64
  %62 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes42 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %62, i32 0, i32 17
  %arrayidx43 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes42, i32 0, i64 %idxprom41
  %63 = load i32, i32* %arrayidx43, align 4, !tbaa !19
  store i32 %63, i32* %TagSize, align 4, !tbaa !19
  %64 = load i32, i32* %BufferSize.addr, align 4, !tbaa !19
  %65 = load i32, i32* %TagSize, align 4, !tbaa !19
  %cmp44 = icmp ult i32 %64, %65
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %66 = load i32, i32* %BufferSize.addr, align 4, !tbaa !19
  store i32 %66, i32* %TagSize, align 4, !tbaa !19
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.40
  %67 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %68 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom47 = sext i32 %68 to i64
  %69 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs48 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %69, i32 0, i32 20
  %arrayidx49 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs48, i32 0, i64 %idxprom47
  %70 = load i8*, i8** %arrayidx49, align 8, !tbaa !1
  %71 = load i32, i32* %TagSize, align 4, !tbaa !19
  %conv = zext i32 %71 to i64
  %call50 = call i8* @memmove(i8* %67, i8* %70, i64 %conv) #8
  %72 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID51 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %72, i32 0, i32 1
  %73 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID51, align 8, !tbaa !27
  %74 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex52 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %74, i32 0, i32 23
  %75 = load i8*, i8** %UsrMutex52, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %73, i8* %75) #6
  %76 = load i32, i32* %TagSize, align 4, !tbaa !19
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.38
  %77 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID54 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %77, i32 0, i32 1
  %78 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID54, align 8, !tbaa !27
  %79 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex55 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %79, i32 0, i32 23
  %80 = load i8*, i8** %UsrMutex55, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %78, i8* %80) #6
  %81 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom56 = sext i32 %81 to i64
  %82 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes57 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %82, i32 0, i32 17
  %arrayidx58 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes57, i32 0, i64 %idxprom56
  %83 = load i32, i32* %arrayidx58, align 4, !tbaa !19
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.34
  %84 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID60 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %84, i32 0, i32 1
  %85 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID60, align 8, !tbaa !27
  %86 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex61 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %86, i32 0, i32 23
  %87 = load i8*, i8** %UsrMutex61, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %85, i8* %87) #6
  %88 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %89 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call62 = call i8* @cmsReadTag(i8* %88, i32 %89) #6
  store i8* %call62, i8** %Object, align 8, !tbaa !1
  %90 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID63 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %90, i32 0, i32 1
  %91 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID63, align 8, !tbaa !27
  %92 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex64 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %92, i32 0, i32 23
  %93 = load i8*, i8** %UsrMutex64, align 8, !tbaa !32
  %call65 = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %91, i8* %93) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.end.59
  %94 = load i8*, i8** %Object, align 8, !tbaa !1
  %cmp69 = icmp eq i8* %94, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.68
  br label %Error

if.end.72:                                        ; preds = %if.end.68
  %95 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %cmp73 = icmp eq i8* %95, null
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %if.end.72
  %96 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call76 = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %96) #6
  %call77 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromNULL(%struct._cmsContext_struct* %call76) #6
  store %struct._cms_io_handler* %call77, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  br label %if.end.80

if.else:                                          ; preds = %if.end.72
  %97 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %call78 = call %struct._cmsContext_struct* @cmsGetProfileContextID(i8* %97) #6
  %98 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %99 = load i32, i32* %BufferSize.addr, align 4, !tbaa !19
  %call79 = call %struct._cms_io_handler* @cmsOpenIOhandlerFromMem(%struct._cmsContext_struct* %call78, i8* %98, i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #6
  store %struct._cms_io_handler* %call79, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.75
  %100 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %cmp81 = icmp eq %struct._cms_io_handler* %100, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  br label %Error

if.end.84:                                        ; preds = %if.end.80
  %101 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom85 = sext i32 %101 to i64
  %102 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagTypeHandlers = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %102, i32 0, i32 21
  %arrayidx86 = getelementptr inbounds [100 x %struct._cms_typehandler_struct*], [100 x %struct._cms_typehandler_struct*]* %TagTypeHandlers, i32 0, i64 %idxprom85
  %103 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %arrayidx86, align 8, !tbaa !1
  store %struct._cms_typehandler_struct* %103, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %104 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID87 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %104, i32 0, i32 1
  %105 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID87, align 8, !tbaa !27
  %106 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call88 = call %struct.cmsTagDescriptor* @_cmsGetTagDescriptor(%struct._cmsContext_struct* %105, i32 %106) #6
  store %struct.cmsTagDescriptor* %call88, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %107 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %cmp89 = icmp eq %struct.cmsTagDescriptor* %107, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.84
  %108 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %call92 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %108) #6
  br label %Error

if.end.93:                                        ; preds = %if.end.84
  %109 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %cmp94 = icmp eq %struct._cms_typehandler_struct* %109, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %Error

if.end.97:                                        ; preds = %if.end.93
  %110 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %111 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  %112 = bitcast %struct._cms_typehandler_struct* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 56, i32 8, i1 false), !tbaa.struct !73
  %113 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID98 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %113, i32 0, i32 1
  %114 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID98, align 8, !tbaa !27
  %ContextID99 = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 5
  store %struct._cmsContext_struct* %114, %struct._cmsContext_struct** %ContextID99, align 8, !tbaa !74
  %115 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %Version = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %115, i32 0, i32 3
  %116 = load i32, i32* %Version, align 4, !tbaa !31
  %ICCVersion = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 6
  store i32 %116, i32* %ICCVersion, align 4, !tbaa !76
  %117 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %118 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %TypeHandler, align 8, !tbaa !1
  %Signature = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %118, i32 0, i32 0
  %119 = load i32, i32* %Signature, align 4, !tbaa !80
  %call100 = call i32 @_cmsWriteTypeBase(%struct._cms_io_handler* %117, i32 %119) #6
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.end.97
  %120 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %call103 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %120) #6
  br label %Error

if.end.104:                                       ; preds = %if.end.97
  %WritePtr = getelementptr inbounds %struct._cms_typehandler_struct, %struct._cms_typehandler_struct* %LocalTypeHandler, i32 0, i32 2
  %121 = load i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)*, i32 (%struct._cms_typehandler_struct*, %struct._cms_io_handler*, i8*, i32)** %WritePtr, align 8, !tbaa !81
  %122 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %123 = load i8*, i8** %Object, align 8, !tbaa !1
  %124 = load %struct.cmsTagDescriptor*, %struct.cmsTagDescriptor** %TagDescriptor, align 8, !tbaa !1
  %ElemCount = getelementptr inbounds %struct.cmsTagDescriptor, %struct.cmsTagDescriptor* %124, i32 0, i32 0
  %125 = load i32, i32* %ElemCount, align 4, !tbaa !82
  %call105 = call i32 %121(%struct._cms_typehandler_struct* %LocalTypeHandler, %struct._cms_io_handler* %122, i8* %123, i32 %125) #6
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.end.104
  %126 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %call108 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %126) #6
  br label %Error

if.end.109:                                       ; preds = %if.end.104
  %127 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %127, i32 0, i32 8
  %128 = load i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !17
  %129 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %call110 = call i32 %128(%struct._cms_io_handler* %129) #6
  store i32 %call110, i32* %rc, align 4, !tbaa !19
  %130 = load %struct._cms_io_handler*, %struct._cms_io_handler** %MemIO, align 8, !tbaa !1
  %call111 = call i32 @cmsCloseIOhandler(%struct._cms_io_handler* %130) #6
  %131 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID112 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %131, i32 0, i32 1
  %132 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID112, align 8, !tbaa !27
  %133 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex113 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %133, i32 0, i32 23
  %134 = load i8*, i8** %UsrMutex113, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %132, i8* %134) #6
  %135 = load i32, i32* %rc, align 4, !tbaa !19
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.107, %if.then.102, %if.then.96, %if.then.91, %if.then.83, %if.then.71, %if.then.24, %if.then.18, %if.then.2
  %136 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID114 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %136, i32 0, i32 1
  %137 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID114, align 8, !tbaa !27
  %138 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex115 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %138, i32 0, i32 23
  %139 = load i8*, i8** %UsrMutex115, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %137, i8* %139) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %if.end.109, %if.then.67, %if.end.53, %if.end.46, %if.end.28, %if.end.25, %if.then
  %140 = bitcast i32* %TagSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast %struct.cmsTagDescriptor** %TagDescriptor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast %struct._cms_typehandler_struct* %LocalTypeHandler to i8*
  call void @llvm.lifetime.end(i64 56, i8* %144) #1
  %145 = bitcast %struct._cms_typehandler_struct** %TypeHandler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct._cms_io_handler** %MemIO to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i8** %Object to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = load i32, i32* %retval
  ret i32 %150
}

declare i32 @_cmsWriteTypeBase(%struct._cms_io_handler*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmsWriteRawTag(i8* %hProfile, i32 %sig, i8* %data, i32 %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %Size, i32* %Size.addr, align 4, !tbaa !19
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 23
  %7 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  %call = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %5, i8* %7) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %9 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call1 = call i32 @_cmsNewTag(%struct._cms_iccprofile_struct* %8, i32 %9, i32* %i) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 1
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !27
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex5 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %12, i32 0, i32 23
  %13 = load i8*, i8** %UsrMutex5, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %11, i8* %13) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %15, i32 0, i32 19
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4, !tbaa !19
  %16 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %18, i32 0, i32 15
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom7
  store i32 %16, i32* %arrayidx8, align 4, !tbaa !13
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %20, i32 0, i32 16
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx10, align 4, !tbaa !13
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID11 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 1
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID11, align 8, !tbaa !27
  %23 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %24 = load i32, i32* %Size.addr, align 4, !tbaa !19
  %call12 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %22, i8* %23, i32 %24) #6
  %25 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %26, i32 0, i32 20
  %arrayidx14 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom13
  store i8* %call12, i8** %arrayidx14, align 8, !tbaa !1
  %27 = load i32, i32* %Size.addr, align 4, !tbaa !19
  %28 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %29, i32 0, i32 17
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom15
  store i32 %27, i32* %arrayidx16, align 4, !tbaa !19
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID17 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 1
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !27
  %32 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex18 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %32, i32 0, i32 23
  %33 = load i8*, i8** %UsrMutex18, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %31, i8* %33) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.3, %if.then
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i8* @_cmsDupMem(%struct._cmsContext_struct*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmsLinkTag(i8* %hProfile, i32 %sig, i32 %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  store i32 %dest, i32* %dest.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %4, i32 0, i32 1
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !27
  %6 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %6, i32 0, i32 23
  %7 = load i8*, i8** %UsrMutex, align 8, !tbaa !32
  %call = call i32 @_cmsLockMutex(%struct._cmsContext_struct* %5, i8* %7) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %9 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call1 = call i32 @_cmsNewTag(%struct._cms_iccprofile_struct* %8, i32 %9, i32* %i) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %10, i32 0, i32 1
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !27
  %12 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex5 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %12, i32 0, i32 23
  %13 = load i8*, i8** %UsrMutex5, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %11, i8* %13) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSaveAsRaw = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %15, i32 0, i32 19
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagSaveAsRaw, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !19
  %16 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagNames = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %18, i32 0, i32 15
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %TagNames, i32 0, i64 %idxprom7
  store i32 %16, i32* %arrayidx8, align 4, !tbaa !13
  %19 = load i32, i32* %dest.addr, align 4, !tbaa !13
  %20 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %21, i32 0, i32 16
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom9
  store i32 %19, i32* %arrayidx10, align 4, !tbaa !13
  %22 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagPtrs = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %23, i32 0, i32 20
  %arrayidx12 = getelementptr inbounds [100 x i8*], [100 x i8*]* %TagPtrs, i32 0, i64 %idxprom11
  store i8* null, i8** %arrayidx12, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagSizes = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %25, i32 0, i32 17
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* %TagSizes, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4, !tbaa !19
  %26 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom15 = sext i32 %26 to i64
  %27 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagOffsets = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %27, i32 0, i32 18
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* %TagOffsets, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4, !tbaa !19
  %28 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %ContextID17 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %28, i32 0, i32 1
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !27
  %30 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %UsrMutex18 = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %30, i32 0, i32 23
  %31 = load i8*, i8** %UsrMutex18, align 8, !tbaa !32
  call void @_cmsUnlockMutex(%struct._cmsContext_struct* %29, i8* %31) #6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.3, %if.then
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @cmsTagLinkedTo(i8* %hProfile, i32 %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca i8*, align 8
  %sig.addr = alloca i32, align 4
  %Icc = alloca %struct._cms_iccprofile_struct*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %hProfile, i8** %hProfile.addr, align 8, !tbaa !1
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !13
  %0 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hProfile.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cms_iccprofile_struct*
  store %struct._cms_iccprofile_struct* %2, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %5 = load i32, i32* %sig.addr, align 4, !tbaa !13
  %call = call i32 @_cmsSearchTag(%struct._cms_iccprofile_struct* %4, i32 %5, i32 0) #6
  store i32 %call, i32* %i, align 4, !tbaa !19
  %6 = load i32, i32* %i, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._cms_iccprofile_struct*, %struct._cms_iccprofile_struct** %Icc, align 8, !tbaa !1
  %TagLinked = getelementptr inbounds %struct._cms_iccprofile_struct, %struct._cms_iccprofile_struct* %8, i32 0, i32 16
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %TagLinked, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !13
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast %struct._cms_iccprofile_struct** %Icc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @_cmsWriteAlignment(%struct._cms_io_handler*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0}
!7 = !{!"int", !3, i64 0}
!8 = !{!9, !2, i64 8}
!9 = !{!"_cms_io_handler", !2, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !3, i64 24, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!10 = !{!9, !2, i64 0}
!11 = !{!9, !7, i64 16}
!12 = !{!9, !7, i64 20}
!13 = !{!3, !3, i64 0}
!14 = !{!9, !2, i64 280}
!15 = !{!9, !2, i64 288}
!16 = !{!9, !2, i64 296}
!17 = !{!9, !2, i64 304}
!18 = !{!9, !2, i64 312}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !2, i64 0}
!21 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!22 = !{!21, !7, i64 16}
!23 = !{!21, !7, i64 8}
!24 = !{!21, !7, i64 12}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !3, i64 0}
!27 = !{!28, !2, i64 8}
!28 = !{!"_cms_iccprofile_struct", !2, i64 0, !2, i64 8, !29, i64 16, !7, i64 72, !3, i64 76, !3, i64 80, !3, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !26, i64 104, !7, i64 112, !3, i64 116, !7, i64 132, !3, i64 136, !3, i64 536, !3, i64 936, !3, i64 1336, !3, i64 1736, !3, i64 2136, !3, i64 2936, !7, i64 3736, !2, i64 3744}
!29 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !26, i64 40, !2, i64 48}
!30 = !{!28, !7, i64 132}
!31 = !{!28, !7, i64 72}
!32 = !{!28, !2, i64 3744}
!33 = !{!28, !2, i64 0}
!34 = !{!35, !7, i64 36}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !36, i64 24, !7, i64 36, !3, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !26, i64 56, !7, i64 64, !38, i64 68, !7, i64 80, !3, i64 84, !3, i64 100}
!36 = !{!"", !37, i64 0, !37, i64 2, !37, i64 4, !37, i64 6, !37, i64 8, !37, i64 10}
!37 = !{!"short", !3, i64 0}
!38 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!39 = !{!35, !3, i64 12}
!40 = !{!28, !3, i64 76}
!41 = !{!35, !3, i64 16}
!42 = !{!28, !3, i64 80}
!43 = !{!35, !3, i64 20}
!44 = !{!28, !3, i64 84}
!45 = !{!35, !7, i64 64}
!46 = !{!28, !7, i64 88}
!47 = !{!35, !7, i64 44}
!48 = !{!28, !7, i64 92}
!49 = !{!35, !7, i64 48}
!50 = !{!28, !7, i64 96}
!51 = !{!35, !7, i64 52}
!52 = !{!28, !7, i64 100}
!53 = !{!35, !7, i64 80}
!54 = !{!28, !7, i64 112}
!55 = !{!35, !7, i64 8}
!56 = !{!35, !7, i64 0}
!57 = !{!58, !7, i64 4}
!58 = !{!"", !3, i64 0, !7, i64 4, !7, i64 8}
!59 = !{!58, !7, i64 8}
!60 = !{!58, !3, i64 0}
!61 = !{!35, !7, i64 4}
!62 = !{!35, !3, i64 40}
!63 = !{!64, !65, i64 0}
!64 = !{!"", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"double", !3, i64 0}
!66 = !{!35, !7, i64 68}
!67 = !{!64, !65, i64 8}
!68 = !{!35, !7, i64 72}
!69 = !{!64, !65, i64 16}
!70 = !{!35, !7, i64 76}
!71 = !{!65, !65, i64 0}
!72 = !{!28, !7, i64 3736}
!73 = !{i64 0, i64 4, !13, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 4, !19}
!74 = !{!75, !2, i64 40}
!75 = !{!"_cms_typehandler_struct", !3, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !7, i64 48}
!76 = !{!75, !7, i64 48}
!77 = !{!75, !2, i64 32}
!78 = !{!79, !2, i64 88}
!79 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !2, i64 88}
!80 = !{!75, !3, i64 0}
!81 = !{!75, !2, i64 16}
!82 = !{!79, !7, i64 0}
!83 = !{!75, !2, i64 8}
!84 = !{!79, !7, i64 4}
!85 = !{!75, !2, i64 24}
