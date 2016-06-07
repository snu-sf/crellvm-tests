; ModuleID = 'slice.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*, align 8
@input = external global %struct.InputParameters*, align 8
@stats = external global %struct.StatParameters*, align 8
@Bytes_After_Header = external global i32, align 4
@rddata_top_frame_mb = external global %struct.RD_DATA, align 8
@rdopt = external global %struct.RD_DATA*, align 8
@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [83 x i8] c"Error encoding first MB with spcified parameter, bits of current MB may be too big\00", align 1
@rddata_bot_frame_mb = external global %struct.RD_DATA, align 8
@rddata_top_field_mb = external global %struct.RD_DATA, align 8
@rddata_bot_field_mb = external global %struct.RD_DATA, align 8
@MBPairIsField = external global i32, align 4
@rpc_bits_to_go = external global i32, align 4
@rpc_bytes_to_go = external global i32, align 4
@log2_max_frame_num_minus4 = external global i32, align 4
@dpb = external global %struct.decoded_picture_buffer, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Too many slices per picture, increase MAXLSICESPERPICTURE in global.h.\00", align 1
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@listXsize = external global [6 x i32], align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@enc_frame_picture2 = external global %struct.storable_picture*, align 8
@Co_located = external global %struct.colocated_params*, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external global [21 x i32], align 16
@assignSE2partition = external global [2 x i32*], align 16
@assignSE2partition_DP = external global [21 x i32], align 16
@.str.3 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8

; Function Attrs: nounwind uwtable
define void @init_ref_pic_list_reordering() #0 {
entry:
  %currSlice = alloca %struct.Slice*, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 10
  store i32 0, i32* %ref_pic_list_reordering_flag_l0, align 4
  %3 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %3, i32 0, i32 14
  store i32 0, i32* %ref_pic_list_reordering_flag_l1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @start_slice() #0 {
entry:
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %header_len = alloca i32, align 4
  %i = alloca i32, align 4
  %NumberOfPartitions = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  store i32 0, i32* %header_len, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 61
  %3 = load i32, i32* %partition_mode, align 4
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 1, i32 3
  store i32 %cond, i32* %NumberOfPartitions, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 49
  %5 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %5, i32 0, i32 1
  %6 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %NumberOfPartitions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 55
  %8 = load i32, i32* %tr, align 4
  call void @RTPUpdateTimestamp(i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %NumberOfPartitions, align 4
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %12, i32 0, i32 6
  %13 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %13, i64 %idxprom
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %14 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %14, %struct.Bitstream** %currStream, align 8
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %write_flag = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 10
  store i32 0, i32* %write_flag, align 4
  %16 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %call = call i32 (i32, ...) bitcast (i32 (...)* @SliceHeader to i32 (i32, ...)*)(i32 0)
  %17 = load i32, i32* %header_len, align 4
  %add = add nsw i32 %17, %call
  store i32 %add, i32* %header_len, align 4
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %call4 = call i32 (i32, ...) bitcast (i32 (...)* @Partition_BC_Header to i32 (i32, ...)*)(i32 %18)
  %19 = load i32, i32* %header_len, align 4
  %add5 = add nsw i32 %19, %call4
  store i32 %add5, i32* %header_len, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 59
  %21 = load i32, i32* %symbol_mode, align 4
  %cmp7 = icmp eq i32 %21, 1
  br i1 %cmp7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %if.end.6
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr10 = getelementptr inbounds %struct.Slice, %struct.Slice* %23, i32 0, i32 6
  %24 = load %struct.datapartition*, %struct.datapartition** %partArr10, align 8
  %arrayidx11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %24, i64 %idxprom9
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx11, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %25 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %25, i32 0, i32 1
  %26 = load i32, i32* %bits_to_go, align 4
  %cmp12 = icmp ne i32 %26, 8
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.8
  %27 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %27, i32 0, i32 1
  %28 = load i32, i32* %bits_to_go14, align 4
  %29 = load i32, i32* %header_len, align 4
  %add15 = add nsw i32 %29, %28
  store i32 %add15, i32* %header_len, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.8
  %30 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  call void @writeVlcByteAlign(%struct.Bitstream* %30)
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %32 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %32, i32 0, i32 9
  %33 = load i8*, i8** %streamBuffer, align 8
  %34 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 0
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 6
  %36 = load i32, i32* %type, align 4
  call void @arienco_start_encoding(%struct.EncodingEnvironment* %31, i8* %33, i32* %byte_pos, i32 %36)
  call void (...) @cabac_new_slice()
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.6
  call void (...) @CAVLC_init()
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 59
  %39 = load i32, i32* %symbol_mode19, align 4
  %cmp20 = icmp eq i32 %39, 1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  call void (...) @init_contexts()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.end
  %40 = load i32, i32* %header_len, align 4
  ret i32 %40
}

declare void @RTPUpdateTimestamp(i32) #1

declare i32 @SliceHeader(...) #1

declare i32 @Partition_BC_Header(...) #1

declare void @writeVlcByteAlign(%struct.Bitstream*) #1

declare void @arienco_start_encoding(%struct.EncodingEnvironment*, i8*, i32*, i32) #1

declare void @cabac_new_slice(...) #1

declare void @CAVLC_init(...) #1

declare void @init_contexts(...) #1

; Function Attrs: nounwind uwtable
define i32 @terminate_slice() #0 {
entry:
  %bytes_written = alloca i32, align 4
  %currStream = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %eep = alloca %struct.EncodingEnvironment*, align 8
  %i = alloca i32, align 4
  %byte_pos_before_startcode_emu_prevention = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 50
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %1, %struct.Slice** %currSlice, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 59
  %3 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @write_terminating_bit(i16 signext 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 4
  %6 = load i32, i32* %max_part_nr, align 4
  %cmp1 = icmp slt i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 6
  %9 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %9, i64 %idxprom
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %10 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %10, %struct.Bitstream** %currStream, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 59
  %12 = load i32, i32* %symbol_mode2, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %13 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  call void @SODBtoRBSP(%struct.Bitstream* %13)
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 0
  %15 = load i32, i32* %byte_pos, align 4
  store i32 %15, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %16 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %16, i32 0, i32 9
  %17 = load i8*, i8** %streamBuffer, align 8
  %18 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos5 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %18, i32 0, i32 0
  %19 = load i32, i32* %byte_pos5, align 4
  %call = call i32 @RBSPtoEBSP(i8* %17, i32 0, i32 %19, i32 0)
  %20 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos6 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %20, i32 0, i32 0
  store i32 %call, i32* %byte_pos6, align 4
  %21 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %21, i32 0, i32 0
  %22 = load i32, i32* %byte_pos7, align 4
  %23 = load i32, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %sub = sub nsw i32 %22, %23
  %mul = mul nsw i32 %sub, 8
  %24 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %24, i32 0, i32 31
  %25 = load i32*, i32** %em_prev_bits, align 8
  %26 = load i32, i32* %25, align 4
  %add = add nsw i32 %26, %mul
  store i32 %add, i32* %25, align 4
  br label %if.end.22

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %27 to i64
  %28 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr9 = getelementptr inbounds %struct.Slice, %struct.Slice* %28, i32 0, i32 6
  %29 = load %struct.datapartition*, %struct.datapartition** %partArr9, align 8
  %arrayidx10 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %29, i64 %idxprom8
  %ee_cabac = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx10, i32 0, i32 1
  store %struct.EncodingEnvironment* %ee_cabac, %struct.EncodingEnvironment** %eep, align 8
  %30 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  call void @arienco_done_encoding(%struct.EncodingEnvironment* %30)
  %31 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %Ebits_to_go = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %31, i32 0, i32 3
  %32 = load i32, i32* %Ebits_to_go, align 4
  %33 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %33, i32 0, i32 1
  store i32 %32, i32* %bits_to_go, align 4
  %34 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %34, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  %35 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos11 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %35, i32 0, i32 0
  %36 = load i32, i32* %byte_pos11, align 4
  store i32 %36, i32* %bytes_written, align 4
  %37 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos12 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %37, i32 0, i32 0
  %38 = load i32, i32* %byte_pos12, align 4
  store i32 %38, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %39 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer13 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %39, i32 0, i32 9
  %40 = load i8*, i8** %streamBuffer13, align 8
  %41 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos14 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %41, i32 0, i32 0
  %42 = load i32, i32* %byte_pos14, align 4
  %43 = load %struct.EncodingEnvironment*, %struct.EncodingEnvironment** %eep, align 8
  %E = getelementptr inbounds %struct.EncodingEnvironment, %struct.EncodingEnvironment* %43, i32 0, i32 16
  %44 = load i32, i32* %E, align 4
  %call15 = call i32 @RBSPtoEBSP(i8* %40, i32 0, i32 %42, i32 %44)
  %45 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos16 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %45, i32 0, i32 0
  store i32 %call15, i32* %byte_pos16, align 4
  %46 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos17 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %46, i32 0, i32 0
  %47 = load i32, i32* %byte_pos17, align 4
  %48 = load i32, i32* %byte_pos_before_startcode_emu_prevention, align 4
  %sub18 = sub nsw i32 %47, %48
  %mul19 = mul nsw i32 %sub18, 8
  %49 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %em_prev_bits20 = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %49, i32 0, i32 31
  %50 = load i32*, i32** %em_prev_bits20, align 8
  %51 = load i32, i32* %50, align 4
  %add21 = add nsw i32 %51, %mul19
  store i32 %add21, i32* %50, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode23 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 59
  %54 = load i32, i32* %symbol_mode23, align 4
  %cmp24 = icmp eq i32 %54, 1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end
  call void (...) @store_contexts()
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.end
  ret i32 0
}

declare void @write_terminating_bit(i16 signext) #1

declare void @SODBtoRBSP(%struct.Bitstream*) #1

declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #1

declare void @arienco_done_encoding(%struct.EncodingEnvironment*) #1

declare void @store_contexts(...) #1

; Function Attrs: nounwind uwtable
define i32 @encode_one_slice(i32 %SliceGroupId, %struct.Picture* %pic) #0 {
entry:
  %SliceGroupId.addr = alloca i32, align 4
  %pic.addr = alloca %struct.Picture*, align 8
  %end_of_slice = alloca i32, align 4
  %recode_macroblock = alloca i32, align 4
  %len = alloca i32, align 4
  %NumberOfCodedMBs = alloca i32, align 4
  %CurrentMbAddr = alloca i32, align 4
  %FrameRDCost = alloca double, align 8
  %FieldRDCost = alloca double, align 8
  store i32 %SliceGroupId, i32* %SliceGroupId.addr, align 4
  store %struct.Picture* %pic, %struct.Picture** %pic.addr, align 8
  store i32 0, i32* %end_of_slice, align 4
  store i32 0, i32* %NumberOfCodedMBs, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cod_counter = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 27
  store i32 0, i32* %cod_counter, align 4
  %1 = load i32, i32* %SliceGroupId.addr, align 4
  %call = call i32 @FmoGetFirstMacroblockInSlice(i32 %1)
  store i32 %call, i32* %CurrentMbAddr, align 4
  %2 = load i32, i32* %CurrentMbAddr, align 4
  call void @init_slice(i32 %2)
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 50
  %4 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %4, i32 0, i32 6
  %5 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %5, i64 0
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %arrayidx, i32 0, i32 0
  %6 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 0
  %7 = load i32, i32* %byte_pos, align 4
  store i32 %7, i32* @Bytes_After_Header, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 59
  %9 = load i32, i32* %symbol_mode, align 4
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (...) @SetCtxModelNumber()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @start_slice()
  store i32 %call1, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 119
  %12 = load i32, i32* %NumberofHeaderBits, align 4
  %add = add nsw i32 %12, %10
  store i32 %add, i32* %NumberofHeaderBits, align 4
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %BasicUnit = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 139
  %14 = load i32, i32* %BasicUnit, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 136
  %16 = load i32, i32* %Frame_Total_Number_MB, align 4
  %cmp2 = icmp slt i32 %14, %16
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %17 = load i32, i32* %len, align 4
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 121
  %19 = load i32, i32* %NumberofBasicUnitHeaderBits, align 4
  %add4 = add nsw i32 %19, %17
  store i32 %add4, i32* %NumberofBasicUnitHeaderBits, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %20 = load i32, i32* %len, align 4
  %21 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_slice = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %21, i32 0, i32 6
  %22 = load i32, i32* %bit_slice, align 4
  %add6 = add nsw i32 %22, %20
  store i32 %add6, i32* %bit_slice, align 4
  %23 = load i32, i32* %len, align 4
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 6
  %25 = load i32, i32* %type, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_use_header = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %26, i32 0, i32 24
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %bit_use_header, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %27, %23
  store i32 %add8, i32* %arrayidx7, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.108, %if.end.5
  %28 = load i32, i32* %end_of_slice, align 4
  %cmp9 = icmp eq i32 %28, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 90
  %30 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.else.25, label %if.then.10

