; ModuleID = './MultiSource.Benchmarks.MiBench/4.consumer-lame.formatBitstream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.side_info_link = type { %struct.side_info_link*, %struct.MYSideInfo }
%struct.MYSideInfo = type { i32, i32, i32, i32, %struct.BF_PartHolder*, %struct.BF_PartHolder*, [2 x %struct.BF_PartHolder*], [2 x [2 x %struct.BF_PartHolder*]] }
%struct.BF_PartHolder = type { i32, %struct.BF_BitstreamPart* }
%struct.BF_BitstreamPart = type { i32, %struct.BF_BitstreamElement* }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.BF_FrameData = type { i32, i32, i32, %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart*, [2 x %struct.BF_BitstreamPart*], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], %struct.BF_BitstreamPart* }
%struct.BF_FrameResults = type { i32, i32, i32 }

@BitCount = internal global i32 0, align 4
@ThisFrameSize = internal global i32 0, align 4
@BitsRemaining = internal global i32 0, align 4
@forwardFrameLength = internal global i32 0, align 4
@forwardSILength = internal global i32 0, align 4
@elements = internal global i32 0, align 4
@side_queue_free = internal global %struct.side_info_link* null, align 8
@side_queue_head = internal global %struct.side_info_link* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate side_info_link\00", align 1

; Function Attrs: nounwind uwtable
define void @InitFormatBitStream() #0 {
entry:
  store i32 0, i32* @BitCount, align 4, !tbaa !1
  store i32 0, i32* @ThisFrameSize, align 4, !tbaa !1
  store i32 0, i32* @BitsRemaining, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @BF_BitstreamFrame(%struct.BF_FrameData* %frameInfo, %struct.BF_FrameResults* %results) #0 {
entry:
  %frameInfo.addr = alloca %struct.BF_FrameData*, align 8
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  store %struct.BF_FrameData* %frameInfo, %struct.BF_FrameData** %frameInfo.addr, align 8, !tbaa !5
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = load %struct.BF_FrameData*, %struct.BF_FrameData** %frameInfo.addr, align 8, !tbaa !5
  %call = call i32 @store_side_info(%struct.BF_FrameData* %0)
  %1 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %SILength = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %1, i32 0, i32 0
  store i32 %call, i32* %SILength, align 4, !tbaa !7
  %2 = load %struct.BF_FrameData*, %struct.BF_FrameData** %frameInfo.addr, align 8, !tbaa !5
  %3 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %call1 = call i32 @main_data(%struct.BF_FrameData* %2, %struct.BF_FrameResults* %3)
  %4 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %4, i32 0, i32 1
  store i32 %call1, i32* %mainDataLength, align 4, !tbaa !9
  %call2 = call i32 @side_queue_elements(i32* @forwardFrameLength, i32* @forwardSILength)
  store i32 %call2, i32* @elements, align 4, !tbaa !1
  %5 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  %div = sdiv i32 %5, 8
  %6 = load i32, i32* @forwardFrameLength, align 4, !tbaa !1
  %div3 = sdiv i32 %6, 8
  %add = add nsw i32 %div, %div3
  %7 = load i32, i32* @forwardSILength, align 4, !tbaa !1
  %div4 = sdiv i32 %7, 8
  %sub = sub nsw i32 %add, %div4
  %8 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %8, i32 0, i32 2
  store i32 %sub, i32* %nextBackPtr, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @store_side_info(%struct.BF_FrameData* %info) #0 {
entry:
  %info.addr = alloca %struct.BF_FrameData*, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %l = alloca %struct.side_info_link*, align 8
  %f = alloca %struct.side_info_link*, align 8
  %bits = alloca i32, align 4
  store %struct.BF_FrameData* %info, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.side_info_link** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  store %struct.side_info_link* %4, %struct.side_info_link** %f, align 8, !tbaa !5
  %5 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %bits, align 4, !tbaa !1
  %6 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %cmp = icmp eq %struct.side_info_link* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 1, i64 88) #1
  %7 = bitcast i8* %call to %struct.side_info_link*
  store %struct.side_info_link* %7, %struct.side_info_link** %l, align 8, !tbaa !5
  %8 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %cmp1 = icmp eq %struct.side_info_link* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then
  %10 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %10, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %next, align 8, !tbaa !11
  %11 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %header = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %11, i32 0, i32 3
  %12 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %header, align 8, !tbaa !14
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %12, i32 0, i32 0
  %13 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %call4 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %13)
  %14 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %14, i32 0, i32 1
  %headerPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info, i32 0, i32 4
  store %struct.BF_PartHolder* %call4, %struct.BF_PartHolder** %headerPH, align 8, !tbaa !18
  %15 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %frameSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %15, i32 0, i32 4
  %16 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %frameSI, align 8, !tbaa !19
  %nrEntries5 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %16, i32 0, i32 0
  %17 = load i32, i32* %nrEntries5, align 4, !tbaa !16
  %call6 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %17)
  %18 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info7 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %18, i32 0, i32 1
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info7, i32 0, i32 5
  store %struct.BF_PartHolder* %call6, %struct.BF_PartHolder** %frameSIPH, align 8, !tbaa !20
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %ch, align 4, !tbaa !1
  %20 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nChannels = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %20, i32 0, i32 2
  %21 = load i32, i32* %nChannels, align 4, !tbaa !21
  %cmp8 = icmp slt i32 %19, %21
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %channelSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %23, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %channelSI, i32 0, i64 %idxprom
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx, align 8, !tbaa !5
  %nrEntries9 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %24, i32 0, i32 0
  %25 = load i32, i32* %nrEntries9, align 4, !tbaa !16
  %call10 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %25)
  %26 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info12 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %27, i32 0, i32 1
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info12, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH, i32 0, i64 %idxprom11
  store %struct.BF_PartHolder* %call10, %struct.BF_PartHolder** %arrayidx13, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.35, %for.end
  %29 = load i32, i32* %gr, align 4, !tbaa !1
  %30 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nGranules = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %30, i32 0, i32 1
  %31 = load i32, i32* %nGranules, align 4, !tbaa !22
  %cmp15 = icmp slt i32 %29, %31
  br i1 %cmp15, label %for.body.16, label %for.end.37

for.body.16:                                      ; preds = %for.cond.14
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.32, %for.body.16
  %32 = load i32, i32* %ch, align 4, !tbaa !1
  %33 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nChannels18 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %33, i32 0, i32 2
  %34 = load i32, i32* %nChannels18, align 4, !tbaa !21
  %cmp19 = icmp slt i32 %32, %34
  br i1 %cmp19, label %for.body.20, label %for.end.34

