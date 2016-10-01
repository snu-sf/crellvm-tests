; ModuleID = './MultiSource.Benchmarks.MiBench/3.consumer-lame.l3bitstream.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BF_FrameData = type { i32, i32, i32, %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart*, [2 x %struct.BF_BitstreamPart*], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]], %struct.BF_BitstreamPart* }
%struct.BF_BitstreamPart = type { i32, %struct.BF_BitstreamElement* }
%struct.BF_BitstreamElement = type { i32, i16 }
%struct.BF_FrameResults = type { i32, i32, i32 }
%struct.bit_stream_struc = type { i8*, i32, %struct._IO_FILE*, i8*, i32, i64, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.BF_PartHolder = type { i32, %struct.BF_BitstreamPart* }
%struct.huffcodetab = type { i32, i32, i64*, i8* }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@frameData = global %struct.BF_FrameData* null, align 8
@frameResults = global %struct.BF_FrameResults* null, align 8
@PartHoldersInitialized = global i32 0, align 4
@bs = internal global %struct.bit_stream_struc* null, align 8
@headerPH = common global %struct.BF_PartHolder* null, align 8
@frameSIPH = common global %struct.BF_PartHolder* null, align 8
@channelSIPH = common global [2 x %struct.BF_PartHolder*] zeroinitializer, align 16
@spectrumSIPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 16
@scaleFactorsPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 16
@codedDataPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 16
@userSpectrumPH = common global [2 x [2 x %struct.BF_PartHolder*]] zeroinitializer, align 16
@userFrameDataPH = common global %struct.BF_PartHolder* null, align 8
@ht = external global [34 x %struct.huffcodetab], align 16
@slen1_tab = internal global [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@slen2_tab = internal global [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16
@scalefac_band = external global %struct.scalefac_struct, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"opps - adding stuffing bits = %i.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"this should not happen...\0A\00", align 1
@crc = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @putMyBits(i32 %val, i32 %len) #0 {
entry:
  %val.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !1
  %0 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** @bs, align 8, !tbaa !5
  %1 = load i32, i32* %val.addr, align 4, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !1
  call void @putbits(%struct.bit_stream_struc* %0, i32 %1, i32 %2)
  ret void
}

declare void @putbits(%struct.bit_stream_struc*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @III_format_bitstream(%struct.lame_global_flags* %gfp, i32 %bitsPerFrame, [2 x [576 x i32]]* %l3_enc, %struct.III_side_info_t* %l3_side, [2 x %struct.III_scalefac_t]* %scalefac, %struct.bit_stream_struc* %in_bs) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %bitsPerFrame.addr = alloca i32, align 4
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %l3_side.addr = alloca %struct.III_side_info_t*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %in_bs.addr = alloca %struct.bit_stream_struc*, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  store i32 %bitsPerFrame, i32* %bitsPerFrame.addr, align 4, !tbaa !1
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !5
  store %struct.III_side_info_t* %l3_side, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !5
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  store %struct.bit_stream_struc* %in_bs, %struct.bit_stream_struc** %in_bs.addr, align 8, !tbaa !5
  %0 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.bit_stream_struc*, %struct.bit_stream_struc** %in_bs.addr, align 8, !tbaa !5
  store %struct.bit_stream_struc* %2, %struct.bit_stream_struc** @bs, align 8, !tbaa !5
  %3 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %cmp = icmp eq %struct.BF_FrameData* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 1, i64 184) #2
  %4 = bitcast i8* %call to %struct.BF_FrameData*
  store %struct.BF_FrameData* %4, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 8, !tbaa !5
  %cmp1 = icmp eq %struct.BF_FrameResults* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call noalias i8* @calloc(i64 1, i64 12) #2
  %6 = bitcast i8* %call3 to %struct.BF_FrameResults*
  store %struct.BF_FrameResults* %6, %struct.BF_FrameResults** @frameResults, align 8, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load i32, i32* @PartHoldersInitialized, align 4, !tbaa !1
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.43, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %call6 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 14)
  store %struct.BF_PartHolder* %call6, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %call7 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 12)
  store %struct.BF_PartHolder* %call7, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %8 = load i32, i32* %ch, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %8, 2
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 8)
  %9 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i64 %idxprom
  store %struct.BF_PartHolder* %call9, %struct.BF_PartHolder** %arrayidx, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.39, %for.end
  %11 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp11 = icmp slt i32 %11, 2
  br i1 %cmp11, label %for.body.12, label %for.end.41

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.36, %for.body.12
  %12 = load i32, i32* %ch, align 4, !tbaa !1
  %cmp14 = icmp slt i32 %12, 2
  br i1 %cmp14, label %for.body.15, label %for.end.38

for.body.15:                                      ; preds = %for.cond.13
  %call16 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 32)
  %13 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom17 = sext i32 %13 to i64
  %14 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx19, i32 0, i64 %idxprom17
  store %struct.BF_PartHolder* %call16, %struct.BF_PartHolder** %arrayidx20, align 8, !tbaa !5
  %call21 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 64)
  %15 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom22 = sext i32 %15 to i64
  %16 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx24, i32 0, i64 %idxprom22
  store %struct.BF_PartHolder* %call21, %struct.BF_PartHolder** %arrayidx25, align 8, !tbaa !5
  %call26 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 576)
  %17 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom27 = sext i32 %17 to i64
  %18 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx29, i32 0, i64 %idxprom27
  store %struct.BF_PartHolder* %call26, %struct.BF_PartHolder** %arrayidx30, align 8, !tbaa !5
  %call31 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 4)
  %19 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom32 = sext i32 %19 to i64
  %20 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @userSpectrumPH, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx34, i32 0, i64 %idxprom32
  store %struct.BF_PartHolder* %call31, %struct.BF_PartHolder** %arrayidx35, align 8, !tbaa !5
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.15
  %21 = load i32, i32* %ch, align 4, !tbaa !1
  %inc37 = add nsw i32 %21, 1
  store i32 %inc37, i32* %ch, align 4, !tbaa !1
  br label %for.cond.13

for.end.38:                                       ; preds = %for.cond.13
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %22 = load i32, i32* %gr, align 4, !tbaa !1
  %inc40 = add nsw i32 %22, 1
  store i32 %inc40, i32* %gr, align 4, !tbaa !1
  br label %for.cond.10

for.end.41:                                       ; preds = %for.cond.10
  %call42 = call %struct.BF_PartHolder* @BF_newPartHolder(i32 8)
  store %struct.BF_PartHolder* %call42, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  store i32 1, i32* @PartHoldersInitialized, align 4, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.41, %if.end.4
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %24 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !5
  %call44 = call i32 @encodeSideInfo(%struct.lame_global_flags* %23, %struct.III_side_info_t* %24)
  %25 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %26 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !5
  %27 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !5
  %28 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  call void @encodeMainData(%struct.lame_global_flags* %25, [2 x [576 x i32]]* %26, %struct.III_side_info_t* %27, [2 x %struct.III_scalefac_t]* %28)
  %29 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !5
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %29, i32 0, i32 2
  %30 = load i32, i32* %resvDrain, align 4, !tbaa !7
  call void @drain_into_ancillary_data(i32 %30)
  %31 = load i32, i32* %bitsPerFrame.addr, align 4, !tbaa !1
  %32 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %frameLength = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %32, i32 0, i32 0
  store i32 %31, i32* %frameLength, align 4, !tbaa !9
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 45
  %34 = load i32, i32* %mode_gr, align 4, !tbaa !11
  %35 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %nGranules = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %35, i32 0, i32 1
  store i32 %34, i32* %nGranules, align 4, !tbaa !15
  %36 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %36, i32 0, i32 46
  %37 = load i32, i32* %stereo, align 4, !tbaa !16
  %38 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %nChannels = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %38, i32 0, i32 2
  store i32 %37, i32* %nChannels, align 4, !tbaa !17
  %39 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %39, i32 0, i32 1
  %40 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !18
  %41 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %header = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %41, i32 0, i32 3
  store %struct.BF_BitstreamPart* %40, %struct.BF_BitstreamPart** %header, align 8, !tbaa !20
  %42 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %part45 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %42, i32 0, i32 1
  %43 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part45, align 8, !tbaa !18
  %44 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %frameSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %44, i32 0, i32 4
  store %struct.BF_BitstreamPart* %43, %struct.BF_BitstreamPart** %frameSI, align 8, !tbaa !21
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.55, %if.end.43
  %45 = load i32, i32* %ch, align 4, !tbaa !1
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo47 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 46
  %47 = load i32, i32* %stereo47, align 4, !tbaa !16
  %cmp48 = icmp slt i32 %45, %47
  br i1 %cmp48, label %for.body.49, label %for.end.57

for.body.49:                                      ; preds = %for.cond.46
  %48 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom50 = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i64 %idxprom50
  %49 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx51, align 8, !tbaa !5
  %part52 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %49, i32 0, i32 1
  %50 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part52, align 8, !tbaa !18
  %51 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom53 = sext i32 %51 to i64
  %52 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %channelSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %52, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %channelSI, i32 0, i64 %idxprom53
  store %struct.BF_BitstreamPart* %50, %struct.BF_BitstreamPart** %arrayidx54, align 8, !tbaa !5
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.49
  %53 = load i32, i32* %ch, align 4, !tbaa !1
  %inc56 = add nsw i32 %53, 1
  store i32 %inc56, i32* %ch, align 4, !tbaa !1
  br label %for.cond.46

for.end.57:                                       ; preds = %for.cond.46
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.105, %for.end.57
  %54 = load i32, i32* %gr, align 4, !tbaa !1
  %55 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_gr59 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %55, i32 0, i32 45
  %56 = load i32, i32* %mode_gr59, align 4, !tbaa !11
  %cmp60 = icmp slt i32 %54, %56
  br i1 %cmp60, label %for.body.61, label %for.end.107

for.body.61:                                      ; preds = %for.cond.58
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.102, %for.body.61
  %57 = load i32, i32* %ch, align 4, !tbaa !1
  %58 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo63 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %58, i32 0, i32 46
  %59 = load i32, i32* %stereo63, align 4, !tbaa !16
  %cmp64 = icmp slt i32 %57, %59
  br i1 %cmp64, label %for.body.65, label %for.end.104

for.body.65:                                      ; preds = %for.cond.62
  %60 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom66 = sext i32 %60 to i64
  %61 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom67 = sext i32 %61 to i64
  %arrayidx68 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx68, i32 0, i64 %idxprom66
  %62 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx69, align 8, !tbaa !5
  %part70 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %62, i32 0, i32 1
  %63 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part70, align 8, !tbaa !18
  %64 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom71 = sext i32 %64 to i64
  %65 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom72 = sext i32 %65 to i64
  %66 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %spectrumSI = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %66, i32 0, i32 6
  %arrayidx73 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %spectrumSI, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx73, i32 0, i64 %idxprom71
  store %struct.BF_BitstreamPart* %63, %struct.BF_BitstreamPart** %arrayidx74, align 8, !tbaa !5
  %67 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom75 = sext i32 %67 to i64
  %68 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx77, i32 0, i64 %idxprom75
  %69 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx78, align 8, !tbaa !5
  %part79 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %69, i32 0, i32 1
  %70 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part79, align 8, !tbaa !18
  %71 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom80 = sext i32 %71 to i64
  %72 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom81 = sext i32 %72 to i64
  %73 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %scaleFactors = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %73, i32 0, i32 7
  %arrayidx82 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %scaleFactors, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx82, i32 0, i64 %idxprom80
  store %struct.BF_BitstreamPart* %70, %struct.BF_BitstreamPart** %arrayidx83, align 8, !tbaa !5
  %74 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom84 = sext i32 %74 to i64
  %75 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom85 = sext i32 %75 to i64
  %arrayidx86 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx86, i32 0, i64 %idxprom84
  %76 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx87, align 8, !tbaa !5
  %part88 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %76, i32 0, i32 1
  %77 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part88, align 8, !tbaa !18
  %78 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom89 = sext i32 %78 to i64
  %79 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom90 = sext i32 %79 to i64
  %80 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %codedData = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %80, i32 0, i32 8
  %arrayidx91 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %codedData, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx91, i32 0, i64 %idxprom89
  store %struct.BF_BitstreamPart* %77, %struct.BF_BitstreamPart** %arrayidx92, align 8, !tbaa !5
  %81 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom93 = sext i32 %81 to i64
  %82 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom94 = sext i32 %82 to i64
  %arrayidx95 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @userSpectrumPH, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx95, i32 0, i64 %idxprom93
  %83 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx96, align 8, !tbaa !5
  %part97 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %83, i32 0, i32 1
  %84 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part97, align 8, !tbaa !18
  %85 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom98 = sext i32 %85 to i64
  %86 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom99 = sext i32 %86 to i64
  %87 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %userSpectrum = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %87, i32 0, i32 9
  %arrayidx100 = getelementptr inbounds [2 x [2 x %struct.BF_BitstreamPart*]], [2 x [2 x %struct.BF_BitstreamPart*]]* %userSpectrum, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [2 x %struct.BF_BitstreamPart*], [2 x %struct.BF_BitstreamPart*]* %arrayidx100, i32 0, i64 %idxprom98
  store %struct.BF_BitstreamPart* %84, %struct.BF_BitstreamPart** %arrayidx101, align 8, !tbaa !5
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.65
  %88 = load i32, i32* %ch, align 4, !tbaa !1
  %inc103 = add nsw i32 %88, 1
  store i32 %inc103, i32* %ch, align 4, !tbaa !1
  br label %for.cond.62

for.end.104:                                      ; preds = %for.cond.62
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %89 = load i32, i32* %gr, align 4, !tbaa !1
  %inc106 = add nsw i32 %89, 1
  store i32 %inc106, i32* %gr, align 4, !tbaa !1
  br label %for.cond.58

