; ModuleID = './cmsnamed.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_MLU_struct = type { %struct._cmsContext_struct*, i32, i32, %struct._cmsMLUentry*, i32, i32, i8* }
%struct._cmsMLUentry = type { i16, i16, i32, i32 }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct._cms_NAMEDCOLORLIST_struct = type { i32, i32, i32, [33 x i8], [33 x i8], %struct._cmsNAMEDCOLOR*, %struct._cmsContext_struct* }
%struct._cmsNAMEDCOLOR = type { [256 x i8], [3 x i16], [16 x i16] }
%struct._cmsStage_struct = type { %struct._cmsContext_struct*, i32, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*, %struct._cmsStage_struct* }
%struct._cmstransform_struct = type { i32, i32, void (%struct._cmstransform_struct*, i8*, i8*, i32, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, i16*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, i8* (%struct._cmstransform_struct*, float*, i8*, i32)*, %struct._cmsCACHE, %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct*, %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct*, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, %struct.cmsSEQ*, i32, double, i32, %struct._cmsContext_struct*, i8*, void (%struct._cmsContext_struct*, i8*)* }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct._cmsPipeline_struct = type { %struct._cmsStage_struct*, i32, i32, i8*, void (i16*, i16*, i8*)*, void (float*, float*, i8*)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*)*, %struct._cmsContext_struct*, i32 }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsSEQ = type { i32, %struct._cmsContext_struct*, %struct.cmsPSEQDESC* }
%struct.cmsPSEQDESC = type { i32, i32, i64, i32, %union.cmsProfileID, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct* }
%union.cmsProfileID = type { [4 x i32] }
%struct._cmsDICT_struct = type { %struct._cmsDICTentry_struct*, %struct._cmsContext_struct* }
%struct._cmsDICTentry_struct = type { %struct._cmsDICTentry_struct*, %struct._cms_MLU_struct*, %struct._cms_MLU_struct*, i32*, i32* }
%union.anon = type { double }

@.str = private unnamed_addr constant [21 x i8] c"(dict != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmsnamed.c\00", align 1
@__PRETTY_FUNCTION__.cmsDictFree = private unnamed_addr constant [28 x i8] c"void cmsDictFree(cmsHANDLE)\00", align 1
@__PRETTY_FUNCTION__.cmsDictAddEntry = private unnamed_addr constant [101 x i8] c"cmsBool cmsDictAddEntry(cmsHANDLE, const wchar_t *, const wchar_t *, const cmsMLU *, const cmsMLU *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"(Name != ((void*)0))\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(old_dict != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsDictDup = private unnamed_addr constant [32 x i8] c"cmsHANDLE cmsDictDup(cmsHANDLE)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Color %d out of range; ignored\00", align 1

; Function Attrs: nounwind uwtable
define %struct._cms_MLU_struct* @cmsMLUalloc(%struct._cmsContext_struct* %ContextID, i32 %nItems) #0 {
entry:
  %retval = alloca %struct._cms_MLU_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %nItems.addr = alloca i32, align 4
  %mlu = alloca %struct._cms_MLU_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %nItems, i32* %nItems.addr, align 4, !tbaa !5
  %0 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %nItems.addr, align 4, !tbaa !5
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %nItems.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %2, i32 40) #7
  %3 = bitcast i8* %call to %struct._cms_MLU_struct*
  store %struct._cms_MLU_struct* %3, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cms_MLU_struct* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %6, i32 0, i32 0
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !7
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load i32, i32* %nItems.addr, align 4, !tbaa !5
  %call5 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %7, i32 %8, i32 12) #7
  %9 = bitcast i8* %call5 to %struct._cmsMLUentry*
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %10, i32 0, i32 3
  store %struct._cmsMLUentry* %9, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %Entries6 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %11, i32 0, i32 3
  %12 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries6, align 8, !tbaa !9
  %cmp7 = icmp eq %struct._cmsMLUentry* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.3
  %13 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %14 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %15 = bitcast %struct._cms_MLU_struct* %14 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %13, i8* %15) #7
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.3
  %16 = load i32, i32* %nItems.addr, align 4, !tbaa !5
  %17 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %AllocatedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %17, i32 0, i32 1
  store i32 %16, i32* %AllocatedEntries, align 4, !tbaa !10
  %18 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %18, i32 0, i32 2
  store i32 0, i32* %UsedEntries, align 4, !tbaa !11
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu, align 8, !tbaa !1
  store %struct._cms_MLU_struct* %19, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then.2
  %20 = bitcast %struct._cms_MLU_struct** %mlu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %retval
  ret %struct._cms_MLU_struct* %21
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #2

declare i8* @_cmsCalloc(%struct._cmsContext_struct*, i32, i32) #2

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmsMLUsetASCII(%struct._cms_MLU_struct* %mlu, i8* %LanguageCode, i8* %CountryCode, i8* %ASCIIString) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %ASCIIString.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %WStr = alloca i32*, align 8
  %rc = alloca i32, align 4
  %Lang = alloca i16, align 2
  %Cntry = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i8* %ASCIIString, i8** %ASCIIString.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %ASCIIString.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #8
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, 1
  store i32 %add, i32* %len, align 4, !tbaa !5
  %3 = bitcast i32** %WStr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 2, !tbaa !12
  %call1 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %8) #7
  store i16 %call1, i16* %Lang, align 2, !tbaa !12
  %9 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  %12 = load i16, i16* %11, align 2, !tbaa !12
  %call2 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %12) #7
  store i16 %call2, i16* %Cntry, align 2, !tbaa !12
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !7
  %16 = load i32, i32* %len, align 4, !tbaa !5
  %call4 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %15, i32 %16, i32 4) #7
  %17 = bitcast i8* %call4 to i32*
  store i32* %17, i32** %WStr, align 8, !tbaa !1
  %18 = load i32*, i32** %WStr, align 8, !tbaa !1
  %cmp5 = icmp eq i32* %18, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %len, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %19, %20
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %21 to i64
  %22 = load i8*, i8** %ASCIIString.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv11 = sext i8 %23 to i32
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = zext i32 %24 to i64
  %25 = load i32*, i32** %WStr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %25, i64 %idxprom12
  store i32 %conv11, i32* %arrayidx13, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %28 = load i32, i32* %len, align 4, !tbaa !5
  %conv14 = zext i32 %28 to i64
  %mul = mul i64 %conv14, 4
  %conv15 = trunc i64 %mul to i32
  %29 = load i32*, i32** %WStr, align 8, !tbaa !1
  %30 = load i16, i16* %Lang, align 2, !tbaa !12
  %31 = load i16, i16* %Cntry, align 2, !tbaa !12
  %call16 = call i32 @AddMLUBlock(%struct._cms_MLU_struct* %27, i32 %conv15, i32* %29, i16 zeroext %30, i16 zeroext %31) #7
  store i32 %call16, i32* %rc, align 4, !tbaa !5
  %32 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID17 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %32, i32 0, i32 0
  %33 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID17, align 8, !tbaa !7
  %34 = load i32*, i32** %WStr, align 8, !tbaa !1
  %35 = bitcast i32* %34 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %33, i8* %35) #7
  %36 = load i32, i32* %rc, align 4, !tbaa !5
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7, %if.then
  %37 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.end(i64 2, i8* %37) #1
  %38 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %38) #1
  %39 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32** %WStr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare zeroext i16 @_cmsAdjustEndianess16(i16 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @AddMLUBlock(%struct._cms_MLU_struct* %mlu, i32 %size, i32* %Block, i16 zeroext %LanguageCode, i16 zeroext %CountryCode) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %size.addr = alloca i32, align 4
  %Block.addr = alloca i32*, align 8
  %LanguageCode.addr = alloca i16, align 2
  %CountryCode.addr = alloca i16, align 2
  %Offset = alloca i32, align 4
  %Ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32* %Block, i32** %Block.addr, align 8, !tbaa !1
  store i16 %LanguageCode, i16* %LanguageCode.addr, align 2, !tbaa !12
  store i16 %CountryCode, i16* %CountryCode.addr, align 2, !tbaa !12
  %0 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %Ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  %5 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %AllocatedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %AllocatedEntries, align 4, !tbaa !10
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %call = call i32 @GrowMLUtable(%struct._cms_MLU_struct* %7) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  %8 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %9 = load i16, i16* %LanguageCode.addr, align 2, !tbaa !12
  %10 = load i16, i16* %CountryCode.addr, align 2, !tbaa !12
  %call6 = call i32 @SearchMLUEntry(%struct._cms_MLU_struct* %8, i16 zeroext %9, i16 zeroext %10) #7
  %cmp7 = icmp sge i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end.9
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolSize = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %11, i32 0, i32 4
  %12 = load i32, i32* %PoolSize, align 4, !tbaa !15
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %13, i32 0, i32 5
  %14 = load i32, i32* %PoolUsed, align 4, !tbaa !16
  %sub = sub i32 %12, %14
  %15 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %sub, %15
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %call11 = call i32 @GrowMLUpool(%struct._cms_MLU_struct* %16) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %while.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed15 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %17, i32 0, i32 5
  %18 = load i32, i32* %PoolUsed15, align 4, !tbaa !16
  store i32 %18, i32* %Offset, align 4, !tbaa !5
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %19, i32 0, i32 6
  %20 = load i8*, i8** %MemPool, align 8, !tbaa !17
  store i8* %20, i8** %Ptr, align 8, !tbaa !1
  %21 = load i8*, i8** %Ptr, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %while.end
  %22 = load i8*, i8** %Ptr, align 8, !tbaa !1
  %23 = load i32, i32* %Offset, align 4, !tbaa !5
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %24 = load i32*, i32** %Block.addr, align 8, !tbaa !1
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %26 to i64
  %call19 = call i8* @memmove(i8* %add.ptr, i8* %25, i64 %conv) #9
  %27 = load i32, i32* %size.addr, align 4, !tbaa !5
  %28 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed20 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %28, i32 0, i32 5
  %29 = load i32, i32* %PoolUsed20, align 4, !tbaa !16
  %add = add i32 %29, %27
  store i32 %add, i32* %PoolUsed20, align 4, !tbaa !16
  %30 = load i32, i32* %Offset, align 4, !tbaa !5
  %31 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries21 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %31, i32 0, i32 2
  %32 = load i32, i32* %UsedEntries21, align 4, !tbaa !11
  %idxprom = sext i32 %32 to i64
  %33 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %33, i32 0, i32 3
  %34 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %34, i64 %idxprom
  %StrW = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx, i32 0, i32 2
  store i32 %30, i32* %StrW, align 4, !tbaa !18
  %35 = load i32, i32* %size.addr, align 4, !tbaa !5
  %36 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries22 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %36, i32 0, i32 2
  %37 = load i32, i32* %UsedEntries22, align 4, !tbaa !11
  %idxprom23 = sext i32 %37 to i64
  %38 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries24 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %38, i32 0, i32 3
  %39 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries24, align 8, !tbaa !9
  %arrayidx25 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %39, i64 %idxprom23
  %Len = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx25, i32 0, i32 3
  store i32 %35, i32* %Len, align 4, !tbaa !20
  %40 = load i16, i16* %CountryCode.addr, align 2, !tbaa !12
  %41 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries26 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %41, i32 0, i32 2
  %42 = load i32, i32* %UsedEntries26, align 4, !tbaa !11
  %idxprom27 = sext i32 %42 to i64
  %43 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries28 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %43, i32 0, i32 3
  %44 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries28, align 8, !tbaa !9
  %arrayidx29 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %44, i64 %idxprom27
  %Country = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx29, i32 0, i32 1
  store i16 %40, i16* %Country, align 2, !tbaa !21
  %45 = load i16, i16* %LanguageCode.addr, align 2, !tbaa !12
  %46 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries30 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %46, i32 0, i32 2
  %47 = load i32, i32* %UsedEntries30, align 4, !tbaa !11
  %idxprom31 = sext i32 %47 to i64
  %48 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries32 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %48, i32 0, i32 3
  %49 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries32, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %49, i64 %idxprom31
  %Language = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx33, i32 0, i32 0
  store i16 %45, i16* %Language, align 2, !tbaa !22
  %50 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries34 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %50, i32 0, i32 2
  %51 = load i32, i32* %UsedEntries34, align 4, !tbaa !11
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %UsedEntries34, align 4, !tbaa !11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.13, %if.then.8, %if.then.3, %if.then
  %52 = bitcast i8** %Ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %Offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUsetWide(%struct._cms_MLU_struct* %mlu, i8* %Language, i8* %Country, i32* %WideString) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %Language.addr = alloca i8*, align 8
  %Country.addr = alloca i8*, align 8
  %WideString.addr = alloca i32*, align 8
  %Lang = alloca i16, align 2
  %Cntry = alloca i16, align 2
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i8* %Language, i8** %Language.addr, align 8, !tbaa !1
  store i8* %Country, i8** %Country.addr, align 8, !tbaa !1
  store i32* %WideString, i32** %WideString.addr, align 8, !tbaa !1
  %0 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load i8*, i8** %Language.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to i16*
  %3 = load i16, i16* %2, align 2, !tbaa !12
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %3) #7
  store i16 %call, i16* %Lang, align 2, !tbaa !12
  %4 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load i8*, i8** %Country.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !12
  %call1 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %7) #7
  store i16 %call1, i16* %Cntry, align 2, !tbaa !12
  %8 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32*, i32** %WideString.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i32* %10, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %11 = load i32*, i32** %WideString.addr, align 8, !tbaa !1
  %call5 = call i32 @mywcslen(i32* %11) #7
  %add = add i32 %call5, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 4
  %conv6 = trunc i64 %mul to i32
  store i32 %conv6, i32* %len, align 4, !tbaa !5
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %13 = load i32, i32* %len, align 4, !tbaa !5
  %14 = load i32*, i32** %WideString.addr, align 8, !tbaa !1
  %15 = load i16, i16* %Lang, align 2, !tbaa !12
  %16 = load i16, i16* %Cntry, align 2, !tbaa !12
  %call7 = call i32 @AddMLUBlock(%struct._cms_MLU_struct* %12, i32 %13, i32* %14, i16 zeroext %15, i16 zeroext %16) #7
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %17 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #1
  %19 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @mywcslen(i32* %s) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  store i32* %s, i32** %s.addr, align 8, !tbaa !1
  %0 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32*, i32** %s.addr, align 8, !tbaa !1
  store i32* %1, i32** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32*, i32** %p, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32*, i32** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32*, i32** %p, align 8, !tbaa !1
  %6 = load i32*, i32** %s.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i32* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  %7 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %mlu) #0 {
