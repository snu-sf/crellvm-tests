; ModuleID = './MultiSource.Benchmarks.mediabench/103.mpeg2.mpeg2dec.gethdr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@Quiet_Flag = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unexpected next_start_code %08x (ignored)\0A\00", align 1
@ld = external global %struct.layer_data*, align 8
@vertical_size = external global i32, align 4
@Non_Linear_quantizer_scale = external global [32 x i8], align 16
@horizontal_size = external global i32, align 4
@aspect_ratio_information = external global i32, align 4
@frame_rate_code = external global i32, align 4
@bit_rate_value = external global i32, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sequence_header()\00", align 1
@vbv_buffer_size = external global i32, align 4
@constrained_parameters_flag = external global i32, align 4
@scan = external global [2 x [64 x i8]], align 16
@default_intra_quantizer_matrix = external global [64 x i8], align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"reserved extension start code ID %d\0A\00", align 1
@layer_id = external global i32, align 4
@profile_and_level_indication = external global i32, align 4
@progressive_sequence = external global i32, align 4
@chroma_format = external global i32, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"sequence_extension\00", align 1
@low_delay = external global i32, align 4
@frame_rate_extension_n = external global i32, align 4
@frame_rate_extension_d = external global i32, align 4
@frame_rate_Table = internal global [16 x double] [double 0.000000e+00, double 0x4036FA1E2D85C116, double 2.400000e+01, double 2.500000e+01, double 0x403DF853E2556B28, double 3.000000e+01, double 5.000000e+01, double 0x404DF853E2556B28, double 6.000000e+01, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], align 16
@frame_rate = external global double, align 8
@profile = external global i32, align 4
@level = external global i32, align 4
@bit_rate = external global double, align 8
@video_format = external global i32, align 4
@color_description = external global i32, align 4
@color_primaries = external global i32, align 4
@transfer_characteristics = external global i32, align 4
@matrix_coefficients = external global i32, align 4
@display_horizontal_size = external global i32, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"sequence_display_extension\00", align 1
@display_vertical_size = external global i32, align 4
@lower_layer_prediction_horizontal_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"sequence_scalable_extension()\00", align 1
@lower_layer_prediction_vertical_size = external global i32, align 4
@horizontal_subsampling_factor_m = external global i32, align 4
@horizontal_subsampling_factor_n = external global i32, align 4
@vertical_subsampling_factor_m = external global i32, align 4
@vertical_subsampling_factor_n = external global i32, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"temporal scalability not implemented\0A\00", align 1
@repeat_first_field = external global i32, align 4
@top_field_first = external global i32, align 4
@picture_structure = external global i32, align 4
@frame_center_horizontal_offset = external global [3 x i32], align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"picture_display_extension, first marker bit\00", align 1
@frame_center_vertical_offset = external global [3 x i32], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"picture_display_extension, second marker bit\00", align 1
@f_code = external global [2 x [2 x i32]], align 16
@intra_dc_precision = external global i32, align 4
@frame_pred_frame_dct = external global i32, align 4
@concealment_motion_vectors = external global i32, align 4
@intra_vlc_format = external global i32, align 4
@chroma_420_type = external global i32, align 4
@progressive_frame = external global i32, align 4
@composite_display_flag = external global i32, align 4
@v_axis = external global i32, align 4
@field_sequence = external global i32, align 4
@sub_carrier = external global i32, align 4
@burst_amplitude = external global i32, align 4
@sub_carrier_phase = external global i32, align 4
@lower_layer_temporal_reference = external global i32, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"picture_spatial_scalable_extension(), first marker bit\00", align 1
@lower_layer_horizontal_offset = external global i32, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"picture_spatial_scalable_extension(), second marker bit\00", align 1
@lower_layer_vertical_offset = external global i32, align 4
@spatial_temporal_weight_code_table_index = external global i32, align 4
@lower_layer_progressive_frame = external global i32, align 4
@lower_layer_deinterlaced_field_select = external global i32, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"temporal scalability not supported\0A\00", align 1
@copyright_flag = external global i32, align 4
@copyright_identifier = external global i32, align 4
@original_or_copy = external global i32, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"copyright_extension(), first marker bit\00", align 1
@copyright_number_1 = external global i32, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"copyright_extension(), second marker bit\00", align 1
@copyright_number_2 = external global i32, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"copyright_extension(), third marker bit\00", align 1
@copyright_number_3 = external global i32, align 4
@Verbose_Flag = external global i32, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"copyright_extension (byte %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  copyright_flag =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"  copyright_identifier=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"  original_or_copy = %d (original=1, copy=0)\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  copyright_number_1=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"  copyright_number_2=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  copyright_number_3=%d\0A\00", align 1
@base = external global %struct.layer_data, align 8
@True_Framenum_max = internal global i32 -1, align 4
@Temporal_Reference_Base = internal global i32 0, align 4
@Temporal_Reference_GOP_Reset = internal global i32 0, align 4
@drop_flag = external global i32, align 4
@hour = external global i32, align 4
@minute = external global i32, align 4
@.str.22 = private unnamed_addr constant [27 x i8] c"group_of_pictures_header()\00", align 1
@sec = external global i32, align 4
@frame = external global i32, align 4
@closed_gop = external global i32, align 4
@broken_link = external global i32, align 4
@temporal_reference = external global i32, align 4
@picture_coding_type = external global i32, align 4
@vbv_delay = external global i32, align 4
@full_pel_forward_vector = external global i32, align 4
@forward_f_code = external global i32, align 4
@full_pel_backward_vector = external global i32, align 4
@backward_f_code = external global i32, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap = internal global i32 0, align 4
@Update_Temporal_Reference_Tacking_Data.temporal_reference_old = internal global i32 0, align 4
@True_Framenum = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @Get_Hdr() #0 {
entry:
  %retval = alloca i32, align 4
  %code = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  call void @next_start_code()
  %call = call i32 @Get_Bits32()
  store i32 %call, i32* %code, align 4
  %0 = load i32, i32* %code, align 4
  switch i32 %0, label %sw.default [
    i32 435, label %sw.bb
    i32 440, label %sw.bb.1
    i32 256, label %sw.bb.2
    i32 439, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %for.cond
  call void @sequence_header()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.cond
  call void @group_of_pictures_header()
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.cond
  call void @picture_header()
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %for.cond
  %1 = load i32, i32* @Quiet_Flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.default
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %code, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.1, %sw.bb
  br label %for.cond

return:                                           ; preds = %sw.bb.3, %sw.bb.2
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @next_start_code() #0 {
entry:
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Incnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 6
  %1 = load i32, i32* %Incnt, align 4
  %and = and i32 %1, 7
  call void @Flush_Buffer(i32 %and)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @Show_Bits(i32 24)
  %conv = zext i32 %call to i64
  %cmp = icmp ne i64 %conv, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Flush_Buffer(i32 8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @Get_Bits32() #1

; Function Attrs: nounwind uwtable
define internal void @sequence_header() #0 {
entry:
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 12)
  store i32 %call, i32* @horizontal_size, align 4
  %call1 = call i32 @Get_Bits(i32 12)
  store i32 %call1, i32* @vertical_size, align 4
  %call2 = call i32 @Get_Bits(i32 4)
  store i32 %call2, i32* @aspect_ratio_information, align 4
  %call3 = call i32 @Get_Bits(i32 4)
  store i32 %call3, i32* @frame_rate_code, align 4
  %call4 = call i32 @Get_Bits(i32 18)
  store i32 %call4, i32* @bit_rate_value, align 4
  call void @marker_bit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %call5 = call i32 @Get_Bits(i32 10)
  store i32 %call5, i32* @vbv_buffer_size, align 4
  %call6 = call i32 @Get_Bits(i32 1)
  store i32 %call6, i32* @constrained_parameters_flag, align 4
  %call7 = call i32 @Get_Bits(i32 1)
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 12
  store i32 %call7, i32* %load_intra_quantizer_matrix, align 4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i32 @Get_Bits(i32 8)
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %idxprom9 = zext i8 %5 to i64
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix, i32 0, i64 %idxprom9
  store i32 %call8, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %if.else
  %8 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %8, 64
  br i1 %cmp12, label %for.body.13, label %for.end.21

for.body.13:                                      ; preds = %for.cond.11
  %9 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [64 x i8], [64 x i8]* @default_intra_quantizer_matrix, i32 0, i64 %idxprom14
  %10 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_quantizer_matrix17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 8
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix17, i32 0, i64 %idxprom16
  store i32 %conv, i32* %arrayidx18, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.13
  %13 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  br label %if.end

if.end:                                           ; preds = %for.end.21, %for.end
  %call22 = call i32 @Get_Bits(i32 1)
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %14, i32 0, i32 13
  store i32 %call22, i32* %load_non_intra_quantizer_matrix, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.37

if.then.24:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %if.then.24
  %15 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %15, 64
  br i1 %cmp26, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.25
  %call29 = call i32 @Get_Bits(i32 8)
  %16 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %16 to i64
  %arrayidx31 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom30
  %17 = load i8, i8* %arrayidx31, align 1
  %idxprom32 = zext i8 %17 to i64
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 9
  %arrayidx33 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix, i32 0, i64 %idxprom32
  store i32 %call29, i32* %arrayidx33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.28
  %19 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %19, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.25

for.end.36:                                       ; preds = %for.cond.25
  br label %if.end.48

if.else.37:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %if.else.37
  %20 = load i32, i32* %i, align 4
  %cmp39 = icmp slt i32 %20, 64
  br i1 %cmp39, label %for.body.41, label %for.end.47

for.body.41:                                      ; preds = %for.cond.38
  %21 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %21 to i64
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %non_intra_quantizer_matrix43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 9
  %arrayidx44 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix43, i32 0, i64 %idxprom42
  store i32 16, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.41
  %23 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %23, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end.36
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.63, %if.end.48
  %24 = load i32, i32* %i, align 4
  %cmp50 = icmp slt i32 %24, 64
  br i1 %cmp50, label %for.body.52, label %for.end.65

for.body.52:                                      ; preds = %for.cond.49
  %25 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %25 to i64
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_quantizer_matrix54 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 8
  %arrayidx55 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix54, i32 0, i64 %idxprom53
  %27 = load i32, i32* %arrayidx55, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %28 to i64
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 10
  %arrayidx57 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_intra_quantizer_matrix, i32 0, i64 %idxprom56
  store i32 %27, i32* %arrayidx57, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %30 to i64
  %31 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %non_intra_quantizer_matrix59 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %31, i32 0, i32 9
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix59, i32 0, i64 %idxprom58
  %32 = load i32, i32* %arrayidx60, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %33 to i64
  %34 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %34, i32 0, i32 11
  %arrayidx62 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_non_intra_quantizer_matrix, i32 0, i64 %idxprom61
  store i32 %32, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.52
  %35 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %35, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.49

for.end.65:                                       ; preds = %for.cond.49
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @group_of_pictures_header() #0 {
entry:
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %cmp = icmp eq %struct.layer_data* %0, @base
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @True_Framenum_max, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* @Temporal_Reference_Base, align 4
  store i32 1, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 7
  %3 = load i32, i32* %Bitcnt, align 4
  store i32 %3, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 1)
  store i32 %call, i32* @drop_flag, align 4
  %call1 = call i32 @Get_Bits(i32 5)
  store i32 %call1, i32* @hour, align 4
  %call2 = call i32 @Get_Bits(i32 6)
  store i32 %call2, i32* @minute, align 4
  call void @marker_bit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call i32 @Get_Bits(i32 6)
  store i32 %call3, i32* @sec, align 4
  %call4 = call i32 @Get_Bits(i32 6)
  store i32 %call4, i32* @frame, align 4
  %call5 = call i32 @Get_Bits(i32 1)
  store i32 %call5, i32* @closed_gop, align 4
  %call6 = call i32 @Get_Bits(i32 1)
  store i32 %call6, i32* @broken_link, align 4
  call void @extension_and_user_data()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @picture_header() #0 {