if.then.10:                                       ; preds = %while.body
  store i32 0, i32* %recode_macroblock, align 4
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8
  %31 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %31, i32 0)
  call void @encode_one_macroblock()
  call void @write_one_macroblock(i32 1)
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %32 = load i32, i32* %recode_macroblock, align 4
  %cmp11 = icmp eq i32 %32, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %33 = load i32, i32* %CurrentMbAddr, align 4
  %call13 = call i32 @FmoGetNextMBNr(i32 %33)
  store i32 %call13, i32* %CurrentMbAddr, align 4
  %34 = load i32, i32* %CurrentMbAddr, align 4
  %cmp14 = icmp eq i32 %34, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %35 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %NumberOfCodedMBs, align 4
  %36 = load i32, i32* %CurrentMbAddr, align 4
  call void (i32, ...) bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %36)
  br label %if.end.24

if.else:                                          ; preds = %if.then.10
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 3
  %38 = load i32, i32* %current_mb_nr, align 4
  %call17 = call i32 @FmoGetPreviousMBNr(i32 %38)
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 3
  store i32 %call17, i32* %current_mb_nr18, align 4
  %40 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %40, i32 0, i32 3
  %41 = load i32, i32* %current_mb_nr19, align 4
  %cmp20 = icmp eq i32 %41, -1
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.else
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i32 0, i32 0)) #4
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  br label %if.end.108

if.else.25:                                       ; preds = %while.body
  %42 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %42, i32 0, i32 92
  %43 = load i32, i32* %MbInterlace, align 4
  %cmp26 = icmp eq i32 %43, 2
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %if.else.25
  store i32 0, i32* %recode_macroblock, align 4
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 81
  store i32 0, i32* %field_mode, align 4
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 82
  store i32 0, i32* %top_field, align 4
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 140
  store i32 0, i32* %write_macroblock, align 4
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 141
  store i32 0, i32* %bot_MB, align 4
  %48 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %48, i32 0)
  store %struct.RD_DATA* @rddata_top_frame_mb, %struct.RD_DATA** @rdopt, align 8
  call void @encode_one_macroblock()
  %49 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %49, i32 0, i32 0
  %50 = load double, double* %min_rdcost, align 8
  store double %50, double* %FrameRDCost, align 8
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 141
  store i32 1, i32* %bot_MB28, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 81
  store i32 0, i32* %field_mode29, align 4
  %53 = load i32, i32* %CurrentMbAddr, align 4
  %add30 = add nsw i32 %53, 1
  call void @start_macroblock(i32 %add30, i32 0)
  store %struct.RD_DATA* @rddata_bot_frame_mb, %struct.RD_DATA** @rdopt, align 8
  call void @encode_one_macroblock()
  %54 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost31 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %54, i32 0, i32 0
  %55 = load double, double* %min_rdcost31, align 8
  %56 = load double, double* %FrameRDCost, align 8
  %add32 = fadd double %56, %55
  store double %add32, double* %FrameRDCost, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.27, %if.else.25
  %57 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %57, i32 0, i32 92
  %58 = load i32, i32* %MbInterlace34, align 4
  %cmp35 = icmp eq i32 %58, 2
  br i1 %cmp35, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %59 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace36 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %59, i32 0, i32 92
  %60 = load i32, i32* %MbInterlace36, align 4
  %cmp37 = icmp eq i32 %60, 1
  br i1 %cmp37, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.33
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 141
  store i32 0, i32* %bot_MB39, align 4
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 81
  store i32 1, i32* %field_mode40, align 4
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field41 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 82
  store i32 1, i32* %top_field41, align 4
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 84
  %65 = load i32, i32* %buf_cycle, align 4
  %shl = shl i32 %65, 1
  store i32 %shl, i32* %buf_cycle, align 4
  %66 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %66, i32 0, i32 9
  %67 = load i32, i32* %num_ref_frames, align 4
  %shl42 = shl i32 %67, 1
  store i32 %shl42, i32* %num_ref_frames, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 79
  %69 = load i32, i32* %num_ref_idx_l0_active, align 4
  %shl43 = shl i32 %69, 1
  store i32 %shl43, i32* %num_ref_idx_l0_active, align 4
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 79
  %71 = load i32, i32* %num_ref_idx_l0_active44, align 4
  %add45 = add nsw i32 %71, 1
  store i32 %add45, i32* %num_ref_idx_l0_active44, align 4
  %72 = load i32, i32* %CurrentMbAddr, align 4
  call void @start_macroblock(i32 %72, i32 1)
  store %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA** @rdopt, align 8
  call void @encode_one_macroblock()
  %73 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost46 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %73, i32 0, i32 0
  %74 = load double, double* %min_rdcost46, align 8
  store double %74, double* %FieldRDCost, align 8
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 141
  store i32 1, i32* %bot_MB47, align 4
  %76 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %76, i32 0, i32 82
  store i32 0, i32* %top_field48, align 4
  %77 = load i32, i32* %CurrentMbAddr, align 4
  %add49 = add nsw i32 %77, 1
  call void @start_macroblock(i32 %add49, i32 1)
  store %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA** @rdopt, align 8
  call void @encode_one_macroblock()
  %78 = load %struct.RD_DATA*, %struct.RD_DATA** @rdopt, align 8
  %min_rdcost50 = getelementptr inbounds %struct.RD_DATA, %struct.RD_DATA* %78, i32 0, i32 0
  %79 = load double, double* %min_rdcost50, align 8
  %80 = load double, double* %FieldRDCost, align 8
  %add51 = fadd double %80, %79
  store double %add51, double* %FieldRDCost, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.38, %lor.lhs.false
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock_frame = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 142
  store i32 0, i32* %write_macroblock_frame, align 4
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 92
  %83 = load i32, i32* %MbInterlace53, align 4
  %cmp54 = icmp eq i32 %83, 2
  br i1 %cmp54, label %land.lhs.true, label %if.else.65

land.lhs.true:                                    ; preds = %if.end.52
  %84 = load double, double* %FrameRDCost, align 8
  %85 = load double, double* %FieldRDCost, align 8
  %cmp55 = fcmp olt double %84, %85
  br i1 %cmp55, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %land.lhs.true
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode57 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 81
  store i32 0, i32* %field_mode57, align 4
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 84
  %88 = load i32, i32* %buf_cycle58, align 4
  %shr = ashr i32 %88, 1
  store i32 %shr, i32* %buf_cycle58, align 4
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames59 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 9
  %90 = load i32, i32* %num_ref_frames59, align 4
  %shr60 = ashr i32 %90, 1
  store i32 %shr60, i32* %num_ref_frames59, align 4
  store i32 0, i32* @MBPairIsField, align 4
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 79
  %92 = load i32, i32* %num_ref_idx_l0_active61, align 4
  %sub = sub nsw i32 %92, 1
  store i32 %sub, i32* %num_ref_idx_l0_active61, align 4
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active62 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 79
  %94 = load i32, i32* %num_ref_idx_l0_active62, align 4
  %shr63 = ashr i32 %94, 1
  store i32 %shr63, i32* %num_ref_idx_l0_active62, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock_frame64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 142
  store i32 1, i32* %write_macroblock_frame64, align 4
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true, %if.end.52
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 81
  store i32 1, i32* %field_mode66, align 4
  store i32 1, i32* @MBPairIsField, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.56
  %97 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %write_macroblock68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %97, i32 0, i32 140
  store i32 1, i32* %write_macroblock68, align 4
  %98 = load i32, i32* @MBPairIsField, align 4
  %tobool69 = icmp ne i32 %98, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.end.67
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 82
  store i32 1, i32* %top_field71, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %if.end.67
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 82
  store i32 0, i32* %top_field73, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.70
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB75 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 141
  store i32 0, i32* %bot_MB75, align 4
  %102 = load i32, i32* %CurrentMbAddr, align 4
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 81
  %104 = load i32, i32* %field_mode76, align 4
  call void @start_macroblock(i32 %102, i32 %104)
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode77 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 81
  %106 = load i32, i32* %field_mode77, align 4
  %tobool78 = icmp ne i32 %106, 0
  %cond = select i1 %tobool78, %struct.RD_DATA* @rddata_top_field_mb, %struct.RD_DATA* @rddata_top_frame_mb
  store %struct.RD_DATA* %cond, %struct.RD_DATA** @rdopt, align 8
  call void @copy_rdopt_data(i32 0)
  call void @write_one_macroblock(i32 1)
  %107 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc79 = add nsw i32 %107, 1
  store i32 %inc79, i32* %NumberOfCodedMBs, align 4
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %108 = load i32, i32* %CurrentMbAddr, align 4
  call void (i32, ...) bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %108)
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bot_MB80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 141
  store i32 1, i32* %bot_MB80, align 4
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field81 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 82
  store i32 0, i32* %top_field81, align 4
  %111 = load i32, i32* %CurrentMbAddr, align 4
  %add82 = add nsw i32 %111, 1
  %112 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %112, i32 0, i32 81
  %113 = load i32, i32* %field_mode83, align 4
  call void @start_macroblock(i32 %add82, i32 %113)
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode84 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 81
  %115 = load i32, i32* %field_mode84, align 4
  %tobool85 = icmp ne i32 %115, 0
  %cond86 = select i1 %tobool85, %struct.RD_DATA* @rddata_bot_field_mb, %struct.RD_DATA* @rddata_bot_frame_mb
  store %struct.RD_DATA* %cond86, %struct.RD_DATA** @rdopt, align 8
  call void @copy_rdopt_data(i32 1)
  call void @write_one_macroblock(i32 0)
  %116 = load i32, i32* %NumberOfCodedMBs, align 4
  %inc87 = add nsw i32 %116, 1
  store i32 %inc87, i32* %NumberOfCodedMBs, align 4
  call void @terminate_macroblock(i32* %end_of_slice, i32* %recode_macroblock)
  %117 = load i32, i32* %CurrentMbAddr, align 4
  call void (i32, ...) bitcast (void (...)* @proceed2nextMacroblock to void (i32, ...)*)(i32 %117)
  %118 = load i32, i32* @MBPairIsField, align 4
  %tobool88 = icmp ne i32 %118, 0
  br i1 %tobool88, label %if.then.89, label %if.end.98