entry:
  %retval = alloca %struct._cms_MLU_struct*, align 8
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %NewMlu = alloca %struct._cms_MLU_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_MLU_struct** %NewMlu to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %1 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %2, i32 0, i32 0
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !7
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %4, i32 0, i32 2
  %5 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  %call = call %struct._cms_MLU_struct* @cmsMLUalloc(%struct._cmsContext_struct* %3, i32 %5) #7
  store %struct._cms_MLU_struct* %call, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %cmp1 = icmp eq %struct._cms_MLU_struct* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %AllocatedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %AllocatedEntries, align 4, !tbaa !10
  %9 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries4 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %UsedEntries4, align 4, !tbaa !11
  %cmp5 = icmp slt i32 %8, %10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %Error

if.end.7:                                         ; preds = %if.end.3
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %11, i32 0, i32 3
  %12 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %cmp8 = icmp eq %struct._cmsMLUentry* %12, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries9 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %13, i32 0, i32 3
  %14 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries9, align 8, !tbaa !9
  %cmp10 = icmp eq %struct._cmsMLUentry* %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %Error

if.end.12:                                        ; preds = %lor.lhs.false
  %15 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %Entries13 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %15, i32 0, i32 3
  %16 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries13, align 8, !tbaa !9
  %17 = bitcast %struct._cmsMLUentry* %16 to i8*
  %18 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries14 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %18, i32 0, i32 3
  %19 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries14, align 8, !tbaa !9
  %20 = bitcast %struct._cmsMLUentry* %19 to i8*
  %21 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries15 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %21, i32 0, i32 2
  %22 = load i32, i32* %UsedEntries15, align 4, !tbaa !11
  %conv = sext i32 %22 to i64
  %mul = mul i64 %conv, 12
  %call16 = call i8* @memmove(i8* %17, i8* %20, i64 %mul) #9
  %23 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries17 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %23, i32 0, i32 2
  %24 = load i32, i32* %UsedEntries17, align 4, !tbaa !11
  %25 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %UsedEntries18 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %25, i32 0, i32 2
  store i32 %24, i32* %UsedEntries18, align 4, !tbaa !11
  %26 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %26, i32 0, i32 5
  %27 = load i32, i32* %PoolUsed, align 4, !tbaa !16
  %cmp19 = icmp eq i32 %27, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.12
  %28 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %28, i32 0, i32 6
  store i8* null, i8** %MemPool, align 8, !tbaa !17
  br label %if.end.31

if.else:                                          ; preds = %if.end.12
  %29 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID22 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %29, i32 0, i32 0
  %30 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID22, align 8, !tbaa !7
  %31 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed23 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %31, i32 0, i32 5
  %32 = load i32, i32* %PoolUsed23, align 4, !tbaa !16
  %call24 = call i8* @_cmsMalloc(%struct._cmsContext_struct* %30, i32 %32) #7
  %33 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %MemPool25 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %33, i32 0, i32 6
  store i8* %call24, i8** %MemPool25, align 8, !tbaa !17
  %34 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %MemPool26 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %34, i32 0, i32 6
  %35 = load i8*, i8** %MemPool26, align 8, !tbaa !17
  %cmp27 = icmp eq i8* %35, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  br label %Error

if.end.30:                                        ; preds = %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.21
  %36 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed32 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %36, i32 0, i32 5
  %37 = load i32, i32* %PoolUsed32, align 4, !tbaa !16
  %38 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %PoolSize = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %38, i32 0, i32 4
  store i32 %37, i32* %PoolSize, align 4, !tbaa !15
  %39 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %MemPool33 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %39, i32 0, i32 6
  %40 = load i8*, i8** %MemPool33, align 8, !tbaa !17
  %cmp34 = icmp eq i8* %40, null
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.end.31
  %41 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool37 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %41, i32 0, i32 6
  %42 = load i8*, i8** %MemPool37, align 8, !tbaa !17
  %cmp38 = icmp eq i8* %42, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.36, %if.end.31
  br label %Error

if.end.41:                                        ; preds = %lor.lhs.false.36
  %43 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %MemPool42 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %43, i32 0, i32 6
  %44 = load i8*, i8** %MemPool42, align 8, !tbaa !17
  %45 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool43 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %45, i32 0, i32 6
  %46 = load i8*, i8** %MemPool43, align 8, !tbaa !17
  %47 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed44 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %47, i32 0, i32 5
  %48 = load i32, i32* %PoolUsed44, align 4, !tbaa !16
  %conv45 = zext i32 %48 to i64
  %call46 = call i8* @memmove(i8* %44, i8* %46, i64 %conv45) #9
  %49 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolUsed47 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %49, i32 0, i32 5
  %50 = load i32, i32* %PoolUsed47, align 4, !tbaa !16
  %51 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %PoolUsed48 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %51, i32 0, i32 5
  store i32 %50, i32* %PoolUsed48, align 4, !tbaa !16
  %52 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  store %struct._cms_MLU_struct* %52, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.40, %if.then.29, %if.then.11, %if.then.6
  %53 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  %cmp49 = icmp ne %struct._cms_MLU_struct* %53, null
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %Error
  %54 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %NewMlu, align 8, !tbaa !1
  call void @cmsMLUfree(%struct._cms_MLU_struct* %54) #7
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %Error
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.end.41, %if.then.2, %if.then
  %55 = bitcast %struct._cms_MLU_struct** %NewMlu to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %retval
  ret %struct._cms_MLU_struct* %56
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #4

declare i8* @_cmsMalloc(%struct._cmsContext_struct*, i32) #2

; Function Attrs: nounwind uwtable
define void @cmsMLUfree(%struct._cms_MLU_struct* %mlu) #0 {
entry:
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %0 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct._cms_MLU_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %1, i32 0, i32 3
  %2 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %tobool1 = icmp ne %struct._cmsMLUentry* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 0
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !7
  %5 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries3 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %5, i32 0, i32 3
  %6 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries3, align 8, !tbaa !9
  %7 = bitcast %struct._cmsMLUentry* %6 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %4, i8* %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %8, i32 0, i32 6
  %9 = load i8*, i8** %MemPool, align 8, !tbaa !17
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID6 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %10, i32 0, i32 0
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID6, align 8, !tbaa !7
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool7 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %12, i32 0, i32 6
  %13 = load i8*, i8** %MemPool7, align 8, !tbaa !17
  call void @_cmsFree(%struct._cmsContext_struct* %11, i8* %13) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID9 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %14, i32 0, i32 0
  %15 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID9, align 8, !tbaa !7
  %16 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %17 = bitcast %struct._cms_MLU_struct* %16 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %15, i8* %17) #7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUgetASCII(%struct._cms_MLU_struct* %mlu, i8* %LanguageCode, i8* %CountryCode, i8* %Buffer, i32 %BufferSize) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %Buffer.addr = alloca i8*, align 8
  %BufferSize.addr = alloca i32, align 4
  %Wide = alloca i32*, align 8
  %StrLen = alloca i32, align 4
  %ASCIIlen = alloca i32, align 4
  %i = alloca i32, align 4
  %Lang = alloca i16, align 2
  %Cntry = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i8* %Buffer, i8** %Buffer.addr, align 8, !tbaa !1
  store i32 %BufferSize, i32* %BufferSize.addr, align 4, !tbaa !5
  %0 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %StrLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %StrLen, align 4, !tbaa !5
  %2 = bitcast i32* %ASCIIlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to i16*
  %7 = load i16, i16* %6, align 2, !tbaa !12
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %7) #7
  store i16 %call, i16* %Lang, align 2, !tbaa !12
  %8 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  %9 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to i16*
  %11 = load i16, i16* %10, align 2, !tbaa !12
  %call1 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %11) #7
  store i16 %call1, i16* %Cntry, align 2, !tbaa !12
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %14 = load i16, i16* %Lang, align 2, !tbaa !12
  %15 = load i16, i16* %Cntry, align 2, !tbaa !12
  %call2 = call i32* @_cmsMLUgetWide(%struct._cms_MLU_struct* %13, i32* %StrLen, i16 zeroext %14, i16 zeroext %15, i16* null, i16* null) #7
  store i32* %call2, i32** %Wide, align 8, !tbaa !1
  %16 = load i32*, i32** %Wide, align 8, !tbaa !1
  %cmp3 = icmp eq i32* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv = zext i32 %17 to i64
  %div = udiv i64 %conv, 4
  %conv6 = trunc i64 %div to i32
  store i32 %conv6, i32* %ASCIIlen, align 4, !tbaa !5
  %18 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %18, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  %19 = load i32, i32* %ASCIIlen, align 4, !tbaa !5
  %add = add i32 %19, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.5
  %20 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %cmp11 = icmp ule i32 %20, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.10
  %21 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %22 = load i32, i32* %ASCIIlen, align 4, !tbaa !5
  %add15 = add i32 %22, 1
  %cmp16 = icmp ult i32 %21, %add15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  %23 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %sub = sub i32 %23, 1
  store i32 %sub, i32* %ASCIIlen, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.14
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %25 = load i32, i32* %ASCIIlen, align 4, !tbaa !5
  %cmp20 = icmp ult i32 %24, %25
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %26 to i64
  %27 = load i32*, i32** %Wide, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %28, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = zext i32 %29 to i64
  %30 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %30, i64 %idxprom25
  store i8 0, i8* %arrayidx26, align 1, !tbaa !14
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = zext i32 %31 to i64
  %32 = load i32*, i32** %Wide, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %32, i64 %idxprom27
  %33 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %conv29 = trunc i32 %33 to i8
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = zext i32 %34 to i64
  %35 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %35, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1, !tbaa !14
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %ASCIIlen, align 4, !tbaa !5
  %idxprom33 = zext i32 %37 to i64
  %38 = load i8*, i8** %Buffer.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %38, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1, !tbaa !14
  %39 = load i32, i32* %ASCIIlen, align 4, !tbaa !5
  %add35 = add i32 %39, 1
  store i32 %add35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.13, %if.then.9, %if.then.4, %if.then
  %40 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.end(i64 2, i8* %40) #1
  %41 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %ASCIIlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %StrLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32* @_cmsMLUgetWide(%struct._cms_MLU_struct* %mlu, i32* %len, i16 zeroext %LanguageCode, i16 zeroext %CountryCode, i16* %UsedLanguageCode, i16* %UsedCountryCode) #0 {
entry:
  %retval = alloca i32*, align 8
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %len.addr = alloca i32*, align 8
  %LanguageCode.addr = alloca i16, align 2
  %CountryCode.addr = alloca i16, align 2
  %UsedLanguageCode.addr = alloca i16*, align 8
  %UsedCountryCode.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %Best = alloca i32, align 4
  %v = alloca %struct._cmsMLUentry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i32* %len, i32** %len.addr, align 8, !tbaa !1
  store i16 %LanguageCode, i16* %LanguageCode.addr, align 2, !tbaa !12
  store i16 %CountryCode, i16* %CountryCode.addr, align 2, !tbaa !12
  store i16* %UsedLanguageCode, i16** %UsedLanguageCode.addr, align 8, !tbaa !1
  store i16* %UsedCountryCode, i16** %UsedCountryCode.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %Best to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %Best, align 4, !tbaa !5
  %2 = bitcast %struct._cmsMLUentry** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %AllocatedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %AllocatedEntries, align 4, !tbaa !10
  %cmp1 = icmp sle i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32* null, i32** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %7, i32 0, i32 2
  %8 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %9, i32 0, i32 3
  %10 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %10, i64 %idx.ext
  store %struct._cmsMLUentry* %add.ptr, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %12 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Language = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %12, i32 0, i32 0
  %13 = load i16, i16* %Language, align 2, !tbaa !22
  %conv = zext i16 %13 to i32
  %14 = load i16, i16* %LanguageCode.addr, align 2, !tbaa !12
  %conv5 = zext i16 %14 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end.35