entry:
  %pos = alloca i32, align 4
  %Extra_Information_Byte_Count = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %pict_scal = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 20
  store i32 0, i32* %pict_scal, align 4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 7
  %2 = load i32, i32* %Bitcnt, align 4
  store i32 %2, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 10)
  store i32 %call, i32* @temporal_reference, align 4
  %call1 = call i32 @Get_Bits(i32 3)
  store i32 %call1, i32* @picture_coding_type, align 4
  %call2 = call i32 @Get_Bits(i32 16)
  store i32 %call2, i32* @vbv_delay, align 4
  %3 = load i32, i32* @picture_coding_type, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* @picture_coding_type, align 4
  %cmp3 = icmp eq i32 %4, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i32 @Get_Bits(i32 1)
  store i32 %call4, i32* @full_pel_forward_vector, align 4
  %call5 = call i32 @Get_Bits(i32 3)
  store i32 %call5, i32* @forward_f_code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i32, i32* @picture_coding_type, align 4
  %cmp6 = icmp eq i32 %5, 3
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 @Get_Bits(i32 1)
  store i32 %call8, i32* @full_pel_backward_vector, align 4
  %call9 = call i32 @Get_Bits(i32 3)
  store i32 %call9, i32* @backward_f_code, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %call11 = call i32 @extra_bit_information()
  store i32 %call11, i32* %Extra_Information_Byte_Count, align 4
  call void @extension_and_user_data()
  call void @Update_Temporal_Reference_Tacking_Data()
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @Flush_Buffer(i32) #1