if.then.89:                                       ; preds = %if.end.74
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %buf_cycle90 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 84
  %120 = load i32, i32* %buf_cycle90, align 4
  %shr91 = ashr i32 %120, 1
  store i32 %shr91, i32* %buf_cycle90, align 4
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %num_ref_frames92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 9
  %122 = load i32, i32* %num_ref_frames92, align 4
  %shr93 = ashr i32 %122, 1
  store i32 %shr93, i32* %num_ref_frames92, align 4
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active94 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 79
  %124 = load i32, i32* %num_ref_idx_l0_active94, align 4
  %sub95 = sub nsw i32 %124, 1
  store i32 %sub95, i32* %num_ref_idx_l0_active94, align 4
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 79
  %126 = load i32, i32* %num_ref_idx_l0_active96, align 4
  %shr97 = ashr i32 %126, 1
  store i32 %shr97, i32* %num_ref_idx_l0_active96, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.89, %if.end.74
  %127 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %top_field99 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %127, i32 0, i32 82
  store i32 0, i32* %top_field99, align 4
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_mode100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 81
  store i32 0, i32* %field_mode100, align 4
  %129 = load i32, i32* %CurrentMbAddr, align 4
  %call101 = call i32 @FmoGetNextMBNr(i32 %129)
  store i32 %call101, i32* %CurrentMbAddr, align 4
  %130 = load i32, i32* %CurrentMbAddr, align 4
  %call102 = call i32 @FmoGetNextMBNr(i32 %130)
  store i32 %call102, i32* %CurrentMbAddr, align 4
  %131 = load i32, i32* %CurrentMbAddr, align 4
  %132 = load i32, i32* %CurrentMbAddr, align 4
  %call103 = call i32 @FmoMB2SliceGroup(i32 %132)
  %call104 = call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call103)
  %cmp105 = icmp eq i32 %131, %call104
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.98
  store i32 1, i32* %end_of_slice, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.98
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call109 = call i32 @terminate_slice()
  %133 = load i32, i32* %NumberOfCodedMBs, align 4
  ret i32 %133
}

declare i32 @FmoGetFirstMacroblockInSlice(i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_slice(i32 %start_mb_addr) #0 {
entry:
  %start_mb_addr.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %currPic = alloca %struct.Picture*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %i100 = alloca i32, align 4
  %num_ref = alloca i32, align 4
  store i32 %start_mb_addr, i32* %start_mb_addr.addr, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 49
  %1 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  store %struct.Picture* %1, %struct.Picture** %currPic, align 8
  %2 = load i32, i32* %start_mb_addr.addr, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 3
  store i32 %2, i32* %current_mb_nr, align 4
  %4 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i32 0, i32 0
  %5 = load i32, i32* %no_slices, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %no_slices, align 4
  %6 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices1 = getelementptr inbounds %struct.Picture, %struct.Picture* %6, i32 0, i32 0
  %7 = load i32, i32* %no_slices1, align 4
  %cmp = icmp sge i32 %7, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i32 0, i32 0), i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.Slice* @malloc_slice()
  %8 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices2 = getelementptr inbounds %struct.Picture, %struct.Picture* %8, i32 0, i32 0
  %9 = load i32, i32* %no_slices2, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %10 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  store %struct.Slice* %call, %struct.Slice** %arrayidx, align 8
  %11 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %no_slices3 = getelementptr inbounds %struct.Picture, %struct.Picture* %11, i32 0, i32 0
  %12 = load i32, i32* %no_slices3, align 4
  %sub4 = sub nsw i32 %12, 1
  %idxprom5 = sext i32 %sub4 to i64
  %13 = load %struct.Picture*, %struct.Picture** %currPic, align 8
  %slices6 = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices6, i32 0, i64 %idxprom5
  %14 = load %struct.Slice*, %struct.Slice** %arrayidx7, align 8
  store %struct.Slice* %14, %struct.Slice** %currSlice, align 8
  %15 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 50
  store %struct.Slice* %15, %struct.Slice** %currentSlice, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %tr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 55
  %18 = load i32, i32* %tr, align 4
  %rem = srem i32 %18, 256
  %19 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %picture_id = getelementptr inbounds %struct.Slice, %struct.Slice* %19, i32 0, i32 0
  store i32 %rem, i32* %picture_id, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 10
  %21 = load i32, i32* %qp, align 4
  %22 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %qp8 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 1
  store i32 %21, i32* %qp8, align 4
  %23 = load i32, i32* %start_mb_addr.addr, align 4
  %24 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %start_mb_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %24, i32 0, i32 3
  store i32 %23, i32* %start_mb_nr, align 4
  %25 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %slice_too_big = getelementptr inbounds %struct.Slice, %struct.Slice* %25, i32 0, i32 18
  store i32 (i32)* @dummy_slice_too_big, i32 (i32)** %slice_too_big, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 4
  %28 = load i32, i32* %max_part_nr, align 4
  %cmp9 = icmp slt i32 %26, %28
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %29 to i64
  %30 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 6
  %31 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i64 %idxprom10
  store %struct.datapartition* %arrayidx11, %struct.datapartition** %dataPart, align 8
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 59
  %33 = load i32, i32* %symbol_mode, align 4
  %cmp12 = icmp eq i32 %33, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %34 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition, %struct.datapartition* %34, i32 0, i32 2
  store i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8
  br label %if.end.15

if.else:                                          ; preds = %for.body
  %35 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %writeSyntaxElement14 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %35, i32 0, i32 2
  store i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC, i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %36 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %36, i32 0, i32 0
  %37 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %37, %struct.Bitstream** %currStream, align 8
  %38 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bits_to_go = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %38, i32 0, i32 1
  store i32 8, i32* %bits_to_go, align 4
  %39 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_pos = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %39, i32 0, i32 0
  store i32 0, i32* %byte_pos, align 4
  %40 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %byte_buf = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %40, i32 0, i32 2
  store i8 0, i8* %byte_buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %41 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %41, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %42, i32 0, i32 17
  %43 = load i32, i32* %num_ref_idx_l0_active_minus1, align 4
  %add = add nsw i32 %43, 1
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 79
  store i32 %add, i32* %num_ref_idx_l0_active, align 4
  %45 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %45, i32 0, i32 18
  %46 = load i32, i32* %num_ref_idx_l1_active_minus1, align 4
  %add17 = add nsw i32 %46, 1
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 80
  store i32 %add17, i32* %num_ref_idx_l1_active, align 4
  %48 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %48, i32 0, i32 6
  %49 = load i32, i32* %type, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 7
  %51 = load i32, i32* %structure, align 4
  call void @init_lists(i32 %49, i32 %51)
  %52 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 79
  store i32 %52, i32* %num_ref_idx_l0_active18, align 4
  %54 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 80
  store i32 %54, i32* %num_ref_idx_l1_active19, align 4
  %56 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %56, i32 0, i32 6
  %57 = load i32, i32* %type20, align 4
  %cmp21 = icmp eq i32 %57, 0
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 6
  %59 = load i32, i32* %type22, align 4
  %cmp23 = icmp eq i32 %59, 3
  br i1 %cmp23, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.end
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 10
  %61 = load i32, i32* %P_List0_refs, align 4
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then.24, label %if.end.38

if.then.24:                                       ; preds = %land.lhs.true
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 79
  %63 = load i32, i32* %num_ref_idx_l0_active25, align 4
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 10
  %65 = load i32, i32* %P_List0_refs26, align 4
  %cmp27 = icmp slt i32 %63, %65
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.24
  %66 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %66, i32 0, i32 79
  %67 = load i32, i32* %num_ref_idx_l0_active28, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.24
  %68 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs29 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %68, i32 0, i32 10
  %69 = load i32, i32* %P_List0_refs29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ %69, %cond.false ]
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 79
  store i32 %cond, i32* %num_ref_idx_l0_active30, align 4
  %71 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 10
  %73 = load i32, i32* %P_List0_refs31, align 4
  %cmp32 = icmp slt i32 %71, %73
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  %74 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.end
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %P_List0_refs35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 10
  %76 = load i32, i32* %P_List0_refs35, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.33
  %cond37 = phi i32 [ %74, %cond.true.33 ], [ %76, %cond.false.34 ]
  store i32 %cond37, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.36, %land.lhs.true, %lor.lhs.false
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type39 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 6
  %78 = load i32, i32* %type39, align 4
  %cmp40 = icmp eq i32 %78, 1
  br i1 %cmp40, label %if.then.41, label %if.end.82

if.then.41:                                       ; preds = %if.end.38
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 11
  %80 = load i32, i32* %B_List0_refs, align 4
  %tobool42 = icmp ne i32 %80, 0
  br i1 %tobool42, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %if.then.41
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 79
  %82 = load i32, i32* %num_ref_idx_l0_active44, align 4
  %83 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs45 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %83, i32 0, i32 11
  %84 = load i32, i32* %B_List0_refs45, align 4
  %cmp46 = icmp slt i32 %82, %84
  br i1 %cmp46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.then.43
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 79
  %86 = load i32, i32* %num_ref_idx_l0_active48, align 4
  br label %cond.end.51

cond.false.49:                                    ; preds = %if.then.43
  %87 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %87, i32 0, i32 11
  %88 = load i32, i32* %B_List0_refs50, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.47
  %cond52 = phi i32 [ %86, %cond.true.47 ], [ %88, %cond.false.49 ]
  %89 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %89, i32 0, i32 79
  store i32 %cond52, i32* %num_ref_idx_l0_active53, align 4
  %90 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs54 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 11
  %92 = load i32, i32* %B_List0_refs54, align 4
  %cmp55 = icmp slt i32 %90, %92
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.end.51
  %93 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.end.51
  %94 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List0_refs58 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %94, i32 0, i32 11
  %95 = load i32, i32* %B_List0_refs58, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.56
  %cond60 = phi i32 [ %93, %cond.true.56 ], [ %95, %cond.false.57 ]
  store i32 %cond60, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end.59, %if.then.41
  %96 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %96, i32 0, i32 12
  %97 = load i32, i32* %B_List1_refs, align 4
  %tobool62 = icmp ne i32 %97, 0
  br i1 %tobool62, label %if.then.63, label %if.end.81

if.then.63:                                       ; preds = %if.end.61
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 80
  %99 = load i32, i32* %num_ref_idx_l1_active64, align 4
  %100 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %100, i32 0, i32 12
  %101 = load i32, i32* %B_List1_refs65, align 4
  %cmp66 = icmp slt i32 %99, %101
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %if.then.63
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 80
  %103 = load i32, i32* %num_ref_idx_l1_active68, align 4
  br label %cond.end.71

cond.false.69:                                    ; preds = %if.then.63
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs70 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 12
  %105 = load i32, i32* %B_List1_refs70, align 4
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.69, %cond.true.67
  %cond72 = phi i32 [ %103, %cond.true.67 ], [ %105, %cond.false.69 ]
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 80
  store i32 %cond72, i32* %num_ref_idx_l1_active73, align 4
  %107 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %108 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs74 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %108, i32 0, i32 12
  %109 = load i32, i32* %B_List1_refs74, align 4
  %cmp75 = icmp slt i32 %107, %109
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.71
  %110 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.end.71
  %111 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %B_List1_refs78 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %111, i32 0, i32 12
  %112 = load i32, i32* %B_List1_refs78, align 4
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.76
  %cond80 = phi i32 [ %110, %cond.true.76 ], [ %112, %cond.false.77 ]
  store i32 %cond80, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %if.end.61
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.38
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 113
  %114 = load i32, i32* %nal_reference_idc, align 4
  %tobool83 = icmp ne i32 %114, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.91