for.body.20:                                      ; preds = %for.cond.17
  %35 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom21 = sext i32 %35 to i64
  %36 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom22 = sext i32 %36 to i64
  %37 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %spectrumSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %37, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %spectrumSI, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx23, i32 0, i64 %idxprom21
  %38 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx24, align 8, !tbaa !5
  %nrEntries25 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %38, i32 0, i32 0
  %39 = load i32, i32* %nrEntries25, align 4, !tbaa !16
  %call26 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %39)
  %40 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom27 = sext i32 %40 to i64
  %41 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom28 = sext i32 %41 to i64
  %42 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info29 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %42, i32 0, i32 1
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info29, i32 0, i32 7
  %arrayidx30 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH, i32 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx30, i32 0, i64 %idxprom27
  store %struct.BF_PartHolder* %call26, %struct.BF_PartHolder** %arrayidx31, align 8, !tbaa !5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.20
  %43 = load i32, i32* %ch, align 4, !tbaa !1
  %inc33 = add nsw i32 %43, 1
  store i32 %inc33, i32* %ch, align 4, !tbaa !1
  br label %for.cond.17

for.end.34:                                       ; preds = %for.cond.17
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %44 = load i32, i32* %gr, align 4, !tbaa !1
  %inc36 = add nsw i32 %44, 1
  store i32 %inc36, i32* %gr, align 4, !tbaa !1
  br label %for.cond.14

for.end.37:                                       ; preds = %for.cond.14
  br label %if.end.40

if.else:                                          ; preds = %entry
  %45 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %next38 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %45, i32 0, i32 0
  %46 = load %struct.side_info_link*, %struct.side_info_link** %next38, align 8, !tbaa !11
  store %struct.side_info_link* %46, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  %47 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %next39 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %47, i32 0, i32 0
  store %struct.side_info_link* null, %struct.side_info_link** %next39, align 8, !tbaa !11
  %48 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  store %struct.side_info_link* %48, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %for.end.37
  %49 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %frameLength = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %49, i32 0, i32 0
  %50 = load i32, i32* %frameLength, align 4, !tbaa !23
  %51 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info41 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %51, i32 0, i32 1
  %frameLength42 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info41, i32 0, i32 0
  store i32 %50, i32* %frameLength42, align 4, !tbaa !24
  %52 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nGranules43 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %52, i32 0, i32 1
  %53 = load i32, i32* %nGranules43, align 4, !tbaa !22
  %54 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info44 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %54, i32 0, i32 1
  %nGranules45 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info44, i32 0, i32 2
  store i32 %53, i32* %nGranules45, align 4, !tbaa !25
  %55 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nChannels46 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %55, i32 0, i32 2
  %56 = load i32, i32* %nChannels46, align 4, !tbaa !21
  %57 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info47 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %57, i32 0, i32 1
  %nChannels48 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info47, i32 0, i32 3
  store i32 %56, i32* %nChannels48, align 4, !tbaa !26
  %58 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info49 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %58, i32 0, i32 1
  %headerPH50 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info49, i32 0, i32 4
  %59 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %headerPH50, align 8, !tbaa !18
  %60 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %header51 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %60, i32 0, i32 3
  %61 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %header51, align 8, !tbaa !14
  %call52 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %59, %struct.BF_BitstreamPart* %61)
  %62 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info53 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %62, i32 0, i32 1
  %headerPH54 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info53, i32 0, i32 4
  store %struct.BF_PartHolder* %call52, %struct.BF_PartHolder** %headerPH54, align 8, !tbaa !18
  %63 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info55 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %63, i32 0, i32 1
  %frameSIPH56 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info55, i32 0, i32 5
  %64 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %frameSIPH56, align 8, !tbaa !20
  %65 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %frameSI57 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %65, i32 0, i32 4
  %66 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %frameSI57, align 8, !tbaa !19
  %call58 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %64, %struct.BF_BitstreamPart* %66)
  %67 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info59 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %67, i32 0, i32 1
  %frameSIPH60 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info59, i32 0, i32 5
  store %struct.BF_PartHolder* %call58, %struct.BF_PartHolder** %frameSIPH60, align 8, !tbaa !20
  %68 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %header61 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %68, i32 0, i32 3
  %69 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %header61, align 8, !tbaa !14
  %call62 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* %69)
  %70 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %70, %call62
  store i32 %add, i32* %bits, align 4, !tbaa !1
  %71 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %frameSI63 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %71, i32 0, i32 4
  %72 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %frameSI63, align 8, !tbaa !19
  %call64 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* %72)
  %73 = load i32, i32* %bits, align 4, !tbaa !1
  %add65 = add nsw i32 %73, %call64
  store i32 %add65, i32* %bits, align 4, !tbaa !1
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.87, %if.end.40
  %74 = load i32, i32* %ch, align 4, !tbaa !1
  %75 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nChannels67 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %75, i32 0, i32 2
  %76 = load i32, i32* %nChannels67, align 4, !tbaa !21
  %cmp68 = icmp slt i32 %74, %76
  br i1 %cmp68, label %for.body.69, label %for.end.89

for.body.69:                                      ; preds = %for.cond.66
  %77 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom70 = sext i32 %77 to i64
  %78 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info71 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %78, i32 0, i32 1
  %channelSIPH72 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info71, i32 0, i32 6
  %arrayidx73 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH72, i32 0, i64 %idxprom70
  %79 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx73, align 8, !tbaa !5
  %80 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom74 = sext i32 %80 to i64
  %81 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %channelSI75 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %81, i32 0, i32 5
  %arrayidx76 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %channelSI75, i32 0, i64 %idxprom74
  %82 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx76, align 8, !tbaa !5
  %call77 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %79, %struct.BF_BitstreamPart* %82)
  %83 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom78 = sext i32 %83 to i64
  %84 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info79 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %84, i32 0, i32 1
  %channelSIPH80 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info79, i32 0, i32 6
  %arrayidx81 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH80, i32 0, i64 %idxprom78
  store %struct.BF_PartHolder* %call77, %struct.BF_PartHolder** %arrayidx81, align 8, !tbaa !5
  %85 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom82 = sext i32 %85 to i64
  %86 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %channelSI83 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %86, i32 0, i32 5
  %arrayidx84 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %channelSI83, i32 0, i64 %idxprom82
  %87 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx84, align 8, !tbaa !5
  %call85 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* %87)
  %88 = load i32, i32* %bits, align 4, !tbaa !1
  %add86 = add nsw i32 %88, %call85
  store i32 %add86, i32* %bits, align 4, !tbaa !1
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.69
  %89 = load i32, i32* %ch, align 4, !tbaa !1
  %inc88 = add nsw i32 %89, 1
  store i32 %inc88, i32* %ch, align 4, !tbaa !1
  br label %for.cond.66

for.end.89:                                       ; preds = %for.cond.66
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.126, %for.end.89
  %90 = load i32, i32* %gr, align 4, !tbaa !1
  %91 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nGranules91 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %91, i32 0, i32 1
  %92 = load i32, i32* %nGranules91, align 4, !tbaa !22
  %cmp92 = icmp slt i32 %90, %92
  br i1 %cmp92, label %for.body.93, label %for.end.128

for.body.93:                                      ; preds = %for.cond.90
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.123, %for.body.93
  %93 = load i32, i32* %ch, align 4, !tbaa !1
  %94 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %nChannels95 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %94, i32 0, i32 2
  %95 = load i32, i32* %nChannels95, align 4, !tbaa !21
  %cmp96 = icmp slt i32 %93, %95
  br i1 %cmp96, label %for.body.97, label %for.end.125