if.then.8:                                        ; preds = %for.body
  %15 = load i32, i32* %Best, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %15, -1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %16 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %16, i32* %Best, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %17 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Country = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %17, i32 0, i32 1
  %18 = load i16, i16* %Country, align 2, !tbaa !21
  %conv13 = zext i16 %18 to i32
  %19 = load i16, i16* %CountryCode.addr, align 2, !tbaa !12
  %conv14 = zext i16 %19 to i32
  %cmp15 = icmp eq i32 %conv13, %conv14
  br i1 %cmp15, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %if.end.12
  %20 = load i16*, i16** %UsedLanguageCode.addr, align 8, !tbaa !1
  %cmp18 = icmp ne i16* %20, null
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.17
  %21 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Language21 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %21, i32 0, i32 0
  %22 = load i16, i16* %Language21, align 2, !tbaa !22
  %23 = load i16*, i16** %UsedLanguageCode.addr, align 8, !tbaa !1
  store i16 %22, i16* %23, align 2, !tbaa !12
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.17
  %24 = load i16*, i16** %UsedCountryCode.addr, align 8, !tbaa !1
  %cmp23 = icmp ne i16* %24, null
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %25 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Country26 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %25, i32 0, i32 1
  %26 = load i16, i16* %Country26, align 2, !tbaa !21
  %27 = load i16*, i16** %UsedCountryCode.addr, align 8, !tbaa !1
  store i16 %26, i16* %27, align 2, !tbaa !12
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %28 = load i32*, i32** %len.addr, align 8, !tbaa !1
  %cmp28 = icmp ne i32* %28, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  %29 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Len = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %29, i32 0, i32 3
  %30 = load i32, i32* %Len, align 4, !tbaa !20
  %31 = load i32*, i32** %len.addr, align 8, !tbaa !1
  store i32 %30, i32* %31, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %32 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %32, i32 0, i32 6
  %33 = load i8*, i8** %MemPool, align 8, !tbaa !17
  %34 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %StrW = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %34, i32 0, i32 2
  %35 = load i32, i32* %StrW, align 4, !tbaa !18
  %idx.ext32 = zext i32 %35 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %33, i64 %idx.ext32
  %36 = bitcast i8* %add.ptr33 to i32*
  store i32* %36, i32** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.12
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %Best, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %38, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end
  store i32 0, i32* %Best, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %for.end
  %39 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries40 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %39, i32 0, i32 3
  %40 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries40, align 8, !tbaa !9
  %41 = load i32, i32* %Best, align 4, !tbaa !5
  %idx.ext41 = sext i32 %41 to i64
  %add.ptr42 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %40, i64 %idx.ext41
  store %struct._cmsMLUentry* %add.ptr42, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %42 = load i16*, i16** %UsedLanguageCode.addr, align 8, !tbaa !1
  %cmp43 = icmp ne i16* %42, null
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.39
  %43 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Language46 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %43, i32 0, i32 0
  %44 = load i16, i16* %Language46, align 2, !tbaa !22
  %45 = load i16*, i16** %UsedLanguageCode.addr, align 8, !tbaa !1
  store i16 %44, i16* %45, align 2, !tbaa !12
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.39
  %46 = load i16*, i16** %UsedCountryCode.addr, align 8, !tbaa !1
  %cmp48 = icmp ne i16* %46, null
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %47 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Country51 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %47, i32 0, i32 1
  %48 = load i16, i16* %Country51, align 2, !tbaa !21
  %49 = load i16*, i16** %UsedCountryCode.addr, align 8, !tbaa !1
  store i16 %48, i16* %49, align 2, !tbaa !12
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %50 = load i32*, i32** %len.addr, align 8, !tbaa !1
  %cmp53 = icmp ne i32* %50, null
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  %51 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %Len56 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %51, i32 0, i32 3
  %52 = load i32, i32* %Len56, align 4, !tbaa !20
  %53 = load i32*, i32** %len.addr, align 8, !tbaa !1
  store i32 %52, i32* %53, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %54 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool58 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %54, i32 0, i32 6
  %55 = load i8*, i8** %MemPool58, align 8, !tbaa !17
  %56 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %v, align 8, !tbaa !1
  %StrW59 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %56, i32 0, i32 2
  %57 = load i32, i32* %StrW59, align 4, !tbaa !18
  %idx.ext60 = zext i32 %57 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %55, i64 %idx.ext60
  %58 = bitcast i8* %add.ptr61 to i32*
  store i32* %58, i32** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.end.31, %if.then.2, %if.then
  %59 = bitcast %struct._cmsMLUentry** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %Best to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = load i32*, i32** %retval
  ret i32* %62
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUgetWide(%struct._cms_MLU_struct* %mlu, i8* %LanguageCode, i8* %CountryCode, i32* %Buffer, i32 %BufferSize) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %Buffer.addr = alloca i32*, align 8
  %BufferSize.addr = alloca i32, align 4
  %Wide = alloca i32*, align 8
  %StrLen = alloca i32, align 4
  %Lang = alloca i16, align 2
  %Cntry = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i32* %Buffer, i32** %Buffer.addr, align 8, !tbaa !1
  store i32 %BufferSize, i32* %BufferSize.addr, align 4, !tbaa !5
  %0 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %StrLen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %StrLen, align 4, !tbaa !5
  %2 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  %3 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %4 = bitcast i8* %3 to i16*
  %5 = load i16, i16* %4, align 2, !tbaa !12
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %5) #7
  store i16 %call, i16* %Lang, align 2, !tbaa !12
  %6 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to i16*
  %9 = load i16, i16* %8, align 2, !tbaa !12
  %call1 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %9) #7
  store i16 %call1, i16* %Cntry, align 2, !tbaa !12
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %12 = load i16, i16* %Lang, align 2, !tbaa !12
  %13 = load i16, i16* %Cntry, align 2, !tbaa !12
  %call2 = call i32* @_cmsMLUgetWide(%struct._cms_MLU_struct* %11, i32* %StrLen, i16 zeroext %12, i16 zeroext %13, i16* null, i16* null) #7
  store i32* %call2, i32** %Wide, align 8, !tbaa !1
  %14 = load i32*, i32** %Wide, align 8, !tbaa !1
  %cmp3 = icmp eq i32* %14, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %15 = load i32*, i32** %Buffer.addr, align 8, !tbaa !1
  %cmp6 = icmp eq i32* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %16 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv = zext i32 %16 to i64
  %add = add i64 %conv, 4
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %17 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %cmp10 = icmp ule i32 %17, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.9
  %18 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %conv14 = zext i32 %18 to i64
  %19 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv15 = zext i32 %19 to i64
  %add16 = add i64 %conv15, 4
  %cmp17 = icmp ult i64 %conv14, %add16
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.13
  %20 = load i32, i32* %BufferSize.addr, align 4, !tbaa !5
  %conv20 = zext i32 %20 to i64
  %sub = sub i64 %conv20, 4
  %conv21 = trunc i64 %sub to i32
  store i32 %conv21, i32* %StrLen, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.13
  %21 = load i32*, i32** %Buffer.addr, align 8, !tbaa !1
  %22 = bitcast i32* %21 to i8*
  %23 = load i32*, i32** %Wide, align 8, !tbaa !1
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv23 = zext i32 %25 to i64
  %call24 = call i8* @memmove(i8* %22, i8* %24, i64 %conv23) #9
  %26 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv25 = zext i32 %26 to i64
  %div = udiv i64 %conv25, 4
  %27 = load i32*, i32** %Buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %div
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %28 = load i32, i32* %StrLen, align 4, !tbaa !5
  %conv26 = zext i32 %28 to i64
  %add27 = add i64 %conv26, 4
  %conv28 = trunc i64 %add27 to i32
  store i32 %conv28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.12, %if.then.7, %if.then.4, %if.then
  %29 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #1
  %30 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #1
  %31 = bitcast i32* %StrLen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUgetTranslation(%struct._cms_MLU_struct* %mlu, i8* %LanguageCode, i8* %CountryCode, i8* %ObtainedLanguage, i8* %ObtainedCountry) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %ObtainedLanguage.addr = alloca i8*, align 8
  %ObtainedCountry.addr = alloca i8*, align 8
  %Wide = alloca i32*, align 8
  %Lang = alloca i16, align 2
  %Cntry = alloca i16, align 2
  %ObtLang = alloca i16, align 2
  %ObtCode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  store i8* %ObtainedLanguage, i8** %ObtainedLanguage.addr, align 8, !tbaa !1
  store i8* %ObtainedCountry, i8** %ObtainedCountry.addr, align 8, !tbaa !1
  %0 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to i16*
  %4 = load i16, i16* %3, align 2, !tbaa !12
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %4) #7
  store i16 %call, i16* %Lang, align 2, !tbaa !12
  %5 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 2, !tbaa !12
  %call1 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %8) #7
  store i16 %call1, i16* %Cntry, align 2, !tbaa !12
  %9 = bitcast i16* %ObtLang to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  %10 = bitcast i16* %ObtCode to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %13 = load i16, i16* %Lang, align 2, !tbaa !12
  %14 = load i16, i16* %Cntry, align 2, !tbaa !12
  %call2 = call i32* @_cmsMLUgetWide(%struct._cms_MLU_struct* %12, i32* null, i16 zeroext %13, i16 zeroext %14, i16* %ObtLang, i16* %ObtCode) #7
  store i32* %call2, i32** %Wide, align 8, !tbaa !1
  %15 = load i32*, i32** %Wide, align 8, !tbaa !1
  %cmp3 = icmp eq i32* %15, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %16 = load i16, i16* %ObtLang, align 2, !tbaa !12
  %call6 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %16) #7
  %17 = load i8*, i8** %ObtainedLanguage.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to i16*
  store i16 %call6, i16* %18, align 2, !tbaa !12
  %19 = load i16, i16* %ObtCode, align 2, !tbaa !12
  %call7 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %19) #7
  %20 = load i8*, i8** %ObtainedCountry.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to i16*
  store i16 %call7, i16* %21, align 2, !tbaa !12
  %22 = load i8*, i8** %ObtainedCountry.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 2
  store i8 0, i8* %arrayidx, align 1, !tbaa !14
  %23 = load i8*, i8** %ObtainedLanguage.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 0, i8* %arrayidx8, align 1, !tbaa !14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %24 = bitcast i16* %ObtCode to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = bitcast i16* %ObtLang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #1
  %26 = bitcast i16* %Cntry to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  %27 = bitcast i16* %Lang to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #1
  %28 = bitcast i32** %Wide to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUtranslationsCount(%struct._cms_MLU_struct* %mlu) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %0 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @cmsMLUtranslationsCodes(%struct._cms_MLU_struct* %mlu, i32 %idx, i8* %LanguageCode, i8* %CountryCode) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %idx.addr = alloca i32, align 4
  %LanguageCode.addr = alloca i8*, align 8
  %CountryCode.addr = alloca i8*, align 8
  %entry1 = alloca %struct._cmsMLUentry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !5
  store i8* %LanguageCode, i8** %LanguageCode.addr, align 8, !tbaa !1
  store i8* %CountryCode, i8** %CountryCode.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsMLUentry** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %idx.addr, align 4, !tbaa !5
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  %cmp2 = icmp uge i32 %2, %4
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %idx.addr, align 4, !tbaa !5
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %6, i32 0, i32 3
  %7 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %7, i64 %idxprom
  store %struct._cmsMLUentry* %arrayidx, %struct._cmsMLUentry** %entry1, align 8, !tbaa !1
  %8 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %entry1, align 8, !tbaa !1
  %Language = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %8, i32 0, i32 0
  %9 = load i16, i16* %Language, align 2, !tbaa !22
  %call = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %9) #7
  %10 = load i8*, i8** %LanguageCode.addr, align 8, !tbaa !1
  %11 = bitcast i8* %10 to i16*
  store i16 %call, i16* %11, align 2, !tbaa !12
  %12 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %entry1, align 8, !tbaa !1
  %Country = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %12, i32 0, i32 1
  %13 = load i16, i16* %Country, align 2, !tbaa !21
  %call5 = call zeroext i16 @_cmsAdjustEndianess16(i16 zeroext %13) #7
  %14 = load i8*, i8** %CountryCode.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to i16*
  store i16 %call5, i16* %15, align 2, !tbaa !12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %16 = bitcast %struct._cmsMLUentry** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define %struct._cms_NAMEDCOLORLIST_struct* @cmsAllocNamedColorList(%struct._cmsContext_struct* %ContextID, i32 %n, i32 %ColorantCount, i8* %Prefix, i8* %Suffix) #0 {