land.lhs.true.84:                                 ; preds = %if.end.82
  %115 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %115, i32 0, i32 55
  %116 = load i32, i32* %PyramidCoding, align 4
  %tobool85 = icmp ne i32 %116, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %land.lhs.true.84
  %117 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PocMemoryManagement = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %117, i32 0, i32 58
  %118 = load i32, i32* %PocMemoryManagement, align 4
  %tobool87 = icmp ne i32 %118, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.91

land.lhs.true.88:                                 ; preds = %land.lhs.true.86
  %119 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 3), align 4
  %cmp89 = icmp eq i32 %119, %120
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.88
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 105
  %122 = load i32, i32* %frame_num, align 4
  call void @poc_based_ref_management(i32 %122)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true.88, %land.lhs.true.86, %land.lhs.true.84, %if.end.82
  call void @init_ref_pic_list_reordering()
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 6
  %124 = load i32, i32* %type92, align 4
  %cmp93 = icmp eq i32 %124, 0
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.169

land.lhs.true.94:                                 ; preds = %if.end.91
  %125 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding95 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %125, i32 0, i32 55
  %126 = load i32, i32* %PyramidCoding95, align 4
  %tobool96 = icmp ne i32 %126, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.169

land.lhs.true.97:                                 ; preds = %land.lhs.true.94
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidRefReorder = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 57
  %128 = load i32, i32* %PyramidRefReorder, align 4
  %tobool98 = icmp ne i32 %128, 0
  br i1 %tobool98, label %if.then.99, label %if.end.169

if.then.99:                                       ; preds = %land.lhs.true.97
  %129 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  call void @alloc_ref_pic_list_reordering_buffer(%struct.Slice* %129)
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type101 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 6
  %131 = load i32, i32* %type101, align 4
  %cmp102 = icmp ne i32 %131, 2
  br i1 %cmp102, label %land.lhs.true.103, label %if.end.139

land.lhs.true.103:                                ; preds = %if.then.99
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 6
  %133 = load i32, i32* %type104, align 4
  %cmp105 = icmp ne i32 %133, 4
  br i1 %cmp105, label %if.then.106, label %if.end.139

if.then.106:                                      ; preds = %land.lhs.true.103
  store i32 0, i32* %i100, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.118, %if.then.106
  %134 = load i32, i32* %i100, align 4
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 79
  %136 = load i32, i32* %num_ref_idx_l0_active108, align 4
  %add109 = add nsw i32 %136, 1
  %cmp110 = icmp slt i32 %134, %add109
  br i1 %cmp110, label %for.body.111, label %for.end.120

for.body.111:                                     ; preds = %for.cond.107
  %137 = load i32, i32* %i100, align 4
  %idxprom112 = sext i32 %137 to i64
  %138 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %138, i32 0, i32 11
  %139 = load i32*, i32** %remapping_of_pic_nums_idc_l0, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %139, i64 %idxprom112
  store i32 3, i32* %arrayidx113, align 4
  %140 = load i32, i32* %i100, align 4
  %idxprom114 = sext i32 %140 to i64
  %141 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %141, i32 0, i32 12
  %142 = load i32*, i32** %abs_diff_pic_num_minus1_l0, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %142, i64 %idxprom114
  store i32 0, i32* %arrayidx115, align 4
  %143 = load i32, i32* %i100, align 4
  %idxprom116 = sext i32 %143 to i64
  %144 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %144, i32 0, i32 13
  %145 = load i32*, i32** %long_term_pic_idx_l0, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %145, i64 %idxprom116
  store i32 0, i32* %arrayidx117, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.111
  %146 = load i32, i32* %i100, align 4
  %inc119 = add nsw i32 %146, 1
  store i32 %inc119, i32* %i100, align 4
  br label %for.cond.107

for.end.120:                                      ; preds = %for.cond.107
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type121 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 6
  %148 = load i32, i32* %type121, align 4
  %cmp122 = icmp eq i32 %148, 1
  br i1 %cmp122, label %if.then.123, label %if.end.138

if.then.123:                                      ; preds = %for.end.120
  store i32 0, i32* %i100, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.135, %if.then.123
  %149 = load i32, i32* %i100, align 4
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active125 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 80
  %151 = load i32, i32* %num_ref_idx_l1_active125, align 4
  %add126 = add nsw i32 %151, 1
  %cmp127 = icmp slt i32 %149, %add126
  br i1 %cmp127, label %for.body.128, label %for.end.137

for.body.128:                                     ; preds = %for.cond.124
  %152 = load i32, i32* %i100, align 4
  %idxprom129 = sext i32 %152 to i64
  %153 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %153, i32 0, i32 15
  %154 = load i32*, i32** %remapping_of_pic_nums_idc_l1, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %154, i64 %idxprom129
  store i32 3, i32* %arrayidx130, align 4
  %155 = load i32, i32* %i100, align 4
  %idxprom131 = sext i32 %155 to i64
  %156 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %156, i32 0, i32 16
  %157 = load i32*, i32** %abs_diff_pic_num_minus1_l1, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %157, i64 %idxprom131
  store i32 0, i32* %arrayidx132, align 4
  %158 = load i32, i32* %i100, align 4
  %idxprom133 = sext i32 %158 to i64
  %159 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %159, i32 0, i32 17
  %160 = load i32*, i32** %long_term_pic_idx_l1, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %160, i64 %idxprom133
  store i32 0, i32* %arrayidx134, align 4
  br label %for.inc.135

for.inc.135:                                      ; preds = %for.body.128
  %161 = load i32, i32* %i100, align 4
  %inc136 = add nsw i32 %161, 1
  store i32 %inc136, i32* %i100, align 4
  br label %for.cond.124

for.end.137:                                      ; preds = %for.cond.124
  br label %if.end.138

if.end.138:                                       ; preds = %for.end.137, %for.end.120
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.103, %if.then.99
  %162 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %162, i32 0, i32 6
  %163 = load i32, i32* %type140, align 4
  %cmp141 = icmp ne i32 %163, 2
  br i1 %cmp141, label %land.lhs.true.142, label %if.end.168

land.lhs.true.142:                                ; preds = %if.end.139
  %164 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %164, i32 0, i32 6
  %165 = load i32, i32* %type143, align 4
  %cmp144 = icmp ne i32 %165, 4
  br i1 %cmp144, label %if.then.145, label %if.end.168

if.then.145:                                      ; preds = %land.lhs.true.142
  %166 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active146 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %166, i32 0, i32 79
  %167 = load i32, i32* %num_ref_idx_l0_active146, align 4
  store i32 %167, i32* %num_ref, align 4
  %168 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %169 = load i32, i32* %num_ref, align 4
  %170 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l0147 = getelementptr inbounds %struct.Slice, %struct.Slice* %170, i32 0, i32 11
  %171 = load i32*, i32** %remapping_of_pic_nums_idc_l0147, align 8
  %172 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0148 = getelementptr inbounds %struct.Slice, %struct.Slice* %172, i32 0, i32 12
  %173 = load i32*, i32** %abs_diff_pic_num_minus1_l0148, align 8
  %174 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0149 = getelementptr inbounds %struct.Slice, %struct.Slice* %174, i32 0, i32 13
  %175 = load i32*, i32** %long_term_pic_idx_l0149, align 8
  call void @poc_ref_pic_reorder(%struct.storable_picture** %168, i32 %169, i32* %171, i32* %173, i32* %175, i32 0, i32 0)
  %176 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 79
  %178 = load i32, i32* %num_ref_idx_l0_active150, align 4
  %sub151 = sub nsw i32 %178, 1
  %179 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l0152 = getelementptr inbounds %struct.Slice, %struct.Slice* %179, i32 0, i32 11
  %180 = load i32*, i32** %remapping_of_pic_nums_idc_l0152, align 8
  %181 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l0153 = getelementptr inbounds %struct.Slice, %struct.Slice* %181, i32 0, i32 12
  %182 = load i32*, i32** %abs_diff_pic_num_minus1_l0153, align 8
  %183 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l0154 = getelementptr inbounds %struct.Slice, %struct.Slice* %183, i32 0, i32 13
  %184 = load i32*, i32** %long_term_pic_idx_l0154, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %176, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), i32 %sub151, i32* %180, i32* %182, i32* %184)
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type155 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 6
  %186 = load i32, i32* %type155, align 4
  %cmp156 = icmp eq i32 %186, 1
  br i1 %cmp156, label %if.then.157, label %if.end.167

if.then.157:                                      ; preds = %if.then.145
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 80
  %188 = load i32, i32* %num_ref_idx_l1_active158, align 4
  store i32 %188, i32* %num_ref, align 4
  %189 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %190 = load i32, i32* %num_ref, align 4
  %191 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l1159 = getelementptr inbounds %struct.Slice, %struct.Slice* %191, i32 0, i32 15
  %192 = load i32*, i32** %remapping_of_pic_nums_idc_l1159, align 8
  %193 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1160 = getelementptr inbounds %struct.Slice, %struct.Slice* %193, i32 0, i32 16
  %194 = load i32*, i32** %abs_diff_pic_num_minus1_l1160, align 8
  %195 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1161 = getelementptr inbounds %struct.Slice, %struct.Slice* %195, i32 0, i32 17
  %196 = load i32*, i32** %long_term_pic_idx_l1161, align 8
  call void @poc_ref_pic_reorder(%struct.storable_picture** %189, i32 %190, i32* %192, i32* %194, i32* %196, i32 0, i32 1)
  %197 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l1_active162 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 80
  %199 = load i32, i32* %num_ref_idx_l1_active162, align 4
  %sub163 = sub nsw i32 %199, 1
  %200 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %remapping_of_pic_nums_idc_l1164 = getelementptr inbounds %struct.Slice, %struct.Slice* %200, i32 0, i32 15
  %201 = load i32*, i32** %remapping_of_pic_nums_idc_l1164, align 8
  %202 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %abs_diff_pic_num_minus1_l1165 = getelementptr inbounds %struct.Slice, %struct.Slice* %202, i32 0, i32 16
  %203 = load i32*, i32** %abs_diff_pic_num_minus1_l1165, align 8
  %204 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %long_term_pic_idx_l1166 = getelementptr inbounds %struct.Slice, %struct.Slice* %204, i32 0, i32 17
  %205 = load i32*, i32** %long_term_pic_idx_l1166, align 8
  call void @reorder_ref_pic_list(%struct.storable_picture** %197, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), i32 %sub163, i32* %201, i32* %203, i32* %205)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.157, %if.then.145
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.142, %if.end.139
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %land.lhs.true.97, %land.lhs.true.94, %if.end.91
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 7
  %207 = load i32, i32* %structure170, align 4
  %cmp171 = icmp eq i32 %207, 0
  br i1 %cmp171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.169
  call void (...) @init_mbaff_lists()
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.end.169
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 6
  %209 = load i32, i32* %type174, align 4
  %cmp175 = icmp ne i32 %209, 2
  br i1 %cmp175, label %land.lhs.true.176, label %if.end.202

land.lhs.true.176:                                ; preds = %if.end.173
  %210 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %210, i32 0, i32 19
  %211 = load i32, i32* %weighted_pred_flag, align 4
  %cmp177 = icmp eq i32 %211, 1
  br i1 %cmp177, label %if.then.183, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %land.lhs.true.176
  %212 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %212, i32 0, i32 20
  %213 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp179 = icmp ugt i32 %213, 0
  br i1 %cmp179, label %land.lhs.true.180, label %if.end.202