declare i32 @Show_Bits(i32) #1

; Function Attrs: nounwind uwtable
define i32 @slice_header() #0 {
entry:
  %slice_vertical_position_extension = alloca i32, align 4
  %quantizer_scale_code = alloca i32, align 4
  %pos = alloca i32, align 4
  %slice_picture_id_enable = alloca i32, align 4
  %slice_picture_id = alloca i32, align 4
  %extra_information_slice = alloca i32, align 4
  store i32 0, i32* %slice_picture_id_enable, align 4
  store i32 0, i32* %slice_picture_id, align 4
  store i32 0, i32* %extra_information_slice, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 16
  %3 = load i32, i32* %MPEG2_Flag, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @vertical_size, align 4
  %cmp = icmp sgt i32 %4, 2800
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %call = call i32 @Get_Bits(i32 3)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %slice_vertical_position_extension, align 4
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 17
  %6 = load i32, i32* %scalable_mode, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call2 = call i32 @Get_Bits(i32 7)
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %priority_breakpoint = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 21
  store i32 %call2, i32* %priority_breakpoint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call3 = call i32 @Get_Bits(i32 5)
  store i32 %call3, i32* %quantizer_scale_code, align 4
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 16
  %9 = load i32, i32* %MPEG2_Flag4, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.12