for.end.107:                                      ; preds = %for.cond.58
  %90 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  %part108 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %90, i32 0, i32 1
  %91 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part108, align 8, !tbaa !18
  %92 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %userFrameData = getelementptr inbounds %struct.BF_FrameData, %struct.BF_FrameData* %92, i32 0, i32 10
  store %struct.BF_BitstreamPart* %91, %struct.BF_BitstreamPart** %userFrameData, align 8, !tbaa !22
  %93 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %94 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 8, !tbaa !5
  call void @BF_BitstreamFrame(%struct.BF_FrameData* %93, %struct.BF_FrameResults* %94)
  %95 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 8, !tbaa !5
  %nextBackPtr = getelementptr inbounds %struct.BF_FrameResults, %struct.BF_FrameResults* %95, i32 0, i32 2
  %96 = load i32, i32* %nextBackPtr, align 4, !tbaa !23
  %97 = load %struct.III_side_info_t*, %struct.III_side_info_t** %l3_side.addr, align 8, !tbaa !5
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %97, i32 0, i32 0
  store i32 %96, i32* %main_data_begin, align 4, !tbaa !25
  %98 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare %struct.BF_PartHolder* @BF_newPartHolder(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @encodeSideInfo(%struct.lame_global_flags* %gfp, %struct.III_side_info_t* %si) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %si.addr = alloca %struct.III_side_info_t*, align 8
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %scfsi_band = alloca i32, align 4
  %region = alloca i32, align 4
  %window = alloca i32, align 4
  %bits_sent = alloca i32, align 4
  %pph = alloca %struct.BF_PartHolder**, align 8
  %pph72 = alloca %struct.BF_PartHolder**, align 8
  %gi = alloca %struct.gr_info*, align 8
  %pph156 = alloca %struct.BF_PartHolder**, align 8
  %gi161 = alloca %struct.gr_info*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  store %struct.III_side_info_t* %si, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %0 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %scfsi_band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %region to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %bits_sent to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 65535, i32* @crc, align 4, !tbaa !1
  %6 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %6, i32 0, i32 1
  %7 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !18
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %7, i32 0, i32 0
  store i32 0, i32* %nrEntries, align 4, !tbaa !26
  %8 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %call = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %8, i32 4095, i32 12)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 43
  %11 = load i32, i32* %version, align 4, !tbaa !28
  %call1 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %9, i32 %11, i32 1)
  store %struct.BF_PartHolder* %call1, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %12 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %call2 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %12, i32 1, i32 2)
  store %struct.BF_PartHolder* %call2, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %14 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %error_protection = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %14, i32 0, i32 14
  %15 = load i32, i32* %error_protection, align 4, !tbaa !29
  %tobool = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %call3 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %13, i32 %lnot.ext, i32 1)
  store %struct.BF_PartHolder* %call3, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %16 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 50
  %18 = load i32, i32* %bitrate_index, align 4, !tbaa !30
  %call4 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %16, i32 %18, i32 4)
  store %struct.BF_PartHolder* %call4, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %19 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %20 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %20, i32 0, i32 51
  %21 = load i32, i32* %samplerate_index, align 4, !tbaa !31
  %call5 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %19, i32 %21, i32 2)
  store %struct.BF_PartHolder* %call5, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %22 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %23 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %padding = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %23, i32 0, i32 44
  %24 = load i32, i32* %padding, align 4, !tbaa !32
  %call6 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %22, i32 %24, i32 1)
  store %struct.BF_PartHolder* %call6, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %25 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %26 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %extension = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %26, i32 0, i32 16
  %27 = load i32, i32* %extension, align 4, !tbaa !33
  %call7 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %25, i32 %27, i32 1)
  store %struct.BF_PartHolder* %call7, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %28 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 8
  %30 = load i32, i32* %mode, align 4, !tbaa !34
  %call8 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %28, i32 %30, i32 2)
  store %struct.BF_PartHolder* %call8, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %31 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %32 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %32, i32 0, i32 52
  %33 = load i32, i32* %mode_ext, align 4, !tbaa !35
  %call9 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %31, i32 %33, i32 2)
  store %struct.BF_PartHolder* %call9, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %34 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %35 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %copyright = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %35, i32 0, i32 12
  %36 = load i32, i32* %copyright, align 4, !tbaa !36
  %call10 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %34, i32 %36, i32 1)
  store %struct.BF_PartHolder* %call10, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %37 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %38 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %original = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %38, i32 0, i32 13
  %39 = load i32, i32* %original, align 4, !tbaa !37
  %call11 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %37, i32 %39, i32 1)
  store %struct.BF_PartHolder* %call11, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %40 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %41 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %emphasis = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %41, i32 0, i32 38
  %42 = load i32, i32* %emphasis, align 4, !tbaa !38
  %call12 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %40, i32 %42, i32 2)
  store %struct.BF_PartHolder* %call12, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  store i32 32, i32* %bits_sent, align 4, !tbaa !1
  %43 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %part13 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %43, i32 0, i32 1
  %44 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part13, align 8, !tbaa !18
  %nrEntries14 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %44, i32 0, i32 0
  store i32 0, i32* %nrEntries14, align 4, !tbaa !26
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %45 = load i32, i32* %ch, align 4, !tbaa !1
  %46 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %46, i32 0, i32 46
  %47 = load i32, i32* %stereo, align 4, !tbaa !16
  %cmp = icmp slt i32 %45, %47
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i64 %idxprom
  %49 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx, align 8, !tbaa !5
  %part15 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %49, i32 0, i32 1
  %50 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part15, align 8, !tbaa !18
  %nrEntries16 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %50, i32 0, i32 0
  store i32 0, i32* %nrEntries16, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.33, %for.end
  %52 = load i32, i32* %gr, align 4, !tbaa !1
  %53 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %53, i32 0, i32 45
  %54 = load i32, i32* %mode_gr, align 4, !tbaa !11
  %cmp18 = icmp slt i32 %52, %54
  br i1 %cmp18, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.30, %for.body.19
  %55 = load i32, i32* %ch, align 4, !tbaa !1
  %56 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo21 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %56, i32 0, i32 46
  %57 = load i32, i32* %stereo21, align 4, !tbaa !16
  %cmp22 = icmp slt i32 %55, %57
  br i1 %cmp22, label %for.body.23, label %for.end.32

for.body.23:                                      ; preds = %for.cond.20
  %58 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom24 = sext i32 %58 to i64
  %59 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom25 = sext i32 %59 to i64
  %arrayidx26 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx26, i32 0, i64 %idxprom24
  %60 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx27, align 8, !tbaa !5
  %part28 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %60, i32 0, i32 1
  %61 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part28, align 8, !tbaa !18
  %nrEntries29 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %61, i32 0, i32 0
  store i32 0, i32* %nrEntries29, align 4, !tbaa !26
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.23
  %62 = load i32, i32* %ch, align 4, !tbaa !1
  %inc31 = add nsw i32 %62, 1
  store i32 %inc31, i32* %ch, align 4, !tbaa !1
  br label %for.cond.20

for.end.32:                                       ; preds = %for.cond.20
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %63 = load i32, i32* %gr, align 4, !tbaa !1
  %inc34 = add nsw i32 %63, 1
  store i32 %inc34, i32* %gr, align 4, !tbaa !1
  br label %for.cond.17

for.end.35:                                       ; preds = %for.cond.17
  %64 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %version36 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %64, i32 0, i32 43
  %65 = load i32, i32* %version36, align 4, !tbaa !28
  %cmp37 = icmp eq i32 %65, 1
  br i1 %cmp37, label %if.then, label %if.else.140

if.then:                                          ; preds = %for.end.35
  %66 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %67 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %67, i32 0, i32 0
  %68 = load i32, i32* %main_data_begin, align 4, !tbaa !25
  %call38 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %66, i32 %68, i32 9)
  store %struct.BF_PartHolder* %call38, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %69 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo39 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %69, i32 0, i32 46
  %70 = load i32, i32* %stereo39, align 4, !tbaa !16
  %cmp40 = icmp eq i32 %70, 2
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then
  %71 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %72 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %private_bits = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %72, i32 0, i32 1
  %73 = load i32, i32* %private_bits, align 4, !tbaa !39
  %call42 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %71, i32 %73, i32 3)
  store %struct.BF_PartHolder* %call42, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %74 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %75 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %private_bits43 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %75, i32 0, i32 1
  %76 = load i32, i32* %private_bits43, align 4, !tbaa !39
  %call44 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %74, i32 %76, i32 5)
  store %struct.BF_PartHolder* %call44, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.41
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.62, %if.end
  %77 = load i32, i32* %ch, align 4, !tbaa !1
  %78 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo46 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %78, i32 0, i32 46
  %79 = load i32, i32* %stereo46, align 4, !tbaa !16
  %cmp47 = icmp slt i32 %77, %79
  br i1 %cmp47, label %for.body.48, label %for.end.64

for.body.48:                                      ; preds = %for.cond.45
  store i32 0, i32* %scfsi_band, align 4, !tbaa !1
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.59, %for.body.48
  %80 = load i32, i32* %scfsi_band, align 4, !tbaa !1
  %cmp50 = icmp slt i32 %80, 4
  br i1 %cmp50, label %for.body.51, label %for.end.61

for.body.51:                                      ; preds = %for.cond.49
  %81 = bitcast %struct.BF_PartHolder*** %pph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom52 = sext i32 %82 to i64
  %arrayidx53 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* @channelSIPH, i32 0, i64 %idxprom52
  store %struct.BF_PartHolder** %arrayidx53, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %83 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %84 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %83, align 8, !tbaa !5
  %85 = load i32, i32* %scfsi_band, align 4, !tbaa !1
  %idxprom54 = sext i32 %85 to i64
  %86 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom55 = sext i32 %86 to i64
  %87 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %scfsi = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %87, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi, i32 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx56, i32 0, i64 %idxprom54
  %88 = load i32, i32* %arrayidx57, align 4, !tbaa !1
  %call58 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %84, i32 %88, i32 1)
  %89 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call58, %struct.BF_PartHolder** %89, align 8, !tbaa !5
  %90 = bitcast %struct.BF_PartHolder*** %pph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.51
  %91 = load i32, i32* %scfsi_band, align 4, !tbaa !1
  %inc60 = add nsw i32 %91, 1
  store i32 %inc60, i32* %scfsi_band, align 4, !tbaa !1
  br label %for.cond.49

for.end.61:                                       ; preds = %for.cond.49
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %92 = load i32, i32* %ch, align 4, !tbaa !1
  %inc63 = add nsw i32 %92, 1
  store i32 %inc63, i32* %ch, align 4, !tbaa !1
  br label %for.cond.45

for.end.64:                                       ; preds = %for.cond.45
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.131, %for.end.64
  %93 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp66 = icmp slt i32 %93, 2
  br i1 %cmp66, label %for.body.67, label %for.end.133

for.body.67:                                      ; preds = %for.cond.65
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.128, %for.body.67
  %94 = load i32, i32* %ch, align 4, !tbaa !1
  %95 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo69 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %95, i32 0, i32 46
  %96 = load i32, i32* %stereo69, align 4, !tbaa !16
  %cmp70 = icmp slt i32 %94, %96
  br i1 %cmp70, label %for.body.71, label %for.end.130

for.body.71:                                      ; preds = %for.cond.68
  %97 = bitcast %struct.BF_PartHolder*** %pph72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  %98 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom73 = sext i32 %98 to i64
  %99 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom74 = sext i32 %99 to i64
  %arrayidx75 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx75, i32 0, i64 %idxprom73
  store %struct.BF_PartHolder** %arrayidx76, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %100 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #2
  %101 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom77 = sext i32 %101 to i64
  %102 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom78 = sext i32 %102 to i64
  %103 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %gr79 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %103, i32 0, i32 4
  %arrayidx80 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr79, i32 0, i64 %idxprom78
  %ch81 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch81, i32 0, i64 %idxprom77
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx82, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %gi, align 8, !tbaa !5
  %104 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %105 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %104, align 8, !tbaa !5
  %106 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %106, i32 0, i32 0
  %107 = load i32, i32* %part2_3_length, align 4, !tbaa !40
  %call83 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %105, i32 %107, i32 12)
  %108 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call83, %struct.BF_PartHolder** %108, align 8, !tbaa !5
  %109 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %110 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %109, align 8, !tbaa !5
  %111 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %111, i32 0, i32 1
  %112 = load i32, i32* %big_values, align 4, !tbaa !42
  %call84 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %110, i32 %112, i32 9)
  %113 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call84, %struct.BF_PartHolder** %113, align 8, !tbaa !5
  %114 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %115 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %114, align 8, !tbaa !5
  %116 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %global_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %116, i32 0, i32 3
  %117 = load i32, i32* %global_gain, align 4, !tbaa !43
  %call85 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %115, i32 %117, i32 8)
  %118 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call85, %struct.BF_PartHolder** %118, align 8, !tbaa !5
  %119 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %120 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %119, align 8, !tbaa !5
  %121 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %121, i32 0, i32 4
  %122 = load i32, i32* %scalefac_compress, align 4, !tbaa !44
  %call86 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %120, i32 %122, i32 4)
  %123 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call86, %struct.BF_PartHolder** %123, align 8, !tbaa !5
  %124 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %125 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %124, align 8, !tbaa !5
  %126 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %window_switching_flag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %126, i32 0, i32 5
  %127 = load i32, i32* %window_switching_flag, align 4, !tbaa !45
  %call87 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %125, i32 %127, i32 1)
  %128 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call87, %struct.BF_PartHolder** %128, align 8, !tbaa !5
  %129 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %window_switching_flag88 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %129, i32 0, i32 5
  %130 = load i32, i32* %window_switching_flag88, align 4, !tbaa !45
  %tobool89 = icmp ne i32 %130, 0
  br i1 %tobool89, label %if.then.90, label %if.else.111

if.then.90:                                       ; preds = %for.body.71
  %131 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %132 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %131, align 8, !tbaa !5
  %133 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %133, i32 0, i32 6
  %134 = load i32, i32* %block_type, align 4, !tbaa !46
  %call91 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %132, i32 %134, i32 2)
  %135 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call91, %struct.BF_PartHolder** %135, align 8, !tbaa !5
  %136 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %137 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %136, align 8, !tbaa !5
  %138 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %138, i32 0, i32 7
  %139 = load i32, i32* %mixed_block_flag, align 4, !tbaa !47
  %call92 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %137, i32 %139, i32 1)
  %140 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call92, %struct.BF_PartHolder** %140, align 8, !tbaa !5
  store i32 0, i32* %region, align 4, !tbaa !1
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.99, %if.then.90
  %141 = load i32, i32* %region, align 4, !tbaa !1
  %cmp94 = icmp slt i32 %141, 2
  br i1 %cmp94, label %for.body.95, label %for.end.101

for.body.95:                                      ; preds = %for.cond.93
  %142 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %143 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %142, align 8, !tbaa !5
  %144 = load i32, i32* %region, align 4, !tbaa !1
  %idxprom96 = sext i32 %144 to i64
  %145 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %145, i32 0, i32 8
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 %idxprom96
  %146 = load i32, i32* %arrayidx97, align 4, !tbaa !1
  %call98 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %143, i32 %146, i32 5)
  %147 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call98, %struct.BF_PartHolder** %147, align 8, !tbaa !5
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.95
  %148 = load i32, i32* %region, align 4, !tbaa !1
  %inc100 = add nsw i32 %148, 1
  store i32 %inc100, i32* %region, align 4, !tbaa !1
  br label %for.cond.93

for.end.101:                                      ; preds = %for.cond.93
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.108, %for.end.101
  %149 = load i32, i32* %window, align 4, !tbaa !1
  %cmp103 = icmp slt i32 %149, 3
  br i1 %cmp103, label %for.body.104, label %for.end.110

for.body.104:                                     ; preds = %for.cond.102
  %150 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %151 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %150, align 8, !tbaa !5
  %152 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom105 = sext i32 %152 to i64
  %153 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %subblock_gain = getelementptr inbounds %struct.gr_info, %struct.gr_info* %153, i32 0, i32 9
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain, i32 0, i64 %idxprom105
  %154 = load i32, i32* %arrayidx106, align 4, !tbaa !1
  %call107 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %151, i32 %154, i32 3)
  %155 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call107, %struct.BF_PartHolder** %155, align 8, !tbaa !5
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.104
  %156 = load i32, i32* %window, align 4, !tbaa !1
  %inc109 = add nsw i32 %156, 1
  store i32 %inc109, i32* %window, align 4, !tbaa !1
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  br label %if.end.124

if.else.111:                                      ; preds = %for.body.71
  store i32 0, i32* %region, align 4, !tbaa !1
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.119, %if.else.111
  %157 = load i32, i32* %region, align 4, !tbaa !1
  %cmp113 = icmp slt i32 %157, 3
  br i1 %cmp113, label %for.body.114, label %for.end.121