land.lhs.true.180:                                ; preds = %lor.lhs.false.178
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 6
  %215 = load i32, i32* %type181, align 4
  %cmp182 = icmp eq i32 %215, 1
  br i1 %cmp182, label %if.then.183, label %if.end.202

if.then.183:                                      ; preds = %land.lhs.true.180, %land.lhs.true.176
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type184 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 6
  %217 = load i32, i32* %type184, align 4
  %cmp185 = icmp eq i32 %217, 0
  br i1 %cmp185, label %if.then.189, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.then.183
  %218 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %218, i32 0, i32 6
  %219 = load i32, i32* %type187, align 4
  %cmp188 = icmp eq i32 %219, 3
  br i1 %cmp188, label %if.then.189, label %if.else.200

if.then.189:                                      ; preds = %lor.lhs.false.186, %if.then.183
  %220 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %220, i32 0, i32 15
  %221 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool190 = icmp ne i32 %221, 0
  br i1 %tobool190, label %land.lhs.true.191, label %if.else.198

land.lhs.true.191:                                ; preds = %if.then.189
  %222 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %222, i32 0, i32 49
  %223 = load i32, i32* %RDPictureDecision, align 4
  %tobool192 = icmp ne i32 %223, 0
  br i1 %tobool192, label %if.then.193, label %if.else.198

if.then.193:                                      ; preds = %land.lhs.true.191
  %224 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %225 = load %struct.storable_picture*, %struct.storable_picture** @enc_frame_picture2, align 8
  %cmp194 = icmp eq %struct.storable_picture* %224, %225
  br i1 %cmp194, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.then.193
  call void @estimate_weighting_factor_P_slice(i32 0)
  br label %if.end.197

if.else.196:                                      ; preds = %if.then.193
  call void @estimate_weighting_factor_P_slice(i32 1)
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.196, %if.then.195
  br label %if.end.199

if.else.198:                                      ; preds = %land.lhs.true.191, %if.then.189
  call void @estimate_weighting_factor_P_slice(i32 0)
  br label %if.end.199

if.end.199:                                       ; preds = %if.else.198, %if.end.197
  br label %if.end.201

if.else.200:                                      ; preds = %lor.lhs.false.186
  call void (...) @estimate_weighting_factor_B_slice()
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.200, %if.end.199
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %land.lhs.true.180, %lor.lhs.false.178, %if.end.173
  call void @set_ref_pic_num()
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 6
  %227 = load i32, i32* %type203, align 4
  %cmp204 = icmp eq i32 %227, 1
  br i1 %cmp204, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.end.202
  %228 = load %struct.colocated_params*, %struct.colocated_params** @Co_located, align 8
  call void @compute_colocated(%struct.colocated_params* %228, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i32 0))
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %if.end.202
  ret void
}

declare void @SetCtxModelNumber(...) #1

declare void @start_macroblock(i32, i32) #1

declare void @encode_one_macroblock() #1

declare void @write_one_macroblock(i32) #1

declare void @terminate_macroblock(i32*, i32*) #1

declare i32 @FmoGetNextMBNr(i32) #1

declare void @proceed2nextMacroblock(...) #1

declare i32 @FmoGetPreviousMBNr(i32) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #1

declare void @copy_rdopt_data(i32) #1

declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #1

declare i32 @FmoMB2SliceGroup(i32) #1

; Function Attrs: nounwind uwtable
define void @free_slice_list(%struct.Picture* %currPic) #0 {
entry:
  %currPic.addr = alloca %struct.Picture*, align 8
  %i = alloca i32, align 4
  store %struct.Picture* %currPic, %struct.Picture** %currPic.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %no_slices = getelementptr inbounds %struct.Picture, %struct.Picture* %1, i32 0, i32 0
  %2 = load i32, i32* %no_slices, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %slices = getelementptr inbounds %struct.Picture, %struct.Picture* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices, i32 0, i64 %idxprom
  %5 = load %struct.Slice*, %struct.Slice** %arrayidx, align 8
  call void @free_slice(%struct.Slice* %5)
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.Picture*, %struct.Picture** %currPic.addr, align 8
  %slices2 = getelementptr inbounds %struct.Picture, %struct.Picture* %7, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [100 x %struct.Slice*], [100 x %struct.Slice*]* %slices2, i32 0, i64 %idxprom1
  store %struct.Slice* null, %struct.Slice** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_slice(%struct.Slice* %slice) #0 {
entry:
  %slice.addr = alloca %struct.Slice*, align 8
  %i = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  store %struct.Slice* %slice, %struct.Slice** %slice.addr, align 8
  %0 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %cmp = icmp ne %struct.Slice* %0, null
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %2, i32 0, i32 4
  %3 = load i32, i32* %max_part_nr, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %5, i32 0, i32 6
  %6 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %6, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %7 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %cmp2 = icmp ne %struct.datapartition* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %9, i32 0, i32 9
  %10 = load i8*, i8** %streamBuffer, align 8
  %cmp4 = icmp ne i8* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %11 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream6 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %11, i32 0, i32 0
  %12 = load %struct.Bitstream*, %struct.Bitstream** %bitstream6, align 8
  %streamBuffer7 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %12, i32 0, i32 9
  %13 = load i8*, i8** %streamBuffer7, align 8
  call void @free(i8* %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  %14 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream8 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %14, i32 0, i32 0
  %15 = load %struct.Bitstream*, %struct.Bitstream** %bitstream8, align 8
  %cmp9 = icmp ne %struct.Bitstream* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %16 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream11 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %16, i32 0, i32 0
  %17 = load %struct.Bitstream*, %struct.Bitstream** %bitstream11, align 8
  %18 = bitcast %struct.Bitstream* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr14 = getelementptr inbounds %struct.Slice, %struct.Slice* %20, i32 0, i32 6
  %21 = load %struct.datapartition*, %struct.datapartition** %partArr14, align 8
  %cmp15 = icmp ne %struct.datapartition* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %22 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %partArr17 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 6
  %23 = load %struct.datapartition*, %struct.datapartition** %partArr17, align 8
  %24 = bitcast %struct.datapartition* %23 to i8*
  call void @free(i8* %24) #4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 59
  %26 = load i32, i32* %symbol_mode, align 4
  %cmp19 = icmp eq i32 %26, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %27 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 7
  %28 = load %struct.MotionInfoContexts*, %struct.MotionInfoContexts** %mot_ctx, align 8
  call void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %28)
  %29 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %29, i32 0, i32 8
  %30 = load %struct.TextureInfoContexts*, %struct.TextureInfoContexts** %tex_ctx, align 8
  call void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %30)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %31 = load %struct.Slice*, %struct.Slice** %slice.addr, align 8
  %32 = bitcast %struct.Slice* %31 to i8*
  call void @free(i8* %32) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @modify_redundant_pic_cnt(i8* %buffer) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i32, i32* @rpc_bits_to_go, align 4
  %sub = sub nsw i32 %0, 1
  %shl = shl i32 1, %sub
  %conv = trunc i32 %shl to i8
  store i8 %conv, i8* %tmp, align 1
  %1 = load i8, i8* %tmp, align 1
  %conv1 = zext i8 %1 to i32
  %2 = load i32, i32* @rpc_bytes_to_go, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %4 to i32
  %or = or i32 %conv2, %conv1
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @poc_ref_pic_reorder(%struct.storable_picture** %list, i32 %num_ref_idx_lX_active, i32* %remapping_of_pic_nums_idc, i32* %abs_diff_pic_num_minus1, i32* %long_term_pic_idx, i32 %weighted_prediction, i32 %list_no) #0 {
entry:
  %list.addr = alloca %struct.storable_picture**, align 8
  %num_ref_idx_lX_active.addr = alloca i32, align 4
  %remapping_of_pic_nums_idc.addr = alloca i32*, align 8
  %abs_diff_pic_num_minus1.addr = alloca i32*, align 8
  %long_term_pic_idx.addr = alloca i32*, align 8
  %weighted_prediction.addr = alloca i32, align 4
  %list_no.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %currPicNum = alloca i32, align 4
  %picNumLXPred = alloca i32, align 4
  %default_order = alloca [32 x i32], align 16
  %re_order = alloca [32 x i32], align 16
  %tmp_reorder = alloca [32 x i32], align 16
  %list_sign = alloca [32 x i32], align 16
  %reorder_stop = alloca i32, align 4
  %no_reorder = alloca i32, align 4
  %poc_diff = alloca [32 x i32], align 16
  %tmp_value = alloca i32, align 4
  %diff = alloca i32, align 4
  %abs_poc_dist = alloca i32, align 4
  %maxPicNum = alloca i32, align 4
  %MaxFrameNum = alloca i32, align 4
  store %struct.storable_picture** %list, %struct.storable_picture*** %list.addr, align 8
  store i32 %num_ref_idx_lX_active, i32* %num_ref_idx_lX_active.addr, align 4
  store i32* %remapping_of_pic_nums_idc, i32** %remapping_of_pic_nums_idc.addr, align 8
  store i32* %abs_diff_pic_num_minus1, i32** %abs_diff_pic_num_minus1.addr, align 8
  store i32* %long_term_pic_idx, i32** %long_term_pic_idx.addr, align 8
  store i32 %weighted_prediction, i32* %weighted_prediction.addr, align 4
  store i32 %list_no, i32* %list_no.addr, align 4
  %0 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add = add i32 %0, 4
  %shl = shl i32 1, %add
  store i32 %shl, i32* %MaxFrameNum, align 4
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 7
  %2 = load i32, i32* %structure, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %MaxFrameNum, align 4
  store i32 %3, i32* %maxPicNum, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 105
  %5 = load i32, i32* %frame_num, align 4
  store i32 %5, i32* %currPicNum, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %MaxFrameNum, align 4
  %mul = mul nsw i32 2, %6
  store i32 %mul, i32* %maxPicNum, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num1 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 105
  %8 = load i32, i32* %frame_num1, align 4
  %mul2 = mul i32 2, %8
  %add3 = add i32 %mul2, 1
  store i32 %add3, i32* %currPicNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %currPicNum, align 4
  store i32 %9, i32* %picNumLXPred, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp4 = icmp ult i32 %10, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.storable_picture**, %struct.storable_picture*** %list.addr, align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %13, i64 %idxprom
  %14 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 11
  %15 = load i32, i32* %pic_num, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom5
  store i32 %15, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.64, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %cmp8 = icmp ult i32 %18, %19
  br i1 %cmp8, label %for.body.9, label %for.end.66