for.body.97:                                      ; preds = %for.cond.94
  %96 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom98 = sext i32 %96 to i64
  %97 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom99 = sext i32 %97 to i64
  %98 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info100 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %98, i32 0, i32 1
  %spectrumSIPH101 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info100, i32 0, i32 7
  %arrayidx102 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH101, i32 0, i64 %idxprom99
  %arrayidx103 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx102, i32 0, i64 %idxprom98
  %99 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx103, align 8, !tbaa !5
  %100 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom104 = sext i32 %100 to i64
  %101 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom105 = sext i32 %101 to i64
  %102 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %spectrumSI106 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %102, i32 0, i32 6
  %arrayidx107 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %spectrumSI106, i32 0, i64 %idxprom105
  %arrayidx108 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx107, i32 0, i64 %idxprom104
  %103 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx108, align 8, !tbaa !5
  %call109 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %99, %struct.BF_BitstreamPart* %103)
  %104 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom110 = sext i32 %104 to i64
  %105 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom111 = sext i32 %105 to i64
  %106 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info112 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %106, i32 0, i32 1
  %spectrumSIPH113 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info112, i32 0, i32 7
  %arrayidx114 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH113, i32 0, i64 %idxprom111
  %arrayidx115 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx114, i32 0, i64 %idxprom110
  store %struct.BF_PartHolder* %call109, %struct.BF_PartHolder** %arrayidx115, align 8, !tbaa !5
  %107 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom116 = sext i32 %107 to i64
  %108 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom117 = sext i32 %108 to i64
  %109 = load %struct.BF_FrameData*, %struct.BF_FrameData** %info.addr, align 8, !tbaa !5
  %spectrumSI118 = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %109, i32 0, i32 6
  %arrayidx119 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %spectrumSI118, i32 0, i64 %idxprom117
  %arrayidx120 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx119, i32 0, i64 %idxprom116
  %110 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx120, align 8, !tbaa !5
  %call121 = call i32 @BF_PartLength(%struct.BF_BitstreamPart* %110)
  %111 = load i32, i32* %bits, align 4, !tbaa !1
  %add122 = add nsw i32 %111, %call121
  store i32 %add122, i32* %bits, align 4, !tbaa !1
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.97
  %112 = load i32, i32* %ch, align 4, !tbaa !1
  %inc124 = add nsw i32 %112, 1
  store i32 %inc124, i32* %ch, align 4, !tbaa !1
  br label %for.cond.94

for.end.125:                                      ; preds = %for.cond.94
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %113 = load i32, i32* %gr, align 4, !tbaa !1
  %inc127 = add nsw i32 %113, 1
  store i32 %inc127, i32* %gr, align 4, !tbaa !1
  br label %for.cond.90

for.end.128:                                      ; preds = %for.cond.90
  %114 = load i32, i32* %bits, align 4, !tbaa !1
  %115 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info129 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %115, i32 0, i32 1
  %SILength = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info129, i32 0, i32 1
  store i32 %114, i32* %SILength, align 4, !tbaa !27
  %116 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  store %struct.side_info_link* %116, %struct.side_info_link** %f, align 8, !tbaa !5
  %117 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %cmp130 = icmp eq %struct.side_info_link* %117, null
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %for.end.128
  %118 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  store %struct.side_info_link* %118, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  br label %if.end.136

if.else.132:                                      ; preds = %for.end.128
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.132
  %119 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %next133 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %119, i32 0, i32 0
  %120 = load %struct.side_info_link*, %struct.side_info_link** %next133, align 8, !tbaa !11
  %tobool = icmp ne %struct.side_info_link* %120, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %121 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %next134 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %121, i32 0, i32 0
  %122 = load %struct.side_info_link*, %struct.side_info_link** %next134, align 8, !tbaa !11
  store %struct.side_info_link* %122, %struct.side_info_link** %f, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %123 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %124 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %next135 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %124, i32 0, i32 0
  store %struct.side_info_link* %123, %struct.side_info_link** %next135, align 8, !tbaa !11
  br label %if.end.136

if.end.136:                                       ; preds = %while.end, %if.then.131
  %125 = load i32, i32* %bits, align 4, !tbaa !1
  %126 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct.side_info_link** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal i32 @main_data(%struct.BF_FrameData* %fi, %struct.BF_FrameResults* %results) #0 {
entry:
  %fi.addr = alloca %struct.BF_FrameData*, align 8
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %bits = alloca i32, align 4
  %wp = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 8
  store %struct.BF_FrameData* %fi, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartMainData, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  store i32 0, i32* %bits, align 4, !tbaa !1
  %4 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %4, i32 0, i32 1
  store i32 0, i32* %mainDataLength, align 4, !tbaa !9
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %5 = load i32, i32* %gr, align 4, !tbaa !1
  %6 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %nGranules = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %6, i32 0, i32 1
  %7 = load i32, i32* %nGranules, align 4, !tbaa !22
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %ch, align 4, !tbaa !1
  %9 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %nChannels = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %9, i32 0, i32 2
  %10 = load i32, i32* %nChannels, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %12 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %scaleFactors = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %14, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %scaleFactors, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx, i32 0, i64 %idxprom
  %15 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx5, align 8, !tbaa !5
  %16 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %call = call i32 %11(%struct.BF_BitstreamPart* %15, %struct.BF_FrameResults* %16)
  %17 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %17, %call
  store i32 %add, i32* %bits, align 4, !tbaa !1
  %18 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %19 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom6 = sext i32 %19 to i64
  %20 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %codedData = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %21, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %codedData, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx8, i32 0, i64 %idxprom6
  %22 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx9, align 8, !tbaa !5
  %23 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %call10 = call i32 %18(%struct.BF_BitstreamPart* %22, %struct.BF_FrameResults* %23)
  %24 = load i32, i32* %bits, align 4, !tbaa !1
  %add11 = add nsw i32 %24, %call10
  store i32 %add11, i32* %bits, align 4, !tbaa !1
  %25 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %26 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom12 = sext i32 %26 to i64
  %27 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom13 = sext i32 %27 to i64
  %28 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %userSpectrum = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %28, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %userSpectrum, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx14, i32 0, i64 %idxprom12
  %29 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %arrayidx15, align 8, !tbaa !5
  %30 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %call16 = call i32 %25(%struct.BF_BitstreamPart* %29, %struct.BF_FrameResults* %30)
  %31 = load i32, i32* %bits, align 4, !tbaa !1
  %add17 = add nsw i32 %31, %call16
  store i32 %add17, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %32 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %33 = load i32, i32* %gr, align 4, !tbaa !1
  %inc19 = add nsw i32 %33, 1
  store i32 %inc19, i32* %gr, align 4, !tbaa !1
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %34 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %35 = load %struct.BF_FrameData*, %struct.BF_FrameData** %fi.addr, align 8, !tbaa !5
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %35, i32 0, i32 10
  %36 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %userFrameData, align 8, !tbaa !28
  %37 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %call21 = call i32 %34(%struct.BF_BitstreamPart* %36, %struct.BF_FrameResults* %37)
  %38 = load i32, i32* %bits, align 4, !tbaa !1
  %add22 = add nsw i32 %38, %call21
  store i32 %add22, i32* %bits, align 4, !tbaa !1
  %39 = load i32, i32* %bits, align 4, !tbaa !1
  %40 = bitcast i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @side_queue_elements(i32* %frameLength, i32* %SILength) #0 {