for.body.114:                                     ; preds = %for.cond.112
  %158 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %159 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %158, align 8, !tbaa !5
  %160 = load i32, i32* %region, align 4, !tbaa !1
  %idxprom115 = sext i32 %160 to i64
  %161 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %table_select116 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %161, i32 0, i32 8
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select116, i32 0, i64 %idxprom115
  %162 = load i32, i32* %arrayidx117, align 4, !tbaa !1
  %call118 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %159, i32 %162, i32 5)
  %163 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call118, %struct.BF_PartHolder** %163, align 8, !tbaa !5
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.114
  %164 = load i32, i32* %region, align 4, !tbaa !1
  %inc120 = add nsw i32 %164, 1
  store i32 %inc120, i32* %region, align 4, !tbaa !1
  br label %for.cond.112

for.end.121:                                      ; preds = %for.cond.112
  %165 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %166 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %165, align 8, !tbaa !5
  %167 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %region0_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %167, i32 0, i32 10
  %168 = load i32, i32* %region0_count, align 4, !tbaa !48
  %call122 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %166, i32 %168, i32 4)
  %169 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call122, %struct.BF_PartHolder** %169, align 8, !tbaa !5
  %170 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %171 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %170, align 8, !tbaa !5
  %172 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %region1_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %172, i32 0, i32 11
  %173 = load i32, i32* %region1_count, align 4, !tbaa !49
  %call123 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %171, i32 %173, i32 3)
  %174 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call123, %struct.BF_PartHolder** %174, align 8, !tbaa !5
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.121, %for.end.110
  %175 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %176 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %175, align 8, !tbaa !5
  %177 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %preflag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %177, i32 0, i32 12
  %178 = load i32, i32* %preflag, align 4, !tbaa !50
  %call125 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %176, i32 %178, i32 1)
  %179 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call125, %struct.BF_PartHolder** %179, align 8, !tbaa !5
  %180 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %181 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %180, align 8, !tbaa !5
  %182 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %scalefac_scale = getelementptr inbounds %struct.gr_info, %struct.gr_info* %182, i32 0, i32 13
  %183 = load i32, i32* %scalefac_scale, align 4, !tbaa !51
  %call126 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %181, i32 %183, i32 1)
  %184 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call126, %struct.BF_PartHolder** %184, align 8, !tbaa !5
  %185 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  %186 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %185, align 8, !tbaa !5
  %187 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %count1table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %187, i32 0, i32 14
  %188 = load i32, i32* %count1table_select, align 4, !tbaa !52
  %call127 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %186, i32 %188, i32 1)
  %189 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph72, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call127, %struct.BF_PartHolder** %189, align 8, !tbaa !5
  %190 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #2
  %191 = bitcast %struct.BF_PartHolder*** %pph72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.124
  %192 = load i32, i32* %ch, align 4, !tbaa !1
  %inc129 = add nsw i32 %192, 1
  store i32 %inc129, i32* %ch, align 4, !tbaa !1
  br label %for.cond.68

for.end.130:                                      ; preds = %for.cond.68
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %193 = load i32, i32* %gr, align 4, !tbaa !1
  %inc132 = add nsw i32 %193, 1
  store i32 %inc132, i32* %gr, align 4, !tbaa !1
  br label %for.cond.65

for.end.133:                                      ; preds = %for.cond.65
  %194 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo134 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %194, i32 0, i32 46
  %195 = load i32, i32* %stereo134, align 4, !tbaa !16
  %cmp135 = icmp eq i32 %195, 2
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %for.end.133
  %196 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %add = add nsw i32 %196, 256
  store i32 %add, i32* %bits_sent, align 4, !tbaa !1
  br label %if.end.139

if.else.137:                                      ; preds = %for.end.133
  %197 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %add138 = add nsw i32 %197, 136
  store i32 %add138, i32* %bits_sent, align 4, !tbaa !1
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.136
  br label %if.end.236

if.else.140:                                      ; preds = %for.end.35
  %198 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %199 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %main_data_begin141 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %199, i32 0, i32 0
  %200 = load i32, i32* %main_data_begin141, align 4, !tbaa !25
  %call142 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %198, i32 %200, i32 8)
  store %struct.BF_PartHolder* %call142, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %201 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo143 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %201, i32 0, i32 46
  %202 = load i32, i32* %stereo143, align 4, !tbaa !16
  %cmp144 = icmp eq i32 %202, 2
  br i1 %cmp144, label %if.then.145, label %if.else.148

if.then.145:                                      ; preds = %if.else.140
  %203 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %204 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %private_bits146 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %204, i32 0, i32 1
  %205 = load i32, i32* %private_bits146, align 4, !tbaa !39
  %call147 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %203, i32 %205, i32 2)
  store %struct.BF_PartHolder* %call147, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  br label %if.end.151

if.else.148:                                      ; preds = %if.else.140
  %206 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  %207 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %private_bits149 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %207, i32 0, i32 1
  %208 = load i32, i32* %private_bits149, align 4, !tbaa !39
  %call150 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %206, i32 %208, i32 1)
  store %struct.BF_PartHolder* %call150, %struct.BF_PartHolder** @frameSIPH, align 8, !tbaa !5
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.145
  store i32 0, i32* %gr, align 4, !tbaa !1
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.226, %if.end.151
  %209 = load i32, i32* %ch, align 4, !tbaa !1
  %210 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo153 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %210, i32 0, i32 46
  %211 = load i32, i32* %stereo153, align 4, !tbaa !16
  %cmp154 = icmp slt i32 %209, %211
  br i1 %cmp154, label %for.body.155, label %for.end.228

for.body.155:                                     ; preds = %for.cond.152
  %212 = bitcast %struct.BF_PartHolder*** %pph156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #2
  %213 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom157 = sext i32 %213 to i64
  %214 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom158 = sext i32 %214 to i64
  %arrayidx159 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @spectrumSIPH, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx159, i32 0, i64 %idxprom157
  store %struct.BF_PartHolder** %arrayidx160, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %215 = bitcast %struct.gr_info** %gi161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #2
  %216 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom162 = sext i32 %216 to i64
  %217 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom163 = sext i32 %217 to i64
  %218 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %gr164 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %218, i32 0, i32 4
  %arrayidx165 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr164, i32 0, i64 %idxprom163
  %ch166 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch166, i32 0, i64 %idxprom162
  %tt168 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx167, i32 0, i32 0
  store %struct.gr_info* %tt168, %struct.gr_info** %gi161, align 8, !tbaa !5
  %219 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %220 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %219, align 8, !tbaa !5
  %221 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %part2_3_length169 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %221, i32 0, i32 0
  %222 = load i32, i32* %part2_3_length169, align 4, !tbaa !40
  %call170 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %220, i32 %222, i32 12)
  %223 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call170, %struct.BF_PartHolder** %223, align 8, !tbaa !5
  %224 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %225 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %224, align 8, !tbaa !5
  %226 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %big_values171 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %226, i32 0, i32 1
  %227 = load i32, i32* %big_values171, align 4, !tbaa !42
  %call172 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %225, i32 %227, i32 9)
  %228 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call172, %struct.BF_PartHolder** %228, align 8, !tbaa !5
  %229 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %230 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %229, align 8, !tbaa !5
  %231 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %global_gain173 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %231, i32 0, i32 3
  %232 = load i32, i32* %global_gain173, align 4, !tbaa !43
  %call174 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %230, i32 %232, i32 8)
  %233 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call174, %struct.BF_PartHolder** %233, align 8, !tbaa !5
  %234 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %235 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %234, align 8, !tbaa !5
  %236 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %scalefac_compress175 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %236, i32 0, i32 4
  %237 = load i32, i32* %scalefac_compress175, align 4, !tbaa !44
  %call176 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %235, i32 %237, i32 9)
  %238 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call176, %struct.BF_PartHolder** %238, align 8, !tbaa !5
  %239 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %240 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %239, align 8, !tbaa !5
  %241 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %window_switching_flag177 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %241, i32 0, i32 5
  %242 = load i32, i32* %window_switching_flag177, align 4, !tbaa !45
  %call178 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %240, i32 %242, i32 1)
  %243 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call178, %struct.BF_PartHolder** %243, align 8, !tbaa !5
  %244 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %window_switching_flag179 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %244, i32 0, i32 5
  %245 = load i32, i32* %window_switching_flag179, align 4, !tbaa !45
  %tobool180 = icmp ne i32 %245, 0
  br i1 %tobool180, label %if.then.181, label %if.else.206

if.then.181:                                      ; preds = %for.body.155
  %246 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %247 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %246, align 8, !tbaa !5
  %248 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %block_type182 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %248, i32 0, i32 6
  %249 = load i32, i32* %block_type182, align 4, !tbaa !46
  %call183 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %247, i32 %249, i32 2)
  %250 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call183, %struct.BF_PartHolder** %250, align 8, !tbaa !5
  %251 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %252 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %251, align 8, !tbaa !5
  %253 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %mixed_block_flag184 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %253, i32 0, i32 7
  %254 = load i32, i32* %mixed_block_flag184, align 4, !tbaa !47
  %call185 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %252, i32 %254, i32 1)
  %255 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call185, %struct.BF_PartHolder** %255, align 8, !tbaa !5
  store i32 0, i32* %region, align 4, !tbaa !1
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.193, %if.then.181
  %256 = load i32, i32* %region, align 4, !tbaa !1
  %cmp187 = icmp slt i32 %256, 2
  br i1 %cmp187, label %for.body.188, label %for.end.195

for.body.188:                                     ; preds = %for.cond.186
  %257 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %258 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %257, align 8, !tbaa !5
  %259 = load i32, i32* %region, align 4, !tbaa !1
  %idxprom189 = sext i32 %259 to i64
  %260 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %table_select190 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %260, i32 0, i32 8
  %arrayidx191 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select190, i32 0, i64 %idxprom189
  %261 = load i32, i32* %arrayidx191, align 4, !tbaa !1
  %call192 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %258, i32 %261, i32 5)
  %262 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call192, %struct.BF_PartHolder** %262, align 8, !tbaa !5
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.188
  %263 = load i32, i32* %region, align 4, !tbaa !1
  %inc194 = add nsw i32 %263, 1
  store i32 %inc194, i32* %region, align 4, !tbaa !1
  br label %for.cond.186

for.end.195:                                      ; preds = %for.cond.186
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.203, %for.end.195
  %264 = load i32, i32* %window, align 4, !tbaa !1
  %cmp197 = icmp slt i32 %264, 3
  br i1 %cmp197, label %for.body.198, label %for.end.205

for.body.198:                                     ; preds = %for.cond.196
  %265 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %266 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %265, align 8, !tbaa !5
  %267 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom199 = sext i32 %267 to i64
  %268 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %subblock_gain200 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %268, i32 0, i32 9
  %arrayidx201 = getelementptr inbounds [3 x i32], [3 x i32]* %subblock_gain200, i32 0, i64 %idxprom199
  %269 = load i32, i32* %arrayidx201, align 4, !tbaa !1
  %call202 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %266, i32 %269, i32 3)
  %270 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call202, %struct.BF_PartHolder** %270, align 8, !tbaa !5
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.198
  %271 = load i32, i32* %window, align 4, !tbaa !1
  %inc204 = add nsw i32 %271, 1
  store i32 %inc204, i32* %window, align 4, !tbaa !1
  br label %for.cond.196

for.end.205:                                      ; preds = %for.cond.196
  br label %if.end.221

if.else.206:                                      ; preds = %for.body.155
  store i32 0, i32* %region, align 4, !tbaa !1
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.214, %if.else.206
  %272 = load i32, i32* %region, align 4, !tbaa !1
  %cmp208 = icmp slt i32 %272, 3
  br i1 %cmp208, label %for.body.209, label %for.end.216

for.body.209:                                     ; preds = %for.cond.207
  %273 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %274 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %273, align 8, !tbaa !5
  %275 = load i32, i32* %region, align 4, !tbaa !1
  %idxprom210 = sext i32 %275 to i64
  %276 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %table_select211 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %276, i32 0, i32 8
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select211, i32 0, i64 %idxprom210
  %277 = load i32, i32* %arrayidx212, align 4, !tbaa !1
  %call213 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %274, i32 %277, i32 5)
  %278 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call213, %struct.BF_PartHolder** %278, align 8, !tbaa !5
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.209
  %279 = load i32, i32* %region, align 4, !tbaa !1
  %inc215 = add nsw i32 %279, 1
  store i32 %inc215, i32* %region, align 4, !tbaa !1
  br label %for.cond.207

for.end.216:                                      ; preds = %for.cond.207
  %280 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %281 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %280, align 8, !tbaa !5
  %282 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %region0_count217 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %282, i32 0, i32 10
  %283 = load i32, i32* %region0_count217, align 4, !tbaa !48
  %call218 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %281, i32 %283, i32 4)
  %284 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call218, %struct.BF_PartHolder** %284, align 8, !tbaa !5
  %285 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %286 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %285, align 8, !tbaa !5
  %287 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %region1_count219 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %287, i32 0, i32 11
  %288 = load i32, i32* %region1_count219, align 4, !tbaa !49
  %call220 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %286, i32 %288, i32 3)
  %289 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call220, %struct.BF_PartHolder** %289, align 8, !tbaa !5
  br label %if.end.221

if.end.221:                                       ; preds = %for.end.216, %for.end.205
  %290 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %291 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %290, align 8, !tbaa !5
  %292 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %scalefac_scale222 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %292, i32 0, i32 13
  %293 = load i32, i32* %scalefac_scale222, align 4, !tbaa !51
  %call223 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %291, i32 %293, i32 1)
  %294 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call223, %struct.BF_PartHolder** %294, align 8, !tbaa !5
  %295 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  %296 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %295, align 8, !tbaa !5
  %297 = load %struct.gr_info*, %struct.gr_info** %gi161, align 8, !tbaa !5
  %count1table_select224 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %297, i32 0, i32 14
  %298 = load i32, i32* %count1table_select224, align 4, !tbaa !52
  %call225 = call %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %296, i32 %298, i32 1)
  %299 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph156, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call225, %struct.BF_PartHolder** %299, align 8, !tbaa !5
  %300 = bitcast %struct.gr_info** %gi161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #2
  %301 = bitcast %struct.BF_PartHolder*** %pph156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  br label %for.inc.226

for.inc.226:                                      ; preds = %if.end.221
  %302 = load i32, i32* %ch, align 4, !tbaa !1
  %inc227 = add nsw i32 %302, 1
  store i32 %inc227, i32* %ch, align 4, !tbaa !1
  br label %for.cond.152

for.end.228:                                      ; preds = %for.cond.152
  %303 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo229 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %303, i32 0, i32 46
  %304 = load i32, i32* %stereo229, align 4, !tbaa !16
  %cmp230 = icmp eq i32 %304, 2
  br i1 %cmp230, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %for.end.228
  %305 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %add232 = add nsw i32 %305, 136
  store i32 %add232, i32* %bits_sent, align 4, !tbaa !1
  br label %if.end.235

if.else.233:                                      ; preds = %for.end.228
  %306 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %add234 = add nsw i32 %306, 72
  store i32 %add234, i32* %bits_sent, align 4, !tbaa !1
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.233, %if.then.231
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.139
  %307 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %error_protection237 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %307, i32 0, i32 14
  %308 = load i32, i32* %error_protection237, align 4, !tbaa !29
  %tobool238 = icmp ne i32 %308, 0
  br i1 %tobool238, label %if.then.239, label %if.end.242