for.body.9:                                       ; preds = %for.cond.7
  %20 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %20 to i64
  %21 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx11 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %21, i64 %idxprom10
  %22 = load %struct.frame_store*, %struct.frame_store** %arrayidx11, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %22, i32 0, i32 10
  %23 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %pic_num12 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 11
  %24 = load i32, i32* %pic_num12, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom13
  store i32 %24, i32* %arrayidx14, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %26 to i64
  %27 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx16 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %27, i64 %idxprom15
  %28 = load %struct.frame_store*, %struct.frame_store** %arrayidx16, align 8
  %is_used = getelementptr inbounds %struct.frame_store, %struct.frame_store* %28, i32 0, i32 0
  %29 = load i32, i32* %is_used, align 4
  %cmp17 = icmp eq i32 %29, 3
  br i1 %cmp17, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %for.body.9
  %30 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %30 to i64
  %31 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx19 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %31, i64 %idxprom18
  %32 = load %struct.frame_store*, %struct.frame_store** %arrayidx19, align 8
  %frame20 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %32, i32 0, i32 10
  %33 = load %struct.storable_picture*, %struct.storable_picture** %frame20, align 8
  %used_for_reference = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %33, i32 0, i32 15
  %34 = load i32, i32* %used_for_reference, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %land.lhs.true.21, label %if.end.63

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %35 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %35 to i64
  %36 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx23 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %36, i64 %idxprom22
  %37 = load %struct.frame_store*, %struct.frame_store** %arrayidx23, align 8
  %frame24 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %37, i32 0, i32 10
  %38 = load %struct.storable_picture*, %struct.storable_picture** %frame24, align 8
  %is_long_term = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 14
  %39 = load i32, i32* %is_long_term, align 4
  %tobool25 = icmp ne i32 %39, 0
  br i1 %tobool25, label %if.end.63, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.21
  %40 = load i32, i32* %i, align 4
  %idxprom27 = zext i32 %40 to i64
  %41 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx28 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %41, i64 %idxprom27
  %42 = load %struct.frame_store*, %struct.frame_store** %arrayidx28, align 8
  %frame29 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %42, i32 0, i32 10
  %43 = load %struct.storable_picture*, %struct.storable_picture** %frame29, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 1
  %44 = load i32, i32* %poc, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc30 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 1
  %46 = load i32, i32* %poc30, align 4
  %sub = sub nsw i32 %44, %46
  %call = call i32 @abs(i32 %sub) #5
  store i32 %call, i32* %abs_poc_dist, align 4
  %47 = load i32, i32* %abs_poc_dist, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %48 to i64
  %arrayidx32 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom31
  store i32 %47, i32* %arrayidx32, align 4
  %49 = load i32, i32* %list_no.addr, align 4
  %cmp33 = icmp eq i32 %49, 0
  br i1 %cmp33, label %if.then.34, label %if.else.48

if.then.34:                                       ; preds = %if.then.26
  %50 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %50, i32 0, i32 1
  %51 = load i32, i32* %poc35, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom36 = zext i32 %52 to i64
  %53 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx37 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %53, i64 %idxprom36
  %54 = load %struct.frame_store*, %struct.frame_store** %arrayidx37, align 8
  %frame38 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %54, i32 0, i32 10
  %55 = load %struct.storable_picture*, %struct.storable_picture** %frame38, align 8
  %poc39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %55, i32 0, i32 1
  %56 = load i32, i32* %poc39, align 4
  %cmp40 = icmp slt i32 %51, %56
  br i1 %cmp40, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.then.34
  %57 = load i32, i32* %i, align 4
  %idxprom42 = zext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom42
  store i32 1, i32* %arrayidx43, align 4
  br label %if.end.47

if.else.44:                                       ; preds = %if.then.34
  %58 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %58 to i64
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom45
  store i32 -1, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.41
  br label %if.end.62

if.else.48:                                       ; preds = %if.then.26
  %59 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc49 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 1
  %60 = load i32, i32* %poc49, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom50 = zext i32 %61 to i64
  %62 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 1), align 8
  %arrayidx51 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %62, i64 %idxprom50
  %63 = load %struct.frame_store*, %struct.frame_store** %arrayidx51, align 8
  %frame52 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %63, i32 0, i32 10
  %64 = load %struct.storable_picture*, %struct.storable_picture** %frame52, align 8
  %poc53 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %64, i32 0, i32 1
  %65 = load i32, i32* %poc53, align 4
  %cmp54 = icmp sgt i32 %60, %65
  br i1 %cmp54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.else.48
  %66 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %66 to i64
  %arrayidx57 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom56
  store i32 1, i32* %arrayidx57, align 4
  br label %if.end.61

if.else.58:                                       ; preds = %if.else.48
  %67 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %67 to i64
  %arrayidx60 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom59
  store i32 -1, i32* %arrayidx60, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.47
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.21, %land.lhs.true, %for.body.9
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %68 = load i32, i32* %i, align 4
  %inc65 = add i32 %68, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.7

for.end.66:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.120, %for.end.66
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %sub68 = sub i32 %70, 1
  %cmp69 = icmp ult i32 %69, %sub68
  br i1 %cmp69, label %for.body.70, label %for.end.122

for.body.70:                                      ; preds = %for.cond.67
  %71 = load i32, i32* %i, align 4
  %add71 = add i32 %71, 1
  store i32 %add71, i32* %j, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.117, %for.body.70
  %72 = load i32, i32* %j, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 4
  %cmp73 = icmp ult i32 %72, %73
  br i1 %cmp73, label %for.body.74, label %for.end.119

for.body.74:                                      ; preds = %for.cond.72
  %74 = load i32, i32* %i, align 4
  %idxprom75 = zext i32 %74 to i64
  %arrayidx76 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom75
  %75 = load i32, i32* %arrayidx76, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom77 = zext i32 %76 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom77
  %77 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp sgt i32 %75, %77
  br i1 %cmp79, label %if.then.91, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.74
  %78 = load i32, i32* %i, align 4
  %idxprom80 = zext i32 %78 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom80
  %79 = load i32, i32* %arrayidx81, align 4
  %80 = load i32, i32* %j, align 4
  %idxprom82 = zext i32 %80 to i64
  %arrayidx83 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom82
  %81 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp eq i32 %79, %81
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.116

land.lhs.true.85:                                 ; preds = %lor.lhs.false
  %82 = load i32, i32* %j, align 4
  %idxprom86 = zext i32 %82 to i64
  %arrayidx87 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom86
  %83 = load i32, i32* %arrayidx87, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom88 = zext i32 %84 to i64
  %arrayidx89 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom88
  %85 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp sgt i32 %83, %85
  br i1 %cmp90, label %if.then.91, label %if.end.116

if.then.91:                                       ; preds = %land.lhs.true.85, %for.body.74
  %86 = load i32, i32* %i, align 4
  %idxprom92 = zext i32 %86 to i64
  %arrayidx93 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom92
  %87 = load i32, i32* %arrayidx93, align 4
  store i32 %87, i32* %tmp_value, align 4
  %88 = load i32, i32* %j, align 4
  %idxprom94 = zext i32 %88 to i64
  %arrayidx95 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom94
  %89 = load i32, i32* %arrayidx95, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %90 to i64
  %arrayidx97 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom96
  store i32 %89, i32* %arrayidx97, align 4
  %91 = load i32, i32* %tmp_value, align 4
  %92 = load i32, i32* %j, align 4
  %idxprom98 = zext i32 %92 to i64
  %arrayidx99 = getelementptr inbounds [32 x i32], [32 x i32]* %poc_diff, i32 0, i64 %idxprom98
  store i32 %91, i32* %arrayidx99, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %93 to i64
  %arrayidx101 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom100
  %94 = load i32, i32* %arrayidx101, align 4
  store i32 %94, i32* %tmp_value, align 4
  %95 = load i32, i32* %j, align 4
  %idxprom102 = zext i32 %95 to i64
  %arrayidx103 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom102
  %96 = load i32, i32* %arrayidx103, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom104 = zext i32 %97 to i64
  %arrayidx105 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom104
  store i32 %96, i32* %arrayidx105, align 4
  %98 = load i32, i32* %tmp_value, align 4
  %99 = load i32, i32* %j, align 4
  %idxprom106 = zext i32 %99 to i64
  %arrayidx107 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom106
  store i32 %98, i32* %arrayidx107, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom108 = zext i32 %100 to i64
  %arrayidx109 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom108
  %101 = load i32, i32* %arrayidx109, align 4
  store i32 %101, i32* %tmp_value, align 4
  %102 = load i32, i32* %j, align 4
  %idxprom110 = zext i32 %102 to i64
  %arrayidx111 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom110
  %103 = load i32, i32* %arrayidx111, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom112 = zext i32 %104 to i64
  %arrayidx113 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom112
  store i32 %103, i32* %arrayidx113, align 4
  %105 = load i32, i32* %tmp_value, align 4
  %106 = load i32, i32* %j, align 4
  %idxprom114 = zext i32 %106 to i64
  %arrayidx115 = getelementptr inbounds [32 x i32], [32 x i32]* %list_sign, i32 0, i64 %idxprom114
  store i32 %105, i32* %arrayidx115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.91, %land.lhs.true.85, %lor.lhs.false
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %107 = load i32, i32* %j, align 4
  %inc118 = add i32 %107, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.72

for.end.119:                                      ; preds = %for.cond.72
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119
  %108 = load i32, i32* %i, align 4
  %inc121 = add i32 %108, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.67

for.end.122:                                      ; preds = %for.cond.67
  store i32 1, i32* %no_reorder, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.133, %for.end.122
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp124 = icmp ult i32 %109, %110
  br i1 %cmp124, label %for.body.125, label %for.end.135

for.body.125:                                     ; preds = %for.cond.123
  %111 = load i32, i32* %i, align 4
  %idxprom126 = zext i32 %111 to i64
  %arrayidx127 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom126
  %112 = load i32, i32* %arrayidx127, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom128 = zext i32 %113 to i64
  %arrayidx129 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom128
  %114 = load i32, i32* %arrayidx129, align 4
  %cmp130 = icmp ne i32 %112, %114
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %for.body.125
  store i32 0, i32* %no_reorder, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %for.body.125
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %115 = load i32, i32* %i, align 4
  %inc134 = add i32 %115, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.123

for.end.135:                                      ; preds = %for.cond.123
  %116 = load i32, i32* %no_reorder, align 4
  %cmp136 = icmp eq i32 %116, 0
  br i1 %cmp136, label %if.then.137, label %if.end.240

if.then.137:                                      ; preds = %for.end.135
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.220, %if.then.137
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp139 = icmp ult i32 %117, %118
  br i1 %cmp139, label %for.body.140, label %for.end.222

for.body.140:                                     ; preds = %for.cond.138
  %119 = load i32, i32* %i, align 4
  %idxprom141 = zext i32 %119 to i64
  %arrayidx142 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom141
  %120 = load i32, i32* %arrayidx142, align 4
  %121 = load i32, i32* %picNumLXPred, align 4
  %sub143 = sub nsw i32 %120, %121
  store i32 %sub143, i32* %diff, align 4
  %122 = load i32, i32* %diff, align 4
  %cmp144 = icmp sle i32 %122, 0
  br i1 %cmp144, label %if.then.145, label %if.else.160

if.then.145:                                      ; preds = %for.body.140
  %123 = load i32, i32* %i, align 4
  %idxprom146 = zext i32 %123 to i64
  %124 = load i32*, i32** %remapping_of_pic_nums_idc.addr, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %124, i64 %idxprom146
  store i32 0, i32* %arrayidx147, align 4
  %125 = load i32, i32* %diff, align 4
  %call148 = call i32 @abs(i32 %125) #5
  %sub149 = sub nsw i32 %call148, 1
  %126 = load i32, i32* %i, align 4
  %idxprom150 = zext i32 %126 to i64
  %127 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %127, i64 %idxprom150
  store i32 %sub149, i32* %arrayidx151, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom152 = zext i32 %128 to i64
  %129 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %129, i64 %idxprom152
  %130 = load i32, i32* %arrayidx153, align 4
  %cmp154 = icmp slt i32 %130, 0
  br i1 %cmp154, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.then.145
  %131 = load i32, i32* %maxPicNum, align 4
  %sub156 = sub nsw i32 %131, 1
  %132 = load i32, i32* %i, align 4
  %idxprom157 = zext i32 %132 to i64
  %133 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %133, i64 %idxprom157
  store i32 %sub156, i32* %arrayidx158, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.155, %if.then.145
  br label %if.end.167