cond.true.6:                                      ; preds = %if.end
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 18
  %11 = load i32, i32* %q_scale_type, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.true.6
  %12 = load i32, i32* %quantizer_scale_code, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.true.6
  %14 = load i32, i32* %quantizer_scale_code, align 4
  %shl = shl i32 %14, 1
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i32 [ %conv, %cond.true.8 ], [ %shl, %cond.false.9 ]
  br label %cond.end.13

cond.false.12:                                    ; preds = %if.end
  %15 = load i32, i32* %quantizer_scale_code, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.end.10
  %cond14 = phi i32 [ %cond11, %cond.end.10 ], [ %15, %cond.false.12 ]
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 22
  store i32 %cond14, i32* %quantizer_scale, align 4
  %call15 = call i32 @Get_Bits(i32 1)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %cond.end.13
  %call18 = call i32 @Get_Bits(i32 1)
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_slice = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 23
  store i32 %call18, i32* %intra_slice, align 4
  %call19 = call i32 @Get_Bits(i32 1)
  store i32 %call19, i32* %slice_picture_id_enable, align 4
  %call20 = call i32 @Get_Bits(i32 6)
  store i32 %call20, i32* %slice_picture_id, align 4
  %call21 = call i32 @extra_bit_information()
  store i32 %call21, i32* %extra_information_slice, align 4
  br label %if.end.23

if.else:                                          ; preds = %cond.end.13
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_slice22 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 23
  store i32 0, i32* %intra_slice22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.17
  %19 = load i32, i32* %slice_vertical_position_extension, align 4
  ret i32 %19
}