if.then.239:                                      ; preds = %if.end.236
  %309 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %310 = load i32, i32* @crc, align 4, !tbaa !1
  %call240 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %309, i32 %310, i32 16)
  store %struct.BF_PartHolder* %call240, %struct.BF_PartHolder** @headerPH, align 8, !tbaa !5
  %311 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %add241 = add nsw i32 %311, 16
  store i32 %add241, i32* %bits_sent, align 4, !tbaa !1
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.239, %if.end.236
  %312 = load i32, i32* %bits_sent, align 4, !tbaa !1
  %313 = bitcast i32* %bits_sent to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #2
  %314 = bitcast i32* %window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #2
  %315 = bitcast i32* %region to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %scfsi_band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  ret i32 %312
}

; Function Attrs: nounwind uwtable
define internal void @encodeMainData(%struct.lame_global_flags* %gfp, [2 x [576 x i32]]* %l3_enc, %struct.III_side_info_t* %si, [2 x %struct.III_scalefac_t]* %scalefac) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %l3_enc.addr = alloca [2 x [576 x i32]]*, align 8
  %si.addr = alloca %struct.III_side_info_t*, align 8
  %scalefac.addr = alloca [2 x %struct.III_scalefac_t]*, align 8
  %i = alloca i32, align 4
  %gr = alloca i32, align 4
  %ch = alloca i32, align 4
  %sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %pph = alloca %struct.BF_PartHolder**, align 8
  %gi = alloca %struct.gr_info*, align 8
  %slen1 = alloca i32, align 4
  %slen2 = alloca i32, align 4
  %ix = alloca i32*, align 8
  %pph205 = alloca %struct.BF_PartHolder**, align 8
  %gi210 = alloca %struct.gr_info*, align 8
  %ix218 = alloca i32*, align 8
  %sfb_partition = alloca i32, align 4
  %sfbs = alloca i32, align 4
  %slen = alloca i32, align 4
  %sfbs265 = alloca i32, align 4
  %slen269 = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  store [2 x [576 x i32]]* %l3_enc, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !5
  store %struct.III_side_info_t* %si, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  store [2 x %struct.III_scalefac_t]* %scalefac, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %5 = load i32, i32* %gr, align 4, !tbaa !1
  %6 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %6, i32 0, i32 45
  %7 = load i32, i32* %mode_gr, align 4, !tbaa !11
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %ch, align 4, !tbaa !1
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 46
  %10 = load i32, i32* %stereo, align 4, !tbaa !16
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom = sext i32 %11 to i64
  %12 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom4 = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx, i32 0, i64 %idxprom
  %13 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx5, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %13, i32 0, i32 1
  %14 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !18
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %14, i32 0, i32 0
  store i32 0, i32* %nrEntries, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %15 = load i32, i32* %ch, align 4, !tbaa !1
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ch, align 4, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %16 = load i32, i32* %gr, align 4, !tbaa !1
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %gr, align 4, !tbaa !1
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.26, %for.end.8
  %17 = load i32, i32* %gr, align 4, !tbaa !1
  %18 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %mode_gr10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %18, i32 0, i32 45
  %19 = load i32, i32* %mode_gr10, align 4, !tbaa !11
  %cmp11 = icmp slt i32 %17, %19
  br i1 %cmp11, label %for.body.12, label %for.end.28

for.body.12:                                      ; preds = %for.cond.9
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.body.12
  %20 = load i32, i32* %ch, align 4, !tbaa !1
  %21 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo14 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %21, i32 0, i32 46
  %22 = load i32, i32* %stereo14, align 4, !tbaa !16
  %cmp15 = icmp slt i32 %20, %22
  br i1 %cmp15, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.13
  %23 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom17 = sext i32 %23 to i64
  %24 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx19, i32 0, i64 %idxprom17
  %25 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %arrayidx20, align 8, !tbaa !5
  %part21 = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %25, i32 0, i32 1
  %26 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part21, align 8, !tbaa !18
  %nrEntries22 = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %26, i32 0, i32 0
  store i32 0, i32* %nrEntries22, align 4, !tbaa !26
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.16
  %27 = load i32, i32* %ch, align 4, !tbaa !1
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %ch, align 4, !tbaa !1
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %28 = load i32, i32* %gr, align 4, !tbaa !1
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %gr, align 4, !tbaa !1
  br label %for.cond.9

for.end.28:                                       ; preds = %for.cond.9
  %29 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %version = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %29, i32 0, i32 43
  %30 = load i32, i32* %version, align 4, !tbaa !28
  %cmp29 = icmp eq i32 %30, 1
  br i1 %cmp29, label %if.then, label %if.else.200

if.then:                                          ; preds = %for.end.28
  store i32 0, i32* %gr, align 4, !tbaa !1
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.197, %if.then
  %31 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp31 = icmp slt i32 %31, 2
  br i1 %cmp31, label %for.body.32, label %for.end.199

for.body.32:                                      ; preds = %for.cond.30
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.194, %for.body.32
  %32 = load i32, i32* %ch, align 4, !tbaa !1
  %33 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo34 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %33, i32 0, i32 46
  %34 = load i32, i32* %stereo34, align 4, !tbaa !16
  %cmp35 = icmp slt i32 %32, %34
  br i1 %cmp35, label %for.body.36, label %for.end.196

for.body.36:                                      ; preds = %for.cond.33
  %35 = bitcast %struct.BF_PartHolder*** %pph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #2
  %36 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom37 = sext i32 %36 to i64
  %37 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx39, i32 0, i64 %idxprom37
  store %struct.BF_PartHolder** %arrayidx40, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %38 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #2
  %39 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom41 = sext i32 %39 to i64
  %40 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom42 = sext i32 %40 to i64
  %41 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %gr43 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %41, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr43, i32 0, i64 %idxprom42
  %ch45 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch45, i32 0, i64 %idxprom41
  %tt = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx46, i32 0, i32 0
  store %struct.gr_info* %tt, %struct.gr_info** %gi, align 8, !tbaa !5
  %42 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %scalefac_compress = getelementptr inbounds %struct.gr_info, %struct.gr_info* %43, i32 0, i32 4
  %44 = load i32, i32* %scalefac_compress, align 4, !tbaa !44
  %idxprom47 = zext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds [16 x i32], [16 x i32]* @slen1_tab, i32 0, i64 %idxprom47
  %45 = load i32, i32* %arrayidx48, align 4, !tbaa !1
  store i32 %45, i32* %slen1, align 4, !tbaa !1
  %46 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %scalefac_compress49 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %47, i32 0, i32 4
  %48 = load i32, i32* %scalefac_compress49, align 4, !tbaa !44
  %idxprom50 = zext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [16 x i32], [16 x i32]* @slen2_tab, i32 0, i64 %idxprom50
  %49 = load i32, i32* %arrayidx51, align 4, !tbaa !1
  store i32 %49, i32* %slen2, align 4, !tbaa !1
  %50 = bitcast i32** %ix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom52 = sext i32 %51 to i64
  %52 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom53 = sext i32 %52 to i64
  %53 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !5
  %arrayidx54 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %53, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx54, i32 0, i64 %idxprom52
  %arrayidx56 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx55, i32 0, i64 0
  store i32* %arrayidx56, i32** %ix, align 8, !tbaa !5
  %54 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %54, i32 0, i32 6
  %55 = load i32, i32* %block_type, align 4, !tbaa !46
  %cmp57 = icmp eq i32 %55, 2
  br i1 %cmp57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %for.body.36
  store i32 0, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.76, %if.then.58
  %56 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp60 = icmp slt i32 %56, 6
  br i1 %cmp60, label %for.body.61, label %for.end.78

for.body.61:                                      ; preds = %for.cond.59
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.73, %for.body.61
  %57 = load i32, i32* %window, align 4, !tbaa !1
  %cmp63 = icmp slt i32 %57, 3
  br i1 %cmp63, label %for.body.64, label %for.end.75

for.body.64:                                      ; preds = %for.cond.62
  %58 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %59 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %58, align 8, !tbaa !5
  %60 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom65 = sext i32 %60 to i64
  %61 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom66 = sext i32 %61 to i64
  %62 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom67 = sext i32 %62 to i64
  %63 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom68 = sext i32 %63 to i64
  %64 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx69 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %64, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx69, i32 0, i64 %idxprom67
  %s = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx70, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s, i32 0, i64 %idxprom66
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx71, i32 0, i64 %idxprom65
  %65 = load i32, i32* %arrayidx72, align 4, !tbaa !1
  %66 = load i32, i32* %slen1, align 4, !tbaa !1
  %call = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %59, i32 %65, i32 %66)
  %67 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** %67, align 8, !tbaa !5
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.64
  %68 = load i32, i32* %window, align 4, !tbaa !1
  %inc74 = add nsw i32 %68, 1
  store i32 %inc74, i32* %window, align 4, !tbaa !1
  br label %for.cond.62

for.end.75:                                       ; preds = %for.cond.62
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %69 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc77 = add nsw i32 %69, 1
  store i32 %inc77, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.59

for.end.78:                                       ; preds = %for.cond.59
  store i32 6, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.98, %for.end.78
  %70 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp80 = icmp slt i32 %70, 12
  br i1 %cmp80, label %for.body.81, label %for.end.100

for.body.81:                                      ; preds = %for.cond.79
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.95, %for.body.81
  %71 = load i32, i32* %window, align 4, !tbaa !1
  %cmp83 = icmp slt i32 %71, 3
  br i1 %cmp83, label %for.body.84, label %for.end.97

for.body.84:                                      ; preds = %for.cond.82
  %72 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %73 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %72, align 8, !tbaa !5
  %74 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom85 = sext i32 %74 to i64
  %75 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom86 = sext i32 %75 to i64
  %76 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom87 = sext i32 %76 to i64
  %77 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom88 = sext i32 %77 to i64
  %78 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx89 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %78, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx89, i32 0, i64 %idxprom87
  %s91 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx90, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s91, i32 0, i64 %idxprom86
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx92, i32 0, i64 %idxprom85
  %79 = load i32, i32* %arrayidx93, align 4, !tbaa !1
  %80 = load i32, i32* %slen2, align 4, !tbaa !1
  %call94 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %73, i32 %79, i32 %80)
  %81 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call94, %struct.BF_PartHolder** %81, align 8, !tbaa !5
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.84
  %82 = load i32, i32* %window, align 4, !tbaa !1
  %inc96 = add nsw i32 %82, 1
  store i32 %inc96, i32* %window, align 4, !tbaa !1
  br label %for.cond.82

for.end.97:                                       ; preds = %for.cond.82
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %83 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc99 = add nsw i32 %83, 1
  store i32 %inc99, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.79

for.end.100:                                      ; preds = %for.cond.79
  br label %if.end.189

if.else:                                          ; preds = %for.body.36
  %84 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp101 = icmp eq i32 %84, 0
  br i1 %cmp101, label %if.then.106, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %85 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom102 = sext i32 %85 to i64
  %86 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %scfsi = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %86, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx103, i32 0, i64 0
  %87 = load i32, i32* %arrayidx104, align 4, !tbaa !1
  %cmp105 = icmp eq i32 %87, 0
  br i1 %cmp105, label %if.then.106, label %if.end

if.then.106:                                      ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.117, %if.then.106
  %88 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp108 = icmp slt i32 %88, 6
  br i1 %cmp108, label %for.body.109, label %for.end.119

for.body.109:                                     ; preds = %for.cond.107
  %89 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %90 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %89, align 8, !tbaa !5
  %91 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom110 = sext i32 %91 to i64
  %92 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom111 = sext i32 %92 to i64
  %93 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom112 = sext i32 %93 to i64
  %94 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx113 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %94, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx113, i32 0, i64 %idxprom111
  %l = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx114, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [22 x i32], [22 x i32]* %l, i32 0, i64 %idxprom110
  %95 = load i32, i32* %arrayidx115, align 4, !tbaa !1
  %96 = load i32, i32* %slen1, align 4, !tbaa !1
  %call116 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %90, i32 %95, i32 %96)
  %97 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call116, %struct.BF_PartHolder** %97, align 8, !tbaa !5
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.109
  %98 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc118 = add nsw i32 %98, 1
  store i32 %inc118, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.107

for.end.119:                                      ; preds = %for.cond.107
  br label %if.end

if.end:                                           ; preds = %for.end.119, %lor.lhs.false
  %99 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp120 = icmp eq i32 %99, 0
  br i1 %cmp120, label %if.then.127, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end
  %100 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom122 = sext i32 %100 to i64
  %101 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %scfsi123 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %101, i32 0, i32 3
  %arrayidx124 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi123, i32 0, i64 %idxprom122
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx124, i32 0, i64 1
  %102 = load i32, i32* %arrayidx125, align 4, !tbaa !1
  %cmp126 = icmp eq i32 %102, 0
  br i1 %cmp126, label %if.then.127, label %if.end.142

if.then.127:                                      ; preds = %lor.lhs.false.121, %if.end
  store i32 6, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.139, %if.then.127
  %103 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp129 = icmp slt i32 %103, 11
  br i1 %cmp129, label %for.body.130, label %for.end.141

for.body.130:                                     ; preds = %for.cond.128
  %104 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %105 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %104, align 8, !tbaa !5
  %106 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom131 = sext i32 %106 to i64
  %107 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom132 = sext i32 %107 to i64
  %108 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom133 = sext i32 %108 to i64
  %109 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %109, i64 %idxprom133
  %arrayidx135 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx134, i32 0, i64 %idxprom132
  %l136 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [22 x i32], [22 x i32]* %l136, i32 0, i64 %idxprom131
  %110 = load i32, i32* %arrayidx137, align 4, !tbaa !1
  %111 = load i32, i32* %slen1, align 4, !tbaa !1
  %call138 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %105, i32 %110, i32 %111)
  %112 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call138, %struct.BF_PartHolder** %112, align 8, !tbaa !5
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.130
  %113 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc140 = add nsw i32 %113, 1
  store i32 %inc140, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.128

for.end.141:                                      ; preds = %for.cond.128
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %lor.lhs.false.121
  %114 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp143 = icmp eq i32 %114, 0
  br i1 %cmp143, label %if.then.150, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %if.end.142
  %115 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom145 = sext i32 %115 to i64
  %116 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %scfsi146 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %116, i32 0, i32 3
  %arrayidx147 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi146, i32 0, i64 %idxprom145
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx147, i32 0, i64 2
  %117 = load i32, i32* %arrayidx148, align 4, !tbaa !1
  %cmp149 = icmp eq i32 %117, 0
  br i1 %cmp149, label %if.then.150, label %if.end.165

if.then.150:                                      ; preds = %lor.lhs.false.144, %if.end.142
  store i32 11, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.162, %if.then.150
  %118 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp152 = icmp slt i32 %118, 16
  br i1 %cmp152, label %for.body.153, label %for.end.164

for.body.153:                                     ; preds = %for.cond.151
  %119 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %120 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %119, align 8, !tbaa !5
  %121 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom154 = sext i32 %121 to i64
  %122 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom155 = sext i32 %122 to i64
  %123 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom156 = sext i32 %123 to i64
  %124 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx157 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %124, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx157, i32 0, i64 %idxprom155
  %l159 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [22 x i32], [22 x i32]* %l159, i32 0, i64 %idxprom154
  %125 = load i32, i32* %arrayidx160, align 4, !tbaa !1
  %126 = load i32, i32* %slen2, align 4, !tbaa !1
  %call161 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %120, i32 %125, i32 %126)
  %127 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call161, %struct.BF_PartHolder** %127, align 8, !tbaa !5
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.153
  %128 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc163 = add nsw i32 %128, 1
  store i32 %inc163, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.151