entry:
  %retval = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %n.addr = alloca i32, align 4
  %ColorantCount.addr = alloca i32, align 4
  %Prefix.addr = alloca i8*, align 8
  %Suffix.addr = alloca i8*, align 8
  %v = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  store i32 %ColorantCount, i32* %ColorantCount.addr, align 4, !tbaa !5
  store i8* %Prefix, i8** %Prefix.addr, align 8, !tbaa !1
  store i8* %Suffix, i8** %Suffix.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 96) #7
  %2 = bitcast i8* %call to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %2, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %4, i32 0, i32 5
  store %struct._cmsNAMEDCOLOR* null, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %5 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %5, i32 0, i32 0
  store i32 0, i32* %nColors, align 4, !tbaa !25
  %6 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %7 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %7, i32 0, i32 6
  store %struct._cmsContext_struct* %6, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %Allocated = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %Allocated, align 4, !tbaa !27
  %10 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp2 = icmp ult i32 %9, %10
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %call3 = call i32 @GrowNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %11) #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %Prefix4 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix4, i32 0, i32 0
  %13 = load i8*, i8** %Prefix.addr, align 8, !tbaa !1
  %call5 = call i8* @strncpy(i8* %arraydecay, i8* %13, i64 32) #9
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %Suffix6 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %14, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix6, i32 0, i32 0
  %15 = load i8*, i8** %Suffix.addr, align 8, !tbaa !1
  %call8 = call i8* @strncpy(i8* %arraydecay7, i8* %15, i64 32) #9
  %16 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %Suffix9 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %16, i32 0, i32 4
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix9, i32 0, i64 32
  store i8 0, i8* %arrayidx, align 1, !tbaa !14
  %17 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %Prefix10 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %17, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix10, i32 0, i64 32
  store i8 0, i8* %arrayidx11, align 1, !tbaa !14
  %18 = load i32, i32* %ColorantCount.addr, align 4, !tbaa !5
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  %ColorantCount12 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %19, i32 0, i32 2
  store i32 %18, i32* %ColorantCount12, align 4, !tbaa !28
  %20 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v, align 8, !tbaa !1
  store %struct._cms_NAMEDCOLORLIST_struct* %20, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %21 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %retval
  ret %struct._cms_NAMEDCOLORLIST_struct* %22
}

; Function Attrs: nounwind uwtable
define internal i32 @GrowNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %size = alloca i32, align 4
  %NewPtr = alloca %struct._cmsNAMEDCOLOR*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_NAMEDCOLORLIST_struct* %v, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsNAMEDCOLOR** %NewPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Allocated = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %Allocated, align 4, !tbaa !27
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 64, i32* %size, align 4, !tbaa !5
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Allocated3 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %Allocated3, align 4, !tbaa !27
  %mul = mul i32 %6, 2
  store i32 %mul, i32* %size, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %cmp5 = icmp ugt i32 %7, 102400
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end.4
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 6
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %10 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %10, i32 0, i32 5
  %11 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %12 = bitcast %struct._cmsNAMEDCOLOR* %11 to i8*
  %13 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %13 to i64
  %mul8 = mul i64 %conv, 294
  %conv9 = trunc i64 %mul8 to i32
  %call = call i8* @_cmsRealloc(%struct._cmsContext_struct* %9, i8* %12, i32 %conv9) #7
  %14 = bitcast i8* %call to %struct._cmsNAMEDCOLOR*
  store %struct._cmsNAMEDCOLOR* %14, %struct._cmsNAMEDCOLOR** %NewPtr, align 8, !tbaa !1
  %15 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %NewPtr, align 8, !tbaa !1
  %cmp10 = icmp eq %struct._cmsNAMEDCOLOR* %15, null
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.7
  %16 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %NewPtr, align 8, !tbaa !1
  %17 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %List14 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %17, i32 0, i32 5
  store %struct._cmsNAMEDCOLOR* %16, %struct._cmsNAMEDCOLOR** %List14, align 8, !tbaa !23
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Allocated15 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %19, i32 0, i32 1
  store i32 %18, i32* %Allocated15, align 4, !tbaa !27
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12, %if.then.6, %if.then
  %20 = bitcast %struct._cmsNAMEDCOLOR** %NewPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %v) #0 {
entry:
  %v.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  store %struct._cms_NAMEDCOLORLIST_struct* %v, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %0 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %1, i32 0, i32 5
  %2 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %tobool = icmp ne %struct._cmsNAMEDCOLOR* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %3, i32 0, i32 6
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %5 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %List2 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %5, i32 0, i32 5
  %6 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List2, align 8, !tbaa !23
  %7 = bitcast %struct._cmsNAMEDCOLOR* %6 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %4, i8* %7) #7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 6
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !26
  %10 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %11 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %10 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %9, i8* %11) #7
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %v) #0 {
entry:
  %retval = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %v.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %NewNC = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_NAMEDCOLORLIST_struct* %v, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NewNC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %2, i32 0, i32 6
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %nColors, align 4, !tbaa !25
  %6 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %ColorantCount, align 4, !tbaa !28
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Prefix = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix, i32 0, i32 0
  %9 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Suffix = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %9, i32 0, i32 4
  %arraydecay1 = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix, i32 0, i32 0
  %call = call %struct._cms_NAMEDCOLORLIST_struct* @cmsAllocNamedColorList(%struct._cmsContext_struct* %3, i32 %5, i32 %7, i8* %arraydecay, i8* %arraydecay1) #7
  store %struct._cms_NAMEDCOLORLIST_struct* %call, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %10 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %cmp2 = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %10, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %11 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %Allocated = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %Allocated, align 4, !tbaa !27
  %13 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Allocated5 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %Allocated5, align 4, !tbaa !27
  %cmp6 = icmp ult i32 %12, %14
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %call7 = call i32 @GrowNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %15) #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %Prefix8 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %16, i32 0, i32 3
  %arraydecay9 = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix8, i32 0, i32 0
  %17 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Prefix10 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %17, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix10, i32 0, i32 0
  %call12 = call i8* @memmove(i8* %arraydecay9, i8* %arraydecay11, i64 33) #9
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %Suffix13 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %18, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix13, i32 0, i32 0
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %Suffix15 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %19, i32 0, i32 4
  %arraydecay16 = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix15, i32 0, i32 0
  %call17 = call i8* @memmove(i8* %arraydecay14, i8* %arraydecay16, i64 33) #9
  %20 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %ColorantCount18 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %20, i32 0, i32 2
  %21 = load i32, i32* %ColorantCount18, align 4, !tbaa !28
  %22 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %ColorantCount19 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %22, i32 0, i32 2
  store i32 %21, i32* %ColorantCount19, align 4, !tbaa !28
  %23 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %23, i32 0, i32 5
  %24 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %25 = bitcast %struct._cmsNAMEDCOLOR* %24 to i8*
  %26 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %List20 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %26, i32 0, i32 5
  %27 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List20, align 8, !tbaa !23
  %28 = bitcast %struct._cmsNAMEDCOLOR* %27 to i8*
  %29 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %nColors21 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %29, i32 0, i32 0
  %30 = load i32, i32* %nColors21, align 4, !tbaa !25
  %conv = zext i32 %30 to i64
  %mul = mul i64 %conv, 294
  %call22 = call i8* @memmove(i8* %25, i8* %28, i64 %mul) #9
  %31 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %v.addr, align 8, !tbaa !1
  %nColors23 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %31, i32 0, i32 0
  %32 = load i32, i32* %nColors23, align 4, !tbaa !25
  %33 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  %nColors24 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %33, i32 0, i32 0
  store i32 %32, i32* %nColors24, align 4, !tbaa !25
  %34 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NewNC, align 8, !tbaa !1
  store %struct._cms_NAMEDCOLORLIST_struct* %34, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.3, %if.then
  %35 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NewNC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %retval
  ret %struct._cms_NAMEDCOLORLIST_struct* %36
}

; Function Attrs: nounwind uwtable
define i32 @cmsAppendNamedColor(%struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, i8* %Name, i16* %PCS, i16* %Colorant) #0 {
entry:
  %retval = alloca i32, align 4
  %NamedColorList.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %Name.addr = alloca i8*, align 8
  %PCS.addr = alloca i16*, align 8
  %Colorant.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  store i8* %Name, i8** %Name.addr, align 8, !tbaa !1
  store i16* %PCS, i16** %PCS.addr, align 8, !tbaa !1
  store i16* %Colorant, i16** %Colorant.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %nColors, align 4, !tbaa !25
  %add = add i32 %3, 1
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %Allocated = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %Allocated, align 4, !tbaa !27
  %cmp1 = icmp ugt i32 %add, %5
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %call = call i32 @GrowNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %6) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 2
  %9 = load i32, i32* %ColorantCount, align 4, !tbaa !28
  %cmp6 = icmp ult i32 %7, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16*, i16** %Colorant.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i16* %10, null
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %11 to i64
  %12 = load i16*, i16** %Colorant.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv = zext i16 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %conv8 = trunc i32 %cond to i16
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors10 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %15, i32 0, i32 0
  %16 = load i32, i32* %nColors10, align 4, !tbaa !25
  %idxprom11 = zext i32 %16 to i64
  %17 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %17, i32 0, i32 5
  %18 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %arrayidx12 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %18, i64 %idxprom11
  %DeviceColorant = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx12, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [16 x i16], [16 x i16]* %DeviceColorant, i32 0, i64 %idxprom9
  store i16 %conv8, i16* %arrayidx13, align 2, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.35, %for.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %cmp15 = icmp ult i32 %20, 3
  br i1 %cmp15, label %for.body.17, label %for.end.37

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i16*, i16** %PCS.addr, align 8, !tbaa !1
  %cmp18 = icmp eq i16* %21, null
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %for.body.17
  br label %cond.end.25

cond.false.21:                                    ; preds = %for.body.17
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %22 to i64
  %23 = load i16*, i16** %PCS.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %23, i64 %idxprom22
  %24 = load i16, i16* %arrayidx23, align 2, !tbaa !12
  %conv24 = zext i16 %24 to i32
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ 0, %cond.true.20 ], [ %conv24, %cond.false.21 ]
  %conv27 = trunc i32 %cond26 to i16
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = zext i32 %25 to i64
  %26 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors29 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %nColors29, align 4, !tbaa !25
  %idxprom30 = zext i32 %27 to i64
  %28 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List31 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %28, i32 0, i32 5
  %29 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List31, align 8, !tbaa !23
  %arrayidx32 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %29, i64 %idxprom30
  %PCS33 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [3 x i16], [3 x i16]* %PCS33, i32 0, i64 %idxprom28
  store i16 %conv27, i16* %arrayidx34, align 2, !tbaa !12
  br label %for.inc.35

for.inc.35:                                       ; preds = %cond.end.25
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc36 = add i32 %30, 1
  store i32 %inc36, i32* %i, align 4, !tbaa !5
  br label %for.cond.14

for.end.37:                                       ; preds = %for.cond.14
  %31 = load i8*, i8** %Name.addr, align 8, !tbaa !1
  %cmp38 = icmp ne i8* %31, null
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.end.37
  %32 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors41 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %32, i32 0, i32 0
  %33 = load i32, i32* %nColors41, align 4, !tbaa !25
  %idxprom42 = zext i32 %33 to i64
  %34 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List43 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %34, i32 0, i32 5
  %35 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List43, align 8, !tbaa !23
  %arrayidx44 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %35, i64 %idxprom42
  %Name45 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx44, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Name45, i32 0, i32 0
  %36 = load i8*, i8** %Name.addr, align 8, !tbaa !1
  %call46 = call i8* @strncpy(i8* %arraydecay, i8* %36, i64 255) #9
  %37 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors47 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %37, i32 0, i32 0
  %38 = load i32, i32* %nColors47, align 4, !tbaa !25
  %idxprom48 = zext i32 %38 to i64
  %39 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List49 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %39, i32 0, i32 5
  %40 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List49, align 8, !tbaa !23
  %arrayidx50 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %40, i64 %idxprom48
  %Name51 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx50, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* %Name51, i32 0, i64 255
  store i8 0, i8* %arrayidx52, align 1, !tbaa !14
  br label %if.end.59