declare i32 @Get_Bits(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @extra_bit_information() #0 {
entry:
  %Byte_Count = alloca i32, align 4
  store i32 0, i32* %Byte_Count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @Get_Bits1()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @Flush_Buffer(i32 8)
  %0 = load i32, i32* %Byte_Count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %Byte_Count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i32, i32* %Byte_Count, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @marker_bit(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %marker = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  %call = call i32 @Get_Bits(i32 1)
  store i32 %call, i32* %marker, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extension_and_user_data() #0 {
entry:
  %code = alloca i32, align 4
  %ext_ID = alloca i32, align 4
  call void @next_start_code()
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @Show_Bits(i32 32)
  store i32 %call, i32* %code, align 4
  %cmp = icmp eq i32 %call, 437
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %0 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %0, 434
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %1 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %2 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %2, 437
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @Flush_Buffer32()
  %call3 = call i32 @Get_Bits(i32 4)
  store i32 %call3, i32* %ext_ID, align 4
  %3 = load i32, i32* %ext_ID, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  call void @sequence_extension()
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  call void @sequence_display_extension()
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  call void @quant_matrix_extension()
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  call void @sequence_scalable_extension()
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  call void @picture_display_extension()
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  call void @picture_coding_extension()
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  call void @picture_spatial_scalable_extension()
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  call void @picture_temporal_scalable_extension()
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  call void @copyright_extension()
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %ext_ID, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  call void @next_start_code()
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @Flush_Buffer32()
  call void @user_data()
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

declare void @Flush_Buffer32() #1

; Function Attrs: nounwind uwtable
define internal void @sequence_extension() #0 {
entry:
  %horizontal_size_extension = alloca i32, align 4
  %vertical_size_extension = alloca i32, align 4
  %bit_rate_extension = alloca i32, align 4
  %vbv_buffer_size_extension = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 16
  store i32 1, i32* %MPEG2_Flag, align 4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 17
  store i32 0, i32* %scalable_mode, align 4
  store i32 0, i32* @layer_id, align 4
  %call = call i32 @Get_Bits(i32 8)
  store i32 %call, i32* @profile_and_level_indication, align 4
  %call1 = call i32 @Get_Bits(i32 1)
  store i32 %call1, i32* @progressive_sequence, align 4
  %call2 = call i32 @Get_Bits(i32 2)
  store i32 %call2, i32* @chroma_format, align 4
  %call3 = call i32 @Get_Bits(i32 2)
  store i32 %call3, i32* %horizontal_size_extension, align 4
  %call4 = call i32 @Get_Bits(i32 2)
  store i32 %call4, i32* %vertical_size_extension, align 4
  %call5 = call i32 @Get_Bits(i32 12)
  store i32 %call5, i32* %bit_rate_extension, align 4
  call void @marker_bit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %call6 = call i32 @Get_Bits(i32 8)
  store i32 %call6, i32* %vbv_buffer_size_extension, align 4
  %call7 = call i32 @Get_Bits(i32 1)
  store i32 %call7, i32* @low_delay, align 4
  %call8 = call i32 @Get_Bits(i32 2)
  store i32 %call8, i32* @frame_rate_extension_n, align 4
  %call9 = call i32 @Get_Bits(i32 5)
  store i32 %call9, i32* @frame_rate_extension_d, align 4
  %2 = load i32, i32* @frame_rate_code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x double], [16 x double]* @frame_rate_Table, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load i32, i32* @frame_rate_extension_n, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* @frame_rate_extension_d, align 4
  %add10 = add nsw i32 %5, 1
  %div = sdiv i32 %add, %add10
  %conv = sitofp i32 %div to double
  %mul = fmul double %3, %conv
  store double %mul, double* @frame_rate, align 8
  %6 = load i32, i32* @profile_and_level_indication, align 4
  %shr = ashr i32 %6, 7
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @profile_and_level_indication, align 4
  %and11 = and i32 %7, 15
  %cmp = icmp eq i32 %and11, 5
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 133, i32* @profile, align 4
  store i32 8, i32* @level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  %8 = load i32, i32* @profile_and_level_indication, align 4
  %shr14 = ashr i32 %8, 4
  store i32 %shr14, i32* @profile, align 4
  %9 = load i32, i32* @profile_and_level_indication, align 4
  %and15 = and i32 %9, 15
  store i32 %and15, i32* @level, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  %10 = load i32, i32* %horizontal_size_extension, align 4
  %shl = shl i32 %10, 12
  %11 = load i32, i32* @horizontal_size, align 4
  %and17 = and i32 %11, 4095
  %or = or i32 %shl, %and17
  store i32 %or, i32* @horizontal_size, align 4
  %12 = load i32, i32* %vertical_size_extension, align 4
  %shl18 = shl i32 %12, 12
  %13 = load i32, i32* @vertical_size, align 4
  %and19 = and i32 %13, 4095
  %or20 = or i32 %shl18, %and19
  store i32 %or20, i32* @vertical_size, align 4
  %14 = load i32, i32* %bit_rate_extension, align 4
  %shl21 = shl i32 %14, 18
  %15 = load i32, i32* @bit_rate_value, align 4
  %add22 = add nsw i32 %15, %shl21
  store i32 %add22, i32* @bit_rate_value, align 4
  %16 = load i32, i32* @bit_rate_value, align 4
  %conv23 = sitofp i32 %16 to double
  %mul24 = fmul double %conv23, 4.000000e+02
  store double %mul24, double* @bit_rate, align 8
  %17 = load i32, i32* %vbv_buffer_size_extension, align 4
  %shl25 = shl i32 %17, 10
  %18 = load i32, i32* @vbv_buffer_size, align 4
  %add26 = add nsw i32 %18, %shl25
  store i32 %add26, i32* @vbv_buffer_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequence_display_extension() #0 {
entry:
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 3)
  store i32 %call, i32* @video_format, align 4
  %call1 = call i32 @Get_Bits(i32 1)
  store i32 %call1, i32* @color_description, align 4
  %2 = load i32, i32* @color_description, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @Get_Bits(i32 8)
  store i32 %call2, i32* @color_primaries, align 4
  %call3 = call i32 @Get_Bits(i32 8)
  store i32 %call3, i32* @transfer_characteristics, align 4
  %call4 = call i32 @Get_Bits(i32 8)
  store i32 %call4, i32* @matrix_coefficients, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @Get_Bits(i32 14)
  store i32 %call5, i32* @display_horizontal_size, align 4
  call void @marker_bit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %call6 = call i32 @Get_Bits(i32 14)
  store i32 %call6, i32* @display_vertical_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quant_matrix_extension() #0 {