if.else.160:                                      ; preds = %for.body.140
  %134 = load i32, i32* %i, align 4
  %idxprom161 = zext i32 %134 to i64
  %135 = load i32*, i32** %remapping_of_pic_nums_idc.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %135, i64 %idxprom161
  store i32 1, i32* %arrayidx162, align 4
  %136 = load i32, i32* %diff, align 4
  %call163 = call i32 @abs(i32 %136) #5
  %sub164 = sub nsw i32 %call163, 1
  %137 = load i32, i32* %i, align 4
  %idxprom165 = zext i32 %137 to i64
  %138 = load i32*, i32** %abs_diff_pic_num_minus1.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %138, i64 %idxprom165
  store i32 %sub164, i32* %arrayidx166, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.160, %if.end.159
  %139 = load i32, i32* %i, align 4
  %idxprom168 = zext i32 %139 to i64
  %arrayidx169 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom168
  %140 = load i32, i32* %arrayidx169, align 4
  store i32 %140, i32* %picNumLXPred, align 4
  %141 = load i32, i32* %i, align 4
  %idxprom170 = zext i32 %141 to i64
  %arrayidx171 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom170
  %142 = load i32, i32* %arrayidx171, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom172 = zext i32 %143 to i64
  %arrayidx173 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom172
  store i32 %142, i32* %arrayidx173, align 4
  %144 = load i32, i32* %i, align 4
  store i32 %144, i32* %k, align 4
  %145 = load i32, i32* %i, align 4
  store i32 %145, i32* %j, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.189, %if.end.167
  %146 = load i32, i32* %j, align 4
  %147 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp175 = icmp ult i32 %146, %147
  br i1 %cmp175, label %for.body.176, label %for.end.191

for.body.176:                                     ; preds = %for.cond.174
  %148 = load i32, i32* %j, align 4
  %idxprom177 = zext i32 %148 to i64
  %arrayidx178 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom177
  %149 = load i32, i32* %arrayidx178, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom179 = zext i32 %150 to i64
  %arrayidx180 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom179
  %151 = load i32, i32* %arrayidx180, align 4
  %cmp181 = icmp ne i32 %149, %151
  br i1 %cmp181, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %for.body.176
  %152 = load i32, i32* %k, align 4
  %inc183 = add i32 %152, 1
  store i32 %inc183, i32* %k, align 4
  %153 = load i32, i32* %j, align 4
  %idxprom184 = zext i32 %153 to i64
  %arrayidx185 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom184
  %154 = load i32, i32* %arrayidx185, align 4
  %155 = load i32, i32* %k, align 4
  %idxprom186 = zext i32 %155 to i64
  %arrayidx187 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom186
  store i32 %154, i32* %arrayidx187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %for.body.176
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %156 = load i32, i32* %j, align 4
  %inc190 = add i32 %156, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.174

for.end.191:                                      ; preds = %for.cond.174
  store i32 1, i32* %reorder_stop, align 4
  %157 = load i32, i32* %i, align 4
  %add192 = add i32 %157, 1
  store i32 %add192, i32* %j, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.203, %for.end.191
  %158 = load i32, i32* %j, align 4
  %159 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp194 = icmp ult i32 %158, %159
  br i1 %cmp194, label %for.body.195, label %for.end.205

for.body.195:                                     ; preds = %for.cond.193
  %160 = load i32, i32* %j, align 4
  %idxprom196 = zext i32 %160 to i64
  %arrayidx197 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom196
  %161 = load i32, i32* %arrayidx197, align 4
  %162 = load i32, i32* %j, align 4
  %idxprom198 = zext i32 %162 to i64
  %arrayidx199 = getelementptr inbounds [32 x i32], [32 x i32]* %re_order, i32 0, i64 %idxprom198
  %163 = load i32, i32* %arrayidx199, align 4
  %cmp200 = icmp ne i32 %161, %163
  br i1 %cmp200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %for.body.195
  store i32 0, i32* %reorder_stop, align 4
  br label %for.end.205

if.end.202:                                       ; preds = %for.body.195
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %164 = load i32, i32* %j, align 4
  %inc204 = add i32 %164, 1
  store i32 %inc204, i32* %j, align 4
  br label %for.cond.193

for.end.205:                                      ; preds = %if.then.201, %for.cond.193
  %165 = load i32, i32* %reorder_stop, align 4
  %cmp206 = icmp eq i32 %165, 1
  br i1 %cmp206, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %for.end.205
  %166 = load i32, i32* %i, align 4
  %inc208 = add i32 %166, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.end.222

if.end.209:                                       ; preds = %for.end.205
  store i32 0, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.217, %if.end.209
  %167 = load i32, i32* %j, align 4
  %168 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp211 = icmp ult i32 %167, %168
  br i1 %cmp211, label %for.body.212, label %for.end.219

for.body.212:                                     ; preds = %for.cond.210
  %169 = load i32, i32* %j, align 4
  %idxprom213 = zext i32 %169 to i64
  %arrayidx214 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom213
  %170 = load i32, i32* %arrayidx214, align 4
  %171 = load i32, i32* %j, align 4
  %idxprom215 = zext i32 %171 to i64
  %arrayidx216 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom215
  store i32 %170, i32* %arrayidx216, align 4
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.212
  %172 = load i32, i32* %j, align 4
  %inc218 = add i32 %172, 1
  store i32 %inc218, i32* %j, align 4
  br label %for.cond.210

for.end.219:                                      ; preds = %for.cond.210
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.end.219
  %173 = load i32, i32* %i, align 4
  %inc221 = add i32 %173, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.138

for.end.222:                                      ; preds = %if.then.207, %for.cond.138
  %174 = load i32, i32* %i, align 4
  %idxprom223 = zext i32 %174 to i64
  %175 = load i32*, i32** %remapping_of_pic_nums_idc.addr, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %175, i64 %idxprom223
  store i32 3, i32* %arrayidx224, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.232, %for.end.222
  %176 = load i32, i32* %j, align 4
  %177 = load i32, i32* %num_ref_idx_lX_active.addr, align 4
  %cmp226 = icmp ult i32 %176, %177
  br i1 %cmp226, label %for.body.227, label %for.end.234

for.body.227:                                     ; preds = %for.cond.225
  %178 = load i32, i32* %j, align 4
  %idxprom228 = zext i32 %178 to i64
  %arrayidx229 = getelementptr inbounds [32 x i32], [32 x i32]* %tmp_reorder, i32 0, i64 %idxprom228
  %179 = load i32, i32* %arrayidx229, align 4
  %180 = load i32, i32* %j, align 4
  %idxprom230 = zext i32 %180 to i64
  %arrayidx231 = getelementptr inbounds [32 x i32], [32 x i32]* %default_order, i32 0, i64 %idxprom230
  store i32 %179, i32* %arrayidx231, align 4
  br label %for.inc.232

for.inc.232:                                      ; preds = %for.body.227
  %181 = load i32, i32* %j, align 4
  %inc233 = add i32 %181, 1
  store i32 %inc233, i32* %j, align 4
  br label %for.cond.225

for.end.234:                                      ; preds = %for.cond.225
  %182 = load i32, i32* %list_no.addr, align 4
  %cmp235 = icmp eq i32 %182, 0
  br i1 %cmp235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %for.end.234
  %183 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %183, i32 0, i32 50
  %184 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %ref_pic_list_reordering_flag_l0 = getelementptr inbounds %struct.Slice, %struct.Slice* %184, i32 0, i32 10
  store i32 1, i32* %ref_pic_list_reordering_flag_l0, align 4
  br label %if.end.239

if.else.237:                                      ; preds = %for.end.234
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 50
  %186 = load %struct.Slice*, %struct.Slice** %currentSlice238, align 8
  %ref_pic_list_reordering_flag_l1 = getelementptr inbounds %struct.Slice, %struct.Slice* %186, i32 0, i32 14
  store i32 1, i32* %ref_pic_list_reordering_flag_l1, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.else.237, %if.then.236
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %for.end.135
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare i32 @dummy_slice_too_big(i32) #1

declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

declare i32 @writeSyntaxElement_CABAC(%struct.syntaxelement*, %struct.datapartition*) #1

declare void @init_lists(i32, i32) #1

declare void @poc_based_ref_management(i32) #1

declare void @alloc_ref_pic_list_reordering_buffer(%struct.Slice*) #1

declare void @reorder_ref_pic_list(%struct.storable_picture**, i32*, i32, i32*, i32*, i32*) #1

declare void @init_mbaff_lists(...) #1

declare void @estimate_weighting_factor_P_slice(i32) #1

declare void @estimate_weighting_factor_B_slice(...) #1

declare void @compute_colocated(%struct.colocated_params*, %struct.storable_picture***) #1

; Function Attrs: nounwind uwtable
define internal %struct.Slice* @malloc_slice() #0 {
entry:
  %i = alloca i32, align 4
  %dataPart = alloca %struct.datapartition*, align 8
  %slice = alloca %struct.Slice*, align 8
  %buffer_size = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 13
  %1 = load i32, i32* %width, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 15
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %1, %3
  %mul1 = mul nsw i32 %mul, 4
  store i32 %mul1, i32* %buffer_size, align 4
  %call = call noalias i8* @calloc(i64 1, i64 152) #4
  %4 = bitcast i8* %call to %struct.Slice*
  store %struct.Slice* %4, %struct.Slice** %slice, align 8
  %cmp = icmp eq %struct.Slice* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 59
  %6 = load i32, i32* %symbol_mode, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct.MotionInfoContexts* @create_contexts_MotionInfo()
  %7 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %mot_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %7, i32 0, i32 7
  store %struct.MotionInfoContexts* %call4, %struct.MotionInfoContexts** %mot_ctx, align 8
  %call5 = call %struct.TextureInfoContexts* @create_contexts_TextureInfo()
  %8 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %tex_ctx = getelementptr inbounds %struct.Slice, %struct.Slice* %8, i32 0, i32 8
  store %struct.TextureInfoContexts* %call5, %struct.TextureInfoContexts** %tex_ctx, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 61
  %10 = load i32, i32* %partition_mode, align 4
  %cmp7 = icmp eq i32 %10, 0
  %cond = select i1 %cmp7, i32 1, i32 3
  %11 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr = getelementptr inbounds %struct.Slice, %struct.Slice* %11, i32 0, i32 4
  store i32 %cond, i32* %max_part_nr, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 49
  %13 = load %struct.Picture*, %struct.Picture** %currentPicture, align 8
  %idr_flag = getelementptr inbounds %struct.Picture, %struct.Picture* %13, i32 0, i32 1
  %14 = load i32, i32* %idr_flag, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr9 = getelementptr inbounds %struct.Slice, %struct.Slice* %15, i32 0, i32 4
  store i32 1, i32* %max_part_nr9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  store i32* getelementptr inbounds ([21 x i32], [21 x i32]* @assignSE2partition_NoDP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 0), align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentPicture11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 49
  %17 = load %struct.Picture*, %struct.Picture** %currentPicture11, align 8
  %idr_flag12 = getelementptr inbounds %struct.Picture, %struct.Picture* %17, i32 0, i32 1
  %18 = load i32, i32* %idr_flag12, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.10
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 61
  %20 = load i32, i32* %partition_mode14, align 4
  %cmp15 = icmp eq i32 %20, 1
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  store i32* getelementptr inbounds ([21 x i32], [21 x i32]* @assignSE2partition_DP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 1), align 8
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  store i32* getelementptr inbounds ([21 x i32], [21 x i32]* @assignSE2partition_NoDP, i32 0, i32 0), i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 1), align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %21 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %num_mb = getelementptr inbounds %struct.Slice, %struct.Slice* %21, i32 0, i32 5
  store i32 0, i32* %num_mb, align 4
  %22 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr18 = getelementptr inbounds %struct.Slice, %struct.Slice* %22, i32 0, i32 4
  %23 = load i32, i32* %max_part_nr18, align 4
  %conv = sext i32 %23 to i64
  %call19 = call noalias i8* @calloc(i64 %conv, i64 120) #4
  %24 = bitcast i8* %call19 to %struct.datapartition*
  %25 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %25, i32 0, i32 6
  store %struct.datapartition* %24, %struct.datapartition** %partArr, align 8
  %cmp20 = icmp eq %struct.datapartition* %24, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %max_part_nr24 = getelementptr inbounds %struct.Slice, %struct.Slice* %27, i32 0, i32 4
  %28 = load i32, i32* %max_part_nr24, align 4
  %cmp25 = icmp slt i32 %26, %28
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.Slice*, %struct.Slice** %slice, align 8
  %partArr27 = getelementptr inbounds %struct.Slice, %struct.Slice* %30, i32 0, i32 6
  %31 = load %struct.datapartition*, %struct.datapartition** %partArr27, align 8
  %arrayidx = getelementptr inbounds %struct.datapartition, %struct.datapartition* %31, i64 %idxprom
  store %struct.datapartition* %arrayidx, %struct.datapartition** %dataPart, align 8
  %call28 = call noalias i8* @calloc(i64 1, i64 48) #4
  %32 = bitcast i8* %call28 to %struct.Bitstream*
  %33 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %33, i32 0, i32 0
  store %struct.Bitstream* %32, %struct.Bitstream** %bitstream, align 8
  %cmp29 = icmp eq %struct.Bitstream* %32, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.body
  %34 = load i32, i32* %buffer_size, align 4
  %conv33 = sext i32 %34 to i64
  %call34 = call noalias i8* @calloc(i64 %conv33, i64 1) #4
  %35 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %bitstream35 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %35, i32 0, i32 0
  %36 = load %struct.Bitstream*, %struct.Bitstream** %bitstream35, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %36, i32 0, i32 9
  store i8* %call34, i8** %streamBuffer, align 8
  %cmp36 = icmp eq i8* %call34, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.Slice*, %struct.Slice** %slice, align 8
  ret %struct.Slice* %38
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @no_mem_exit(i8*) #1