for.end.164:                                      ; preds = %for.cond.151
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.164, %lor.lhs.false.144
  %129 = load i32, i32* %gr, align 4, !tbaa !1
  %cmp166 = icmp eq i32 %129, 0
  br i1 %cmp166, label %if.then.173, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %if.end.165
  %130 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom168 = sext i32 %130 to i64
  %131 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %scfsi169 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %131, i32 0, i32 3
  %arrayidx170 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %scfsi169, i32 0, i64 %idxprom168
  %arrayidx171 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx170, i32 0, i64 3
  %132 = load i32, i32* %arrayidx171, align 4, !tbaa !1
  %cmp172 = icmp eq i32 %132, 0
  br i1 %cmp172, label %if.then.173, label %if.end.188

if.then.173:                                      ; preds = %lor.lhs.false.167, %if.end.165
  store i32 16, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.185, %if.then.173
  %133 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp175 = icmp slt i32 %133, 21
  br i1 %cmp175, label %for.body.176, label %for.end.187

for.body.176:                                     ; preds = %for.cond.174
  %134 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  %135 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %134, align 8, !tbaa !5
  %136 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom177 = sext i32 %136 to i64
  %137 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom178 = sext i32 %137 to i64
  %138 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom179 = sext i32 %138 to i64
  %139 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx180 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %139, i64 %idxprom179
  %arrayidx181 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx180, i32 0, i64 %idxprom178
  %l182 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [22 x i32], [22 x i32]* %l182, i32 0, i64 %idxprom177
  %140 = load i32, i32* %arrayidx183, align 4, !tbaa !1
  %141 = load i32, i32* %slen2, align 4, !tbaa !1
  %call184 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %135, i32 %140, i32 %141)
  %142 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call184, %struct.BF_PartHolder** %142, align 8, !tbaa !5
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.176
  %143 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc186 = add nsw i32 %143, 1
  store i32 %inc186, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.174

for.end.187:                                      ; preds = %for.cond.174
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %lor.lhs.false.167
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %for.end.100
  %144 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom190 = sext i32 %144 to i64
  %145 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom191 = sext i32 %145 to i64
  %arrayidx192 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i64 %idxprom191
  %arrayidx193 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx192, i32 0, i64 %idxprom190
  %146 = load i32*, i32** %ix, align 8, !tbaa !5
  %147 = load %struct.gr_info*, %struct.gr_info** %gi, align 8, !tbaa !5
  call void @Huffmancodebits(%struct.BF_PartHolder** %arrayidx193, i32* %146, %struct.gr_info* %147)
  %148 = bitcast i32** %ix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #2
  %149 = bitcast i32* %slen2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %slen1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast %struct.gr_info** %gi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast %struct.BF_PartHolder*** %pph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.189
  %153 = load i32, i32* %ch, align 4, !tbaa !1
  %inc195 = add nsw i32 %153, 1
  store i32 %inc195, i32* %ch, align 4, !tbaa !1
  br label %for.cond.33

for.end.196:                                      ; preds = %for.cond.33
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %154 = load i32, i32* %gr, align 4, !tbaa !1
  %inc198 = add nsw i32 %154, 1
  store i32 %inc198, i32* %gr, align 4, !tbaa !1
  br label %for.cond.30

for.end.199:                                      ; preds = %for.cond.30
  br label %if.end.299

if.else.200:                                      ; preds = %for.end.28
  store i32 0, i32* %gr, align 4, !tbaa !1
  store i32 0, i32* %ch, align 4, !tbaa !1
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.296, %if.else.200
  %155 = load i32, i32* %ch, align 4, !tbaa !1
  %156 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !5
  %stereo202 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %156, i32 0, i32 46
  %157 = load i32, i32* %stereo202, align 4, !tbaa !16
  %cmp203 = icmp slt i32 %155, %157
  br i1 %cmp203, label %for.body.204, label %for.end.298

for.body.204:                                     ; preds = %for.cond.201
  %158 = bitcast %struct.BF_PartHolder*** %pph205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #2
  %159 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom206 = sext i32 %159 to i64
  %160 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom207 = sext i32 %160 to i64
  %arrayidx208 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @scaleFactorsPH, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx208, i32 0, i64 %idxprom206
  store %struct.BF_PartHolder** %arrayidx209, %struct.BF_PartHolder*** %pph205, align 8, !tbaa !5
  %161 = bitcast %struct.gr_info** %gi210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #2
  %162 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom211 = sext i32 %162 to i64
  %163 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom212 = sext i32 %163 to i64
  %164 = load %struct.III_side_info_t*, %struct.III_side_info_t** %si.addr, align 8, !tbaa !5
  %gr213 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %164, i32 0, i32 4
  %arrayidx214 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %gr213, i32 0, i64 %idxprom212
  %ch215 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.gr_info_ss], [2 x %struct.gr_info_ss]* %ch215, i32 0, i64 %idxprom211
  %tt217 = getelementptr inbounds %struct.gr_info_ss, %struct.gr_info_ss* %arrayidx216, i32 0, i32 0
  store %struct.gr_info* %tt217, %struct.gr_info** %gi210, align 8, !tbaa !5
  %165 = bitcast i32** %ix218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #2
  %166 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom219 = sext i32 %166 to i64
  %167 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom220 = sext i32 %167 to i64
  %168 = load [2 x [576 x i32]]*, [2 x [576 x i32]]** %l3_enc.addr, align 8, !tbaa !5
  %arrayidx221 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %168, i64 %idxprom220
  %arrayidx222 = getelementptr inbounds [2 x [576 x i32]], [2 x [576 x i32]]* %arrayidx221, i32 0, i64 %idxprom219
  %arrayidx223 = getelementptr inbounds [576 x i32], [576 x i32]* %arrayidx222, i32 0, i64 0
  store i32* %arrayidx223, i32** %ix218, align 8, !tbaa !5
  %169 = bitcast i32* %sfb_partition to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #2
  %170 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  %block_type224 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %170, i32 0, i32 6
  %171 = load i32, i32* %block_type224, align 4, !tbaa !46
  %cmp225 = icmp eq i32 %171, 2
  br i1 %cmp225, label %if.then.226, label %if.else.261

if.then.226:                                      ; preds = %for.body.204
  store i32 0, i32* %sfb, align 4, !tbaa !1
  store i32 0, i32* %sfb_partition, align 4, !tbaa !1
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.258, %if.then.226
  %172 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %cmp228 = icmp slt i32 %172, 4
  br i1 %cmp228, label %for.body.229, label %for.end.260

for.body.229:                                     ; preds = %for.cond.227
  %173 = bitcast i32* %sfbs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #2
  %174 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %idxprom230 = sext i32 %174 to i64
  %175 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, %struct.gr_info* %175, i32 0, i32 19
  %176 = load i32*, i32** %sfb_partition_table, align 8, !tbaa !53
  %arrayidx231 = getelementptr inbounds i32, i32* %176, i64 %idxprom230
  %177 = load i32, i32* %arrayidx231, align 4, !tbaa !1
  %div = udiv i32 %177, 3
  store i32 %div, i32* %sfbs, align 4, !tbaa !1
  %178 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #2
  %179 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %idxprom232 = sext i32 %179 to i64
  %180 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  %slen233 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %180, i32 0, i32 20
  %arrayidx234 = getelementptr inbounds [4 x i32], [4 x i32]* %slen233, i32 0, i64 %idxprom232
  %181 = load i32, i32* %arrayidx234, align 4, !tbaa !1
  store i32 %181, i32* %slen, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.235

for.cond.235:                                     ; preds = %for.inc.254, %for.body.229
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = load i32, i32* %sfbs, align 4, !tbaa !1
  %cmp236 = icmp slt i32 %182, %183
  br i1 %cmp236, label %for.body.237, label %for.end.257

for.body.237:                                     ; preds = %for.cond.235
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.251, %for.body.237
  %184 = load i32, i32* %window, align 4, !tbaa !1
  %cmp239 = icmp slt i32 %184, 3
  br i1 %cmp239, label %for.body.240, label %for.end.253

for.body.240:                                     ; preds = %for.cond.238
  %185 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph205, align 8, !tbaa !5
  %186 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %185, align 8, !tbaa !5
  %187 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom241 = sext i32 %187 to i64
  %188 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom242 = sext i32 %188 to i64
  %189 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom243 = sext i32 %189 to i64
  %190 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom244 = sext i32 %190 to i64
  %191 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx245 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %191, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx245, i32 0, i64 %idxprom243
  %s247 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx246, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [13 x [3 x i32]], [13 x [3 x i32]]* %s247, i32 0, i64 %idxprom242
  %arrayidx249 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx248, i32 0, i64 %idxprom241
  %192 = load i32, i32* %arrayidx249, align 4, !tbaa !1
  %193 = load i32, i32* %slen, align 4, !tbaa !1
  %call250 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %186, i32 %192, i32 %193)
  %194 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph205, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call250, %struct.BF_PartHolder** %194, align 8, !tbaa !5
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.240
  %195 = load i32, i32* %window, align 4, !tbaa !1
  %inc252 = add nsw i32 %195, 1
  store i32 %inc252, i32* %window, align 4, !tbaa !1
  br label %for.cond.238

for.end.253:                                      ; preds = %for.cond.238
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.end.253
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %inc255 = add nsw i32 %196, 1
  store i32 %inc255, i32* %i, align 4, !tbaa !1
  %197 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc256 = add nsw i32 %197, 1
  store i32 %inc256, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.235

for.end.257:                                      ; preds = %for.cond.235
  %198 = bitcast i32* %slen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  %199 = bitcast i32* %sfbs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #2
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end.257
  %200 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %inc259 = add nsw i32 %200, 1
  store i32 %inc259, i32* %sfb_partition, align 4, !tbaa !1
  br label %for.cond.227

for.end.260:                                      ; preds = %for.cond.227
  br label %if.end.291

if.else.261:                                      ; preds = %for.body.204
  store i32 0, i32* %sfb, align 4, !tbaa !1
  store i32 0, i32* %sfb_partition, align 4, !tbaa !1
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.288, %if.else.261
  %201 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %cmp263 = icmp slt i32 %201, 4
  br i1 %cmp263, label %for.body.264, label %for.end.290

for.body.264:                                     ; preds = %for.cond.262
  %202 = bitcast i32* %sfbs265 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #2
  %203 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %idxprom266 = sext i32 %203 to i64
  %204 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  %sfb_partition_table267 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %204, i32 0, i32 19
  %205 = load i32*, i32** %sfb_partition_table267, align 8, !tbaa !53
  %arrayidx268 = getelementptr inbounds i32, i32* %205, i64 %idxprom266
  %206 = load i32, i32* %arrayidx268, align 4, !tbaa !1
  store i32 %206, i32* %sfbs265, align 4, !tbaa !1
  %207 = bitcast i32* %slen269 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #2
  %208 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %idxprom270 = sext i32 %208 to i64
  %209 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  %slen271 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %209, i32 0, i32 20
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %slen271, i32 0, i64 %idxprom270
  %210 = load i32, i32* %arrayidx272, align 4, !tbaa !1
  store i32 %210, i32* %slen269, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.284, %for.body.264
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = load i32, i32* %sfbs265, align 4, !tbaa !1
  %cmp274 = icmp slt i32 %211, %212
  br i1 %cmp274, label %for.body.275, label %for.end.287

for.body.275:                                     ; preds = %for.cond.273
  %213 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph205, align 8, !tbaa !5
  %214 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %213, align 8, !tbaa !5
  %215 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom276 = sext i32 %215 to i64
  %216 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom277 = sext i32 %216 to i64
  %217 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom278 = sext i32 %217 to i64
  %218 = load [2 x %struct.III_scalefac_t]*, [2 x %struct.III_scalefac_t]** %scalefac.addr, align 8, !tbaa !5
  %arrayidx279 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %218, i64 %idxprom278
  %arrayidx280 = getelementptr inbounds [2 x %struct.III_scalefac_t], [2 x %struct.III_scalefac_t]* %arrayidx279, i32 0, i64 %idxprom277
  %l281 = getelementptr inbounds %struct.III_scalefac_t, %struct.III_scalefac_t* %arrayidx280, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [22 x i32], [22 x i32]* %l281, i32 0, i64 %idxprom276
  %219 = load i32, i32* %arrayidx282, align 4, !tbaa !1
  %220 = load i32, i32* %slen269, align 4, !tbaa !1
  %call283 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %214, i32 %219, i32 %220)
  %221 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph205, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call283, %struct.BF_PartHolder** %221, align 8, !tbaa !5
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.275
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %inc285 = add nsw i32 %222, 1
  store i32 %inc285, i32* %i, align 4, !tbaa !1
  %223 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc286 = add nsw i32 %223, 1
  store i32 %inc286, i32* %sfb, align 4, !tbaa !1
  br label %for.cond.273

for.end.287:                                      ; preds = %for.cond.273
  %224 = bitcast i32* %slen269 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #2
  %225 = bitcast i32* %sfbs265 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #2
  br label %for.inc.288

for.inc.288:                                      ; preds = %for.end.287
  %226 = load i32, i32* %sfb_partition, align 4, !tbaa !1
  %inc289 = add nsw i32 %226, 1
  store i32 %inc289, i32* %sfb_partition, align 4, !tbaa !1
  br label %for.cond.262

for.end.290:                                      ; preds = %for.cond.262
  br label %if.end.291

if.end.291:                                       ; preds = %for.end.290, %for.end.260
  %227 = load i32, i32* %ch, align 4, !tbaa !1
  %idxprom292 = sext i32 %227 to i64
  %228 = load i32, i32* %gr, align 4, !tbaa !1
  %idxprom293 = sext i32 %228 to i64
  %arrayidx294 = getelementptr inbounds [2 x [2 x %struct.BF_PartHolder*]], [2 x [2 x %struct.BF_PartHolder*]]* @codedDataPH, i32 0, i64 %idxprom293
  %arrayidx295 = getelementptr inbounds [2 x %struct.BF_PartHolder*], [2 x %struct.BF_PartHolder*]* %arrayidx294, i32 0, i64 %idxprom292
  %229 = load i32*, i32** %ix218, align 8, !tbaa !5
  %230 = load %struct.gr_info*, %struct.gr_info** %gi210, align 8, !tbaa !5
  call void @Huffmancodebits(%struct.BF_PartHolder** %arrayidx295, i32* %229, %struct.gr_info* %230)
  %231 = bitcast i32* %sfb_partition to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32** %ix218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #2
  %233 = bitcast %struct.gr_info** %gi210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast %struct.BF_PartHolder*** %pph205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.291
  %235 = load i32, i32* %ch, align 4, !tbaa !1
  %inc297 = add nsw i32 %235, 1
  store i32 %inc297, i32* %ch, align 4, !tbaa !1
  br label %for.cond.201

for.end.298:                                      ; preds = %for.cond.201
  br label %if.end.299

if.end.299:                                       ; preds = %for.end.298, %for.end.199
  %236 = bitcast i32* %window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = bitcast i32* %gr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @drain_into_ancillary_data(i32 %lengthInBits) #0 {