entry:
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 1)
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 12
  store i32 %call, i32* %load_intra_quantizer_matrix, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @Get_Bits(i32 8)
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %5 to i64
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 8
  %arrayidx3 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix, i32 0, i64 %idxprom2
  store i32 %call1, i32* %arrayidx3, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom4
  %8 = load i8, i8* %arrayidx5, align 1
  %idxprom6 = zext i8 %8 to i64
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i32 0, i32 10
  %arrayidx7 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_intra_quantizer_matrix, i32 0, i64 %idxprom6
  store i32 %call1, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %call8 = call i32 @Get_Bits(i32 1)
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 13
  store i32 %call8, i32* %load_non_intra_quantizer_matrix, align 4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %if.then.10
  %12 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %12, 64
  br i1 %cmp12, label %for.body.13, label %for.end.25

for.body.13:                                      ; preds = %for.cond.11
  %call14 = call i32 @Get_Bits(i32 8)
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom15
  %14 = load i8, i8* %arrayidx16, align 1
  %idxprom17 = zext i8 %14 to i64
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 9
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix, i32 0, i64 %idxprom17
  store i32 %call14, i32* %arrayidx18, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom19
  %17 = load i8, i8* %arrayidx20, align 1
  %idxprom21 = zext i8 %17 to i64
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 11
  %arrayidx22 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_non_intra_quantizer_matrix, i32 0, i64 %idxprom21
  store i32 %call14, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.13
  %19 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  br label %if.end.26

if.end.26:                                        ; preds = %for.end.25, %if.end
  %call27 = call i32 @Get_Bits(i32 1)
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_chroma_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 14
  store i32 %call27, i32* %load_chroma_intra_quantizer_matrix, align 4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %if.end.26
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.39, %if.then.29
  %21 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %21, 64
  br i1 %cmp31, label %for.body.32, label %for.end.41

for.body.32:                                      ; preds = %for.cond.30
  %call33 = call i32 @Get_Bits(i32 8)
  %22 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom34
  %23 = load i8, i8* %arrayidx35, align 1
  %idxprom36 = zext i8 %23 to i64
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_intra_quantizer_matrix37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 10
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_intra_quantizer_matrix37, i32 0, i64 %idxprom36
  store i32 %call33, i32* %arrayidx38, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.32
  %25 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %25, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.30

for.end.41:                                       ; preds = %for.cond.30
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %if.end.26
  %call43 = call i32 @Get_Bits(i32 1)
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %load_chroma_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 15
  store i32 %call43, i32* %load_chroma_non_intra_quantizer_matrix, align 4
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %if.end.42
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.55, %if.then.45
  %27 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %27, 64
  br i1 %cmp47, label %for.body.48, label %for.end.57

for.body.48:                                      ; preds = %for.cond.46
  %call49 = call i32 @Get_Bits(i32 8)
  %28 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom50
  %29 = load i8, i8* %arrayidx51, align 1
  %idxprom52 = zext i8 %29 to i64
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %chroma_non_intra_quantizer_matrix53 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i32 0, i32 11
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_non_intra_quantizer_matrix53, i32 0, i64 %idxprom52
  store i32 %call49, i32* %arrayidx54, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.48
  %31 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.46

for.end.57:                                       ; preds = %for.cond.46
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %if.end.42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequence_scalable_extension() #0 {
entry:
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 2)
  %add = add i32 %call, 1
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 17
  store i32 %add, i32* %scalable_mode, align 4
  %call1 = call i32 @Get_Bits(i32 4)
  store i32 %call1, i32* @layer_id, align 4
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 17
  %4 = load i32, i32* %scalable_mode2, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @Get_Bits(i32 14)
  store i32 %call3, i32* @lower_layer_prediction_horizontal_size, align 4
  call void @marker_bit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  %call4 = call i32 @Get_Bits(i32 14)
  store i32 %call4, i32* @lower_layer_prediction_vertical_size, align 4
  %call5 = call i32 @Get_Bits(i32 5)
  store i32 %call5, i32* @horizontal_subsampling_factor_m, align 4
  %call6 = call i32 @Get_Bits(i32 5)
  store i32 %call6, i32* @horizontal_subsampling_factor_n, align 4
  %call7 = call i32 @Get_Bits(i32 5)
  store i32 %call7, i32* @vertical_subsampling_factor_m, align 4
  %call8 = call i32 @Get_Bits(i32 5)
  store i32 %call8, i32* @vertical_subsampling_factor_n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %scalable_mode9 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 17
  %6 = load i32, i32* %scalable_mode9, align 4
  %cmp10 = icmp eq i32 %6, 4
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  call void @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @picture_display_extension() #0 {
entry:
  %i = alloca i32, align 4
  %number_of_frame_center_offsets = alloca i32, align 4
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %2 = load i32, i32* @progressive_sequence, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @repeat_first_field, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* @top_field_first, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  store i32 3, i32* %number_of_frame_center_offsets, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.2
  store i32 2, i32* %number_of_frame_center_offsets, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.else.5:                                        ; preds = %if.then
  store i32 1, i32* %number_of_frame_center_offsets, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.end
  br label %if.end.15

