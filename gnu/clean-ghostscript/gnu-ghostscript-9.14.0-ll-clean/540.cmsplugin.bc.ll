; ModuleID = './cmsplugin.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._cmsLogErrorChunkType = type { void (%struct._cmsContext_struct*, i32, i8*)* }
%struct._cmsAlarmCodesChunkType = type { [16 x i16] }
%struct._cmsAdaptationStateChunkType = type { double }
%struct._cmsInterpPluginChunkType = type { void (i16*, i16*, %struct._cms_interp_struc*)* (i32, i32, i32)* }
%struct._cms_interp_struc = type { %struct._cmsContext_struct*, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8*, %union.cmsInterpFunction }
%union.cmsInterpFunction = type { void (i16*, i16*, %struct._cms_interp_struc*)* }
%struct._cmsCurvesPluginChunkType = type { %struct._cmsParametricCurvesCollection_st* }
%struct._cmsParametricCurvesCollection_st = type opaque
%struct._cmsFormattersPluginChunkType = type { %struct._cms_formatters_factory_list* }
%struct._cms_formatters_factory_list = type opaque
%struct._cmsTagTypePluginChunkType = type { %struct._cmsTagTypeLinkedList_st* }
%struct._cmsTagTypeLinkedList_st = type opaque
%struct._cmsTagPluginChunkType = type { %struct._cmsTagLinkedList_st* }
%struct._cmsTagLinkedList_st = type opaque
%struct._cmsIntentsPluginChunkType = type { %struct._cms_intents_list* }
%struct._cms_intents_list = type opaque
%struct._cmsOptimizationPluginChunkType = type { %struct._cmsOptimizationCollection_st* }
%struct._cmsOptimizationCollection_st = type opaque
%struct._cmsTransformPluginChunkType = type { %struct._cmsTransformCollection_st* }
%struct._cmsTransformCollection_st = type opaque
%struct._cmsMutexPluginChunkType = type { i8* (%struct._cmsContext_struct*)*, void (%struct._cmsContext_struct*, i8*)*, i32 (%struct._cmsContext_struct*, i8*)*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cms_io_handler = type { i8*, %struct._cmsContext_struct*, i32, i32, [256 x i8], i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i32)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*, i32, i8*)* }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsEncodedXYZNumber = type { i32, i32, i32 }
%struct.cmsDateTimeNumber = type { i16, i16, i16, i16, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._cmsTagBase = type { i32, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cmsPluginBaseStruct = type { i32, i32, i32, %struct._cmsPluginBaseStruct* }
%struct.cmsPluginMemHandler = type { %struct._cmsPluginBaseStruct, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"(Result != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"./lcms2/src/cmsplugin.c\00", align 1
@__PRETTY_FUNCTION__._cmsAdjustEndianess64 = private unnamed_addr constant [65 x i8] c"void _cmsAdjustEndianess64(cmsUInt64Number *, cmsUInt64Number *)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"(io != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsReadUInt8Number = private unnamed_addr constant [62 x i8] c"cmsBool _cmsReadUInt8Number(cmsIOHANDLER *, cmsUInt8Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadUInt16Number = private unnamed_addr constant [64 x i8] c"cmsBool _cmsReadUInt16Number(cmsIOHANDLER *, cmsUInt16Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadUInt16Array = private unnamed_addr constant [80 x i8] c"cmsBool _cmsReadUInt16Array(cmsIOHANDLER *, cmsUInt32Number, cmsUInt16Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadUInt32Number = private unnamed_addr constant [64 x i8] c"cmsBool _cmsReadUInt32Number(cmsIOHANDLER *, cmsUInt32Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadFloat32Number = private unnamed_addr constant [66 x i8] c"cmsBool _cmsReadFloat32Number(cmsIOHANDLER *, cmsFloat32Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadUInt64Number = private unnamed_addr constant [64 x i8] c"cmsBool _cmsReadUInt64Number(cmsIOHANDLER *, cmsUInt64Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsRead15Fixed16Number = private unnamed_addr constant [68 x i8] c"cmsBool _cmsRead15Fixed16Number(cmsIOHANDLER *, cmsFloat64Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadXYZNumber = private unnamed_addr constant [55 x i8] c"cmsBool _cmsReadXYZNumber(cmsIOHANDLER *, cmsCIEXYZ *)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteUInt8Number = private unnamed_addr constant [61 x i8] c"cmsBool _cmsWriteUInt8Number(cmsIOHANDLER *, cmsUInt8Number)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteUInt16Number = private unnamed_addr constant [63 x i8] c"cmsBool _cmsWriteUInt16Number(cmsIOHANDLER *, cmsUInt16Number)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteUInt16Array = private unnamed_addr constant [87 x i8] c"cmsBool _cmsWriteUInt16Array(cmsIOHANDLER *, cmsUInt32Number, const cmsUInt16Number *)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(Array != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsWriteUInt32Number = private unnamed_addr constant [63 x i8] c"cmsBool _cmsWriteUInt32Number(cmsIOHANDLER *, cmsUInt32Number)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteFloat32Number = private unnamed_addr constant [65 x i8] c"cmsBool _cmsWriteFloat32Number(cmsIOHANDLER *, cmsFloat32Number)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteUInt64Number = private unnamed_addr constant [65 x i8] c"cmsBool _cmsWriteUInt64Number(cmsIOHANDLER *, cmsUInt64Number *)\00", align 1
@__PRETTY_FUNCTION__._cmsWrite15Fixed16Number = private unnamed_addr constant [67 x i8] c"cmsBool _cmsWrite15Fixed16Number(cmsIOHANDLER *, cmsFloat64Number)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteXYZNumber = private unnamed_addr constant [62 x i8] c"cmsBool _cmsWriteXYZNumber(cmsIOHANDLER *, const cmsCIEXYZ *)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"(XYZ != ((void*)0))\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(Dest != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber = private unnamed_addr constant [70 x i8] c"void _cmsDecodeDateTimeNumber(const cmsDateTimeNumber *, struct tm *)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"(Source != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber = private unnamed_addr constant [70 x i8] c"void _cmsEncodeDateTimeNumber(cmsDateTimeNumber *, const struct tm *)\00", align 1
@__PRETTY_FUNCTION__._cmsReadTypeBase = private unnamed_addr constant [53 x i8] c"cmsTagTypeSignature _cmsReadTypeBase(cmsIOHANDLER *)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteTypeBase = private unnamed_addr constant [63 x i8] c"cmsBool _cmsWriteTypeBase(cmsIOHANDLER *, cmsTagTypeSignature)\00", align 1
@__PRETTY_FUNCTION__._cmsReadAlignment = private unnamed_addr constant [42 x i8] c"cmsBool _cmsReadAlignment(cmsIOHANDLER *)\00", align 1
@__PRETTY_FUNCTION__._cmsWriteAlignment = private unnamed_addr constant [43 x i8] c"cmsBool _cmsWriteAlignment(cmsIOHANDLER *)\00", align 1
@__PRETTY_FUNCTION__._cmsIOPrintf = private unnamed_addr constant [56 x i8] c"cmsBool _cmsIOPrintf(cmsIOHANDLER *, const char *, ...)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"(frm != ((void*)0))\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"NULL memory pool on context\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Unrecognized plugin\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"plugin needs Little CMS %d, current version is %d\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Unrecognized plugin type '%X'\00", align 1
@globalContext = internal global %struct._cmsContext_struct { %struct._cmsContext_struct* null, %struct._cmsSubAllocator* null, [15 x i8*] [i8* null, i8* bitcast (%struct._cmsLogErrorChunkType* @_cmsLogErrorChunk to i8*), i8* bitcast (%struct._cmsAlarmCodesChunkType* @_cmsAlarmCodesChunk to i8*), i8* bitcast (%struct._cmsAdaptationStateChunkType* @_cmsAdaptationStateChunk to i8*), i8* bitcast (%struct._cmsMemPluginChunkType* @_cmsMemPluginChunk to i8*), i8* bitcast (%struct._cmsInterpPluginChunkType* @_cmsInterpPluginChunk to i8*), i8* bitcast (%struct._cmsCurvesPluginChunkType* @_cmsCurvesPluginChunk to i8*), i8* bitcast (%struct._cmsFormattersPluginChunkType* @_cmsFormattersPluginChunk to i8*), i8* bitcast (%struct._cmsTagTypePluginChunkType* @_cmsTagTypePluginChunk to i8*), i8* bitcast (%struct._cmsTagPluginChunkType* @_cmsTagPluginChunk to i8*), i8* bitcast (%struct._cmsIntentsPluginChunkType* @_cmsIntentsPluginChunk to i8*), i8* bitcast (%struct._cmsTagTypePluginChunkType* @_cmsMPETypePluginChunk to i8*), i8* bitcast (%struct._cmsOptimizationPluginChunkType* @_cmsOptimizationPluginChunk to i8*), i8* bitcast (%struct._cmsTransformPluginChunkType* @_cmsTransformPluginChunk to i8*), i8* bitcast (%struct._cmsMutexPluginChunkType* @_cmsMutexPluginChunk to i8*)], %struct._cmsMemPluginChunkType zeroinitializer }, align 8
@_cmsContextPoolHead = internal global %struct._cmsContext_struct* null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"Bad context client\00", align 1
@_cmsContextPoolHeadMutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@_cmsLogErrorChunk = external global %struct._cmsLogErrorChunkType, align 8
@_cmsAlarmCodesChunk = external global %struct._cmsAlarmCodesChunkType, align 2
@_cmsAdaptationStateChunk = external global %struct._cmsAdaptationStateChunkType, align 8
@_cmsMemPluginChunk = external global %struct._cmsMemPluginChunkType, align 8
@_cmsInterpPluginChunk = external global %struct._cmsInterpPluginChunkType, align 8
@_cmsCurvesPluginChunk = external global %struct._cmsCurvesPluginChunkType, align 8
@_cmsFormattersPluginChunk = external global %struct._cmsFormattersPluginChunkType, align 8
@_cmsTagTypePluginChunk = external global %struct._cmsTagTypePluginChunkType, align 8
@_cmsTagPluginChunk = external global %struct._cmsTagPluginChunkType, align 8
@_cmsIntentsPluginChunk = external global %struct._cmsIntentsPluginChunkType, align 8
@_cmsMPETypePluginChunk = external global %struct._cmsTagTypePluginChunkType, align 8
@_cmsOptimizationPluginChunk = external global %struct._cmsOptimizationPluginChunkType, align 8
@_cmsTransformPluginChunk = external global %struct._cmsTransformPluginChunkType, align 8
@_cmsMutexPluginChunk = external global %struct._cmsMutexPluginChunkType, align 8

; Function Attrs: nounwind uwtable
define zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %Word) #0 {
entry:
  %Word.addr = alloca i16, align 2
  %pByte = alloca i8*, align 8
  %tmp = alloca i8, align 1
  store i16 %Word, i16* %Word.addr, align 2, !tbaa !1
  %0 = bitcast i8** %pByte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i16* %Word.addr to i8*
  store i8* %1, i8** %pByte, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %tmp) #1
  %2 = load i8*, i8** %pByte, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !7
  store i8 %3, i8* %tmp, align 1, !tbaa !7
  %4 = load i8*, i8** %pByte, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !7
  %6 = load i8*, i8** %pByte, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %5, i8* %arrayidx2, align 1, !tbaa !7
  %7 = load i8, i8* %tmp, align 1, !tbaa !7
  %8 = load i8*, i8** %pByte, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 %7, i8* %arrayidx3, align 1, !tbaa !7
  %9 = load i16, i16* %Word.addr, align 2, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %tmp) #1
  %10 = bitcast i8** %pByte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i16 %9
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @_cmsAdjustEndianess32(i32 %DWord) #0 {
entry:
  %DWord.addr = alloca i32, align 4
  %pByte = alloca i8*, align 8
  %temp1 = alloca i8, align 1
  %temp2 = alloca i8, align 1
  store i32 %DWord, i32* %DWord.addr, align 4, !tbaa !8
  %0 = bitcast i8** %pByte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %DWord.addr to i8*
  store i8* %1, i8** %pByte, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %temp1) #1
  call void @llvm.lifetime.start(i64 1, i8* %temp2) #1
  %2 = load i8*, i8** %pByte, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %pByte, align 8, !tbaa !5
  %3 = load i8, i8* %2, align 1, !tbaa !7
  store i8 %3, i8* %temp1, align 1, !tbaa !7
  %4 = load i8*, i8** %pByte, align 8, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %pByte, align 8, !tbaa !5
  %5 = load i8, i8* %4, align 1, !tbaa !7
  store i8 %5, i8* %temp2, align 1, !tbaa !7
  %6 = load i8*, i8** %pByte, align 8, !tbaa !5
  %7 = load i8, i8* %6, align 1, !tbaa !7
  %8 = load i8*, i8** %pByte, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 -1
  store i8 %7, i8* %add.ptr, align 1, !tbaa !7
  %9 = load i8, i8* %temp2, align 1, !tbaa !7
  %10 = load i8*, i8** %pByte, align 8, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %pByte, align 8, !tbaa !5
  store i8 %9, i8* %10, align 1, !tbaa !7
  %11 = load i8*, i8** %pByte, align 8, !tbaa !5
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %13 = load i8*, i8** %pByte, align 8, !tbaa !5
  %add.ptr3 = getelementptr inbounds i8, i8* %13, i64 -3
  store i8 %12, i8* %add.ptr3, align 1, !tbaa !7
  %14 = load i8, i8* %temp1, align 1, !tbaa !7
  %15 = load i8*, i8** %pByte, align 8, !tbaa !5
  store i8 %14, i8* %15, align 1, !tbaa !7
  %16 = load i32, i32* %DWord.addr, align 4, !tbaa !8
  call void @llvm.lifetime.end(i64 1, i8* %temp2) #1
  call void @llvm.lifetime.end(i64 1, i8* %temp1) #1
  %17 = bitcast i8** %pByte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @_cmsAdjustEndianess64(i64* %Result, i64* %QWord) #0 {
entry:
  %Result.addr = alloca i64*, align 8
  %QWord.addr = alloca i64*, align 8
  %pIn = alloca i8*, align 8
  %pOut = alloca i8*, align 8
  store i64* %Result, i64** %Result.addr, align 8, !tbaa !5
  store i64* %QWord, i64** %QWord.addr, align 8, !tbaa !5
  %0 = bitcast i8** %pIn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i64*, i64** %QWord.addr, align 8, !tbaa !5
  %2 = bitcast i64* %1 to i8*
  store i8* %2, i8** %pIn, align 8, !tbaa !5
  %3 = bitcast i8** %pOut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i64*, i64** %Result.addr, align 8, !tbaa !5
  %5 = bitcast i64* %4 to i8*
  store i8* %5, i8** %pOut, align 8, !tbaa !5
  %6 = load i64*, i64** %Result.addr, align 8, !tbaa !5
  %cmp = icmp ne i64* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 87, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__._cmsAdjustEndianess64, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %10 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 %9, i8* %arrayidx1, align 1, !tbaa !7
  %11 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx2, align 1, !tbaa !7
  %13 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 6
  store i8 %12, i8* %arrayidx3, align 1, !tbaa !7
  %14 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 2
  %15 = load i8, i8* %arrayidx4, align 1, !tbaa !7
  %16 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 5
  store i8 %15, i8* %arrayidx5, align 1, !tbaa !7
  %17 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx6, align 1, !tbaa !7
  %19 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %18, i8* %arrayidx7, align 1, !tbaa !7
  %20 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 4
  %21 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %22 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 %21, i8* %arrayidx9, align 1, !tbaa !7
  %23 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds i8, i8* %23, i64 5
  %24 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %25 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %24, i8* %arrayidx11, align 1, !tbaa !7
  %26 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, i8* %26, i64 6
  %27 = load i8, i8* %arrayidx12, align 1, !tbaa !7
  %28 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %arrayidx13, align 1, !tbaa !7
  %29 = load i8*, i8** %pIn, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %29, i64 7
  %30 = load i8, i8* %arrayidx14, align 1, !tbaa !7
  %31 = load i8*, i8** %pOut, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %arrayidx15, align 1, !tbaa !7
  %32 = bitcast i8** %pOut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i8** %pIn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @_cmsReadUInt8Number(%struct._cms_io_handler* %io, i8* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i8* %n, i8** %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %tmp) #1
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__._cmsReadUInt8Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %2, i32 0, i32 5
  %3 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %call = call i32 %3(%struct._cms_io_handler* %4, i8* %tmp, i32 1, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %5 = load i8*, i8** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load i8, i8* %tmp, align 1, !tbaa !7
  %7 = load i8*, i8** %n.addr, align 8, !tbaa !5
  store i8 %6, i8* %7, align 1, !tbaa !7
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %tmp) #1
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadUInt16Number(%struct._cms_io_handler* %io, i16* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i16*, align 8
  %tmp = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i16* %n, i16** %n.addr, align 8, !tbaa !5
  %0 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__._cmsReadUInt16Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast i16* %tmp to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 2, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load i16*, i16** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i16* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load i16, i16* %tmp, align 2, !tbaa !1
  %call4 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %8) #8
  %9 = load i16*, i16** %n.addr, align 8, !tbaa !5
  store i16 %call4, i16* %9, align 2, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %10 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadUInt16Array(%struct._cms_io_handler* %io, i32 %n, i16* %Array) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i32, align 4
  %Array.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !8
  store i16* %Array, i16** %Array.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 141, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__._cmsReadUInt16Array, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4, !tbaa !8
  %4 = load i32, i32* %n.addr, align 4, !tbaa !8
  %cmp1 = icmp ult i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %Array.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i16* %5, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %7 = load i16*, i16** %Array.addr, align 8, !tbaa !5
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds i16, i16* %7, i64 %idx.ext
  %call = call i32 @_cmsReadUInt16Number(%struct._cms_io_handler* %6, i16* %add.ptr) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.else:                                          ; preds = %for.body
  %9 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %call4 = call i32 @_cmsReadUInt16Number(%struct._cms_io_handler* %9, i16* null) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %10 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6, %if.then.3
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadUInt32Number(%struct._cms_io_handler* %io, i32* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i32* %n, i32** %n.addr, align 8, !tbaa !5
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__._cmsReadUInt32Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast i32* %tmp to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 4, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load i32*, i32** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i32* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %tmp, align 4, !tbaa !8
  %call4 = call i32 @_cmsAdjustEndianess32(i32 %8) #8
  %9 = load i32*, i32** %n.addr, align 8, !tbaa !5
  store i32 %call4, i32* %9, align 4, !tbaa !8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %10 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadFloat32Number(%struct._cms_io_handler* %io, float* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca float*, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store float* %n, float** %n.addr, align 8, !tbaa !5
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__._cmsReadFloat32Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast i32* %tmp to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 4, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load float*, float** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne float* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %tmp, align 4, !tbaa !8
  %call4 = call i32 @_cmsAdjustEndianess32(i32 %8) #8
  store i32 %call4, i32* %tmp, align 4, !tbaa !8
  %9 = bitcast i32* %tmp to float*
  %10 = load float, float* %9, align 4, !tbaa !12
  %11 = load float*, float** %n.addr, align 8, !tbaa !5
  store float %10, float* %11, align 4, !tbaa !12
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %12 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadUInt64Number(%struct._cms_io_handler* %io, i64* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i64*, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i64* %n, i64** %n.addr, align 8, !tbaa !5
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 191, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__._cmsReadUInt64Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast i64* %tmp to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 8, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load i64*, i64** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne i64* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load i64*, i64** %n.addr, align 8, !tbaa !5
  call void @_cmsAdjustEndianess64(i64* %8, i64* %tmp) #8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then
  %9 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @_cmsRead15Fixed16Number(%struct._cms_io_handler* %io, double* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca double*, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store double* %n, double** %n.addr, align 8, !tbaa !5
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__._cmsRead15Fixed16Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast i32* %tmp to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 4, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load double*, double** %n.addr, align 8, !tbaa !5
  %cmp2 = icmp ne double* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %8 = load i32, i32* %tmp, align 4, !tbaa !8
  %call4 = call i32 @_cmsAdjustEndianess32(i32 %8) #8
  %call5 = call double @_cms15Fixed16toDouble(i32 %call4) #8
  %9 = load double*, double** %n.addr, align 8, !tbaa !5
  store double %call5, double* %9, align 8, !tbaa !14
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then
  %10 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define double @_cms15Fixed16toDouble(i32 %fix32) #0 {
entry:
  %fix32.addr = alloca i32, align 4
  %floater = alloca double, align 8
  %sign = alloca double, align 8
  %mid = alloca double, align 8
  %Whole = alloca i32, align 4
  %FracPart = alloca i32, align 4
  store i32 %fix32, i32* %fix32.addr, align 4, !tbaa !8
  %0 = bitcast double* %floater to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %sign to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %mid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %Whole to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %FracPart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %fix32.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %5, 0
  %cond = select i1 %cmp, i32 -1, i32 1
  %conv = sitofp i32 %cond to double
  store double %conv, double* %sign, align 8, !tbaa !14
  %6 = load i32, i32* %fix32.addr, align 4, !tbaa !8
  %call = call i32 @abs(i32 %6) #9
  store i32 %call, i32* %fix32.addr, align 4, !tbaa !8
  %7 = load i32, i32* %fix32.addr, align 4, !tbaa !8
  %shr = ashr i32 %7, 16
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %and = and i32 %conv2, 65535
  store i32 %and, i32* %Whole, align 4, !tbaa !8
  %8 = load i32, i32* %fix32.addr, align 4, !tbaa !8
  %and3 = and i32 %8, 65535
  %conv4 = trunc i32 %and3 to i16
  %conv5 = zext i16 %conv4 to i32
  store i32 %conv5, i32* %FracPart, align 4, !tbaa !8
  %9 = load i32, i32* %FracPart, align 4, !tbaa !8
  %conv6 = sitofp i32 %9 to double
  %div = fdiv double %conv6, 6.553600e+04
  store double %div, double* %mid, align 8, !tbaa !14
  %10 = load i32, i32* %Whole, align 4, !tbaa !8
  %conv7 = sitofp i32 %10 to double
  %11 = load double, double* %mid, align 8, !tbaa !14
  %add = fadd double %conv7, %11
  store double %add, double* %floater, align 8, !tbaa !14
  %12 = load double, double* %sign, align 8, !tbaa !14
  %13 = load double, double* %floater, align 8, !tbaa !14
  %mul = fmul double %12, %13
  %14 = bitcast i32* %FracPart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %Whole to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast double* %mid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast double* %sign to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast double* %floater to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret double %mul
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadXYZNumber(%struct._cms_io_handler* %io, %struct.cmsCIEXYZ* %XYZ) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %XYZ.addr = alloca %struct.cmsCIEXYZ*, align 8
  %xyz = alloca %struct.cmsEncodedXYZNumber, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store %struct.cmsCIEXYZ* %XYZ, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %0 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 238, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__._cmsReadXYZNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 12, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %cmp2 = icmp ne %struct.cmsCIEXYZ* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %X = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 0
  %8 = load i32, i32* %X, align 4, !tbaa !16
  %call4 = call i32 @_cmsAdjustEndianess32(i32 %8) #8
  %call5 = call double @_cms15Fixed16toDouble(i32 %call4) #8
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %X6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 0
  store double %call5, double* %X6, align 8, !tbaa !18
  %Y = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 1
  %10 = load i32, i32* %Y, align 4, !tbaa !20
  %call7 = call i32 @_cmsAdjustEndianess32(i32 %10) #8
  %call8 = call double @_cms15Fixed16toDouble(i32 %call7) #8
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %Y9 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 1
  store double %call8, double* %Y9, align 8, !tbaa !21
  %Z = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 2
  %12 = load i32, i32* %Z, align 4, !tbaa !22
  %call10 = call i32 @_cmsAdjustEndianess32(i32 %12) #8
  %call11 = call double @_cms15Fixed16toDouble(i32 %call10) #8
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %Z12 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 2
  store double %call11, double* %Z12, align 8, !tbaa !23
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  call void @NormalizeXYZ(%struct.cmsCIEXYZ* %14) #8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.3, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then
  %15 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  call void @llvm.lifetime.end(i64 12, i8* %15) #1
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @NormalizeXYZ(%struct.cmsCIEXYZ* %Dest) #0 {
entry:
  %Dest.addr = alloca %struct.cmsCIEXYZ*, align 8
  store %struct.cmsCIEXYZ* %Dest, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %0, i32 0, i32 0
  %1 = load double, double* %X, align 8, !tbaa !18
  %cmp = fcmp ogt double %1, 2.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %2, i32 0, i32 1
  %3 = load double, double* %Y, align 8, !tbaa !21
  %cmp1 = fcmp ogt double %3, 2.000000e+00
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %4, i32 0, i32 2
  %5 = load double, double* %Z, align 8, !tbaa !23
  %cmp2 = fcmp ogt double %5, 2.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %X3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 0
  %8 = load double, double* %X3, align 8, !tbaa !18
  %div = fdiv double %8, 1.000000e+01
  store double %div, double* %X3, align 8, !tbaa !18
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 1
  %10 = load double, double* %Y4, align 8, !tbaa !21
  %div5 = fdiv double %10, 1.000000e+01
  store double %div5, double* %Y4, align 8, !tbaa !21
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !5
  %Z6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 2
  %12 = load double, double* %Z6, align 8, !tbaa !23
  %div7 = fdiv double %12, 1.000000e+01
  store double %div7, double* %Z6, align 8, !tbaa !23
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteUInt8Number(%struct._cms_io_handler* %io, i8 zeroext %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i8, align 1
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i8 %n, i8* %n.addr, align 1, !tbaa !7
  %0 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 255, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt8Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %2, i32 0, i32 9
  %3 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %call = call i32 %3(%struct._cms_io_handler* %4, i32 1, i8* %n.addr) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteUInt16Number(%struct._cms_io_handler* %io, i16 zeroext %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i16, align 2
  %tmp = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i16 %n, i16* %n.addr, align 2, !tbaa !1
  %0 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt16Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i16, i16* %n.addr, align 2, !tbaa !1
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %3) #8
  store i16 %call, i16* %tmp, align 2, !tbaa !1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 9
  %5 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %7 = bitcast i16* %tmp to i8*
  %call1 = call i32 %5(%struct._cms_io_handler* %6, i32 2, i8* %7) #8
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i16* %tmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteUInt16Array(%struct._cms_io_handler* %io, i32 %n, i16* %Array) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i32, align 4
  %Array.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !8
  store i16* %Array, i16** %Array.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 280, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt16Array, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i16*, i16** %Array.addr, align 8, !tbaa !5
  %cmp1 = icmp ne i16* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 281, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt16Array, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  store i32 0, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %5 = load i32, i32* %i, align 4, !tbaa !8
  %6 = load i32, i32* %n.addr, align 4, !tbaa !8
  %cmp5 = icmp ult i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %8 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %9 = load i16*, i16** %Array.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !1
  %call = call i32 @_cmsWriteUInt16Number(%struct._cms_io_handler* %7, i16 zeroext %10) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteUInt32Number(%struct._cms_io_handler* %io, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !8
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt32Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i32, i32* %n.addr, align 4, !tbaa !8
  %call = call i32 @_cmsAdjustEndianess32(i32 %3) #8
  store i32 %call, i32* %tmp, align 4, !tbaa !8
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 9
  %5 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %7 = bitcast i32* %tmp to i8*
  %call1 = call i32 %5(%struct._cms_io_handler* %6, i32 4, i8* %7) #8
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteFloat32Number(%struct._cms_io_handler* %io, float %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca float, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store float %n, float* %n.addr, align 4, !tbaa !12
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__._cmsWriteFloat32Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = bitcast float* %n.addr to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !8
  store i32 %4, i32* %tmp, align 4, !tbaa !8
  %5 = load i32, i32* %tmp, align 4, !tbaa !8
  %call = call i32 @_cmsAdjustEndianess32(i32 %5) #8
  store i32 %call, i32* %tmp, align 4, !tbaa !8
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 9
  %7 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %9 = bitcast i32* %tmp to i8*
  %call1 = call i32 %7(%struct._cms_io_handler* %8, i32 4, i8* %9) #8
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteUInt64Number(%struct._cms_io_handler* %io, i64* %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca i64*, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i64* %n, i64** %n.addr, align 8, !tbaa !5
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__._cmsWriteUInt64Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i64*, i64** %n.addr, align 8, !tbaa !5
  call void @_cmsAdjustEndianess64(i64* %tmp, i64* %3) #8
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 9
  %5 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %7 = bitcast i64* %tmp to i8*
  %call = call i32 %5(%struct._cms_io_handler* %6, i32 8, i8* %7) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWrite15Fixed16Number(%struct._cms_io_handler* %io, double %n) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %n.addr = alloca double, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store double %n, double* %n.addr, align 8, !tbaa !14
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 335, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__._cmsWrite15Fixed16Number, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load double, double* %n.addr, align 8, !tbaa !14
  %call = call i32 @_cmsDoubleTo15Fixed16(double %3) #8
  %call1 = call i32 @_cmsAdjustEndianess32(i32 %call) #8
  store i32 %call1, i32* %tmp, align 4, !tbaa !8
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %4, i32 0, i32 9
  %5 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %7 = bitcast i32* %tmp to i8*
  %call2 = call i32 %5(%struct._cms_io_handler* %6, i32 4, i8* %7) #8
  %cmp3 = icmp ne i32 %call2, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @_cmsDoubleTo15Fixed16(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  store double %v, double* %v.addr, align 8, !tbaa !14
  %0 = load double, double* %v.addr, align 8, !tbaa !14
  %mul = fmul double %0, 6.553600e+04
  %add = fadd double %mul, 5.000000e-01
  %call = call double @floor(double %add) #9
  %conv = fptosi double %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteXYZNumber(%struct._cms_io_handler* %io, %struct.cmsCIEXYZ* %XYZ) #0 {
entry:
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %XYZ.addr = alloca %struct.cmsCIEXYZ*, align 8
  %xyz = alloca %struct.cmsEncodedXYZNumber, align 4
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store %struct.cmsCIEXYZ* %XYZ, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %0 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 348, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__._cmsWriteXYZNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.cmsCIEXYZ* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 349, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__._cmsWriteXYZNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 0
  %6 = load double, double* %X, align 8, !tbaa !18
  %call = call i32 @_cmsDoubleTo15Fixed16(double %6) #8
  %call5 = call i32 @_cmsAdjustEndianess32(i32 %call) #8
  %X6 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 0
  store i32 %call5, i32* %X6, align 4, !tbaa !16
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 1
  %8 = load double, double* %Y, align 8, !tbaa !21
  %call7 = call i32 @_cmsDoubleTo15Fixed16(double %8) #8
  %call8 = call i32 @_cmsAdjustEndianess32(i32 %call7) #8
  %Y9 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 1
  store i32 %call8, i32* %Y9, align 4, !tbaa !20
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %XYZ.addr, align 8, !tbaa !5
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 2
  %10 = load double, double* %Z, align 8, !tbaa !23
  %call10 = call i32 @_cmsDoubleTo15Fixed16(double %10) #8
  %call11 = call i32 @_cmsAdjustEndianess32(i32 %call10) #8
  %Z12 = getelementptr inbounds %struct.cmsEncodedXYZNumber, %struct.cmsEncodedXYZNumber* %xyz, i32 0, i32 2
  store i32 %call11, i32* %Z12, align 4, !tbaa !22
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %11, i32 0, i32 9
  %12 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %13 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %14 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  %call13 = call i32 %12(%struct._cms_io_handler* %13, i32 12, i8* %14) #8
  %15 = bitcast %struct.cmsEncodedXYZNumber* %xyz to i8*
  call void @llvm.lifetime.end(i64 12, i8* %15) #1
  ret i32 %call13
}

; Function Attrs: nounwind uwtable
define double @_cms8Fixed8toDouble(i16 zeroext %fixed8) #0 {
entry:
  %fixed8.addr = alloca i16, align 2
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  store i16 %fixed8, i16* %fixed8.addr, align 2, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %msb) #1
  call void @llvm.lifetime.start(i64 1, i8* %lsb) #1
  %0 = load i16, i16* %fixed8.addr, align 2, !tbaa !1
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %lsb, align 1, !tbaa !7
  %1 = load i16, i16* %fixed8.addr, align 2, !tbaa !1
  %conv2 = zext i16 %1 to i32
  %shr = ashr i32 %conv2, 8
  %and3 = and i32 %shr, 255
  %conv4 = trunc i32 %and3 to i8
  store i8 %conv4, i8* %msb, align 1, !tbaa !7
  %2 = load i8, i8* %msb, align 1, !tbaa !7
  %conv5 = uitofp i8 %2 to double
  %3 = load i8, i8* %lsb, align 1, !tbaa !7
  %conv6 = uitofp i8 %3 to double
  %div = fdiv double %conv6, 2.560000e+02
  %add = fadd double %conv5, %div
  call void @llvm.lifetime.end(i64 1, i8* %lsb) #1
  call void @llvm.lifetime.end(i64 1, i8* %msb) #1
  ret double %add
}

; Function Attrs: nounwind uwtable
define zeroext i16 @_cmsDoubleTo8Fixed8(double %val) #0 {
entry:
  %val.addr = alloca double, align 8
  %GammaFixed32 = alloca i32, align 4
  store double %val, double* %val.addr, align 8, !tbaa !14
  %0 = bitcast i32* %GammaFixed32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %val.addr, align 8, !tbaa !14
  %call = call i32 @_cmsDoubleTo15Fixed16(double %1) #8
  store i32 %call, i32* %GammaFixed32, align 4, !tbaa !8
  %2 = load i32, i32* %GammaFixed32, align 4, !tbaa !8
  %shr = ashr i32 %2, 8
  %and = and i32 %shr, 65535
  %conv = trunc i32 %and to i16
  %3 = bitcast i32* %GammaFixed32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret i16 %conv
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define void @_cmsDecodeDateTimeNumber(%struct.cmsDateTimeNumber* %Source, %struct.tm* %Dest) #0 {
entry:
  %Source.addr = alloca %struct.cmsDateTimeNumber*, align 8
  %Dest.addr = alloca %struct.tm*, align 8
  store %struct.cmsDateTimeNumber* %Source, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  store %struct.tm* %Dest, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %0 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.tm* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 404, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.cmsDateTimeNumber* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %seconds = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %4, i32 0, i32 5
  %5 = load i16, i16* %seconds, align 2, !tbaa !25
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %5) #8
  %conv = zext i16 %call to i32
  %6 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %conv, i32* %tm_sec, align 4, !tbaa !27
  %7 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %minutes = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %7, i32 0, i32 4
  %8 = load i16, i16* %minutes, align 2, !tbaa !30
  %call5 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %8) #8
  %conv6 = zext i16 %call5 to i32
  %9 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  store i32 %conv6, i32* %tm_min, align 4, !tbaa !31
  %10 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %hours = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %10, i32 0, i32 3
  %11 = load i16, i16* %hours, align 2, !tbaa !32
  %call7 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %11) #8
  %conv8 = zext i16 %call7 to i32
  %12 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 2
  store i32 %conv8, i32* %tm_hour, align 4, !tbaa !33
  %13 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %day = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %13, i32 0, i32 2
  %14 = load i16, i16* %day, align 2, !tbaa !34
  %call9 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %14) #8
  %conv10 = zext i16 %call9 to i32
  %15 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 3
  store i32 %conv10, i32* %tm_mday, align 4, !tbaa !35
  %16 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %month = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %16, i32 0, i32 1
  %17 = load i16, i16* %month, align 2, !tbaa !36
  %call11 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %17) #8
  %conv12 = zext i16 %call11 to i32
  %sub = sub nsw i32 %conv12, 1
  %18 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 4
  store i32 %sub, i32* %tm_mon, align 4, !tbaa !37
  %19 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Source.addr, align 8, !tbaa !5
  %year = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %19, i32 0, i32 0
  %20 = load i16, i16* %year, align 2, !tbaa !38
  %call13 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %20) #8
  %conv14 = zext i16 %call13 to i32
  %sub15 = sub nsw i32 %conv14, 1900
  %21 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 5
  store i32 %sub15, i32* %tm_year, align 4, !tbaa !39
  %22 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 6
  store i32 -1, i32* %tm_wday, align 4, !tbaa !40
  %23 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 7
  store i32 -1, i32* %tm_yday, align 4, !tbaa !41
  %24 = load %struct.tm*, %struct.tm** %Dest.addr, align 8, !tbaa !5
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 8
  store i32 0, i32* %tm_isdst, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsEncodeDateTimeNumber(%struct.cmsDateTimeNumber* %Dest, %struct.tm* %Source) #0 {
entry:
  %Dest.addr = alloca %struct.cmsDateTimeNumber*, align 8
  %Source.addr = alloca %struct.tm*, align 8
  store %struct.cmsDateTimeNumber* %Dest, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  store %struct.tm* %Source, %struct.tm** %Source.addr, align 8, !tbaa !5
  %0 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.cmsDateTimeNumber* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.tm* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 421, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %5 = load i32, i32* %tm_sec, align 4, !tbaa !27
  %conv = trunc i32 %5 to i16
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv) #8
  %6 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %seconds = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %6, i32 0, i32 5
  store i16 %call, i16* %seconds, align 2, !tbaa !25
  %7 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 1
  %8 = load i32, i32* %tm_min, align 4, !tbaa !31
  %conv5 = trunc i32 %8 to i16
  %call6 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv5) #8
  %9 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %minutes = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %9, i32 0, i32 4
  store i16 %call6, i16* %minutes, align 2, !tbaa !30
  %10 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %11 = load i32, i32* %tm_hour, align 4, !tbaa !33
  %conv7 = trunc i32 %11 to i16
  %call8 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv7) #8
  %12 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %hours = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %12, i32 0, i32 3
  store i16 %call8, i16* %hours, align 2, !tbaa !32
  %13 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 3
  %14 = load i32, i32* %tm_mday, align 4, !tbaa !35
  %conv9 = trunc i32 %14 to i16
  %call10 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv9) #8
  %15 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %day = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %15, i32 0, i32 2
  store i16 %call10, i16* %day, align 2, !tbaa !34
  %16 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %17 = load i32, i32* %tm_mon, align 4, !tbaa !37
  %add = add nsw i32 %17, 1
  %conv11 = trunc i32 %add to i16
  %call12 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv11) #8
  %18 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %month = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %18, i32 0, i32 1
  store i16 %call12, i16* %month, align 2, !tbaa !36
  %19 = load %struct.tm*, %struct.tm** %Source.addr, align 8, !tbaa !5
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 5
  %20 = load i32, i32* %tm_year, align 4, !tbaa !39
  %add13 = add nsw i32 %20, 1900
  %conv14 = trunc i32 %add13 to i16
  %call15 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %conv14) #8
  %21 = load %struct.cmsDateTimeNumber*, %struct.cmsDateTimeNumber** %Dest.addr, align 8, !tbaa !5
  %year = getelementptr inbounds %struct.cmsDateTimeNumber, %struct.cmsDateTimeNumber* %21, i32 0, i32 0
  store i16 %call15, i16* %year, align 2, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsReadTypeBase(%struct._cms_io_handler* %io) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %Base = alloca %struct._cmsTagBase, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %0 = bitcast %struct._cmsTagBase* %Base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 436, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__._cmsReadTypeBase, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %3, i32 0, i32 5
  %4 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %6 = bitcast %struct._cmsTagBase* %Base to i8*
  %call = call i32 %4(%struct._cms_io_handler* %5, i8* %6, i32 8, i32 1) #8
  %cmp1 = icmp ne i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %sig = getelementptr inbounds %struct._cmsTagBase, %struct._cmsTagBase* %Base, i32 0, i32 0
  %7 = load i32, i32* %sig, align 4, !tbaa !43
  %call2 = call i32 @_cmsAdjustEndianess32(i32 %7) #8
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._cmsTagBase* %Base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteTypeBase(%struct._cms_io_handler* %io, i32 %sig) #0 {
entry:
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %sig.addr = alloca i32, align 4
  %Base = alloca %struct._cmsTagBase, align 4
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i32 %sig, i32* %sig.addr, align 4, !tbaa !7
  %0 = bitcast %struct._cmsTagBase* %Base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__._cmsWriteTypeBase, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i32, i32* %sig.addr, align 4, !tbaa !7
  %call = call i32 @_cmsAdjustEndianess32(i32 %3) #8
  %sig1 = getelementptr inbounds %struct._cmsTagBase, %struct._cmsTagBase* %Base, i32 0, i32 0
  store i32 %call, i32* %sig1, align 4, !tbaa !43
  %reserved = getelementptr inbounds %struct._cmsTagBase, %struct._cmsTagBase* %Base, i32 0, i32 1
  %4 = bitcast [4 x i8]* %reserved to i8*
  %call2 = call i8* @memset(i8* %4, i32 0, i64 4) #10
  %5 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %5, i32 0, i32 9
  %6 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %7 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %8 = bitcast %struct._cmsTagBase* %Base to i8*
  %call3 = call i32 %6(%struct._cms_io_handler* %7, i32 8, i8* %8) #8
  %9 = bitcast %struct._cmsTagBase* %Base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call3
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define i32 @_cmsReadAlignment(%struct._cms_io_handler* %io) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %Buffer = alloca [4 x i8], align 1
  %NextAligned = alloca i32, align 4
  %At = alloca i32, align 4
  %BytesToNextAlignedPos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %NextAligned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %At to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %BytesToNextAlignedPos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 462, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__._cmsReadAlignment, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 8
  %7 = load i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !45
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %call = call i32 %7(%struct._cms_io_handler* %8) #8
  store i32 %call, i32* %At, align 4, !tbaa !8
  %9 = load i32, i32* %At, align 4, !tbaa !8
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, 3
  %and = and i64 %add, -4
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, i32* %NextAligned, align 4, !tbaa !8
  %10 = load i32, i32* %NextAligned, align 4, !tbaa !8
  %11 = load i32, i32* %At, align 4, !tbaa !8
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %12 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %cmp4 = icmp ugt i32 %13, 4
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %14 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Read = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %14, i32 0, i32 5
  %15 = load i32 (%struct._cms_io_handler*, i8*, i32, i32)*, i32 (%struct._cms_io_handler*, i8*, i32, i32)** %Read, align 8, !tbaa !10
  %16 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %Buffer, i32 0, i32 0
  %17 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %call8 = call i32 %15(%struct._cms_io_handler* %16, i8* %arraydecay, i32 %17, i32 1) #8
  %cmp9 = icmp eq i32 %call8, 1
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %18 = bitcast i32* %BytesToNextAlignedPos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %At to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %NextAligned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast [4 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @_cmsWriteAlignment(%struct._cms_io_handler* %io) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %Buffer = alloca [4 x i8], align 1
  %NextAligned = alloca i32, align 4
  %At = alloca i32, align 4
  %BytesToNextAlignedPos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %0 = bitcast [4 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %NextAligned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %At to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %BytesToNextAlignedPos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 479, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__._cmsWriteAlignment, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Tell = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 8
  %7 = load i32 (%struct._cms_io_handler*)*, i32 (%struct._cms_io_handler*)** %Tell, align 8, !tbaa !45
  %8 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %call = call i32 %7(%struct._cms_io_handler* %8) #8
  store i32 %call, i32* %At, align 4, !tbaa !8
  %9 = load i32, i32* %At, align 4, !tbaa !8
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, 3
  %and = and i64 %add, -4
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, i32* %NextAligned, align 4, !tbaa !8
  %10 = load i32, i32* %NextAligned, align 4, !tbaa !8
  %11 = load i32, i32* %At, align 4, !tbaa !8
  %sub = sub i32 %10, %11
  store i32 %sub, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %12 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %cmp4 = icmp ugt i32 %13, 4
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %Buffer, i32 0, i32 0
  %14 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %conv8 = zext i32 %14 to i64
  %call9 = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv8) #10
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %15, i32 0, i32 9
  %16 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %18 = load i32, i32* %BytesToNextAlignedPos, align 4, !tbaa !8
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %Buffer, i32 0, i32 0
  %call11 = call i32 %16(%struct._cms_io_handler* %17, i32 %18, i8* %arraydecay10) #8
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then
  %19 = bitcast i32* %BytesToNextAlignedPos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %At to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %NextAligned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast [4 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @_cmsIOPrintf(%struct._cms_io_handler* %io, i8* %frm, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %io.addr = alloca %struct._cms_io_handler*, align 8
  %frm.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  %Buffer = alloca [2048 x i8], align 16
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_io_handler* %io, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  store i8* %frm, i8** %frm.addr, align 8, !tbaa !5
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [2048 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #1
  %3 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cms_io_handler* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 500, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__._cmsIOPrintf, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i8*, i8** %frm.addr, align 8, !tbaa !5
  %cmp1 = icmp ne i8* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 501, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__._cmsIOPrintf, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %7, %cond.true.2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Buffer, i32 0, i32 0
  %8 = load i8*, i8** %frm.addr, align 8, !tbaa !5
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay6, i64 2047, i8* %8, %struct.__va_list_tag* %arraydecay7) #10
  store i32 %call, i32* %len, align 4, !tbaa !8
  %9 = load i32, i32* %len, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.4
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %Write = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %10, i32 0, i32 9
  %11 = load i32 (%struct._cms_io_handler*, i32, i8*)*, i32 (%struct._cms_io_handler*, i32, i8*)** %Write, align 8, !tbaa !24
  %12 = load %struct._cms_io_handler*, %struct._cms_io_handler** %io.addr, align 8, !tbaa !5
  %13 = load i32, i32* %len, align 4, !tbaa !8
  %arraydecay9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Buffer, i32 0, i32 0
  %call10 = call i32 %11(%struct._cms_io_handler* %12, i32 %13, i8* %arraydecay9) #8
  store i32 %call10, i32* %rc, align 4, !tbaa !8
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %14 = load i32, i32* %rc, align 4, !tbaa !8
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast [2048 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %16) #1
  %17 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #1
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @_cmsPluginMalloc(%struct._cmsContext_struct* %ContextID, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %size.addr = alloca i32, align 4
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !8
  %0 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call = call %struct._cmsContext_struct* @_cmsGetContext(%struct._cmsContext_struct* %1) #8
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %2, i32 0, i32 1
  %3 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !46
  %cmp = icmp eq %struct._cmsSubAllocator* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %cmp1 = icmp eq %struct._cmsContext_struct* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %call3 = call %struct._cmsSubAllocator* @_cmsCreateSubAlloc(%struct._cmsContext_struct* null, i32 2048) #8
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool4 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %5, i32 0, i32 1
  store %struct._cmsSubAllocator* %call3, %struct._cmsSubAllocator** %MemPool4, align 8, !tbaa !46
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %6, i32 12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #8
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool6 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 1
  %8 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool6, align 8, !tbaa !46
  %9 = load i32, i32* %size.addr, align 4, !tbaa !8
  %call7 = call i8* @_cmsSubAlloc(%struct._cmsSubAllocator* %8, i32 %9) #8
  store i8* %call7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.else
  %10 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @_cmsGetContext(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca %struct._cmsContext_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %id = alloca %struct._cmsContext_struct*, align 8
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %0 = bitcast %struct._cmsContext_struct** %id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  store %struct._cmsContext_struct* %1, %struct._cmsContext_struct** %id, align 8, !tbaa !5
  %2 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id, align 8, !tbaa !5
  %cmp = icmp eq %struct._cmsContext_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsContext_struct* @globalContext, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp1 = icmp ne %struct._cmsContext_struct* %5, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id, align 8, !tbaa !5
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp2 = icmp eq %struct._cmsContext_struct* %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  store %struct._cmsContext_struct* %8, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %9, i32 0, i32 0
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %Next, align 8, !tbaa !49
  store %struct._cmsContext_struct* %10, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._cmsContext_struct* @globalContext, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.3, %if.then
  %11 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct._cmsContext_struct** %id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %retval
  ret %struct._cmsContext_struct* %13
}

declare %struct._cmsSubAllocator* @_cmsCreateSubAlloc(%struct._cmsContext_struct*, i32) #5

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #5

declare i8* @_cmsSubAlloc(%struct._cmsSubAllocator*, i32) #5

; Function Attrs: nounwind uwtable
define i32 @cmsPlugin(i8* %Plug_in) #0 {
entry:
  %Plug_in.addr = alloca i8*, align 8
  store i8* %Plug_in, i8** %Plug_in.addr, align 8, !tbaa !5
  %0 = load i8*, i8** %Plug_in.addr, align 8, !tbaa !5
  %call = call i32 @cmsPluginTHR(%struct._cmsContext_struct* null, i8* %0) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @cmsPluginTHR(%struct._cmsContext_struct* %id, i8* %Plug_in) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca %struct._cmsContext_struct*, align 8
  %Plug_in.addr = alloca i8*, align 8
  %Plugin = alloca %struct._cmsPluginBaseStruct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %id, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  store i8* %Plug_in, i8** %Plug_in.addr, align 8, !tbaa !5
  %0 = bitcast %struct._cmsPluginBaseStruct** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %Plug_in.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct._cmsPluginBaseStruct*
  store %struct._cmsPluginBaseStruct* %2, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %cmp = icmp ne %struct._cmsPluginBaseStruct* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Magic = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %4, i32 0, i32 0
  %5 = load i32, i32* %Magic, align 4, !tbaa !50
  %cmp1 = icmp ne i32 %5, 1633906800
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %6, i32 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %ExpectedVersion = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %7, i32 0, i32 1
  %8 = load i32, i32* %ExpectedVersion, align 4, !tbaa !52
  %cmp2 = icmp ugt i32 %8, 2060
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %10 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %ExpectedVersion4 = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %10, i32 0, i32 1
  %11 = load i32, i32* %ExpectedVersion4, align 4, !tbaa !52
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %9, i32 8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 %11, i32 2060) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Type = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %12, i32 0, i32 2
  %13 = load i32, i32* %Type, align 4, !tbaa !53
  switch i32 %13, label %sw.default [
    i32 1835363656, label %sw.bb
    i32 1768845384, label %sw.bb.8
    i32 1954115656, label %sw.bb.13
    i32 1952540488, label %sw.bb.18
    i32 1718775112, label %sw.bb.23
    i32 1768846408, label %sw.bb.28
    i32 1885434440, label %sw.bb.33
    i32 1836082504, label %sw.bb.38
    i32 1869640776, label %sw.bb.43
    i32 2053533000, label %sw.bb.48
    i32 1836350024, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %if.end.5
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %15 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call = call i32 @_cmsRegisterMemHandlerPlugin(%struct._cmsContext_struct* %14, %struct._cmsPluginBaseStruct* %15) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.5
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %17 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call9 = call i32 @_cmsRegisterInterpPlugin(%struct._cmsContext_struct* %16, %struct._cmsPluginBaseStruct* %17) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %sw.bb.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %sw.bb.8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end.5
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %19 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call14 = call i32 @_cmsRegisterTagTypePlugin(%struct._cmsContext_struct* %18, %struct._cmsPluginBaseStruct* %19) #8
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %sw.bb.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %sw.bb.13
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.5
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %21 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call19 = call i32 @_cmsRegisterTagPlugin(%struct._cmsContext_struct* %20, %struct._cmsPluginBaseStruct* %21) #8
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %sw.bb.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %sw.bb.18
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.5
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %23 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call24 = call i32 @_cmsRegisterFormattersPlugin(%struct._cmsContext_struct* %22, %struct._cmsPluginBaseStruct* %23) #8
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %sw.bb.23
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.5
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %25 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call29 = call i32 @_cmsRegisterRenderingIntentPlugin(%struct._cmsContext_struct* %24, %struct._cmsPluginBaseStruct* %25) #8
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %sw.bb.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %sw.bb.28
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.5
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %27 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call34 = call i32 @_cmsRegisterParametricCurvesPlugin(%struct._cmsContext_struct* %26, %struct._cmsPluginBaseStruct* %27) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %sw.bb.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %sw.bb.33
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.5
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %29 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call39 = call i32 @_cmsRegisterMultiProcessElementPlugin(%struct._cmsContext_struct* %28, %struct._cmsPluginBaseStruct* %29) #8
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %sw.bb.38
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.5
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %31 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call44 = call i32 @_cmsRegisterOptimizationPlugin(%struct._cmsContext_struct* %30, %struct._cmsPluginBaseStruct* %31) #8
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %sw.bb.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %sw.bb.43
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.5
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %33 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call49 = call i32 @_cmsRegisterTransformPlugin(%struct._cmsContext_struct* %32, %struct._cmsPluginBaseStruct* %33) #8
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %sw.bb.48
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.5
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %35 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %call54 = call i32 @_cmsRegisterMutexPlugin(%struct._cmsContext_struct* %34, %struct._cmsPluginBaseStruct* %35) #8
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %sw.bb.53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %sw.bb.53
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %id.addr, align 8, !tbaa !5
  %37 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Type58 = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %37, i32 0, i32 2
  %38 = load i32, i32* %Type58, align 4, !tbaa !53
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %36, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %38) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.57, %if.end.52, %if.end.47, %if.end.42, %if.end.37, %if.end.32, %if.end.27, %if.end.22, %if.end.17, %if.end.12, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %39 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %39, i32 0, i32 3
  %40 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Next, align 8, !tbaa !54
  store %struct._cmsPluginBaseStruct* %40, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default, %if.then.56, %if.then.51, %if.then.46, %if.then.41, %if.then.36, %if.then.31, %if.then.26, %if.then.21, %if.then.16, %if.then.11, %if.then.6, %if.then.3, %if.then
  %41 = bitcast %struct._cmsPluginBaseStruct** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @_cmsRegisterMemHandlerPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterInterpPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterTagTypePlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterTagPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterFormattersPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterRenderingIntentPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterParametricCurvesPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterMultiProcessElementPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterOptimizationPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterTransformPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

declare i32 @_cmsRegisterMutexPlugin(%struct._cmsContext_struct*, %struct._cmsPluginBaseStruct*) #5

; Function Attrs: nounwind uwtable
define void @cmsUnregisterPlugins() #0 {
entry:
  call void @cmsUnregisterPluginsTHR(%struct._cmsContext_struct* null) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsUnregisterPluginsTHR(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call = call i32 @_cmsRegisterMemHandlerPlugin(%struct._cmsContext_struct* %0, %struct._cmsPluginBaseStruct* null) #8
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call1 = call i32 @_cmsRegisterInterpPlugin(%struct._cmsContext_struct* %1, %struct._cmsPluginBaseStruct* null) #8
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call2 = call i32 @_cmsRegisterTagTypePlugin(%struct._cmsContext_struct* %2, %struct._cmsPluginBaseStruct* null) #8
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call3 = call i32 @_cmsRegisterTagPlugin(%struct._cmsContext_struct* %3, %struct._cmsPluginBaseStruct* null) #8
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call4 = call i32 @_cmsRegisterFormattersPlugin(%struct._cmsContext_struct* %4, %struct._cmsPluginBaseStruct* null) #8
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call5 = call i32 @_cmsRegisterRenderingIntentPlugin(%struct._cmsContext_struct* %5, %struct._cmsPluginBaseStruct* null) #8
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call6 = call i32 @_cmsRegisterParametricCurvesPlugin(%struct._cmsContext_struct* %6, %struct._cmsPluginBaseStruct* null) #8
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call7 = call i32 @_cmsRegisterMultiProcessElementPlugin(%struct._cmsContext_struct* %7, %struct._cmsPluginBaseStruct* null) #8
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call8 = call i32 @_cmsRegisterOptimizationPlugin(%struct._cmsContext_struct* %8, %struct._cmsPluginBaseStruct* null) #8
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call9 = call i32 @_cmsRegisterTransformPlugin(%struct._cmsContext_struct* %9, %struct._cmsPluginBaseStruct* null) #8
  %10 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call10 = call i32 @_cmsRegisterMutexPlugin(%struct._cmsContext_struct* %10, %struct._cmsPluginBaseStruct* null) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %ContextID, i32 %mc) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %mc.addr = alloca i32, align 4
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  store i32 %mc, i32* %mc.addr, align 4, !tbaa !7
  %0 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %mc.addr, align 4, !tbaa !7
  %cmp = icmp ult i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %mc.addr, align 4, !tbaa !7
  %cmp1 = icmp uge i32 %3, 15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %4, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #8
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call = call %struct._cmsContext_struct* @_cmsGetContext(%struct._cmsContext_struct* %5) #8
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %6 = load i32, i32* %mc.addr, align 4, !tbaa !7
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  store i8* %8, i8** %ptr, align 8, !tbaa !5
  %9 = load i8*, i8** %ptr, align 8, !tbaa !5
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i8*, i8** %ptr, align 8, !tbaa !5
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load i32, i32* %mc.addr, align 4, !tbaa !7
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [15 x i8*], [15 x i8*]* getelementptr inbounds (%struct._cmsContext_struct, %struct._cmsContext_struct* @globalContext, i32 0, i32 2), i32 0, i64 %idxprom5
  %12 = load i8*, i8** %arrayidx6, align 8, !tbaa !5
  store i8* %12, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %13 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @cmsCreateContext(i8* %Plugin, i8* %UserData) #0 {
entry:
  %retval = alloca %struct._cmsContext_struct*, align 8
  %Plugin.addr = alloca i8*, align 8
  %UserData.addr = alloca i8*, align 8
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %fakeContext = alloca %struct._cmsContext_struct, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %Plugin, i8** %Plugin.addr, align 8, !tbaa !5
  store i8* %UserData, i8** %UserData.addr, align 8, !tbaa !5
  %0 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._cmsContext_struct* %fakeContext to i8*
  call void @llvm.lifetime.start(i64 184, i8* %1) #1
  %2 = load i8*, i8** %Plugin.addr, align 8, !tbaa !5
  %call = call %struct.cmsPluginMemHandler* @_cmsFindMemoryPlugin(i8* %2) #8
  %DefaultMemoryManager = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 3
  call void @_cmsInstallAllocFunctions(%struct.cmsPluginMemHandler* %call, %struct._cmsMemPluginChunkType* %DefaultMemoryManager) #8
  %3 = load i8*, i8** %UserData.addr, align 8, !tbaa !5
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 0
  store i8* %3, i8** %arrayidx, align 8, !tbaa !5
  %DefaultMemoryManager1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 3
  %4 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager1 to i8*
  %chunks2 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks2, i32 0, i64 4
  store i8* %4, i8** %arrayidx3, align 8, !tbaa !5
  %call4 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %fakeContext, i32 184) #8
  %5 = bitcast i8* %call4 to %struct._cmsContext_struct*
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp = icmp eq %struct._cmsContext_struct* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %8 = bitcast %struct._cmsContext_struct* %7 to i8*
  %call5 = call i8* @memset(i8* %8, i32 0, i64 184) #10
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %DefaultMemoryManager6 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %9, i32 0, i32 3
  %10 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager6 to i8*
  %DefaultMemoryManager7 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 3
  %11 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager7 to i8*
  %call8 = call i8* @memcpy(i8* %10, i8* %11, i64 48) #10
  %call9 = call i32 @_cmsEnterCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %13, i32 0, i32 0
  store %struct._cmsContext_struct* %12, %struct._cmsContext_struct** %Next, align 8, !tbaa !49
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  store %struct._cmsContext_struct* %14, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  %call10 = call i32 @_cmsLeaveCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %15 = load i8*, i8** %UserData.addr, align 8, !tbaa !5
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks11 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %16, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks11, i32 0, i64 0
  store i8* %15, i8** %arrayidx12, align 8, !tbaa !5
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %DefaultMemoryManager13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %17, i32 0, i32 3
  %18 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager13 to i8*
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks14 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %19, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks14, i32 0, i64 4
  store i8* %18, i8** %arrayidx15, align 8, !tbaa !5
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %call16 = call %struct._cmsSubAllocator* @_cmsCreateSubAlloc(%struct._cmsContext_struct* %20, i32 176) #8
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %21, i32 0, i32 1
  store %struct._cmsSubAllocator* %call16, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !46
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool17 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %22, i32 0, i32 1
  %23 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool17, align 8, !tbaa !46
  %cmp18 = icmp eq %struct._cmsSubAllocator* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @cmsDeleteContext(%struct._cmsContext_struct* %24) #8
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocLogErrorChunk(%struct._cmsContext_struct* %25, %struct._cmsContext_struct* null) #8
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocAlarmCodesChunk(%struct._cmsContext_struct* %26, %struct._cmsContext_struct* null) #8
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocAdaptationStateChunk(%struct._cmsContext_struct* %27, %struct._cmsContext_struct* null) #8
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocMemPluginChunk(%struct._cmsContext_struct* %28, %struct._cmsContext_struct* null) #8
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocInterpPluginChunk(%struct._cmsContext_struct* %29, %struct._cmsContext_struct* null) #8
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocCurvesPluginChunk(%struct._cmsContext_struct* %30, %struct._cmsContext_struct* null) #8
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocFormattersPluginChunk(%struct._cmsContext_struct* %31, %struct._cmsContext_struct* null) #8
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocTagTypePluginChunk(%struct._cmsContext_struct* %32, %struct._cmsContext_struct* null) #8
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocMPETypePluginChunk(%struct._cmsContext_struct* %33, %struct._cmsContext_struct* null) #8
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocTagPluginChunk(%struct._cmsContext_struct* %34, %struct._cmsContext_struct* null) #8
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocIntentsPluginChunk(%struct._cmsContext_struct* %35, %struct._cmsContext_struct* null) #8
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocOptimizationPluginChunk(%struct._cmsContext_struct* %36, %struct._cmsContext_struct* null) #8
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocTransformPluginChunk(%struct._cmsContext_struct* %37, %struct._cmsContext_struct* null) #8
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @_cmsAllocMutexPluginChunk(%struct._cmsContext_struct* %38, %struct._cmsContext_struct* null) #8
  %39 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %40 = load i8*, i8** %Plugin.addr, align 8, !tbaa !5
  %call21 = call i32 @cmsPluginTHR(%struct._cmsContext_struct* %39, i8* %40) #8
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @cmsDeleteContext(%struct._cmsContext_struct* %41) #8
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.20
  %42 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  store %struct._cmsContext_struct* %42, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.22, %if.then.19, %if.then
  %43 = bitcast %struct._cmsContext_struct* %fakeContext to i8*
  call void @llvm.lifetime.end(i64 184, i8* %43) #1
  %44 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %retval
  ret %struct._cmsContext_struct* %45
}

declare void @_cmsInstallAllocFunctions(%struct.cmsPluginMemHandler*, %struct._cmsMemPluginChunkType*) #5

; Function Attrs: nounwind uwtable
define internal %struct.cmsPluginMemHandler* @_cmsFindMemoryPlugin(i8* %PluginBundle) #0 {
entry:
  %retval = alloca %struct.cmsPluginMemHandler*, align 8
  %PluginBundle.addr = alloca i8*, align 8
  %Plugin = alloca %struct._cmsPluginBaseStruct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %PluginBundle, i8** %PluginBundle.addr, align 8, !tbaa !5
  %0 = bitcast %struct._cmsPluginBaseStruct** %Plugin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %PluginBundle.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct._cmsPluginBaseStruct*
  store %struct._cmsPluginBaseStruct* %2, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %cmp = icmp ne %struct._cmsPluginBaseStruct* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Magic = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %4, i32 0, i32 0
  %5 = load i32, i32* %Magic, align 4, !tbaa !50
  %cmp1 = icmp eq i32 %5, 1633906800
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %ExpectedVersion = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %6, i32 0, i32 1
  %7 = load i32, i32* %ExpectedVersion, align 4, !tbaa !52
  %cmp2 = icmp ule i32 %7, 2060
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Type = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %8, i32 0, i32 2
  %9 = load i32, i32* %Type, align 4, !tbaa !53
  %cmp4 = icmp eq i32 %9, 1835363656
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %10 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %11 = bitcast %struct._cmsPluginBaseStruct* %10 to %struct.cmsPluginMemHandler*
  store %struct.cmsPluginMemHandler* %11, %struct.cmsPluginMemHandler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsPluginBaseStruct, %struct._cmsPluginBaseStruct* %12, i32 0, i32 3
  %13 = load %struct._cmsPluginBaseStruct*, %struct._cmsPluginBaseStruct** %Next, align 8, !tbaa !54
  store %struct._cmsPluginBaseStruct* %13, %struct._cmsPluginBaseStruct** %Plugin, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.cmsPluginMemHandler* null, %struct.cmsPluginMemHandler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %14 = bitcast %struct._cmsPluginBaseStruct** %Plugin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load %struct.cmsPluginMemHandler*, %struct.cmsPluginMemHandler** %retval
  ret %struct.cmsPluginMemHandler* %15
}

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #5

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsEnterCriticalSectionPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !5
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %0) #10
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsLeaveCriticalSectionPrimitive(%union.pthread_mutex_t* %m) #6 {
entry:
  %m.addr = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %m, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !5
  %0 = load %union.pthread_mutex_t*, %union.pthread_mutex_t** %m.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %0) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @cmsDeleteContext(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %fakeContext = alloca %struct._cmsContext_struct, align 8
  %prev = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct._cmsContext_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  store %struct._cmsContext_struct* %2, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %3 = bitcast %struct._cmsContext_struct* %fakeContext to i8*
  call void @llvm.lifetime.start(i64 184, i8* %3) #1
  %4 = bitcast %struct._cmsContext_struct** %prev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %DefaultMemoryManager = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 3
  %5 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager to i8*
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %DefaultMemoryManager1 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %6, i32 0, i32 3
  %7 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager1 to i8*
  %call = call i8* @memcpy(i8* %5, i8* %7, i64 48) #10
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 0
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %chunks2 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks2, i32 0, i64 0
  store i8* %9, i8** %arrayidx3, align 8, !tbaa !5
  %DefaultMemoryManager4 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 3
  %10 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager4 to i8*
  %chunks5 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %fakeContext, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks5, i32 0, i64 4
  store i8* %10, i8** %arrayidx6, align 8, !tbaa !5
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  call void @cmsUnregisterPluginsTHR(%struct._cmsContext_struct* %11) #8
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 1
  %13 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !46
  %cmp7 = icmp ne %struct._cmsSubAllocator* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool9 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %14, i32 0, i32 1
  %15 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool9, align 8, !tbaa !46
  call void @_cmsSubAllocDestroy(%struct._cmsSubAllocator* %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool10 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %16, i32 0, i32 1
  store %struct._cmsSubAllocator* null, %struct._cmsSubAllocator** %MemPool10, align 8, !tbaa !46
  %call11 = call i32 @_cmsEnterCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp12 = icmp eq %struct._cmsContext_struct* %17, %18
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %19 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %19, i32 0, i32 0
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %Next, align 8, !tbaa !49
  store %struct._cmsContext_struct* %20, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  store %struct._cmsContext_struct* %21, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %22 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  %cmp14 = icmp ne %struct._cmsContext_struct* %22, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  %Next15 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %23, i32 0, i32 0
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %Next15, align 8, !tbaa !49
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp16 = icmp eq %struct._cmsContext_struct* %24, %25
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %for.body
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %Next18 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %26, i32 0, i32 0
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %Next18, align 8, !tbaa !49
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  %Next19 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %28, i32 0, i32 0
  store %struct._cmsContext_struct* %27, %struct._cmsContext_struct** %Next19, align 8, !tbaa !49
  br label %for.end

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  %Next21 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %29, i32 0, i32 0
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %Next21, align 8, !tbaa !49
  store %struct._cmsContext_struct* %30, %struct._cmsContext_struct** %prev, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then.13
  %call23 = call i32 @_cmsLeaveCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %32 = bitcast %struct._cmsContext_struct* %31 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %fakeContext, i8* %32) #8
  %33 = bitcast %struct._cmsContext_struct** %prev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct._cmsContext_struct* %fakeContext to i8*
  call void @llvm.lifetime.end(i64 184, i8* %34) #1
  %35 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %entry
  ret void
}