entry:
  %lengthInBits.addr = alloca i32, align 4
  %wordsToSend = alloca i32, align 4
  %remainingBits = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %lengthInBits, i32* %lengthInBits.addr, align 4, !tbaa !1
  %0 = bitcast i32* %wordsToSend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %lengthInBits.addr, align 4, !tbaa !1
  %div = sdiv i32 %1, 32
  store i32 %div, i32* %wordsToSend, align 4, !tbaa !1
  %2 = bitcast i32* %remainingBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %lengthInBits.addr, align 4, !tbaa !1
  %rem = srem i32 %3, 32
  store i32 %rem, i32* %remainingBits, align 4, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  %part = getelementptr inbounds %struct.BF_PartHolder, %struct.BF_PartHolder* %5, i32 0, i32 1
  %6 = load %struct.BF_BitstreamPart*, %struct.BF_BitstreamPart** %part, align 8, !tbaa !18
  %nrEntries = getelementptr inbounds %struct.BF_BitstreamPart, %struct.BF_BitstreamPart* %6, i32 0, i32 0
  store i32 0, i32* %nrEntries, align 4, !tbaa !26
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %8 = load i32, i32* %wordsToSend, align 4, !tbaa !1
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  %call = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %9, i32 0, i32 32)
  store %struct.BF_PartHolder* %call, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %remainingBits, align 4, !tbaa !1
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  %13 = load i32, i32* %remainingBits, align 4, !tbaa !1
  %call1 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %12, i32 0, i32 %13)
  store %struct.BF_PartHolder* %call1, %struct.BF_PartHolder** @userFrameDataPH, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %remainingBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %wordsToSend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  ret void
}

declare void @BF_BitstreamFrame(%struct.BF_FrameData*, %struct.BF_FrameResults*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @III_FlushBitstream() #0 {
entry:
  %0 = load i32, i32* @PartHoldersInitialized, align 4, !tbaa !1
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.BF_FrameData*, %struct.BF_FrameData** @frameData, align 8, !tbaa !5
  %2 = load %struct.BF_FrameResults*, %struct.BF_FrameResults** @frameResults, align 8, !tbaa !5
  call void @BF_FlushBitstream(%struct.BF_FrameData* %1, %struct.BF_FrameResults* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @BF_FlushBitstream(%struct.BF_FrameData*, %struct.BF_FrameResults*) #1

; Function Attrs: nounwind uwtable
define i32 @abs_and_sign(i32* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8, !tbaa !5
  %0 = load i32*, i32** %x.addr, align 8, !tbaa !5
  %1 = load i32, i32* %0, align 4, !tbaa !1
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %x.addr, align 8, !tbaa !5
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %mul = mul nsw i32 %3, -1
  store i32 %mul, i32* %2, align 4, !tbaa !1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @L3_huffman_coder_count1(%struct.BF_PartHolder** %pph, %struct.huffcodetab* %h, i32 %v, i32 %w, i32 %x, i32 %y) #0 {
entry:
  %pph.addr = alloca %struct.BF_PartHolder**, align 8
  %h.addr = alloca %struct.huffcodetab*, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %huffbits = alloca i64, align 8
  %signv = alloca i32, align 4
  %signw = alloca i32, align 4
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %p = alloca i32, align 4
  %len = alloca i32, align 4
  %totalBits = alloca i32, align 4
  store %struct.BF_PartHolder** %pph, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.huffcodetab* %h, %struct.huffcodetab** %h.addr, align 8, !tbaa !5
  store i32 %v, i32* %v.addr, align 4, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !1
  %0 = bitcast i64* %huffbits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %signv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %signw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %signx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %signy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %totalBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %totalBits, align 4, !tbaa !1
  %call = call i32 @abs_and_sign(i32* %v.addr)
  store i32 %call, i32* %signv, align 4, !tbaa !1
  %call1 = call i32 @abs_and_sign(i32* %w.addr)
  store i32 %call1, i32* %signw, align 4, !tbaa !1
  %call2 = call i32 @abs_and_sign(i32* %x.addr)
  store i32 %call2, i32* %signx, align 4, !tbaa !1
  %call3 = call i32 @abs_and_sign(i32* %y.addr)
  store i32 %call3, i32* %signy, align 4, !tbaa !1
  %8 = load i32, i32* %v.addr, align 4, !tbaa !1
  %shl = shl i32 %8, 3
  %9 = load i32, i32* %w.addr, align 4, !tbaa !1
  %shl4 = shl i32 %9, 2
  %add = add nsw i32 %shl, %shl4
  %10 = load i32, i32* %x.addr, align 4, !tbaa !1
  %shl5 = shl i32 %10, 1
  %add6 = add nsw i32 %add, %shl5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !1
  %add7 = add nsw i32 %add6, %11
  store i32 %add7, i32* %p, align 4, !tbaa !1
  %12 = load i32, i32* %p, align 4, !tbaa !1
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.huffcodetab*, %struct.huffcodetab** %h.addr, align 8, !tbaa !5
  %table = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %13, i32 0, i32 2
  %14 = load i64*, i64** %table, align 8, !tbaa !54
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %idxprom
  %15 = load i64, i64* %arrayidx, align 8, !tbaa !56
  store i64 %15, i64* %huffbits, align 8, !tbaa !56
  %16 = load i32, i32* %p, align 4, !tbaa !1
  %idxprom8 = zext i32 %16 to i64
  %17 = load %struct.huffcodetab*, %struct.huffcodetab** %h.addr, align 8, !tbaa !5
  %hlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %17, i32 0, i32 3
  %18 = load i8*, i8** %hlen, align 8, !tbaa !57
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 %idxprom8
  %19 = load i8, i8* %arrayidx9, align 1, !tbaa !58
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !1
  %20 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %21 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %20, align 8, !tbaa !5
  %22 = load i64, i64* %huffbits, align 8, !tbaa !56
  %conv10 = trunc i64 %22 to i32
  %23 = load i32, i32* %len, align 4, !tbaa !1
  %call11 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %21, i32 %conv10, i32 %23)
  %24 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call11, %struct.BF_PartHolder** %24, align 8, !tbaa !5
  store i32 0, i32* %totalBits, align 4, !tbaa !1
  store i32 0, i32* %p, align 4, !tbaa !1
  %25 = load i32, i32* %v.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %signv, align 4, !tbaa !1
  store i32 %26, i32* %p, align 4, !tbaa !1
  %27 = load i32, i32* %totalBits, align 4, !tbaa !1
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %totalBits, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load i32, i32* %w.addr, align 4, !tbaa !1
  %tobool12 = icmp ne i32 %28, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %29 = load i32, i32* %p, align 4, !tbaa !1
  %mul = mul i32 2, %29
  %30 = load i32, i32* %signw, align 4, !tbaa !1
  %add14 = add i32 %mul, %30
  store i32 %add14, i32* %p, align 4, !tbaa !1
  %31 = load i32, i32* %totalBits, align 4, !tbaa !1
  %inc15 = add nsw i32 %31, 1
  store i32 %inc15, i32* %totalBits, align 4, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %32 = load i32, i32* %x.addr, align 4, !tbaa !1
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %33 = load i32, i32* %p, align 4, !tbaa !1
  %mul19 = mul i32 2, %33
  %34 = load i32, i32* %signx, align 4, !tbaa !1
  %add20 = add i32 %mul19, %34
  store i32 %add20, i32* %p, align 4, !tbaa !1
  %35 = load i32, i32* %totalBits, align 4, !tbaa !1
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %totalBits, align 4, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.16
  %36 = load i32, i32* %y.addr, align 4, !tbaa !1
  %tobool23 = icmp ne i32 %36, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.22
  %37 = load i32, i32* %p, align 4, !tbaa !1
  %mul25 = mul i32 2, %37
  %38 = load i32, i32* %signy, align 4, !tbaa !1
  %add26 = add i32 %mul25, %38
  store i32 %add26, i32* %p, align 4, !tbaa !1
  %39 = load i32, i32* %totalBits, align 4, !tbaa !1
  %inc27 = add nsw i32 %39, 1
  store i32 %inc27, i32* %totalBits, align 4, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.22
  %40 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %41 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %40, align 8, !tbaa !5
  %42 = load i32, i32* %p, align 4, !tbaa !1
  %43 = load i32, i32* %totalBits, align 4, !tbaa !1
  %call29 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %41, i32 %42, i32 %43)
  %44 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call29, %struct.BF_PartHolder** %44, align 8, !tbaa !5
  %45 = load i32, i32* %totalBits, align 4, !tbaa !1
  %46 = load i32, i32* %len, align 4, !tbaa !1
  %add30 = add nsw i32 %45, %46
  %47 = bitcast i32* %totalBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i32* %signy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %signx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %signw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %signv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i64* %huffbits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  ret i32 %add30
}

declare %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @HuffmanCode(i32 %table_select, i32 %x, i32 %y, i32* %code, i32* %ext, i32* %cbits, i32* %xbits) #0 {
entry:
  %retval = alloca i32, align 4
  %table_select.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %code.addr = alloca i32*, align 8
  %ext.addr = alloca i32*, align 8
  %cbits.addr = alloca i32*, align 8
  %xbits.addr = alloca i32*, align 8
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %linbitsx = alloca i32, align 4
  %linbitsy = alloca i32, align 4
  %linbits = alloca i32, align 4
  %idx = alloca i32, align 4
  %h = alloca %struct.huffcodetab*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %table_select, i32* %table_select.addr, align 4, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !1
  store i32* %code, i32** %code.addr, align 8, !tbaa !5
  store i32* %ext, i32** %ext.addr, align 8, !tbaa !5
  store i32* %cbits, i32** %cbits.addr, align 8, !tbaa !5
  store i32* %xbits, i32** %xbits.addr, align 8, !tbaa !5
  %0 = bitcast i32* %signx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %signy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %linbitsx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %linbitsy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %linbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast %struct.huffcodetab** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  store i32 0, i32* %7, align 4, !tbaa !1
  %8 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  store i32 0, i32* %8, align 4, !tbaa !1
  %9 = load i32*, i32** %code.addr, align 8, !tbaa !5
  store i32 0, i32* %9, align 4, !tbaa !1
  %10 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  store i32 0, i32* %10, align 4, !tbaa !1
  %11 = load i32, i32* %table_select.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @abs_and_sign(i32* %x.addr)
  store i32 %call, i32* %signx, align 4, !tbaa !1
  %call1 = call i32 @abs_and_sign(i32* %y.addr)
  store i32 %call1, i32* %signy, align 4, !tbaa !1
  %12 = load i32, i32* %table_select.addr, align 4, !tbaa !1
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom
  store %struct.huffcodetab* %arrayidx, %struct.huffcodetab** %h, align 8, !tbaa !5
  %13 = load i32, i32* %table_select.addr, align 4, !tbaa !1
  %cmp2 = icmp sgt i32 %13, 15
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %14 = load %struct.huffcodetab*, %struct.huffcodetab** %h, align 8, !tbaa !5
  %xlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %14, i32 0, i32 0
  %15 = load i32, i32* %xlen, align 4, !tbaa !59
  store i32 %15, i32* %linbits, align 4, !tbaa !1
  store i32 0, i32* %linbitsy, align 4, !tbaa !1
  store i32 0, i32* %linbitsx, align 4, !tbaa !1
  %16 = load i32, i32* %x.addr, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %16, 14
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %17 = load i32, i32* %x.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %17, 15
  store i32 %sub, i32* %linbitsx, align 4, !tbaa !1
  store i32 15, i32* %x.addr, align 4, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %18 = load i32, i32* %y.addr, align 4, !tbaa !1
  %cmp7 = icmp sgt i32 %18, 14
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %19 = load i32, i32* %y.addr, align 4, !tbaa !1
  %sub9 = sub nsw i32 %19, 15
  store i32 %sub9, i32* %linbitsy, align 4, !tbaa !1
  store i32 15, i32* %y.addr, align 4, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %20 = load i32, i32* %x.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %20, 16
  %21 = load i32, i32* %y.addr, align 4, !tbaa !1
  %add = add nsw i32 %mul, %21
  store i32 %add, i32* %idx, align 4, !tbaa !1
  %22 = load i32, i32* %idx, align 4, !tbaa !1
  %idxprom11 = zext i32 %22 to i64
  %23 = load %struct.huffcodetab*, %struct.huffcodetab** %h, align 8, !tbaa !5
  %table = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %23, i32 0, i32 2
  %24 = load i64*, i64** %table, align 8, !tbaa !54
  %arrayidx12 = getelementptr inbounds i64, i64* %24, i64 %idxprom11
  %25 = load i64, i64* %arrayidx12, align 8, !tbaa !56
  %conv = trunc i64 %25 to i32
  %26 = load i32*, i32** %code.addr, align 8, !tbaa !5
  store i32 %conv, i32* %26, align 4, !tbaa !1
  %27 = load i32, i32* %idx, align 4, !tbaa !1
  %idxprom13 = zext i32 %27 to i64
  %28 = load %struct.huffcodetab*, %struct.huffcodetab** %h, align 8, !tbaa !5
  %hlen = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %28, i32 0, i32 3
  %29 = load i8*, i8** %hlen, align 8, !tbaa !57
  %arrayidx14 = getelementptr inbounds i8, i8* %29, i64 %idxprom13
  %30 = load i8, i8* %arrayidx14, align 1, !tbaa !58
  %conv15 = zext i8 %30 to i32
  %31 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  store i32 %conv15, i32* %31, align 4, !tbaa !1
  %32 = load i32, i32* %x.addr, align 4, !tbaa !1
  %cmp16 = icmp sgt i32 %32, 14
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.10
  %33 = load i32, i32* %linbitsx, align 4, !tbaa !1
  %34 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %or = or i32 %35, %33
  store i32 %or, i32* %34, align 4, !tbaa !1
  %36 = load i32, i32* %linbits, align 4, !tbaa !1
  %37 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  %38 = load i32, i32* %37, align 4, !tbaa !1
  %add19 = add i32 %38, %36
  store i32 %add19, i32* %37, align 4, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.10
  %39 = load i32, i32* %x.addr, align 4, !tbaa !1
  %cmp21 = icmp ne i32 %39, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %40 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %shl = shl i32 %41, 1
  store i32 %shl, i32* %40, align 4, !tbaa !1
  %42 = load i32, i32* %signx, align 4, !tbaa !1
  %43 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %44 = load i32, i32* %43, align 4, !tbaa !1
  %or24 = or i32 %44, %42
  store i32 %or24, i32* %43, align 4, !tbaa !1
  %45 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  %46 = load i32, i32* %45, align 4, !tbaa !1
  %add25 = add nsw i32 %46, 1
  store i32 %add25, i32* %45, align 4, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %47 = load i32, i32* %y.addr, align 4, !tbaa !1
  %cmp27 = icmp sgt i32 %47, 14
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.end.26
  %48 = load i32, i32* %linbits, align 4, !tbaa !1
  %49 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %shl30 = shl i32 %50, %48
  store i32 %shl30, i32* %49, align 4, !tbaa !1
  %51 = load i32, i32* %linbitsy, align 4, !tbaa !1
  %52 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %or31 = or i32 %53, %51
  store i32 %or31, i32* %52, align 4, !tbaa !1
  %54 = load i32, i32* %linbits, align 4, !tbaa !1
  %55 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  %56 = load i32, i32* %55, align 4, !tbaa !1
  %add32 = add i32 %56, %54
  store i32 %add32, i32* %55, align 4, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.end.26
  %57 = load i32, i32* %y.addr, align 4, !tbaa !1
  %cmp34 = icmp ne i32 %57, 0
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.33
  %58 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %59 = load i32, i32* %58, align 4, !tbaa !1
  %shl37 = shl i32 %59, 1
  store i32 %shl37, i32* %58, align 4, !tbaa !1
  %60 = load i32, i32* %signy, align 4, !tbaa !1
  %61 = load i32*, i32** %ext.addr, align 8, !tbaa !5
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %or38 = or i32 %62, %60
  store i32 %or38, i32* %61, align 4, !tbaa !1
  %63 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %add39 = add nsw i32 %64, 1
  store i32 %add39, i32* %63, align 4, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end.33
  br label %if.end.66