if.else:                                          ; preds = %for.end.37
  %41 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors53 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %41, i32 0, i32 0
  %42 = load i32, i32* %nColors53, align 4, !tbaa !25
  %idxprom54 = zext i32 %42 to i64
  %43 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List55 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %43, i32 0, i32 5
  %44 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List55, align 8, !tbaa !23
  %arrayidx56 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %44, i64 %idxprom54
  %Name57 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx56, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* %Name57, i32 0, i64 0
  store i8 0, i8* %arrayidx58, align 1, !tbaa !14
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.40
  %45 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors60 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %45, i32 0, i32 0
  %46 = load i32, i32* %nColors60, align 4, !tbaa !25
  %inc61 = add i32 %46, 1
  store i32 %inc61, i32* %nColors60, align 4, !tbaa !25
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.59, %if.then.3, %if.then
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %NamedColorList) #0 {
entry:
  %retval = alloca i32, align 4
  %NamedColorList.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  store %struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %0 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %nColors, align 4, !tbaa !25
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @cmsNamedColorInfo(%struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, i32 %nColor, i8* %Name, i8* %Prefix, i8* %Suffix, i16* %PCS, i16* %Colorant) #0 {
entry:
  %retval = alloca i32, align 4
  %NamedColorList.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %nColor.addr = alloca i32, align 4
  %Name.addr = alloca i8*, align 8
  %Prefix.addr = alloca i8*, align 8
  %Suffix.addr = alloca i8*, align 8
  %PCS.addr = alloca i16*, align 8
  %Colorant.addr = alloca i16*, align 8
  store %struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  store i32 %nColor, i32* %nColor.addr, align 4, !tbaa !5
  store i8* %Name, i8** %Name.addr, align 8, !tbaa !1
  store i8* %Prefix, i8** %Prefix.addr, align 8, !tbaa !1
  store i8* %Suffix, i8** %Suffix.addr, align 8, !tbaa !1
  store i16* %PCS, i16** %PCS.addr, align 8, !tbaa !1
  store i16* %Colorant, i16** %Colorant.addr, align 8, !tbaa !1
  %0 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %nColor.addr, align 4, !tbaa !5
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %call = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %2) #7
  %cmp1 = icmp uge i32 %1, %call
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i8*, i8** %Name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end.3
  %4 = load i8*, i8** %Name.addr, align 8, !tbaa !1
  %5 = load i32, i32* %nColor.addr, align 4, !tbaa !5
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %6, i32 0, i32 5
  %7 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %7, i64 %idxprom
  %Name5 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Name5, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %4, i8* %arraydecay) #9
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end.3
  %8 = load i8*, i8** %Prefix.addr, align 8, !tbaa !1
  %tobool8 = icmp ne i8* %8, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.7
  %9 = load i8*, i8** %Prefix.addr, align 8, !tbaa !1
  %10 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %Prefix10 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %10, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [33 x i8], [33 x i8]* %Prefix10, i32 0, i32 0
  %call12 = call i8* @strcpy(i8* %9, i8* %arraydecay11) #9
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.7
  %11 = load i8*, i8** %Suffix.addr, align 8, !tbaa !1
  %tobool14 = icmp ne i8* %11, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.13
  %12 = load i8*, i8** %Suffix.addr, align 8, !tbaa !1
  %13 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %Suffix16 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %13, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [33 x i8], [33 x i8]* %Suffix16, i32 0, i32 0
  %call18 = call i8* @strcpy(i8* %12, i8* %arraydecay17) #9
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.13
  %14 = load i16*, i16** %PCS.addr, align 8, !tbaa !1
  %tobool20 = icmp ne i16* %14, null
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.end.19
  %15 = load i16*, i16** %PCS.addr, align 8, !tbaa !1
  %16 = bitcast i16* %15 to i8*
  %17 = load i32, i32* %nColor.addr, align 4, !tbaa !5
  %idxprom22 = zext i32 %17 to i64
  %18 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List23 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %18, i32 0, i32 5
  %19 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List23, align 8, !tbaa !23
  %arrayidx24 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %19, i64 %idxprom22
  %PCS25 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx24, i32 0, i32 1
  %arraydecay26 = getelementptr inbounds [3 x i16], [3 x i16]* %PCS25, i32 0, i32 0
  %20 = bitcast i16* %arraydecay26 to i8*
  %call27 = call i8* @memmove(i8* %16, i8* %20, i64 6) #9
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %if.end.19
  %21 = load i16*, i16** %Colorant.addr, align 8, !tbaa !1
  %tobool29 = icmp ne i16* %21, null
  br i1 %tobool29, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.end.28
  %22 = load i16*, i16** %Colorant.addr, align 8, !tbaa !1
  %23 = bitcast i16* %22 to i8*
  %24 = load i32, i32* %nColor.addr, align 4, !tbaa !5
  %idxprom31 = zext i32 %24 to i64
  %25 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List32 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %25, i32 0, i32 5
  %26 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List32, align 8, !tbaa !23
  %arrayidx33 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %26, i64 %idxprom31
  %DeviceColorant = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx33, i32 0, i32 2
  %arraydecay34 = getelementptr inbounds [16 x i16], [16 x i16]* %DeviceColorant, i32 0, i32 0
  %27 = bitcast i16* %arraydecay34 to i8*
  %28 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %28, i32 0, i32 2
  %29 = load i32, i32* %ColorantCount, align 4, !tbaa !28
  %conv = zext i32 %29 to i64
  %mul = mul i64 2, %conv
  %call35 = call i8* @memmove(i8* %23, i8* %27, i64 %mul) #9
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %if.end.28
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.2, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @cmsNamedColorIndex(%struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, i8* %Name) #0 {
entry:
  %retval = alloca i32, align 4
  %NamedColorList.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %Name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  store i8* %Name, i8** %Name.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_NAMEDCOLORLIST_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %call = call i32 @cmsNamedColorCount(%struct._cms_NAMEDCOLORLIST_struct* %3) #7
  store i32 %call, i32* %n, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %n, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %Name.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 5
  %9 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %9, i64 %idxprom
  %Name2 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %Name2, i32 0, i32 0
  %call3 = call i32 @cmsstrcasecmp(i8* %6, i8* %arraydecay) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @cmsstrcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._cmsStage_struct* @_cmsStageAllocNamedColor(%struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, i32 %UsePCS) #0 {
entry:
  %NamedColorList.addr = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %UsePCS.addr = alloca i32, align 4
  store %struct._cms_NAMEDCOLORLIST_struct* %NamedColorList, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  store i32 %UsePCS, i32* %UsePCS.addr, align 4, !tbaa !5
  %0 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %0, i32 0, i32 6
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %2 = load i32, i32* %UsePCS.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %ColorantCount, align 4, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %4, %cond.false ]
  %5 = load i32, i32* %UsePCS.addr, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %5, 0
  %cond2 = select i1 %tobool1, void (float*, float*, %struct._cmsStage_struct*)* @EvalNamedColorPCS, void (float*, float*, %struct._cmsStage_struct*)* @EvalNamedColor
  %6 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList.addr, align 8, !tbaa !1
  %call = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %6) #7
  %7 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %call to i8*
  %call3 = call %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct* %1, i32 1852009504, i32 1, i32 %cond, void (float*, float*, %struct._cmsStage_struct*)* %cond2, i8* (%struct._cmsStage_struct*)* @DupNamedColorList, void (%struct._cmsStage_struct*)* @FreeNamedColorList, i8* %7) #7
  ret %struct._cmsStage_struct* %call3
}

declare %struct._cmsStage_struct* @_cmsStageAllocPlaceholder(%struct._cmsContext_struct*, i32, i32, i32, void (float*, float*, %struct._cmsStage_struct*)*, i8* (%struct._cmsStage_struct*)*, void (%struct._cmsStage_struct*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @EvalNamedColorPCS(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %NamedColorList = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %index = alloca i16, align 2
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %3, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %4 = bitcast i16* %index to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !31
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  store i16 %call, i16* %index, align 2, !tbaa !12
  %7 = load i16, i16* %index, align 2, !tbaa !12
  %conv1 = zext i16 %7 to i32
  %8 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %8, i32 0, i32 0
  %9 = load i32, i32* %nColors, align 4, !tbaa !25
  %cmp = icmp uge i32 %conv1, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %10, i32 0, i32 6
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %12 = load i16, i16* %index, align 2, !tbaa !12
  %conv3 = zext i16 %12 to i32
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %11, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %conv3) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i16, i16* %index, align 2, !tbaa !12
  %idxprom = zext i16 %13 to i64
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %14, i32 0, i32 5
  %15 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %arrayidx4 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %15, i64 %idxprom
  %PCS = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [3 x i16], [3 x i16]* %PCS, i32 0, i64 0
  %16 = load i16, i16* %arrayidx5, align 2, !tbaa !12
  %conv6 = zext i16 %16 to i32
  %conv7 = sitofp i32 %conv6 to double
  %div = fdiv double %conv7, 6.553500e+04
  %conv8 = fptrunc double %div to float
  %17 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %17, i64 0
  store float %conv8, float* %arrayidx9, align 4, !tbaa !31
  %18 = load i16, i16* %index, align 2, !tbaa !12
  %idxprom10 = zext i16 %18 to i64
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %List11 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %19, i32 0, i32 5
  %20 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List11, align 8, !tbaa !23
  %arrayidx12 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %20, i64 %idxprom10
  %PCS13 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i16], [3 x i16]* %PCS13, i32 0, i64 1
  %21 = load i16, i16* %arrayidx14, align 2, !tbaa !12
  %conv15 = zext i16 %21 to i32
  %conv16 = sitofp i32 %conv15 to double
  %div17 = fdiv double %conv16, 6.553500e+04
  %conv18 = fptrunc double %div17 to float
  %22 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds float, float* %22, i64 1
  store float %conv18, float* %arrayidx19, align 4, !tbaa !31
  %23 = load i16, i16* %index, align 2, !tbaa !12
  %idxprom20 = zext i16 %23 to i64
  %24 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %List21 = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %24, i32 0, i32 5
  %25 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List21, align 8, !tbaa !23
  %arrayidx22 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %25, i64 %idxprom20
  %PCS23 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i16], [3 x i16]* %PCS23, i32 0, i64 2
  %26 = load i16, i16* %arrayidx24, align 2, !tbaa !12
  %conv25 = zext i16 %26 to i32
  %conv26 = sitofp i32 %conv25 to double
  %div27 = fdiv double %conv26, 6.553500e+04
  %conv28 = fptrunc double %div27 to float
  %27 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds float, float* %27, i64 2
  store float %conv28, float* %arrayidx29, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = bitcast i16* %index to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #1
  %29 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EvalNamedColor(float* %In, float* %Out, %struct._cmsStage_struct* %mpe) #0 {
entry:
  %In.addr = alloca float*, align 8
  %Out.addr = alloca float*, align 8
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %NamedColorList = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %index = alloca i16, align 2
  %j = alloca i32, align 4
  store float* %In, float** %In.addr, align 8, !tbaa !1
  store float* %Out, float** %Out.addr, align 8, !tbaa !1
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %3, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %4 = bitcast i16* %index to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  %5 = load float*, float** %In.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx, align 4, !tbaa !31
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 6.553500e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #7
  store i16 %call, i16* %index, align 2, !tbaa !12
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i16, i16* %index, align 2, !tbaa !12
  %conv1 = zext i16 %8 to i32
  %9 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %nColors = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %9, i32 0, i32 0
  %10 = load i32, i32* %nColors, align 4, !tbaa !25
  %cmp = icmp uge i32 %conv1, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %11, i32 0, i32 6
  %12 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !26
  %13 = load i16, i16* %index, align 2, !tbaa !12
  %conv3 = zext i16 %13 to i32
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* %12, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %conv3) #7
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load i32, i32* %j, align 4, !tbaa !5
  %15 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %ColorantCount = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %15, i32 0, i32 2
  %16 = load i32, i32* %ColorantCount, align 4, !tbaa !28
  %cmp4 = icmp ult i32 %14, %16
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = zext i32 %17 to i64
  %18 = load i16, i16* %index, align 2, !tbaa !12
  %idxprom6 = zext i16 %18 to i64
  %19 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList, align 8, !tbaa !1
  %List = getelementptr inbounds %struct._cms_NAMEDCOLORLIST_struct, %struct._cms_NAMEDCOLORLIST_struct* %19, i32 0, i32 5
  %20 = load %struct._cmsNAMEDCOLOR*, %struct._cmsNAMEDCOLOR** %List, align 8, !tbaa !23
  %arrayidx7 = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %20, i64 %idxprom6
  %DeviceColorant = getelementptr inbounds %struct._cmsNAMEDCOLOR, %struct._cmsNAMEDCOLOR* %arrayidx7, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [16 x i16], [16 x i16]* %DeviceColorant, i32 0, i64 %idxprom
  %21 = load i16, i16* %arrayidx8, align 2, !tbaa !12
  %conv9 = zext i16 %21 to i32
  %conv10 = sitofp i32 %conv9 to double
  %div = fdiv double %conv10, 6.553500e+04
  %conv11 = fptrunc double %div to float
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom12 = zext i32 %22 to i64
  %23 = load float*, float** %Out.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds float, float* %23, i64 %idxprom12
  store float %conv11, float* %arrayidx13, align 4, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %24, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i16* %index to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #1
  %27 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %NamedColorList to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @DupNamedColorList(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %List = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %List to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %3, %struct._cms_NAMEDCOLORLIST_struct** %List, align 8, !tbaa !1
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %List, align 8, !tbaa !1
  %call = call %struct._cms_NAMEDCOLORLIST_struct* @cmsDupNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %4) #7
  %5 = bitcast %struct._cms_NAMEDCOLORLIST_struct* %call to i8*
  %6 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %List to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal void @FreeNamedColorList(%struct._cmsStage_struct* %mpe) #0 {