declare %struct.MotionInfoContexts* @create_contexts_MotionInfo() #1

declare %struct.TextureInfoContexts* @create_contexts_TextureInfo() #1

; Function Attrs: nounwind uwtable
define internal void @set_ref_pic_num() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %3, i64 %idxprom
  %4 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %4, i32 0, i32 1
  %5 = load i32, i32* %poc, align 4
  %mul = mul nsw i32 %5, 2
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx2 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %7, i64 %idxprom1
  %8 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx2, align 8
  %structure = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %8, i32 0, i32 0
  %9 = load i32, i32* %structure, align 4
  %cmp3 = icmp eq i32 %9, 2
  %cond = select i1 %cmp3, i32 1, i32 0
  %add = add nsw i32 %mul, %cond
  %conv = sext i32 %add to i64
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %11, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx5, i32 0, i64 %idxprom4
  store i64 %conv, i64* %arrayidx6, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx8 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %13, i64 %idxprom7
  %14 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx8, align 8
  %frame_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %14, i32 0, i32 4
  %15 = load i32, i32* %frame_poc, align 4
  %mul9 = mul nsw i32 %15, 2
  %conv10 = sext i32 %mul9 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %17, i32 0, i32 7
  %arrayidx12 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx12, i32 0, i64 %idxprom11
  store i64 %conv10, i64* %arrayidx13, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx15 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %19, i64 %idxprom14
  %20 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx15, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 2
  %21 = load i32, i32* %top_poc, align 4
  %mul16 = mul nsw i32 %21, 2
  %conv17 = sext i32 %mul16 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %23, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx19, i32 0, i64 %idxprom18
  store i64 %conv17, i64* %arrayidx20, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 0), align 8
  %arrayidx22 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %25, i64 %idxprom21
  %26 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx22, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 3
  %27 = load i32, i32* %bottom_poc, align 4
  %mul23 = mul nsw i32 %27, 2
  %add24 = add nsw i32 %mul23, 1
  %conv25 = sext i32 %add24 to i64
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx27, i32 0, i64 %idxprom26
  store i64 %conv25, i64* %arrayidx28, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.77, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 1), align 4
  %cmp30 = icmp slt i32 %31, %32
  br i1 %cmp30, label %for.body.32, label %for.end.79

for.body.32:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx34 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %34, i64 %idxprom33
  %35 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx34, align 8
  %poc35 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 1
  %36 = load i32, i32* %poc35, align 4
  %mul36 = mul nsw i32 %36, 2
  %37 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx38 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %38, i64 %idxprom37
  %39 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx38, align 8
  %structure39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %39, i32 0, i32 0
  %40 = load i32, i32* %structure39, align 4
  %cmp40 = icmp eq i32 %40, 2
  %cond42 = select i1 %cmp40, i32 1, i32 0
  %add43 = add nsw i32 %mul36, %cond42
  %conv44 = sext i32 %add43 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num46 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %42, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num46, i32 0, i64 1
  %arrayidx48 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx47, i32 0, i64 %idxprom45
  store i64 %conv44, i64* %arrayidx48, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %43 to i64
  %44 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx50 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %44, i64 %idxprom49
  %45 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx50, align 8
  %frame_poc51 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 4
  %46 = load i32, i32* %frame_poc51, align 4
  %mul52 = mul nsw i32 %46, 2
  %conv53 = sext i32 %mul52 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num55 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %48, i32 0, i32 7
  %arrayidx56 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx56, i32 0, i64 %idxprom54
  store i64 %conv53, i64* %arrayidx57, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %49 to i64
  %50 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx59 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %50, i64 %idxprom58
  %51 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx59, align 8
  %top_poc60 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 2
  %52 = load i32, i32* %top_poc60, align 4
  %mul61 = mul nsw i32 %52, 2
  %conv62 = sext i32 %mul61 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %53 to i64
  %54 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num64 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %54, i32 0, i32 8
  %arrayidx65 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num64, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx65, i32 0, i64 %idxprom63
  store i64 %conv62, i64* %arrayidx66, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %55 to i64
  %56 = load %struct.storable_picture**, %struct.storable_picture*** getelementptr inbounds ([6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 1), align 8
  %arrayidx68 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %56, i64 %idxprom67
  %57 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx68, align 8
  %bottom_poc69 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %57, i32 0, i32 3
  %58 = load i32, i32* %bottom_poc69, align 4
  %mul70 = mul nsw i32 %58, 2
  %add71 = add nsw i32 %mul70, 1
  %conv72 = sext i32 %add71 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %59 to i64
  %60 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num74 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %60, i32 0, i32 9
  %arrayidx75 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num74, i32 0, i64 1
  %arrayidx76 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx75, i32 0, i64 %idxprom73
  store i64 %conv72, i64* %arrayidx76, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.32
  %61 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %61, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.29

for.end.79:                                       ; preds = %for.cond.29
  %62 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %62, i32 0, i32 25
  %63 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.end.158, label %if.then

if.then:                                          ; preds = %for.end.79
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure80 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 7
  %65 = load i32, i32* %structure80, align 4
  %cmp81 = icmp eq i32 %65, 0
  br i1 %cmp81, label %if.then.83, label %if.end

if.then.83:                                       ; preds = %if.then
  store i32 2, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.155, %if.then.83
  %66 = load i32, i32* %j, align 4
  %cmp85 = icmp slt i32 %66, 6
  br i1 %cmp85, label %for.body.87, label %for.end.157

for.body.87:                                      ; preds = %for.cond.84
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.152, %for.body.87
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %68 to i64
  %arrayidx90 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom89
  %69 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp slt i32 %67, %69
  br i1 %cmp91, label %for.body.93, label %for.end.154

for.body.93:                                      ; preds = %for.cond.88
  %70 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %71 to i64
  %arrayidx96 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom95
  %72 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %72, i64 %idxprom94
  %73 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx97, align 8
  %poc98 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 1
  %74 = load i32, i32* %poc98, align 4
  %mul99 = mul nsw i32 %74, 2
  %75 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %75 to i64
  %76 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %76 to i64
  %arrayidx102 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom101
  %77 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %77, i64 %idxprom100
  %78 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx103, align 8
  %structure104 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 0
  %79 = load i32, i32* %structure104, align 4
  %cmp105 = icmp eq i32 %79, 2
  %cond107 = select i1 %cmp105, i32 1, i32 0
  %add108 = add nsw i32 %mul99, %cond107
  %conv109 = sext i32 %add108 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %80 to i64
  %81 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %81 to i64
  %82 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num112 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %82, i32 0, i32 6
  %arrayidx113 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx113, i32 0, i64 %idxprom110
  store i64 %conv109, i64* %arrayidx114, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %83 to i64
  %84 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %84 to i64
  %arrayidx117 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom116
  %85 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %85, i64 %idxprom115
  %86 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx118, align 8
  %frame_poc119 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %86, i32 0, i32 4
  %87 = load i32, i32* %frame_poc119, align 4
  %mul120 = mul nsw i32 %87, 2
  %conv121 = sext i32 %mul120 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %88 to i64
  %89 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %89 to i64
  %90 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %frm_ref_pic_num124 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %90, i32 0, i32 7
  %arrayidx125 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %frm_ref_pic_num124, i32 0, i64 %idxprom123
  %arrayidx126 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx125, i32 0, i64 %idxprom122
  store i64 %conv121, i64* %arrayidx126, align 8
  %91 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %91 to i64
  %92 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %92 to i64
  %arrayidx129 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom128
  %93 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %93, i64 %idxprom127
  %94 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx130, align 8
  %top_poc131 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %94, i32 0, i32 2
  %95 = load i32, i32* %top_poc131, align 4
  %mul132 = mul nsw i32 %95, 2
  %conv133 = sext i32 %mul132 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %96 to i64
  %97 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %97 to i64
  %98 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_ref_pic_num136 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 8
  %arrayidx137 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %top_ref_pic_num136, i32 0, i64 %idxprom135
  %arrayidx138 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx137, i32 0, i64 %idxprom134
  store i64 %conv133, i64* %arrayidx138, align 8
  %99 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %100 to i64
  %arrayidx141 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom140
  %101 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %101, i64 %idxprom139
  %102 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx142, align 8
  %bottom_poc143 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 3
  %103 = load i32, i32* %bottom_poc143, align 4
  %mul144 = mul nsw i32 %103, 2
  %add145 = add nsw i32 %mul144, 1
  %conv146 = sext i32 %add145 to i64
  %104 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %104 to i64
  %105 = load i32, i32* %j, align 4
  %idxprom148 = sext i32 %105 to i64
  %106 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_ref_pic_num149 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 9
  %arrayidx150 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %bottom_ref_pic_num149, i32 0, i64 %idxprom148
  %arrayidx151 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx150, i32 0, i64 %idxprom147
  store i64 %conv146, i64* %arrayidx151, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.93
  %107 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %107, 1
  store i32 %inc153, i32* %i, align 4
  br label %for.cond.88

for.end.154:                                      ; preds = %for.cond.88
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.end.154
  %108 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %108, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond.84

for.end.157:                                      ; preds = %for.cond.84
  br label %if.end

if.end:                                           ; preds = %for.end.157, %if.then
  br label %if.end.158

if.end.158:                                       ; preds = %if.end, %for.end.79
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @delete_contexts_MotionInfo(%struct.MotionInfoContexts*) #1

declare void @delete_contexts_TextureInfo(%struct.TextureInfoContexts*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