if.else:                                          ; preds = %if.end
  %65 = load i32, i32* %x.addr, align 4, !tbaa !1
  %mul41 = mul nsw i32 %65, 16
  %66 = load i32, i32* %y.addr, align 4, !tbaa !1
  %add42 = add nsw i32 %mul41, %66
  store i32 %add42, i32* %idx, align 4, !tbaa !1
  %67 = load i32, i32* %idx, align 4, !tbaa !1
  %idxprom43 = zext i32 %67 to i64
  %68 = load %struct.huffcodetab*, %struct.huffcodetab** %h, align 8, !tbaa !5
  %table44 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %68, i32 0, i32 2
  %69 = load i64*, i64** %table44, align 8, !tbaa !54
  %arrayidx45 = getelementptr inbounds i64, i64* %69, i64 %idxprom43
  %70 = load i64, i64* %arrayidx45, align 8, !tbaa !56
  %conv46 = trunc i64 %70 to i32
  %71 = load i32*, i32** %code.addr, align 8, !tbaa !5
  store i32 %conv46, i32* %71, align 4, !tbaa !1
  %72 = load i32, i32* %idx, align 4, !tbaa !1
  %idxprom47 = zext i32 %72 to i64
  %73 = load %struct.huffcodetab*, %struct.huffcodetab** %h, align 8, !tbaa !5
  %hlen48 = getelementptr inbounds %struct.huffcodetab, %struct.huffcodetab* %73, i32 0, i32 3
  %74 = load i8*, i8** %hlen48, align 8, !tbaa !57
  %arrayidx49 = getelementptr inbounds i8, i8* %74, i64 %idxprom47
  %75 = load i8, i8* %arrayidx49, align 1, !tbaa !58
  %conv50 = zext i8 %75 to i32
  %76 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %add51 = add nsw i32 %77, %conv50
  store i32 %add51, i32* %76, align 4, !tbaa !1
  %78 = load i32, i32* %x.addr, align 4, !tbaa !1
  %cmp52 = icmp ne i32 %78, 0
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %if.else
  %79 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %80 = load i32, i32* %79, align 4, !tbaa !1
  %shl55 = shl i32 %80, 1
  store i32 %shl55, i32* %79, align 4, !tbaa !1
  %81 = load i32, i32* %signx, align 4, !tbaa !1
  %82 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %or56 = or i32 %83, %81
  store i32 %or56, i32* %82, align 4, !tbaa !1
  %84 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %add57 = add nsw i32 %85, 1
  store i32 %add57, i32* %84, align 4, !tbaa !1
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %if.else
  %86 = load i32, i32* %y.addr, align 4, !tbaa !1
  %cmp59 = icmp ne i32 %86, 0
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.58
  %87 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %88 = load i32, i32* %87, align 4, !tbaa !1
  %shl62 = shl i32 %88, 1
  store i32 %shl62, i32* %87, align 4, !tbaa !1
  %89 = load i32, i32* %signy, align 4, !tbaa !1
  %90 = load i32*, i32** %code.addr, align 8, !tbaa !5
  %91 = load i32, i32* %90, align 4, !tbaa !1
  %or63 = or i32 %91, %89
  store i32 %or63, i32* %90, align 4, !tbaa !1
  %92 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %add64 = add nsw i32 %93, 1
  store i32 %add64, i32* %92, align 4, !tbaa !1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.end.58
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.40
  %94 = load i32*, i32** %cbits.addr, align 8, !tbaa !5
  %95 = load i32, i32* %94, align 4, !tbaa !1
  %96 = load i32*, i32** %xbits.addr, align 8, !tbaa !5
  %97 = load i32, i32* %96, align 4, !tbaa !1
  %add67 = add nsw i32 %95, %97
  store i32 %add67, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then
  %98 = bitcast %struct.huffcodetab** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %100 = bitcast i32* %linbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast i32* %linbitsy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i32* %linbitsx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %signy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %signx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = load i32, i32* %retval
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define internal void @Huffmancodebits(%struct.BF_PartHolder** %pph, i32* %ix, %struct.gr_info* %gi) #0 {
entry:
  %pph.addr = alloca %struct.BF_PartHolder**, align 8
  %ix.addr = alloca i32*, align 8
  %gi.addr = alloca %struct.gr_info*, align 8
  %region1Start = alloca i32, align 4
  %region2Start = alloca i32, align 4
  %i = alloca i32, align 4
  %bigvalues = alloca i32, align 4
  %count1End = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bits = alloca i32, align 4
  %cbits = alloca i32, align 4
  %xbits = alloca i32, align 4
  %stuffingBits = alloca i32, align 4
  %code = alloca i32, align 4
  %ext = alloca i32, align 4
  %bitsWritten = alloca i32, align 4
  %sfb = alloca i32, align 4
  %window = alloca i32, align 4
  %line = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %ix_s = alloca [192 x [3 x i32]]*, align 8
  %tableindex = alloca i32, align 4
  %scalefac_index = alloca i32, align 4
  %tableindex51 = alloca i32, align 4
  %stuffingWords = alloca i32, align 4
  %remainingBits = alloca i32, align 4
  store %struct.BF_PartHolder** %pph, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store i32* %ix, i32** %ix.addr, align 8, !tbaa !5
  store %struct.gr_info* %gi, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %0 = bitcast i32* %region1Start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %region2Start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %bigvalues to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %count1End to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %cbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %xbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %stuffingBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %ext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %bitsWritten to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  store i32 0, i32* %bitsWritten, align 4, !tbaa !1
  %16 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %big_values = getelementptr inbounds %struct.gr_info, %struct.gr_info* %16, i32 0, i32 1
  %17 = load i32, i32* %big_values, align 4, !tbaa !42
  %mul = mul i32 %17, 2
  store i32 %mul, i32* %bigvalues, align 4, !tbaa !1
  %18 = load i32, i32* %bigvalues, align 4, !tbaa !1
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end.82

if.then:                                          ; preds = %entry
  %19 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, %struct.gr_info* %19, i32 0, i32 7
  %20 = load i32, i32* %mixed_block_flag, align 4, !tbaa !47
  %tobool1 = icmp ne i32 %20, 0
  br i1 %tobool1, label %if.else.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %21 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %block_type = getelementptr inbounds %struct.gr_info, %struct.gr_info* %21, i32 0, i32 6
  %22 = load i32, i32* %block_type, align 4, !tbaa !46
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then.2, label %if.else.35

if.then.2:                                        ; preds = %land.lhs.true
  %23 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = bitcast i32* %window to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #2
  %26 = bitcast i32* %start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = bitcast i32* %end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = bitcast [192 x [3 x i32]]** %ix_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %30 = bitcast i32* %29 to [192 x [3 x i32]]*
  store [192 x [3 x i32]]* %30, [192 x [3 x i32]]** %ix_s, align 8, !tbaa !5
  store i32 12, i32* %region1Start, align 4, !tbaa !1
  store i32 576, i32* %region2Start, align 4, !tbaa !1
  store i32 0, i32* %sfb, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.then.2
  %31 = load i32, i32* %sfb, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %31, 13
  br i1 %cmp3, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %32 = bitcast i32* %tableindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  store i32 100, i32* %tableindex, align 4, !tbaa !1
  %33 = load i32, i32* %sfb, align 4, !tbaa !1
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom
  %34 = load i32, i32* %arrayidx, align 4, !tbaa !1
  store i32 %34, i32* %start, align 4, !tbaa !1
  %35 = load i32, i32* %sfb, align 4, !tbaa !1
  %add = add nsw i32 %35, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [14 x i32], [14 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 1), i32 0, i64 %idxprom4
  %36 = load i32, i32* %arrayidx5, align 4, !tbaa !1
  store i32 %36, i32* %end, align 4, !tbaa !1
  %37 = load i32, i32* %start, align 4, !tbaa !1
  %38 = load i32, i32* %region1Start, align 4, !tbaa !1
  %cmp6 = icmp slt i32 %37, %38
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %39 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %39, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select, i32 0, i64 0
  %40 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  store i32 %40, i32* %tableindex, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  %41 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %table_select9 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %41, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select9, i32 0, i64 1
  %42 = load i32, i32* %arrayidx10, align 4, !tbaa !1
  store i32 %42, i32* %tableindex, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  store i32 0, i32* %window, align 4, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.30, %if.end
  %43 = load i32, i32* %window, align 4, !tbaa !1
  %cmp12 = icmp slt i32 %43, 3
  br i1 %cmp12, label %for.body.13, label %for.end.31

for.body.13:                                      ; preds = %for.cond.11
  %44 = load i32, i32* %start, align 4, !tbaa !1
  store i32 %44, i32* %line, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %45 = load i32, i32* %line, align 4, !tbaa !1
  %46 = load i32, i32* %end, align 4, !tbaa !1
  %cmp15 = icmp slt i32 %45, %46
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %47 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom17 = sext i32 %47 to i64
  %48 = load i32, i32* %line, align 4, !tbaa !1
  %idxprom18 = sext i32 %48 to i64
  %49 = load [192 x [3 x i32]]*, [192 x [3 x i32]]** %ix_s, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds [192 x [3 x i32]], [192 x [3 x i32]]* %49, i32 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx19, i32 0, i64 %idxprom17
  %50 = load i32, i32* %arrayidx20, align 4, !tbaa !1
  store i32 %50, i32* %x, align 4, !tbaa !1
  %51 = load i32, i32* %window, align 4, !tbaa !1
  %idxprom21 = sext i32 %51 to i64
  %52 = load i32, i32* %line, align 4, !tbaa !1
  %add22 = add nsw i32 %52, 1
  %idxprom23 = sext i32 %add22 to i64
  %53 = load [192 x [3 x i32]]*, [192 x [3 x i32]]** %ix_s, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds [192 x [3 x i32]], [192 x [3 x i32]]* %53, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx24, i32 0, i64 %idxprom21
  %54 = load i32, i32* %arrayidx25, align 4, !tbaa !1
  store i32 %54, i32* %y, align 4, !tbaa !1
  %55 = load i32, i32* %tableindex, align 4, !tbaa !1
  %56 = load i32, i32* %x, align 4, !tbaa !1
  %57 = load i32, i32* %y, align 4, !tbaa !1
  %call = call i32 @HuffmanCode(i32 %55, i32 %56, i32 %57, i32* %code, i32* %ext, i32* %cbits, i32* %xbits)
  store i32 %call, i32* %bits, align 4, !tbaa !1
  %58 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %59 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %58, align 8, !tbaa !5
  %60 = load i32, i32* %code, align 4, !tbaa !1
  %61 = load i32, i32* %cbits, align 4, !tbaa !1
  %call26 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %59, i32 %60, i32 %61)
  %62 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call26, %struct.BF_PartHolder** %62, align 8, !tbaa !5
  %63 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %64 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %63, align 8, !tbaa !5
  %65 = load i32, i32* %ext, align 4, !tbaa !1
  %66 = load i32, i32* %xbits, align 4, !tbaa !1
  %call27 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %64, i32 %65, i32 %66)
  %67 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call27, %struct.BF_PartHolder** %67, align 8, !tbaa !5
  %68 = load i32, i32* %bits, align 4, !tbaa !1
  %69 = load i32, i32* %bitsWritten, align 4, !tbaa !1
  %add28 = add nsw i32 %69, %68
  store i32 %add28, i32* %bitsWritten, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %70 = load i32, i32* %line, align 4, !tbaa !1
  %add29 = add nsw i32 %70, 2
  store i32 %add29, i32* %line, align 4, !tbaa !1
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %71 = load i32, i32* %window, align 4, !tbaa !1
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %window, align 4, !tbaa !1
  br label %for.cond.11

for.end.31:                                       ; preds = %for.cond.11
  %72 = bitcast i32* %tableindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %73 = load i32, i32* %sfb, align 4, !tbaa !1
  %inc33 = add nsw i32 %73, 1
  store i32 %inc33, i32* %sfb, align 4, !tbaa !1
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %74 = bitcast [192 x [3 x i32]]** %ix_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast i32* %end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %window to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %sfb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  br label %if.end.81

if.else.35:                                       ; preds = %land.lhs.true, %if.then
  %80 = bitcast i32* %scalefac_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  store i32 100, i32* %scalefac_index, align 4, !tbaa !1
  %81 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %mixed_block_flag36 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %81, i32 0, i32 7
  %82 = load i32, i32* %mixed_block_flag36, align 4, !tbaa !47
  %tobool37 = icmp ne i32 %82, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.35
  store i32 36, i32* %region1Start, align 4, !tbaa !1
  store i32 576, i32* %region2Start, align 4, !tbaa !1
  br label %if.end.47

if.else.39:                                       ; preds = %if.else.35
  %83 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %region0_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %83, i32 0, i32 10
  %84 = load i32, i32* %region0_count, align 4, !tbaa !48
  %add40 = add i32 %84, 1
  store i32 %add40, i32* %scalefac_index, align 4, !tbaa !1
  %85 = load i32, i32* %scalefac_index, align 4, !tbaa !1
  %idxprom41 = zext i32 %85 to i64
  %arrayidx42 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom41
  %86 = load i32, i32* %arrayidx42, align 4, !tbaa !1
  store i32 %86, i32* %region1Start, align 4, !tbaa !1
  %87 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %region1_count = getelementptr inbounds %struct.gr_info, %struct.gr_info* %87, i32 0, i32 11
  %88 = load i32, i32* %region1_count, align 4, !tbaa !49
  %add43 = add i32 %88, 1
  %89 = load i32, i32* %scalefac_index, align 4, !tbaa !1
  %add44 = add i32 %89, %add43
  store i32 %add44, i32* %scalefac_index, align 4, !tbaa !1
  %90 = load i32, i32* %scalefac_index, align 4, !tbaa !1
  %idxprom45 = zext i32 %90 to i64
  %arrayidx46 = getelementptr inbounds [23 x i32], [23 x i32]* getelementptr inbounds (%struct.scalefac_struct, %struct.scalefac_struct* @scalefac_band, i32 0, i32 0), i32 0, i64 %idxprom45
  %91 = load i32, i32* %arrayidx46, align 4, !tbaa !1
  store i32 %91, i32* %region2Start, align 4, !tbaa !1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.39, %if.then.38
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.78, %if.end.47
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = load i32, i32* %bigvalues, align 4, !tbaa !1
  %cmp49 = icmp slt i32 %92, %93
  br i1 %cmp49, label %for.body.50, label %for.end.80

for.body.50:                                      ; preds = %for.cond.48
  %94 = bitcast i32* %tableindex51 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  store i32 100, i32* %tableindex51, align 4, !tbaa !1
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = load i32, i32* %region1Start, align 4, !tbaa !1
  %cmp52 = icmp slt i32 %95, %96
  br i1 %cmp52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %for.body.50
  %97 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %table_select54 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %97, i32 0, i32 8
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select54, i32 0, i64 0
  %98 = load i32, i32* %arrayidx55, align 4, !tbaa !1
  store i32 %98, i32* %tableindex51, align 4, !tbaa !1
  br label %if.end.65