entry:
  %mpe.addr = alloca %struct._cmsStage_struct*, align 8
  %List = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  store %struct._cmsStage_struct* %mpe, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %List to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe.addr, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %1, i32 0, i32 8
  %2 = load i8*, i8** %Data, align 8, !tbaa !29
  %3 = bitcast i8* %2 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %3, %struct._cms_NAMEDCOLORLIST_struct** %List, align 8, !tbaa !1
  %4 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %List, align 8, !tbaa !1
  call void @cmsFreeNamedColorList(%struct._cms_NAMEDCOLORLIST_struct* %4) #7
  %5 = bitcast %struct._cms_NAMEDCOLORLIST_struct** %List to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._cms_NAMEDCOLORLIST_struct* @cmsGetNamedColorList(i8* %xform) #0 {
entry:
  %retval = alloca %struct._cms_NAMEDCOLORLIST_struct*, align 8
  %xform.addr = alloca i8*, align 8
  %v = alloca %struct._cmstransform_struct*, align 8
  %mpe = alloca %struct._cmsStage_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %xform, i8** %xform.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %xform.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmstransform_struct*
  store %struct._cmstransform_struct* %2, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %3 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %v, align 8, !tbaa !1
  %Lut = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %4, i32 0, i32 8
  %5 = load %struct._cmsPipeline_struct*, %struct._cmsPipeline_struct** %Lut, align 8, !tbaa !33
  %Elements = getelementptr inbounds %struct._cmsPipeline_struct, %struct._cmsPipeline_struct* %5, i32 0, i32 0
  %6 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %Elements, align 8, !tbaa !38
  store %struct._cmsStage_struct* %6, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %7 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Type = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %Type, align 4, !tbaa !40
  %cmp = icmp ne i32 %8, 1852009504
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cms_NAMEDCOLORLIST_struct* null, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._cmsStage_struct*, %struct._cmsStage_struct** %mpe, align 8, !tbaa !1
  %Data = getelementptr inbounds %struct._cmsStage_struct, %struct._cmsStage_struct* %9, i32 0, i32 8
  %10 = load i8*, i8** %Data, align 8, !tbaa !29
  %11 = bitcast i8* %10 to %struct._cms_NAMEDCOLORLIST_struct*
  store %struct._cms_NAMEDCOLORLIST_struct* %11, %struct._cms_NAMEDCOLORLIST_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct._cmsStage_struct** %mpe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct._cmstransform_struct** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load %struct._cms_NAMEDCOLORLIST_struct*, %struct._cms_NAMEDCOLORLIST_struct** %retval
  ret %struct._cms_NAMEDCOLORLIST_struct* %14
}

; Function Attrs: nounwind uwtable
define %struct.cmsSEQ* @cmsAllocProfileSequenceDescription(%struct._cmsContext_struct* %ContextID, i32 %n) #0 {
entry:
  %retval = alloca %struct.cmsSEQ*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %n.addr = alloca i32, align 4
  %Seq = alloca %struct.cmsSEQ*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cmsSEQ** %Seq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp1 = icmp ugt i32 %3, 255
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %4, i32 24) #7
  %5 = bitcast i8* %call to %struct.cmsSEQ*
  store %struct.cmsSEQ* %5, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %6 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %cmp4 = icmp eq %struct.cmsSEQ* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %8 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %ContextID7 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %8, i32 0, i32 1
  store %struct._cmsContext_struct* %7, %struct._cmsContext_struct** %ContextID7, align 8, !tbaa !41
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %10 = load i32, i32* %n.addr, align 4, !tbaa !5
  %call8 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %9, i32 %10, i32 64) #7
  %11 = bitcast i8* %call8 to %struct.cmsPSEQDESC*
  %12 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %12, i32 0, i32 2
  store %struct.cmsPSEQDESC* %11, %struct.cmsPSEQDESC** %seq, align 8, !tbaa !43
  %13 = load i32, i32* %n.addr, align 4, !tbaa !5
  %14 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %n9 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %14, i32 0, i32 0
  store i32 %13, i32* %n9, align 4, !tbaa !44
  %15 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq10 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %15, i32 0, i32 2
  %16 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq10, align 8, !tbaa !43
  %cmp11 = icmp eq %struct.cmsPSEQDESC* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %18 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %19 = bitcast %struct.cmsSEQ* %18 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %17, i8* %19) #7
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %21 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp14 = icmp ult i32 %20, %21
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %22 to i64
  %23 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq15 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %23, i32 0, i32 2
  %24 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq15, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %24, i64 %idxprom
  %Manufacturer = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx, i32 0, i32 5
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %Manufacturer, align 8, !tbaa !45
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = zext i32 %25 to i64
  %26 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq17 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %26, i32 0, i32 2
  %27 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq17, align 8, !tbaa !43
  %arrayidx18 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %27, i64 %idxprom16
  %Model = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx18, i32 0, i32 6
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %Model, align 8, !tbaa !48
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom19 = zext i32 %28 to i64
  %29 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  %seq20 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %29, i32 0, i32 2
  %30 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq20, align 8, !tbaa !43
  %arrayidx21 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %30, i64 %idxprom19
  %Description = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx21, i32 0, i32 7
  store %struct._cms_MLU_struct* null, %struct._cms_MLU_struct** %Description, align 8, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.cmsSEQ*, %struct.cmsSEQ** %Seq, align 8, !tbaa !1
  store %struct.cmsSEQ* %32, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.12, %if.then.5, %if.then.2, %if.then
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.cmsSEQ** %Seq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load %struct.cmsSEQ*, %struct.cmsSEQ** %retval
  ret %struct.cmsSEQ* %35
}

; Function Attrs: nounwind uwtable
define void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ* %pseq) #0 {
entry:
  %pseq.addr = alloca %struct.cmsSEQ*, align 8
  %i = alloca i32, align 4
  store %struct.cmsSEQ* %pseq, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %2, i32 0, i32 0
  %3 = load i32, i32* %n, align 4, !tbaa !44
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %5, i32 0, i32 2
  %6 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %6, i64 %idxprom
  %Manufacturer = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx, i32 0, i32 5
  %7 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Manufacturer, align 8, !tbaa !45
  %cmp1 = icmp ne %struct._cms_MLU_struct* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = zext i32 %8 to i64
  %9 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq3 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %9, i32 0, i32 2
  %10 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq3, align 8, !tbaa !43
  %arrayidx4 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %10, i64 %idxprom2
  %Manufacturer5 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx4, i32 0, i32 5
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Manufacturer5, align 8, !tbaa !45
  call void @cmsMLUfree(%struct._cms_MLU_struct* %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = zext i32 %12 to i64
  %13 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq7 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %13, i32 0, i32 2
  %14 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq7, align 8, !tbaa !43
  %arrayidx8 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %14, i64 %idxprom6
  %Model = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx8, i32 0, i32 6
  %15 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Model, align 8, !tbaa !48
  %cmp9 = icmp ne %struct._cms_MLU_struct* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %16 to i64
  %17 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq12 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %17, i32 0, i32 2
  %18 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq12, align 8, !tbaa !43
  %arrayidx13 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %18, i64 %idxprom11
  %Model14 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx13, i32 0, i32 6
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Model14, align 8, !tbaa !48
  call void @cmsMLUfree(%struct._cms_MLU_struct* %19) #7
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = zext i32 %20 to i64
  %21 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq17 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %21, i32 0, i32 2
  %22 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq17, align 8, !tbaa !43
  %arrayidx18 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %22, i64 %idxprom16
  %Description = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx18, i32 0, i32 7
  %23 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description, align 8, !tbaa !49
  %cmp19 = icmp ne %struct._cms_MLU_struct* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end.15
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = zext i32 %24 to i64
  %25 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq22 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %25, i32 0, i32 2
  %26 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq22, align 8, !tbaa !43
  %arrayidx23 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %26, i64 %idxprom21
  %Description24 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx23, i32 0, i32 7
  %27 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description24, align 8, !tbaa !49
  call void @cmsMLUfree(%struct._cms_MLU_struct* %27) #7
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq26 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %29, i32 0, i32 2
  %30 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq26, align 8, !tbaa !43
  %cmp27 = icmp ne %struct.cmsPSEQDESC* %30, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %for.end
  %31 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %31, i32 0, i32 1
  %32 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !41
  %33 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq29 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %33, i32 0, i32 2
  %34 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq29, align 8, !tbaa !43
  %35 = bitcast %struct.cmsPSEQDESC* %34 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %32, i8* %35) #7
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.end
  %36 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %ContextID31 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %36, i32 0, i32 1
  %37 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID31, align 8, !tbaa !41
  %38 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %39 = bitcast %struct.cmsSEQ* %38 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %37, i8* %39) #7
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cmsSEQ* @cmsDupProfileSequenceDescription(%struct.cmsSEQ* %pseq) #0 {
entry:
  %retval = alloca %struct.cmsSEQ*, align 8
  %pseq.addr = alloca %struct.cmsSEQ*, align 8
  %NewSeq = alloca %struct.cmsSEQ*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsSEQ* %pseq, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsSEQ** %NewSeq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsSEQ* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %3, i32 0, i32 1
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !41
  %call = call i8* @_cmsMalloc(%struct._cmsContext_struct* %4, i32 24) #7
  %5 = bitcast i8* %call to %struct.cmsSEQ*
  store %struct.cmsSEQ* %5, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %6 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.cmsSEQ* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %ContextID4 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %7, i32 0, i32 1
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID4, align 8, !tbaa !41
  %9 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %9, i32 0, i32 0
  %10 = load i32, i32* %n, align 4, !tbaa !44
  %call5 = call i8* @_cmsCalloc(%struct._cmsContext_struct* %8, i32 %10, i32 64) #7
  %11 = bitcast i8* %call5 to %struct.cmsPSEQDESC*
  %12 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %12, i32 0, i32 2
  store %struct.cmsPSEQDESC* %11, %struct.cmsPSEQDESC** %seq, align 8, !tbaa !43
  %13 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq6 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %13, i32 0, i32 2
  %14 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq6, align 8, !tbaa !43
  %cmp7 = icmp eq %struct.cmsPSEQDESC* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.3
  br label %Error