if.else.7:                                        ; preds = %entry
  %5 = load i32, i32* @picture_structure, align 4
  %cmp = icmp ne i32 %5, 3
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.7
  store i32 1, i32* %number_of_frame_center_offsets, align 4
  br label %if.end.14

if.else.9:                                        ; preds = %if.else.7
  %6 = load i32, i32* @repeat_first_field, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.9
  store i32 3, i32* %number_of_frame_center_offsets, align 4
  br label %if.end.13

if.else.12:                                       ; preds = %if.else.9
  store i32 2, i32* %number_of_frame_center_offsets, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %number_of_frame_center_offsets, align 4
  %cmp16 = icmp slt i32 %7, %8
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @Get_Bits(i32 16)
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_horizontal_offset, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  call void @marker_bit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0))
  %call17 = call i32 @Get_Bits(i32 16)
  %10 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* @frame_center_vertical_offset, i32 0, i64 %idxprom18
  store i32 %call17, i32* %arrayidx19, align 4
  call void @marker_bit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @picture_coding_extension() #0 {
entry:
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 4)
  store i32 %call, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 0), align 4
  %call1 = call i32 @Get_Bits(i32 4)
  store i32 %call1, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 1), align 4
  %call2 = call i32 @Get_Bits(i32 4)
  store i32 %call2, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 0), align 4
  %call3 = call i32 @Get_Bits(i32 4)
  store i32 %call3, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 1), align 4
  %call4 = call i32 @Get_Bits(i32 2)
  store i32 %call4, i32* @intra_dc_precision, align 4
  %call5 = call i32 @Get_Bits(i32 2)
  store i32 %call5, i32* @picture_structure, align 4
  %call6 = call i32 @Get_Bits(i32 1)
  store i32 %call6, i32* @top_field_first, align 4
  %call7 = call i32 @Get_Bits(i32 1)
  store i32 %call7, i32* @frame_pred_frame_dct, align 4
  %call8 = call i32 @Get_Bits(i32 1)
  store i32 %call8, i32* @concealment_motion_vectors, align 4
  %call9 = call i32 @Get_Bits(i32 1)
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 18
  store i32 %call9, i32* %q_scale_type, align 4
  %call10 = call i32 @Get_Bits(i32 1)
  store i32 %call10, i32* @intra_vlc_format, align 4
  %call11 = call i32 @Get_Bits(i32 1)
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %alternate_scan = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 19
  store i32 %call11, i32* %alternate_scan, align 4
  %call12 = call i32 @Get_Bits(i32 1)
  store i32 %call12, i32* @repeat_first_field, align 4
  %call13 = call i32 @Get_Bits(i32 1)
  store i32 %call13, i32* @chroma_420_type, align 4
  %call14 = call i32 @Get_Bits(i32 1)
  store i32 %call14, i32* @progressive_frame, align 4
  %call15 = call i32 @Get_Bits(i32 1)
  store i32 %call15, i32* @composite_display_flag, align 4
  %4 = load i32, i32* @composite_display_flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call16 = call i32 @Get_Bits(i32 1)
  store i32 %call16, i32* @v_axis, align 4
  %call17 = call i32 @Get_Bits(i32 3)
  store i32 %call17, i32* @field_sequence, align 4
  %call18 = call i32 @Get_Bits(i32 1)
  store i32 %call18, i32* @sub_carrier, align 4
  %call19 = call i32 @Get_Bits(i32 7)
  store i32 %call19, i32* @burst_amplitude, align 4
  %call20 = call i32 @Get_Bits(i32 8)
  store i32 %call20, i32* @sub_carrier_phase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @picture_spatial_scalable_extension() #0 {