if.else.56:                                       ; preds = %for.body.50
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = load i32, i32* %region2Start, align 4, !tbaa !1
  %cmp57 = icmp slt i32 %99, %100
  br i1 %cmp57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else.56
  %101 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %table_select59 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %101, i32 0, i32 8
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select59, i32 0, i64 1
  %102 = load i32, i32* %arrayidx60, align 4, !tbaa !1
  store i32 %102, i32* %tableindex51, align 4, !tbaa !1
  br label %if.end.64

if.else.61:                                       ; preds = %if.else.56
  %103 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %table_select62 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %103, i32 0, i32 8
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %table_select62, i32 0, i64 2
  %104 = load i32, i32* %arrayidx63, align 4, !tbaa !1
  store i32 %104, i32* %tableindex51, align 4, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.53
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom66 = sext i32 %105 to i64
  %106 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx67 = getelementptr inbounds i32, i32* %106, i64 %idxprom66
  %107 = load i32, i32* %arrayidx67, align 4, !tbaa !1
  store i32 %107, i32* %x, align 4, !tbaa !1
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %add68 = add nsw i32 %108, 1
  %idxprom69 = sext i32 %add68 to i64
  %109 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx70 = getelementptr inbounds i32, i32* %109, i64 %idxprom69
  %110 = load i32, i32* %arrayidx70, align 4, !tbaa !1
  store i32 %110, i32* %y, align 4, !tbaa !1
  %111 = load i32, i32* %tableindex51, align 4, !tbaa !1
  %tobool71 = icmp ne i32 %111, 0
  br i1 %tobool71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.end.65
  %112 = load i32, i32* %tableindex51, align 4, !tbaa !1
  %113 = load i32, i32* %x, align 4, !tbaa !1
  %114 = load i32, i32* %y, align 4, !tbaa !1
  %call73 = call i32 @HuffmanCode(i32 %112, i32 %113, i32 %114, i32* %code, i32* %ext, i32* %cbits, i32* %xbits)
  store i32 %call73, i32* %bits, align 4, !tbaa !1
  %115 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %116 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %115, align 8, !tbaa !5
  %117 = load i32, i32* %code, align 4, !tbaa !1
  %118 = load i32, i32* %cbits, align 4, !tbaa !1
  %call74 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %116, i32 %117, i32 %118)
  %119 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call74, %struct.BF_PartHolder** %119, align 8, !tbaa !5
  %120 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %121 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %120, align 8, !tbaa !5
  %122 = load i32, i32* %ext, align 4, !tbaa !1
  %123 = load i32, i32* %xbits, align 4, !tbaa !1
  %call75 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %121, i32 %122, i32 %123)
  %124 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call75, %struct.BF_PartHolder** %124, align 8, !tbaa !5
  %125 = load i32, i32* %bits, align 4, !tbaa !1
  %126 = load i32, i32* %bitsWritten, align 4, !tbaa !1
  %add76 = add nsw i32 %126, %125
  store i32 %add76, i32* %bitsWritten, align 4, !tbaa !1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %if.end.65
  %127 = bitcast i32* %tableindex51 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %add79 = add nsw i32 %128, 2
  store i32 %add79, i32* %i, align 4, !tbaa !1
  br label %for.cond.48

for.end.80:                                       ; preds = %for.cond.48
  %129 = bitcast i32* %scalefac_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.end.34
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %entry
  %130 = load i32, i32* %bigvalues, align 4, !tbaa !1
  %131 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %count1 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %131, i32 0, i32 2
  %132 = load i32, i32* %count1, align 4, !tbaa !60
  %mul83 = mul i32 %132, 4
  %add84 = add i32 %130, %mul83
  store i32 %add84, i32* %count1End, align 4, !tbaa !1
  %133 = load i32, i32* %bigvalues, align 4, !tbaa !1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.104, %if.end.82
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = load i32, i32* %count1End, align 4, !tbaa !1
  %cmp86 = icmp slt i32 %134, %135
  br i1 %cmp86, label %for.body.87, label %for.end.106

for.body.87:                                      ; preds = %for.cond.85
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom88 = sext i32 %136 to i64
  %137 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx89 = getelementptr inbounds i32, i32* %137, i64 %idxprom88
  %138 = load i32, i32* %arrayidx89, align 4, !tbaa !1
  store i32 %138, i32* %v, align 4, !tbaa !1
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %add90 = add nsw i32 %139, 1
  %idxprom91 = sext i32 %add90 to i64
  %140 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx92 = getelementptr inbounds i32, i32* %140, i64 %idxprom91
  %141 = load i32, i32* %arrayidx92, align 4, !tbaa !1
  store i32 %141, i32* %w, align 4, !tbaa !1
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %add93 = add nsw i32 %142, 2
  %idxprom94 = sext i32 %add93 to i64
  %143 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx95 = getelementptr inbounds i32, i32* %143, i64 %idxprom94
  %144 = load i32, i32* %arrayidx95, align 4, !tbaa !1
  store i32 %144, i32* %x, align 4, !tbaa !1
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %add96 = add nsw i32 %145, 3
  %idxprom97 = sext i32 %add96 to i64
  %146 = load i32*, i32** %ix.addr, align 8, !tbaa !5
  %arrayidx98 = getelementptr inbounds i32, i32* %146, i64 %idxprom97
  %147 = load i32, i32* %arrayidx98, align 4, !tbaa !1
  store i32 %147, i32* %y, align 4, !tbaa !1
  %148 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %149 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %count1table_select = getelementptr inbounds %struct.gr_info, %struct.gr_info* %149, i32 0, i32 14
  %150 = load i32, i32* %count1table_select, align 4, !tbaa !52
  %add99 = add i32 %150, 32
  %idxprom100 = zext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [34 x %struct.huffcodetab], [34 x %struct.huffcodetab]* @ht, i32 0, i64 %idxprom100
  %151 = load i32, i32* %v, align 4, !tbaa !1
  %152 = load i32, i32* %w, align 4, !tbaa !1
  %153 = load i32, i32* %x, align 4, !tbaa !1
  %154 = load i32, i32* %y, align 4, !tbaa !1
  %call102 = call i32 @L3_huffman_coder_count1(%struct.BF_PartHolder** %148, %struct.huffcodetab* %arrayidx101, i32 %151, i32 %152, i32 %153, i32 %154)
  %155 = load i32, i32* %bitsWritten, align 4, !tbaa !1
  %add103 = add nsw i32 %155, %call102
  store i32 %add103, i32* %bitsWritten, align 4, !tbaa !1
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.87
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %add105 = add nsw i32 %156, 4
  store i32 %add105, i32* %i, align 4, !tbaa !1
  br label %for.cond.85

for.end.106:                                      ; preds = %for.cond.85
  %157 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %part2_3_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %157, i32 0, i32 0
  %158 = load i32, i32* %part2_3_length, align 4, !tbaa !40
  %159 = load %struct.gr_info*, %struct.gr_info** %gi.addr, align 8, !tbaa !5
  %part2_length = getelementptr inbounds %struct.gr_info, %struct.gr_info* %159, i32 0, i32 15
  %160 = load i32, i32* %part2_length, align 4, !tbaa !61
  %sub = sub i32 %158, %160
  %161 = load i32, i32* %bitsWritten, align 4, !tbaa !1
  %sub107 = sub i32 %sub, %161
  store i32 %sub107, i32* %stuffingBits, align 4, !tbaa !1
  %tobool108 = icmp ne i32 %sub107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.119

if.then.109:                                      ; preds = %for.end.106
  %162 = bitcast i32* %stuffingWords to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #2
  %163 = load i32, i32* %stuffingBits, align 4, !tbaa !1
  %div = sdiv i32 %163, 32
  store i32 %div, i32* %stuffingWords, align 4, !tbaa !1
  %164 = bitcast i32* %remainingBits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #2
  %165 = load i32, i32* %stuffingBits, align 4, !tbaa !1
  %rem = srem i32 %165, 32
  store i32 %rem, i32* %remainingBits, align 4, !tbaa !1
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %167 = load i32, i32* %stuffingBits, align 4, !tbaa !1
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %167)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.109
  %169 = load i32, i32* %stuffingWords, align 4, !tbaa !1
  %dec = add nsw i32 %169, -1
  store i32 %dec, i32* %stuffingWords, align 4, !tbaa !1
  %tobool112 = icmp ne i32 %169, 0
  br i1 %tobool112, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %170 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %171 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %170, align 8, !tbaa !5
  %call113 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %171, i32 -1, i32 32)
  %172 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call113, %struct.BF_PartHolder** %172, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %173 = load i32, i32* %remainingBits, align 4, !tbaa !1
  %tobool114 = icmp ne i32 %173, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %while.end
  %174 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  %175 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %174, align 8, !tbaa !5
  %176 = load i32, i32* %remainingBits, align 4, !tbaa !1
  %call116 = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %175, i32 -1, i32 %176)
  %177 = load %struct.BF_PartHolder**, %struct.BF_PartHolder*** %pph.addr, align 8, !tbaa !5
  store %struct.BF_PartHolder* %call116, %struct.BF_PartHolder** %177, align 8, !tbaa !5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %while.end
  %178 = load i32, i32* %stuffingBits, align 4, !tbaa !1
  %179 = load i32, i32* %bitsWritten, align 4, !tbaa !1
  %add118 = add nsw i32 %179, %178
  store i32 %add118, i32* %bitsWritten, align 4, !tbaa !1
  %180 = bitcast i32* %remainingBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %stuffingWords to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.117, %for.end.106
  %182 = bitcast i32* %bitsWritten to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %ext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast i32* %stuffingBits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #2
  %186 = bitcast i32* %xbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i32* %cbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #2
  %188 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #2
  %189 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  %190 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #2
  %192 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %count1End to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast i32* %bigvalues to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32* %region2Start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %region1Start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.BF_PartHolder* @CRC_BF_addEntry(%struct.BF_PartHolder* %thePH, i32 %value, i32 %length) #0 {
entry:
  %thePH.addr = alloca %struct.BF_PartHolder*, align 8
  %value.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %bit = alloca i32, align 4
  store %struct.BF_PartHolder* %thePH, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !1
  %0 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %length.addr, align 4, !tbaa !1
  %shl = shl i32 1, %1
  store i32 %shl, i32* %bit, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %bit, align 4, !tbaa !1
  %shr = lshr i32 %2, 1
  store i32 %shr, i32* %bit, align 4, !tbaa !1
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @crc, align 4, !tbaa !1
  %shl1 = shl i32 %3, 1
  store i32 %shl1, i32* @crc, align 4, !tbaa !1
  %4 = load i32, i32* @crc, align 4, !tbaa !1
  %and = and i32 %4, 65536
  %tobool2 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %5 = load i32, i32* %value.addr, align 4, !tbaa !1
  %6 = load i32, i32* %bit, align 4, !tbaa !1
  %and3 = and i32 %5, %6
  %tobool4 = icmp ne i32 %and3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot.ext6 = zext i1 %lnot5 to i32
  %xor = xor i32 %lnot.ext, %lnot.ext6
  %tobool7 = icmp ne i32 %xor, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* @crc, align 4, !tbaa !1
  %xor8 = xor i32 %7, 32773
  store i32 %xor8, i32* @crc, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* @crc, align 4, !tbaa !1
  %and9 = and i32 %8, 65535
  store i32 %and9, i32* @crc, align 4, !tbaa !1
  %9 = load %struct.BF_PartHolder*, %struct.BF_PartHolder** %thePH.addr, align 8, !tbaa !5
  %10 = load i32, i32* %value.addr, align 4, !tbaa !1
  %11 = load i32, i32* %length.addr, align 4, !tbaa !1
  %call = call %struct.BF_PartHolder* @BF_addEntry(%struct.BF_PartHolder* %9, i32 %10, i32 %11)
  %12 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret %struct.BF_PartHolder* %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !3, i64 12, !3, i64 48}
!9 = !{!10, !2, i64 0}
!10 = !{!"BF_FrameData", !2, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !6, i64 24, !3, i64 32, !3, i64 48, !3, i64 80, !3, i64 112, !3, i64 144, !6, i64 176}
!11 = !{!12, !2, i64 200}
!12 = !{!"", !13, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !3, i64 120, !2, i64 124, !6, i64 128, !6, i64 136, !2, i64 144, !2, i64 148, !14, i64 152, !2, i64 156, !2, i64 160, !2, i64 164, !13, i64 168, !13, i64 176, !2, i64 184, !2, i64 188, !2, i64 192, !2, i64 196, !2, i64 200, !2, i64 204, !2, i64 208, !2, i64 212, !14, i64 216, !2, i64 220, !2, i64 224, !2, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !2, i64 248, !2, i64 252, !2, i64 256, !2, i64 260, !2, i64 264, !2, i64 268, !2, i64 272, !2, i64 276}
!13 = !{!"long", !3, i64 0}
!14 = !{!"float", !3, i64 0}
!15 = !{!10, !2, i64 4}
!16 = !{!12, !2, i64 204}
!17 = !{!10, !2, i64 8}
!18 = !{!19, !6, i64 8}
!19 = !{!"BF_PartHolder", !2, i64 0, !6, i64 8}
!20 = !{!10, !6, i64 16}
!21 = !{!10, !6, i64 24}
!22 = !{!10, !6, i64 176}
!23 = !{!24, !2, i64 8}
!24 = !{!"BF_FrameResults", !2, i64 0, !2, i64 4, !2, i64 8}
!25 = !{!8, !2, i64 0}
!26 = !{!27, !2, i64 0}
!27 = !{!"", !2, i64 0, !6, i64 8}
!28 = !{!12, !2, i64 192}
!29 = !{!12, !2, i64 60}
!30 = !{!12, !2, i64 220}
!31 = !{!12, !2, i64 224}
!32 = !{!12, !2, i64 196}
!33 = !{!12, !2, i64 68}
!34 = !{!12, !2, i64 36}
!35 = !{!12, !2, i64 228}
!36 = !{!12, !2, i64 52}
!37 = !{!12, !2, i64 56}
!38 = !{!12, !2, i64 164}
!39 = !{!8, !2, i64 4}
!40 = !{!41, !2, i64 0}
!41 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !3, i64 32, !3, i64 44, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !6, i64 96, !3, i64 104}
!42 = !{!41, !2, i64 4}
!43 = !{!41, !2, i64 12}
!44 = !{!41, !2, i64 16}
!45 = !{!41, !2, i64 20}
!46 = !{!41, !2, i64 24}
!47 = !{!41, !2, i64 28}
!48 = !{!41, !2, i64 56}
!49 = !{!41, !2, i64 60}
!50 = !{!41, !2, i64 64}
!51 = !{!41, !2, i64 68}
!52 = !{!41, !2, i64 72}
!53 = !{!41, !6, i64 96}
!54 = !{!55, !6, i64 8}
!55 = !{!"huffcodetab", !2, i64 0, !2, i64 4, !6, i64 8, !6, i64 16}
!56 = !{!13, !13, i64 0}
!57 = !{!55, !6, i64 16}
!58 = !{!3, !3, i64 0}
!59 = !{!55, !2, i64 0}
!60 = !{!41, !2, i64 8}
!61 = !{!41, !2, i64 76}