if.end.9:                                         ; preds = %if.end.3
  %15 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %ContextID10 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %15, i32 0, i32 1
  %16 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID10, align 8, !tbaa !41
  %17 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %ContextID11 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %17, i32 0, i32 1
  store %struct._cmsContext_struct* %16, %struct._cmsContext_struct** %ContextID11, align 8, !tbaa !41
  %18 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %n12 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %18, i32 0, i32 0
  %19 = load i32, i32* %n12, align 4, !tbaa !44
  %20 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %n13 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %20, i32 0, i32 0
  store i32 %19, i32* %n13, align 4, !tbaa !44
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %n14 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %22, i32 0, i32 0
  %23 = load i32, i32* %n14, align 4, !tbaa !44
  %cmp15 = icmp ult i32 %21, %23
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq16 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %25, i32 0, i32 2
  %26 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq16, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %26, i64 %idxprom
  %attributes = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx, i32 0, i32 2
  %27 = bitcast i64* %attributes to i8*
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = zext i32 %28 to i64
  %29 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq18 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %29, i32 0, i32 2
  %30 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq18, align 8, !tbaa !43
  %arrayidx19 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %30, i64 %idxprom17
  %attributes20 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx19, i32 0, i32 2
  %31 = bitcast i64* %attributes20 to i8*
  %call21 = call i8* @memmove(i8* %27, i8* %31, i64 8) #9
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %32 to i64
  %33 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq23 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %33, i32 0, i32 2
  %34 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq23, align 8, !tbaa !43
  %arrayidx24 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %34, i64 %idxprom22
  %deviceMfg = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx24, i32 0, i32 0
  %35 = load i32, i32* %deviceMfg, align 4, !tbaa !50
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = zext i32 %36 to i64
  %37 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq26 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %37, i32 0, i32 2
  %38 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq26, align 8, !tbaa !43
  %arrayidx27 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %38, i64 %idxprom25
  %deviceMfg28 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx27, i32 0, i32 0
  store i32 %35, i32* %deviceMfg28, align 4, !tbaa !50
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = zext i32 %39 to i64
  %40 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq30 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %40, i32 0, i32 2
  %41 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq30, align 8, !tbaa !43
  %arrayidx31 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %41, i64 %idxprom29
  %deviceModel = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx31, i32 0, i32 1
  %42 = load i32, i32* %deviceModel, align 4, !tbaa !51
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = zext i32 %43 to i64
  %44 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq33 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %44, i32 0, i32 2
  %45 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq33, align 8, !tbaa !43
  %arrayidx34 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %45, i64 %idxprom32
  %deviceModel35 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx34, i32 0, i32 1
  store i32 %42, i32* %deviceModel35, align 4, !tbaa !51
  %46 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = zext i32 %46 to i64
  %47 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq37 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %47, i32 0, i32 2
  %48 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq37, align 8, !tbaa !43
  %arrayidx38 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %48, i64 %idxprom36
  %ProfileID = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx38, i32 0, i32 4
  %49 = bitcast %union.cmsProfileID* %ProfileID to i8*
  %50 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = zext i32 %50 to i64
  %51 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq40 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %51, i32 0, i32 2
  %52 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq40, align 8, !tbaa !43
  %arrayidx41 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %52, i64 %idxprom39
  %ProfileID42 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx41, i32 0, i32 4
  %53 = bitcast %union.cmsProfileID* %ProfileID42 to i8*
  %call43 = call i8* @memmove(i8* %49, i8* %53, i64 16) #9
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom44 = zext i32 %54 to i64
  %55 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq45 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %55, i32 0, i32 2
  %56 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq45, align 8, !tbaa !43
  %arrayidx46 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %56, i64 %idxprom44
  %technology = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx46, i32 0, i32 3
  %57 = load i32, i32* %technology, align 4, !tbaa !52
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom47 = zext i32 %58 to i64
  %59 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq48 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %59, i32 0, i32 2
  %60 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq48, align 8, !tbaa !43
  %arrayidx49 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %60, i64 %idxprom47
  %technology50 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx49, i32 0, i32 3
  store i32 %57, i32* %technology50, align 4, !tbaa !52
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom51 = zext i32 %61 to i64
  %62 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq52 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %62, i32 0, i32 2
  %63 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq52, align 8, !tbaa !43
  %arrayidx53 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %63, i64 %idxprom51
  %Manufacturer = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx53, i32 0, i32 5
  %64 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Manufacturer, align 8, !tbaa !45
  %call54 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %64) #7
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = zext i32 %65 to i64
  %66 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq56 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %66, i32 0, i32 2
  %67 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq56, align 8, !tbaa !43
  %arrayidx57 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %67, i64 %idxprom55
  %Manufacturer58 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx57, i32 0, i32 5
  store %struct._cms_MLU_struct* %call54, %struct._cms_MLU_struct** %Manufacturer58, align 8, !tbaa !45
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = zext i32 %68 to i64
  %69 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq60 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %69, i32 0, i32 2
  %70 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq60, align 8, !tbaa !43
  %arrayidx61 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %70, i64 %idxprom59
  %Model = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx61, i32 0, i32 6
  %71 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Model, align 8, !tbaa !48
  %call62 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %71) #7
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = zext i32 %72 to i64
  %73 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq64 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %73, i32 0, i32 2
  %74 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq64, align 8, !tbaa !43
  %arrayidx65 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %74, i64 %idxprom63
  %Model66 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx65, i32 0, i32 6
  store %struct._cms_MLU_struct* %call62, %struct._cms_MLU_struct** %Model66, align 8, !tbaa !48
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = zext i32 %75 to i64
  %76 = load %struct.cmsSEQ*, %struct.cmsSEQ** %pseq.addr, align 8, !tbaa !1
  %seq68 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %76, i32 0, i32 2
  %77 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq68, align 8, !tbaa !43
  %arrayidx69 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %77, i64 %idxprom67
  %Description = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx69, i32 0, i32 7
  %78 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %Description, align 8, !tbaa !49
  %call70 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %78) #7
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = zext i32 %79 to i64
  %80 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  %seq72 = getelementptr inbounds %struct.cmsSEQ, %struct.cmsSEQ* %80, i32 0, i32 2
  %81 = load %struct.cmsPSEQDESC*, %struct.cmsPSEQDESC** %seq72, align 8, !tbaa !43
  %arrayidx73 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %81, i64 %idxprom71
  %Description74 = getelementptr inbounds %struct.cmsPSEQDESC, %struct.cmsPSEQDESC* %arrayidx73, i32 0, i32 7
  store %struct._cms_MLU_struct* %call70, %struct._cms_MLU_struct** %Description74, align 8, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %82, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  store %struct.cmsSEQ* %83, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

Error:                                            ; preds = %if.then.8
  %84 = load %struct.cmsSEQ*, %struct.cmsSEQ** %NewSeq, align 8, !tbaa !1
  call void @cmsFreeProfileSequenceDescription(%struct.cmsSEQ* %84) #7
  store %struct.cmsSEQ* null, %struct.cmsSEQ** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %Error, %for.end, %if.then.2, %if.then
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast %struct.cmsSEQ** %NewSeq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load %struct.cmsSEQ*, %struct.cmsSEQ** %retval
  ret %struct.cmsSEQ* %87
}

; Function Attrs: nounwind uwtable
define i8* @cmsDictAlloc(%struct._cmsContext_struct* %ContextID) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %dict = alloca %struct._cmsDICT_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %1, i32 16) #7
  %2 = bitcast i8* %call to %struct._cmsDICT_struct*
  store %struct._cmsDICT_struct* %2, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %3 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsDICT_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %5 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID1 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %5, i32 0, i32 1
  store %struct._cmsContext_struct* %4, %struct._cmsContext_struct** %ContextID1, align 8, !tbaa !53
  %6 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %7 = bitcast %struct._cmsDICT_struct* %6 to i8*
  store i8* %7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define void @cmsDictFree(i8* %hDict) #0 {
entry:
  %hDict.addr = alloca i8*, align 8
  %dict = alloca %struct._cmsDICT_struct*, align 8
  %entry1 = alloca %struct._cmsDICTentry_struct*, align 8
  %next = alloca %struct._cmsDICTentry_struct*, align 8
  store i8* %hDict, i8** %hDict.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hDict.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsDICT_struct*
  store %struct._cmsDICT_struct* %2, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %3 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmsDICTentry_struct** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsDICT_struct* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 833, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.cmsDictFree, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %head = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %7, i32 0, i32 0
  %8 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %head, align 8, !tbaa !55
  store %struct._cmsDICTentry_struct* %8, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %cond.end
  %9 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %cmp2 = icmp ne %struct._cmsDICTentry_struct* %9, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayName = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %10, i32 0, i32 1
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayName, align 8, !tbaa !56
  %cmp3 = icmp ne %struct._cms_MLU_struct* %11, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayName4 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %12, i32 0, i32 1
  %13 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayName4, align 8, !tbaa !56
  call void @cmsMLUfree(%struct._cms_MLU_struct* %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayValue = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %14, i32 0, i32 2
  %15 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayValue, align 8, !tbaa !58
  %cmp5 = icmp ne %struct._cms_MLU_struct* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %16 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayValue7 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %16, i32 0, i32 2
  %17 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayValue7, align 8, !tbaa !58
  call void @cmsMLUfree(%struct._cms_MLU_struct* %17) #7
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %18 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Name = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %18, i32 0, i32 3
  %19 = load i32*, i32** %Name, align 8, !tbaa !59
  %cmp9 = icmp ne i32* %19, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %20 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %20, i32 0, i32 1
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !53
  %22 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Name11 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %22, i32 0, i32 3
  %23 = load i32*, i32** %Name11, align 8, !tbaa !59
  %24 = bitcast i32* %23 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %21, i8* %24) #7
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %25 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %25, i32 0, i32 4
  %26 = load i32*, i32** %Value, align 8, !tbaa !60
  %cmp13 = icmp ne i32* %26, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %27 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID15 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %27, i32 0, i32 1
  %28 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID15, align 8, !tbaa !53
  %29 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Value16 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %29, i32 0, i32 4
  %30 = load i32*, i32** %Value16, align 8, !tbaa !60
  %31 = bitcast i32* %30 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %28, i8* %31) #7
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %32 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %32, i32 0, i32 0
  %33 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %Next, align 8, !tbaa !61
  store %struct._cmsDICTentry_struct* %33, %struct._cmsDICTentry_struct** %next, align 8, !tbaa !1
  %34 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID18 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %34, i32 0, i32 1
  %35 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID18, align 8, !tbaa !53
  %36 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %37 = bitcast %struct._cmsDICTentry_struct* %36 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %35, i8* %37) #7
  %38 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %next, align 8, !tbaa !1
  store %struct._cmsDICTentry_struct* %38, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID19 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %39, i32 0, i32 1
  %40 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID19, align 8, !tbaa !53
  %41 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %42 = bitcast %struct._cmsDICT_struct* %41 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %40, i8* %42) #7
  %43 = bitcast %struct._cmsDICTentry_struct** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @cmsDictAddEntry(i8* %hDict, i32* %Name, i32* %Value, %struct._cms_MLU_struct* %DisplayName, %struct._cms_MLU_struct* %DisplayValue) #0 {
entry:
  %retval = alloca i32, align 4
  %hDict.addr = alloca i8*, align 8
  %Name.addr = alloca i32*, align 8
  %Value.addr = alloca i32*, align 8
  %DisplayName.addr = alloca %struct._cms_MLU_struct*, align 8
  %DisplayValue.addr = alloca %struct._cms_MLU_struct*, align 8
  %dict = alloca %struct._cmsDICT_struct*, align 8
  %entry1 = alloca %struct._cmsDICTentry_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hDict, i8** %hDict.addr, align 8, !tbaa !1
  store i32* %Name, i32** %Name.addr, align 8, !tbaa !1
  store i32* %Value, i32** %Value.addr, align 8, !tbaa !1
  store %struct._cms_MLU_struct* %DisplayName, %struct._cms_MLU_struct** %DisplayName.addr, align 8, !tbaa !1
  store %struct._cms_MLU_struct* %DisplayValue, %struct._cms_MLU_struct** %DisplayValue.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hDict.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsDICT_struct*
  store %struct._cmsDICT_struct* %2, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %3 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsDICT_struct* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 869, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.cmsDictAddEntry, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i32*, i32** %Name.addr, align 8, !tbaa !1
  %cmp2 = icmp ne i32* %6, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 870, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.cmsDictAddEntry, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end.5

cond.end.5:                                       ; preds = %7, %cond.true.3
  %8 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %8, i32 0, i32 1
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !53
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %9, i32 40) #7
  %10 = bitcast i8* %call to %struct._cmsDICTentry_struct*
  store %struct._cmsDICTentry_struct* %10, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %11 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %cmp6 = icmp eq %struct._cmsDICTentry_struct* %11, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.5
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayName.addr, align 8, !tbaa !1
  %call7 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %12) #7
  %13 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayName8 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %13, i32 0, i32 1
  store %struct._cms_MLU_struct* %call7, %struct._cms_MLU_struct** %DisplayName8, align 8, !tbaa !56
  %14 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayValue.addr, align 8, !tbaa !1
  %call9 = call %struct._cms_MLU_struct* @cmsMLUdup(%struct._cms_MLU_struct* %14) #7
  %15 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayValue10 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %15, i32 0, i32 2
  store %struct._cms_MLU_struct* %call9, %struct._cms_MLU_struct** %DisplayValue10, align 8, !tbaa !58
  %16 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID11 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %16, i32 0, i32 1
  %17 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID11, align 8, !tbaa !53
  %18 = load i32*, i32** %Name.addr, align 8, !tbaa !1
  %call12 = call i32* @DupWcs(%struct._cmsContext_struct* %17, i32* %18) #7
  %19 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Name13 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %19, i32 0, i32 3
  store i32* %call12, i32** %Name13, align 8, !tbaa !59
  %20 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %ContextID14 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %20, i32 0, i32 1
  %21 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID14, align 8, !tbaa !53
  %22 = load i32*, i32** %Value.addr, align 8, !tbaa !1
  %call15 = call i32* @DupWcs(%struct._cmsContext_struct* %21, i32* %22) #7
  %23 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Value16 = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %23, i32 0, i32 4
  store i32* %call15, i32** %Value16, align 8, !tbaa !60
  %24 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %head = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %24, i32 0, i32 0
  %25 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %head, align 8, !tbaa !55
  %26 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %26, i32 0, i32 0
  store %struct._cmsDICTentry_struct* %25, %struct._cmsDICTentry_struct** %Next, align 8, !tbaa !61
  %27 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %28 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %head17 = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %28, i32 0, i32 0
  store %struct._cmsDICTentry_struct* %27, %struct._cmsDICTentry_struct** %head17, align 8, !tbaa !55
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32* @DupWcs(%struct._cmsContext_struct* %ContextID, i32* %ptr) #0 {
entry:
  %retval = alloca i32*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %ptr.addr = alloca i32*, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store i32* %ptr, i32** %ptr.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %ptr.addr, align 8, !tbaa !1
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %2 = load i32*, i32** %ptr.addr, align 8, !tbaa !1
  %3 = bitcast i32* %2 to i8*
  %4 = load i32*, i32** %ptr.addr, align 8, !tbaa !1
  %call = call i32 @mywcslen(i32* %4) #7
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 4
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @_cmsDupMem(%struct._cmsContext_struct* %1, i8* %3, i32 %conv1) #7
  %5 = bitcast i8* %call2 to i32*
  store i32* %5, i32** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define i8* @cmsDictDup(i8* %hDict) #0 {