entry:
  %frameLength.addr = alloca i32*, align 8
  %SILength.addr = alloca i32*, align 8
  %elements = alloca i32, align 4
  %l = alloca %struct.side_info_link*, align 8
  store i32* %frameLength, i32** %frameLength.addr, align 8, !tbaa !5
  store i32* %SILength, i32** %SILength.addr, align 8, !tbaa !5
  %0 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %elements, align 4, !tbaa !1
  %1 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32*, i32** %frameLength.addr, align 8, !tbaa !5
  store i32 0, i32* %2, align 4, !tbaa !1
  %3 = load i32*, i32** %SILength.addr, align 8, !tbaa !5
  store i32 0, i32* %3, align 4, !tbaa !1
  %4 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  store %struct.side_info_link* %4, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %tobool = icmp ne %struct.side_info_link* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %elements, align 4, !tbaa !1
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %elements, align 4, !tbaa !1
  %7 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %7, i32 0, i32 1
  %frameLength1 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info, i32 0, i32 0
  %8 = load i32, i32* %frameLength1, align 4, !tbaa !24
  %9 = load i32*, i32** %frameLength.addr, align 8, !tbaa !5
  %10 = load i32, i32* %9, align 4, !tbaa !1
  %add = add nsw i32 %10, %8
  store i32 %add, i32* %9, align 4, !tbaa !1
  %11 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info2 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %11, i32 0, i32 1
  %SILength3 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info2, i32 0, i32 1
  %12 = load i32, i32* %SILength3, align 4, !tbaa !27
  %13 = load i32*, i32** %SILength.addr, align 8, !tbaa !5
  %14 = load i32, i32* %13, align 4, !tbaa !1
  %add4 = add nsw i32 %14, %12
  store i32 %add4, i32* %13, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %15, i32 0, i32 0
  %16 = load %struct.side_info_link*, %struct.side_info_link** %next, align 8, !tbaa !11
  store %struct.side_info_link* %16, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %elements, align 4, !tbaa !1
  %18 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32* %elements to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @BF_FlushBitstream(%struct.BF_FrameData* %frameInfo, %struct.BF_FrameResults* %results) #0 {