entry:
  %pos = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %pict_scal = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 20
  store i32 1, i32* %pict_scal, align 4
  %call = call i32 @Get_Bits(i32 10)
  store i32 %call, i32* @lower_layer_temporal_reference, align 4
  call void @marker_bit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0))
  %call1 = call i32 @Get_Bits(i32 15)
  store i32 %call1, i32* @lower_layer_horizontal_offset, align 4
  %3 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %cmp = icmp sge i32 %3, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @lower_layer_horizontal_offset, align 4
  %sub = sub nsw i32 %4, 32768
  store i32 %sub, i32* @lower_layer_horizontal_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @marker_bit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0))
  %call2 = call i32 @Get_Bits(i32 15)
  store i32 %call2, i32* @lower_layer_vertical_offset, align 4
  %5 = load i32, i32* @lower_layer_vertical_offset, align 4
  %cmp3 = icmp sge i32 %5, 16384
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @lower_layer_vertical_offset, align 4
  %sub5 = sub nsw i32 %6, 32768
  store i32 %sub5, i32* @lower_layer_vertical_offset, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %call7 = call i32 @Get_Bits(i32 2)
  store i32 %call7, i32* @spatial_temporal_weight_code_table_index, align 4
  %call8 = call i32 @Get_Bits(i32 1)
  store i32 %call8, i32* @lower_layer_progressive_frame, align 4
  %call9 = call i32 @Get_Bits(i32 1)
  store i32 %call9, i32* @lower_layer_deinterlaced_field_select, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @picture_temporal_scalable_extension() #0 {
entry:
  call void @Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copyright_extension() #0 {
entry:
  %pos = alloca i32, align 4
  %reserved_data = alloca i32, align 4
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %Bitcnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 7
  %1 = load i32, i32* %Bitcnt, align 4
  store i32 %1, i32* %pos, align 4
  %call = call i32 @Get_Bits(i32 1)
  store i32 %call, i32* @copyright_flag, align 4
  %call1 = call i32 @Get_Bits(i32 8)
  store i32 %call1, i32* @copyright_identifier, align 4
  %call2 = call i32 @Get_Bits(i32 1)
  store i32 %call2, i32* @original_or_copy, align 4
  %call3 = call i32 @Get_Bits(i32 7)
  store i32 %call3, i32* %reserved_data, align 4
  call void @marker_bit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  %call4 = call i32 @Get_Bits(i32 20)
  store i32 %call4, i32* @copyright_number_1, align 4
  call void @marker_bit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  %call5 = call i32 @Get_Bits(i32 22)
  store i32 %call5, i32* @copyright_number_2, align 4
  call void @marker_bit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  %call6 = call i32 @Get_Bits(i32 22)
  store i32 %call6, i32* @copyright_number_3, align 4
  %2 = load i32, i32* @Verbose_Flag, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %pos, align 4
  %shr = ashr i32 %3, 3
  %sub = sub nsw i32 %shr, 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 %sub)
  %4 = load i32, i32* @Verbose_Flag, align 4
  %cmp8 = icmp sgt i32 %4, 1
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %5 = load i32, i32* @copyright_flag, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %5)
  %6 = load i32, i32* @copyright_identifier, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 %6)
  %7 = load i32, i32* @original_or_copy, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0), i32 %7)
  %8 = load i32, i32* @copyright_number_1, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* @copyright_number_2, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i32 %9)
  %10 = load i32, i32* @copyright_number_3, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @user_data() #0 {
entry:
  call void @next_start_code()
  ret void
}

declare void @Error(i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @Update_Temporal_Reference_Tacking_Data() #0 {
entry:
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %cmp = icmp eq %struct.layer_data* %0, @base
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @picture_coding_type, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* @temporal_reference, align 4
  %3 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %cmp2 = icmp ne i32 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.3
  %5 = load i32, i32* @Temporal_Reference_Base, align 4
  %add = add nsw i32 %5, 1024
  store i32 %add, i32* @Temporal_Reference_Base, align 4
  store i32 0, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.3
  %6 = load i32, i32* @temporal_reference, align 4
  %7 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %if.end
  %8 = load i32, i32* @Temporal_Reference_GOP_Reset, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true.6, %if.end
  %9 = load i32, i32* @temporal_reference, align 4
  store i32 %9, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  store i32 0, i32* @Temporal_Reference_GOP_Reset, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %if.then
  %10 = load i32, i32* @Temporal_Reference_Base, align 4
  %11 = load i32, i32* @temporal_reference, align 4
  %add11 = add nsw i32 %10, %11
  store i32 %add11, i32* @True_Framenum, align 4
  %12 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_wrap, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.end.10
  %13 = load i32, i32* @temporal_reference, align 4
  %14 = load i32, i32* @Update_Temporal_Reference_Tacking_Data.temporal_reference_old, align 4
  %cmp14 = icmp sle i32 %13, %14
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.13
  %15 = load i32, i32* @True_Framenum, align 4
  %add16 = add nsw i32 %15, 1024
  store i32 %add16, i32* @True_Framenum, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end.10
  %16 = load i32, i32* @True_Framenum, align 4
  %17 = load i32, i32* @True_Framenum_max, align 4
  %cmp18 = icmp sgt i32 %16, %17
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %18 = load i32, i32* @True_Framenum, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %19 = load i32, i32* @True_Framenum_max, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* @True_Framenum_max, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %entry
  ret void
}

declare i32 @Get_Bits1() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