declare void @_cmsAllocLogErrorChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocAlarmCodesChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocAdaptationStateChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocMemPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocInterpPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocCurvesPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocFormattersPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocTagTypePluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocMPETypePluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocTagPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocIntentsPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocOptimizationPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocTransformPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

declare void @_cmsAllocMutexPluginChunk(%struct._cmsContext_struct*, %struct._cmsContext_struct*) #5

; Function Attrs: nounwind uwtable
define %struct._cmsContext_struct* @cmsDupContext(%struct._cmsContext_struct* %ContextID, i8* %NewUserData) #0 {
entry:
  %retval = alloca %struct._cmsContext_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %NewUserData.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ctx = alloca %struct._cmsContext_struct*, align 8
  %src = alloca %struct._cmsContext_struct*, align 8
  %userData = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  store i8* %NewUserData, i8** %NewUserData.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct._cmsContext_struct** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call = call %struct._cmsContext_struct* @_cmsGetContext(%struct._cmsContext_struct* %3) #8
  store %struct._cmsContext_struct* %call, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  %4 = bitcast i8** %userData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %NewUserData.addr, align 8, !tbaa !5
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i8*, i8** %NewUserData.addr, align 8, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  %chunks = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks, i32 0, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %8, %cond.false ]
  store i8* %cond, i8** %userData, align 8, !tbaa !5
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call1 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %9, i32 184) #8
  %10 = bitcast i8* %call1 to %struct._cmsContext_struct*
  store %struct._cmsContext_struct* %10, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %cmp2 = icmp eq %struct._cmsContext_struct* %11, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %DefaultMemoryManager = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %12, i32 0, i32 3
  %13 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager to i8*
  %14 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  %DefaultMemoryManager3 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %14, i32 0, i32 3
  %15 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager3 to i8*
  %call4 = call i8* @memcpy(i8* %13, i8* %15, i64 48) #10
  %call5 = call i32 @_cmsEnterCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %Next = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %17, i32 0, i32 0
  store %struct._cmsContext_struct* %16, %struct._cmsContext_struct** %Next, align 8, !tbaa !49
  %18 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  store %struct._cmsContext_struct* %18, %struct._cmsContext_struct** @_cmsContextPoolHead, align 8, !tbaa !5
  %call6 = call i32 @_cmsLeaveCriticalSectionPrimitive(%union.pthread_mutex_t* @_cmsContextPoolHeadMutex) #8
  %19 = load i8*, i8** %userData, align 8, !tbaa !5
  %20 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks7 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %20, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks7, i32 0, i64 0
  store i8* %19, i8** %arrayidx8, align 8, !tbaa !5
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %DefaultMemoryManager9 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %21, i32 0, i32 3
  %22 = bitcast %struct._cmsMemPluginChunkType* %DefaultMemoryManager9 to i8*
  %23 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %chunks10 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %23, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks10, i32 0, i64 4
  store i8* %22, i8** %arrayidx11, align 8, !tbaa !5
  %24 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %call12 = call %struct._cmsSubAllocator* @_cmsCreateSubAlloc(%struct._cmsContext_struct* %24, i32 176) #8
  %25 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %25, i32 0, i32 1
  store %struct._cmsSubAllocator* %call12, %struct._cmsSubAllocator** %MemPool, align 8, !tbaa !46
  %26 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %MemPool13 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %26, i32 0, i32 1
  %27 = load %struct._cmsSubAllocator*, %struct._cmsSubAllocator** %MemPool13, align 8, !tbaa !46
  %cmp14 = icmp eq %struct._cmsSubAllocator* %27, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @cmsDeleteContext(%struct._cmsContext_struct* %28) #8
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  %29 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocLogErrorChunk(%struct._cmsContext_struct* %29, %struct._cmsContext_struct* %30) #8
  %31 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocAlarmCodesChunk(%struct._cmsContext_struct* %31, %struct._cmsContext_struct* %32) #8
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %34 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocAdaptationStateChunk(%struct._cmsContext_struct* %33, %struct._cmsContext_struct* %34) #8
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %36 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocMemPluginChunk(%struct._cmsContext_struct* %35, %struct._cmsContext_struct* %36) #8
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %38 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocInterpPluginChunk(%struct._cmsContext_struct* %37, %struct._cmsContext_struct* %38) #8
  %39 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %40 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocCurvesPluginChunk(%struct._cmsContext_struct* %39, %struct._cmsContext_struct* %40) #8
  %41 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %42 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocFormattersPluginChunk(%struct._cmsContext_struct* %41, %struct._cmsContext_struct* %42) #8
  %43 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %44 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocTagTypePluginChunk(%struct._cmsContext_struct* %43, %struct._cmsContext_struct* %44) #8
  %45 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %46 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocMPETypePluginChunk(%struct._cmsContext_struct* %45, %struct._cmsContext_struct* %46) #8
  %47 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %48 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocTagPluginChunk(%struct._cmsContext_struct* %47, %struct._cmsContext_struct* %48) #8
  %49 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %50 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocIntentsPluginChunk(%struct._cmsContext_struct* %49, %struct._cmsContext_struct* %50) #8
  %51 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %52 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocOptimizationPluginChunk(%struct._cmsContext_struct* %51, %struct._cmsContext_struct* %52) #8
  %53 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %54 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocTransformPluginChunk(%struct._cmsContext_struct* %53, %struct._cmsContext_struct* %54) #8
  %55 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  %56 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  call void @_cmsAllocMutexPluginChunk(%struct._cmsContext_struct* %55, %struct._cmsContext_struct* %56) #8
  store i32 1, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %57 = load i32, i32* %i, align 4, !tbaa !8
  %cmp17 = icmp slt i32 %57, 15
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %i, align 4, !tbaa !8
  %idxprom = sext i32 %58 to i64
  %59 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %src, align 8, !tbaa !5
  %chunks18 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %59, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [15 x i8*], [15 x i8*]* %chunks18, i32 0, i64 %idxprom
  %60 = load i8*, i8** %arrayidx19, align 8, !tbaa !5
  %cmp20 = icmp eq i8* %60, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %61 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  call void @cmsDeleteContext(%struct._cmsContext_struct* %61) #8
  store %struct._cmsContext_struct* null, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %62 = load i32, i32* %i, align 4, !tbaa !8
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ctx, align 8, !tbaa !5
  store %struct._cmsContext_struct* %63, %struct._cmsContext_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.21, %if.then.15, %if.then
  %64 = bitcast i8** %userData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast %struct._cmsContext_struct** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast %struct._cmsContext_struct** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %retval
  ret %struct._cmsContext_struct* %68
}