entry:
  %frameInfo.addr = alloca %struct.BF_FrameData*, align 8
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  %bitsRemaining = alloca i32, align 4
  %wordsRemaining = alloca i32, align 4
  store %struct.BF_FrameData* %frameInfo, %struct.BF_FrameData** %frameInfo.addr, align 8, !tbaa !5
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = load i32, i32* @elements, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %bitsRemaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* @forwardFrameLength, align 4, !tbaa !1
  %3 = load i32, i32* @forwardSILength, align 4, !tbaa !1
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %bitsRemaining, align 4, !tbaa !1
  %4 = bitcast i32* %wordsRemaining to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %bitsRemaining, align 4, !tbaa !1
  %div = sdiv i32 %5, 32
  store i32 %div, i32* %wordsRemaining, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i32, i32* %wordsRemaining, align 4, !tbaa !1
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %wordsRemaining, align 4, !tbaa !1
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  call void @WriteMainDataBits(i32 0, i32 32, %struct.BF_FrameResults* %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %bitsRemaining, align 4, !tbaa !1
  %rem = srem i32 %8, 32
  %9 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  call void @WriteMainDataBits(i32 0, i32 %rem, %struct.BF_FrameResults* %9)
  %10 = bitcast i32* %wordsRemaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %bitsRemaining to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %12 = load i32, i32* @forwardFrameLength, align 4, !tbaa !1
  %13 = load i32, i32* @forwardSILength, align 4, !tbaa !1
  %sub2 = sub nsw i32 %12, %13
  %14 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %mainDataLength = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %14, i32 0, i32 1
  store i32 %sub2, i32* %mainDataLength, align 4, !tbaa !9
  %15 = load i32, i32* @forwardSILength, align 4, !tbaa !1
  %16 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %SILength = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %16, i32 0, i32 0
  store i32 %15, i32* %SILength, align 4, !tbaa !7
  %17 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %17, i32 0, i32 2
  store i32 0, i32* %nextBackPtr, align 4, !tbaa !10
  call void @free_side_queues()
  store i32 0, i32* @BitCount, align 4, !tbaa !1
  store i32 0, i32* @ThisFrameSize, align 4, !tbaa !1
  store i32 0, i32* @BitsRemaining, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @WriteMainDataBits(i32 %val, i32 %nbits, %struct.BF_FrameResults* %results) #0 {
entry:
  %val.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  %extra = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4, !tbaa !1
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !1
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @BitCount, align 4, !tbaa !1
  %2 = load i32, i32* @ThisFrameSize, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %call = call i32 @write_side_info()
  store i32 %call, i32* @BitCount, align 4, !tbaa !1
  %3 = load i32, i32* @ThisFrameSize, align 4, !tbaa !1
  %4 = load i32, i32* @BitCount, align 4, !tbaa !1
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* @BitsRemaining, align 4, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %6 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  %cmp4 = icmp ugt i32 %5, %6
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %7 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %val.addr, align 4, !tbaa !1
  %9 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %10 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  %sub6 = sub i32 %9, %10
  %shr = lshr i32 %8, %sub6
  store i32 %shr, i32* %extra, align 4, !tbaa !1
  %11 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  %12 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %sub7 = sub i32 %12, %11
  store i32 %sub7, i32* %nbits.addr, align 4, !tbaa !1
  %13 = load i32, i32* %extra, align 4, !tbaa !1
  %14 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  call void @putMyBits(i32 %13, i32 %14)
  %call8 = call i32 @write_side_info()
  store i32 %call8, i32* @BitCount, align 4, !tbaa !1
  %15 = load i32, i32* @ThisFrameSize, align 4, !tbaa !1
  %16 = load i32, i32* @BitCount, align 4, !tbaa !1
  %sub9 = sub nsw i32 %15, %16
  store i32 %sub9, i32* @BitsRemaining, align 4, !tbaa !1
  %17 = load i32, i32* %val.addr, align 4, !tbaa !1
  %18 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  call void @putMyBits(i32 %17, i32 %18)
  %19 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  br label %if.end.10

if.else:                                          ; preds = %if.end.3
  %20 = load i32, i32* %val.addr, align 4, !tbaa !1
  %21 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  call void @putMyBits(i32 %20, i32 %21)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.5
  %22 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %23 = load i32, i32* @BitCount, align 4, !tbaa !1
  %add = add i32 %23, %22
  store i32 %add, i32* @BitCount, align 4, !tbaa !1
  %24 = load i32, i32* %nbits.addr, align 4, !tbaa !1
  %25 = load i32, i32* @BitsRemaining, align 4, !tbaa !1
  %sub11 = sub i32 %25, %24
  store i32 %sub11, i32* @BitsRemaining, align 4, !tbaa !1
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @free_side_queues() #0 {
entry:
  %l = alloca %struct.side_info_link*, align 8
  %next = alloca %struct.side_info_link*, align 8
  %0 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.side_info_link** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  store %struct.side_info_link* %2, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %tobool = icmp ne %struct.side_info_link* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next1 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %4, i32 0, i32 0
  %5 = load %struct.side_info_link*, %struct.side_info_link** %next1, align 8, !tbaa !11
  store %struct.side_info_link* %5, %struct.side_info_link** %next, align 8, !tbaa !5
  %6 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  call void @free_side_info_link(%struct.side_info_link* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.side_info_link*, %struct.side_info_link** %next, align 8, !tbaa !5
  store %struct.side_info_link* %7, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  %8 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  store %struct.side_info_link* %8, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.6, %for.end
  %9 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %tobool3 = icmp ne %struct.side_info_link* %9, null
  br i1 %tobool3, label %for.body.4, label %for.end.7

for.body.4:                                       ; preds = %for.cond.2
  %10 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next5 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %10, i32 0, i32 0
  %11 = load %struct.side_info_link*, %struct.side_info_link** %next5, align 8, !tbaa !11
  store %struct.side_info_link* %11, %struct.side_info_link** %next, align 8, !tbaa !5
  %12 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  call void @free_side_info_link(%struct.side_info_link* %12)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.4
  %13 = load %struct.side_info_link*, %struct.side_info_link** %next, align 8, !tbaa !5
  store %struct.side_info_link* %13, %struct.side_info_link** %l, align 8, !tbaa !5
  br label %for.cond.2

for.end.7:                                        ; preds = %for.cond.2
  store %struct.side_info_link* null, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  %14 = bitcast %struct.side_info_link** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BF_PartLength(%struct.BF_BitstreamPart* %part) #0 {
entry:
  %part.addr = alloca %struct.BF_BitstreamPart*, align 8
  %ep = alloca %struct.BF_BitstreamElement*, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store %struct.BF_BitstreamPart* %part, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %1, i32 0, i32 1
  %2 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  store %struct.BF_BitstreamElement* %2, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %bits, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 0
  %7 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 1
  %9 = load i16, i16* %length, align 2, !tbaa !30
  %conv = zext i16 %9 to i32
  %10 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %10, %conv
  store i32 %add, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  %12 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %12, i32 1
  store %struct.BF_BitstreamElement* %incdec.ptr, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %bits, align 4, !tbaa !1
  %14 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_newPartHolder(i32 %max_elements) #0 {
entry:
  %max_elements.addr = alloca i32, align 4
  %newPH = alloca %struct.BF_PartHolder*, align 8
  store i32 %max_elements, i32* %max_elements.addr, align 4, !tbaa !1
  %0 = bitcast %struct.BF_PartHolder** %newPH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @calloc(i64 1, i64 16) #1
  %1 = bitcast i8* %call to %struct.BF_PartHolder*
  store %struct.BF_PartHolder* %1, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %2 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %max_elements1 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i32 0, i32 0
  store i32 %2, i32* %max_elements1, align 4, !tbaa !33
  %call2 = call noalias i8* @calloc(i64 1, i64 16) #1
  %4 = bitcast i8* %call2 to %struct.BF_BitstreamPart*
  %5 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %5, i32 0, i32 1
  store %struct.BF_BitstreamPart* %4, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %6 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  %conv = sext i32 %6 to i64
  %call3 = call noalias i8* @calloc(i64 %conv, i64 8) #1
  %7 = bitcast i8* %call3 to %struct.BF_BitstreamElement*
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %part4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %8, i32 0, i32 1
  %9 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part4, align 8, !tbaa !35
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %9, i32 0, i32 1
  store %struct.BF_BitstreamElement* %7, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  %10 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %part6 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %11, i32 0, i32 1
  %12 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part6, align 8, !tbaa !35
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %12, i32 0, i32 0
  store i32 0, i32* %nrEntries, align 4, !tbaa !16
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %14 = bitcast %struct.BF_PartHolder** %newPH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret %struct.BF_PartHolder* %13
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_NewHolderFromBitstreamPart(%struct.BF_BitstreamPart* %thePart) #0 {
entry:
  %thePart.addr = alloca %struct.BF_BitstreamPart*, align 8
  %newHolder = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_BitstreamPart* %thePart, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_PartHolder** %newHolder to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %1, i32 0, i32 0
  %2 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %call = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %2)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %newHolder, align 8, !tbaa !5
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newHolder, align 8, !tbaa !5
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %call1 = call %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %3, %struct.BF_BitstreamPart* %4)
  %5 = bitcast %struct.BF_PartHolder** %newHolder to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret %struct.BF_PartHolder* %call1
}

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_LoadHolderFromBitstreamPart(%struct.BF_PartHolder* %theHolder, %struct.BF_BitstreamPart* %thePart) #0 {
entry:
  %theHolder.addr = alloca %struct.BF_PartHolder*, align 8
  %thePart.addr = alloca %struct.BF_BitstreamPart*, align 8
  %pElem = alloca %struct.BF_BitstreamElement*, align 8
  %i = alloca i32, align 4
  store %struct.BF_PartHolder* %theHolder, %struct.BF_PartHolder** %theHolder.addr, align 8, !tbaa !5
  store %struct.BF_BitstreamPart* %thePart, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_BitstreamElement** %pElem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %theHolder.addr, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %2, i32 0, i32 1
  %3 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %3, i32 0, i32 0
  store i32 0, i32* %nrEntries, align 4, !tbaa !16
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %5 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %nrEntries1 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %5, i32 0, i32 0
  %6 = load i32, i32* %nrEntries1, align 4, !tbaa !16
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %thePart.addr, align 8, !tbaa !5
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %8, i32 0, i32 1
  %9 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %9, i64 %idxprom
  store %struct.BF_BitstreamElement* %arrayidx, %struct.BF_BitstreamElement** %pElem, align 8, !tbaa !5
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %theHolder.addr, align 8, !tbaa !5
  %11 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %pElem, align 8, !tbaa !5
  %call = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* %10, %struct.BF_BitstreamElement* %11)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %theHolder.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %theHolder.addr, align 8, !tbaa !5
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.BF_BitstreamElement** %pElem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret %struct.BF_PartHolder* %13
}

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* %thePH, %struct.BF_BitstreamElement* %theElement) #0 {
entry:
  %thePH.addr = alloca %struct.BF_PartHolder*, align 8
  %theElement.addr = alloca %struct.BF_BitstreamElement*, align 8
  %retPH = alloca %struct.BF_PartHolder*, align 8
  %needed_entries = alloca i32, align 4
  %extraPad = alloca i32, align 4
  store %struct.BF_PartHolder* %thePH, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  store %struct.BF_BitstreamElement* %theElement, %struct.BF_BitstreamElement** %theElement.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_PartHolder** %retPH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %1, %struct.BF_PartHolder** %retPH, align 8, !tbaa !5
  %2 = bitcast i32* %needed_entries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %3, i32 0, i32 1
  %4 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %4, i32 0, i32 0
  %5 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %add = add i32 %5, 1
  store i32 %add, i32* %needed_entries, align 4, !tbaa !1
  %6 = bitcast i32* %extraPad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 8, i32* %extraPad, align 4, !tbaa !1
  %7 = load i32, i32* %needed_entries, align 4, !tbaa !1
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %max_elements = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %8, i32 0, i32 0
  %9 = load i32, i32* %max_elements, align 4, !tbaa !33
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %11 = load i32, i32* %needed_entries, align 4, !tbaa !1
  %12 = load i32, i32* %extraPad, align 4, !tbaa !1
  %add1 = add nsw i32 %11, %12
  %call = call %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* %10, i32 %add1)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %retPH, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %retPH, align 8, !tbaa !5
  %part2 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %13, i32 0, i32 1
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part2, align 8, !tbaa !35
  %nrEntries3 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %14, i32 0, i32 0
  %15 = load i32, i32* %nrEntries3, align 4, !tbaa !16
  %inc = add i32 %15, 1
  store i32 %inc, i32* %nrEntries3, align 4, !tbaa !16
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %retPH, align 8, !tbaa !5
  %part4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 1
  %17 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part4, align 8, !tbaa !35
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %17, i32 0, i32 1
  %18 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %18, i64 %idxprom
  %19 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %theElement.addr, align 8, !tbaa !5
  %20 = bitcast %struct.BF_BitstreamElement* %arrayidx to i8*
  %21 = bitcast %struct.BF_BitstreamElement* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false), !tbaa.struct !36
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %retPH, align 8, !tbaa !5
  %23 = bitcast i32* %extraPad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %needed_entries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.BF_PartHolder** %retPH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret %struct.BF_PartHolder* %22
}

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_resizePartHolder(%struct.BF_PartHolder* %oldPH, i32 %max_elements) #0 {
entry:
  %oldPH.addr = alloca %struct.BF_PartHolder*, align 8
  %max_elements.addr = alloca i32, align 4
  %elems = alloca i32, align 4
  %i = alloca i32, align 4
  %newPH = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_PartHolder* %oldPH, %struct.BF_PartHolder** %oldPH.addr, align 8, !tbaa !5
  store i32 %max_elements, i32* %max_elements.addr, align 4, !tbaa !1
  %0 = bitcast i32* %elems to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.BF_PartHolder** %newPH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  %call = call %struct.BF_PartHolder* @BF_newPartHolder(i32 %3)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %4 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %oldPH.addr, align 8, !tbaa !5
  %max_elements1 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %4, i32 0, i32 0
  %5 = load i32, i32* %max_elements1, align 4, !tbaa !33
  %6 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %max_elements.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %oldPH.addr, align 8, !tbaa !5
  %max_elements2 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %8, i32 0, i32 0
  %9 = load i32, i32* %max_elements2, align 4, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %elems, align 4, !tbaa !1
  %10 = load i32, i32* %elems, align 4, !tbaa !1
  %11 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %11, i32 0, i32 1
  %12 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %12, i32 0, i32 0
  store i32 %10, i32* %nrEntries, align 4, !tbaa !16
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = load i32, i32* %elems, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %part4 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %16, i32 0, i32 1
  %17 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part4, align 8, !tbaa !35
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %17, i32 0, i32 1
  %18 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %18, i64 %idxprom
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom5 = sext i32 %19 to i64
  %20 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %oldPH.addr, align 8, !tbaa !5
  %part6 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %20, i32 0, i32 1
  %21 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part6, align 8, !tbaa !35
  %element7 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %21, i32 0, i32 1
  %22 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element7, align 8, !tbaa !29
  %arrayidx8 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %22, i64 %idxprom5
  %23 = bitcast %struct.BF_BitstreamElement* %arrayidx to i8*
  %24 = bitcast %struct.BF_BitstreamElement* %arrayidx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 4, i1 false), !tbaa.struct !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %oldPH.addr, align 8, !tbaa !5
  %call9 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %26)
  %27 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %newPH, align 8, !tbaa !5
  %28 = bitcast %struct.BF_PartHolder** %newPH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %elems to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret %struct.BF_PartHolder* %27
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %thePH) #0 {
entry:
  %thePH.addr = alloca %struct.BF_PartHolder*, align 8
  store %struct.BF_PartHolder* %thePH, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %0 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %0, i32 0, i32 1
  %1 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %1, i32 0, i32 1
  %2 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  %3 = bitcast %struct.BF_BitstreamElement* %2 to i8*
  call void @free(i8* %3) #1
  %4 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %part1 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %4, i32 0, i32 1
  %5 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part1, align 8, !tbaa !35
  %6 = bitcast %struct.BF_BitstreamPart* %5 to i8*
  call void @free(i8* %6) #1
  %7 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %8 = bitcast %struct.BF_PartHolder* %7 to i8*
  call void @free(i8* %8) #1
  ret %struct.BF_PartHolder* null
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %thePH, i32 %value, i32 %length) #0 {
entry:
  %retval = alloca %struct.BF_PartHolder*, align 8
  %thePH.addr = alloca %struct.BF_PartHolder*, align 8
  %value.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %myElement = alloca %struct.BF_BitstreamElement, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.BF_PartHolder* %thePH, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !1
  %0 = bitcast %struct.BF_BitstreamElement* %myElement to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %value.addr, align 4, !tbaa !1
  %value1 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %myElement, i32 0, i32 0
  store i32 %1, i32* %value1, align 4, !tbaa !38
  %2 = load i32, i32* %length.addr, align 4, !tbaa !1
  %conv = trunc i32 %2 to i16
  %length2 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %myElement, i32 0, i32 1
  store i16 %conv, i16* %length2, align 2, !tbaa !30
  %3 = load i32, i32* %length.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %call = call %struct.BF_PartHolder* @BF_addElement(%struct.BF_PartHolder* %4, %struct.BF_BitstreamElement* %myElement)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %5, %struct.BF_PartHolder** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %6 = bitcast %struct.BF_BitstreamElement* %myElement to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %retval
  ret %struct.BF_PartHolder* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @writePartMainData(%struct.BF_BitstreamPart* %part, %struct.BF_FrameResults* %results) #0 {