entry:
  %retval = alloca i8*, align 8
  %hDict.addr = alloca i8*, align 8
  %old_dict = alloca %struct._cmsDICT_struct*, align 8
  %hNew = alloca i8*, align 8
  %entry1 = alloca %struct._cmsDICTentry_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hDict, i8** %hDict.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsDICT_struct** %old_dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hDict.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsDICT_struct*
  store %struct._cmsDICT_struct* %2, %struct._cmsDICT_struct** %old_dict, align 8, !tbaa !1
  %3 = bitcast i8** %hNew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %old_dict, align 8, !tbaa !1
  %cmp = icmp ne %struct._cmsDICT_struct* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 894, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.cmsDictDup, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %old_dict, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %7, i32 0, i32 1
  %8 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !53
  %call = call i8* @cmsDictAlloc(%struct._cmsContext_struct* %8) #7
  store i8* %call, i8** %hNew, align 8, !tbaa !1
  %9 = load i8*, i8** %hNew, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %9, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %10 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %old_dict, align 8, !tbaa !1
  %head = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %10, i32 0, i32 0
  %11 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %head, align 8, !tbaa !55
  store %struct._cmsDICTentry_struct* %11, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %12 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %cmp3 = icmp ne %struct._cmsDICTentry_struct* %12, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %hNew, align 8, !tbaa !1
  %14 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Name = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %14, i32 0, i32 3
  %15 = load i32*, i32** %Name, align 8, !tbaa !59
  %16 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Value = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %16, i32 0, i32 4
  %17 = load i32*, i32** %Value, align 8, !tbaa !60
  %18 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayName = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %18, i32 0, i32 1
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayName, align 8, !tbaa !56
  %20 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %DisplayValue = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %20, i32 0, i32 2
  %21 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %DisplayValue, align 8, !tbaa !58
  %call4 = call i32 @cmsDictAddEntry(i8* %13, i32* %15, i32* %17, %struct._cms_MLU_struct* %19, %struct._cms_MLU_struct* %21) #7
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %while.body
  %22 = load i8*, i8** %hNew, align 8, !tbaa !1
  call void @cmsDictFree(i8* %22) #7
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.body
  %23 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %23, i32 0, i32 0
  %24 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %Next, align 8, !tbaa !61
  store %struct._cmsDICTentry_struct* %24, %struct._cmsDICTentry_struct** %entry1, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %hNew, align 8, !tbaa !1
  store i8* %25, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.5, %if.then
  %26 = bitcast %struct._cmsDICTentry_struct** %entry1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i8** %hNew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct._cmsDICT_struct** %old_dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i8*, i8** %retval
  ret i8* %29
}

; Function Attrs: nounwind uwtable
define %struct._cmsDICTentry_struct* @cmsDictGetEntryList(i8* %hDict) #0 {
entry:
  %retval = alloca %struct._cmsDICTentry_struct*, align 8
  %hDict.addr = alloca i8*, align 8
  %dict = alloca %struct._cmsDICT_struct*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %hDict, i8** %hDict.addr, align 8, !tbaa !1
  %0 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hDict.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct._cmsDICT_struct*
  store %struct._cmsDICT_struct* %2, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %3 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsDICT_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsDICTentry_struct* null, %struct._cmsDICTentry_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._cmsDICT_struct*, %struct._cmsDICT_struct** %dict, align 8, !tbaa !1
  %head = getelementptr inbounds %struct._cmsDICT_struct, %struct._cmsDICT_struct* %4, i32 0, i32 0
  %5 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %head, align 8, !tbaa !55
  store %struct._cmsDICTentry_struct* %5, %struct._cmsDICTentry_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct._cmsDICT_struct** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %retval
  ret %struct._cmsDICTentry_struct* %7
}

; Function Attrs: nounwind uwtable
define %struct._cmsDICTentry_struct* @cmsDictNextEntry(%struct._cmsDICTentry_struct* %e) #0 {
entry:
  %retval = alloca %struct._cmsDICTentry_struct*, align 8
  %e.addr = alloca %struct._cmsDICTentry_struct*, align 8
  store %struct._cmsDICTentry_struct* %e, %struct._cmsDICTentry_struct** %e.addr, align 8, !tbaa !1
  %0 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %e.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cmsDICTentry_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._cmsDICTentry_struct* null, %struct._cmsDICTentry_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %e.addr, align 8, !tbaa !1
  %Next = getelementptr inbounds %struct._cmsDICTentry_struct, %struct._cmsDICTentry_struct* %1, i32 0, i32 0
  %2 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %Next, align 8, !tbaa !61
  store %struct._cmsDICTentry_struct* %2, %struct._cmsDICTentry_struct** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._cmsDICTentry_struct*, %struct._cmsDICTentry_struct** %retval
  ret %struct._cmsDICTentry_struct* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @GrowMLUtable(%struct._cms_MLU_struct* %mlu) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %AllocatedEntries = alloca i32, align 4
  %NewPtr = alloca %struct._cmsMLUentry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %0 = bitcast i32* %AllocatedEntries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._cmsMLUentry** %NewPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %AllocatedEntries1 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %AllocatedEntries1, align 4, !tbaa !10
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* %AllocatedEntries, align 4, !tbaa !5
  %5 = load i32, i32* %AllocatedEntries, align 4, !tbaa !5
  %div = sdiv i32 %5, 2
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %AllocatedEntries2 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %AllocatedEntries2, align 4, !tbaa !10
  %cmp3 = icmp ne i32 %div, %7
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %8, i32 0, i32 0
  %9 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !7
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %10, i32 0, i32 3
  %11 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %12 = bitcast %struct._cmsMLUentry* %11 to i8*
  %13 = load i32, i32* %AllocatedEntries, align 4, !tbaa !5
  %conv = sext i32 %13 to i64
  %mul6 = mul i64 %conv, 12
  %conv7 = trunc i64 %mul6 to i32
  %call = call i8* @_cmsRealloc(%struct._cmsContext_struct* %9, i8* %12, i32 %conv7) #7
  %14 = bitcast i8* %call to %struct._cmsMLUentry*
  store %struct._cmsMLUentry* %14, %struct._cmsMLUentry** %NewPtr, align 8, !tbaa !1
  %15 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %NewPtr, align 8, !tbaa !1
  %cmp8 = icmp eq %struct._cmsMLUentry* %15, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %16 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %NewPtr, align 8, !tbaa !1
  %17 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries12 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %17, i32 0, i32 3
  store %struct._cmsMLUentry* %16, %struct._cmsMLUentry** %Entries12, align 8, !tbaa !9
  %18 = load i32, i32* %AllocatedEntries, align 4, !tbaa !5
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %AllocatedEntries13 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %19, i32 0, i32 1
  store i32 %18, i32* %AllocatedEntries13, align 4, !tbaa !10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.4, %if.then
  %20 = bitcast %struct._cmsMLUentry** %NewPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %AllocatedEntries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @SearchMLUEntry(%struct._cms_MLU_struct* %mlu, i16 zeroext %LanguageCode, i16 zeroext %CountryCode) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %LanguageCode.addr = alloca i16, align 2
  %CountryCode.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  store i16 %LanguageCode, i16* %LanguageCode.addr, align 2, !tbaa !12
  store i16 %CountryCode, i16* %CountryCode.addr, align 2, !tbaa !12
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %UsedEntries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %UsedEntries, align 4, !tbaa !11
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %6, i32 0, i32 3
  %7 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %7, i64 %idxprom
  %Country = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx, i32 0, i32 1
  %8 = load i16, i16* %Country, align 2, !tbaa !21
  %conv = zext i16 %8 to i32
  %9 = load i16, i16* %CountryCode.addr, align 2, !tbaa !12
  %conv2 = zext i16 %9 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %Entries6 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %11, i32 0, i32 3
  %12 = load %struct._cmsMLUentry*, %struct._cmsMLUentry** %Entries6, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %12, i64 %idxprom5
  %Language = getelementptr inbounds %struct._cmsMLUentry, %struct._cmsMLUentry* %arrayidx7, i32 0, i32 0
  %13 = load i16, i16* %Language, align 2, !tbaa !22
  %conv8 = zext i16 %13 to i32
  %14 = load i16, i16* %LanguageCode.addr, align 2, !tbaa !12
  %conv9 = zext i16 %14 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.12, %if.then
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @GrowMLUpool(%struct._cms_MLU_struct* %mlu) #0 {
entry:
  %retval = alloca i32, align 4
  %mlu.addr = alloca %struct._cms_MLU_struct*, align 8
  %size = alloca i32, align 4
  %NewPtr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._cms_MLU_struct* %mlu, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %NewPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct._cms_MLU_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolSize = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %3, i32 0, i32 4
  %4 = load i32, i32* %PoolSize, align 4, !tbaa !15
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 256, i32* %size, align 4, !tbaa !5
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolSize3 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %PoolSize3, align 4, !tbaa !15
  %mul = mul i32 %6, 2
  store i32 %mul, i32* %size, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %7 = load i32, i32* %size, align 4, !tbaa !5
  %8 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolSize5 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %PoolSize5, align 4, !tbaa !15
  %cmp6 = icmp ult i32 %7, %9
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %10 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %10, i32 0, i32 0
  %11 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !7
  %12 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %12, i32 0, i32 6
  %13 = load i8*, i8** %MemPool, align 8, !tbaa !17
  %14 = load i32, i32* %size, align 4, !tbaa !5
  %call = call i8* @_cmsRealloc(%struct._cmsContext_struct* %11, i8* %13, i32 %14) #7
  store i8* %call, i8** %NewPtr, align 8, !tbaa !1
  %15 = load i8*, i8** %NewPtr, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.8
  %16 = load i8*, i8** %NewPtr, align 8, !tbaa !1
  %17 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %MemPool12 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %17, i32 0, i32 6
  store i8* %16, i8** %MemPool12, align 8, !tbaa !17
  %18 = load i32, i32* %size, align 4, !tbaa !5
  %19 = load %struct._cms_MLU_struct*, %struct._cms_MLU_struct** %mlu.addr, align 8, !tbaa !1
  %PoolSize13 = getelementptr inbounds %struct._cms_MLU_struct, %struct._cms_MLU_struct* %19, i32 0, i32 4
  store i32 %18, i32* %PoolSize13, align 4, !tbaa !15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.7, %if.then
  %20 = bitcast i8** %NewPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @_cmsRealloc(%struct._cmsContext_struct*, i8*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #6 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !62
  %0 = load double, double* %d.addr, align 8, !tbaa !62
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !62
  %1 = load double, double* %d.addr, align 8, !tbaa !62
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !62
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !62
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #7
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #6 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !62
  %0 = load double, double* %d.addr, align 8, !tbaa !62
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #7
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #6 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !62
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !62
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !62
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !62
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

declare i8* @_cmsDupMem(%struct._cmsContext_struct*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"_cms_MLU_struct", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32}
!9 = !{!8, !2, i64 16}
!10 = !{!8, !6, i64 8}
!11 = !{!8, !6, i64 12}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
!14 = !{!3, !3, i64 0}
!15 = !{!8, !6, i64 24}
!16 = !{!8, !6, i64 28}
!17 = !{!8, !2, i64 32}
!18 = !{!19, !6, i64 4}
!19 = !{!"", !13, i64 0, !13, i64 2, !6, i64 4, !6, i64 8}
!20 = !{!19, !6, i64 8}
!21 = !{!19, !13, i64 2}
!22 = !{!19, !13, i64 0}
!23 = !{!24, !2, i64 80}
!24 = !{!"_cms_NAMEDCOLORLIST_struct", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 45, !2, i64 80, !2, i64 88}
!25 = !{!24, !6, i64 0}
!26 = !{!24, !2, i64 88}
!27 = !{!24, !6, i64 4}
!28 = !{!24, !6, i64 8}
!29 = !{!30, !2, i64 48}
!30 = !{!"_cmsStage_struct", !2, i64 0, !3, i64 8, !3, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !3, i64 0}
!33 = !{!34, !2, i64 112}
!34 = !{!"_cmstransform_struct", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !35, i64 48, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !3, i64 144, !3, i64 148, !36, i64 152, !36, i64 176, !2, i64 200, !6, i64 208, !37, i64 216, !6, i64 224, !2, i64 232, !2, i64 240, !2, i64 248}
!35 = !{!"", !3, i64 0, !3, i64 32}
!36 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"double", !3, i64 0}
!38 = !{!39, !2, i64 0}
!39 = !{!"_cmsPipeline_struct", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64}
!40 = !{!30, !3, i64 8}
!41 = !{!42, !2, i64 8}
!42 = !{!"", !6, i64 0, !2, i64 8, !2, i64 16}
!43 = !{!42, !2, i64 16}
!44 = !{!42, !6, i64 0}
!45 = !{!46, !2, i64 40}
!46 = !{!"", !6, i64 0, !6, i64 4, !47, i64 8, !3, i64 16, !3, i64 20, !2, i64 40, !2, i64 48, !2, i64 56}
!47 = !{!"long", !3, i64 0}
!48 = !{!46, !2, i64 48}
!49 = !{!46, !2, i64 56}
!50 = !{!46, !6, i64 0}
!51 = !{!46, !6, i64 4}
!52 = !{!46, !3, i64 16}
!53 = !{!54, !2, i64 8}
!54 = !{!"_cmsDICT_struct", !2, i64 0, !2, i64 8}
!55 = !{!54, !2, i64 0}
!56 = !{!57, !2, i64 8}
!57 = !{!"_cmsDICTentry_struct", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!58 = !{!57, !2, i64 16}
!59 = !{!57, !2, i64 24}
!60 = !{!57, !2, i64 32}
!61 = !{!57, !2, i64 0}
!62 = !{!37, !37, i64 0}