declare void @_cmsSubAllocDestroy(%struct._cmsSubAllocator*) #5

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #5

; Function Attrs: nounwind uwtable
define i8* @cmsGetContextUserData(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %0 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !5
  %call = call i8* @_cmsContextGetClientChunk(%struct._cmsContext_struct* %0, i32 0) #8
  ret i8* %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readnone }
attributes #10 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"short", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !6, i64 280}
!11 = !{!"_cms_io_handler", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !3, i64 24, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !3, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!18 = !{!19, !15, i64 0}
!19 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!17, !9, i64 4}
!21 = !{!19, !15, i64 8}
!22 = !{!17, !9, i64 8}
!23 = !{!19, !15, i64 16}
!24 = !{!11, !6, i64 312}
!25 = !{!26, !2, i64 10}
!26 = !{!"", !2, i64 0, !2, i64 2, !2, i64 4, !2, i64 6, !2, i64 8, !2, i64 10}
!27 = !{!28, !9, i64 0}
!28 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !29, i64 40, !6, i64 48}
!29 = !{!"long", !3, i64 0}
!30 = !{!26, !2, i64 8}
!31 = !{!28, !9, i64 4}
!32 = !{!26, !2, i64 6}
!33 = !{!28, !9, i64 8}
!34 = !{!26, !2, i64 4}
!35 = !{!28, !9, i64 12}
!36 = !{!26, !2, i64 2}
!37 = !{!28, !9, i64 16}
!38 = !{!26, !2, i64 0}
!39 = !{!28, !9, i64 20}
!40 = !{!28, !9, i64 24}
!41 = !{!28, !9, i64 28}
!42 = !{!28, !9, i64 32}
!43 = !{!44, !3, i64 0}
!44 = !{!"", !3, i64 0, !3, i64 4}
!45 = !{!11, !6, i64 304}
!46 = !{!47, !6, i64 8}
!47 = !{!"_cmsContext_struct", !6, i64 0, !6, i64 8, !3, i64 16, !48, i64 136}
!48 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!49 = !{!47, !6, i64 0}
!50 = !{!51, !9, i64 0}
!51 = !{!"_cmsPluginBaseStruct", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 16}
!52 = !{!51, !9, i64 4}
!53 = !{!51, !9, i64 8}
!54 = !{!51, !6, i64 16}