entry:
  %part.addr = alloca %struct.BF_BitstreamPart*, align 8
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  %ep = alloca %struct.BF_BitstreamElement*, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store %struct.BF_BitstreamPart* %part, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %bits, align 4, !tbaa !1
  %3 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %3, i32 0, i32 1
  %4 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  store %struct.BF_BitstreamElement* %4, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 0
  %7 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 0
  %9 = load i32, i32* %value, align 4, !tbaa !38
  %10 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %10, i32 0, i32 1
  %11 = load i16, i16* %length, align 2, !tbaa !30
  %conv = zext i16 %11 to i32
  %12 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  call void @WriteMainDataBits(i32 %9, i32 %conv, %struct.BF_FrameResults* %12)
  %13 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %length1 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %13, i32 0, i32 1
  %14 = load i16, i16* %length1, align 2, !tbaa !30
  %conv2 = zext i16 %14 to i32
  %15 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %15, %conv2
  store i32 %add, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  %17 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %17, i32 1
  store %struct.BF_BitstreamElement* %incdec.ptr, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %bits, align 4, !tbaa !1
  %19 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @write_side_info() #0 {
entry:
  %si = alloca %struct.MYSideInfo*, align 8
  %bits = alloca i32, align 4
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %wp = alloca i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, align 8
  %0 = bitcast %struct.MYSideInfo** %si to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)* @writePartSideInfo, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  store i32 0, i32* %bits, align 4, !tbaa !1
  %call = call %struct.MYSideInfo* @get_side_info()
  store %struct.MYSideInfo* %call, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %5 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %frameLength = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %5, i32 0, i32 0
  %6 = load i32, i32* %frameLength, align 4, !tbaa !39
  store i32 %6, i32* @ThisFrameSize, align 4, !tbaa !1
  %7 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %8 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %headerPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %8, i32 0, i32 4
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %headerPH, align 8, !tbaa !40
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %9, i32 0, i32 1
  %10 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !35
  %call1 = call i32 %7(%struct.BF_BitstreamPart* %10, %struct.BF_FrameResults* null)
  %11 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %11, %call1
  store i32 %add, i32* %bits, align 4, !tbaa !1
  %12 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %13 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %13, i32 0, i32 5
  %14 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %frameSIPH, align 8, !tbaa !41
  %part2 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %14, i32 0, i32 1
  %15 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part2, align 8, !tbaa !35
  %call3 = call i32 %12(%struct.BF_BitstreamPart* %15, %struct.BF_FrameResults* null)
  %16 = load i32, i32* %bits, align 4, !tbaa !1
  %add4 = add nsw i32 %16, %call3
  store i32 %add4, i32* %bits, align 4, !tbaa !1
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %ch, align 4, !tbaa !1
  %18 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %nChannels = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %18, i32 0, i32 3
  %19 = load i32, i32* %nChannels, align 4, !tbaa !42
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %21 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %22, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH, i32 0, i64 %idxprom
  %23 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx, align 8, !tbaa !5
  %part5 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %23, i32 0, i32 1
  %24 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part5, align 8, !tbaa !35
  %call6 = call i32 %20(%struct.BF_BitstreamPart* %24, %struct.BF_FrameResults* null)
  %25 = load i32, i32* %bits, align 4, !tbaa !1
  %add7 = add nsw i32 %25, %call6
  store i32 %add7, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.25, %for.end
  %27 = load i32, i32* %gr, align 4, !tbaa !1
  %28 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %nGranules = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %28, i32 0, i32 2
  %29 = load i32, i32* %nGranules, align 4, !tbaa !43
  %cmp9 = icmp slt i32 %27, %29
  br i1 %cmp9, label %for.body.10, label %for.end.27

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.22, %for.body.10
  %30 = load i32, i32* %ch, align 4, !tbaa !1
  %31 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %nChannels12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %31, i32 0, i32 3
  %32 = load i32, i32* %nChannels12, align 4, !tbaa !42
  %cmp13 = icmp slt i32 %30, %32
  br i1 %cmp13, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.11
  %33 = load i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)*, i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp, align 8, !tbaa !5
  %34 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom15 = sext i32 %34 to i64
  %35 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom16 = sext i32 %35 to i64
  %36 = load %struct.MYSideInfo*, %struct.MYSideInfo** %si, align 8, !tbaa !5
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %36, i32 0, i32 7
  %arrayidx17 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx17, i32 0, i64 %idxprom15
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx18, align 8, !tbaa !5
  %part19 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %37, i32 0, i32 1
  %38 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part19, align 8, !tbaa !35
  %call20 = call i32 %33(%struct.BF_BitstreamPart* %38, %struct.BF_FrameResults* null)
  %39 = load i32, i32* %bits, align 4, !tbaa !1
  %add21 = add nsw i32 %39, %call20
  store i32 %add21, i32* %bits, align 4, !tbaa !1
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.14
  %40 = load i32, i32* %ch, align 4, !tbaa !1
  %inc23 = add nsw i32 %40, 1
  store i32 %inc23, i32* %ch, align 4, !tbaa !1
  br label %for.cond.11

for.end.24:                                       ; preds = %for.cond.11
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %41 = load i32, i32* %gr, align 4, !tbaa !1
  %inc26 = add nsw i32 %41, 1
  store i32 %inc26, i32* %gr, align 4, !tbaa !1
  br label %for.cond.8

for.end.27:                                       ; preds = %for.cond.8
  %42 = load i32, i32* %bits, align 4, !tbaa !1
  %43 = bitcast i32 (%struct.BF_BitstreamPart*, %struct.BF_FrameResults*)** %wp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.MYSideInfo** %si to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  ret i32 %42
}

declare void @putMyBits(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @writePartSideInfo(%struct.BF_BitstreamPart* %part, %struct.BF_FrameResults* %results) #0 {
entry:
  %part.addr = alloca %struct.BF_BitstreamPart*, align 8
  %results.addr = alloca %struct.BF_FrameResults*, align 8
  %ep = alloca %struct.BF_BitstreamElement*, align 8
  %i = alloca i32, align 4
  %bits = alloca i32, align 4
  store %struct.BF_BitstreamPart* %part, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  store %struct.BF_FrameResults* %results, %struct.BF_FrameResults** %results.addr, align 8, !tbaa !5
  %0 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %bits, align 4, !tbaa !1
  %3 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %element = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %3, i32 0, i32 1
  %4 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %element, align 8, !tbaa !29
  store %struct.BF_BitstreamElement* %4, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part.addr, align 8, !tbaa !5
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 0
  %7 = load i32, i32* %nrEntries, align 4, !tbaa !16
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %8, i32 0, i32 0
  %9 = load i32, i32* %value, align 4, !tbaa !38
  %10 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %10, i32 0, i32 1
  %11 = load i16, i16* %length, align 2, !tbaa !30
  %conv = zext i16 %11 to i32
  call void @putMyBits(i32 %9, i32 %conv)
  %12 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %length1 = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %12, i32 0, i32 1
  %13 = load i16, i16* %length1, align 2, !tbaa !30
  %conv2 = zext i16 %13 to i32
  %14 = load i32, i32* %bits, align 4, !tbaa !1
  %add = add nsw i32 %14, %conv2
  store i32 %add, i32* %bits, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  %16 = load %struct.BF_BitstreamElement*, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.BF_BitstreamElement, %struct.BF_BitstreamElement* %16, i32 1
  store %struct.BF_BitstreamElement* %incdec.ptr, %struct.BF_BitstreamElement** %ep, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %bits, align 4, !tbaa !1
  %18 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast %struct.BF_BitstreamElement** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct.MYSideInfo* @get_side_info() #0 {
entry:
  %f = alloca %struct.side_info_link*, align 8
  %l = alloca %struct.side_info_link*, align 8
  %0 = bitcast %struct.side_info_link** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  store %struct.side_info_link* %1, %struct.side_info_link** %f, align 8, !tbaa !5
  %2 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.side_info_link*, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  store %struct.side_info_link* %3, %struct.side_info_link** %l, align 8, !tbaa !5
  %4 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %4, i32 0, i32 0
  %5 = load %struct.side_info_link*, %struct.side_info_link** %next, align 8, !tbaa !11
  store %struct.side_info_link* %5, %struct.side_info_link** @side_queue_head, align 8, !tbaa !5
  %6 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  store %struct.side_info_link* %6, %struct.side_info_link** @side_queue_free, align 8, !tbaa !5
  %7 = load %struct.side_info_link*, %struct.side_info_link** %f, align 8, !tbaa !5
  %8 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %next1 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %8, i32 0, i32 0
  store %struct.side_info_link* %7, %struct.side_info_link** %next1, align 8, !tbaa !11
  %9 = load %struct.side_info_link*, %struct.side_info_link** %l, align 8, !tbaa !5
  %side_info = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %9, i32 0, i32 1
  %10 = bitcast %struct.side_info_link** %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.side_info_link** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.MYSideInfo* %side_info
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal void @free_side_info_link(%struct.side_info_link* %l) #0 {
entry:
  %l.addr = alloca %struct.side_info_link*, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.side_info_link* %l, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %0 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %2, i32 0, i32 1
  %headerPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info, i32 0, i32 4
  %3 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %headerPH, align 8, !tbaa !18
  %call = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %3)
  %4 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info1 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %4, i32 0, i32 1
  %headerPH2 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info1, i32 0, i32 4
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %headerPH2, align 8, !tbaa !18
  %5 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info3 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %5, i32 0, i32 1
  %frameSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info3, i32 0, i32 5
  %6 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %frameSIPH, align 8, !tbaa !20
  %call4 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %6)
  %7 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info5 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %7, i32 0, i32 1
  %frameSIPH6 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info5, i32 0, i32 5
  store %struct.BF_PartHolder* %call4, %struct.BF_PartHolder** %frameSIPH6, align 8, !tbaa !20
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %ch, align 4, !tbaa !1
  %9 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info7 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %9, i32 0, i32 1
  %nChannels = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info7, i32 0, i32 3
  %10 = load i32, i32* %nChannels, align 4, !tbaa !26
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info8 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %12, i32 0, i32 1
  %channelSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info8, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH, i32 0, i64 %idxprom
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx, align 8, !tbaa !5
  %call9 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %13)
  %14 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info11 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %15, i32 0, i32 1
  %channelSIPH12 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info11, i32 0, i32 6
  %arrayidx13 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %channelSIPH12, i32 0, i64 %idxprom10
  store %struct.BF_PartHolder* %call9, %struct.BF_PartHolder** %arrayidx13, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.38, %for.end
  %17 = load i32, i32* %gr, align 4, !tbaa !1
  %18 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info15 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %18, i32 0, i32 1
  %nGranules = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info15, i32 0, i32 2
  %19 = load i32, i32* %nGranules, align 4, !tbaa !25
  %cmp16 = icmp slt i32 %17, %19
  br i1 %cmp16, label %for.body.17, label %for.end.40

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.35, %for.body.17
  %20 = load i32, i32* %ch, align 4, !tbaa !1
  %21 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info19 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %21, i32 0, i32 1
  %nChannels20 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info19, i32 0, i32 3
  %22 = load i32, i32* %nChannels20, align 4, !tbaa !26
  %cmp21 = icmp slt i32 %20, %22
  br i1 %cmp21, label %for.body.22, label %for.end.37

for.body.22:                                      ; preds = %for.cond.18
  %23 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom23 = sext i32 %23 to i64
  %24 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom24 = sext i32 %24 to i64
  %25 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info25 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %25, i32 0, i32 1
  %spectrumSIPH = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info25, i32 0, i32 7
  %arrayidx26 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH, i32 0, i64 %idxprom24
  %arrayidx27 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx26, i32 0, i64 %idxprom23
  %26 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx27, align 8, !tbaa !5
  %call28 = call %struct.BF_PartHolder* @BF_freePartHolder(%struct.BF_PartHolder* %26)
  %27 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom29 = sext i32 %27 to i64
  %28 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %side_info31 = getelementptr inbounds %struct.side_info_link, %struct.side_info_link* %29, i32 0, i32 1
  %spectrumSIPH32 = getelementptr inbounds %struct.MYSideInfo, %struct.MYSideInfo* %side_info31, i32 0, i32 7
  %arrayidx33 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* %spectrumSIPH32, i32 0, i64 %idxprom30
  %arrayidx34 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx33, i32 0, i64 %idxprom29
  store %struct.BF_PartHolder* %call28, %struct.BF_PartHolder** %arrayidx34, align 8, !tbaa !5
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.22
  %30 = load i32, i32* %ch, align 4, !tbaa !1
  %inc36 = add nsw i32 %30, 1
  store i32 %inc36, i32* %ch, align 4, !tbaa !1
  br label %for.cond.18

for.end.37:                                       ; preds = %for.cond.18
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %31 = load i32, i32* %gr, align 4, !tbaa !1
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %gr, align 4, !tbaa !1
  br label %for.cond.14

for.end.40:                                       ; preds = %for.cond.14
  %32 = load %struct.side_info_link*, %struct.side_info_link** %l.addr, align 8, !tbaa !5
  %33 = bitcast %struct.side_info_link* %32 to i8*
  call void @free(i8* %33) #1
  %34 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"BF_FrameResults", !2, i64 0, !2, i64 4, !2, i64 8}
!9 = !{!8, !2, i64 4}
!10 = !{!8, !2, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"side_info_link", !6, i64 0, !13, i64 8}
!13 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !6, i64 16, !6, i64 24, !3, i64 32, !3, i64 48}
!14 = !{!15, !6, i64 16}
!15 = !{!"BF_FrameData", !2, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !6, i64 24, !3, i64 32, !3, i64 48, !3, i64 80, !3, i64 112, !3, i64 144, !6, i64 176}
!16 = !{!17, !2, i64 0}
!17 = !{!"", !2, i64 0, !6, i64 8}
!18 = !{!12, !6, i64 24}
!19 = !{!15, !6, i64 24}
!20 = !{!12, !6, i64 32}
!21 = !{!15, !2, i64 8}
!22 = !{!15, !2, i64 4}
!23 = !{!15, !2, i64 0}
!24 = !{!12, !2, i64 8}
!25 = !{!12, !2, i64 16}
!26 = !{!12, !2, i64 20}
!27 = !{!12, !2, i64 12}
!28 = !{!15, !6, i64 176}
!29 = !{!17, !6, i64 8}
!30 = !{!31, !32, i64 4}
!31 = !{!"", !2, i64 0, !32, i64 4}
!32 = !{!"short", !3, i64 0}
!33 = !{!34, !2, i64 0}
!34 = !{!"BF_PartHolder", !2, i64 0, !6, i64 8}
!35 = !{!34, !6, i64 8}
!36 = !{i64 0, i64 4, !1, i64 4, i64 2, !37}
!37 = !{!32, !32, i64 0}
!38 = !{!31, !2, i64 0}
!39 = !{!13, !2, i64 0}
!40 = !{!13, !6, i64 16}
!41 = !{!13, !6, i64 24}
!42 = !{!13, !2, i64 12}
!43 = !{!13, !2, i64 8}
